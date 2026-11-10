package com.ayrvokan.widgets;

import java.io.ByteArrayOutputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

final class AgentSession {
    interface Observer { void changed(); }
    static final class Entry {
        final String role;
        final String text;
        Entry(String role, String text) { this.role = role; this.text = text; }
    }
    private final AgentBridge bridge;
    private final String key;
    final List<Entry> entries = new ArrayList<>();
    private final List<Observer> observers = new ArrayList<>();
    private final ByteArrayOutputStream stdout = new ByteArrayOutputStream();
    private final ByteArrayOutputStream stderr = new ByteArrayOutputStream();
    private final StringBuilder assistant = new StringBuilder();
    String sessionId = "";
    String cwd = "/root/workspace";
    String status = "Starting Ayrvokan Agent…";
    String version = "";
    String activeRequest = "";
    String browserUrl = "";
    String account = "";
    boolean configured;
    String outcome = "";
    boolean ready;
    boolean busy;
    int revision;

    AgentSession(String key, AgentBridge bridge) {
        this.key = key;
        this.bridge = bridge;
        bridge.ready((value, error) -> {
            if (error != null) { status = error; publish(); return; }
            version = value.optString("version");
            JSONObject provider = value.optJSONObject("provider");
            configured = provider != null && provider.optBoolean("configured");
            if (provider != null && provider.optJSONObject("account") != null) account = provider.optJSONObject("account").optString("email", "");
            open(false, null);
        });
    }

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
                finish("system", "AYRVOKAN AGENT\n/login          Continue with ChatGPT in Android browser\n/login new      Add a ChatGPT account\n/accounts       Saved ChatGPT accounts\n/account ID     Select ChatGPT account\n/logout         Disconnect selected account\n/models         Available ChatGPT models\n/model SLUG     Select a model\n/run COMMAND    Run /bin/bash\n!COMMAND        Run /bin/bash\n/skills         List skills\n/skill ID       Activate skill\n/hooks          List hooks\n/plugins        List plugins\n/call TOOL JSON Call a tool or plugin\n/status         Agent state\n/cwd PATH       Working directory\n/sessions       Saved sessions\n/resume ID      Resume a session\n/new            New session\n\nEnter to send · Shift+Enter for a new line · Stop to interrupt");
                return;
            }
            if (line.equals("/new")) { open(true, null); return; }
            if (line.startsWith("/resume ")) { open(false, line.substring(8).trim()); return; }
            if (line.equals("/login") || line.startsWith("/login ")) {
                method = "auth.login";
                if (line.equals("/login new")) args.put("new_profile", true);
                else if (line.equals("/login consent")) args.put("consent", true);
                else if (line.startsWith("/login ")) args.put("profile_id", line.substring(7).trim());
                status = "Opening ChatGPT sign-in…";
            } else if (line.equals("/logout")) method = "auth.logout";
            else if (line.equals("/accounts")) method = "auth.profiles";
            else if (line.startsWith("/account ")) { method = "auth.select_profile"; args.put("profile_id", line.substring(9).trim()); }
            else if (line.equals("/models")) method = "auth.models";
            else if (line.startsWith("/model ")) { method = "auth.model"; args.put("slug", line.substring(7).trim()); }
            else if (line.startsWith("/run ") || line.startsWith("!")) {
                method = "terminal.exec";
                args.put("command", line.startsWith("!") ? line.substring(1) : line.substring(5));
            } else if (line.equals("/skills")) method = "skills.list";
            else if (line.startsWith("/skill ")) { method = "skills.activate"; args.put("id", line.substring(7).trim()); }
            else if (line.equals("/hooks")) method = "hooks.list";
            else if (line.equals("/plugins")) method = "plugins.list";
            else if (line.equals("/tools")) method = "tools.list";
            else if (line.equals("/sessions")) method = "session.list";
            else if (line.equals("/status")) method = "agent.status";
            else if (line.startsWith("/cwd ")) { method = "session.cwd"; args.put("path", line.substring(5).trim()); }
            else if (line.startsWith("/call ")) {
                method = "tool.call";
                String tail = line.substring(6).trim();
                int space = tail.indexOf(' ');
                args.put("name", space < 0 ? tail : tail.substring(0, space));
                args.put("arguments", space < 0 ? new JSONObject() : new JSONObject(tail.substring(space + 1)));
            } else if (line.startsWith("/")) { finish("error", "Unknown command. Use /help."); return; }
            else { method = "agent.turn"; args.put("message", line); }
            String operation = method;
            activeRequest = bridge.request(method, args, new AgentBridge.Callback() {
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
                        configured = provider != null && provider.optBoolean("configured");
                    }
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
            if ("terminal.exec".equals(method)) return value.optString("stdout") + (value.optString("stderr").isEmpty() ? "" : "\n[stderr]\n" + value.optString("stderr")) + "\n[exit " + value.optInt("exit_code") + (value.isNull("interrupted") ? "" : " · " + value.optString("interrupted")) + "]";
            if ("agent.turn".equals(method)) return value.optString("text");
            if ("auth.login".equals(method) || "auth.select_profile".equals(method)) return "ChatGPT connected: " + value.optString("email", "account") + "\n" + (value.optBoolean("sharing") ? "ChatGPT plan usage enabled. Use /models or send a message." : "ChatGPT plan usage is not enabled. Use /login consent to enable it.");
            if ("auth.logout".equals(method)) return "ChatGPT disconnected. Use /login to connect again.";
            if ("auth.model".equals(method)) return "Model: " + value.optString("model");
            if ("agent.status".equals(method)) return "Ayrvokan Agent " + value.optString("version") + "\n/bin/bash\n" + (configured ? "Provider connected" : "ChatGPT connection pending") + "\n" + value.optJSONArray("skills").length() + " skills · " + value.optJSONArray("hooks").length() + " hooks · " + value.optJSONArray("plugins").length() + " plugins";
            if ("skills.activate".equals(method)) return "Skill active: " + value.optString("id") + "\n" + value.optString("instructions");
            if ("session.cwd".equals(method)) return cwd;
            return value.toString(2);
        }
        if (result instanceof JSONArray) {
            JSONArray values = (JSONArray) result;
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
