package com.nomone.vr_desktop.runtime;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.net.Uri;
import android.widget.Toast;
import java.io.File;
import java.net.HttpURLConnection;
import java.util.concurrent.atomic.AtomicBoolean;

public final class UbuntuRuntime {
    public static final String URL = "http://127.0.0.1:8766/terminal";
    private static final AtomicBoolean OPENING = new AtomicBoolean();
    private UbuntuRuntime() {}

    public static boolean startIfBare(Context context) {
        if (!new File(context.getFilesDir(), UbuntuImage.NAME + "/" + UbuntuImage.MARKER).isFile()) return false;
        Intent intent = new Intent(context, UbuntuRuntimeService.class);
        if (Build.VERSION.SDK_INT >= 26) context.startForegroundService(intent);
        else context.startService(intent);
        if (OPENING.compareAndSet(false, true)) new Thread(() -> {
            boolean ready = false;
            for (int attempt = 0; attempt < 60; attempt++) {
                HttpURLConnection connection = null;
                try {
                    connection = (HttpURLConnection) new java.net.URL("http://127.0.0.1:8766/health").openConnection();
                    connection.setConnectTimeout(250);
                    connection.setReadTimeout(250);
                    if (connection.getResponseCode() == 200) { ready = true; break; }
                } catch (Exception ignored) {
                } finally { if (connection != null) connection.disconnect(); }
                try { Thread.sleep(100); }
                catch (InterruptedException error) { Thread.currentThread().interrupt(); break; }
            }
            boolean available = ready;
            new Handler(Looper.getMainLooper()).post(() -> {
                try {
                    if (available) context.startActivity(new Intent(Intent.ACTION_VIEW, Uri.parse(URL)).addFlags(Intent.FLAG_ACTIVITY_NEW_TASK));
                    else Toast.makeText(context, "Terminalserver start niet; zie Ubuntu-melding", Toast.LENGTH_LONG).show();
                } finally { OPENING.set(false); }
            });
        }, "Ubuntu-browser-open").start();
        return true;
    }
}
