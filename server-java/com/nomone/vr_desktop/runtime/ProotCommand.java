package com.nomone.vr_desktop.runtime;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class ProotCommand {
    private final File files;
    private final File nativeDirectory;
    private final File temporary;

    public ProotCommand(File files, File nativeDirectory) throws IOException {
        this.files = files;
        this.nativeDirectory = nativeDirectory;
        temporary = new File(files, "ubuntu-pty-tmp");
        if (!temporary.isDirectory() && !temporary.mkdirs()) throw new IOException("Kan PRoot-tijdelijke map niet maken");
    }

    public String[] command(String... guest) { return command(true, guest); }

    private String[] command(boolean terminal, String... guest) {
        List<String> command = new ArrayList<>();
        command.add(new File(nativeDirectory, "lib_bin_proot.so").getAbsolutePath());
        command.addAll(Arrays.asList("--kill-on-exit", "--link2symlink", "-L", "--root-id", "--sysvipc", "--ashmem-memfd", "-r", new File(files, UbuntuImage.NAME).getAbsolutePath(),
                "-b", "/dev", "-b", "/proc", "-b", "/sys", "-b", "/system", "-b", "/apex",
                "-b", "/storage", "-b", "/sdcard", "-b", "/mnt", "-b", "/data", "-b", "/:/host-rootfs",
                "-b", "/proc/mounts:/etc/mtab", "-b", "/dev/urandom:/dev/random", "-b", "/proc/self/fd:/dev/fd",
                "--cwd=/root"));
        if (terminal) command.addAll(Arrays.asList("-b", "/proc/self/fd/0:/dev/stdin", "-b", "/proc/self/fd/1:/dev/stdout", "-b", "/proc/self/fd/2:/dev/stderr"));
        command.addAll(Arrays.asList("/usr/bin/env", "-u", "LD_LIBRARY_PATH"));
        command.addAll(Arrays.asList(guest));
        return command.toArray(new String[0]);
    }

    public Process process(String... guest) throws IOException {
        ProcessBuilder builder = new ProcessBuilder(command(false, guest));
        builder.directory(files);
        builder.environment().clear();
        for (String entry : environment()) {
            int split = entry.indexOf('=');
            builder.environment().put(entry.substring(0, split), entry.substring(split + 1));
        }
        return builder.start();
    }

    public String[] environment() {
        return new String[]{"HOME=/root", "USER=root", "LOGNAME=root", "SHELL=/bin/bash", "TERM=xterm-256color", "LANG=C.UTF-8",
                "PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin",
                "LD_LIBRARY_PATH=" + new File(files, "common/lib") + ":" + nativeDirectory, "PROOT_TMP_DIR=" + temporary,
                "PROOT_LOADER=" + new File(files, "common/bin/loader"), "PROOT_LOADER_32=" + new File(files, "common/bin/loader32")};
    }
}
