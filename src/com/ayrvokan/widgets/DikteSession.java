package com.ayrvokan.widgets;

import android.Manifest;
import android.content.pm.PackageManager;
import android.media.AudioFormat;
import android.media.AudioRecord;
import android.media.MediaRecorder;
import android.os.Handler;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

final class DikteSession {
    interface Observer { void changed(); }
    final LinuxRuntime runtime;
    final Handler main;
    final ExecutorService work = Executors.newSingleThreadExecutor();
    final List<Observer> observers = new ArrayList<>();
    volatile Process process;
    volatile Socket audioClient;
    volatile AudioRecord microphone;
    volatile ServerSocket audioServer;
    BufferedWriter input;
    boolean starting;
    boolean ready;
    boolean closed;
    boolean permissionNeeded;
    String status = "Orijinal Dikte hazırlanıyor…";
    String endpoint = "";
    final List<String> pending = new ArrayList<>();

    DikteSession(LinuxRuntime runtime, Handler main) { this.runtime = runtime; this.main = main; }
    void observe(Observer observer) { if (!observers.contains(observer)) observers.add(observer); observer.changed(); start(); }
    void unobserve(Observer observer) { observers.remove(observer); }
    void publish() { if (!closed) for (Observer observer : new ArrayList<>(observers)) observer.changed(); }

    void start() {
        if (closed || starting || process != null) return;
        starting = true;
        status = "Linux'ta orijinal Dikte açılıyor…";
        publish();
        work.execute(() -> {
            try {
                if (audioServer == null) {
                    audioServer = new ServerSocket(0, 8, InetAddress.getByName("127.0.0.1"));
                    new Thread(this::serveAudio, "dikte-android-audio").start();
                }
                int web = port();
                int rfb = port();
                ProcessBuilder builder = new ProcessBuilder(runtime.command("/usr/bin/python3", "-u", "/opt/ayrvokan/dikte_desktop.py", "--web", String.valueOf(web), "--rfb", String.valueOf(rfb), "--audio", String.valueOf(audioServer.getLocalPort())));
                builder.environment().clear();
                builder.environment().putAll(runtime.environment());
                builder.redirectError(ProcessBuilder.Redirect.appendTo(new File(runtime.runtime, "dikte-desktop-errors.log")));
                Process owner = builder.start();
                BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(owner.getOutputStream(), StandardCharsets.UTF_8));
                main.post(() -> {
                    if (closed) { owner.destroy(); starting = false; return; }
                    process = owner;
                    input = writer;
                    endpoint = "http://127.0.0.1:" + web + "/";
                    starting = false;
                    publish();
                });
                new Thread(() -> consume(owner), "dikte-original-ui").start();
            } catch (Exception error) { main.post(() -> { starting = false; status = error.getMessage(); publish(); }); }
        });
    }

    static int port() throws Exception { try (ServerSocket server = new ServerSocket(0, 1, InetAddress.getByName("127.0.0.1"))) { return server.getLocalPort(); } }

    void consume(Process owner) {
        try (BufferedReader reader = new BufferedReader(new InputStreamReader(owner.getInputStream(), StandardCharsets.UTF_8))) {
            String line;
            while ((line = reader.readLine()) != null) {
                JSONObject message = new JSONObject(line);
                main.post(() -> {
                    if (closed || process != owner) return;
                    if ("ready".equals(message.optString("type"))) {
                        ready = true;
                        status = "Dikte 2.4.0 · arka planda hazır";
                        if (message.optJSONObject("bindings") != null) DikteAccessibilityService.bindings = message.optJSONObject("bindings");
                        for (String command : new ArrayList<>(pending)) send(command);
                        pending.clear();
                    }
                    if ("state".equals(message.optString("type"))) {
                        JSONObject state = message.optJSONObject("state");
                        if (state != null) {
                            String phase = state.optString("dictation", "idle");
                            status = state.optBoolean("paused") ? "Dikte · kayıt duraklatıldı" : "Dikte · " + phase;
                        }
                        if (message.optJSONObject("bindings") != null) DikteAccessibilityService.bindings = message.optJSONObject("bindings");
                    }
                    if ("control".equals(message.optString("type"))) {
                        JSONObject result = message.optJSONObject("result");
                        if (result != null && !result.optBoolean("ok", true)) status = "Dikte: " + result.optString("error", result.toString());
                    }
                    if ("error".equals(message.optString("type"))) { ready = false; status = message.optString("error"); }
                    publish();
                });
            }
            int code = owner.waitFor();
            main.post(() -> { if (process == owner) { process = null; ready = false; status = "Dikte kapandı · " + code; publish(); } });
        } catch (Exception error) { main.post(() -> { if (process == owner) { ready = false; status = error.getMessage(); publish(); } }); }
    }

    void control(String command) {
        if (!ready || input == null) { pending.add(command); start(); return; }
        send(command);
    }

    void send(String command) {
        BufferedWriter writer = input;
        if (writer == null) return;
        work.execute(() -> {
            try { writer.write(new JSONObject().put("cmd", command).toString()); writer.newLine(); writer.flush(); }
            catch (Exception error) { main.post(() -> { status = error.getMessage(); publish(); }); }
        });
    }

    private void serveAudio() {
        while (!closed) {
            try {
                Socket client = audioServer.accept();
                Thread connection = new Thread(() -> handleConnection(client), "dikte-platform-connection");
                connection.setDaemon(true);
                connection.start();
            } catch (Exception error) { if (!closed) main.post(() -> { status = "Dikte bağlantısı: " + error.getMessage(); publish(); }); }
        }
    }

    private void handleConnection(Socket client) {
        boolean audio = false;
        try (Socket connection = client) {
            client.setSoTimeout(20000);
            BufferedReader reader = new BufferedReader(new InputStreamReader(client.getInputStream(), StandardCharsets.UTF_8));
            String header = reader.readLine();
            if (header == null) return;
            if (!"DIKTE_PCM16_16000_MONO".equals(header)) {
                JSONObject event = new JSONObject(header);
                JSONObject response = new JSONObject();
                CountDownLatch done = new CountDownLatch(1);
                main.post(() -> {
                    try {
                        String text = event.optString("text");
                        boolean paste = "paste".equals(event.optString("type"));
                        boolean ok;
                        if (paste) ok = DikteAccessibilityService.insert(text);
                        else {
                            runtime.context.getSystemService(android.content.ClipboardManager.class).setPrimaryClip(android.content.ClipData.newPlainText("Dikte", text));
                            ok = true;
                        }
                        response.put("ok", ok);
                        if (paste) {
                            status = ok ? "Dikte · metin yazıldı" : "Dikte · metin panoda; seçili yazı alanı bulunamadı";
                            if (!ok) response.put("error", status);
                            publish();
                        }
                    } catch (Exception error) { try { response.put("ok", false).put("error", error.getMessage()); } catch (Exception ignored) { } }
                    finally { done.countDown(); }
                });
                if (!done.await(15, TimeUnit.SECONDS)) throw new IllegalStateException("Android metin aktarımı zaman aşımı");
                client.getOutputStream().write((response.toString() + "\n").getBytes(StandardCharsets.UTF_8));
                return;
            }
            audio = true;
            synchronized (this) {
                if (audioClient != null) throw new IllegalStateException("Dikte mikrofonu zaten kullanımda");
                audioClient = client;
            }
            if (runtime.context.checkSelfPermission(Manifest.permission.RECORD_AUDIO) != PackageManager.PERMISSION_GRANTED) {
                main.post(() -> { permissionNeeded = true; status = "Dikte için mikrofon izni gerekiyor"; publish(); });
                return;
            }
            CountDownLatch captured = new CountDownLatch(1);
            main.post(() -> { DikteAccessibilityService.captureTarget(); captured.countDown(); });
            if (!captured.await(5, TimeUnit.SECONDS)) throw new IllegalStateException("Dikte yazı alanı alınamadı");
            int minimum = AudioRecord.getMinBufferSize(16000, AudioFormat.CHANNEL_IN_MONO, AudioFormat.ENCODING_PCM_16BIT);
            AudioRecord device = new AudioRecord(MediaRecorder.AudioSource.MIC, 16000, AudioFormat.CHANNEL_IN_MONO, AudioFormat.ENCODING_PCM_16BIT, Math.max(8192, minimum * 2));
            if (device.getState() != AudioRecord.STATE_INITIALIZED) { device.release(); throw new IllegalStateException("Android mikrofonu açılamadı"); }
            microphone = device;
            try {
                device.startRecording();
                if (device.getRecordingState() != AudioRecord.RECORDSTATE_RECORDING) throw new IllegalStateException("Dikte mikrofon kaydı başlamadı");
                main.post(() -> { status = "Dikte · mikrofon kaydediyor"; publish(); });
                byte[] data = new byte[2048];
                while (!closed && audioClient == client && !client.isClosed()) {
                    int count = device.read(data, 0, data.length);
                    if (count < 0) break;
                    if (count > 0) { client.getOutputStream().write(data, 0, count); client.getOutputStream().flush(); }
                }
            } finally {
                try { device.stop(); } catch (Exception ignored) { }
                device.release();
                microphone = null;
            }
        } catch (Exception error) {
            if (!closed && !(error instanceof java.net.SocketException)) main.post(() -> { status = "Dikte bağlantısı: " + error.getMessage(); publish(); });
        } finally { if (audio && audioClient == client) audioClient = null; }
    }

    void stopAudio() {
        if (audioClient != null) control("cancel");
        Socket client = audioClient;
        audioClient = null;
        if (client != null) try { client.close(); } catch (Exception ignored) { }
        AudioRecord device = microphone;
        if (device != null) try { device.stop(); } catch (Exception ignored) { }
    }

    void stopDesktop() {
        Process owner = process;
        process = null;
        ready = false;
        stopAudio();
        if (owner == null) return;
        BufferedWriter writer = input;
        input = null;
        work.execute(() -> {
            try { if (writer != null) { writer.write("{\"cmd\":\"shutdown\"}\n"); writer.flush(); writer.close(); } }
            catch (Exception ignored) { }
            try { if (!owner.waitFor(15, java.util.concurrent.TimeUnit.SECONDS)) owner.destroy(); }
            catch (InterruptedException error) { Thread.currentThread().interrupt(); owner.destroy(); }
        });
    }

    void close() {
        stopDesktop();
        closed = true;
        if (audioServer != null) try { audioServer.close(); } catch (Exception ignored) { }
        work.shutdown();
        observers.clear();
    }
}
