package com.nomone.vr_desktop.runtime;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;

public final class UbuntuSsh {
    public static final int PORT = 8022;
    public static final String ASSET = "linux/ssh-runtime-arm64.tar.gz";
    public static final String PUBLIC_KEY_ASSET = "linux/ssh-authorized-key.pub";
    public static final String SHA256 = "2c229744faa25005aa574416126687565ef1d8fc072786f8451aa82802576975";
    public static final String HOST_KEY = "etc/dropbear/dropbear_ecdsa_host_key";

    private UbuntuSsh() {}

    public static void install(InputStream source, InputStream key, File files) throws Exception {
        File root = new File(files, UbuntuImage.NAME);
        File busybox = new File(files, "common/bin/busybox");
        File marker = new File(root, ".nomone-ssh-runtime");
        if (!marker.isFile() || !read(marker).trim().equals(SHA256)
                || !new File(root, "usr/sbin/dropbear").isFile() || !new File(root, "usr/bin/dropbearkey").isFile()
                || !new File(root, "usr/lib/aarch64-linux-gnu/libtomcrypt.so.1").isFile()
                || !new File(root, "usr/lib/aarch64-linux-gnu/libtommath.so.1").isFile()) {
            File archive = new File(files, ".nomone-ssh-runtime.tar.gz");
            try {
                MessageDigest digest = MessageDigest.getInstance("SHA-256");
                try (FileOutputStream output = new FileOutputStream(archive)) {
                    byte[] bytes = new byte[65536];
                    int count;
                    while ((count = source.read(bytes)) != -1) { digest.update(bytes, 0, count); output.write(bytes, 0, count); }
                }
                StringBuilder hash = new StringBuilder();
                for (byte value : digest.digest()) hash.append(String.format("%02x", value & 255));
                if (!hash.toString().equals(SHA256)) throw new IOException("SSH-runtime archiefhash komt niet overeen");
                UbuntuImage.command(busybox, "tar", "-xzf", archive.getAbsolutePath(), "-C", root.getAbsolutePath());
                write(marker, SHA256 + "\n");
            } finally { archive.delete(); }
        }
        File directory = new File(root, "root/.ssh");
        if (!directory.isDirectory() && !directory.mkdirs()) throw new IOException("Kan SSH-map niet maken");
        File hostDirectory = new File(root, "etc/dropbear");
        if (!hostDirectory.isDirectory() && !hostDirectory.mkdirs()) throw new IOException("Kan hostkey-map niet maken");
        File authorized = new File(directory, "authorized_keys");
        String publicKey = new String(bytes(key), StandardCharsets.UTF_8).trim();
        String[] fields = publicKey.split("\\s+");
        if (fields.length < 2 || !fields[0].equals("ssh-ed25519")) throw new IOException("Publieke SSH-clientsleutel is ongeldig");
        String existing = authorized.isFile() ? read(authorized) : "";
        if (!existing.contains(fields[1])) write(authorized, existing + (existing.isEmpty() || existing.endsWith("\n") ? "" : "\n") + publicKey + "\n");
        UbuntuImage.command(busybox, "chmod", "700", directory.getAbsolutePath());
        UbuntuImage.command(busybox, "chmod", "600", authorized.getAbsolutePath());
        for (String name : new String[]{"run/utmp", "var/log/wtmp"}) {
            File database = new File(root, name);
            if (!database.exists() && !database.createNewFile()) throw new IOException("Kan SSH-loginbestand niet maken: " + name);
        }
    }

    public static void ensureHostKey(ProotCommand proot, File files) throws Exception {
        File hostKey = new File(new File(files, UbuntuImage.NAME), HOST_KEY);
        if (hostKey.isFile()) return;
        PtySession generator = new PtySession(proot.command("/usr/bin/dropbearkey", "-t", "ecdsa", "-s", "256", "-f", "/" + HOST_KEY),
                proot.environment(), files.getAbsolutePath(), 24, 80, null);
        try {
            generator.join(15000);
            if (generator.running()) throw new IOException("SSH-hostkey genereren duurt te lang");
            if (generator.exitStatus() != 0 || !hostKey.isFile()) throw new IOException("SSH-hostkey maken mislukt: " + new String(generator.output(0).bytes, StandardCharsets.UTF_8));
        } finally { generator.stop(); generator.join(3000); }
    }

    private static byte[] bytes(InputStream source) throws IOException {
        ByteArrayOutputStream output = new ByteArrayOutputStream();
        byte[] buffer = new byte[8192];
        int count;
        while ((count = source.read(buffer)) != -1) output.write(buffer, 0, count);
        return output.toByteArray();
    }

    private static String read(File path) throws IOException {
        try (InputStream input = new FileInputStream(path)) { return new String(bytes(input), StandardCharsets.UTF_8); }
    }

    private static void write(File path, String value) throws IOException {
        try (FileOutputStream output = new FileOutputStream(path)) { output.write(value.getBytes(StandardCharsets.UTF_8)); }
    }
}
