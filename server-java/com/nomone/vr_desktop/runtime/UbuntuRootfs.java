package com.nomone.vr_desktop.runtime;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import android.widget.Toast;
import java.io.File;
import java.io.InputStream;
import java.lang.reflect.Method;
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
            new Thread(new InstallTask(activity, scene), "Ubuntu22.04Bare-install").start();
        }
        return false;
    }

    private static void markDeployed() throws Exception {
        Class.forName("o1.y").getDeclaredMethod("e", String.class, boolean.class)
                .invoke(null, "Linux image deployed", true);
    }

    private static final class InstallTask implements Runnable {
        private final Activity activity;
        private final Object scene;

        InstallTask(Activity activity, Object scene) {
            this.activity = activity;
            this.scene = scene;
        }

        @Override
        public void run() {
            Context context = activity.getApplicationContext();
            try {
                try (InputStream archive = context.getAssets().open(UbuntuImage.ASSET)) {
                    UbuntuImage.install(archive, context.getFilesDir(), new File(context.getApplicationInfo().nativeLibraryDir));
                }
                activity.runOnUiThread(new ResumeTask(activity, scene, null));
            } catch (Exception error) {
                Log.e("UbuntuRootfs", "Ubuntu-installatie mislukt", error);
                activity.runOnUiThread(new ResumeTask(activity, scene, error));
            }
        }
    }

    private static final class ResumeTask implements Runnable {
        private final Activity activity;
        private final Object scene;
        private final Exception error;

        ResumeTask(Activity activity, Object scene, Exception error) {
            this.activity = activity;
            this.scene = scene;
            this.error = error;
        }

        @Override
        public void run() {
            try {
                if (error != null) {
                    Toast.makeText(activity, "Ubuntu-installatie mislukt: " + error.getMessage(), Toast.LENGTH_LONG).show();
                    return;
                }
                markDeployed();
                if (!activity.isFinishing() && !activity.isDestroyed()) {
                    Method launch = Class.forName("com.nomone.vr_desktop.Applications.LauncherApplication")
                            .getDeclaredMethod("f", Class.forName("q1.f"), Class.forName("r1.c"), String.class);
                    launch.invoke(null, scene, null, "Launch:com.nomone.vr_desktop.Applications.Linux.LinuxApplication");
                }
            } catch (Exception failure) {
                Log.e("UbuntuRootfs", "Linux-start mislukt", failure);
                Toast.makeText(activity, "Linux-start mislukt: " + failure.getMessage(), Toast.LENGTH_LONG).show();
            } finally {
                INSTALLING.set(false);
            }
        }
    }
}
