import com.nomone.vr_desktop.runtime.UbuntuImage;
import com.nomone.vr_desktop.runtime.UbuntuRootfs;
import com.nomone.vr_desktop.runtime.UbuntuRuntime;
import android.app.Activity;
import java.io.File;
import java.util.concurrent.TimeUnit;
public class UbuntuBootstrapTest {
    public static void main(String[] arguments) throws Exception {
        Activity activity = new Activity(new File(arguments[0]), new File(arguments[1]), new File(arguments[2]));
        q1.f scene = new q1.f();
        if (UbuntuRootfs.ensureInstalled(activity, scene)) { throw new AssertionError("First click did not schedule installation"); }
        for (int i = 0; i < 20; i++) { UbuntuRootfs.ensureInstalled(activity, scene); }
        if (!UbuntuRuntime.started.await(60, TimeUnit.SECONDS)) { throw new AssertionError("First click never resumed Linux"); }
        if (UbuntuRuntime.starts != 1 || activity.posted != 1 || !UbuntuImage.ready(activity.files)) {
            throw new AssertionError("Installation did not resume exactly once");
        }
        if (!UbuntuRootfs.ensureInstalled(activity, scene) || UbuntuRuntime.starts != 1) {
            throw new AssertionError("Second click scheduled another installation");
        }
        System.out.println("Ubuntu bootstrap integration passed: first-click async installation, one direct runtime-service start, warm start");
    }
}
