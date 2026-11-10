package com.ayrvokan.widgets;

import android.Manifest;
import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.IBinder;
import android.widget.Toast;
import java.util.Arrays;

public final class DikteCommandActivity extends Activity {
    LinuxService service;
    boolean bound;
    boolean resumed;
    boolean sent;
    String command;
    final ServiceConnection connection = new ServiceConnection() {
        @Override public void onServiceConnected(ComponentName name, IBinder binder) { service = ((LinuxService.LocalBinder)binder).service(); dispatch(); }
        @Override public void onServiceDisconnected(ComponentName name) { service = null; }
    };

    @Override public void onCreate(Bundle saved) {
        super.onCreate(saved);
        command = getIntent().getStringExtra("command");
        if (command == null && getIntent().getData() != null) command = getIntent().getData().getLastPathSegment();
        if (command == null) command = "toggle";
        if (!Arrays.asList("toggle", "start", "stop", "cancel", "pause", "record", "home", "settings", "status", "ask", "ask-cancel", "ask-reset", "meeting", "meeting-start", "meeting-stop", "meeting-cancel", "reload").contains(command)) { finish(); return; }
        if ("toggle".equals(command) || "start".equals(command) || "record".equals(command)) DikteAccessibilityService.captureTarget();
        if (checkSelfPermission(Manifest.permission.RECORD_AUDIO) != PackageManager.PERMISSION_GRANTED) requestPermissions(new String[]{Manifest.permission.RECORD_AUDIO}, 704);
        else connect();
    }

    void connect() {
        Intent intent = new Intent(this, LinuxService.class);
        startForegroundService(intent);
        bound = bindService(intent, connection, BIND_AUTO_CREATE);
    }

    @Override protected void onResume() { super.onResume(); resumed = true; dispatch(); }
    @Override protected void onPause() { resumed = false; super.onPause(); }

    void dispatch() {
        if (sent || !resumed || service == null) return;
        try {
            service.armDikteMicrophone();
            service.dikteCommand(command);
            sent = true;
            finish();
            overridePendingTransition(0, 0);
        } catch (Exception error) { Toast.makeText(this, error.getMessage(), Toast.LENGTH_LONG).show(); finish(); }
    }

    @Override public void onRequestPermissionsResult(int request, String[] permissions, int[] results) {
        super.onRequestPermissionsResult(request, permissions, results);
        if (request == 704 && results.length > 0 && results[0] == PackageManager.PERMISSION_GRANTED) connect();
        else finish();
    }

    @Override protected void onDestroy() { if (bound) unbindService(connection); super.onDestroy(); }
}
