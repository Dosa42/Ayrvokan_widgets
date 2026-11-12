import com.nomone.vr_desktop.runtime.UbuntuImage;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;

public final class UbuntuImageTest {
    public static void main(String[] arguments) throws Exception {
        File files = new File(arguments[0]);
        File libraries = new File(arguments[1]);
        File archive = new File(arguments[2]);
        File corrupt = new File(files, "corrupt-case");
        new File(corrupt, "common/bin").mkdirs();
        Files.createSymbolicLink(new File(corrupt, "common/bin/busybox").toPath(), new File(files, "common/bin/busybox").toPath());
        try {
            UbuntuImage.install(new ByteArrayInputStream(new byte[]{1, 2, 3}), corrupt, libraries);
            throw new AssertionError("Corrupt archive was accepted");
        } catch (java.io.IOException expected) {
            if (new File(corrupt, UbuntuImage.NAME).exists()) {
                throw new AssertionError("Incomplete image was activated");
            }
        }
        if (UbuntuImage.ready(files)) {
            throw new AssertionError("Fresh installation already marked ready");
        }
        File root;
        try (FileInputStream input = new FileInputStream(archive)) {
            root = UbuntuImage.install(input, files, libraries);
        }
        if (!UbuntuImage.ready(files)) {
            throw new AssertionError("Installed image not ready");
        }
        String release = new String(Files.readAllBytes(new File(root, "etc/os-release").toPath()), StandardCharsets.UTF_8);
        if (!release.contains("VERSION_ID=\"22.04\"")) {
            throw new AssertionError(release);
        }
        File note = new File(root, "root/user-file.txt");
        Files.write(note.toPath(), "retained".getBytes(StandardCharsets.UTF_8));
        UbuntuImage.install(new ByteArrayInputStream(new byte[0]), files, libraries);
        if (!new String(Files.readAllBytes(note.toPath()), StandardCharsets.UTF_8).equals("retained")) {
            throw new AssertionError("Installed image was extracted again");
        }
        if (!new File(root, "NOMone/SystemReady").isFile() || !new File(root, "NOMone/startup.sh").canExecute()) {
            throw new AssertionError("Bare startup integration missing");
        }
        System.out.println("UbuntuImage integration passed: archive rejection, extraction, Ubuntu identity, NoMone payload, repeat launch");
    }
}
