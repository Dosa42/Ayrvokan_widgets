package com.nomone.vr_desktop.runtime;

import java.io.Closeable;
import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.UUID;

public final class TerminalSessions implements TerminalServer.Provider, Closeable {
    public interface Factory { PtySession open(String id, PtySession.Listener listener) throws IOException; }
    private final Factory factory;
    private final Runnable changed;
    private final Map<String, PtySession> sessions = new LinkedHashMap<>();
    private String primary = "";
    private String error = "";
    private PtySession ssh;
    private String sshError = "";
    private boolean closed;

    public TerminalSessions(Factory factory, Runnable changed) {
        this.factory = factory;
        this.changed = changed;
    }

    public synchronized void ssh(PtySession session, String failure) {
        ssh = session;
        sshError = failure;
    }

    public synchronized void error(String failure) { error = failure; }

    @Override
    public synchronized TerminalServer.State current() {
        PtySession selected = sessions.get(primary);
        if (selected == null || !selected.running()) for (Map.Entry<String, PtySession> entry : sessions.entrySet()) {
            if (entry.getValue().running()) { primary = entry.getKey(); selected = entry.getValue(); break; }
        }
        return state(primary, selected);
    }

    @Override
    public synchronized TerminalServer.State find(String id) {
        if (id == null || id.isEmpty()) return current();
        PtySession session = sessions.get(id);
        return session == null ? null : state(id, session);
    }

    private TerminalServer.State state(String id, PtySession session) {
        return new TerminalServer.State(id, session, session == null ? error : session.failure(), ssh, sshError);
    }

    @Override
    public synchronized TerminalServer.State create() throws IOException {
        if (closed) throw new IOException("Terminalserver is gestopt");
        String id = UUID.randomUUID().toString();
        PtySession session = factory.open(id, (status, failure) -> { if (changed != null) changed.run(); });
        PtySession previous = sessions.get(primary);
        sessions.put(id, session);
        if (previous == null || !previous.running()) primary = id;
        error = "";
        if (changed != null) changed.run();
        return state(id, session);
    }

    @Override
    public synchronized TerminalServer.State[] list() {
        TerminalServer.State[] result = new TerminalServer.State[sessions.size()];
        int index = 0;
        for (Map.Entry<String, PtySession> entry : sessions.entrySet()) result[index++] = state(entry.getKey(), entry.getValue());
        return result;
    }

    @Override
    public void stop(String id) throws IOException {
        TerminalServer.State selected = find(id);
        if (selected == null || selected.session == null) throw new IOException("Onbekende terminalsessie");
        selected.session.stop();
    }

    public synchronized boolean running() {
        for (PtySession session : sessions.values()) if (session.running()) return true;
        return false;
    }

    @Override
    public void close() {
        TerminalServer.State[] current;
        synchronized (this) { closed = true; current = list(); }
        for (TerminalServer.State state : current) state.session.stop();
        for (TerminalServer.State state : current) try { state.session.join(3000); }
        catch (InterruptedException failure) { Thread.currentThread().interrupt(); }
    }
}
