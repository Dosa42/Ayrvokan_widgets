package com.nomone.vr_desktop.Applications;
import java.util.concurrent.CountDownLatch;
public class LauncherApplication {
    public static final CountDownLatch resumed = new CountDownLatch(1);
    public static int launches;
    public static String command;
    public static r1.c f(q1.f scene, r1.c previous, String action) {
        if (previous == null) throw new NullPointerException("Launcher requires a previous window owner");
        if (!o1.y.deployed) { throw new AssertionError("Image was not deployed before resume"); }
        launches++; command = action; resumed.countDown(); return null;
    }
}
