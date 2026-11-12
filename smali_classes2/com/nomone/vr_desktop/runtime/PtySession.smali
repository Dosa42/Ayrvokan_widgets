.class public final Lcom/nomone/vr_desktop/runtime/PtySession;
.super Ljava/lang/Object;
.source "PtySession.java"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcom/nomone/vr_desktop/runtime/PtySession$Listener;,
    Lcom/nomone/vr_desktop/runtime/PtySession$Output;
  }
.end annotation

.field private cursor:J

.field private descriptor:I

.field private volatile exitStatus:I

.field private volatile failure:Ljava/lang/String;

.field private final history:[B

.field private final listener:Lcom/nomone/vr_desktop/runtime/PtySession$Listener;

.field private final pid:I

.field private final reader:Ljava/lang/Thread;

.field private volatile running:Z

.field private stopping:Z

.method public static synthetic $r8$lambda$8OI7YYxbBZ8atCjCDbEsXXm6B0E(Lcom/nomone/vr_desktop/runtime/PtySession;)V
  .registers 1
    invoke-direct { p0 }, Lcom/nomone/vr_desktop/runtime/PtySession;->drain()V
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;IILcom/nomone/vr_desktop/runtime/PtySession$Listener;)V
  .annotation system Ldalvik/annotation/Throws;
    value = {
      Ljava/io/IOException;
    }
  .end annotation
  .registers 9
  .line 33
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 22
    const/high16 v0, 65536
    new-array v0, v0, [B
    iput-object v0, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->history:[B
  .line 28
    const/4 v0, 1
    iput-boolean v0, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->running:Z
  .line 29
    const/4 v1, -1
    iput v1, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->exitStatus:I
  .line 30
    const-string v1, ""
    iput-object v1, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->failure:Ljava/lang/String;
  .line 34
    iput-object p6, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->listener:Lcom/nomone/vr_desktop/runtime/PtySession$Listener;
  .line 35
    invoke-static { p1, p2, p3, p4, p5 }, Lcom/nomone/vr_desktop/runtime/PtyNative;->spawn([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;II)[I
    move-result-object p1
  .line 36
    const/4 p2, 0
    aget p2, p1, p2
    iput p2, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->descriptor:I
  .line 37
    aget p1, p1, v0
    iput p1, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->pid:I
  .line 38
    new-instance p1, Ljava/lang/Thread;
    new-instance p2, Lcom/nomone/vr_desktop/runtime/PtySession$1;
    invoke-direct { p2, p0 }, Lcom/nomone/vr_desktop/runtime/PtySession$1;-><init>(Lcom/nomone/vr_desktop/runtime/PtySession;)V
    const-string p3, "Ubuntu-PTY-output"
    invoke-direct { p1, p2, p3 }, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    iput-object p1, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->reader:Ljava/lang/Thread;
  .line 39
    iget-object p1, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->reader:Ljava/lang/Thread;
    invoke-virtual { p1 }, Ljava/lang/Thread;->start()V
  .line 40
    return-void
.end method

.method private drain()V
  .catch Ljava/io/IOException; { :L1 .. :L2 } :L19
  .catchall { :L1 .. :L2 } :L18
  .catch Ljava/io/IOException; { :L3 .. :L4 } :L5
  .catchall { :L7 .. :L8 } :L9
  .catchall { :L10 .. :L11 } :L9
  .catch Ljava/io/IOException; { :L12 .. :L13 } :L19
  .catchall { :L12 .. :L13 } :L18
  .catchall { :L13 .. :L17 } :L16
  .catch Ljava/io/IOException; { :L17 .. :L18 } :L19
  .catchall { :L17 .. :L18 } :L18
  .catchall { :L20 .. :L21 } :L18
  .catch Ljava/io/IOException; { :L22 .. :L23 } :L24
  .catchall { :L26 .. :L27 } :L30
  .catchall { :L31 .. :L32 } :L30
  .catch Ljava/io/IOException; { :L34 .. :L35 } :L36
  .catchall { :L38 .. :L39 } :L41
  .catchall { :L42 .. :L43 } :L41
  .registers 12
  .line 89
    nop
  :L0
    const/4 v0, -1
    const/4 v1, 0
  :L1
    iget v2, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->descriptor:I
    invoke-static { v2 }, Lcom/nomone/vr_desktop/runtime/PtyNative;->read(I)[B
    move-result-object v2
  :L2
  .line 90
    if-nez v2, :L12
  .line 98
    iget v2, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->pid:I
    invoke-static { v2 }, Lcom/nomone/vr_desktop/runtime/PtyNative;->terminate(I)V
  :L3
  .line 100
    iget v2, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->pid:I
    invoke-static { v2 }, Lcom/nomone/vr_desktop/runtime/PtyNative;->waitFor(I)I
    move-result v2
    iput v2, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->exitStatus:I
  :L4
  .line 103
    goto :L6
  :L5
  .line 101
    move-exception v2
  .line 102
    invoke-virtual { v2 }, Ljava/io/IOException;->toString()Ljava/lang/String;
    move-result-object v2
    iput-object v2, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->failure:Ljava/lang/String;
  :L6
  .line 104
    monitor-enter p0
  :L7
  .line 105
    iput-boolean v1, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->running:Z
  .line 106
    iget v1, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->descriptor:I
    invoke-static { v1 }, Lcom/nomone/vr_desktop/runtime/PtyNative;->close(I)V
  .line 107
    iput v0, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->descriptor:I
  .line 108
    monitor-exit p0
  :L8
  .line 109
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->listener:Lcom/nomone/vr_desktop/runtime/PtySession$Listener;
    if-eqz v0, :L29
    goto :L28
  :L9
  .line 108
    move-exception v0
  :L10
    monitor-exit p0
  :L11
    throw v0
  :L12
  .line 91
    monitor-enter p0
  :L13
  .line 92
    array-length v3, v2
    move v4, v1
  :L14
    if-ge v4, v3, :L15
    aget-byte v5, v2, v4
    iget-object v6, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->history:[B
    iget-wide v7, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->cursor:J
    const-wide/16 v9, 1
    add-long/2addr v9, v7
    iput-wide v9, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->cursor:J
    iget-object v9, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->history:[B
    array-length v9, v9
    int-to-long v9, v9
    rem-long/2addr v7, v9
    long-to-int v7, v7
    aput-byte v5, v6, v7
    add-int/lit8 v4, v4, 1
    goto :L14
  :L15
  .line 93
    monitor-exit p0
  .line 94
    goto :L0
  :L16
  .line 93
    move-exception v2
    monitor-exit p0
  :L17
    throw v2
  :L18
  .line 98
    move-exception v2
    goto :L33
  :L19
  .line 95
    move-exception v2
  :L20
  .line 96
    invoke-virtual { v2 }, Ljava/io/IOException;->toString()Ljava/lang/String;
    move-result-object v2
    iput-object v2, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->failure:Ljava/lang/String;
  :L21
  .line 98
    iget v2, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->pid:I
    invoke-static { v2 }, Lcom/nomone/vr_desktop/runtime/PtyNative;->terminate(I)V
  :L22
  .line 100
    iget v2, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->pid:I
    invoke-static { v2 }, Lcom/nomone/vr_desktop/runtime/PtyNative;->waitFor(I)I
    move-result v2
    iput v2, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->exitStatus:I
  :L23
  .line 103
    goto :L25
  :L24
  .line 101
    move-exception v2
  .line 102
    invoke-virtual { v2 }, Ljava/io/IOException;->toString()Ljava/lang/String;
    move-result-object v2
    iput-object v2, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->failure:Ljava/lang/String;
  :L25
  .line 104
    monitor-enter p0
  :L26
  .line 105
    iput-boolean v1, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->running:Z
  .line 106
    iget v1, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->descriptor:I
    invoke-static { v1 }, Lcom/nomone/vr_desktop/runtime/PtyNative;->close(I)V
  .line 107
    iput v0, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->descriptor:I
  .line 108
    monitor-exit p0
  :L27
  .line 109
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->listener:Lcom/nomone/vr_desktop/runtime/PtySession$Listener;
    if-eqz v0, :L29
  :L28
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->listener:Lcom/nomone/vr_desktop/runtime/PtySession$Listener;
    iget v1, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->exitStatus:I
    iget-object v2, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->failure:Ljava/lang/String;
    invoke-interface { v0, v1, v2 }, Lcom/nomone/vr_desktop/runtime/PtySession$Listener;->exited(ILjava/lang/String;)V
  :L29
  .line 111
    return-void
  :L30
  .line 108
    move-exception v0
  :L31
    monitor-exit p0
  :L32
    throw v0
  :L33
  .line 98
    iget v3, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->pid:I
    invoke-static { v3 }, Lcom/nomone/vr_desktop/runtime/PtyNative;->terminate(I)V
  :L34
  .line 100
    iget v3, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->pid:I
    invoke-static { v3 }, Lcom/nomone/vr_desktop/runtime/PtyNative;->waitFor(I)I
    move-result v3
    iput v3, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->exitStatus:I
  :L35
  .line 103
    goto :L37
  :L36
  .line 101
    move-exception v3
  .line 102
    invoke-virtual { v3 }, Ljava/io/IOException;->toString()Ljava/lang/String;
    move-result-object v3
    iput-object v3, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->failure:Ljava/lang/String;
  :L37
  .line 104
    monitor-enter p0
  :L38
  .line 105
    iput-boolean v1, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->running:Z
  .line 106
    iget v1, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->descriptor:I
    invoke-static { v1 }, Lcom/nomone/vr_desktop/runtime/PtyNative;->close(I)V
  .line 107
    iput v0, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->descriptor:I
  .line 108
    monitor-exit p0
  :L39
  .line 109
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->listener:Lcom/nomone/vr_desktop/runtime/PtySession$Listener;
    if-eqz v0, :L40
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->listener:Lcom/nomone/vr_desktop/runtime/PtySession$Listener;
    iget v1, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->exitStatus:I
    iget-object v3, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->failure:Ljava/lang/String;
    invoke-interface { v0, v1, v3 }, Lcom/nomone/vr_desktop/runtime/PtySession$Listener;->exited(ILjava/lang/String;)V
  :L40
  .line 110
    throw v2
  :L41
  .line 108
    move-exception v0
  :L42
    monitor-exit p0
  :L43
    throw v0
.end method

.method public exitStatus()I
  .registers 2
  .line 64
    iget v0, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->exitStatus:I
    return v0
.end method

.method public failure()Ljava/lang/String;
  .registers 2
  .line 65
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->failure:Ljava/lang/String;
    return-object v0
.end method

.method public join(J)V
  .annotation system Ldalvik/annotation/Throws;
    value = {
      Ljava/lang/InterruptedException;
    }
  .end annotation
  .registers 4
  .line 83
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->reader:Ljava/lang/Thread;
    invoke-virtual { v0, p1, p2 }, Ljava/lang/Thread;->join(J)V
  .line 84
    return-void
.end method

.method synthetic lambda$stop$0$com-nomone-vr_desktop-runtime-PtySession()V
  .catch Ljava/lang/InterruptedException; { :L0 .. :L1 } :L2
  .catchall { :L4 .. :L7 } :L6
  .registers 4
  :L0
  .line 72
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->reader:Ljava/lang/Thread;
    const-wide/16 v1, 1000
    invoke-virtual { v0, v1, v2 }, Ljava/lang/Thread;->join(J)V
  :L1
  .line 73
    goto :L3
  :L2
    move-exception v0
    invoke-static { }, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/Thread;->interrupt()V
  :L3
  .line 74
    monitor-enter p0
  :L4
  .line 75
    iget-boolean v0, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->running:Z
    if-eqz v0, :L5
    iget v0, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->pid:I
    invoke-static { v0 }, Lcom/nomone/vr_desktop/runtime/PtyNative;->kill(I)V
  :L5
  .line 76
    monitor-exit p0
  .line 77
    return-void
  :L6
  .line 76
    move-exception v0
    monitor-exit p0
  :L7
    throw v0
.end method

.method public declared-synchronized output(J)Lcom/nomone/vr_desktop/runtime/PtySession$Output;
  .catchall { :L0 .. :L4 } :L5
  .catchall { :L6 .. :L7 } :L5
  .registers 16
    monitor-enter p0
  :L0
  .line 54
    iget-wide v0, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->cursor:J
    iget-object v2, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->history:[B
    array-length v2, v2
    int-to-long v2, v2
    sub-long/2addr v0, v2
    const-wide/16 v2, 0
    invoke-static { v2, v3, v0, v1 }, Ljava/lang/Math;->max(JJ)J
    move-result-wide v0
  .line 55
    iget-wide v2, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->cursor:J
    invoke-static { v0, v1, p1, p2 }, Ljava/lang/Math;->max(JJ)J
    move-result-wide v4
    invoke-static { v2, v3, v4, v5 }, Ljava/lang/Math;->min(JJ)J
    move-result-wide v2
  .line 56
    iget-wide v4, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->cursor:J
    sub-long/2addr v4, v2
    const-wide/16 v6, 16384
    invoke-static { v6, v7, v4, v5 }, Ljava/lang/Math;->min(JJ)J
    move-result-wide v4
    long-to-int v4, v4
  .line 57
    new-array v5, v4, [B
  .line 58
    const/4 v6, 0
    move v7, v6
  :L1
    if-ge v7, v4, :L2
    iget-object v8, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->history:[B
    int-to-long v9, v7
    add-long/2addr v9, v2
    iget-object v11, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->history:[B
    array-length v11, v11
    int-to-long v11, v11
    rem-long/2addr v9, v11
    long-to-int v9, v9
    aget-byte v8, v8, v9
    aput-byte v8, v5, v7
    add-int/lit8 v7, v7, 1
    goto :L1
  :L2
  .line 59
    new-instance v7, Lcom/nomone/vr_desktop/runtime/PtySession$Output;
    int-to-long v8, v4
    add-long/2addr v2, v8
    cmp-long p1, p1, v0
    if-gez p1, :L3
    const/4 v6, 1
  :L3
    invoke-direct { v7, v5, v2, v3, v6 }, Lcom/nomone/vr_desktop/runtime/PtySession$Output;-><init>([BJZ)V
  :L4
    monitor-exit p0
    return-object v7
  :L5
  .line 53
    move-exception p1
  :L6
    monitor-exit p0
  :L7
    throw p1
.end method

.method public pid()I
  .registers 2
  .line 62
    iget v0, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->pid:I
    return v0
.end method

.method public declared-synchronized resize(II)V
  .annotation system Ldalvik/annotation/Throws;
    value = {
      Ljava/io/IOException;
    }
  .end annotation
  .catchall { :L0 .. :L1 } :L3
  .catchall { :L2 .. :L4 } :L3
  .registers 4
    monitor-enter p0
  :L0
  .line 49
    iget-boolean v0, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->running:Z
    if-eqz v0, :L2
    iget v0, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->descriptor:I
    if-ltz v0, :L2
  .line 50
    iget v0, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->descriptor:I
    invoke-static { v0, p1, p2 }, Lcom/nomone/vr_desktop/runtime/PtyNative;->resize(III)V
  :L1
  .line 51
    monitor-exit p0
    return-void
  :L2
  .line 49
    new-instance p1, Ljava/io/IOException;
    const-string p2, "Terminal is afgesloten"
    invoke-direct { p1, p2 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw p1
  :L3
  .line 48
    move-exception p1
    monitor-exit p0
  :L4
    throw p1
.end method

.method public running()Z
  .registers 2
  .line 63
    iget-boolean v0, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->running:Z
    return v0
.end method

.method public declared-synchronized stop()V
  .catchall { :L0 .. :L2 } :L4
  .catchall { :L5 .. :L6 } :L4
  .registers 5
    monitor-enter p0
  :L0
  .line 68
    iget-boolean v0, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->running:Z
    if-eqz v0, :L3
    iget-boolean v0, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->stopping:Z
    if-eqz v0, :L1
    goto :L3
  :L1
  .line 69
    const/4 v0, 1
    iput-boolean v0, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->stopping:Z
  .line 70
    iget v1, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->pid:I
    invoke-static { v1 }, Lcom/nomone/vr_desktop/runtime/PtyNative;->terminate(I)V
  .line 71
    new-instance v1, Ljava/lang/Thread;
    new-instance v2, Lcom/nomone/vr_desktop/runtime/PtySession$0;
    invoke-direct { v2, p0 }, Lcom/nomone/vr_desktop/runtime/PtySession$0;-><init>(Lcom/nomone/vr_desktop/runtime/PtySession;)V
    const-string v3, "Ubuntu-PTY-stop"
    invoke-direct { v1, v2, v3 }, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V
  .line 78
    invoke-virtual { v1, v0 }, Ljava/lang/Thread;->setDaemon(Z)V
  .line 79
    invoke-virtual { v1 }, Ljava/lang/Thread;->start()V
  :L2
  .line 80
    monitor-exit p0
    return-void
  :L3
  .line 68
    monitor-exit p0
    return-void
  :L4
  .line 67
    move-exception v0
  :L5
    monitor-exit p0
  :L6
    throw v0
.end method

.method public declared-synchronized write([B)V
  .annotation system Ldalvik/annotation/Throws;
    value = {
      Ljava/io/IOException;
    }
  .end annotation
  .catchall { :L0 .. :L1 } :L4
  .catchall { :L2 .. :L5 } :L4
  .registers 4
    monitor-enter p0
  :L0
  .line 43
    iget-boolean v0, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->running:Z
    if-eqz v0, :L3
    iget v0, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->descriptor:I
    if-ltz v0, :L3
  .line 44
    array-length v0, p1
    const/16 v1, 16384
    if-gt v0, v1, :L2
  .line 45
    iget v0, p0, Lcom/nomone/vr_desktop/runtime/PtySession;->descriptor:I
    invoke-static { v0, p1 }, Lcom/nomone/vr_desktop/runtime/PtyNative;->write(I[B)V
  :L1
  .line 46
    monitor-exit p0
    return-void
  :L2
  .line 44
    new-instance p1, Ljava/io/IOException;
    const-string v0, "Terminalinvoer overschrijdt 16384 bytes"
    invoke-direct { p1, v0 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw p1
  :L3
  .line 43
    new-instance p1, Ljava/io/IOException;
    const-string v0, "Terminal is afgesloten"
    invoke-direct { p1, v0 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw p1
  :L4
  .line 42
    move-exception p1
    monitor-exit p0
  :L5
    throw p1
.end method
