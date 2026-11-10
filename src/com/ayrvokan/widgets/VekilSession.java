package com.ayrvokan.widgets;

import java.io.ByteArrayOutputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

final class VekilSession {
    interface Observer { void changed(); }
    static final class Entry {
        final String role;
        final String text;
        Entry(String role, String text) { this.role = role; this.text = text; }
    }
    private final VekilBridge bridge;
    private final String key;
    final List<Entry> entries = new ArrayList<>();
    private final List<Observer> observers = new ArrayList<>();
    private final ByteArrayOutputStream stdout = new ByteArrayOutputStream();
    private final ByteArrayOutputStream stderr = new ByteArrayOutputStream();
    private final StringBuilder assistant = new StringBuilder();
    String sessionId = "";
    String cwd = "/root/workspace";
    String status = "Starting Vekil Kaan…";
    String version = "";
    String activeRequest = "";
    String browserUrl = "";
    String account = "";
    String backendLabel = "CLIProxyAPI";
    String model = "auto";
    boolean configured;
    String outcome = "";
    boolean ready;
    boolean busy;
    int revision;
    JSONObject engineState = new JSONObject();
    JSONObject ragState = new JSONObject();
    private int ragPoll;
    private boolean pollingEngine;
    private boolean disposed;

    VekilSession(String key, VekilBridge bridge) {
        this.key = key;
        this.bridge = bridge;
        bridge.ready((value, error) -> {
            if (error != null) { status = error; publish(); return; }
            version = value.optString("version");
            JSONObject provider = value.optJSONObject("provider");
            configured = provider != null && provider.optBoolean("configured");
            updateProvider(provider);
            engineState = value.optJSONObject("engine") == null ? new JSONObject() : value.optJSONObject("engine");
            ragState = value.optJSONObject("rag") == null ? new JSONObject() : value.optJSONObject("rag");
            pollEngine();
            open(false, null);
        });
    }

    private void updateProvider(JSONObject provider) {
        if (provider == null) return;
        configured = provider.optBoolean("configured");
        backendLabel = provider.optString("name", "CLIProxyAPI");
        model = provider.isNull("model") ? "auto" : provider.optString("model", "auto");
    }

    private void pollEngine() {
        if (disposed || pollingEngine) return;
        pollingEngine = true;
        bridge.request("engine.status", new JSONObject(), (value, error) -> {
            pollingEngine = false;
            if (disposed) return;
            if (value instanceof JSONObject) engineState = (JSONObject) value;
            for (Observer observer : new ArrayList<>(observers)) observer.changed();
            if ((ragPoll++ % 5) == 0) bridge.request("rag.status", new JSONObject(), (result, problem) -> {
                if (!disposed && result instanceof JSONObject) { ragState = (JSONObject) result; for (Observer observer : new ArrayList<>(observers)) observer.changed(); }
            });
            bridge.main.postDelayed(this::pollEngine, 1000);
        });
    }

    void engineRequest(String method, JSONObject arguments, VekilBridge.Callback callback) {
        bridge.request(method, arguments, (value, error) -> {
            if (value instanceof JSONObject && ((JSONObject) value).has("reactive")) engineState = (JSONObject) value;
            for (Observer observer : new ArrayList<>(observers)) observer.changed();
            callback.result(value, error);
        });
    }

    void dispose() { disposed = true; }

    void observe(Observer observer) { if (!observers.contains(observer)) observers.add(observer); observer.changed(); }
    void unobserve(Observer observer) { observers.remove(observer); }
    private void publish() { revision++; for (Observer observer : new ArrayList<>(observers)) observer.changed(); }
    private JSONObject params() { return object("session_id", sessionId); }
    static JSONObject object(String key, Object value) {
        try { return new JSONObject().put(key, value); } catch (Exception error) { throw new IllegalStateException(error); }
    }
    static JSONObject put(JSONObject value, String key, Object extra) {
        try { return value.put(key, extra); } catch (Exception error) { throw new IllegalStateException(error); }
    }

    private void open(boolean fresh, String selected) {
        busy = true;
        JSONObject arguments = put(put(object("key", key), "cwd", cwd), "new", fresh);
        if (selected != null) put(arguments, "session_id", selected);
        bridge.request("session.open", arguments, (value, error) -> {
            if (error != null) { busy = false; status = error; publish(); return; }
            JSONObject session = (JSONObject) value;
            sessionId = session.optString("id");
            cwd = session.optString("cwd", cwd);
            bridge.request("session.get", params(), (history, problem) -> {
                if (problem != null) { busy = false; status = problem; publish(); return; }
                entries.clear();
                JSONArray events = ((JSONObject) history).optJSONArray("events");
                if (events != null) for (int i = 0; i < events.length(); i++) {
                    JSONObject event = events.optJSONObject(i);
                    if (event != null && "ui.message".equals(event.optString("type"))) {
                        JSONObject data = event.optJSONObject("data");
                        if (data != null) entries.add(new Entry(data.optString("role"), data.optString("text")));
                    }
                }
                trim();
                stdout.reset(); stderr.reset(); assistant.setLength(0);
                ready = true; busy = false; status = "Ready";
                publish();
            });
        });
        publish();
    }

    private void trim() { while (entries.size() > 300) entries.remove(0); }
    private void record(String role, String text, Runnable after) {
        entries.add(new Entry(role, text)); trim(); publish();
        JSONObject value = put(put(params(), "role", role), "text", text);
        bridge.request("session.note", value, (result, error) -> {
            if (error != null) { entries.add(new Entry("error", error)); busy = false; publish(); }
            else if (after != null) after.run();
        });
    }

    void send(String input) {
        String line = input.trim();
        if (!ready || busy || line.isEmpty()) return;
        busy = true; activeRequest = ""; outcome = "";
        stdout.reset(); stderr.reset(); assistant.setLength(0);
        record("user", line, () -> execute(line));
    }

    private void execute(String line) {
        String method;
        JSONObject args = params();
        try {
            if (line.equals("/help")) {
                finish("system", "VEKIL KAAN\n/backend        CLIProxyAPI endpoint and health\n/models         Models from CLIProxyAPI\n/model ID       Select a proxy model\n/rag            Local EmbeddingGemma RAG status\n/rag probe      Run native embedding inference\n/rag add PATH   Index a document or directory\n/rag search Q   Search indexed documents\n/rag watch PATH Watch a document directory\n/rag unwatch P  Stop watching a directory\n/rag sync       Refresh watched documents\n/rag list       Indexed documents\n/rag read ID    Read indexed document\n/rag forget ID  Remove document from index\n/engine         Reactive + Heartbeat state\n/engine start   Start the dual engine\n/engine stop    Pause the dual engine\n/resync         Exchange and restore dual state\n/heartbeat run  Run Heartbeat model/tool cycle\n/directives     Executable Markdown files\n/reload         Reload live directives\n/run COMMAND    Reactive runs /bin/bash\n!COMMAND        Run /bin/bash\n/skills         List skills\n/skill ID       Activate skill\n/hooks          List hooks\n/plugins        List plugins\n/call TOOL JSON Call a tool or plugin\n/status         Agent state\n/cwd PATH       Working directory\n/sessions       Saved sessions\n/resume ID      Resume a session\n/new            New session\n\nEnter to send · Shift+Enter for a new line · Stop to interrupt");
                return;
            }
            if (line.equals("/new")) { open(true, null); return; }
            if (line.startsWith("/resume ")) { open(false, line.substring(8).trim()); return; }
            if (line.equals("/login") || line.startsWith("/login ") || line.equals("/accounts") || line.startsWith("/account ") || line.equals("/logout")) {
                finish("system", "Vekil Kaan uses CLIProxyAPI. Open the CLIProxyAPI widget Management Center to manage provider accounts. Use /models and /model ID here.");
                return;
            } else if (line.equals("/backend")) method = "provider.status";
            else if (line.equals("/models")) method = "provider.models";
            else if (line.startsWith("/model ")) { method = "provider.model"; args.put("slug", line.substring(7).trim()); }
            else if (line.equals("/rag")) method = "rag.status";
            else if (line.equals("/rag probe")) method = "rag.probe";
            else if (line.equals("/rag list")) method = "rag.list";
            else if (line.equals("/rag sync")) method = "rag.sync";
            else if (line.startsWith("/rag add ")) { method = "rag.ingest"; args.put("path", line.substring(9).trim()); }
            else if (line.startsWith("/rag search ")) { method = "rag.search"; args.put("query", line.substring(12).trim()); }
            else if (line.startsWith("/rag watch ")) { method = "rag.watch"; args.put("path", line.substring(11).trim()); }
            else if (line.startsWith("/rag unwatch ")) { method = "rag.unwatch"; args.put("path", line.substring(13).trim()); }
            else if (line.startsWith("/rag read ")) { method = "rag.read"; args.put("id", line.substring(10).trim()); }
            else if (line.startsWith("/rag forget ")) { method = "rag.remove"; args.put("id", line.substring(12).trim()); }
            else if (line.startsWith("/run ") || line.startsWith("!")) {
                method = "engine.execute";
                args.put("command", line.startsWith("!") ? line.substring(1) : line.substring(5));
            } else if (line.equals("/skills")) method = "skills.list";
            else if (line.startsWith("/skill ")) { method = "skills.activate"; args.put("id", line.substring(7).trim()); }
            else if (line.equals("/hooks")) method = "hooks.list";
            else if (line.equals("/plugins")) method = "plugins.list";
            else if (line.equals("/tools")) method = "tools.list";
            else if (line.equals("/sessions")) method = "session.list";
            else if (line.equals("/status")) method = "agent.status";
            else if (line.equals("/engine") || line.equals("/heartbeat") || line.equals("/reactive")) method = "engine.status";
            else if (line.equals("/resync")) method = "engine.resync";
            else if (line.equals("/heartbeat run")) method = "heartbeat.cycle";
            else if (line.equals("/engine start")) method = "engine.start";
            else if (line.equals("/engine stop")) method = "engine.stop";
            else if (line.equals("/directives")) method = "directives.get";
            else if (line.equals("/reload")) method = "directives.reload";
            else if (line.startsWith("/cwd ")) { method = "session.cwd"; args.put("path", line.substring(5).trim()); }
            else if (line.startsWith("/call ")) {
                method = "tool.call";
                String tail = line.substring(6).trim();
                int space = tail.indexOf(' ');
                args.put("name", space < 0 ? tail : tail.substring(0, space));
                args.put("arguments", space < 0 ? new JSONObject() : new JSONObject(tail.substring(space + 1)));
            } else if (line.startsWith("/")) { finish("error", "Unknown command. Use /help."); return; }
            else { method = "engine.cycle"; args.put("message", line); }
            String operation = method;
            activeRequest = bridge.request(method, args, new VekilBridge.Callback() {
                @Override public void event(JSONObject event) {
                    if (event == null) return;
                    JSONObject data = event.optJSONObject("data");
                    if (data == null) return;
                    if ("auth.open".equals(event.optString("type"))) {
                        browserUrl = data.optString("url");
                        status = "Waiting for ChatGPT in Android browser";
                    } else if ("auth.progress".equals(event.optString("type"))) status = data.optString("message");
                    else if ("terminal.output".equals(event.optString("type"))) {
                        JSONArray bytes = data.optJSONArray("bytes");
                        ByteArrayOutputStream target = "stderr".equals(data.optString("stream")) ? stderr : stdout;
                        if (bytes != null) for (int i = 0; i < bytes.length(); i++) target.write(bytes.optInt(i));
                    } else if ("assistant.delta".equals(event.optString("type"))) assistant.append(data.optString("text"));
                    publish();
                }
                @Override public void result(Object result, String error) {
                    activeRequest = "";
                    String streamed = liveOutput();
                    stdout.reset(); stderr.reset(); assistant.setLength(0);
                    if (error != null) {
                        if (!streamed.isEmpty()) entries.add(new Entry("result", streamed));
                        finish("error", error);
                        return;
                    }
                    if ("session.cwd".equals(operation)) cwd = ((JSONObject) result).optString("cwd", cwd);
                    if ("agent.status".equals(operation)) {
                        JSONObject provider = ((JSONObject) result).optJSONObject("provider");
                        updateProvider(provider);
                    }
                    if ("rag.status".equals(operation)) ragState = (JSONObject) result;
                    if ("provider.model".equals(operation)) model = ((JSONObject) result).optString("model", "auto");
                    if ("provider.status".equals(operation)) updateProvider((JSONObject) result);
                    if ("auth.login".equals(operation) || "auth.select_profile".equals(operation)) {
                        configured = ((JSONObject) result).optBoolean("sharing");
                        account = ((JSONObject) result).optString("email", "");
                    }
                    if ("auth.logout".equals(operation)) { configured = false; account = ""; }
                    if (result instanceof JSONObject && ((JSONObject) result).has("exit_code")) {
                        JSONObject execution = (JSONObject) result;
                        outcome = execution.optString("interrupted", "").toLowerCase(java.util.Locale.ROOT).contains("cancel") ? "cancelled" : execution.optInt("exit_code") == 0 ? "success" : "failed";
                    }
                    try { finish("result", format(operation, result)); }
                    catch (Exception problem) { finish("error", problem.getMessage()); }
                }
            });
            publish();
        } catch (Exception error) { finish("error", error.getMessage()); }
    }

    private void finish(String role, String text) {
        status = "Ready";
        if ("error".equals(role)) outcome = text != null && text.toLowerCase(java.util.Locale.ROOT).contains("cancel") ? "cancelled" : "failed";
        else if (outcome.isEmpty()) outcome = "success";
        record(role, text == null ? "" : text, () -> { busy = false; publish(); });
    }

    String liveOutput() {
        String out = new String(stdout.toByteArray(), StandardCharsets.UTF_8);
        String err = new String(stderr.toByteArray(), StandardCharsets.UTF_8);
        return assistant.toString() + out + (err.isEmpty() ? "" : "\n[stderr]\n" + err);
    }

    private String format(String method, Object result) throws Exception {
        if (result instanceof JSONObject) {
            JSONObject value = (JSONObject) result;
            if ("terminal.exec".equals(method) || "engine.execute".equals(method)) return value.optString("stdout") + (value.optString("stderr").isEmpty() ? "" : "\n[stderr]\n" + value.optString("stderr")) + "\n[exit " + value.optInt("exit_code") + (value.isNull("interrupted") ? "" : " · " + value.optString("interrupted")) + "]";
            if ("agent.turn".equals(method) || "engine.cycle".equals(method)) return value.optString("text");
            if ("auth.login".equals(method) || "auth.select_profile".equals(method)) return "ChatGPT connected: " + value.optString("email", "account") + "\n" + (value.optBoolean("sharing") ? "ChatGPT plan usage enabled. Use /models or send a message." : "ChatGPT plan usage is not enabled. Use /login consent to enable it.");
            if ("auth.logout".equals(method)) return "ChatGPT disconnected. Use /login to connect again.";
            if ("rag.status".equals(method)) return "RAG · EmbeddingGemma-2 · 768d\n" + value.optInt("documents") + " documents · " + value.optInt("chunks") + " chunks\n" + value.optString("directory") + "\n" + value.optJSONObject("state").toString(2);
            if ("rag.probe".equals(method)) return "EmbeddingGemma-2 native inference OK\n" + value.optInt("dimensions") + " dimensions · norm " + value.optDouble("norm") + " · " + value.optLong("elapsed_ms") + " ms";
            if ("rag.search".equals(method)) {
                JSONArray results = value.optJSONArray("results");
                if (results == null || results.length() == 0) return "No indexed documents matched. Use /rag add PATH.";
                StringBuilder text = new StringBuilder();
                for (int i = 0; i < results.length(); i++) {
                    JSONObject found = results.getJSONObject(i);
                    text.append(found.optString("citation")).append("  ·  ").append(String.format(java.util.Locale.ROOT, "%.3f", found.optDouble("score"))).append("\n").append(found.optString("text")).append("\n\n");
                }
                return text.toString();
            }
            if ("provider.model".equals(method)) return "CLIProxyAPI model: " + value.optString("model");
            if ("provider.status".equals(method)) return "CLIProxyAPI\n" + value.optString("base_url") + "\n" + (value.optBoolean("reachable") ? "API reachable" : value.optString("error", "API unavailable")) + "\nModel: " + model;
            if ("agent.status".equals(method)) return "Vekil Kaan " + value.optString("version") + "\n/bin/bash\n" + backendLabel + " · " + model + "\n" + value.optJSONArray("skills").length() + " skills · " + value.optJSONArray("hooks").length() + " hooks · " + value.optJSONArray("plugins").length() + " plugins";
            if ("skills.activate".equals(method)) return "Skill active: " + value.optString("id") + "\n" + value.optString("instructions");
            if ("session.cwd".equals(method)) return cwd;
            return value.toString(2);
        }
        if (result instanceof JSONArray) {
            JSONArray values = (JSONArray) result;
            if ("provider.models".equals(method) && values.length() == 0) return "CLIProxyAPI has no models. Add a provider/account in its Management Center, then use /models again.";
            StringBuilder text = new StringBuilder();
            for (int i = 0; i < values.length(); i++) {
                JSONObject value = values.optJSONObject(i);
                if (value == null) continue;
                String name = value.optString("id", value.optString("slug", value.optString("profile_id", value.optString("name"))));
                text.append(name);
                if (value.has("event")) text.append("  ·  ").append(value.optString("event"));
                if (value.has("description")) text.append("\n  ").append(value.optString("description"));
                if (value.has("title")) text.append("  ").append(value.optString("title"));
                if (value.has("display_name")) text.append("  ").append(value.optString("display_name"));
                if (value.has("email")) text.append("  ").append(value.optString("email"));
                text.append('\n');
            }
            return text.length() == 0 ? "No entries" : text.toString().trim();
        }
        return String.valueOf(result);
    }

    void cancel() {
        if (!busy || activeRequest.isEmpty()) return;
        bridge.request("agent.cancel", object("request_id", activeRequest), (result, error) -> {
            if (error != null) { status = error; publish(); }
        });
    }
}
