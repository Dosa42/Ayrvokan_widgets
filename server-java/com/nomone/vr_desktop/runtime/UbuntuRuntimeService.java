package com.nomone.vr_desktop.runtime;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.content.pm.ServiceInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.PowerManager;
import android.os.RemoteException;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.util.UUID;

public final class UbuntuRuntimeService extends Service {
    public static final int START = 1;
    public static final int WRITE = 2;
    public static final int RESIZE = 3;
    public static final int READ = 4;
    public static final int STATE = 5;
    public static final int STOP = 6;
    private static final String CHANNEL = "ubuntu-runtime";
    private static final int NOTIFICATION = 2204;
    private HandlerThread worker;
    private Handler commands;
    private Messenger messenger;
    private PowerManager.WakeLock wake;
    private TerminalSessions browsers;
    private PtySession sshSession;
    private String sshError = "";
    private String sshSessionId = "";
    private String error = "";
    private boolean stopping;
    private TerminalServer web;
    private FileWorkspace filesWorkspace;
    private MachineEngine engine;

    @Override
    public void onCreate() {
        super.onCreate();
        if (Build.VERSION.SDK_INT >= 26) {
            getSystemService(NotificationManager.class).createNotificationChannel(
                    new NotificationChannel(CHANNEL, "Ubuntu-terminal", NotificationManager.IMPORTANCE_LOW));
        }
        Notification notice = notification("Ubuntu-terminal starten");
        if (Build.VERSION.SDK_INT >= 34) startForeground(NOTIFICATION, notice, ServiceInfo.FOREGROUND_SERVICE_TYPE_SPECIAL_USE);
        else startForeground(NOTIFICATION, notice);
        wake = ((PowerManager) getSystemService(POWER_SERVICE)).newWakeLock(PowerManager.PARTIAL_WAKE_LOCK, "nom.vrd:UbuntuRuntime");
        wake.setReferenceCounted(false);
        worker = new HandlerThread("Ubuntu-runtime-commands");
        worker.start();
        commands = new Handler(worker.getLooper(), this::handle);
        messenger = new Messenger(commands);
        browsers = new TerminalSessions((id, listener) -> {
            File files = getFilesDir();
            if (!UbuntuImage.ready(files)) throw new IOException("Ubuntu Bare is nog niet geïnstalleerd");
            ProotCommand proot = new ProotCommand(files, new File(getApplicationInfo().nativeLibraryDir));
            return new PtySession(proot.command("/bin/bash", "--noprofile", "--norc", "-i"), proot.environment(), files.getAbsolutePath(), 24, 80, listener);
        }, () -> commands.post(() -> { if (!stopping) { updateWake(); notifyRuntime(); } }));
    }

    @Override
    public int onStartCommand(Intent intent, int flags, int startId) {
        if (intent != null && "stop".equals(intent.getAction())) commands.post(this::shutdown);
        else commands.post(this::startSession);
        return START_NOT_STICKY;
    }

    @Override
    public IBinder onBind(Intent intent) {
        return messenger.getBinder();
    }

    private Notification notification(String text) {
        Intent stop = new Intent(this, UbuntuRuntimeService.class).setAction("stop");
        PendingIntent action = PendingIntent.getService(this, 0, stop, PendingIntent.FLAG_UPDATE_CURRENT | PendingIntent.FLAG_IMMUTABLE);
        Intent browser = new Intent(Intent.ACTION_VIEW, android.net.Uri.parse(UbuntuRuntime.URL));
        PendingIntent open = PendingIntent.getActivity(this, 1, browser, PendingIntent.FLAG_UPDATE_CURRENT | PendingIntent.FLAG_IMMUTABLE);
        Notification.Builder builder = Build.VERSION.SDK_INT >= 26 ? new Notification.Builder(this, CHANNEL) : new Notification.Builder(this);
        return builder.setSmallIcon(android.R.drawable.stat_notify_sync).setContentTitle("Ubuntu22.04Bare")
                .setContentText(text).setContentIntent(open).setOngoing(true)
                .addAction(new Notification.Action.Builder(android.R.drawable.ic_menu_close_clear_cancel, "Stop", action).build()).build();
    }

    private void notifyState(String text) {
        getSystemService(NotificationManager.class).notify(NOTIFICATION, notification(text));
    }

    private void startSession() {
        if (stopping) return;
        try {
            if (filesWorkspace == null) {
                ProotCommand fileCommands = new ProotCommand(getFilesDir(), new File(getApplicationInfo().nativeLibraryDir));
                filesWorkspace = new FileWorkspace(fileCommands::process, "/host-rootfs");
            }
            if (engine == null) {
                ProotCommand execution = new ProotCommand(getFilesDir(), new File(getApplicationInfo().nativeLibraryDir));
                engine = new MachineEngine(new File(getFilesDir(), "ubuntu-engine"), execution::process);
            }
            if (web == null) web = new TerminalServer(8766, this::readAsset, browsers, filesWorkspace, engine::request);
            File files = getFilesDir();
            if (!UbuntuImage.ready(files)) throw new IOException("Ubuntu Bare is nog niet geïnstalleerd");
            ProotCommand proot = new ProotCommand(files, new File(getApplicationInfo().nativeLibraryDir));
            if (!browsers.running()) browsers.create();
            try { startSsh(proot, files); }
            catch (Exception | LinkageError failure) {
                sshError = failure.toString();
                Log.e("UbuntuRuntime", "SSH-start mislukt", failure);
            }
            publishState();
            updateWake();
            notifyRuntime();
        } catch (Exception | LinkageError failure) {
            error = failure.toString();
            publishState();
            updateWake();
            Log.e("UbuntuRuntime", "Terminalstart mislukt", failure);
            notifyState("Terminalstart mislukt: " + error);
        }
    }

    private void startSsh(ProotCommand proot, File files) throws Exception {
        if (sshSession != null && sshSession.running()) return;
        try (InputStream archive = getAssets().open(UbuntuSsh.ASSET); InputStream key = getAssets().open(UbuntuSsh.PUBLIC_KEY_ASSET)) {
            UbuntuSsh.install(archive, key, files);
        }
        UbuntuSsh.ensureHostKey(proot, files);
        sshError = "";
        sshSessionId = UUID.randomUUID().toString();
        String startedSsh = sshSessionId;
        sshSession = new PtySession(proot.command("/usr/sbin/dropbear", "-F", "-E", "-s", "-p", "0.0.0.0:" + UbuntuSsh.PORT,
                "-r", "/" + UbuntuSsh.HOST_KEY, "-P", "/run/dropbear.pid"), proot.environment(), files.getAbsolutePath(), 24, 80,
                (status, failure) -> commands.post(() -> {
                    if (stopping || !sshSessionId.equals(startedSsh)) return;
                    sshError = failure.isEmpty() ? "SSH afgesloten · exit " + status : failure;
                    publishState();
                    updateWake();
                    notifyRuntime();
                }));
    }

    private void publishState() {
        browsers.error(error);
        browsers.ssh(sshSession, sshError);
    }

    private void updateWake() {
        boolean active = browsers.running() || sshSession != null && sshSession.running();
        if (active && !wake.isHeld()) wake.acquire();
        if (!active && wake.isHeld()) wake.release();
    }

    private void notifyRuntime() {
        if (sshSession != null && sshSession.running()) notifyState("Browser :8766 · SSH :" + UbuntuSsh.PORT);
        else if (!sshError.isEmpty()) notifyState("SSH: " + sshError);
        else if (browsers.running()) notifyState("Ubuntu-terminal actief");
        else notifyState("Ubuntu-terminal afgesloten");
    }

    private byte[] readAsset(String path) throws IOException {
        try (InputStream input = getAssets().open(path); ByteArrayOutputStream output = new ByteArrayOutputStream()) {
            byte[] bytes = new byte[16384];
            int count;
            while ((count = input.read(bytes)) != -1) output.write(bytes, 0, count);
            return output.toByteArray();
        }
    }

    private boolean handle(Message request) {
        Bundle result = new Bundle();
        try {
            Bundle input = request.getData();
            switch (request.what) {
                case START: startSession(); break;
                case WRITE:
                    PtySession writing = requireSession(input);
                    byte[] bytes = input.getByteArray("bytes");
                    if (bytes == null) throw new IOException("bytes ontbreekt");
                    writing.write(bytes);
                    break;
                case RESIZE:
                    requireSession(input).resize(input.getInt("rows"), input.getInt("columns"));
                    break;
                case READ:
                    PtySession.Output output = requireSession(input).output(input.getLong("cursor", 0));
                    result.putByteArray("bytes", output.bytes);
                    result.putLong("cursor", output.cursor);
                    result.putBoolean("truncated", output.truncated);
                    break;
                case STATE: break;
                case STOP: shutdown(); break;
                default: throw new IOException("Onbekende runtime-opdracht: " + request.what);
            }
            result.putBoolean("ok", true);
        } catch (Exception failure) {
            result.putBoolean("ok", false);
            result.putString("error", failure.toString());
        }
        TerminalServer.State selected = browsers.find(request.getData().getString("session", ""));
        if (selected == null) selected = browsers.current();
        PtySession session = selected.session;
        result.putString("session", selected.id);
        result.putBoolean("running", session != null && session.running());
        result.putInt("pid", session == null ? -1 : session.pid());
        result.putInt("exit", session == null ? -1 : session.exitStatus());
        result.putString("runtimeError", error);
        if (request.replyTo != null) {
            Message response = Message.obtain(null, request.what);
            response.arg1 = request.arg1;
            response.setData(result);
            try { request.replyTo.send(response); }
            catch (RemoteException failure) { Log.d("UbuntuRuntime", "Terminalclient losgekoppeld"); }
        }
        return true;
    }

    private PtySession requireSession(Bundle input) throws IOException {
        TerminalServer.State selected = browsers.find(input.getString("session", ""));
        if (selected == null || selected.session == null) throw new IOException("Onbekende terminalsessie");
        return selected.session;
    }

    private void shutdown() {
        stopping = true;
        if (web != null) web.close();
        if (filesWorkspace != null) filesWorkspace.close();
        if (engine != null) engine.close();
        browsers.close();
        if (sshSession != null) sshSession.stop();
        stopSelf();
    }

    @Override
    public void onDestroy() {
        commands.post(() -> {
            stopping = true;
            if (web != null) web.close();
            if (filesWorkspace != null) filesWorkspace.close();
            if (engine != null) engine.close();
            browsers.close();
            if (sshSession != null) {
                sshSession.stop();
                try { sshSession.join(3000); }
                catch (InterruptedException failure) { Thread.currentThread().interrupt(); }
            }
            if (wake.isHeld()) wake.release();
            worker.quitSafely();
        });
        super.onDestroy();
    }
}
