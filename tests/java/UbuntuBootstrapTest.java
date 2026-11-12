import com.nomone.vr_desktop.runtime.UbuntuImage;
import com.nomone.vr_desktop.runtime.UbuntuRootfs;
import com.nomone.vr_desktop.Applications.LauncherApplication;
import android.app.Activity;
import java.io.File;
import java.util.concurrent.TimeUnit;
public class UbuntuBootstrapTest {
    public static void main(String[] arguments) throws Exception {
        Activity activity = new Activity(new File(arguments[0]), new File(arguments[1]), new File(arguments[2]));
        q1.f scene = new q1.f();
        if (UbuntuRootfs.ensureInstalled(activity, scene)) { throw new AssertionError("First click did not schedule installation"); }
        for (int i = 0; i < 20; i++) { UbuntuRootfs.ensureInstalled(activity, scene); }
        if (!LauncherApplication.resumed.await(60, TimeUnit.SECONDS)) { throw new AssertionError("First click never resumed Linux"); }
        if (LauncherApplication.launches != 1 || activity.posted != 1 || !UbuntuImage.ready(activity.files)) {
            throw new AssertionError("Installation did not resume exactly once");
        }
        if (!LauncherApplication.command.equals("Launch:com.nomone.vr_desktop.Applications.Linux.LinuxApplication")) {
            throw new AssertionError(LauncherApplication.command);
        }
        if (!UbuntuRootfs.ensureInstalled(activity, scene) || LauncherApplication.launches != 1) {
            throw new AssertionError("Second click scheduled another installation");
        }
        System.out.println("Ubuntu bootstrap integration passed: first-click async installation, one automatic launcher resume, warm start");
    }
}
