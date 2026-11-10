package com.ayrvokan.widgets;

final class Pty {
    static { System.loadLibrary("widgetpty"); }
    static native int[] spawn(String executable, String cwd, String[] arguments, String[] environment, int rows, int columns, boolean raw);
    static native byte[] read(int descriptor);
    static native void write(int descriptor, byte[] bytes);
    static native void resize(int descriptor, int rows, int columns);
    static native int waitFor(int pid);
    static native void terminate(int pid);
    static native void close(int descriptor);
}
