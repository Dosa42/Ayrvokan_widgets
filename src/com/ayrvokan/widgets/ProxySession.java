package com.ayrvokan.widgets;

import android.os.Handler;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

final class ProxySession {
    interface Observer { void changed(); }
    interface Result { void complete(String value, String error); }
    final LinuxRuntime runtime;
    final Handler main;
    final File directory;
    final File config;
    final File logFile;
    final ExecutorService work = Executors.newSingleThreadExecutor();
    final List<Observer> observers = new ArrayList<>();
    final StringBuilder logs = new StringBuilder();
    volatile Process process;
    volatile Process stoppingProcess;
    boolean busy;
    boolean running;
    boolean closed;
    int port = 8317;
    String status = "Stopped";
    String managementKey;
    final Runnable probe = new Runnable() {
        @Override public void run() {
            if (closed || !running) return;
            final Process owner = process;
            final int selectedPort = port;
            work.execute(() -> {
                String result;
                HttpURLConnection connection = null;
                try {
                    connection = (HttpURLConnection) new URL("http://127.0.0.1:" + selectedPort + "/").openConnection();
                    connection.setConnectTimeout(1500);
                    connection.setReadTimeout(1500);
                    int code = connection.getResponseCode();
                    result = code == 200 ? "Running · API ready" : "Running · HTTP " + code;
                } catch (Exception error) { result = "Starting · waiting for API"; }
                finally { if (connection != null) connection.disconnect(); }
                final String value = result;
                main.post(() -> {
                    if (closed || process != owner || !running) return;
                    status = value;
                    publish();
                    main.postDelayed(probe, 3000);
                });
            });
        }
    };

    ProxySession(LinuxRuntime runtime, Handler main) throws Exception {
        this.runtime = runtime;
        this.main = main;
        directory = new File(runtime.root, "root/.ayrvokan-cliproxy");
        config = new File(directory, "config.yaml");
        logFile = new File(directory, "widget.log");
        managementKey = read(new File(directory, "management-key")).trim();
        try { port = port(read(config)); } catch (IllegalArgumentException error) { status = error.getMessage(); }
        if (logFile.isFile()) {
            String history = read(logFile);
            logs.append(history.substring(Math.max(0, history.length() - 40000)));
        }
        if (runtime.context.getSharedPreferences("cliproxy", 0).getBoolean("enabled", true)) start();
    }

    void observe(Observer observer) { if (!observers.contains(observer)) observers.add(observer); observer.changed(); }
    void unobserve(Observer observer) { observers.remove(observer); }
    void publish() { for (Observer observer : new ArrayList<>(observers)) observer.changed(); }
    String endpoint() { return "http://127.0.0.1:" + port; }

    void start() {
        if (closed || busy || running) return;
        busy = true;
        status = "Starting CLIProxyAPI…";
        publish();
        work.execute(() -> {
            Process started = null;
            try {
                int selectedPort = port(read(config));
                try (ServerSocket check = new ServerSocket()) { check.bind(new InetSocketAddress("127.0.0.1", selectedPort)); }
                ProcessBuilder builder = new ProcessBuilder(runtime.command("/bin/bash", "--noprofile", "--norc", "-c", "cd /root/.ayrvokan-cliproxy && export MANAGEMENT_PASSWORD=\"$(cat management-key)\" && exec /usr/local/bin/cli-proxy-api -config /root/.ayrvokan-cliproxy/config.yaml -local-model"));
                builder.environment().clear();
                builder.environment().putAll(runtime.environment());
                builder.redirectErrorStream(true);
                started = builder.start();
                started.getOutputStream().close();
                Process owner = started;
                main.post(() -> {
                    if (closed) { owner.destroy(); return; }
                    port = selectedPort;
                    process = owner;
                    busy = false;
                    running = true;
                    runtime.context.getSharedPreferences("cliproxy", 0).edit().putBoolean("enabled", true).apply();
                    append("\nCLIProxyAPI 8.0.60 · Linux ARM64\n");
                    main.post(probe);
                    publish();
                });
                new Thread(() -> consume(owner), "cliproxy-output").start();
            } catch (Exception error) {
                if (started != null) started.destroy();
                main.post(() -> { busy = false; status = "Start failed: " + error.getMessage(); append(status + "\n"); publish(); });
            }
        });
    }

    private void consume(Process owner) {
        String failure = null;
        try (BufferedReader reader = new BufferedReader(new InputStreamReader(owner.getInputStream(), StandardCharsets.UTF_8))) {
            String line;
            while ((line = reader.readLine()) != null) {
                String value = line.replaceAll("\\x1b\\[[0-9;]*[A-Za-z]", "") + "\n";
                main.post(() -> append(value));
            }
        } catch (Exception error) {
            failure = error.getMessage();
            if (stoppingProcess != owner) owner.destroy();
        }
        int exit;
        try { exit = owner.waitFor(); }
        catch (InterruptedException error) { Thread.currentThread().interrupt(); owner.destroyForcibly(); exit = -1; }
        final int code = exit;
        final String message = failure;
        main.post(() -> {
            if (process != owner) return;
            boolean requested = stoppingProcess == owner;
            running = false;
            busy = false;
            process = null;
            stoppingProcess = null;
            status = requested || message == null ? "Stopped · exit " + code : "Process error: " + message;
            main.removeCallbacks(probe);
            append("[exit " + code + "]\n");
            publish();
        });
    }

    void stop() {
        if (closed || busy || !running) return;
        runtime.context.getSharedPreferences("cliproxy", 0).edit().putBoolean("enabled", false).apply();
        busy = true;
        status = "Stopping…";
        main.removeCallbacks(probe);
        Process owner = process;
        stoppingProcess = owner;
        publish();
        work.execute(() -> {
            owner.destroy();
            try { if (!owner.waitFor(6, java.util.concurrent.TimeUnit.SECONDS)) owner.destroyForcibly(); }
            catch (InterruptedException error) { Thread.currentThread().interrupt(); owner.destroyForcibly(); }
        });
    }

    void loadConfig(Result result) {
        work.execute(() -> {
            try { String value = read(config); main.post(() -> result.complete(value, null)); }
            catch (Exception error) { main.post(() -> result.complete(null, error.getMessage())); }
        });
    }

    void saveConfig(String text, Result result) {
        if (running || busy) { result.complete(null, "Stop CLIProxyAPI before saving settings"); return; }
        work.execute(() -> {
            try {
                int selectedPort = port(text);
                File staged = new File(directory, ".config-new");
                LinuxRuntime.write(staged, text);
                Files.move(staged.toPath(), config.toPath(), StandardCopyOption.ATOMIC_MOVE, StandardCopyOption.REPLACE_EXISTING);
                main.post(() -> { port = selectedPort; status = "Settings saved"; publish(); result.complete(text, null); });
            } catch (Exception error) { main.post(() -> result.complete(null, error.getMessage())); }
        });
    }

    void append(String text) {
        if (closed) return;
        logs.append(text);
        if (logs.length() > 48000) logs.delete(0, logs.length() - 40000);
        publish();
        String snapshot = logs.toString();
        work.execute(() -> { try { LinuxRuntime.write(logFile, snapshot); } catch (Exception ignored) { } });
    }

    void close() {
        closed = true;
        main.removeCallbacks(probe);
        Process owner = process;
        if (owner != null) owner.destroy();
        work.shutdown();
        observers.clear();
    }

    static String read(File file) throws Exception {
        try (FileInputStream input = new FileInputStream(file)) { return LinuxRuntime.readAll(input); }
    }

    static int port(String text) {
        Matcher server = Pattern.compile("(?m)^server:\\s*\\n((?:[ \\t]+[^\\n]*\\n|[ \\t]*\\n)*)").matcher(text + "\n");
        String block = server.find() ? server.group(1) : text;
        Matcher match = Pattern.compile("(?m)^\\s*port:\\s*(\\d+)\\s*$").matcher(block);
        if (!match.find()) throw new IllegalArgumentException("Set server.port in the YAML configuration");
        int value = Integer.parseInt(match.group(1));
        if (value < 1024 || value > 65535) throw new IllegalArgumentException("Port must be between 1024 and 65535");
        return value;
    }
}
