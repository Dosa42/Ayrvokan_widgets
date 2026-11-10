package com.ayrvokan.widgets;

import android.os.Handler;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONObject;

final class VekilBridge {
    interface Callback {
        default void event(JSONObject event) { }
        void result(Object result, String error);
    }
    interface Ready { void ready(JSONObject status, String error); }
    final Handler main;
    private final Process process;
    private final BufferedWriter input;
    private final ExecutorService writer = Executors.newSingleThreadExecutor();
    private final Map<String, Callback> pending = new LinkedHashMap<>();
    private final List<Ready> waiting = new ArrayList<>();
    private JSONObject status;
    private String failure;
    private int sequence;
    private boolean stopped;

    VekilBridge(LinuxRuntime runtime, Handler main) throws Exception {
        this.main = main;
        ProcessBuilder builder = new ProcessBuilder(runtime.command("/usr/local/bin/vekil-kaan", "serve"));
        builder.environment().clear();
        builder.environment().putAll(runtime.environment());
        builder.redirectError(ProcessBuilder.Redirect.appendTo(new File(runtime.runtime, "vekil-errors.log")));
        process = builder.start();
        input = new BufferedWriter(new OutputStreamWriter(process.getOutputStream(), StandardCharsets.UTF_8));
        new Thread(() -> {
            try (BufferedReader output = new BufferedReader(new InputStreamReader(process.getInputStream(), StandardCharsets.UTF_8))) {
                String line;
                while ((line = output.readLine()) != null) {
                    JSONObject message = new JSONObject(line);
                    main.post(() -> receive(message));
                }
                main.post(() -> fail("Agent process stopped"));
            } catch (Exception error) { main.post(() -> fail(error.getMessage())); }
        }, "ayrvokan-agent-output").start();
    }

    void ready(Ready callback) {
        if (status != null) callback.ready(status, null);
        else if (failure != null) callback.ready(null, failure);
        else waiting.add(callback);
    }

    String request(String method, JSONObject params, Callback callback) {
        String id = "widget-" + (++sequence);
        if (stopped || failure != null) {
            main.post(() -> callback.result(null, failure == null ? "Agent stopped" : failure));
            return id;
        }
        pending.put(id, callback);
        try {
            JSONObject request = new JSONObject().put("id", id).put("method", method).put("params", params);
            writer.execute(() -> {
                try { input.write(request.toString()); input.newLine(); input.flush(); }
                catch (Exception error) { main.post(() -> fail(error.getMessage())); }
            });
        } catch (Exception error) { main.post(() -> fail(error.getMessage())); }
        return id;
    }

    private void receive(JSONObject message) {
        if (stopped) return;
        if ("ready".equals(message.optString("type"))) {
            status = message.optJSONObject("agent");
            for (Ready callback : new ArrayList<>(waiting)) callback.ready(status, null);
            waiting.clear();
            return;
        }
        String id = message.optString("id");
        Callback callback = pending.get(id);
        if (callback == null) return;
        if ("event".equals(message.optString("type"))) callback.event(message.optJSONObject("event"));
        else if ("result".equals(message.optString("type"))) {
            pending.remove(id);
            callback.result(message.opt("result"), message.optBoolean("ok") ? null : message.optString("error", "Agent request failed"));
        }
    }

    private void fail(String message) {
        if (stopped || failure != null) return;
        failure = message == null ? "Agent disconnected" : message;
        status = null;
        for (Ready callback : new ArrayList<>(waiting)) callback.ready(null, failure);
        waiting.clear();
        List<Callback> callbacks = new ArrayList<>(pending.values());
        pending.clear();
        for (Callback callback : callbacks) callback.result(null, failure);
    }

    void stop() {
        stopped = true;
        process.destroy();
        writer.shutdownNow();
        pending.clear();
        waiting.clear();
    }
}
