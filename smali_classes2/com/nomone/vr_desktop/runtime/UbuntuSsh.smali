.class public final Lcom/nomone/vr_desktop/runtime/UbuntuSsh;
.super Ljava/lang/Object;
.source "UbuntuSsh.java"

.field public final static ASSET:Ljava/lang/String; = "linux/ssh-runtime-arm64.tar.gz"

.field public final static HOST_KEY:Ljava/lang/String; = "etc/dropbear/dropbear_ecdsa_host_key"

.field public final static PORT:I = 8022

.field public final static PUBLIC_KEY_ASSET:Ljava/lang/String; = "linux/ssh-authorized-key.pub"

.field public final static SHA256:Ljava/lang/String; = "2c229744faa25005aa574416126687565ef1d8fc072786f8451aa82802576975"

.method private constructor <init>()V
  .registers 1
  .line 19
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method private static bytes(Ljava/io/InputStream;)[B
  .annotation system Ldalvik/annotation/Throws;
    value = {
      Ljava/io/IOException;
    }
  .end annotation
  .registers 5
  .line 75
    new-instance v0, Ljava/io/ByteArrayOutputStream;
    invoke-direct { v0 }, Ljava/io/ByteArrayOutputStream;-><init>()V
  .line 76
    const/16 v1, 8192
    new-array v1, v1, [B
  :L0
  .line 78
    invoke-virtual { p0, v1 }, Ljava/io/InputStream;->read([B)I
    move-result v2
    const/4 v3, -1
    if-eq v2, v3, :L1
    const/4 v3, 0
    invoke-virtual { v0, v1, v3, v2 }, Ljava/io/ByteArrayOutputStream;->write([BII)V
    goto :L0
  :L1
  .line 79
    invoke-virtual { v0 }, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    move-result-object p0
    return-object p0
.end method

.method public static ensureHostKey(Lcom/nomone/vr_desktop/runtime/ProotCommand;Ljava/io/File;)V
  .annotation system Ldalvik/annotation/Throws;
    value = {
      Ljava/lang/Exception;
    }
  .end annotation
  .catchall { :L1 .. :L2 } :L5
  .catchall { :L3 .. :L5 } :L5
  .registers 12
  .line 63
    new-instance v0, Ljava/io/File;
    new-instance v1, Ljava/io/File;
    const-string v2, "Ubuntu22.04Bare"
    invoke-direct { v1, p1, v2 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    const-string v2, "etc/dropbear/dropbear_ecdsa_host_key"
    invoke-direct { v0, v1, v2 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
  .line 64
    invoke-virtual { v0 }, Ljava/io/File;->isFile()Z
    move-result v1
    if-eqz v1, :L0
    return-void
  :L0
  .line 65
    new-instance v2, Lcom/nomone/vr_desktop/runtime/PtySession;
    const-string v8, "-f"
    const-string v9, "/etc/dropbear/dropbear_ecdsa_host_key"
    const-string v3, "/usr/bin/dropbearkey"
    const-string v4, "-t"
    const-string v5, "ecdsa"
    const-string v6, "-s"
    const-string v7, "256"
    filled-new-array/range { v3 .. v9 }, [Ljava/lang/String;
    move-result-object v1
    invoke-virtual { p0, v1 }, Lcom/nomone/vr_desktop/runtime/ProotCommand;->command([Ljava/lang/String;)[Ljava/lang/String;
    move-result-object v3
  .line 66
    invoke-virtual { p0 }, Lcom/nomone/vr_desktop/runtime/ProotCommand;->environment()[Ljava/lang/String;
    move-result-object v4
    invoke-virtual { p1 }, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v5
    const/16 v7, 80
    const/4 v8, 0
    const/16 v6, 24
    invoke-direct/range { v2 .. v8 }, Lcom/nomone/vr_desktop/runtime/PtySession;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;IILcom/nomone/vr_desktop/runtime/PtySession$Listener;)V
  .line 68
    const-wide/16 p0, 15000
    const-wide/16 v3, 3000
  :L1
    invoke-virtual { v2, p0, p1 }, Lcom/nomone/vr_desktop/runtime/PtySession;->join(J)V
  .line 69
    invoke-virtual { v2 }, Lcom/nomone/vr_desktop/runtime/PtySession;->running()Z
    move-result p0
    if-nez p0, :L4
  .line 70
    invoke-virtual { v2 }, Lcom/nomone/vr_desktop/runtime/PtySession;->exitStatus()I
    move-result p0
    if-nez p0, :L3
    invoke-virtual { v0 }, Ljava/io/File;->isFile()Z
    move-result p0
  :L2
    if-eqz p0, :L3
  .line 71
    invoke-virtual { v2 }, Lcom/nomone/vr_desktop/runtime/PtySession;->stop()V
    invoke-virtual { v2, v3, v4 }, Lcom/nomone/vr_desktop/runtime/PtySession;->join(J)V
  .line 72
    return-void
  :L3
  .line 70
    new-instance p0, Ljava/io/IOException;
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "SSH-hostkey maken mislukt: "
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object p1
    new-instance v0, Ljava/lang/String;
    const-wide/16 v5, 0
    invoke-virtual { v2, v5, v6 }, Lcom/nomone/vr_desktop/runtime/PtySession;->output(J)Lcom/nomone/vr_desktop/runtime/PtySession$Output;
    move-result-object v1
    iget-object v1, v1, Lcom/nomone/vr_desktop/runtime/PtySession$Output;->bytes:[B
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;
    invoke-direct { v0, v1, v5 }, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object p1
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { p0, p1 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw p0
  :L4
  .line 69
    new-instance p0, Ljava/io/IOException;
    const-string p1, "SSH-hostkey genereren duurt te lang"
    invoke-direct { p0, p1 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw p0
  :L5
  .line 71
    move-exception v0
    move-object p0, v0
    invoke-virtual { v2 }, Lcom/nomone/vr_desktop/runtime/PtySession;->stop()V
    invoke-virtual { v2, v3, v4 }, Lcom/nomone/vr_desktop/runtime/PtySession;->join(J)V
    throw p0
.end method

.method public static install(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/io/File;)V
  .annotation system Ldalvik/annotation/Throws;
    value = {
      Ljava/lang/Exception;
    }
  .end annotation
  .catchall { :L1 .. :L2 } :L32
  .catchall { :L3 .. :L5 } :L26
  .catchall { :L6 .. :L9 } :L32
  .catchall { :L25 .. :L26 } :L32
  .catchall { :L27 .. :L28 } :L29
  .catchall { :L30 .. :L32 } :L32
  .registers 13
  .line 22
    new-instance v0, Ljava/io/File;
    const-string v1, "Ubuntu22.04Bare"
    invoke-direct { v0, p2, v1 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
  .line 23
    new-instance v1, Ljava/io/File;
    const-string v2, "common/bin/busybox"
    invoke-direct { v1, p2, v2 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
  .line 24
    new-instance v2, Ljava/io/File;
    const-string v3, ".nomone-ssh-runtime"
    invoke-direct { v2, v0, v3 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
  .line 25
    invoke-virtual { v2 }, Ljava/io/File;->isFile()Z
    move-result v3
    const-string v4, "2c229744faa25005aa574416126687565ef1d8fc072786f8451aa82802576975"
    const/4 v5, 0
    if-eqz v3, :L0
    invoke-static { v2 }, Lcom/nomone/vr_desktop/runtime/UbuntuSsh;->read(Ljava/io/File;)Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v3 }, Ljava/lang/String;->trim()Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v3, v4 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :L0
    new-instance v3, Ljava/io/File;
    const-string v6, "usr/sbin/dropbear"
    invoke-direct { v3, v0, v6 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
  .line 26
    invoke-virtual { v3 }, Ljava/io/File;->isFile()Z
    move-result v3
    if-eqz v3, :L0
    new-instance v3, Ljava/io/File;
    const-string v6, "usr/bin/dropbearkey"
    invoke-direct { v3, v0, v6 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    invoke-virtual { v3 }, Ljava/io/File;->isFile()Z
    move-result v3
    if-eqz v3, :L0
    new-instance v3, Ljava/io/File;
    const-string v6, "usr/lib/aarch64-linux-gnu/libtomcrypt.so.1"
    invoke-direct { v3, v0, v6 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
  .line 27
    invoke-virtual { v3 }, Ljava/io/File;->isFile()Z
    move-result v3
    if-eqz v3, :L0
    new-instance v3, Ljava/io/File;
    const-string v6, "usr/lib/aarch64-linux-gnu/libtommath.so.1"
    invoke-direct { v3, v0, v6 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
  .line 28
    invoke-virtual { v3 }, Ljava/io/File;->isFile()Z
    move-result v3
    if-nez v3, :L10
  :L0
  .line 29
    new-instance v3, Ljava/io/File;
    const-string v6, ".nomone-ssh-runtime.tar.gz"
    invoke-direct { v3, p2, v6 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
  :L1
  .line 31
    const-string p2, "SHA-256"
    invoke-static { p2 }, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    move-result-object p2
  .line 32
    new-instance v6, Ljava/io/FileOutputStream;
    invoke-direct { v6, v3 }, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
  :L2
  .line 33
    const/high16 v7, 65536
  :L3
    new-array v7, v7, [B
  :L4
  .line 35
    invoke-virtual { p0, v7 }, Ljava/io/InputStream;->read([B)I
    move-result v8
    const/4 v9, -1
    if-eq v8, v9, :L6
    invoke-virtual { p2, v7, v5, v8 }, Ljava/security/MessageDigest;->update([BII)V
    invoke-virtual { v6, v7, v5, v8 }, Ljava/io/FileOutputStream;->write([BII)V
  :L5
    goto :L4
  :L6
  .line 36
    invoke-virtual { v6 }, Ljava/io/FileOutputStream;->close()V
  .line 37
    new-instance p0, Ljava/lang/StringBuilder;
    invoke-direct { p0 }, Ljava/lang/StringBuilder;-><init>()V
  .line 38
    invoke-virtual { p2 }, Ljava/security/MessageDigest;->digest()[B
    move-result-object p2
    array-length v6, p2
    move v7, v5
  :L7
    if-ge v7, v6, :L8
    aget-byte v8, p2, v7
    const-string v9, "%02x"
    and-int/lit16 v8, v8, 255
    invoke-static { v8 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v8
    filled-new-array { v8 }, [Ljava/lang/Object;
    move-result-object v8
    invoke-static { v9, v8 }, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v8
    invoke-virtual { p0, v8 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    add-int/lit8 v7, v7, 1
    goto :L7
  :L8
  .line 39
    invoke-virtual { p0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    invoke-virtual { p0, v4 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p0
    if-eqz p0, :L25
  .line 40
    const-string p0, "tar"
    const-string p2, "-xzf"
    invoke-virtual { v3 }, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v4
    const-string v6, "-C"
    invoke-virtual { v0 }, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v7
    filled-new-array { p0, p2, v4, v6, v7 }, [Ljava/lang/String;
    move-result-object p0
    invoke-static { v1, p0 }, Lcom/nomone/vr_desktop/runtime/UbuntuImage;->command(Ljava/io/File;[Ljava/lang/String;)V
  .line 41
    const-string p0, "2c229744faa25005aa574416126687565ef1d8fc072786f8451aa82802576975\n"
    invoke-static { v2, p0 }, Lcom/nomone/vr_desktop/runtime/UbuntuSsh;->write(Ljava/io/File;Ljava/lang/String;)V
  :L9
  .line 42
    invoke-virtual { v3 }, Ljava/io/File;->delete()Z
  :L10
  .line 44
    new-instance p0, Ljava/io/File;
    const-string p2, "root/.ssh"
    invoke-direct { p0, v0, p2 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
  .line 45
    invoke-virtual { p0 }, Ljava/io/File;->isDirectory()Z
    move-result p2
    if-nez p2, :L12
    invoke-virtual { p0 }, Ljava/io/File;->mkdirs()Z
    move-result p2
    if-eqz p2, :L11
    goto :L12
  :L11
    new-instance p0, Ljava/io/IOException;
    const-string p1, "Kan SSH-map niet maken"
    invoke-direct { p0, p1 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw p0
  :L12
  .line 46
    new-instance p2, Ljava/io/File;
    const-string v2, "etc/dropbear"
    invoke-direct { p2, v0, v2 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
  .line 47
    invoke-virtual { p2 }, Ljava/io/File;->isDirectory()Z
    move-result v2
    if-nez v2, :L14
    invoke-virtual { p2 }, Ljava/io/File;->mkdirs()Z
    move-result p2
    if-eqz p2, :L13
    goto :L14
  :L13
    new-instance p0, Ljava/io/IOException;
    const-string p1, "Kan hostkey-map niet maken"
    invoke-direct { p0, p1 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw p0
  :L14
  .line 48
    new-instance p2, Ljava/io/File;
    const-string v2, "authorized_keys"
    invoke-direct { p2, p0, v2 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
  .line 49
    new-instance v2, Ljava/lang/String;
    invoke-static { p1 }, Lcom/nomone/vr_desktop/runtime/UbuntuSsh;->bytes(Ljava/io/InputStream;)[B
    move-result-object p1
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;
    invoke-direct { v2, p1, v3 }, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    invoke-virtual { v2 }, Ljava/lang/String;->trim()Ljava/lang/String;
    move-result-object p1
  .line 50
    const-string v2, "\\s+"
    invoke-virtual { p1, v2 }, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object v2
  .line 51
    array-length v3, v2
    const/4 v4, 2
    if-lt v3, v4, :L24
    aget-object v3, v2, v5
    const-string v6, "ssh-ed25519"
    invoke-virtual { v3, v6 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :L24
  .line 52
    invoke-virtual { p2 }, Ljava/io/File;->isFile()Z
    move-result v3
    const-string v6, ""
    if-eqz v3, :L15
    invoke-static { p2 }, Lcom/nomone/vr_desktop/runtime/UbuntuSsh;->read(Ljava/io/File;)Ljava/lang/String;
    move-result-object v3
    goto :L16
  :L15
    move-object v3, v6
  :L16
  .line 53
    const/4 v7, 1
    aget-object v2, v2, v7
    invoke-virtual { v3, v2 }, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    move-result v2
    if-nez v2, :L19
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v3 }, Ljava/lang/String;->isEmpty()Z
    move-result v7
    const-string v8, "\n"
    if-nez v7, :L18
    invoke-virtual { v3, v8 }, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v3
    if-eqz v3, :L17
    goto :L18
  :L17
    move-object v6, v8
  :L18
    invoke-virtual { v2, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object p1
    invoke-virtual { p1, v8 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object p1
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-static { p2, p1 }, Lcom/nomone/vr_desktop/runtime/UbuntuSsh;->write(Ljava/io/File;Ljava/lang/String;)V
  :L19
  .line 54
    const-string p1, "700"
    invoke-virtual { p0 }, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object p0
    const-string v2, "chmod"
    filled-new-array { v2, p1, p0 }, [Ljava/lang/String;
    move-result-object p0
    invoke-static { v1, p0 }, Lcom/nomone/vr_desktop/runtime/UbuntuImage;->command(Ljava/io/File;[Ljava/lang/String;)V
  .line 55
    const-string p0, "600"
    invoke-virtual { p2 }, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object p1
    filled-new-array { v2, p0, p1 }, [Ljava/lang/String;
    move-result-object p0
    invoke-static { v1, p0 }, Lcom/nomone/vr_desktop/runtime/UbuntuImage;->command(Ljava/io/File;[Ljava/lang/String;)V
  .line 56
    const-string p0, "run/utmp"
    const-string p1, "var/log/wtmp"
    filled-new-array { p0, p1 }, [Ljava/lang/String;
    move-result-object p0
  :L20
    if-ge v5, v4, :L23
    aget-object p1, p0, v5
  .line 57
    new-instance p2, Ljava/io/File;
    invoke-direct { p2, v0, p1 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
  .line 58
    invoke-virtual { p2 }, Ljava/io/File;->exists()Z
    move-result v1
    if-nez v1, :L22
    invoke-virtual { p2 }, Ljava/io/File;->createNewFile()Z
    move-result p2
    if-eqz p2, :L21
    goto :L22
  :L21
    new-instance p0, Ljava/io/IOException;
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "Kan SSH-loginbestand niet maken: "
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object p2
    invoke-virtual { p2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object p1
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { p0, p1 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw p0
  :L22
  .line 56
    add-int/lit8 v5, v5, 1
    goto :L20
  :L23
  .line 60
    return-void
  :L24
  .line 51
    new-instance p0, Ljava/io/IOException;
    const-string p1, "Publieke SSH-clientsleutel is ongeldig"
    invoke-direct { p0, p1 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw p0
  :L25
  .line 39
    new-instance p0, Ljava/io/IOException;
    const-string p1, "SSH-runtime archiefhash komt niet overeen"
    invoke-direct { p0, p1 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw p0
  :L26
  .line 32
    move-exception p0
  :L27
    invoke-virtual { v6 }, Ljava/io/FileOutputStream;->close()V
  :L28
    goto :L31
  :L29
    move-exception p1
  :L30
    invoke-virtual { p0, p1 }, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
  :L31
    throw p0
  :L32
  .line 42
    move-exception p0
    invoke-virtual { v3 }, Ljava/io/File;->delete()Z
    throw p0
.end method

.method private static read(Ljava/io/File;)Ljava/lang/String;
  .annotation system Ldalvik/annotation/Throws;
    value = {
      Ljava/io/IOException;
    }
  .end annotation
  .catchall { :L0 .. :L1 } :L2
  .catchall { :L3 .. :L4 } :L5
  .registers 4
  .line 83
    new-instance v0, Ljava/io/FileInputStream;
    invoke-direct { v0, p0 }, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
  :L0
    new-instance p0, Ljava/lang/String;
    invoke-static { v0 }, Lcom/nomone/vr_desktop/runtime/UbuntuSsh;->bytes(Ljava/io/InputStream;)[B
    move-result-object v1
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;
    invoke-direct { p0, v1, v2 }, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
  :L1
    invoke-virtual { v0 }, Ljava/io/InputStream;->close()V
    return-object p0
  :L2
    move-exception p0
  :L3
    invoke-virtual { v0 }, Ljava/io/InputStream;->close()V
  :L4
    goto :L6
  :L5
    move-exception v0
    invoke-virtual { p0, v0 }, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
  :L6
    throw p0
.end method

.method private static write(Ljava/io/File;Ljava/lang/String;)V
  .annotation system Ldalvik/annotation/Throws;
    value = {
      Ljava/io/IOException;
    }
  .end annotation
  .catchall { :L0 .. :L1 } :L2
  .catchall { :L3 .. :L4 } :L5
  .registers 3
  .line 87
    new-instance v0, Ljava/io/FileOutputStream;
    invoke-direct { v0, p0 }, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
  :L0
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;
    invoke-virtual { p1, p0 }, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
    move-result-object p0
    invoke-virtual { v0, p0 }, Ljava/io/FileOutputStream;->write([B)V
  :L1
    invoke-virtual { v0 }, Ljava/io/FileOutputStream;->close()V
  .line 88
    return-void
  :L2
  .line 87
    move-exception p0
  :L3
    invoke-virtual { v0 }, Ljava/io/FileOutputStream;->close()V
  :L4
    goto :L6
  :L5
    move-exception p1
    invoke-virtual { p0, p1 }, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
  :L6
    throw p0
.end method
