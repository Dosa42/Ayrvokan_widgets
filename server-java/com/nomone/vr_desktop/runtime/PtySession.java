package com.nomone.vr_desktop.runtime;

import java.io.IOException;

public final class PtySession {
    public interface Listener {
        void exited(int status, String error);
    }

    public static final class Output {
        public final byte[] bytes;
        public final long cursor;
        public final boolean truncated;

        Output(byte[] bytes, long cursor, boolean truncated) {
            this.bytes = bytes;
            this.cursor = cursor;
            this.truncated = truncated;
        }
    }

    private final byte[] history = new byte[65536];
    private final int pid;
    private final Listener listener;
    private final Thread reader;
    private int descriptor;
    private long cursor;
    private volatile boolean running = true;
    private volatile int exitStatus = -1;
    private volatile String failure = "";
    private boolean stopping;

    public PtySession(String[] command, String[] environment, String directory, int rows, int columns, Listener listener) throws IOException {
        this.listener = listener;
        int[] child = PtyNative.spawn(command, environment, directory, rows, columns);
        descriptor = child[0];
        pid = child[1];
        reader = new Thread(this::drain, "Ubuntu-PTY-output");
        reader.start();
    }

    public synchronized void write(byte[] bytes) throws IOException {
        if (!running || descriptor < 0) throw new IOException("Terminal is afgesloten");
        if (bytes.length > 16384) throw new IOException("Terminalinvoer overschrijdt 16384 bytes");
        PtyNative.write(descriptor, bytes);
    }

    public synchronized void resize(int rows, int columns) throws IOException {
        if (!running || descriptor < 0) throw new IOException("Terminal is afgesloten");
        PtyNative.resize(descriptor, rows, columns);
    }

    public synchronized Output output(long from) {
        long first = Math.max(0, cursor - history.length);
        long begin = Math.min(cursor, Math.max(first, from));
        int count = (int) Math.min(16384, cursor - begin);
        byte[] bytes = new byte[count];
        for (int i = 0; i < count; i++) bytes[i] = history[(int) ((begin + i) % history.length)];
        return new Output(bytes, begin + count, from < first);
    }

    public int pid() { return pid; }
    public boolean running() { return running; }
    public int exitStatus() { return exitStatus; }
    public String failure() { return failure; }

    public synchronized void stop() {
        if (!running || stopping) return;
        stopping = true;
        PtyNative.terminate(pid);
        Thread fallback = new Thread(() -> {
            try { reader.join(1000); }
            catch (InterruptedException error) { Thread.currentThread().interrupt(); }
            synchronized (PtySession.this) {
                if (running) PtyNative.kill(pid);
            }
        }, "Ubuntu-PTY-stop");
        fallback.setDaemon(true);
        fallback.start();
    }

    public void join(long milliseconds) throws InterruptedException {
        reader.join(milliseconds);
    }

    private void drain() {
        try {
            while (true) {
                byte[] bytes = PtyNative.read(descriptor);
                if (bytes == null) break;
                synchronized (this) {
                    for (byte value : bytes) history[(int) (cursor++ % history.length)] = value;
                }
            }
        } catch (IOException error) {
            failure = error.toString();
        } finally {
            PtyNative.terminate(pid);
            try {
                exitStatus = PtyNative.waitFor(pid);
            } catch (IOException error) {
                failure = error.toString();
            }
            synchronized (this) {
                running = false;
                PtyNative.close(descriptor);
                descriptor = -1;
            }
            if (listener != null) listener.exited(exitStatus, failure);
        }
    }
}
