package o1;
public class y {
    public static volatile boolean deployed;
    public static boolean a(String key, boolean fallback) { return deployed; }
    public static void e(String key, boolean value) { deployed = value; }
}
