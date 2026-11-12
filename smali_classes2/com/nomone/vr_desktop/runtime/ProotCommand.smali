.class public final Lcom/nomone/vr_desktop/runtime/ProotCommand;
.super Ljava/lang/Object;
.source "ProotCommand.java"

.field private final files:Ljava/io/File;

.field private final nativeDirectory:Ljava/io/File;

.field private final temporary:Ljava/io/File;

.method public constructor <init>(Ljava/io/File;Ljava/io/File;)V
  .annotation system Ldalvik/annotation/Throws;
    value = {
      Ljava/io/IOException;
    }
  .end annotation
  .registers 4
  .line 14
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 15
    iput-object p1, p0, Lcom/nomone/vr_desktop/runtime/ProotCommand;->files:Ljava/io/File;
  .line 16
    iput-object p2, p0, Lcom/nomone/vr_desktop/runtime/ProotCommand;->nativeDirectory:Ljava/io/File;
  .line 17
    new-instance p2, Ljava/io/File;
    const-string v0, "ubuntu-pty-tmp"
    invoke-direct { p2, p1, v0 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    iput-object p2, p0, Lcom/nomone/vr_desktop/runtime/ProotCommand;->temporary:Ljava/io/File;
  .line 18
    iget-object p1, p0, Lcom/nomone/vr_desktop/runtime/ProotCommand;->temporary:Ljava/io/File;
    invoke-virtual { p1 }, Ljava/io/File;->isDirectory()Z
    move-result p1
    if-nez p1, :L1
    iget-object p1, p0, Lcom/nomone/vr_desktop/runtime/ProotCommand;->temporary:Ljava/io/File;
    invoke-virtual { p1 }, Ljava/io/File;->mkdirs()Z
    move-result p1
    if-eqz p1, :L0
    goto :L1
  :L0
    new-instance p1, Ljava/io/IOException;
    const-string p2, "Kan PRoot-tijdelijke map niet maken"
    invoke-direct { p1, p2 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw p1
  :L1
  .line 19
    return-void
.end method

.method private varargs command(Z[Ljava/lang/String;)[Ljava/lang/String;
  .registers 43
  .line 24
    move-object/from16 v0, p0
    new-instance v1, Ljava/util/ArrayList;
    invoke-direct { v1 }, Ljava/util/ArrayList;-><init>()V
  .line 25
    new-instance v2, Ljava/io/File;
    iget-object v3, v0, Lcom/nomone/vr_desktop/runtime/ProotCommand;->nativeDirectory:Ljava/io/File;
    const-string v4, "lib_bin_proot.so"
    invoke-direct { v2, v3, v4 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    invoke-virtual { v2 }, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v2
    invoke-interface { v1, v2 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  .line 26
    new-instance v2, Ljava/io/File;
    iget-object v3, v0, Lcom/nomone/vr_desktop/runtime/ProotCommand;->files:Ljava/io/File;
    const-string v4, "Ubuntu22.04Bare"
    invoke-direct { v2, v3, v4 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    invoke-virtual { v2 }, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v12
    const-string v38, "/proc/self/fd:/dev/fd"
    const-string v39, "--cwd=/root"
    const-string v5, "--kill-on-exit"
    const-string v6, "--link2symlink"
    const-string v7, "-L"
    const-string v8, "--root-id"
    const-string v9, "--sysvipc"
    const-string v10, "--ashmem-memfd"
    const-string v11, "-r"
    const-string v13, "-b"
    const-string v14, "/dev"
    const-string v15, "-b"
    const-string v16, "/proc"
    const-string v17, "-b"
    const-string v18, "/sys"
    const-string v19, "-b"
    const-string v20, "/system"
    const-string v21, "-b"
    const-string v22, "/apex"
    const-string v23, "-b"
    const-string v24, "/storage"
    const-string v25, "-b"
    const-string v26, "/sdcard"
    const-string v27, "-b"
    const-string v28, "/mnt"
    const-string v29, "-b"
    const-string v30, "/data"
    const-string v31, "-b"
    const-string v32, "/:/host-rootfs"
    const-string v33, "-b"
    const-string v34, "/proc/mounts:/etc/mtab"
    const-string v35, "-b"
    const-string v36, "/dev/urandom:/dev/random"
    const-string v37, "-b"
    filled-new-array/range { v5 .. v39 }, [Ljava/lang/String;
    move-result-object v2
    invoke-static { v2 }, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    move-result-object v2
    invoke-interface { v1, v2 }, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
  .line 31
    if-eqz p1, :L0
    const-string v7, "-b"
    const-string v8, "/proc/self/fd/2:/dev/stderr"
    const-string v3, "-b"
    const-string v4, "/proc/self/fd/0:/dev/stdin"
    const-string v5, "-b"
    const-string v6, "/proc/self/fd/1:/dev/stdout"
    filled-new-array/range { v3 .. v8 }, [Ljava/lang/String;
    move-result-object v2
    invoke-static { v2 }, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    move-result-object v2
    invoke-interface { v1, v2 }, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
  :L0
  .line 32
    const-string v2, "-u"
    const-string v3, "LD_LIBRARY_PATH"
    const-string v4, "/usr/bin/env"
    filled-new-array { v4, v2, v3 }, [Ljava/lang/String;
    move-result-object v2
    invoke-static { v2 }, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    move-result-object v2
    invoke-interface { v1, v2 }, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
  .line 33
    invoke-static/range { p2 .. p2 }, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    move-result-object v2
    invoke-interface { v1, v2 }, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
  .line 34
    const/4 v2, 0
    new-array v2, v2, [Ljava/lang/String;
    invoke-interface { v1, v2 }, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    move-result-object v1
    check-cast v1, [Ljava/lang/String;
    return-object v1
.end method

.method public varargs command([Ljava/lang/String;)[Ljava/lang/String;
  .registers 3
  .line 21
    const/4 v0, 1
    invoke-direct { p0, v0, p1 }, Lcom/nomone/vr_desktop/runtime/ProotCommand;->command(Z[Ljava/lang/String;)[Ljava/lang/String;
    move-result-object p1
    return-object p1
.end method

.method public environment()[Ljava/lang/String;
  .registers 13
  .line 49
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "LD_LIBRARY_PATH="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    new-instance v1, Ljava/io/File;
    iget-object v2, p0, Lcom/nomone/vr_desktop/runtime/ProotCommand;->files:Ljava/io/File;
    const-string v3, "common/lib"
    invoke-direct { v1, v2, v3 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ":"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget-object v1, p0, Lcom/nomone/vr_desktop/runtime/ProotCommand;->nativeDirectory:Ljava/io/File;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v8
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "PROOT_TMP_DIR="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget-object v1, p0, Lcom/nomone/vr_desktop/runtime/ProotCommand;->temporary:Ljava/io/File;
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v9
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "PROOT_LOADER="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    new-instance v1, Ljava/io/File;
    iget-object v2, p0, Lcom/nomone/vr_desktop/runtime/ProotCommand;->files:Ljava/io/File;
    const-string v3, "common/bin/loader"
    invoke-direct { v1, v2, v3 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v10
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "PROOT_LOADER_32="
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    new-instance v1, Ljava/io/File;
    iget-object v2, p0, Lcom/nomone/vr_desktop/runtime/ProotCommand;->files:Ljava/io/File;
    const-string v3, "common/bin/loader32"
    invoke-direct { v1, v2, v3 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v11
    const-string v1, "HOME=/root"
    const-string v2, "USER=root"
    const-string v3, "LOGNAME=root"
    const-string v4, "SHELL=/bin/bash"
    const-string v5, "TERM=xterm-256color"
    const-string v6, "LANG=C.UTF-8"
    const-string v7, "PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
    filled-new-array/range { v1 .. v11 }, [Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method

.method public varargs process([Ljava/lang/String;)Ljava/lang/Process;
  .annotation system Ldalvik/annotation/Throws;
    value = {
      Ljava/io/IOException;
    }
  .end annotation
  .registers 10
  .line 38
    new-instance v0, Ljava/lang/ProcessBuilder;
    const/4 v1, 0
    invoke-direct { p0, v1, p1 }, Lcom/nomone/vr_desktop/runtime/ProotCommand;->command(Z[Ljava/lang/String;)[Ljava/lang/String;
    move-result-object p1
    invoke-direct { v0, p1 }, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V
  .line 39
    iget-object p1, p0, Lcom/nomone/vr_desktop/runtime/ProotCommand;->files:Ljava/io/File;
    invoke-virtual { v0, p1 }, Ljava/lang/ProcessBuilder;->directory(Ljava/io/File;)Ljava/lang/ProcessBuilder;
  .line 40
    invoke-virtual { v0 }, Ljava/lang/ProcessBuilder;->environment()Ljava/util/Map;
    move-result-object p1
    invoke-interface { p1 }, Ljava/util/Map;->clear()V
  .line 41
    invoke-virtual { p0 }, Lcom/nomone/vr_desktop/runtime/ProotCommand;->environment()[Ljava/lang/String;
    move-result-object p1
    array-length v2, p1
    move v3, v1
  :L0
    if-ge v3, v2, :L1
    aget-object v4, p1, v3
  .line 42
    const/16 v5, 61
    invoke-virtual { v4, v5 }, Ljava/lang/String;->indexOf(I)I
    move-result v5
  .line 43
    invoke-virtual { v0 }, Ljava/lang/ProcessBuilder;->environment()Ljava/util/Map;
    move-result-object v6
    invoke-virtual { v4, v1, v5 }, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v7
    add-int/lit8 v5, v5, 1
    invoke-virtual { v4, v5 }, Ljava/lang/String;->substring(I)Ljava/lang/String;
    move-result-object v4
    invoke-interface { v6, v7, v4 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 41
    add-int/lit8 v3, v3, 1
    goto :L0
  :L1
  .line 45
    invoke-virtual { v0 }, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    move-result-object p1
    return-object p1
.end method
