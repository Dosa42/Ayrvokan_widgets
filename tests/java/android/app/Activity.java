package android.app;
import android.content.Context;
import java.io.File;
public class Activity extends Context {
    public int posted;
    public Activity(File files, File assets, File libraries) { super(files, assets, libraries); }
    public void runOnUiThread(Runnable task) { posted++; task.run(); }
    public boolean isFinishing() { return false; }
    public boolean isDestroyed() { return false; }
}
