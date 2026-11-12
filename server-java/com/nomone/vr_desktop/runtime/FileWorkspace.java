package com.nomone.vr_desktop.runtime;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public final class FileWorkspace implements Closeable {
    public interface Runner { Process start(String... command) throws IOException; }
    private final Runner runner;
    private final String hostRoot;
    private final Map<String, Job> jobs = Collections.synchronizedMap(new LinkedHashMap<>());
    private final Set<Process> processes = ConcurrentHashMap.newKeySet();
    private final ExecutorService workers = Executors.newCachedThreadPool();
    private volatile boolean closed;

    public FileWorkspace(Runner runner, String hostRoot) {
        this.runner = runner;
        this.hostRoot = hostRoot;
    }

    private static String quote(String value) { return TerminalServer.quote(value); }

    private String location(String side, String path) throws IOException {
        if (!"android".equals(side) && !"ubuntu".equals(side)) throw new IOException("Onbekend bestandssysteem");
        if (path == null || !path.startsWith("/") || path.indexOf(0) >= 0) throw new IOException("Gebruik een absoluut pad");
        return "android".equals(side) ? hostRoot + path : path;
    }

    private Process start(String... command) throws IOException {
        if (closed) throw new IOException("Bestandswerkruimte is gestopt");
        Process process = runner.start(command);
        processes.add(process);
        process.getOutputStream().close();
        return process;
    }

    private static byte[] read(InputStream input) throws IOException {
        try (InputStream stream = input; ByteArrayOutputStream result = new ByteArrayOutputStream()) {
            byte[] buffer = new byte[16384];
            int count;
            while ((count = stream.read(buffer)) != -1) result.write(buffer, 0, count);
            return result.toByteArray();
        }
    }

    private static final class Errors extends Thread {
        final InputStream input;
        byte[] bytes = new byte[0];
        IOException failure;
        Errors(InputStream input) { this.input = input; setDaemon(true); start(); }
        @Override public void run() {
            try { bytes = read(input); }
            catch (IOException error) { failure = error; }
        }
        String text() throws IOException, InterruptedException {
            join();
            if (failure != null) throw failure;
            return new String(bytes, StandardCharsets.UTF_8).trim();
        }
    }

    public String list(String side, String path) throws IOException {
        Process process = start("/usr/bin/find", "-H", location(side, path), "-mindepth", "1", "-maxdepth", "1", "-printf", "%f\\0%y\\0%Y\\0%s\\0%T@\\0");
        try {
            Errors errors = new Errors(process.getErrorStream());
            String output = new String(read(process.getInputStream()), StandardCharsets.UTF_8);
            int status = process.waitFor();
            String error = errors.text();
            String[] fields = output.split("\u0000", -1);
            List<String[]> entries = new ArrayList<>();
            for (int i = 0; i + 4 < fields.length; i += 5) entries.add(new String[]{fields[i], fields[i + 1], fields[i + 2], fields[i + 3], fields[i + 4]});
            entries.sort(Comparator.<String[], Boolean>comparing(entry -> !(entry[1].equals("d") || entry[2].equals("d"))).thenComparing(entry -> entry[0], String.CASE_INSENSITIVE_ORDER));
            StringBuilder result = new StringBuilder("{\"side\":").append(quote(side)).append(",\"path\":").append(quote(path)).append(",\"entries\":[");
            boolean comma = false;
            for (String[] entry : entries) {
                if (comma) result.append(',');
                comma = true;
                result.append("{\"name\":").append(quote(entry[0])).append(",\"directory\":").append(entry[1].equals("d") || entry[2].equals("d"))
                        .append(",\"link\":").append(entry[1].equals("l")).append(",\"bytes\":").append(Long.parseLong(entry[3]))
                        .append(",\"modified\":").append(Double.parseDouble(entry[4])).append('}');
            }
            return result.append("],\"error\":").append(quote(status == 0 ? "" : error.isEmpty() ? "Map lezen mislukt · exit " + status : error)).append('}').toString();
        } catch (InterruptedException error) {
            Thread.currentThread().interrupt();
            throw new IOException("Map lezen onderbroken", error);
        } finally { processes.remove(process); process.destroy(); }
    }

    private static String one(Map<String, List<String>> form, String key) throws IOException {
        List<String> values = form.get(key);
        if (values == null || values.isEmpty()) throw new IOException(key + " ontbreekt");
        return values.get(0);
    }

    public String submit(Map<String, List<String>> form) throws IOException {
        String operation = one(form, "operation");
        if (!operation.equals("copy") && !operation.equals("move") && !operation.equals("remove")) throw new IOException("Onbekende bestandsactie");
        String from = one(form, "from");
        List<String> source = form.get("source");
        if (source == null || source.isEmpty()) throw new IOException("Selecteer bestanden of mappen");
        List<String> selected = new ArrayList<>(source);
        for (String path : selected) location(from, path);
        String to = operation.equals("remove") ? from : one(form, "to");
        String target = operation.equals("remove") ? "" : one(form, "target");
        if (!operation.equals("remove")) location(to, target);
        Job job = new Job(operation, from, to, target, selected);
        synchronized (jobs) {
            if (closed) throw new IOException("Bestandswerkruimte is gestopt");
            jobs.put(job.id, job);
            workers.execute(() -> execute(job));
        }
        return job.json();
    }

    private void execute(Job job) {
        job.status = "running";
        try {
            for (String source : job.sources) {
                if (Thread.currentThread().isInterrupted()) throw new IOException("Actie onderbroken");
                job.current = source;
                String path = location(job.from, source);
                List<String> command = new ArrayList<>();
                if (job.operation.equals("remove")) {
                    Collections.addAll(command, "/bin/rm", "-rv", "--", path);
                } else {
                    int slash = source.lastIndexOf('/');
                    String name = source.substring(slash + 1);
                    if (name.isEmpty()) throw new IOException("Selecteer een bestand of mapnaam");
                    String destination = location(job.to, job.target) + (job.target.endsWith("/") ? "" : "/") + name;
                    if (job.operation.equals("copy")) Collections.addAll(command, "/bin/cp", "-RvT", "--", path, destination);
                    else Collections.addAll(command, "/bin/mv", "-vT", "--", path, destination);
                }
                Process process = start(command.toArray(new String[0]));
                try {
                    Errors errors = new Errors(process.getErrorStream());
                    try (BufferedReader lines = new BufferedReader(new InputStreamReader(process.getInputStream(), StandardCharsets.UTF_8))) {
                        String line;
                        while ((line = lines.readLine()) != null) job.detail = line;
                    }
                    int status = process.waitFor();
                    String error = errors.text();
                    if (status != 0) throw new IOException(error.isEmpty() ? "Bestandsactie mislukt · exit " + status : error);
                } finally { processes.remove(process); process.destroy(); }
                job.completed++;
            }
            job.status = "done";
        } catch (Exception failure) {
            if (failure instanceof InterruptedException) Thread.currentThread().interrupt();
            job.error = failure.getMessage() == null ? failure.toString() : failure.getMessage();
            job.status = "failed";
        }
    }

    public String jobs() {
        StringBuilder result = new StringBuilder("{\"jobs\":[");
        synchronized (jobs) {
            boolean comma = false;
            for (Job job : jobs.values()) {
                if (comma) result.append(',');
                comma = true;
                result.append(job.json());
            }
        }
        return result.append("]}").toString();
    }

    private static final class Job {
        final String id = UUID.randomUUID().toString();
        final String operation;
        final String from;
        final String to;
        final String target;
        final List<String> sources;
        final long started = System.currentTimeMillis();
        volatile String status = "queued";
        volatile String current = "";
        volatile String detail = "";
        volatile String error = "";
        volatile int completed;
        Job(String operation, String from, String to, String target, List<String> sources) {
            this.operation = operation; this.from = from; this.to = to; this.target = target; this.sources = sources;
        }
        String json() {
            return "{\"id\":" + quote(id) + ",\"operation\":" + quote(operation) + ",\"from\":" + quote(from) + ",\"to\":" + quote(to)
                    + ",\"target\":" + quote(target) + ",\"status\":" + quote(status) + ",\"current\":" + quote(current) + ",\"detail\":" + quote(detail)
                    + ",\"error\":" + quote(error) + ",\"completed\":" + completed + ",\"total\":" + sources.size() + ",\"started\":" + started + "}";
        }
    }

    @Override public void close() {
        synchronized (jobs) { closed = true; workers.shutdownNow(); }
        for (Process process : processes) process.destroy();
    }
}
