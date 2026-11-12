import com.nomone.vr_desktop.runtime.ProotCommand;
import com.nomone.vr_desktop.runtime.PtySession;
import com.nomone.vr_desktop.runtime.UbuntuImage;
import com.nomone.vr_desktop.runtime.UbuntuSsh;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.util.Arrays;
import java.util.concurrent.CountDownLatch;

public final class SshRuntimeTestMain {
    public static void main(String[] arguments) throws Exception {
        File files = new File(arguments[0]);
        File nativeDirectory = new File(arguments[1]);
        try (FileInputStream archive = new FileInputStream(arguments[2])) { UbuntuImage.install(archive, files, nativeDirectory); }
        File root = new File(files, UbuntuImage.NAME);
        File authorized = new File(root, "root/.ssh/authorized_keys");
        authorized.getParentFile().mkdirs();
        byte[] original = Files.readAllBytes(new File(arguments[5]).toPath());
        Files.write(authorized.toPath(), original);
        try (FileInputStream key = new FileInputStream(arguments[4])) {
            try {
                UbuntuSsh.install(new ByteArrayInputStream(new byte[]{1, 2, 3}), key, files);
                throw new AssertionError("Invalid archive accepted");
            } catch (IOException expected) {
                if (!expected.getMessage().contains("archiefhash")) throw expected;
            }
        }
        for (int i = 0; i < 2; i++) try (FileInputStream archive = new FileInputStream(arguments[3]); FileInputStream key = new FileInputStream(arguments[4])) {
            UbuntuSsh.install(archive, key, files);
        }
        String keys = new String(Files.readAllBytes(authorized.toPath()), StandardCharsets.UTF_8);
        String expected = new String(Files.readAllBytes(new File(arguments[4]).toPath()), StandardCharsets.UTF_8).trim();
        if (!keys.contains(new String(original, StandardCharsets.UTF_8).trim()) || keys.indexOf(expected) != keys.lastIndexOf(expected)) throw new AssertionError("Existing keys lost or selected key duplicated");
        ProotCommand proot = new ProotCommand(files, nativeDirectory);
        UbuntuSsh.ensureHostKey(proot, files);
        File hostKey = new File(root, UbuntuSsh.HOST_KEY);
        byte[] hostIdentity = Files.readAllBytes(hostKey.toPath());
        UbuntuSsh.ensureHostKey(proot, files);
        if (!Arrays.equals(hostIdentity, Files.readAllBytes(hostKey.toPath()))) throw new AssertionError("Hostkey changed on warm start");
        String port = arguments[6];
        PtySession daemon = new PtySession(proot.command("/usr/sbin/dropbear", "-F", "-E", "-s", "-p", "0.0.0.0:" + port,
                "-r", "/" + UbuntuSsh.HOST_KEY, "-P", "/run/dropbear.pid"), proot.environment(), files.getAbsolutePath(), 24, 80, null);
        Runtime.getRuntime().addShutdownHook(new Thread(() -> {
            System.err.println(new String(daemon.output(0).bytes, StandardCharsets.UTF_8));
            daemon.stop();
            try { daemon.join(3000); } catch (InterruptedException ignored) {}
        }));
        System.out.println("READY=" + port);
        System.out.flush();
        new CountDownLatch(1).await();
    }
}
