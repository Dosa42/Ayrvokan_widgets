.class public Lorg/webrtc/videoengine/VideoCaptureAndroid;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld3/y;


# instance fields
.field public volatile a:J

.field public final b:Landroid/content/Context;

.field public final c:Ld3/b0;

.field public final d:Ljava/util/concurrent/CountDownLatch;

.field public e:Z

.field public final f:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .annotation build Lorg/mozilla/gecko/annotation/WebRTCJNITarget;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->d:Ljava/util/concurrent/CountDownLatch;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->e:Z

    .line 14
    .line 15
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->f:Ljava/util/concurrent/CountDownLatch;

    .line 21
    .line 22
    const-string v0, "Facing (front|back):"

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    array-length v2, v0

    .line 29
    const/4 v3, 0x2

    .line 30
    if-ne v2, v3, :cond_0

    .line 31
    .line 32
    aget-object p1, v0, v1

    .line 33
    .line 34
    :cond_0
    invoke-static {}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->GetContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->b:Landroid/content/Context;

    .line 39
    .line 40
    invoke-static {v0}, Ld3/h;->g(Landroid/content/Context;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    new-instance v1, Ld3/h;

    .line 47
    .line 48
    invoke-direct {v1, v0}, Ld3/h;-><init>(Landroid/content/Context;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    new-instance v2, Ld3/b;

    .line 53
    .line 54
    invoke-direct {v2, v1}, Ld3/b;-><init>(Z)V

    .line 55
    .line 56
    .line 57
    move-object v1, v2

    .line 58
    :goto_0
    :try_start_0
    invoke-interface {v1, p1, p0}, Ld3/w;->d(Ljava/lang/String;Ld3/y;)Ld3/b0;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iput-object p1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->c:Ld3/b0;

    .line 63
    .line 64
    sget-object v1, Ld3/h0;->b:[I

    .line 65
    .line 66
    const/4 v2, 0x0

    .line 67
    invoke-static {v2, v1}, Ld3/h0;->a(Ld3/d0;[I)Ld3/h0;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    const-string v2, "VideoCaptureAndroidSurfaceTextureHelper"

    .line 72
    .line 73
    invoke-interface {v1}, Ld3/h0;->f()Ld3/d0;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    new-instance v3, Lj0/j;

    .line 78
    .line 79
    const/4 v4, 0x7

    .line 80
    invoke-direct {v3, v4}, Lj0/j;-><init>(I)V

    .line 81
    .line 82
    .line 83
    new-instance v4, Landroid/os/HandlerThread;

    .line 84
    .line 85
    invoke-direct {v4, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 89
    .line 90
    .line 91
    new-instance v2, Landroid/os/Handler;

    .line 92
    .line 93
    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-direct {v2, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 98
    .line 99
    .line 100
    new-instance v4, Ld3/n0;

    .line 101
    .line 102
    invoke-direct {v4, v1, v2, v3}, Ld3/n0;-><init>(Ld3/d0;Landroid/os/Handler;Lj0/j;)V

    .line 103
    .line 104
    .line 105
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/play_billing/i0;->U(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    check-cast v1, Ld3/p0;

    .line 110
    .line 111
    check-cast p1, Ld3/p;

    .line 112
    .line 113
    iput-object v0, p1, Ld3/p;->h:Landroid/content/Context;

    .line 114
    .line 115
    iput-object p0, p1, Ld3/p;->i:Lorg/webrtc/videoengine/VideoCaptureAndroid;

    .line 116
    .line 117
    iput-object v1, p1, Ld3/p;->j:Ld3/p0;

    .line 118
    .line 119
    iget-object v0, v1, Ld3/p0;->b:Landroid/os/Handler;

    .line 120
    .line 121
    iput-object v0, p1, Ld3/p;->g:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :catch_0
    move-exception p1

    .line 125
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    :goto_1
    return-void
.end method

.method private static native GetContext()Landroid/content/Context;
    .annotation build Lorg/mozilla/gecko/annotation/WebRTCJNITarget;
    .end annotation
.end method

.method private native ProvideCameraFrame(IILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IIJJ)V
    .annotation build Lorg/mozilla/gecko/annotation/WebRTCJNITarget;
    .end annotation
.end method

.method private getDeviceOrientation()I
    .locals 3
    .annotation build Lorg/mozilla/gecko/annotation/WebRTCJNITarget;
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->b:Landroid/content/Context;

    if-eqz v1, :cond_3

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x10e

    goto :goto_0

    :cond_1
    const/16 v0, 0xb4

    goto :goto_0

    :cond_2
    const/16 v0, 0x5a

    :cond_3
    :goto_0
    return v0
.end method

.method private declared-synchronized startCapture(IIIIJ)Z
    .locals 1
    .annotation build Lorg/mozilla/gecko/annotation/WebRTCJNITarget;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object p3, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->c:Ld3/b0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    if-nez p3, :cond_0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    check-cast p3, Ld3/p;

    invoke-virtual {p3, p1, p2, p4}, Ld3/p;->e(III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-boolean p1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->e:Z

    if-eqz p1, :cond_1

    iput-wide p5, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->a:J

    :cond_1
    iget-boolean p1, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->e:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return p1

    :catch_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized stopCapture()Z
    .locals 4
    .annotation build Lorg/mozilla/gecko/annotation/WebRTCJNITarget;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->c:Ld3/b0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    const-wide/16 v2, 0x0

    :try_start_1
    iput-wide v2, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->a:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->c:Ld3/b0;

    check-cast v0, Ld3/p;

    invoke-virtual {v0}, Ld3/p;->f()V

    iget-object v0, p0, Lorg/webrtc/videoengine/VideoCaptureAndroid;->f:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :catch_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b()V
    .locals 0

    .line 1
    return-void
.end method

.method public final c()V
    .locals 0

    .line 1
    return-void
.end method

.method public final d()V
    .locals 0

    .line 1
    return-void
.end method

.method public final e()V
    .locals 0

    .line 1
    return-void
.end method

.method public final f()V
    .locals 0

    .line 1
    return-void
.end method

.method public final g(Lt2/q;)V
    .locals 16

    .line 1
    move-object/from16 v14, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-wide v1, v14, Lorg/webrtc/videoengine/VideoCaptureAndroid;->a:J

    .line 6
    .line 7
    const-wide/16 v3, 0x0

    .line 8
    .line 9
    cmp-long v1, v1, v3

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object v1, v0, Lt2/q;->c:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Ld3/u0;

    .line 16
    .line 17
    invoke-interface {v1}, Ld3/u0;->a()Lorg/webrtc/JavaI420Buffer;

    .line 18
    .line 19
    .line 20
    move-result-object v15

    .line 21
    iget v1, v15, Lorg/webrtc/JavaI420Buffer;->a:I

    .line 22
    .line 23
    iget v2, v15, Lorg/webrtc/JavaI420Buffer;->b:I

    .line 24
    .line 25
    iget-object v3, v15, Lorg/webrtc/JavaI420Buffer;->c:Ljava/nio/ByteBuffer;

    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    iget v4, v15, Lorg/webrtc/JavaI420Buffer;->f:I

    .line 32
    .line 33
    iget-object v5, v15, Lorg/webrtc/JavaI420Buffer;->d:Ljava/nio/ByteBuffer;

    .line 34
    .line 35
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    iget v6, v15, Lorg/webrtc/JavaI420Buffer;->g:I

    .line 40
    .line 41
    iget-object v7, v15, Lorg/webrtc/JavaI420Buffer;->e:Ljava/nio/ByteBuffer;

    .line 42
    .line 43
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    iget v8, v15, Lorg/webrtc/JavaI420Buffer;->h:I

    .line 48
    .line 49
    iget v9, v0, Lt2/q;->a:I

    .line 50
    .line 51
    iget-wide v10, v0, Lt2/q;->b:J

    .line 52
    .line 53
    const-wide/32 v12, 0xf4240

    .line 54
    .line 55
    .line 56
    div-long/2addr v10, v12

    .line 57
    iget-wide v12, v14, Lorg/webrtc/videoengine/VideoCaptureAndroid;->a:J

    .line 58
    .line 59
    move-object/from16 v0, p0

    .line 60
    .line 61
    invoke-direct/range {v0 .. v13}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->ProvideCameraFrame(IILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IIJJ)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v15}, Lorg/webrtc/JavaI420Buffer;->release()V

    .line 65
    .line 66
    .line 67
    :cond_0
    return-void
.end method
