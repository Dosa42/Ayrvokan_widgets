package com.ayrvokan.widgets;

import android.os.Handler;
import android.os.Looper;
import java.io.ByteArrayOutputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;

final class TerminalSession {
    interface Listener { void output(byte[] bytes); void ended(int status); }
    final String id;
    private final Handler main = new Handler(Looper.getMainLooper());
    private final List<Listener> listeners = new ArrayList<>();
    private final ByteArrayOutputStream history = new ByteArrayOutputStream();
    private int descriptor = -1;
    private int pid = -1;
    private volatile boolean running;
    private int exitStatus;

    TerminalSession(String id, LinuxRuntime runtime) throws Exception {
        this(id, runtime, runtime.command("/bin/bash", "--noprofile", "--norc", "-i"), 28, 90, false);
    }

    TerminalSession(String id, LinuxRuntime runtime, List<String> command, int rows, int columns, boolean raw) throws Exception {
        this.id = id;
        int[] process = Pty.spawn(command.get(0), runtime.files.getAbsolutePath(), command.toArray(new String[0]), runtime.environmentArray(), rows, columns, raw);
        descriptor = process[0];
        pid = process[1];
        running = true;
        new Thread(() -> {
            byte[] bytes;
            while ((bytes = Pty.read(descriptor)) != null) {
                byte[] captured = bytes;
                main.post(() -> {
                    if (history.size() + captured.length > 2097152) {
                        history.reset();
                    }
                    history.write(captured, 0, captured.length);
                    for (Listener listener : new ArrayList<>(listeners)) listener.output(captured);
                });
            }
            int result = Pty.waitFor(pid);
            main.post(() -> {
                running = false;
                exitStatus = result;
                Pty.close(descriptor);
                descriptor = -1;
                for (Listener listener : new ArrayList<>(listeners)) listener.ended(result);
            });
        }, "Terminal-" + id).start();
    }

    void listen(Listener listener) {
        listeners.add(listener);
        byte[] bytes = history.toByteArray();
        if (bytes.length > 0) listener.output(bytes);
        if (!running) listener.ended(exitStatus);
    }

    void unlisten(Listener listener) { listeners.remove(listener); }
    void input(String text) { if (descriptor >= 0) Pty.write(descriptor, text.getBytes(StandardCharsets.UTF_8)); }
    void resize(int columns, int rows) { if (descriptor >= 0) Pty.resize(descriptor, Math.max(2, rows), Math.max(2, columns)); }
    void stop() { if (running) Pty.terminate(pid); }
    boolean isRunning() { return running; }
}
