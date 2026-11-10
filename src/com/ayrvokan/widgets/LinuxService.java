package com.ayrvokan.widgets;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public final class LinuxService extends Service {
    interface Observer { void changed(); }
    final class LocalBinder extends Binder { LinuxService service() { return LinuxService.this; } }
    final Handler main = new Handler(Looper.getMainLooper());
    final ExecutorService operations = Executors.newSingleThreadExecutor();
    final Map<String, TerminalSession> sessions = new LinkedHashMap<>();
    final Map<String, ConsoleSession> consoles = new LinkedHashMap<>();
    final Map<String, AgentSession> agents = new LinkedHashMap<>();
    AgentBridge agentBridge;
    VekilBridge vekilBridge;
    final Map<String, VekilSession> vekils = new LinkedHashMap<>();
    ProxySession proxySession;
    NetworkSession networkSession;
    DikteSession dikteSession;
    boolean embeddingBound;
    boolean dikteMicrophoneArmed;
    final List<String> dikteCommands = new ArrayList<>();
    final android.content.ServiceConnection embeddingConnection = new android.content.ServiceConnection() {
        @Override public void onServiceConnected(android.content.ComponentName name, IBinder binder) { }
        @Override public void onServiceDisconnected(android.content.ComponentName name) { }
    };
    final List<Observer> observers = new ArrayList<>();
    LinuxRuntime runtime;
    boolean ready;
    String status = "Preparing Kali…";

    @Override public void onCreate() {
        super.onCreate();
        runtime = new LinuxRuntime(this);
        NotificationManager manager = getSystemService(NotificationManager.class);
        manager.createNotificationChannel(new NotificationChannel("linux", "Linux workspace", NotificationManager.IMPORTANCE_LOW));
        startForeground(41, notification(), android.content.pm.ServiceInfo.FOREGROUND_SERVICE_TYPE_SPECIAL_USE);
        operations.execute(() -> {
            try {
                main.post(() -> { status = "Installing Kali…"; publish(); });
                runtime.prepare();
                agentBridge = new AgentBridge(runtime, main);
                vekilBridge = new VekilBridge(runtime, main);
                main.post(() -> {
                    ready = true;
                    status = "Kali ARM64 · ready";
                    try { proxySession = new ProxySession(runtime, main); }
                    catch (Exception error) { status = "CLIProxyAPI: " + error.getMessage(); }
                    try { networkSession = new NetworkSession(this); }
                    catch (Exception error) { status = "Network HQ: " + error.getMessage(); }
                    dikteSession = new DikteSession(runtime, main);
                    dikteSession.observe(() -> getSystemService(NotificationManager.class).notify(41, notification()));
                    for (String command : new ArrayList<>(dikteCommands)) dikteSession.control(command);
                    dikteCommands.clear();
                    embeddingBound = bindService(new Intent(this, VekilEmbeddingService.class), embeddingConnection, BIND_AUTO_CREATE);
                    publish();
                });
            } catch (Exception error) {
                android.util.Log.e("WidgetLinux", "Linux preparation failed", error);
                main.post(() -> { status = "Kali: " + error.getMessage(); publish(); });
            }
        });
    }

    @Override public int onStartCommand(Intent intent, int flags, int id) {
        if (intent != null && "stop".equals(intent.getAction())) { stopSelf(); return START_NOT_STICKY; }
        return START_STICKY;
    }

    void armDikteMicrophone() {
        if (checkSelfPermission(android.Manifest.permission.RECORD_AUDIO) != android.content.pm.PackageManager.PERMISSION_GRANTED || dikteMicrophoneArmed) return;
        try {
            startForeground(41, notification(), android.content.pm.ServiceInfo.FOREGROUND_SERVICE_TYPE_SPECIAL_USE | android.content.pm.ServiceInfo.FOREGROUND_SERVICE_TYPE_MICROPHONE);
            dikteMicrophoneArmed = true;
        } catch (RuntimeException error) { android.util.Log.w("Dikte", "Microphone foreground activation: " + error.getMessage()); }
    }

    void dikteCommand(String command) {
        if (dikteSession == null) dikteCommands.add(command);
        else dikteSession.control(command);
    }

    @Override public IBinder onBind(Intent intent) { return new LocalBinder(); }

    TerminalSession terminal(String id) throws Exception {
        TerminalSession session = sessions.get(id);
        if (session == null) {
            if (!ready) throw new IllegalStateException("Kali is still starting");
            session = new TerminalSession(id, runtime);
            sessions.put(id, session);
            getSystemService(NotificationManager.class).notify(41, notification());
        }
        return session;
    }

    void closeTerminal(String id) {
        TerminalSession session = sessions.remove(id);
        if (session != null) session.stop();
    }

    ConsoleSession console(String id) throws Exception {
        ConsoleSession session = consoles.get(id);
        if (session == null) {
            if (!ready) throw new IllegalStateException("Kali is still starting");
            session = new ConsoleSession(id, runtime, main);
            consoles.put(id, session);
        }
        return session;
    }

    void closeConsole(String id) {
        ConsoleSession session = consoles.remove(id);
        if (session != null) session.close();
    }

    AgentSession agent(String id) {
        AgentSession session = agents.get(id);
        if (session == null) {
            if (!ready || agentBridge == null) throw new IllegalStateException("Ayrvokan Agent is still starting");
            session = new AgentSession(id, agentBridge);
            agents.put(id, session);
        }
        return session;
    }

    VekilSession vekil(String id) {
        VekilSession session = vekils.get(id);
        if (session == null) {
            if (!ready || vekilBridge == null) throw new IllegalStateException("Vekil Kaan is still starting");
            if (proxySession != null) proxySession.start();
            session = new VekilSession(id, vekilBridge);
            vekils.put(id, session);
        }
        return session;
    }

    void observe(Observer observer) { if (!observers.contains(observer)) observers.add(observer); observer.changed(); }
    void unobserve(Observer observer) { observers.remove(observer); }
    void publish() {
        for (Observer observer : new ArrayList<>(observers)) observer.changed();
        getSystemService(NotificationManager.class).notify(41, notification());
    }

    private Notification notification() {
        PendingIntent open = PendingIntent.getActivity(this, 0, new Intent(this, MainActivity.class), PendingIntent.FLAG_IMMUTABLE | PendingIntent.FLAG_UPDATE_CURRENT);
        PendingIntent stop = PendingIntent.getService(this, 1, new Intent(this, LinuxService.class).setAction("stop"), PendingIntent.FLAG_IMMUTABLE | PendingIntent.FLAG_UPDATE_CURRENT);
        PendingIntent toggle = PendingIntent.getActivity(this, 42, new Intent(this, DikteCommandActivity.class).putExtra("command", "toggle"), PendingIntent.FLAG_IMMUTABLE | PendingIntent.FLAG_UPDATE_CURRENT);
        PendingIntent cancel = PendingIntent.getActivity(this, 43, new Intent(this, DikteCommandActivity.class).putExtra("command", "cancel"), PendingIntent.FLAG_IMMUTABLE | PendingIntent.FLAG_UPDATE_CURRENT);
        String text = dikteSession == null ? status : status + " · " + dikteSession.status;
        return new Notification.Builder(this, "linux").setSmallIcon(android.R.drawable.ic_menu_manage).setContentTitle("Ayrvokan Widgets").setContentText(text).setContentIntent(open).setOngoing(true).addAction(new Notification.Action.Builder(null, "Dikte başlat/durdur", toggle).build()).addAction(new Notification.Action.Builder(null, "Dikte iptal", cancel).build()).addAction(new Notification.Action.Builder(null, "Stop Linux", stop).build()).build();
    }

    @Override public void onDestroy() {
        for (TerminalSession session : sessions.values()) session.stop();
        sessions.clear();
        for (ConsoleSession session : consoles.values()) session.close();
        consoles.clear();
        if (agentBridge != null) agentBridge.stop();
        for (VekilSession session : vekils.values()) session.dispose();
        vekils.clear();
        if (vekilBridge != null) vekilBridge.stop();
        if (embeddingBound) { unbindService(embeddingConnection); embeddingBound = false; }
        if (proxySession != null) proxySession.close();
        if (networkSession != null) networkSession.close();
        if (dikteSession != null) dikteSession.close();
        agents.clear();
        operations.shutdownNow();
        super.onDestroy();
    }
}
