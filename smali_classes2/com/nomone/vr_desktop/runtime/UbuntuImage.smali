.class public final Lcom/nomone/vr_desktop/runtime/UbuntuImage;
.super Ljava/lang/Object;
.source "UbuntuImage.java"

.field public final static ASSET:Ljava/lang/String; = "linux/ubuntu-base-22.04.5-base-arm64.tar.gz"

.field public final static MARKER:Ljava/lang/String; = ".ubuntu-base-22.04.5-arm64"

.field public final static NAME:Ljava/lang/String; = "Ubuntu22.04Bare"

.field public final static SHA256:Ljava/lang/String; = "075d4abd2817a5023ab0a82f5cb314c5ec0aa64a9c0b40fd3154ca3bfdae979f"

.method private constructor <init>()V
  .registers 1
  .line 18
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method static varargs command(Ljava/io/File;[Ljava/lang/String;)V
  .annotation system Ldalvik/annotation/Throws;
    value = {
      Ljava/io/IOException;,
      Ljava/lang/InterruptedException;
    }
  .end annotation
  .catchall { :L0 .. :L2 } :L6
  .catchall { :L7 .. :L8 } :L9
  .registers 8
  .line 130
    array-length v0, p1
    const/4 v1, 1
    add-int/2addr v0, v1
    new-array v0, v0, [Ljava/lang/String;
  .line 131
    invoke-virtual { p0 }, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object p0
    const/4 v2, 0
    aput-object p0, v0, v2
  .line 132
    array-length p0, p1
    invoke-static { p1, v2, v0, v1, p0 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  .line 133
    new-instance p0, Ljava/lang/ProcessBuilder;
    invoke-direct { p0, v0 }, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V
    invoke-virtual { p0, v1 }, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;
    move-result-object p0
    invoke-virtual { p0 }, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    move-result-object p0
  .line 134
    new-instance p1, Ljava/io/ByteArrayOutputStream;
    invoke-direct { p1 }, Ljava/io/ByteArrayOutputStream;-><init>()V
  .line 135
    invoke-virtual { p0 }, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;
    move-result-object v0
  .line 136
    const/16 v1, 8192
  :L0
    new-array v1, v1, [B
  :L1
  .line 138
    invoke-virtual { v0, v1 }, Ljava/io/InputStream;->read([B)I
    move-result v3
    const/4 v4, -1
    if-eq v3, v4, :L3
  .line 139
    invoke-virtual { p1 }, Ljava/io/ByteArrayOutputStream;->size()I
    move-result v4
    const v5, 32768
    if-ge v4, v5, :L1
  .line 140
    invoke-virtual { p1 }, Ljava/io/ByteArrayOutputStream;->size()I
    move-result v4
    sub-int/2addr v5, v4
    invoke-static { v3, v5 }, Ljava/lang/Math;->min(II)I
    move-result v3
    invoke-virtual { p1, v1, v2, v3 }, Ljava/io/ByteArrayOutputStream;->write([BII)V
  :L2
    goto :L1
  :L3
  .line 143
    if-eqz v0, :L4
    invoke-virtual { v0 }, Ljava/io/InputStream;->close()V
  :L4
  .line 144
    invoke-virtual { p0 }, Ljava/lang/Process;->waitFor()I
    move-result p0
  .line 145
    if-nez p0, :L5
  .line 148
    return-void
  :L5
  .line 146
    new-instance v0, Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "NoMone BusyBox exit "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object p0
    const-string v1, ": "
    invoke-virtual { p0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object p0
    new-instance v1, Ljava/lang/String;
    invoke-virtual { p1 }, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    move-result-object p1
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;
    invoke-direct { v1, p1, v2 }, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    invoke-virtual { p0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object p0
    invoke-virtual { p0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    invoke-direct { v0, p0 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw v0
  :L6
  .line 135
    move-exception p0
    if-eqz v0, :L10
  :L7
    invoke-virtual { v0 }, Ljava/io/InputStream;->close()V
  :L8
    goto :L10
  :L9
    move-exception p1
    invoke-virtual { p0, p1 }, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
  :L10
    throw p0
.end method

.method private static directory(Ljava/io/File;)V
  .annotation system Ldalvik/annotation/Throws;
    value = {
      Ljava/io/IOException;
    }
  .end annotation
  .registers 4
  .line 102
    invoke-virtual { p0 }, Ljava/io/File;->isDirectory()Z
    move-result v0
    if-nez v0, :L1
    invoke-virtual { p0 }, Ljava/io/File;->mkdirs()Z
    move-result v0
    if-eqz v0, :L0
    goto :L1
  :L0
  .line 103
    new-instance v0, Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, "Kan map niet aanmaken: "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object p0
    invoke-virtual { p0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    invoke-direct { v0, p0 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw v0
  :L1
  .line 105
    return-void
.end method

.method private static hex([B)Ljava/lang/String;
  .registers 6
  .line 122
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
  .line 123
    array-length v1, p0
    const/4 v2, 0
  :L0
    if-ge v2, v1, :L1
    aget-byte v3, p0, v2
  .line 124
    and-int/lit16 v3, v3, 255
    invoke-static { v3 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v3
    filled-new-array { v3 }, [Ljava/lang/Object;
    move-result-object v3
    const-string v4, "%02x"
    invoke-static { v4, v3 }, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 123
    add-int/lit8 v2, v2, 1
    goto :L0
  :L1
  .line 126
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    return-object p0
.end method

.method public static install(Ljava/io/InputStream;Ljava/io/File;Ljava/io/File;)Ljava/io/File;
  .annotation system Ldalvik/annotation/Throws;
    value = {
      Ljava/lang/Exception;
    }
  .end annotation
  .catchall { :L1 .. :L2 } :L45
  .catchall { :L3 .. :L5 } :L39
  .catchall { :L6 .. :L10 } :L45
  .catchall { :L10 .. :L11 } :L21
  .catchall { :L11 .. :L12 } :L15
  .catchall { :L12 .. :L13 } :L21
  .catchall { :L13 .. :L15 } :L45
  .catchall { :L16 .. :L17 } :L18
  .catchall { :L19 .. :L21 } :L21
  .catchall { :L22 .. :L23 } :L24
  .catchall { :L25 .. :L32 } :L45
  .catchall { :L34 .. :L39 } :L45
  .catchall { :L40 .. :L41 } :L42
  .catchall { :L43 .. :L45 } :L45
  .registers 25
  .line 27
    move-object/from16 v0, p1
    new-instance v1, Ljava/io/File;
    const-string v2, "Ubuntu22.04Bare"
    invoke-direct { v1, v0, v2 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
  .line 28
    invoke-static { v0 }, Lcom/nomone/vr_desktop/runtime/UbuntuImage;->ready(Ljava/io/File;)Z
    move-result v2
    if-eqz v2, :L0
  .line 29
    return-object v1
  :L0
  .line 31
    invoke-virtual { v1 }, Ljava/io/File;->exists()Z
    move-result v2
    if-nez v2, :L47
  .line 34
    new-instance v2, Ljava/io/File;
    const-string v3, "Ubuntu22.04Bare.installing"
    invoke-direct { v2, v0, v3 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
  .line 35
    new-instance v3, Ljava/io/File;
    const-string v4, ".ubuntu-base-22.04.5-arm64.tar.gz"
    invoke-direct { v3, v0, v4 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
  .line 36
    new-instance v4, Ljava/io/File;
    const-string v5, "common/bin/busybox"
    invoke-direct { v4, v0, v5 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
  .line 37
    invoke-virtual { v2 }, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v0
    const-string v5, "rm"
    const-string v6, "-rf"
    filled-new-array { v5, v6, v0 }, [Ljava/lang/String;
    move-result-object v0
    invoke-static { v4, v0 }, Lcom/nomone/vr_desktop/runtime/UbuntuImage;->command(Ljava/io/File;[Ljava/lang/String;)V
  .line 38
    invoke-static { v2 }, Lcom/nomone/vr_desktop/runtime/UbuntuImage;->directory(Ljava/io/File;)V
  :L1
  .line 40
    const-string v0, "SHA-256"
    invoke-static { v0 }, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    move-result-object v0
  .line 41
    new-instance v7, Ljava/io/FileOutputStream;
    invoke-direct { v7, v3 }, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
  :L2
  .line 42
    const/high16 v8, 131072
  :L3
    new-array v8, v8, [B
  :L4
  .line 44
    move-object/from16 v9, p0
    invoke-virtual { v9, v8 }, Ljava/io/InputStream;->read([B)I
    move-result v10
    const/4 v11, -1
    const/4 v12, 0
    if-eq v10, v11, :L6
  .line 45
    invoke-virtual { v7, v8, v12, v10 }, Ljava/io/FileOutputStream;->write([BII)V
  .line 46
    invoke-virtual { v0, v8, v12, v10 }, Ljava/security/MessageDigest;->update([BII)V
  :L5
    goto :L4
  :L6
  .line 48
    invoke-virtual { v7 }, Ljava/io/FileOutputStream;->close()V
  .line 49
    const-string v7, "075d4abd2817a5023ab0a82f5cb314c5ec0aa64a9c0b40fd3154ca3bfdae979f"
    invoke-virtual { v0 }, Ljava/security/MessageDigest;->digest()[B
    move-result-object v0
    invoke-static { v0 }, Lcom/nomone/vr_desktop/runtime/UbuntuImage;->hex([B)Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v7, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L38
  .line 52
    const-string v0, "tar"
    const-string v7, "-xzf"
    invoke-virtual { v3 }, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v8
    const-string v9, "-C"
    invoke-virtual { v2 }, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v10
    filled-new-array { v0, v7, v8, v9, v10 }, [Ljava/lang/String;
    move-result-object v0
    invoke-static { v4, v0 }, Lcom/nomone/vr_desktop/runtime/UbuntuImage;->command(Ljava/io/File;[Ljava/lang/String;)V
  .line 53
    const-string v13, "tmp"
    const-string v14, "dev"
    const-string v15, "proc"
    const-string v16, "sys"
    const-string v17, "mnt"
    const-string v18, "root"
    const-string v19, "run"
    const-string v20, "var/log"
    const-string v21, "NOMone"
    filled-new-array/range { v13 .. v21 }, [Ljava/lang/String;
    move-result-object v0
    move v7, v12
  :L7
    const/16 v8, 9
    if-ge v7, v8, :L8
    aget-object v8, v0, v7
  .line 54
    new-instance v9, Ljava/io/File;
    invoke-direct { v9, v2, v8 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    invoke-static { v9 }, Lcom/nomone/vr_desktop/runtime/UbuntuImage;->directory(Ljava/io/File;)V
  .line 53
    add-int/lit8 v7, v7, 1
    goto :L7
  :L8
  .line 56
    new-instance v0, Ljava/io/File;
    const-string v7, "NOMone"
    invoke-direct { v0, v2, v7 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
  .line 57
    invoke-virtual/range { p2 .. p2 }, Ljava/io/File;->listFiles()[Ljava/io/File;
    move-result-object v7
  .line 58
    if-eqz v7, :L37
  .line 61
    array-length v8, v7
    move v9, v12
  :L9
    const/4 v10, 3
    if-ge v9, v8, :L28
    aget-object v13, v7, v9
  .line 62
    invoke-virtual { v13 }, Ljava/io/File;->getName()Ljava/lang/String;
    move-result-object v14
  .line 63
    const-string v15, "lib_proot_"
    invoke-virtual { v14, v15 }, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v15
    if-eqz v15, :L27
    const-string v15, ".so"
    invoke-virtual { v14, v15 }, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v15
    if-eqz v15, :L27
  .line 64
    new-instance v15, Ljava/io/File;
    invoke-virtual { v14 }, Ljava/lang/String;->length()I
    move-result v16
    add-int/lit8 v10, v16, -3
    const/16 v11, 10
    invoke-virtual { v14, v11, v10 }, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v10
    invoke-direct { v15, v0, v10 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
  .line 65
    new-instance v10, Ljava/io/FileInputStream;
    invoke-direct { v10, v13 }, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
  :L10
    new-instance v11, Ljava/io/FileOutputStream;
    invoke-direct { v11, v15 }, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
  :L11
  .line 66
    invoke-static { v10, v11 }, Lcom/nomone/vr_desktop/runtime/UbuntuImage;->transfer(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
  :L12
  .line 67
    invoke-virtual { v11 }, Ljava/io/FileOutputStream;->close()V
  :L13
    invoke-virtual { v10 }, Ljava/io/InputStream;->close()V
  .line 68
    const/4 v10, 1
    invoke-virtual { v15, v10, v12 }, Ljava/io/File;->setExecutable(ZZ)Z
    move-result v10
    if-eqz v10, :L14
    goto :L27
  :L14
  .line 69
    new-instance v0, Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v7, "Kan NoMone-bestand niet uitvoerbaar maken: "
    invoke-virtual { v1, v7 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1, v15 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, v1 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw v0
  :L15
  .line 65
    move-exception v0
    move-object v1, v0
  :L16
    invoke-virtual { v11 }, Ljava/io/FileOutputStream;->close()V
  :L17
    goto :L20
  :L18
    move-exception v0
  :L19
    invoke-virtual { v1, v0 }, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
  :L20
    throw v1
  :L21
    move-exception v0
    move-object v1, v0
  :L22
    invoke-virtual { v10 }, Ljava/io/InputStream;->close()V
  :L23
    goto :L26
  :L24
    move-exception v0
  :L25
    invoke-virtual { v1, v0 }, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
  :L26
    throw v1
  :L27
  .line 61
    add-int/lit8 v9, v9, 1
    goto :L9
  :L28
  .line 73
    const-string v7, "boot.sh"
    const-string v8, "ProotClient"
    const-string v9, "busybox_static"
    filled-new-array { v7, v8, v9 }, [Ljava/lang/String;
    move-result-object v7
    move v8, v12
  :L29
    if-ge v8, v10, :L31
    aget-object v9, v7, v8
  .line 74
    new-instance v11, Ljava/io/File;
    invoke-direct { v11, v0, v9 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    invoke-virtual { v11 }, Ljava/io/File;->isFile()Z
    move-result v11
    if-eqz v11, :L30
  .line 73
    add-int/lit8 v8, v8, 1
    goto :L29
  :L30
  .line 75
    new-instance v0, Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v7, "NoMone runtimebestand ontbreekt: "
    invoke-virtual { v1, v7 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1, v9 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, v1 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw v0
  :L31
  .line 78
    new-instance v7, Ljava/io/File;
    const-string v8, "SystemReady"
    invoke-direct { v7, v0, v8 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    const-string v8, ""
    invoke-static { v7, v8 }, Lcom/nomone/vr_desktop/runtime/UbuntuImage;->write(Ljava/io/File;Ljava/lang/String;)V
  .line 79
    new-instance v7, Ljava/io/File;
    const-string v8, "UbuntuBase22.04"
    invoke-direct { v7, v0, v8 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    const-string v8, "22.04.5\n"
    invoke-static { v7, v8 }, Lcom/nomone/vr_desktop/runtime/UbuntuImage;->write(Ljava/io/File;Ljava/lang/String;)V
  .line 80
    new-instance v7, Ljava/io/File;
    const-string v8, "startup.sh"
    invoke-direct { v7, v0, v8 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
  .line 81
    const-string v0, "#!/bin/sh\n:\n"
    invoke-static { v7, v0 }, Lcom/nomone/vr_desktop/runtime/UbuntuImage;->write(Ljava/io/File;Ljava/lang/String;)V
  .line 82
    const/4 v10, 1
    invoke-virtual { v7, v10, v12 }, Ljava/io/File;->setExecutable(ZZ)Z
    move-result v0
    if-eqz v0, :L36
  .line 85
    new-instance v0, Ljava/io/File;
    const-string v7, ".ubuntu-base-22.04.5-arm64"
    invoke-direct { v0, v2, v7 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    const-string v7, "075d4abd2817a5023ab0a82f5cb314c5ec0aa64a9c0b40fd3154ca3bfdae979f\n"
    invoke-static { v0, v7 }, Lcom/nomone/vr_desktop/runtime/UbuntuImage;->write(Ljava/io/File;Ljava/lang/String;)V
  .line 86
    new-instance v0, Ljava/io/File;
    const-string v7, "bin/bash"
    invoke-direct { v0, v2, v7 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    invoke-virtual { v0 }, Ljava/io/File;->isFile()Z
    move-result v0
    if-eqz v0, :L35
    new-instance v0, Ljava/io/File;
    const-string v7, "etc/os-release"
    invoke-direct { v0, v2, v7 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    invoke-virtual { v0 }, Ljava/io/File;->isFile()Z
    move-result v0
    if-eqz v0, :L35
  .line 89
    invoke-virtual { v2, v1 }, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    move-result v0
  :L32
    if-eqz v0, :L34
  .line 92
    nop
  .line 94
    invoke-virtual { v3 }, Ljava/io/File;->delete()Z
  .line 95
    invoke-virtual { v2 }, Ljava/io/File;->exists()Z
    move-result v0
    if-eqz v0, :L33
  .line 96
    invoke-virtual { v2 }, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v0
    filled-new-array { v5, v6, v0 }, [Ljava/lang/String;
    move-result-object v0
    invoke-static { v4, v0 }, Lcom/nomone/vr_desktop/runtime/UbuntuImage;->command(Ljava/io/File;[Ljava/lang/String;)V
  :L33
  .line 92
    return-object v1
  :L34
  .line 90
    new-instance v0, Ljava/io/IOException;
    const-string v1, "Kan Ubuntu22.04Bare niet activeren"
    invoke-direct { v0, v1 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw v0
  :L35
  .line 87
    new-instance v0, Ljava/io/IOException;
    const-string v1, "Ubuntu Base rootfs is niet volledig uitgepakt"
    invoke-direct { v0, v1 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw v0
  :L36
  .line 83
    new-instance v0, Ljava/io/IOException;
    const-string v1, "Kan startup.sh niet uitvoerbaar maken"
    invoke-direct { v0, v1 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw v0
  :L37
  .line 59
    new-instance v0, Ljava/io/IOException;
    const-string v1, "NoMone native bibliotheken ontbreken"
    invoke-direct { v0, v1 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw v0
  :L38
  .line 50
    new-instance v0, Ljava/io/IOException;
    const-string v1, "Ubuntu Base archiefhash komt niet overeen"
    invoke-direct { v0, v1 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw v0
  :L39
  .line 41
    move-exception v0
    move-object v1, v0
  :L40
    invoke-virtual { v7 }, Ljava/io/FileOutputStream;->close()V
  :L41
    goto :L44
  :L42
    move-exception v0
  :L43
    invoke-virtual { v1, v0 }, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
  :L44
    throw v1
  :L45
  .line 94
    move-exception v0
    invoke-virtual { v3 }, Ljava/io/File;->delete()Z
  .line 95
    invoke-virtual { v2 }, Ljava/io/File;->exists()Z
    move-result v1
    if-eqz v1, :L46
  .line 96
    invoke-virtual { v2 }, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v1
    filled-new-array { v5, v6, v1 }, [Ljava/lang/String;
    move-result-object v1
    invoke-static { v4, v1 }, Lcom/nomone/vr_desktop/runtime/UbuntuImage;->command(Ljava/io/File;[Ljava/lang/String;)V
  :L46
  .line 98
    throw v0
  :L47
  .line 32
    new-instance v0, Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "Ubuntu22.04Bare bestaat al zonder installatiemarkering: "
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct { v0, v1 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public static ready(Ljava/io/File;)Z
  .registers 3
  .line 21
    new-instance v0, Ljava/io/File;
    const-string v1, "Ubuntu22.04Bare"
    invoke-direct { v0, p0, v1 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
  .line 22
    new-instance p0, Ljava/io/File;
    const-string v1, ".ubuntu-base-22.04.5-arm64"
    invoke-direct { p0, v0, v1 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    invoke-virtual { p0 }, Ljava/io/File;->isFile()Z
    move-result p0
    if-eqz p0, :L0
    new-instance p0, Ljava/io/File;
    const-string v1, "bin/bash"
    invoke-direct { p0, v0, v1 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    invoke-virtual { p0 }, Ljava/io/File;->isFile()Z
    move-result p0
    if-eqz p0, :L0
    new-instance p0, Ljava/io/File;
    const-string v1, "NOMone/ProotClient"
    invoke-direct { p0, v0, v1 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
  .line 23
    invoke-virtual { p0 }, Ljava/io/File;->isFile()Z
    move-result p0
    if-eqz p0, :L0
    const/4 p0, 1
    goto :L1
  :L0
    const/4 p0, 0
  :L1
  .line 22
    return p0
.end method

.method private static transfer(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
  .annotation system Ldalvik/annotation/Throws;
    value = {
      Ljava/io/IOException;
    }
  .end annotation
  .registers 5
  .line 114
    const/high16 v0, 131072
    new-array v0, v0, [B
  :L0
  .line 116
    invoke-virtual { p0, v0 }, Ljava/io/InputStream;->read([B)I
    move-result v1
    const/4 v2, -1
    if-eq v1, v2, :L1
  .line 117
    const/4 v2, 0
    invoke-virtual { p1, v0, v2, v1 }, Ljava/io/FileOutputStream;->write([BII)V
    goto :L0
  :L1
  .line 119
    return-void
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
  .line 108
    new-instance v0, Ljava/io/FileOutputStream;
    invoke-direct { v0, p0 }, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
  :L0
  .line 109
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;
    invoke-virtual { p1, p0 }, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
    move-result-object p0
    invoke-virtual { v0, p0 }, Ljava/io/FileOutputStream;->write([B)V
  :L1
  .line 110
    invoke-virtual { v0 }, Ljava/io/FileOutputStream;->close()V
  .line 111
    return-void
  :L2
  .line 108
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
