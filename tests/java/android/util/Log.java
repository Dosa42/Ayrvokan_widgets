package android.util;
public class Log {
    public static int e(String tag, String message, Throwable failure) { failure.printStackTrace(); return 0; }
}
