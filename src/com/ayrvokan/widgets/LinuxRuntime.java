package com.ayrvokan.widgets;

import android.content.Context;
import android.system.Os;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

final class LinuxRuntime {
    final Context context;
    final File files;
    final File root;
    final File runtime;
    final String nativeDir;

    LinuxRuntime(Context context) {
        this.context = context.getApplicationContext();
        files = context.getFilesDir();
        root = new File(files, "KaliMinimal");
        runtime = new File(files, "runtime");
        nativeDir = context.getApplicationInfo().nativeLibraryDir;
    }

    void prepare() throws Exception {
        runtime.mkdirs();
        new File(runtime, "tmp").mkdirs();
        File libraries = new File(runtime, "lib");
        libraries.mkdirs();
        File talloc = new File(libraries, "libtalloc.so.2");
        if (talloc.exists() || java.nio.file.Files.isSymbolicLink(talloc.toPath())) {
            if (!talloc.delete()) throw new IllegalStateException("Could not update the Linux runtime library link");
        }
        Os.symlink(nativeDir + "/libtalloc.so", talloc.getAbsolutePath());
        File marker = new File(root, ".widget-ready");
        if (!marker.isFile()) {
            File stage = new File(files, ".kali-install");
            Process cleanup = new ProcessBuilder("/system/bin/toybox", "rm", "-rf", stage.getAbsolutePath()).start();
            if (cleanup.waitFor() != 0) throw new IllegalStateException("Could not clear the interrupted installation");
            stage.mkdirs();
            File archive = new File(files, ".kali-rootfs.tar.gz");
            try (InputStream input = context.getAssets().open("linux/kali-minimal.tar.gz"); FileOutputStream output = new FileOutputStream(archive)) {
                byte[] buffer = new byte[1048576];
                int count;
                while ((count = input.read(buffer)) >= 0) output.write(buffer, 0, count);
            }
            Process extraction = new ProcessBuilder("/system/bin/toybox", "tar", "-xozf", archive.getAbsolutePath(), "-C", stage.getAbsolutePath()).redirectErrorStream(true).start();
            String extractionLog = readAll(extraction.getInputStream());
            if (extraction.waitFor() != 0) throw new IllegalStateException("Kali extraction failed: " + extractionLog);
            File prepared = new File(stage, "KaliMinimal");
            if (!new File(prepared, "bin/bash").canExecute()) throw new IllegalStateException("Kali shell is missing");
            write(new File(prepared, ".widget-ready"), "1\n");
            if (root.exists() || !prepared.renameTo(root)) throw new IllegalStateException("Could not finish installing Kali");
            archive.delete();
            stage.delete();
        }
        File bridge = new File(root, "opt/ayrvokan");
        bridge.mkdirs();
        try (InputStream input = context.getAssets().open("bridge/files.py"); FileOutputStream output = new FileOutputStream(new File(bridge, "files.py"))) {
            byte[] buffer = new byte[8192];
            int count;
            while ((count = input.read(buffer)) >= 0) output.write(buffer, 0, count);
        }
        new File(root, "root/workspace").mkdirs();
        new File(root, "dev").mkdirs();
        new File(root, "proc").mkdirs();
        new File(root, "sys").mkdirs();
        new File(root, "tmp").mkdirs();
        prepareAgent();
        prepareProxy();
        prepareVekil();
        prepareDikte();
        prepareConsole();
        copyAsset("bridge/network_hq.py", new File(root, "opt/ayrvokan/network_hq.py"));
    }

    private void prepareConsole() throws Exception {
        JSONObject version;
        try (InputStream input = context.getAssets().open("console/version.json")) { version = new JSONObject(readAll(input)); }
        File directory = new File(root, "opt/ayrvokan/console");
        directory.mkdirs();
        installAsset("console/ayrvokan-pad-lab.pyz", new File(directory, "ayrvokan-pad-lab.pyz"), version.getString("sha256"), false);
        installAsset("console/games/asciiinvaders-live.zip", new File(directory, "games/asciiinvaders-live.zip"), version.getString("game_sha256"), false);
        String expected = version.getString("libraries_sha256");
        File marker = new File(directory, ".libraries-sha256");
        boolean installed = false;
        if (marker.isFile()) try (InputStream input = new java.io.FileInputStream(marker)) { installed = expected.equals(readAll(input).trim()); }
        if (!installed) {
            File archive = new File(directory, "emulator-libs.tar.gz");
            installAsset("console/emulator-libs.tar.gz", archive, expected, false);
            new File(directory, "lib").mkdirs();
            ProcessBuilder builder = new ProcessBuilder(command("/bin/tar", "-xzf", "/opt/ayrvokan/console/emulator-libs.tar.gz", "-C", "/opt/ayrvokan/console/lib"));
            builder.environment().clear();
            builder.environment().putAll(environment());
            builder.redirectErrorStream(true);
            Process extraction = builder.start();
            String log = readAll(extraction.getInputStream());
            if (extraction.waitFor() != 0) throw new IllegalStateException("Console libraries: " + log);
            write(marker, expected + "\n");
        }
    }

    private void prepareDikte() throws Exception {
        File directory = new File(root, "opt/ayrvokan/dikte-2.4.0");
        JSONObject version;
        try (InputStream input = context.getAssets().open("dikte/version.json")) { version = new JSONObject(readAll(input)); }
        File marker = new File(directory, ".source-sha256");
        String expected = version.getString("sha256");
        boolean installed = false;
        if (marker.isFile()) try (InputStream input = new java.io.FileInputStream(marker)) { installed = expected.equals(readAll(input).trim()); }
        if (!installed) {
            directory.mkdirs();
            try (java.util.zip.ZipInputStream input = new java.util.zip.ZipInputStream(context.getAssets().open("dikte/source.zip"))) {
                java.util.zip.ZipEntry entry;
                byte[] buffer = new byte[65536];
                while ((entry = input.getNextEntry()) != null) {
                    File target = new File(directory, entry.getName());
                    target.getParentFile().mkdirs();
                    if (!entry.isDirectory()) try (FileOutputStream output = new FileOutputStream(target)) {
                        int count;
                        while ((count = input.read(buffer)) >= 0) output.write(buffer, 0, count);
                    }
                }
            }
            write(marker, expected + "\n");
        }
        File executable = new File(directory, "dikte/__main__.py");
        executable.setExecutable(true, true);
        File launcher = new File(root, "usr/local/bin/dikte");
        launcher.getParentFile().mkdirs();
        if (!java.nio.file.Files.isSymbolicLink(launcher.toPath())) java.nio.file.Files.createSymbolicLink(launcher.toPath(), java.nio.file.Paths.get("../../../opt/ayrvokan/dikte-2.4.0/dikte/__main__.py"));
        for (String name : new String[]{"dikte_desktop.py", "dikte_gui_entry.py", "dikte_audio.py"}) copyAsset("bridge/" + name, new File(root, "opt/ayrvokan/" + name));
        File web = new File(root, "opt/ayrvokan/dikte-desktop/web");
        web.mkdirs();
        copyAsset("dikte/viewer/index.html", new File(web, "index.html"));
        copyAsset("dikte/viewer/viewer.js", new File(web, "viewer.js"));
        try (java.util.zip.ZipInputStream input = new java.util.zip.ZipInputStream(context.getAssets().open("dikte/novnc.zip"))) {
            java.util.zip.ZipEntry entry;
            byte[] buffer = new byte[65536];
            while ((entry = input.getNextEntry()) != null) {
                File target = new File(web, entry.getName());
                target.getParentFile().mkdirs();
                if (!entry.isDirectory()) try (FileOutputStream output = new FileOutputStream(target)) {
                    int count;
                    while ((count = input.read(buffer)) >= 0) output.write(buffer, 0, count);
                }
            }
        }
        File dependencies = new File(root, "opt/ayrvokan/.dikte-desktop-ready");
        String expectedRuntime = version.getString("desktop_runtime_sha256");
        boolean prepared = false;
        if (dependencies.isFile()) try (InputStream input = new java.io.FileInputStream(dependencies)) { prepared = expectedRuntime.equals(readAll(input).trim()); }
        if (!prepared) {
            File archive = new File(root, "opt/ayrvokan/dikte-desktop-runtime.tar.gz");
            copyAsset("dikte/desktop-runtime.tar.gz", archive);
            ProcessBuilder builder = new ProcessBuilder(command("/bin/tar", "-xzf", "/opt/ayrvokan/dikte-desktop-runtime.tar.gz", "-C", "/"));
            builder.environment().clear();
            builder.environment().putAll(environment());
            builder.redirectErrorStream(true);
            Process extraction = builder.start();
            String log = readAll(extraction.getInputStream());
            if (extraction.waitFor() != 0) throw new IllegalStateException("Dikte desktop dependencies: " + log);
            archive.delete();
            write(dependencies, expectedRuntime + "\n");
        }
    }

    private void prepareAgent() throws Exception {
        String expected;
        try (InputStream input = context.getAssets().open("agent/version.json")) { expected = new JSONObject(readAll(input)).getString("sha256"); }
        File binary = new File(root, "usr/local/bin/ayrvokan-agent");
        File marker = new File(root, "opt/ayrvokan/agent-version");
        if (binary.canExecute() && marker.isFile()) {
            try (InputStream input = new java.io.FileInputStream(marker)) { if (expected.equals(readAll(input).trim())) return; }
        }
        binary.getParentFile().mkdirs();
        File staged = new File(binary.getParentFile(), ".ayrvokan-agent-new");
        java.security.MessageDigest digest = java.security.MessageDigest.getInstance("SHA-256");
        try (InputStream input = context.getAssets().open("agent/ayrvokan-agent"); FileOutputStream output = new FileOutputStream(staged)) {
            byte[] buffer = new byte[65536];
            int count;
            while ((count = input.read(buffer)) >= 0) { output.write(buffer, 0, count); digest.update(buffer, 0, count); }
        }
        StringBuilder actual = new StringBuilder();
        for (byte value : digest.digest()) actual.append(String.format("%02x", value & 255));
        if (!expected.equals(actual.toString())) throw new IllegalStateException("Agent binary copy was incomplete");
        if (!staged.setExecutable(true, false) || !staged.renameTo(binary)) throw new IllegalStateException("Could not install Ayrvokan Agent");
        write(marker, expected + "\n");
    }

    private void prepareVekil() throws Exception {
        JSONObject version;
        try (InputStream input = context.getAssets().open("vekil/version.json")) { version = new JSONObject(readAll(input)); }
        installAsset("vekil/vekil-kaan", new File(root, "usr/local/bin/vekil-kaan"), version.getString("sha256"), true);
    }

    private void prepareProxy() throws Exception {
        File directory = new File(root, "root/.ayrvokan-cliproxy");
        directory.mkdirs();
        new File(directory, "auth").mkdirs();
        new File(directory, "plugins").mkdirs();
        File secret = new File(directory, "management-key");
        if (!secret.isFile()) write(secret, java.util.UUID.randomUUID().toString() + "\n");
        File config = new File(directory, "config.yaml");
        if (!config.isFile()) write(config, "config-version: 8\nserver:\n  host: \"0.0.0.0\"\n  port: 8317\nmanagement:\n  allow-remote: true\n  secret-key: \"\"\n  disable-control-panel: false\n  disable-auto-update-panel: false\naccess:\n  api-keys: []\noauth:\n  auth-dir: \"/root/.ayrvokan-cliproxy/auth\"\n");
        JSONObject version;
        try (InputStream input = context.getAssets().open("cliproxy/version.json")) { version = new JSONObject(readAll(input)); }
        installAsset("cliproxy/cli-proxy-api", new File(root, "usr/local/bin/cli-proxy-api"), version.getString("sha256"), true);
        File panel = new File(directory, "static/management.html");
        installAsset("cliproxy/management.html", panel, version.getString("panel_sha256"), false);
        copyAsset("cliproxy/config.example.yaml", new File(directory, "config.example.yaml"));
        copyAsset("cliproxy/version.json", new File(directory, "version.json"));
    }

    private void copyAsset(String asset, File target) throws Exception {
        target.getParentFile().mkdirs();
        try (InputStream input = context.getAssets().open(asset); FileOutputStream output = new FileOutputStream(target)) {
            byte[] buffer = new byte[65536];
            int count;
            while ((count = input.read(buffer)) >= 0) output.write(buffer, 0, count);
        }
    }

    private void installAsset(String asset, File target, String expected, boolean executable) throws Exception {
        File marker = new File(root, "opt/ayrvokan/" + target.getName() + ".sha256");
        if (target.isFile() && (!executable || target.canExecute()) && marker.isFile()) {
            try (InputStream input = new java.io.FileInputStream(marker)) { if (expected.equals(readAll(input).trim())) return; }
        }
        File staged = new File(target.getParentFile(), "." + target.getName() + ".new");
        copyAsset(asset, staged);
        java.security.MessageDigest digest = java.security.MessageDigest.getInstance("SHA-256");
        try (InputStream input = new java.io.FileInputStream(staged)) {
            byte[] buffer = new byte[65536];
            int count;
            while ((count = input.read(buffer)) >= 0) digest.update(buffer, 0, count);
        }
        StringBuilder actual = new StringBuilder();
        for (byte value : digest.digest()) actual.append(String.format("%02x", value & 255));
        if (!expected.equals(actual.toString())) throw new IllegalStateException("Incomplete asset: " + asset);
        if (executable && !staged.setExecutable(true, false)) throw new IllegalStateException("Could not make executable: " + asset);
        if (!staged.renameTo(target)) throw new IllegalStateException("Could not install: " + asset);
        write(marker, expected + "\n");
    }

    List<String> command(String... guestCommand) {
        List<String> command = new ArrayList<>(Arrays.asList(nativeDir + "/libproot.so", "-0", "-r", root.getAbsolutePath(), "-b", "/dev", "-b", "/proc", "-b", "/sys", "-b", "/system", "-b", "/apex", "-b", "/storage", "-b", "/sdcard", "-b", "/data", "-b", "/vendor", "-b", "/product", "-b", "/odm", "-b", "/mnt", "-b", new File(runtime, "tmp").getAbsolutePath() + ":/tmp", "--sysvipc", "-H", "-L", "-p", "--ashmem-memfd", "--kernel-release=" + System.getProperty("os.version"), "--link2symlink", "--kill-on-exit", "-w", "/root", "/usr/bin/env", "-i", "HOME=/root", "USER=root", "LOGNAME=root", "TERM=xterm-256color", "COLORTERM=truecolor", "LANG=C.UTF-8", "LC_ALL=C.UTF-8", "PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"));
        command.addAll(Arrays.asList(guestCommand));
        return command;
    }

    Map<String, String> environment() {
        Map<String, String> values = new LinkedHashMap<>();
        values.put("PATH", "/system/bin");
        values.put("HOME", files.getAbsolutePath());
        values.put("TMPDIR", new File(runtime, "tmp").getAbsolutePath());
        values.put("PROOT_TMP_DIR", new File(runtime, "tmp").getAbsolutePath());
        values.put("PROOT_LOADER", nativeDir + "/libprootloader.so");
        values.put("LD_LIBRARY_PATH", new File(runtime, "lib").getAbsolutePath());
        values.put("ANDROID_ROOT", "/system");
        values.put("ANDROID_DATA", "/data");
        return values;
    }

    String[] environmentArray() {
        return environment().entrySet().stream().map(entry -> entry.getKey() + "=" + entry.getValue()).toArray(String[]::new);
    }

    JSONObject filesystem(String operation, String path, String extra, String content) throws Exception {
        List<String> command = command("/usr/bin/python3", "/opt/ayrvokan/files.py", operation, path);
        if (extra != null) command.add(extra);
        ProcessBuilder builder = new ProcessBuilder(command);
        builder.environment().clear();
        builder.environment().putAll(environment());
        builder.redirectError(ProcessBuilder.Redirect.appendTo(new File(runtime, "filesystem-errors.log")));
        Process process = builder.start();
        try (java.io.OutputStream input = process.getOutputStream()) {
            if (content != null) input.write(content.getBytes(StandardCharsets.UTF_8));
        }
        String output = readAll(process.getInputStream());
        int code = process.waitFor();
        JSONObject result;
        try { result = new JSONObject(output); }
        catch (Exception error) { throw new IllegalStateException("Linux filesystem command failed (" + code + "): " + output); }
        if (!result.optBoolean("ok")) throw new IllegalStateException(result.optString("error", "Filesystem operation failed"));
        return result.getJSONObject("result");
    }

    static String readAll(InputStream input) throws Exception {
        ByteArrayOutputStream output = new ByteArrayOutputStream();
        byte[] buffer = new byte[8192];
        int count;
        while ((count = input.read(buffer)) >= 0) output.write(buffer, 0, count);
        return output.toString("UTF-8");
    }

    static void write(File file, String text) throws Exception {
        try (FileOutputStream output = new FileOutputStream(file)) { output.write(text.getBytes(StandardCharsets.UTF_8)); }
    }
}
