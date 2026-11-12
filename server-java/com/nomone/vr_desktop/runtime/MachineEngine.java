package com.nomone.vr_desktop.runtime;

import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLDecoder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public final class MachineEngine implements Closeable {
    public interface Runner { Process start(String... args) throws IOException; }
    private final File directory;
    private final Runner runner;
    private final Map<String, Order> orders = new LinkedHashMap<>();
    private final Properties settings = new Properties();
    private final ExecutorService workers = Executors.newCachedThreadPool();
    private boolean closed;

    private final class Order {
        final File record;
        final Properties data;
        Process process;
        Order(File record, Properties data) { this.record = record; this.data = data; }
        File stream(String name) { return new File(directory, record.getName() + "." + name); }
        void save() throws IOException { store(record, data); }
        String json() throws IOException {
            StringBuilder result = new StringBuilder("{");
            for (String key : Arrays.asList("id", "source", "cwd", "status", "created", "started", "finished", "exit", "error", "checklist")) {
                if (result.length() > 1) result.append(',');
                result.append(TerminalServer.quote(key)).append(':').append(TerminalServer.quote(data.getProperty(key, "")));
            }
            result.append(",\"argv\":[");
            int count = Integer.parseInt(data.getProperty("argc", "0"));
            for (int i = 0; i < count; i++) {
                if (i > 0) result.append(',');
                result.append(TerminalServer.quote(data.getProperty("arg." + i)));
            }
            return result.append("],\"stdout\":").append(TerminalServer.quote(read(stream("stdout"))))
                    .append(",\"stderr\":").append(TerminalServer.quote(read(stream("stderr")))).append('}').toString();
        }
    }

    public MachineEngine(File directory, Runner runner) throws IOException {
        this.directory = directory;
        this.runner = runner;
        if (!directory.isDirectory() && !directory.mkdirs()) throw new IOException("Engine-map aanmaken mislukt");
        File config = new File(directory, "settings.properties");
        if (config.isFile()) try (InputStream input = new FileInputStream(config)) { settings.load(input); }
        File[] records = directory.listFiles((dir, name) -> name.endsWith(".order"));
        if (records == null) throw new IOException("Engine-map lezen mislukt");
        Arrays.sort(records, Comparator.comparing(File::getName));
        for (File record : records) {
            Properties data = new Properties();
            try (InputStream input = new FileInputStream(record)) { data.load(input); }
            Order order = new Order(record, data);
            if (Arrays.asList("queued", "running").contains(data.getProperty("status"))) {
                data.setProperty("status", "interrupted");
                data.setProperty("finished", Long.toString(System.currentTimeMillis()));
                data.setProperty("error", "runtime_stopped");
                order.save();
            }
            orders.put(data.getProperty("id"), order);
        }
    }

    public synchronized String request(String method, String path, String body) throws IOException {
        try {
            if (closed) throw new IOException("Engine afgesloten");
            Map<String, List<String>> form = form(body);
            if (method.equals("POST") && path.equals("/control/orders")) return submit(form);
            if (method.equals("POST") && path.equals("/control/settings")) {
                for (String key : form.keySet()) {
                    if (!Arrays.asList("mode", "model", "reasoning", "skills", "hooks", "instructions").contains(key)) throw new IOException("Onbekende setting: " + key);
                }
                for (String key : form.keySet()) settings.setProperty(key, value(form, key));
                store(new File(directory, "settings.properties"), settings);
            } else if (method.equals("POST") && path.equals("/control/checklist")) {
                Order order = orders.get(value(form, "id"));
                if (order == null) throw new IOException("Onbekend opdracht-ID");
                String state = value(form, "state");
                if (!Arrays.asList("pending", "true", "false").contains(state)) throw new IOException("Checklist: pending, true of false vereist");
                order.data.setProperty("checklist", state);
                order.save();
            } else if (!method.equals("GET") && !method.equals("HEAD")) throw new IOException("Onbekende engine-opdracht");
            if (!Arrays.asList("/control/status", "/control/settings", "/control/checklist", "/control/orders").contains(path)) throw new IOException("Onbekend engine-pad");
            return snapshot();
        } catch (IllegalArgumentException failure) { throw new IOException(failure.getMessage(), failure); }
    }

    private String submit(Map<String, List<String>> form) throws IOException {
        String id = value(form, "id");
        String source = value(form, "source");
        String cwd = value(form, "cwd");
        List<String> args = form.get("arg");
        if (id.isEmpty() || source.isEmpty() || !cwd.startsWith("/") || args == null || args.isEmpty() || args.get(0).isEmpty()) throw new IOException("id, source, absoluut cwd en herhaalde arg vereist");
        if (orders.containsKey(id)) throw new IOException("Opdracht-ID bestaat al: " + id);
        Properties data = new Properties();
        data.setProperty("id", id); data.setProperty("source", source); data.setProperty("cwd", cwd);
        data.setProperty("created", Long.toString(System.currentTimeMillis()));
        data.setProperty("status", "queued"); data.setProperty("checklist", "pending");
        data.setProperty("argc", Integer.toString(args.size()));
        for (int i = 0; i < args.size(); i++) data.setProperty("arg." + i, args.get(i));
        Order order = new Order(new File(directory, String.format(java.util.Locale.ROOT, "%019d-%s.order", System.currentTimeMillis(), UUID.randomUUID())), data);
        order.save();
        orders.put(id, order);
        workers.execute(() -> execute(order));
        return order.json();
    }

    private void execute(Order order) {
        try {
            synchronized (this) {
                if (closed) return;
                List<String> args = new ArrayList<>(Arrays.asList("/usr/bin/env", "-C", order.data.getProperty("cwd"), "--"));
                int count = Integer.parseInt(order.data.getProperty("argc"));
                for (int i = 0; i < count; i++) args.add(order.data.getProperty("arg." + i));
                order.process = runner.start(args.toArray(new String[0]));
                order.process.getOutputStream().close();
                order.data.setProperty("status", "running");
                order.data.setProperty("started", Long.toString(System.currentTimeMillis()));
                order.save();
            }
            Thread stderr = new Thread(() -> copyStream(order, order.process.getErrorStream(), "stderr"), "Ubuntu-engine-stderr");
            stderr.start();
            copyStream(order, order.process.getInputStream(), "stdout");
            int exit = order.process.waitFor();
            stderr.join();
            synchronized (this) {
                if (!order.data.getProperty("status").equals("interrupted")) order.data.setProperty("status", exit == 0 && order.data.getProperty("error", "").isEmpty() ? "done" : "failed");
                order.data.setProperty("exit", Integer.toString(exit));
                order.data.setProperty("finished", Long.toString(System.currentTimeMillis()));
                order.save();
            }
        } catch (Exception failure) {
            synchronized (this) {
                if (!order.data.getProperty("status").equals("interrupted")) order.data.setProperty("status", "failed");
                order.data.setProperty("error", failure.toString());
                order.data.setProperty("finished", Long.toString(System.currentTimeMillis()));
                try { order.save(); } catch (IOException saveFailure) { order.data.setProperty("error", failure + "; " + saveFailure); }
            }
        }
    }

    private void copyStream(Order order, InputStream input, String name) {
        try (InputStream source = input; OutputStream output = new FileOutputStream(order.stream(name))) {
            byte[] bytes = new byte[16384];
            int count;
            while ((count = source.read(bytes)) != -1) { output.write(bytes, 0, count); output.flush(); }
        } catch (IOException failure) { synchronized (this) { order.data.setProperty("error", failure.toString()); } }
    }

    private String snapshot() throws IOException {
        StringBuilder result = new StringBuilder("{\"schema\":\"nomone.engine/1\",\"adapter\":\"not_configured\",\"settings\":{");
        for (String key : Arrays.asList("mode", "model", "reasoning", "skills", "hooks", "instructions")) {
            if (result.charAt(result.length() - 1) != '{') result.append(',');
            result.append(TerminalServer.quote(key)).append(':').append(TerminalServer.quote(settings.getProperty(key, key.equals("mode") ? "mechanical" : "")));
        }
        result.append("},\"orders\":[");
        boolean first = true;
        for (Order order : orders.values()) {
            if (!first) result.append(',');
            result.append(order.json()); first = false;
        }
        return result.append("]}").toString();
    }

    private static void store(File target, Properties data) throws IOException {
        File temporary = new File(target.getPath() + ".tmp");
        try (FileOutputStream output = new FileOutputStream(temporary)) { data.store(output, null); output.getFD().sync(); }
        if (!temporary.renameTo(target)) throw new IOException("Engine-record opslaan mislukt: " + target.getName());
    }

    private static String read(File file) throws IOException {
        if (!file.isFile()) return "";
        try (InputStream input = new FileInputStream(file); java.io.ByteArrayOutputStream output = new java.io.ByteArrayOutputStream()) {
            byte[] bytes = new byte[16384]; int count;
            while ((count = input.read(bytes)) != -1) output.write(bytes, 0, count);
            return new String(output.toByteArray(), StandardCharsets.UTF_8);
        }
    }

    private static Map<String, List<String>> form(String body) throws IOException {
        Map<String, List<String>> result = new LinkedHashMap<>();
        for (String part : body.split("&")) {
            String[] pair = part.split("=", 2);
            if (pair.length == 2) {
                String key = URLDecoder.decode(pair[0], "UTF-8");
                List<String> values = result.get(key);
                if (values == null) { values = new ArrayList<>(); result.put(key, values); }
                values.add(URLDecoder.decode(pair[1], "UTF-8"));
            }
        }
        return result;
    }

    private static String value(Map<String, List<String>> form, String key) {
        List<String> values = form.get(key);
        return values == null || values.isEmpty() ? "" : values.get(0);
    }

    @Override
    public synchronized void close() {
        closed = true;
        for (Order order : orders.values()) {
            if (Arrays.asList("queued", "running").contains(order.data.getProperty("status"))) {
                order.data.setProperty("status", "interrupted");
                order.data.setProperty("finished", Long.toString(System.currentTimeMillis()));
                try { order.save(); } catch (IOException failure) { order.data.setProperty("error", failure.toString()); }
            }
            if (order.process != null && order.process.isAlive()) order.process.destroy();
        }
        workers.shutdown();
    }
}
