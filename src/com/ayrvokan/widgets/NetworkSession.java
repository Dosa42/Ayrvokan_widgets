package com.ayrvokan.widgets;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.LinkProperties;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.TrafficStats;
import android.os.Handler;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONArray;
import org.json.JSONObject;

final class NetworkSession {
    interface Observer { void changed(); }
    interface Result { void complete(Object value, String error); }
    final LinuxService service;
    final LinuxRuntime runtime;
    final Handler main;
    final Process process;
    final BufferedWriter input;
    final ExecutorService writer = Executors.newSingleThreadExecutor();
    final Map<String, Result> pending = new LinkedHashMap<>();
    final List<Observer> observers = new ArrayList<>();
    final JSONObject uidLabels = new JSONObject();
    JSONObject snapshot = new JSONObject();
    JSONObject androidInfo = new JSONObject();
    String status = "Starting Network HQ…";
    boolean ready;
    boolean closed;
    int sequence;
    long lastBytes = -1;
    long lastTime;
    String failure;

    NetworkSession(LinuxService service) throws Exception {
        this.service = service;
        runtime = service.runtime;
        main = service.main;
        for (android.content.pm.ApplicationInfo application : runtime.context.getPackageManager().getInstalledApplications(0)) {
            String key = String.valueOf(application.uid);
            uidLabels.put(key, uidLabels.has(key) ? uidLabels.optString(key) + ", " + application.packageName : application.packageName);
        }
        File shellConfig = new File(runtime.runtime, "network-shell.json");
        if (!shellConfig.isFile()) {
            int port;
            try (ServerSocket socket = new ServerSocket(0, 1, InetAddress.getByName("127.0.0.1"))) { port = socket.getLocalPort(); }
            LinuxRuntime.write(shellConfig, new JSONObject().put("port", port).put("token", java.util.UUID.randomUUID().toString()).toString());
        }
        try (java.io.InputStream source = new java.io.FileInputStream(shellConfig)) {
            LinuxRuntime.write(new File(runtime.root, "opt/ayrvokan/network-shell.json"), LinuxRuntime.readAll(source));
        }
        ProcessBuilder builder = new ProcessBuilder(runtime.command("/usr/bin/python3", "-u", "/opt/ayrvokan/network_hq.py"));
        builder.environment().clear();
        builder.environment().putAll(runtime.environment());
        builder.redirectError(ProcessBuilder.Redirect.appendTo(new File(runtime.runtime, "network-errors.log")));
        process = builder.start();
        input = new BufferedWriter(new OutputStreamWriter(process.getOutputStream(), StandardCharsets.UTF_8));
        new Thread(() -> {
            try (BufferedReader output = new BufferedReader(new InputStreamReader(process.getInputStream(), StandardCharsets.UTF_8))) {
                String line;
                while ((line = output.readLine()) != null) {
                    JSONObject message = new JSONObject(line);
                    main.post(() -> receive(message));
                }
                main.post(() -> fail("Network HQ process stopped"));
            } catch (Exception error) { main.post(() -> fail(error.getMessage())); }
        }, "network-hq-output").start();
    }

    void observe(Observer value) { if (!observers.contains(value)) observers.add(value); value.changed(); }
    void unobserve(Observer value) { observers.remove(value); }
    void publish() { for (Observer value : new ArrayList<>(observers)) value.changed(); }

    void request(String method, JSONObject params, Result callback) {
        if (closed || failure != null) { callback.complete(null, failure == null ? "Network HQ stopped" : failure); return; }
        String id = "network-" + (++sequence);
        pending.put(id, callback);
        try {
            String text = new JSONObject().put("id", id).put("method", method).put("params", params).toString();
            writer.execute(() -> {
                try { input.write(text); input.newLine(); input.flush(); }
                catch (Exception error) { main.post(() -> fail(error.getMessage())); }
            });
        } catch (Exception error) { pending.remove(id); callback.complete(null, error.getMessage()); }
    }

    void refresh() {
        if (!ready) return;
        request("snapshot", new JSONObject(), (value, error) -> {
            if (error != null) { status = error; publish(); }
            else if (value instanceof JSONObject) update((JSONObject) value);
        });
    }

    private void receive(JSONObject value) {
        if (closed) return;
        if ("ready".equals(value.optString("type"))) { ready = true; status = "Network HQ · live"; publish(); return; }
        if ("snapshot".equals(value.optString("type"))) { update(value.optJSONObject("snapshot")); return; }
        Result callback = pending.remove(value.optString("id"));
        if (callback != null) callback.complete(value.opt("result"), value.optBoolean("ok") ? null : value.optString("error", "Network request failed"));
    }

    private void update(JSONObject value) {
        if (value == null) return;
        snapshot = value;
        androidInfo = androidSnapshot();
        JSONObject collector = value.optJSONObject("collector");
        status = collector != null && collector.optBoolean("ok") ? "Live · Android TCP/UDP + Linux + MCP" : "Live · endpoint probes + Linux + MCP";
        publish();
    }

    private JSONObject androidSnapshot() {
        JSONObject result = new JSONObject();
        try {
            ConnectivityManager manager = (ConnectivityManager) runtime.context.getSystemService(Context.CONNECTIVITY_SERVICE);
            JSONArray networks = new JSONArray();
            Network active = manager.getActiveNetwork();
            for (Network network : manager.getAllNetworks()) {
                LinkProperties links = manager.getLinkProperties(network);
                NetworkCapabilities capabilities = manager.getNetworkCapabilities(network);
                JSONObject item = new JSONObject().put("id", network.toString()).put("active", network.equals(active));
                if (capabilities != null) {
                    String transport = capabilities.hasTransport(NetworkCapabilities.TRANSPORT_WIFI) ? "Wi-Fi" : capabilities.hasTransport(NetworkCapabilities.TRANSPORT_CELLULAR) ? "Cellular" : capabilities.hasTransport(NetworkCapabilities.TRANSPORT_ETHERNET) ? "Ethernet" : capabilities.hasTransport(NetworkCapabilities.TRANSPORT_VPN) ? "VPN" : "Network";
                    item.put("transport", transport).put("validated", capabilities.hasCapability(NetworkCapabilities.NET_CAPABILITY_VALIDATED)).put("metered", !capabilities.hasCapability(NetworkCapabilities.NET_CAPABILITY_NOT_METERED)).put("downstream_kbps", capabilities.getLinkDownstreamBandwidthKbps()).put("upstream_kbps", capabilities.getLinkUpstreamBandwidthKbps());
                }
                if (links != null) {
                    JSONArray addresses = new JSONArray();
                    for (android.net.LinkAddress address : links.getLinkAddresses()) addresses.put(address.toString());
                    JSONArray dns = new JSONArray();
                    for (InetAddress address : links.getDnsServers()) dns.put(address.getHostAddress());
                    JSONArray routes = new JSONArray();
                    for (android.net.RouteInfo route : links.getRoutes()) routes.put(route.toString());
                    item.put("interface", links.getInterfaceName()).put("addresses", addresses).put("dns", dns).put("routes", routes).put("private_dns", links.getPrivateDnsServerName()).put("mtu", links.getMtu());
                }
                networks.put(item);
            }
            int uid = android.os.Process.myUid();
            long received = TrafficStats.getUidRxBytes(uid);
            long sent = TrafficStats.getUidTxBytes(uid);
            long now = android.os.SystemClock.elapsedRealtime();
            long total = received < 0 || sent < 0 ? -1 : received + sent;
            android.net.wifi.WifiManager wifi = (android.net.wifi.WifiManager) runtime.context.getApplicationContext().getSystemService(Context.WIFI_SERVICE);
            result.put("wifi_enabled", wifi != null && wifi.isWifiEnabled()).put("uid_labels", uidLabels);
            result.put("networks", networks).put("uid", uid).put("app_rx_bytes", received).put("app_tx_bytes", sent).put("app_bytes_per_second", total >= 0 && lastBytes >= 0 && now > lastTime ? Math.max(0, (total - lastBytes) * 1000 / (now - lastTime)) : 0);
            lastBytes = total;
            lastTime = now;
        } catch (Exception error) { try { result.put("error", error.getMessage()); } catch (Exception ignored) { } }
        return result;
    }

    private void fail(String message) {
        if (closed) return;
        ready = false;
        failure = message == null ? "Network HQ disconnected" : message;
        status = failure;
        List<Result> callbacks = new ArrayList<>(pending.values());
        pending.clear();
        for (Result callback : callbacks) callback.complete(null, failure);
        publish();
    }

    void close() {
        closed = true;
        try { input.close(); } catch (Exception ignored) { }
        new Thread(() -> {
            try { if (!process.waitFor(6, java.util.concurrent.TimeUnit.SECONDS)) process.destroy(); }
            catch (InterruptedException error) { Thread.currentThread().interrupt(); process.destroy(); }
        }, "network-hq-stop").start();
        writer.shutdown();
        pending.clear();
        observers.clear();
    }
}
