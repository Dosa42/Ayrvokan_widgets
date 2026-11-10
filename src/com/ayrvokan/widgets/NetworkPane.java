package com.ayrvokan.widgets;

import android.app.AlertDialog;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.graphics.Typeface;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.Gravity;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

final class NetworkPane extends LinearLayout implements NetworkSession.Observer {
    interface TextResult { void accept(String value); }
    final TextView status;
    final TextView summary;
    final EditText filter;
    final ListView list;
    final List<JSONObject> rows = new ArrayList<>();
    final ArrayAdapter<JSONObject> adapter;
    NetworkSession session;
    String tab = "Overview";
    int pending;
    private final List<android.widget.Button> tabButtons = new ArrayList<>();

    NetworkPane(Context context) {
        super(context);
        setOrientation(VERTICAL);
        setBackgroundColor(Ui.PANEL);
        list = new ListView(context);
        setPadding(Ui.dp(context, 9), Ui.dp(context, 4), Ui.dp(context, 9), 0);
        status = Ui.badge(context, "Preparing Network HQ…", Ui.WARNING);
        status.setContentDescription("Network HQ status");
        addView(status, new LayoutParams(-2, Ui.dp(context, 30)));
        summary = Ui.text(context, "Your network control room", 12, Ui.MUTED);
        summary.setContentDescription("Network HQ summary");
        addView(summary, new LayoutParams(-1, Ui.dp(context, 28)));
        LinearLayout actions = bar();
        button(actions, "Refresh", view -> { if (session != null) session.refresh(); });
        button(actions, "Registry", view -> registry());
        button(actions, "Add host", view -> addHost());
        button(actions, "Add MCP", view -> addMcp());
        button(actions, "Add service", view -> addService());
        button(actions, "Export", view -> run("report.export", new JSONObject(), true));
        LinearLayout tabs = bar();
        for (String name : new String[]{"Overview", "Connections", "Ports", "MCP", "Hosts", "Services", "Tools", "Events"}) {
            android.widget.Button control = button(tabs, name, view -> { tab = name; updateTabs(); render(); list.setSelection(0); });
            control.setTag(name);
            tabButtons.add(control);
        }
        updateTabs();
        filter = new EditText(context);
        filter.setSingleLine(true);
        filter.setTextColor(Ui.TEXT);
        filter.setTextSize(13);
        filter.setHintTextColor(Ui.MUTED);
        filter.setHint("Filter host, port, UID, state or server…");
        filter.setContentDescription("Network HQ filter");
        Ui.input(filter, Ui.ORANGE);
        filter.addTextChangedListener(new TextWatcher() {
            @Override public void beforeTextChanged(CharSequence text, int start, int count, int after) { }
            @Override public void onTextChanged(CharSequence text, int start, int before, int count) { render(); }
            @Override public void afterTextChanged(Editable text) { }
        });
        LayoutParams filterSize = new LayoutParams(-1, Ui.dp(context, 46));
        filterSize.setMargins(0, Ui.dp(context, 2), 0, Ui.dp(context, 6));
        addView(filter, filterSize);
        list.setDivider(new android.graphics.drawable.ColorDrawable(Ui.LINE));
        list.setBackgroundColor(Ui.PANEL);
        list.setDividerHeight(Ui.dp(context, 1));
        adapter = new ArrayAdapter<JSONObject>(context, android.R.layout.simple_list_item_2, android.R.id.text1, rows) {
            @Override public View getView(int position, View reusable, android.view.ViewGroup parent) {
                View view = super.getView(position, reusable, parent);
                JSONObject row = getItem(position);
                TextView title = view.findViewById(android.R.id.text1);
                TextView detail = view.findViewById(android.R.id.text2);
                title.setText(row.optString("title"));
                title.setTextColor(rowColor(row.optString("kind"), row.optJSONObject("value")));
                title.setTypeface(Typeface.create("sans-serif-medium", Typeface.NORMAL));
                title.setTextSize(14);
                detail.setText(row.optString("detail"));
                detail.setTextColor(Ui.MUTED);
                detail.setTextSize(12);
                detail.setMaxLines(4);
                view.setMinimumHeight(Ui.dp(context, 72));
                view.setContentDescription("Network row: " + row.optString("title"));
                return view;
            }
        };
        list.setAdapter(adapter);
        list.setContentDescription("Network HQ " + tab + " list");
        list.setOnItemClickListener((parent, view, position, id) -> select(rows.get(position)));
        addView(list, new LayoutParams(-1, 0, 1));
    }

    private LinearLayout bar() {
        HorizontalScrollView viewport = new HorizontalScrollView(getContext());
        LinearLayout tools = new LinearLayout(getContext());
        tools.setGravity(Gravity.CENTER_VERTICAL);
        viewport.setHorizontalScrollBarEnabled(false);
        viewport.addView(tools);
        addView(viewport, new LayoutParams(-1, Ui.dp(getContext(), 54)));
        return tools;
    }

    private android.widget.Button button(LinearLayout row, String name, View.OnClickListener action) {
        android.widget.Button button = Ui.button(getContext(), name, action);
        button.setContentDescription(name + " Network HQ");
        LayoutParams layout = new LayoutParams(-2, Ui.dp(getContext(), 48));
        layout.rightMargin = Ui.dp(getContext(), 4);
        row.addView(button, layout);
        return button;
    }

    void attach(NetworkSession value) {
        if (session == value) return;
        if (session != null) session.unobserve(this);
        session = value;
        session.observe(this);
    }

    @Override public void changed() {
        if (session == null) return;
        Ui.status(status, session.status + (pending > 0 ? " · " + pending + " operation(s)" : ""), pending > 0 ? Ui.INFO : session.failure != null ? Ui.ERROR : session.ready ? Ui.SUCCESS : Ui.WARNING);
        JSONObject data = session.snapshot;
        JSONObject collector = data.optJSONObject("collector");
        summary.setText(length(collector, "connections") + " sockets · " + length(data, "ports") + " ports · " + length(data, "mcp") + " MCP · " + length(data, "targets") + " hosts");
        if (data.length() == 0) summary.setText("Waiting for the first network snapshot…");
        render();
    }

    private void updateTabs() {
        for (android.widget.Button control : tabButtons) {
            boolean selected = tab.equals(control.getTag());
            Ui.action(control, selected ? Ui.ORANGE : Ui.MUTED, selected);
            control.setSelected(selected);
        }
    }

    private int rowColor(String kind, JSONObject value) {
        if (value == null) return Ui.MUTED;
        if ("mcp".equals(kind)) return value.optBoolean("connected") ? Ui.SUCCESS : Ui.WARNING;
        if ("service".equals(kind)) return value.optBoolean("running") ? Ui.SUCCESS : Ui.MUTED;
        if ("host".equals(kind)) return "UP".equals(value.optString("status")) ? Ui.SUCCESS : value.has("status") ? Ui.ERROR : Ui.MUTED;
        if ("connection".equals(kind)) {
            String state = value.optString("state");
            if ("ESTABLISHED".equals(state)) return Ui.SUCCESS;
            if ("LISTEN".equals(state) || "UNCONN".equals(state)) return Ui.INFO;
            if (state.contains("WAIT") || state.startsWith("SYN")) return Ui.WARNING;
            return Ui.MUTED;
        }
        if ("proxy".equals(kind) && session != null && session.service.proxySession != null) return "Running · API ready".equals(session.service.proxySession.status) ? Ui.SUCCESS : Ui.WARNING;
        if (value.has("ok")) return value.optBoolean("ok") ? Ui.SUCCESS : Ui.WARNING;
        if (value.has("error") && !value.isNull("error")) return Ui.ERROR;
        if (value.has("active")) return value.optBoolean("active") ? value.optBoolean("validated") ? Ui.SUCCESS : Ui.WARNING : Ui.MUTED;
        if (kind.startsWith("tool:") || kind.startsWith("add:")) return Ui.ORANGE;
        return Ui.TEXT;
    }

    private void row(String title, String detail, String kind, JSONObject value) {
        String query = filter.getText().toString().toLowerCase(java.util.Locale.ROOT);
        if (!query.isEmpty() && !(title + " " + detail).toLowerCase(java.util.Locale.ROOT).contains(query)) return;
        try { rows.add(new JSONObject().put("title", title).put("detail", detail).put("kind", kind).put("value", value)); }
        catch (Exception ignored) { }
    }

    private void render() {
        if (list == null || adapter == null) return;
        int position = list.getFirstVisiblePosition();
        View first = list.getChildAt(0);
        int offset = first == null ? 0 : first.getTop();
        rows.clear();
        JSONObject data = session == null ? new JSONObject() : session.snapshot;
        JSONObject collector = data.optJSONObject("collector");
        if ("Overview".equals(tab)) {
            boolean connected = collector != null && collector.optBoolean("ok");
            row(connected ? "Android socket collector · LIVE" : "Android socket collector · offline", connected ? collector.optInt("tables_read") + " kernel tables · UID " + collector.optInt("uid") + " · TCP/UDP IPv4/IPv6" : "Endpoint probes remain active. Android shell collector supplies system socket tables when connected.", "detail", collector);
            JSONObject android = session == null ? new JSONObject() : session.androidInfo;
            JSONArray networks = android.optJSONArray("networks");
            if (networks != null) for (int i = 0; i < networks.length(); i++) {
                JSONObject network = networks.optJSONObject(i);
                row(network.optString("transport", "Network") + (network.optBoolean("active") ? " · active" : "") + " · " + network.optString("interface"), "IP " + network.optJSONArray("addresses") + "\nDNS " + network.optJSONArray("dns") + " · MTU " + network.optInt("mtu"), "detail", network);
            }
            if (android.has("error")) row("Android network info", android.optString("error"), "detail", android);
            row("App network traffic", bytes(android.optLong("app_rx_bytes", -1)) + " received · " + bytes(android.optLong("app_tx_bytes", -1)) + " sent · " + bytes(android.optLong("app_bytes_per_second")) + "/s", "detail", android);
            JSONArray interfaces = collector == null ? null : collector.optJSONArray("interfaces");
            if (interfaces != null) for (int i = 0; i < interfaces.length(); i++) {
                JSONObject item = interfaces.optJSONObject(i);
                if (item.optLong("rx_bytes") + item.optLong("tx_bytes") > 0) row(item.optString("name"), bytes(item.optLong("rx_bytes")) + " RX · " + bytes(item.optLong("tx_bytes")) + " TX", "detail", item);
            }
            row("Android Wi-Fi", android.optBoolean("wifi_enabled") ? "Enabled · open connection settings" : "Disabled · open connection settings", "android:wifi", new JSONObject());
            row("Linux + MCP control", "Persistent hosts, service commands, MCP definitions and event history · tap Registry to customize", "registry", new JSONObject());
        } else if ("Connections".equals(tab)) {
            JSONArray connections = collector == null ? null : collector.optJSONArray("connections");
            if (connections != null) for (int i = 0; i < connections.length(); i++) {
                JSONObject item = connections.optJSONObject(i);
                row(item.optString("protocol") + " · " + item.optString("state") + " · UID " + item.optInt("uid"), address(item.optJSONObject("local")) + " → " + address(item.optJSONObject("remote")) + "\n" + uidLabel(item.optInt("uid")), "connection", item);
            }
            if (connections == null || connections.length() == 0) row("No socket table available", "Use Hosts/Ports for live endpoint probes. Shell collector state is shown in Overview.", "detail", collector);
        } else if ("Ports".equals(tab)) {
            JSONArray ports = data.optJSONArray("ports");
            if (ports != null) for (int i = 0; i < ports.length(); i++) {
                JSONObject item = ports.optJSONObject(i);
                row(item.optString("protocol") + " " + address(item.optJSONObject("local")), item.optString("state") + " · " + item.optString("source") + (item.has("uid") ? " · UID " + item.optInt("uid") + " · " + uidLabel(item.optInt("uid")) : ""), "connection", item);
            }
            row("Discover ports", "TCP connect discovery on a custom host and port range", "tool:network.discover", object("host", "127.0.0.1", "first", 1, "last", 10000));
        } else if ("MCP".equals(tab)) {
            JSONArray servers = data.optJSONArray("mcp");
            if (servers != null) for (int i = 0; i < servers.length(); i++) {
                JSONObject item = servers.optJSONObject(i);
                JSONObject server = item.optJSONObject("server");
                row(item.optString("id") + " · " + (item.optBoolean("connected") ? "CONNECTED" : "disconnected"), (server == null ? item.optString("transport") : server.optString("name") + " " + server.optString("version")) + " · " + item.optInt("tools") + " tools" + (item.has("pid") && !item.isNull("pid") ? " · PID " + item.optInt("pid") : ""), "mcp", item);
            }
            row("Add MCP server", "Stdio command or Streamable HTTP URL, headers and environment", "add:mcp", new JSONObject());
            row("Import MCP configuration", "Read a Linux JSON file containing mcpServers", "tool:config.import", object("path", "/root/workspace/mcp.json"));
        } else if ("Hosts".equals(tab)) {
            JSONArray targets = data.optJSONArray("targets");
            if (targets != null) for (int i = 0; i < targets.length(); i++) {
                JSONObject item = targets.optJSONObject(i);
                row(item.optString("label", item.optString("id")) + " · " + item.optString("status"), item.optString("url", item.optString("host") + ":" + item.optInt("port")) + " · " + item.optDouble("latency_ms") + " ms" + (item.has("error") ? "\n" + item.optString("error") : ""), "host", item);
            }
            row("Add watched host", "HTTP or TCP endpoint with persistent name and settings", "add:host", new JSONObject());
        } else if ("Services".equals(tab)) {
            if (session != null && session.service.proxySession != null) {
                ProxySession proxy = session.service.proxySession;
                row("CLIProxyAPI · " + proxy.status, proxy.endpoint() + "/v1 · service owned by Linux workspace", "proxy", new JSONObject());
            }
            JSONArray services = data.optJSONArray("services");
            if (services != null) for (int i = 0; i < services.length(); i++) {
                JSONObject item = services.optJSONObject(i);
                row(item.optString("label") + " · " + (item.optBoolean("running") ? "RUNNING · PID " + item.optInt("pid") : "stopped"), item.optString("command"), "service", item);
            }
            row("Add managed service", "Run a Linux Bash command with logs, restart controls and optional autostart", "add:service", new JSONObject());
        } else if ("Tools".equals(tab)) {
            row("DNS lookup", "Resolve IPv4 and IPv6 addresses", "tool:network.dns", object("host", "localhost"));
            row("TCP inspector", "Check reachability, peer address and connection latency", "tool:network.tcp", object("host", "127.0.0.1", "port", 8317));
            row("HTTP inspector", "Request status, headers and response body preview", "tool:network.http", object("url", "http://127.0.0.1:8317/"));
            row("TLS inspector", "Negotiated TLS version, cipher and peer certificate", "tool:network.tls", object("host", "api.openai.com", "port", 443));
            row("Port discovery", "Custom TCP host and port range", "tool:network.discover", object("host", "127.0.0.1", "first", 1, "last", 10000));
            row("Linux hosts file", "Read and edit /etc/hosts inside embedded Kali", "file:hosts", new JSONObject());
            row("Linux DNS resolver", "Read and edit /etc/resolv.conf inside embedded Kali", "file:resolver", new JSONObject());
            row("Android network settings", "Open Android connection settings", "android:network", new JSONObject());
            row("Import MCP file", "Merge mcpServers definitions from Linux JSON", "tool:config.import", object("path", "/root/workspace/mcp.json"));
            row("Export snapshot", "Save the current network state to a Linux JSON report", "export", new JSONObject());
        } else if ("Events".equals(tab)) {
            JSONArray events = data.optJSONArray("events");
            if (events != null) for (int i = events.length() - 1; i >= 0; i--) {
                JSONObject item = events.optJSONObject(i);
                row(item.optString("kind") + " · " + new java.text.SimpleDateFormat("HH:mm:ss", java.util.Locale.ROOT).format(new java.util.Date((long) (item.optDouble("time") * 1000))), item.optString("message"), "detail", item);
            }
        }
        list.setContentDescription("Network HQ " + tab + " list");
        adapter.notifyDataSetChanged();
        list.setSelectionFromTop(Math.min(position, Math.max(0, rows.size() - 1)), offset);
    }

    private void select(JSONObject row) {
        String kind = row.optString("kind");
        JSONObject value = row.optJSONObject("value");
        if (kind.startsWith("tool:")) { tool(kind.substring(5), value); return; }
        if (kind.startsWith("android:")) {
            getContext().startActivity(new android.content.Intent(kind.equals("android:wifi") ? android.provider.Settings.ACTION_WIFI_SETTINGS : android.provider.Settings.ACTION_WIRELESS_SETTINGS));
            return;
        }
        if (kind.startsWith("file:")) { file(kind.substring(5)); return; }
        switch (kind) {
            case "registry": registry(); break;
            case "add:mcp": addMcp(); break;
            case "add:host": addHost(); break;
            case "add:service": addService(); break;
            case "export": run("report.export", new JSONObject(), true); break;
            case "mcp": mcp(value); break;
            case "service": service(value); break;
            case "proxy":
                new AlertDialog.Builder(getContext()).setTitle("CLIProxyAPI").setItems(new String[]{"Start", "Stop", "Details"}, (dialog, choice) -> {
                    if (choice == 0) session.service.proxySession.start();
                    else if (choice == 1) session.service.proxySession.stop();
                    else show("CLIProxyAPI", session.service.proxySession.logs.toString());
                }).show();
                break;
            case "host":
                new AlertDialog.Builder(getContext()).setTitle(value.optString("label", value.optString("id"))).setItems(new String[]{"Inspect", "Edit", "Remove"}, (dialog, choice) -> {
                    if (choice == 0) {
                        if (value.has("url")) run("network.http", object("url", value.optString("url")), true);
                        else run("network.tcp", object("host", value.optString("host"), "port", value.optInt("port")), true);
                    } else if (choice == 1) editEntry("targets", value.optString("id"));
                    else removeEntry("targets", value.optString("id"));
                }).show();
                break;
            case "connection":
                new AlertDialog.Builder(getContext()).setTitle(row.optString("title")).setItems(new String[]{"Details", "TCP probe", "Watch endpoint", "DNS lookup"}, (dialog, choice) -> {
                    JSONObject local = value.optJSONObject("local");
                    JSONObject remote = value.optJSONObject("remote");
                    JSONObject endpoint = remote != null && remote.optInt("port") > 0 ? remote : local;
                    String host = endpoint.optString("host");
                    if (host.equals("0.0.0.0") || host.equals("0:0:0:0:0:0:0:0") || host.equals("::")) host = "127.0.0.1";
                    if (choice == 0) show("Socket details", pretty(value));
                    else if (choice == 1) run("network.tcp", object("host", host, "port", endpoint.optInt("port")), true);
                    else if (choice == 2) addEntry("targets", object("id", "host-" + System.currentTimeMillis(), "label", host + ":" + endpoint.optInt("port"), "host", host, "port", endpoint.optInt("port")));
                    else run("network.dns", object("host", host), true);
                }).show();
                break;
            default: show(row.optString("title"), pretty(value));
        }
    }

    private void mcp(JSONObject server) {
        String id = server.optString("id");
        new AlertDialog.Builder(getContext()).setTitle("MCP · " + id).setItems(new String[]{"Connect / reconnect", "Disconnect", "Tools / call tool", "Ping", "Resources", "Prompts", "JSON-RPC request", "Logs", "Edit", "Remove"}, (dialog, choice) -> {
            JSONObject params = object("id", id);
            switch (choice) {
                case 0: run("mcp.connect", params, true); break;
                case 1: run("mcp.disconnect", params, false); break;
                case 2:
                    request("mcp.tools", params, (result, error) -> {
                        if (error != null) { toast(error); return; }
                        JSONArray tools = ((JSONObject) result).optJSONArray("tools");
                        if (tools == null || tools.length() == 0) { show("MCP tools", "No tools advertised"); return; }
                        String[] names = new String[tools.length()];
                        for (int i = 0; i < names.length; i++) names[i] = tools.optJSONObject(i).optString("name");
                        new AlertDialog.Builder(getContext()).setTitle(id + " · tools").setItems(names, (select, index) -> {
                            JSONObject definition = tools.optJSONObject(index);
                            JSONObject arguments = new JSONObject();
                            if ("network.dns".equals(names[index])) arguments = object("host", "localhost");
                            if ("network.tcp".equals(names[index])) arguments = object("host", "127.0.0.1", "port", 8317);
                            if ("network.http".equals(names[index])) arguments = object("url", "http://127.0.0.1:8317/");
                            jsonEditor(names[index] + " · arguments", arguments, text -> {
                                try { run("mcp.call", object("id", id, "name", names[index], "arguments", new JSONObject(text)), true); }
                                catch (Exception failure) { toast(failure.getMessage()); }
                            }, definition.optString("description") + "\n" + pretty(definition.optJSONObject("inputSchema")));
                        }).show();
                    });
                    break;
                case 3: run("mcp.ping", params, true); break;
                case 4: run("mcp.resources", params, true); break;
                case 5: run("mcp.prompts", params, true); break;
                case 6: jsonEditor("MCP request", object("method", "ping", "params", new JSONObject()), text -> { try { JSONObject request = new JSONObject(text); request.put("id", id); run("mcp.request", request, true); } catch (Exception failure) { toast(failure.getMessage()); } }, "JSON-RPC method and params"); break;
                case 7: run("mcp.log", params, true); break;
                case 8: editEntry("mcpServers", id); break;
                case 9: removeEntry("mcpServers", id); break;
            }
        }).show();
    }

    private void service(JSONObject value) {
        String id = value.optString("id");
        new AlertDialog.Builder(getContext()).setTitle(value.optString("label")).setItems(new String[]{"Start", "Stop", "Restart", "Logs", "Edit", "Remove"}, (dialog, choice) -> {
            JSONObject params = object("id", id);
            if (choice == 0) run("service.start", params, false);
            else if (choice == 1) run("service.stop", params, false);
            else if (choice == 2) request("service.stop", params, (result, error) -> { if (error != null) toast(error); else run("service.start", params, false); });
            else if (choice == 3) run("service.log", params, true);
            else if (choice == 4) editEntry("services", id);
            else removeEntry("services", id);
        }).show();
    }

    private void registry() {
        request("config.get", new JSONObject(), (value, error) -> {
            if (error != null) { toast(error); return; }
            jsonEditor("Network HQ registry", (JSONObject) value, text -> {
                try { run("config.save", object("config", new JSONObject(text)), false); }
                catch (Exception failure) { toast(failure.getMessage()); }
            }, "Persistent targets, MCP servers, service commands and refresh interval");
        });
    }

    private void addHost() { addEntry("targets", object("id", "host-" + System.currentTimeMillis(), "label", "My endpoint", "url", "http://127.0.0.1:8317/")); }
    private void addService() { addEntry("services", object("id", "service-" + System.currentTimeMillis(), "label", "My Linux service", "command", "python3 -u -m http.server 8888 --bind 127.0.0.1", "cwd", "/root/workspace", "env", new JSONObject(), "autostart", false)); }
    private void addMcp() {
        new AlertDialog.Builder(getContext()).setTitle("Add MCP server").setItems(new String[]{"Stdio process", "Streamable HTTP"}, (dialog, choice) -> {
            JSONObject value = choice == 0 ? object("id", "mcp-" + System.currentTimeMillis(), "command", "/usr/bin/python3", "args", new JSONArray().put("/root/workspace/server.py"), "env", new JSONObject(), "autoconnect", false) : object("id", "mcp-" + System.currentTimeMillis(), "url", "http://127.0.0.1:3000/mcp", "headers", new JSONObject(), "autoconnect", false);
            addEntry("mcpServers", value);
        }).show();
    }

    private void addEntry(String category, JSONObject initial) {
        jsonEditor("Add " + category, initial, text -> {
            try {
                JSONObject entry = new JSONObject(text);
                request("config.get", new JSONObject(), (value, error) -> {
                    if (error != null) { toast(error); return; }
                    JSONObject config = (JSONObject) value;
                    try {
                        if ("mcpServers".equals(category)) {
                            String id = entry.getString("id");
                            if (config.getJSONObject(category).has(id)) throw new IllegalArgumentException("MCP id already exists");
                            entry.remove("id");
                            config.getJSONObject(category).put(id, entry);
                        } else config.getJSONArray(category).put(entry);
                        run("config.save", object("config", config), false);
                    } catch (Exception failure) { toast(failure.getMessage()); }
                });
            } catch (Exception failure) { toast(failure.getMessage()); }
        }, "Edit the definition, then Run to save");
    }

    private void editEntry(String category, String id) {
        request("config.get", new JSONObject(), (value, error) -> {
            if (error != null) { toast(error); return; }
            JSONObject config = (JSONObject) value;
            try {
                JSONObject entry = null;
                int index = -1;
                if ("mcpServers".equals(category)) entry = config.getJSONObject(category).getJSONObject(id);
                else for (int i = 0; i < config.getJSONArray(category).length(); i++) if (id.equals(config.getJSONArray(category).getJSONObject(i).optString("id"))) { entry = config.getJSONArray(category).getJSONObject(i); index = i; break; }
                if (entry == null) throw new IllegalStateException("Entry not found");
                final int selected = index;
                jsonEditor("Edit " + id, entry, text -> {
                    try {
                        if ("mcpServers".equals(category)) config.getJSONObject(category).put(id, new JSONObject(text));
                        else config.getJSONArray(category).put(selected, new JSONObject(text));
                        run("config.save", object("config", config), false);
                    } catch (Exception failure) { toast(failure.getMessage()); }
                }, "Stop a running service before changing its command");
            } catch (Exception failure) { toast(failure.getMessage()); }
        });
    }

    private void removeEntry(String category, String id) {
        request("config.get", new JSONObject(), (value, error) -> {
            if (error != null) { toast(error); return; }
            JSONObject config = (JSONObject) value;
            try {
                if ("mcpServers".equals(category)) config.getJSONObject(category).remove(id);
                else {
                    JSONArray previous = config.getJSONArray(category);
                    JSONArray next = new JSONArray();
                    for (int i = 0; i < previous.length(); i++) if (!id.equals(previous.getJSONObject(i).optString("id"))) next.put(previous.getJSONObject(i));
                    config.put(category, next);
                }
                run("config.save", object("config", config), false);
            } catch (Exception failure) { toast(failure.getMessage()); }
        });
    }

    private void tool(String method, JSONObject initial) {
        jsonEditor(method, initial, text -> {
            try { run(method, new JSONObject(text), true); }
            catch (Exception error) { toast(error.getMessage()); }
        }, "Run against your selected host or endpoint");
    }

    private void file(String name) {
        request("file.read", object("name", name), (value, error) -> {
            if (error != null) { toast(error); return; }
            JSONObject result = (JSONObject) value;
            textEditor(result.optString("path"), result.optString("text"), text -> run("file.write", object("name", name, "text", text), false), "Embedded Kali configuration");
        });
    }

    private void request(String method, JSONObject params, NetworkSession.Result callback) {
        if (session == null || !session.ready) { toast("Network HQ is starting"); return; }
        pending++;
        changed();
        session.request(method, params, (value, error) -> { pending--; changed(); callback.complete(value, error); });
    }

    private void run(String method, JSONObject params, boolean display) {
        request(method, params, (value, error) -> {
            if (error != null) { show(method + " · error", error); return; }
            if (display) show(method, pretty(value));
            else toast("Updated");
            session.refresh();
        });
    }

    private void jsonEditor(String title, JSONObject value, TextResult callback, String hint) { textEditor(title, pretty(value), callback, hint); }
    private void textEditor(String title, String text, TextResult callback, String hint) {
        LinearLayout box = new LinearLayout(getContext());
        box.setOrientation(VERTICAL);
        TextView help = Ui.text(getContext(), hint, 12, Ui.MUTED);
        help.setPadding(Ui.dp(getContext(), 12), Ui.dp(getContext(), 8), Ui.dp(getContext(), 12), Ui.dp(getContext(), 8));
        box.addView(help);
        EditText editor = new EditText(getContext());
        Ui.input(editor, Ui.ORANGE);
        editor.setText(text);
        editor.setTextSize(13);
        editor.setTypeface(Typeface.MONOSPACE);
        editor.setGravity(Gravity.TOP | Gravity.START);
        editor.setInputType(android.text.InputType.TYPE_CLASS_TEXT | android.text.InputType.TYPE_TEXT_FLAG_MULTI_LINE | android.text.InputType.TYPE_TEXT_FLAG_NO_SUGGESTIONS);
        editor.setContentDescription("Network HQ editor");
        ScrollView viewport = new ScrollView(getContext());
        viewport.addView(editor);
        box.addView(viewport, new LayoutParams(-1, 0, 1));
        AlertDialog dialog = new AlertDialog.Builder(getContext()).setTitle(title).setView(box).setNegativeButton("Cancel", null).setPositiveButton("Run", null).create();
        dialog.setOnShowListener(ignored -> dialog.getButton(AlertDialog.BUTTON_POSITIVE).setOnClickListener(view -> { callback.accept(editor.getText().toString()); dialog.dismiss(); }));
        dialog.show();
        dialog.getWindow().setLayout(Math.min(getResources().getDisplayMetrics().widthPixels - Ui.dp(getContext(), 32), Ui.dp(getContext(), 820)), (int) (getResources().getDisplayMetrics().heightPixels * 0.75));
    }

    private void show(String title, String text) {
        TextView output = Ui.text(getContext(), text, 12, Ui.TEXT);
        output.setTypeface(Typeface.MONOSPACE);
        output.setTextIsSelectable(true);
        output.setPadding(Ui.dp(getContext(), 16), Ui.dp(getContext(), 10), Ui.dp(getContext(), 16), Ui.dp(getContext(), 10));
        output.setContentDescription("Network HQ result");
        ScrollView viewport = new ScrollView(getContext());
        viewport.addView(output);
        new AlertDialog.Builder(getContext()).setTitle(title).setView(viewport).setPositiveButton("Close", null).setNeutralButton("Copy", (dialog, which) -> ((ClipboardManager) getContext().getSystemService(Context.CLIPBOARD_SERVICE)).setPrimaryClip(ClipData.newPlainText(title, text))).show();
    }

    private String uidLabel(int uid) {
        JSONObject labels = session == null ? null : session.androidInfo.optJSONObject("uid_labels");
        String value = labels == null ? "" : labels.optString(String.valueOf(uid));
        return value.isEmpty() ? uid == 0 ? "root" : uid == 1000 ? "Android system" : uid == 2000 ? "Android shell" : "UID " + uid : value;
    }

    private static int length(JSONObject object, String key) { JSONArray value = object == null ? null : object.optJSONArray(key); return value == null ? 0 : value.length(); }
    private static String address(JSONObject value) { if (value == null) return "?"; String host = value.optString("host"); return (host.contains(":") ? "[" + host + "]" : host) + ":" + value.optInt("port"); }
    private static String bytes(long value) { return value < 0 ? "unavailable" : value < 1024 ? value + " B" : value < 1048576 ? String.format(java.util.Locale.ROOT, "%.1f KB", value / 1024.0) : String.format(java.util.Locale.ROOT, "%.1f MB", value / 1048576.0); }
    private static JSONObject object(Object... values) { JSONObject result = new JSONObject(); try { for (int i = 0; i < values.length; i += 2) result.put((String) values[i], values[i + 1]); } catch (Exception error) { throw new IllegalArgumentException(error); } return result; }
    private static String pretty(Object value) { try { if (value instanceof JSONObject) return ((JSONObject) value).toString(2); if (value instanceof JSONArray) return ((JSONArray) value).toString(2); } catch (Exception ignored) { } return String.valueOf(value); }
    private void toast(String text) { Toast.makeText(getContext(), text, Toast.LENGTH_LONG).show(); }
    void dispose() { if (session != null) session.unobserve(this); }
}
