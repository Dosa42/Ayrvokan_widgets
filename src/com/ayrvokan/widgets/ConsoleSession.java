package com.ayrvokan.widgets;

import android.os.Handler;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
import org.json.JSONArray;

final class ConsoleSession {
    interface Observer { void changed(); }
    final String id;
    final LinuxRuntime runtime;
    final Handler main;
    final List<Observer> observers = new ArrayList<>();
    final ScheduledExecutorService monitor = Executors.newSingleThreadScheduledExecutor();
    TerminalSession terminal;
    String status = "Starting console…";
    String mcp = "";
    String game = "";
    String queuedGame;
    long crtCount;
    File run;
    String agentLink = "";
    boolean ready;
    boolean closed;
    boolean restartRequested;
    int columns = 90;
    int rows = 46;

    ConsoleSession(String id, LinuxRuntime runtime, Handler main) throws Exception {
        this.id = id;
        this.runtime = runtime;
        this.main = main;
        game = runtime.context.getSharedPreferences("console", 0).getString("game:" + id, "");
        if (game.isEmpty()) game = "/opt/ayrvokan/console/games/asciiinvaders-live.zip";
        launch();
        monitor.scheduleWithFixedDelay(this::poll, 0, 700, TimeUnit.MILLISECONDS);
    }

    private void launch() throws Exception {
        ready = false;
        mcp = "";
        crtCount = 0;
        String directory = "/root/.local/share/ayrvokan-console/" + id + "/runs/" + System.currentTimeMillis();
        run = new File(runtime.root, directory.substring(1));
        run.mkdirs();
        List<String> command = runtime.command("/usr/bin/python3", "/opt/ayrvokan/console/ayrvokan-pad-lab.pyz", "--native-linux", "--managed-terminal", "--emulator-library-dir", "/opt/ayrvokan/console/lib", "--runtime", directory, "--bind", "127.0.0.1:0", "--console-bind", "127.0.0.1:0");
        if (!game.isEmpty() && new File(runtime.root, game.substring(1)).isFile()) { command.add("--game"); command.add(game); }
        terminal = new TerminalSession("console-" + id, runtime, command, rows, columns, true);
        terminal.listen(new TerminalSession.Listener() {
            @Override public void output(byte[] bytes) { }
            @Override public void ended(int code) {
                ready = false;
                status = "Console stopped · " + code;
                if (restartRequested && !closed) {
                    restartRequested = false;
                    try { launch(); } catch (Exception error) { status = error.getMessage(); }
                }
                publish();
            }
        });
        status = "Starting console…";
        publish();
    }

    void observe(Observer observer) { if (!observers.contains(observer)) observers.add(observer); observer.changed(); }
    void unobserve(Observer observer) { observers.remove(observer); }
    void publish() { for (Observer observer : new ArrayList<>(observers)) observer.changed(); }
    void resize(int columns, int rows) { this.columns = columns; this.rows = rows; terminal.resize(columns, rows); }
    void command(String line) { if (terminal.isRunning()) terminal.input(line.replace("\r", " ").replace("\n", " ") + "\r"); }
    void load(String path) {
        game = path;
        runtime.context.getSharedPreferences("console", 0).edit().putString("game:" + id, path).apply();
        if (!terminal.isRunning()) restart();
        else if (ready) command("/load '" + path.replace("'", "'\\''") + "'");
        else queuedGame = path;
    }
    void restart() {
        if (!terminal.isRunning()) {
            try { launch(); } catch (Exception error) { status = error.getMessage(); publish(); }
            return;
        }
        restartRequested = true;
        command("/quit");
        TerminalSession owned = terminal;
        main.postDelayed(() -> { if (restartRequested && owned == terminal && owned.isRunning()) owned.stop(); }, 10000);
    }
    void stop() { restartRequested = false; command("/quit"); }
    void close() {
        closed = true;
        restartRequested = false;
        monitor.shutdownNow();
        command("/quit");
        TerminalSession owned = terminal;
        main.postDelayed(() -> { if (owned.isRunning()) owned.stop(); }, 10000);
    }

    private JSONObject read(File path) throws Exception {
        try (FileInputStream input = new FileInputStream(path)) { return new JSONObject(LinuxRuntime.readAll(input)); }
    }

    private void connectAgent(JSONObject ui, JSONObject engine) throws Exception {
        String endpoint = ui.getString("console_mcp_url");
        String pad = ui.getString("mcp_url");
        String crt = engine.optString("crt_json", "");
        String signature = endpoint + "|" + pad + "|" + crt;
        if (signature.equals(agentLink)) return;
        HttpURLConnection connection = (HttpURLConnection) new URL(endpoint).openConnection();
        connection.setRequestMethod("POST");
        connection.setConnectTimeout(3000);
        connection.setReadTimeout(3000);
        connection.setDoOutput(true);
        connection.setRequestProperty("Content-Type", "application/json");
        JSONArray remote;
        try {
            byte[] request = new JSONObject().put("jsonrpc", "2.0").put("id", "agent-tools").put("method", "tools/list").toString().getBytes(StandardCharsets.UTF_8);
            try (OutputStream output = connection.getOutputStream()) { output.write(request); }
            try (InputStream input = connection.getInputStream()) { remote = new JSONObject(LinuxRuntime.readAll(input)).getJSONObject("result").getJSONArray("tools"); }
        } finally { connection.disconnect(); }
        JSONArray tools = new JSONArray();
        for (int index = 0; index < remote.length(); index++) {
            JSONObject tool = remote.getJSONObject(index);
            String name = tool.getString("name");
            JSONObject definition = new JSONObject().put("name", name).put("description", tool.optString("description")).put("input_schema", tool.getJSONObject("inputSchema"));
            if (!name.startsWith("console_")) definition.put("url", pad);
            tools.put(definition);
        }
        JSONObject manifest = new JSONObject().put("schema", "ayrvokan.agent.plugin/1").put("id", "dos-console-live").put("transport", "mcp_http").put("url", endpoint).put("tools", tools);
        if (!crt.isEmpty() && !"null".equals(crt)) manifest.put("observation_source", new JSONObject().put("jsonl_path", crt + "/crt-output.jsonl"));
        File directory = new File(runtime.root, "root/.ayrvokan-agent/plugins/dos-console-live");
        directory.mkdirs();
        File staged = new File(directory, "plugin.json.new");
        LinuxRuntime.write(staged, manifest.toString());
        if (!staged.renameTo(new File(directory, "plugin.json"))) throw new IllegalStateException("Could not update Agent console connection");
        agentLink = signature;
    }

    private JSONObject health(String endpoint) throws Exception {
        URL url = new URL(endpoint.substring(0, endpoint.lastIndexOf('/')) + "/health");
        HttpURLConnection connection = (HttpURLConnection) url.openConnection();
        connection.setConnectTimeout(1500);
        connection.setReadTimeout(1500);
        try (InputStream input = connection.getInputStream()) {
            JSONObject value = new JSONObject(LinuxRuntime.readAll(input));
            if (!value.optBoolean("ok")) throw new IllegalStateException("Console health unavailable");
            return value;
        } finally { connection.disconnect(); }
    }

    private void poll() {
        if (closed || !terminal.isRunning()) return;
        File active = run;
        try {
            JSONObject ui = read(new File(active, "ui.json"));
            JSONObject engine = read(new File(active, "engine.json"));
            String endpoint = ui.optString("console_mcp_url");
            JSONObject health = health(endpoint);
            connectAgent(ui, engine);
            JSONObject loadedGame = engine.optJSONObject("game");
            String source = loadedGame == null ? "" : loadedGame.optString("source", "");
            JSONObject emulator = health.optJSONObject("emulator");
            JSONObject state = emulator == null ? null : emulator.optJSONObject("state");
            String label = "Console reachable · emulator status unknown";
            if (emulator != null && emulator.optBoolean("connected") && emulator.optDouble("age_ms", Double.POSITIVE_INFINITY) <= 2000 && state != null) {
                if (state.optBoolean("paused")) label = "Paused";
                else if (state.optBoolean("shell_idle")) label = "DOS shell idle";
                else if (state.has("paused") && !state.isNull("paused")) label = "Running";
            }
            long count = 0;
            JSONObject crt = health.optJSONObject("crt");
            if (crt != null && crt.optBoolean("configured")) {
                JSONObject snapshot = crt.optJSONObject("snapshot");
                JSONObject processes = crt.optJSONObject("processes");
                boolean alive = processes != null && processes.length() > 0;
                if (processes != null) {
                    java.util.Iterator<String> names = processes.keys();
                    while (names.hasNext()) if (!processes.getJSONObject(names.next()).optBoolean("running")) alive = false;
                }
                if (!alive) label += " · CRT process stopped";
                if (snapshot != null && snapshot.optBoolean("available")) {
                    count = snapshot.optLong("last_seq");
                    label += " · CRT " + count + " records";
                    if (snapshot.optBoolean("ended")) label += " · stream ended";
                    if (!snapshot.isNull("age_ms") && snapshot.has("age_ms")) label += " · snapshot " + String.format(java.util.Locale.ROOT, "%.1fs ago", snapshot.optDouble("age_ms") / 1000.0);
                    if (!snapshot.isNull("error") && !snapshot.optString("error").isEmpty()) label += " · " + snapshot.optString("error");
                } else label += " · no CRT snapshot";
            }
            final String text = label;
            final long records = count;
            main.post(() -> {
                if (closed || active != run || !terminal.isRunning()) return;
                ready = true;
                mcp = endpoint;
                crtCount = records;
                status = text;
                if (!source.isEmpty() && !"null".equals(source) && !source.equals(game)) {
                    game = source;
                    runtime.context.getSharedPreferences("console", 0).edit().putString("game:" + id, source).apply();
                }
                if (queuedGame != null) { String next = queuedGame; queuedGame = null; load(next); }
                publish();
            });
        } catch (Exception error) {
            main.post(() -> { if (!closed && active == run && terminal.isRunning()) { ready = false; mcp = ""; status = "Console unavailable · " + error.getMessage(); publish(); } });
        }
    }
}
