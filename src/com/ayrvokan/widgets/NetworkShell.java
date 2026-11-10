package com.ayrvokan.widgets;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.nio.charset.StandardCharsets;
import org.json.JSONArray;
import org.json.JSONObject;

public final class NetworkShell {
    public static void main(String[] arguments) throws Exception {
        int port = Integer.parseInt(arguments[0]);
        String token = arguments[1];
        File apk = new File(arguments[2]);
        try (ServerSocket server = new ServerSocket()) {
            server.setReuseAddress(true);
            server.bind(new InetSocketAddress("127.0.0.1", port));
            server.setSoTimeout(5000);
            boolean active = true;
            while (active && apk.isFile()) {
                try (Socket socket = server.accept()) {
                    socket.setSoTimeout(3000);
                    BufferedReader input = new BufferedReader(new InputStreamReader(socket.getInputStream(), StandardCharsets.UTF_8));
                    String line = input.readLine();
                    if (line == null || line.length() > 4096) continue;
                    JSONObject request = new JSONObject(line);
                    if (!token.equals(request.optString("token"))) continue;
                    String operation = request.optString("op", "snapshot");
                    JSONObject result;
                    if ("stop".equals(operation)) { result = new JSONObject().put("ok", true).put("stopped", true); active = false; }
                    else result = snapshot().put("apk", apk.getAbsolutePath());
                    OutputStream output = socket.getOutputStream();
                    output.write((result.toString() + "\n").getBytes(StandardCharsets.UTF_8));
                    output.flush();
                } catch (SocketTimeoutException ignored) { }
                catch (Exception error) { System.err.println(error.getClass().getSimpleName() + ": " + error.getMessage()); }
            }
        }
    }

    static JSONObject snapshot() throws Exception {
        JSONArray connections = new JSONArray();
        JSONArray errors = new JSONArray();
        int tables = 0;
        for (String name : new String[]{"tcp", "tcp6", "udp", "udp6"}) {
            try (BufferedReader input = new BufferedReader(new FileReader("/proc/net/" + name))) {
                input.readLine();
                String line;
                while ((line = input.readLine()) != null) {
                    String[] fields = line.trim().split("\\s+");
                    if (fields.length < 10) continue;
                    JSONObject local = address(fields[1]);
                    JSONObject remote = address(fields[2]);
                    String state = state(fields[3]);
                    connections.put(new JSONObject().put("protocol", name.toUpperCase(java.util.Locale.ROOT)).put("local", local).put("remote", remote).put("state", state).put("uid", Integer.parseInt(fields[7])).put("inode", fields[9]));
                }
                tables++;
            } catch (Exception error) { errors.put(name + ": " + error.getMessage()); }
        }
        JSONArray interfaces = new JSONArray();
        try (BufferedReader input = new BufferedReader(new FileReader("/proc/net/dev"))) {
            String line;
            while ((line = input.readLine()) != null) {
                int colon = line.indexOf(':');
                if (colon < 0) continue;
                String[] values = line.substring(colon + 1).trim().split("\\s+");
                if (values.length < 16) continue;
                interfaces.put(new JSONObject().put("name", line.substring(0, colon).trim()).put("rx_bytes", Long.parseLong(values[0])).put("tx_bytes", Long.parseLong(values[8])));
            }
        } catch (Exception error) { errors.put("interfaces: " + error.getMessage()); }
        return new JSONObject().put("ok", tables > 0).put("source", "Android shell /proc/net").put("tables_read", tables).put("pid", android.os.Process.myPid()).put("uid", android.os.Process.myUid()).put("time_ms", System.currentTimeMillis()).put("connections", connections).put("interfaces", interfaces).put("errors", errors);
    }

    private static JSONObject address(String value) throws Exception {
        String[] parts = value.split(":");
        String hex = parts[0];
        byte[] bytes = new byte[hex.length() / 2];
        for (int block = 0; block < bytes.length; block += 4) {
            for (int index = 0; index < 4; index++) bytes[block + index] = (byte) Integer.parseInt(hex.substring((block + 3 - index) * 2, (block + 4 - index) * 2), 16);
        }
        return new JSONObject().put("host", InetAddress.getByAddress(bytes).getHostAddress()).put("port", Integer.parseInt(parts[1], 16));
    }

    private static String state(String value) {
        switch (value) {
            case "01": return "ESTABLISHED";
            case "02": return "SYN_SENT";
            case "03": return "SYN_RECV";
            case "04": return "FIN_WAIT1";
            case "05": return "FIN_WAIT2";
            case "06": return "TIME_WAIT";
            case "07": return "CLOSE";
            case "08": return "CLOSE_WAIT";
            case "09": return "LAST_ACK";
            case "0A": return "LISTEN";
            case "0B": return "CLOSING";
            default: return value;
        }
    }
}
