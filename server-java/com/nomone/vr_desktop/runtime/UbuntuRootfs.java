package com.nomone.vr_desktop.runtime;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import android.widget.Toast;
import java.io.File;
import java.io.InputStream;
import java.util.concurrent.atomic.AtomicBoolean;

public final class UbuntuRootfs {
    private static final AtomicBoolean INSTALLING = new AtomicBoolean();

    private UbuntuRootfs() {}

    public static boolean ensureInstalled(Activity activity, Object scene) {
        Context context = activity.getApplicationContext();
        File root = new File(context.getFilesDir(), UbuntuImage.NAME);
        try {
            boolean deployed = (Boolean) Class.forName("o1.y").getDeclaredMethod("a", String.class, boolean.class)
                    .invoke(null, "Linux image deployed", false);
            if (UbuntuImage.ready(context.getFilesDir()) || (deployed && new File(root, "bin/bash").isFile()
                    && new File(root, "NOMone/boot.sh").isFile())) {
                markDeployed();
                return true;
            }
        } catch (Exception error) {
            Log.e("UbuntuRootfs", "Kan Linux-status niet lezen", error);
            return false;
        }
        if (INSTALLING.compareAndSet(false, true)) {
            Toast.makeText(activity, "Ubuntu22.04Bare installeren…", Toast.LENGTH_LONG).show();
            new Thread(new InstallTask(activity), "Ubuntu22.04Bare-install").start();
        }
        return false;
    }

    private static String describe(Throwable error) {
        while (error.getCause() != null && error.getCause() != error) error = error.getCause();
        String message = error.getMessage();
        return error.getClass().getSimpleName() + (message == null ? "" : ": " + message);
    }

    private static void markDeployed() throws Exception {
        Class.forName("o1.y").getDeclaredMethod("e", String.class, boolean.class)
                .invoke(null, "Linux image deployed", true);
    }

    private static final class InstallTask implements Runnable {
        private final Activity activity;

        InstallTask(Activity activity) {
            this.activity = activity;
        }

        @Override
        public void run() {
            Context context = activity.getApplicationContext();
            try {
                try (InputStream archive = context.getAssets().open(UbuntuImage.ASSET)) {
                    UbuntuImage.install(archive, context.getFilesDir(), new File(context.getApplicationInfo().nativeLibraryDir));
                }
                activity.runOnUiThread(new ResumeTask(activity, null));
            } catch (Exception error) {
                Log.e("UbuntuRootfs", "Ubuntu-installatie mislukt", error);
                activity.runOnUiThread(new ResumeTask(activity, error));
            }
        }
    }

    private static final class ResumeTask implements Runnable {
        private final Activity activity;
        private final Exception error;

        ResumeTask(Activity activity, Exception error) {
            this.activity = activity;
            this.error = error;
        }

        @Override
        public void run() {
            try {
                if (error != null) {
                    Toast.makeText(activity, "Ubuntu-installatie mislukt: " + describe(error), Toast.LENGTH_LONG).show();
                    return;
                }
                markDeployed();
                if (!activity.isFinishing() && !activity.isDestroyed()) {
                    if (!UbuntuRuntime.startIfBare(activity)) {
                        throw new java.io.IOException("Ubuntu Bare installatiemarkering ontbreekt");
                    }
                }
            } catch (Exception failure) {
                Log.e("UbuntuRootfs", "Linux-start mislukt", failure);
                Toast.makeText(activity, "Linux-start mislukt: " + describe(failure), Toast.LENGTH_LONG).show();
            } finally {
                INSTALLING.set(false);
            }
        }
    }
}
