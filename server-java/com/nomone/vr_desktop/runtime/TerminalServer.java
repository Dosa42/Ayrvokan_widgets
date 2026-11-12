package com.nomone.vr_desktop.runtime;

import java.io.ByteArrayOutputStream;
import java.io.BufferedInputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.SocketException;
import java.net.URI;
import java.net.URLDecoder;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public final class TerminalServer implements Closeable {
    public interface Control { String request(String method, String path, String body) throws Exception; }
    public interface Assets { byte[] read(String path) throws IOException; }
    public interface Provider {
        State current();
        default State find(String id) {
            State state = current();
            return id == null || id.isEmpty() || id.equals(state.id) ? state : null;
        }
        default State create() throws IOException { throw new IOException("Nieuwe sessies zijn niet beschikbaar"); }
        default State[] list() { return new State[]{current()}; }
        default void stop(String id) throws IOException {
            State state = find(id);
            if (state == null || state.session == null) throw new IOException("Onbekende terminalsessie");
            state.session.stop();
        }
    }

    public static final class State {
        public final String id;
        public final PtySession session;
        public final String error;
        public final PtySession ssh;
        public final String sshError;

        public State(String id, PtySession session, String error) {
            this(id, session, error, null, "");
        }

        public State(String id, PtySession session, String error, PtySession ssh, String sshError) {
            this.id = id;
            this.session = session;
            this.error = error;
            this.ssh = ssh;
            this.sshError = sshError;
        }
    }

    private final Control control;
    private final FileWorkspace files;
    private final Assets assets;
    private final Provider provider;
    private final ServerSocket listener;
    private final Set<Socket> sockets = ConcurrentHashMap.newKeySet();
    private final ExecutorService clients = Executors.newCachedThreadPool(task -> {
        Thread thread = new Thread(task, "Ubuntu-web-terminal");
        thread.setDaemon(true);
        return thread;
    });
    private volatile boolean closed;

    public TerminalServer(int port, Assets assets, Provider provider) throws IOException {
        this(port, assets, provider, null);
    }

    public TerminalServer(int port, Assets assets, Provider provider, FileWorkspace files) throws IOException {
        this(port, assets, provider, files, null);
    }

    public TerminalServer(int port, Assets assets, Provider provider, FileWorkspace files, Control control) throws IOException {
        this.control = control;
        this.files = files;
        this.assets = assets;
        this.provider = provider;
        listener = new ServerSocket();
        listener.setReuseAddress(true);
        try { listener.bind(new InetSocketAddress("0.0.0.0", port)); }
        catch (IOException error) { listener.close(); clients.shutdownNow(); throw error; }
        clients.execute(this::accept);
    }

    public int port() { return listener.getLocalPort(); }

    private void accept() {
        while (!closed) {
            try {
                Socket socket = listener.accept();
                socket.setTcpNoDelay(true);
                socket.setSoTimeout(10000);
                sockets.add(socket);
                clients.execute(() -> serve(socket));
            } catch (IOException error) {
                if (!closed) close();
            }
        }
    }

    private void serve(Socket socket) {
        boolean upgraded = false;
        try {
            InputStream input = new BufferedInputStream(socket.getInputStream(), 16384);
            OutputStream output = socket.getOutputStream();
            String header = header(input);
            String[] lines = header.split("\r\n");
            String[] first = lines[0].split(" ");
            if (first.length != 3 || !(first[0].equals("GET") || first[0].equals("HEAD") || first[0].equals("POST"))) {
                response(output, 405, "text/plain", "GET required".getBytes(StandardCharsets.UTF_8), false);
                return;
            }
            URI uri = URI.create(first[1]);
            Map<String, String> headers = new HashMap<>();
            for (int i = 1; i < lines.length; i++) {
                int split = lines[i].indexOf(':');
                if (split > 0) headers.put(lines[i].substring(0, split).trim().toLowerCase(java.util.Locale.ROOT), lines[i].substring(split + 1).trim());
            }
            if (control != null && uri.getPath().startsWith("/control/")) {
                ByteArrayOutputStream body = new ByteArrayOutputStream();
                long remaining = Long.parseLong(headers.getOrDefault("content-length", "0"));
                byte[] buffer = new byte[16384];
                while (remaining > 0) {
                    int count = input.read(buffer, 0, (int) Math.min(buffer.length, remaining));
                    if (count < 0) throw new EOFException();
                    body.write(buffer, 0, count); remaining -= count;
                }
                String result = control.request(first[0], uri.getPath(), new String(body.toByteArray(), StandardCharsets.UTF_8));
                response(output, 200, "application/json", result.getBytes(StandardCharsets.UTF_8), first[0].equals("HEAD"));
                return;
            }
            if (files != null && uri.getPath().startsWith("/files/")) {
                String result;
                int code = 200;
                if (uri.getPath().equals("/files/list") && !first[0].equals("POST")) result = files.list(query(uri, "side"), query(uri, "path"));
                else if (uri.getPath().equals("/files/jobs") && first[0].equals("POST")) {
                    long remaining = Long.parseLong(headers.getOrDefault("content-length", "0"));
                    ByteArrayOutputStream body = new ByteArrayOutputStream();
                    byte[] buffer = new byte[16384];
                    while (remaining > 0) {
                        int count = input.read(buffer, 0, (int) Math.min(buffer.length, remaining));
                        if (count < 0) throw new EOFException();
                        body.write(buffer, 0, count); remaining -= count;
                    }
                    Map<String, java.util.List<String>> form = new HashMap<>();
                    for (String part : new String(body.toByteArray(), StandardCharsets.UTF_8).split("&")) {
                        String[] pair = part.split("=", 2);
                        if (pair.length == 2) {
                            String key = URLDecoder.decode(pair[0], "UTF-8");
                            java.util.List<String> values = form.get(key);
                            if (values == null) { values = new java.util.ArrayList<>(); form.put(key, values); }
                            values.add(URLDecoder.decode(pair[1], "UTF-8"));
                        }
                    }
                    result = files.submit(form); code = 201;
                } else if (uri.getPath().equals("/files/jobs")) result = files.jobs();
                else { response(output, 404, "text/plain", "Not found".getBytes(StandardCharsets.UTF_8), false); return; }
                response(output, code, "application/json", result.getBytes(StandardCharsets.UTF_8), first[0].equals("HEAD"));
                return;
            }
            if (first[0].equals("POST")) {
                if (uri.getPath().equals("/sessions")) {
                    response(output, 201, "application/json", stateJson(provider.create()).getBytes(StandardCharsets.UTF_8), false);
                } else if (uri.getPath().startsWith("/sessions/") && uri.getPath().endsWith("/close")) {
                    String selected = uri.getPath().substring(10, uri.getPath().length() - 6);
                    State state = provider.find(selected);
                    if (state == null) { response(output, 404, "application/json", "{}".getBytes(StandardCharsets.UTF_8), false); return; }
                    provider.stop(selected);
                    response(output, 200, "application/json", stateJson(state).getBytes(StandardCharsets.UTF_8), false);
                } else response(output, 404, "text/plain", "Not found".getBytes(StandardCharsets.UTF_8), false);
                return;
            }
            if (uri.getPath().equals("/sessions")) {
                StringBuilder body = new StringBuilder("{\"sessions\":[");
                for (State state : provider.list()) {
                    if (body.length() > 13) body.append(',');
                    body.append(stateJson(state));
                }
                response(output, 200, "application/json", body.append("]}").toString().getBytes(StandardCharsets.UTF_8), first[0].equals("HEAD"));
                return;
            }
            if (uri.getPath().equals("/ws")) {
                if (provider.find(query(uri, "session")) == null) {
                    response(output, 404, "text/plain", "Onbekende terminalsessie".getBytes(StandardCharsets.UTF_8), false);
                    return;
                }
                if (!"websocket".equalsIgnoreCase(headers.get("upgrade")) || !"13".equals(headers.get("sec-websocket-version")) || !headers.containsKey("sec-websocket-key")) throw new IOException("Invalid WebSocket handshake");
                String key = headers.get("sec-websocket-key") + "258EAFA5-E914-47DA-95CA-C5AB0DC85B11";
                String accept = base64(MessageDigest.getInstance("SHA-1").digest(key.getBytes(StandardCharsets.US_ASCII)));
                output.write(("HTTP/1.1 101 Switching Protocols\r\nUpgrade: websocket\r\nConnection: Upgrade\r\nSec-WebSocket-Accept: " + accept + "\r\n\r\n").getBytes(StandardCharsets.US_ASCII));
                output.flush();
                upgraded = true;
                socket.setSoTimeout(0);
                new Connection(socket, input, output, uri).run();
                return;
            }
            if (uri.getPath().equals("/health")) {
                response(output, 200, "application/json", stateJson(provider.current()).getBytes(StandardCharsets.UTF_8), first[0].equals("HEAD"));
                return;
            }
            String path = uri.getPath();
            if (path.equals("/") || path.equals("/terminal") || path.equals("/terminal/")) path = "/terminal/index.html";
            String name = path.startsWith("/terminal/") ? path.substring(10) : "";
            if (!Arrays.asList("index.html", "app.js", "style.css", "xterm.js", "xterm.css", "addon-fit.js", "files.js", "control.js").contains(name)) {
                response(output, 404, "text/plain", "Not found".getBytes(StandardCharsets.UTF_8), first[0].equals("HEAD"));
                return;
            }
            String mime = name.endsWith(".js") ? "text/javascript" : name.endsWith(".css") ? "text/css" : "text/html";
            response(output, 200, mime, assets.read("terminal/" + name), first[0].equals("HEAD"));
        } catch (Exception error) {
            if (!upgraded && !closed && !(error instanceof EOFException) && !(error instanceof SocketException)) {
                try { response(socket.getOutputStream(), 500, "text/plain", error.toString().getBytes(StandardCharsets.UTF_8), false); }
                catch (IOException ignored) {}
            }
        } finally {
            sockets.remove(socket);
            try { socket.close(); } catch (IOException ignored) {}
        }
    }

    private static String query(URI uri, String key) throws IOException {
        if (uri.getRawQuery() != null) for (String part : uri.getRawQuery().split("&")) {
            String[] pair = part.split("=", 2);
            if (pair.length == 2 && pair[0].equals(key)) return URLDecoder.decode(pair[1], "UTF-8");
        }
        return "";
    }

    private static String header(InputStream input) throws IOException {
        ByteArrayOutputStream bytes = new ByteArrayOutputStream();
        int state = 0;
        byte[] end = {13, 10, 13, 10};
        while (bytes.size() < 16384) {
            int value = input.read();
            if (value < 0) throw new EOFException();
            bytes.write(value);
            state = value == end[state] ? state + 1 : value == 13 ? 1 : 0;
            if (state == 4) return new String(bytes.toByteArray(), StandardCharsets.US_ASCII);
        }
        throw new IOException("HTTP header exceeds 16384 bytes");
    }

    private static void response(OutputStream output, int status, String mime, byte[] body, boolean head) throws IOException {
        output.write(("HTTP/1.1 " + status + " " + (status == 200 ? "OK" : status == 201 ? "Created" : "Error") + "\r\nContent-Type: " + mime + "; charset=utf-8\r\nContent-Length: " + body.length + "\r\nCache-Control: no-store\r\nConnection: close\r\n\r\n").getBytes(StandardCharsets.US_ASCII));
        if (!head) output.write(body);
        output.flush();
    }

    static String quote(String value) {
        StringBuilder result = new StringBuilder("\"");
        for (char c : value.toCharArray()) {
            if (c == '"' || c == '\\') result.append('\\').append(c);
            else if (c < 32) result.append(String.format("\\u%04x", (int) c));
            else result.append(c);
        }
        return result.append('"').toString();
    }

    private static String base64(byte[] bytes) {
        String alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
        StringBuilder result = new StringBuilder();
        for (int i = 0; i < bytes.length; i += 3) {
            int value = (bytes[i] & 255) << 16;
            if (i + 1 < bytes.length) value |= (bytes[i + 1] & 255) << 8;
            if (i + 2 < bytes.length) value |= bytes[i + 2] & 255;
            result.append(alphabet.charAt(value >>> 18)).append(alphabet.charAt((value >>> 12) & 63));
            result.append(i + 1 < bytes.length ? alphabet.charAt((value >>> 6) & 63) : '=');
            result.append(i + 2 < bytes.length ? alphabet.charAt(value & 63) : '=');
        }
        return result.toString();
    }

    private static String stateJson(State state) {
        return "{\"type\":\"state\",\"session\":" + quote(state.id) + ",\"running\":" + (state.session != null && state.session.running())
                + ",\"pid\":" + (state.session == null ? -1 : state.session.pid()) + ",\"exit\":" + (state.session == null ? -1 : state.session.exitStatus()) + ",\"error\":" + quote(state.error)
                + ",\"ssh\":{\"port\":8022,\"running\":" + (state.ssh != null && state.ssh.running()) + ",\"error\":" + quote(state.sshError) + "}}";
    }

    private final class Connection {
        private final Socket socket;
        private final InputStream input;
        private final OutputStream output;
        private volatile boolean done;
        private volatile long acknowledged;
        private volatile long sent;
        private volatile String id = "";

        Connection(Socket socket, InputStream input, OutputStream output, URI uri) {
            this.socket = socket;
            this.input = input;
            this.output = output;
            if (uri.getRawQuery() != null) for (String part : uri.getRawQuery().split("&")) {
                String[] pair = part.split("=", 2);
                if (pair.length == 2 && pair[0].equals("session")) try { id = URLDecoder.decode(pair[1], "UTF-8"); } catch (Exception ignored) {}
                if (pair.length == 2 && pair[0].equals("cursor")) try { acknowledged = Math.max(0, Long.parseLong(pair[1])); } catch (NumberFormatException ignored) {}
            }
            if (id.isEmpty()) id = provider.current().id;
            sent = acknowledged;
        }

        private synchronized void frame(int opcode, byte[] bytes) throws IOException {
            output.write(128 | opcode);
            if (bytes.length < 126) output.write(bytes.length);
            else { output.write(126); output.write(bytes.length >>> 8); output.write(bytes.length & 255); }
            output.write(bytes);
            output.flush();
        }

        private void text(String message) throws IOException { frame(1, message.getBytes(StandardCharsets.UTF_8)); }

        private void pump() {
            String previousState = "";
            try {
                while (!done && !closed) {
                    State state = provider.find(id);
                    if (state == null) throw new IOException("Onbekende terminalsessie");
                    if (!id.equals(state.id)) {
                        id = state.id;
                        acknowledged = sent = 0;
                        text("{\"type\":\"reset\",\"session\":" + quote(id) + "}");
                    }
                    String status = stateJson(state);
                    if (!status.equals(previousState)) { text(status); previousState = status; }
                    if (state.session != null && acknowledged == sent) {
                        PtySession.Output next = state.session.output(acknowledged);
                        if (next.truncated) text("{\"type\":\"truncated\"}");
                        if (next.bytes.length > 0) {
                            byte[] message = new byte[next.bytes.length + 8];
                            long position = next.cursor;
                            for (int i = 7; i >= 0; i--) { message[i] = (byte) position; position >>>= 8; }
                            System.arraycopy(next.bytes, 0, message, 8, next.bytes.length);
                            sent = next.cursor;
                            frame(2, message);
                        }
                    }
                    Thread.sleep(20);
                }
            } catch (Exception ignored) {
            } finally {
                done = true;
                try { socket.close(); } catch (IOException ignored) {}
            }
        }

        private void run() throws IOException {
            clients.execute(this::pump);
            ByteArrayOutputStream fragments = new ByteArrayOutputStream();
            int fragmentedOpcode = 0;
            try {
                while (!done && !closed) {
                    int first = input.read();
                    if (first < 0) break;
                    int second = readByte();
                    int opcode = first & 15;
                    boolean finalFrame = (first & 128) != 0;
                    if ((first & 112) != 0 || (second & 128) == 0) throw new IOException("Invalid WebSocket frame");
                    long length = second & 127;
                    if (length == 126) length = (readByte() << 8) | readByte();
                    else if (length == 127) { length = 0; for (int i = 0; i < 8; i++) length = (length << 8) | readByte(); }
                    if (length < 0 || length > 65536 || opcode >= 8 && (!finalFrame || length > 125)) throw new IOException("Invalid WebSocket length");
                    byte[] mask = new byte[4];
                    for (int i = 0; i < 4; i++) mask[i] = (byte) readByte();
                    byte[] bytes = new byte[(int) length];
                    for (int i = 0; i < bytes.length; i++) bytes[i] = (byte) (readByte() ^ mask[i % 4]);
                    if (opcode == 8) { frame(8, bytes); break; }
                    if (opcode == 9) { frame(10, bytes); continue; }
                    if (opcode == 10) continue;
                    if (opcode != 0) {
                        if (fragmentedOpcode != 0 || opcode != 1 && opcode != 2) throw new IOException("Invalid WebSocket opcode");
                        fragmentedOpcode = opcode;
                    } else if (fragmentedOpcode == 0) throw new IOException("Unexpected continuation");
                    fragments.write(bytes);
                    if (fragments.size() > 65536) throw new IOException("WebSocket message exceeds 65536 bytes");
                    if (!finalFrame) continue;
                    bytes = fragments.toByteArray();
                    if (fragmentedOpcode == 1) {
                        String message = new String(bytes, StandardCharsets.UTF_8);
                        if (message.startsWith("ack:")) {
                            long value = Long.parseLong(message.substring(4));
                            if (value == sent) acknowledged = value;
                        } else if (message.startsWith("resize:")) {
                            String[] size = message.split(":");
                            State state = provider.find(id);
                            if (state != null && size.length == 3 && state.session != null && state.session.running()) state.session.resize(Integer.parseInt(size[1]), Integer.parseInt(size[2]));
                        }
                    } else {
                        State state = provider.find(id);
                        if (state != null && state.session != null && state.session.running()) for (int offset = 0; offset < bytes.length; offset += 16384) state.session.write(Arrays.copyOfRange(bytes, offset, Math.min(bytes.length, offset + 16384)));
                    }
                    fragments.reset();
                    fragmentedOpcode = 0;
                }
            } finally { done = true; }
        }

        private int readByte() throws IOException {
            int value = input.read();
            if (value < 0) throw new EOFException();
            return value;
        }
    }

    @Override
    public void close() {
        closed = true;
        try { listener.close(); } catch (IOException ignored) {}
        for (Socket socket : sockets) try { socket.close(); } catch (IOException ignored) {}
        clients.shutdownNow();
    }
}
