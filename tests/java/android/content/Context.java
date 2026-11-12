package android.content;
import android.content.pm.ApplicationInfo;
import android.content.res.AssetManager;
import java.io.File;
public class Context {
    public final File files;
    private final AssetManager assets;
    private final ApplicationInfo info = new ApplicationInfo();
    public Context(File files, File assets, File libraries) {
        this.files = files; this.assets = new AssetManager(assets); info.nativeLibraryDir = libraries.getAbsolutePath();
    }
    public Context getApplicationContext() { return this; }
    public File getFilesDir() { return files; }
    public AssetManager getAssets() { return assets; }
    public ApplicationInfo getApplicationInfo() { return info; }
}
