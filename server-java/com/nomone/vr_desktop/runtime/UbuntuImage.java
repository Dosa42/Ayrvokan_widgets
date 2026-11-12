package com.nomone.vr_desktop.runtime;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;

public final class UbuntuImage {
    public static final String NAME = "Ubuntu22.04Bare";
    public static final String ASSET = "linux/ubuntu-base-22.04.5-base-arm64.tar.gz";
    public static final String SHA256 = "075d4abd2817a5023ab0a82f5cb314c5ec0aa64a9c0b40fd3154ca3bfdae979f";
    public static final String MARKER = ".ubuntu-base-22.04.5-arm64";

    private UbuntuImage() {}

    public static boolean ready(File files) {
        File root = new File(files, NAME);
        return new File(root, MARKER).isFile() && new File(root, "bin/bash").isFile()
                && new File(root, "NOMone/ProotClient").isFile();
    }

    public static File install(InputStream source, File files, File nativeDirectory) throws Exception {
        File root = new File(files, NAME);
        if (ready(files)) {
            return root;
        }
        if (root.exists()) {
            throw new IOException("Ubuntu22.04Bare bestaat al zonder installatiemarkering: " + root);
        }
        File staging = new File(files, NAME + ".installing");
        File archive = new File(files, ".ubuntu-base-22.04.5-arm64.tar.gz");
        File busybox = new File(files, "common/bin/busybox");
        command(busybox, "rm", "-rf", staging.getAbsolutePath());
        directory(staging);
        try {
            MessageDigest digest = MessageDigest.getInstance("SHA-256");
            try (FileOutputStream output = new FileOutputStream(archive)) {
                byte[] buffer = new byte[131072];
                int count;
                while ((count = source.read(buffer)) != -1) {
                    output.write(buffer, 0, count);
                    digest.update(buffer, 0, count);
                }
            }
            if (!SHA256.equals(hex(digest.digest()))) {
                throw new IOException("Ubuntu Base archiefhash komt niet overeen");
            }
            command(busybox, "tar", "-xzf", archive.getAbsolutePath(), "-C", staging.getAbsolutePath());
            for (String name : new String[]{"tmp", "dev", "proc", "sys", "mnt", "root", "run", "var/log", "NOMone"}) {
                directory(new File(staging, name));
            }
            File payload = new File(staging, "NOMone");
            File[] libraries = nativeDirectory.listFiles();
            if (libraries == null) {
                throw new IOException("NoMone native bibliotheken ontbreken");
            }
            for (File library : libraries) {
                String name = library.getName();
                if (name.startsWith("lib_proot_") && name.endsWith(".so")) {
                    File destination = new File(payload, name.substring(10, name.length() - 3));
                    try (InputStream input = new FileInputStream(library); FileOutputStream output = new FileOutputStream(destination)) {
                        transfer(input, output);
                    }
                    if (!destination.setExecutable(true, false)) {
                        throw new IOException("Kan NoMone-bestand niet uitvoerbaar maken: " + destination);
                    }
                }
            }
            for (String name : new String[]{"boot.sh", "ProotClient", "busybox_static"}) {
                if (!new File(payload, name).isFile()) {
                    throw new IOException("NoMone runtimebestand ontbreekt: " + name);
                }
            }
            write(new File(payload, "SystemReady"), "");
            write(new File(payload, "UbuntuBase22.04"), "22.04.5\n");
            File startup = new File(payload, "startup.sh");
            write(startup, "#!/bin/sh\n:\n");
            if (!startup.setExecutable(true, false)) {
                throw new IOException("Kan startup.sh niet uitvoerbaar maken");
            }
            write(new File(staging, MARKER), SHA256 + "\n");
            if (!new File(staging, "bin/bash").isFile() || !new File(staging, "etc/os-release").isFile()) {
                throw new IOException("Ubuntu Base rootfs is niet volledig uitgepakt");
            }
            if (!staging.renameTo(root)) {
                throw new IOException("Kan Ubuntu22.04Bare niet activeren");
            }
            return root;
        } finally {
            archive.delete();
            if (staging.exists()) {
                command(busybox, "rm", "-rf", staging.getAbsolutePath());
            }
        }
    }

    private static void directory(File path) throws IOException {
        if (!path.isDirectory() && !path.mkdirs()) {
            throw new IOException("Kan map niet aanmaken: " + path);
        }
    }

    private static void write(File file, String content) throws IOException {
        try (FileOutputStream output = new FileOutputStream(file)) {
            output.write(content.getBytes(StandardCharsets.UTF_8));
        }
    }

    private static void transfer(InputStream input, FileOutputStream output) throws IOException {
        byte[] buffer = new byte[131072];
        int count;
        while ((count = input.read(buffer)) != -1) {
            output.write(buffer, 0, count);
        }
    }

    private static String hex(byte[] bytes) {
        StringBuilder result = new StringBuilder();
        for (byte value : bytes) {
            result.append(String.format("%02x", value & 255));
        }
        return result.toString();
    }

    static void command(File executable, String... arguments) throws IOException, InterruptedException {
        String[] command = new String[arguments.length + 1];
        command[0] = executable.getAbsolutePath();
        System.arraycopy(arguments, 0, command, 1, arguments.length);
        Process process = new ProcessBuilder(command).redirectErrorStream(true).start();
        ByteArrayOutputStream log = new ByteArrayOutputStream();
        try (InputStream input = process.getInputStream()) {
            byte[] buffer = new byte[8192];
            int count;
            while ((count = input.read(buffer)) != -1) {
                if (log.size() < 32768) {
                    log.write(buffer, 0, Math.min(count, 32768 - log.size()));
                }
            }
        }
        int status = process.waitFor();
        if (status != 0) {
            throw new IOException("NoMone BusyBox exit " + status + ": " + new String(log.toByteArray(), StandardCharsets.UTF_8));
        }
    }
}
