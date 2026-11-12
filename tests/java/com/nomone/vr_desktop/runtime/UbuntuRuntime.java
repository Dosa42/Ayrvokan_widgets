package com.nomone.vr_desktop.runtime;

import android.content.Context;
import java.util.concurrent.CountDownLatch;

public final class UbuntuRuntime {
    public static final CountDownLatch started = new CountDownLatch(1);
    public static int starts;

    public static boolean startIfBare(Context context) {
        if (!o1.y.deployed || !UbuntuImage.ready(context.getFilesDir())) throw new AssertionError("Runtime gestart vóór voltooide installatie");
        starts++;
        started.countDown();
        return true;
    }
}
