package com.nomone.vr_desktop.runtime;

import java.io.IOException;

public final class PtyNative {
    static {
        System.loadLibrary("nomone_pty");
    }

    private PtyNative() {}

    public static native int[] spawn(String[] command, String[] environment, String directory, int rows, int columns) throws IOException;
    public static native byte[] read(int descriptor) throws IOException;
    public static native void write(int descriptor, byte[] bytes) throws IOException;
    public static native void resize(int descriptor, int rows, int columns) throws IOException;
    public static native void terminate(int pid);
    public static native void kill(int pid);
    public static native int waitFor(int pid) throws IOException;
    public static native void close(int descriptor);
}
