package com.ayrvokan.widgets;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import com.google.ai.edge.litertlm.Backend;
import com.google.ai.edge.litertlm.EmbeddingEngine;
import com.google.ai.edge.litertlm.EmbeddingEngineConfig;
import com.google.ai.edge.litertlm.EmbeddingOptions;
import com.google.ai.edge.litertlm.InputData;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.security.MessageDigest;
import java.util.Collections;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONArray;
import org.json.JSONObject;

public final class VekilEmbeddingService extends Service {
    static final String MODEL = "google/embeddinggemma-2-text-270m";
    static final String SHA = "2d079ee2f6f066b1f368e8d7c819f55214eaef1d0513b312321901f30ab286fb";
    static final String PROFILE = "embeddinggemma-2-270m-int4-retrieval-l2-768-v1";
    private final ExecutorService work = Executors.newSingleThreadExecutor();
    private final IBinder binder = new Binder();
    private volatile boolean closed;
    private ServerSocket server;
    private EmbeddingEngine engine;
    private File endpoint;

    @Override public void onCreate() {
        super.onCreate();
        try {
            server = new ServerSocket(0, 16, InetAddress.getByName("127.0.0.1"));
            endpoint = new File(getFilesDir(), "KaliMinimal/opt/ayrvokan/vekil-embedding.json");
            endpoint.getParentFile().mkdirs();
            File staged = new File(endpoint.getParentFile(), ".vekil-embedding-new");
            JSONObject metadata = new JSONObject().put("url", "http://127.0.0.1:" + server.getLocalPort() + "/embeddings").put("model", MODEL).put("profile", PROFILE).put("dimensions", 768).put("pid", android.os.Process.myPid()).put("runtime", "LiteRT-LM 0.18.1 CPU");
            Files.write(staged.toPath(), metadata.toString().getBytes(StandardCharsets.UTF_8));
            Files.move(staged.toPath(), endpoint.toPath(), StandardCopyOption.ATOMIC_MOVE, StandardCopyOption.REPLACE_EXISTING);
            new Thread(() -> {
                while (!closed) {
                    try {
                        Socket socket = server.accept();
                        socket.setSoTimeout(125000);
                        work.execute(() -> handle(socket));
                    } catch (Exception error) { if (!closed) android.util.Log.e("VekilEmbedding", "Native embedding listener failed", error); }
                }
            }, "vekil-native-embedding-http").start();
        } catch (Exception error) { android.util.Log.e("VekilEmbedding", "Native embedding service failed", error); stopSelf(); }
    }

    private String line(InputStream input) throws Exception {
        ByteArrayOutputStream bytes = new ByteArrayOutputStream();
        int value;
        while ((value = input.read()) != -1 && value != '\n') { if (value != '\r') bytes.write(value); }
        return bytes.toString("US-ASCII");
    }

    private void handle(Socket socket) {
        try (Socket client = socket) {
            try {
                InputStream input = client.getInputStream();
                String request = line(input);
                int length = 0;
                String header;
                while (!(header = line(input)).isEmpty()) {
                    int separator = header.indexOf(':');
                    if (separator > 0 && header.substring(0, separator).equalsIgnoreCase("Content-Length")) length = Integer.parseInt(header.substring(separator + 1).trim());
                }
                if (request.startsWith("GET /health ")) { send(client, 200, new JSONObject().put("model", MODEL).put("profile", PROFILE).put("loaded", engine != null).put("dimensions", 768)); return; }
                if (!request.startsWith("POST /embeddings ")) { send(client, 404, new JSONObject().put("error", "Unknown embedding operation")); return; }
                byte[] body = new byte[length];
                int offset = 0;
                while (offset < length) { int count = input.read(body, offset, length - offset); if (count < 0) throw new java.io.EOFException("Incomplete embedding request"); offset += count; }
                JSONObject arguments = new JSONObject(new String(body, StandardCharsets.UTF_8));
                if (!PROFILE.equals(arguments.optString("profile"))) throw new IllegalArgumentException("Embedding model profile mismatch");
                if (engine == null) {
                    File model = prepareModel();
                    File cache = new File(getCacheDir(), "vekil-gemma-native");
                    cache.mkdirs();
                    EmbeddingEngine loaded = new EmbeddingEngine(new EmbeddingEngineConfig(model.getAbsolutePath(), new Backend.CPU(1, null), null, null, cache.getAbsolutePath(), null, 512, null, null));
                    try { loaded.initialize(); engine = loaded; }
                    catch (Exception error) { loaded.close(); throw error; }
                }
                long started = System.nanoTime();
                String prefix = arguments.optBoolean("query") ? "task: search result | query: " : "title: none | text: ";
                float[] vector = engine.computeEmbedding(Collections.singletonList(new InputData.Text(prefix + arguments.getString("text"))), new EmbeddingOptions(true, true, 768, null)).getEmbedding();
                if (vector.length != 768) throw new IllegalStateException("Native model returned an unexpected dimension");
                JSONArray values = new JSONArray();
                for (float value : vector) { if (!Float.isFinite(value)) throw new IllegalStateException("Native model returned a non-finite vector"); values.put((double) value); }
                send(client, 200, new JSONObject().put("model", MODEL).put("profile", PROFILE).put("embedding", values).put("dimensions", 768).put("window", 512).put("elapsed_ms", (System.nanoTime() - started) / 1000000));
            } catch (Exception error) { send(client, 500, new JSONObject().put("error", error.toString()).put("profile", PROFILE)); }
        } catch (Exception error) { if (!closed) android.util.Log.w("VekilEmbedding", "Embedding request ended: " + error); }
    }

    private void send(Socket socket, int code, JSONObject value) throws Exception {
        byte[] bytes = value.toString().getBytes(StandardCharsets.UTF_8);
        OutputStream output = socket.getOutputStream();
        output.write(("HTTP/1.1 " + code + (code == 200 ? " OK" : " Error") + "\r\nContent-Type: application/json; charset=utf-8\r\nContent-Length: " + bytes.length + "\r\nConnection: close\r\n\r\n").getBytes(StandardCharsets.US_ASCII));
        output.write(bytes);
        output.flush();
    }

    private File prepareModel() throws Exception {
        File directory = new File(getFilesDir(), "vekil-models");
        directory.mkdirs();
        File target = new File(directory, "embeddinggemma-2-" + SHA + ".litertlm");
        if (target.isFile() && target.length() == 164626432L) return target;
        File staged = new File(directory, ".embeddinggemma-2.partial");
        MessageDigest digest = MessageDigest.getInstance("SHA-256");
        try {
            try (InputStream input = getAssets().open("vekil/gemma/embeddinggemma-2-text-270m.litertlm"); FileOutputStream output = new FileOutputStream(staged)) {
                byte[] bytes = new byte[65536];
                int count;
                while ((count = input.read(bytes)) != -1) { output.write(bytes, 0, count); digest.update(bytes, 0, count); }
                output.getFD().sync();
            }
            StringBuilder hash = new StringBuilder();
            for (byte value : digest.digest()) hash.append(String.format(java.util.Locale.ROOT, "%02x", value & 255));
            if (!SHA.equals(hash.toString())) throw new java.io.IOException("Incomplete embedded Gemma model copy");
            Files.move(staged.toPath(), target.toPath(), StandardCopyOption.ATOMIC_MOVE, StandardCopyOption.REPLACE_EXISTING);
            return target;
        } finally { if (staged.exists()) staged.delete(); }
    }

    @Override public IBinder onBind(Intent intent) { return binder; }
    @Override public boolean onUnbind(Intent intent) { stopSelf(); return false; }
    @Override public void onDestroy() {
        closed = true;
        try { if (server != null) server.close(); } catch (Exception ignored) { }
        work.execute(() -> { if (engine != null) { engine.close(); engine = null; } });
        work.shutdown();
        if (endpoint != null) endpoint.delete();
        super.onDestroy();
    }
}
