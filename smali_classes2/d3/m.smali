.class public final Ld3/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld3/y;


# instance fields
.field public final synthetic a:Ld3/p;


# direct methods
.method public synthetic constructor <init>(Ld3/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld3/m;->a:Ld3/p;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
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

.method public final g(Ld3/x;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ld3/m;->a:Ld3/p;

    .line 2
    .line 3
    invoke-static {v0}, Ld3/p;->a(Ld3/p;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ld3/m;->a:Ld3/p;

    .line 7
    .line 8
    iget-object v0, v0, Ld3/p;->k:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Ld3/m;->a:Ld3/p;

    .line 12
    .line 13
    iget-object v2, v1, Ld3/p;->m:Ld3/x;

    .line 14
    .line 15
    if-eq p1, v2, :cond_0

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    const-string p1, "CameraCapturer"

    .line 20
    .line 21
    const-string v1, "onCameraClosed from another session."

    .line 22
    .line 23
    invoke-static {p1, v1}, Lorg/webrtc/Logging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :cond_0
    iget-object p1, v1, Ld3/p;->b:Ld3/y;

    .line 29
    .line 30
    invoke-interface {p1}, Ld3/y;->c()V

    .line 31
    .line 32
    .line 33
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p1
.end method

.method public final h(Ld3/x;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ld3/m;->a:Ld3/p;

    .line 2
    .line 3
    invoke-static {v0}, Ld3/p;->a(Ld3/p;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ld3/m;->a:Ld3/p;

    .line 7
    .line 8
    iget-object v0, v0, Ld3/p;->k:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Ld3/m;->a:Ld3/p;

    .line 12
    .line 13
    iget-object v2, v1, Ld3/p;->m:Ld3/x;

    .line 14
    .line 15
    if-eq p1, v2, :cond_0

    .line 16
    .line 17
    const-string p1, "CameraCapturer"

    .line 18
    .line 19
    const-string v1, "onCameraDisconnected from another session."

    .line 20
    .line 21
    invoke-static {p1, v1}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    monitor-exit v0

    .line 25
    return-void

    .line 26
    :cond_0
    iget-object p1, v1, Ld3/p;->b:Ld3/y;

    .line 27
    .line 28
    invoke-interface {p1}, Ld3/y;->d()V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Ld3/m;->a:Ld3/p;

    .line 32
    .line 33
    invoke-virtual {p1}, Ld3/p;->f()V

    .line 34
    .line 35
    .line 36
    monitor-exit v0

    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p1
.end method

.method public final i(Ld3/x;Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "onCameraError from another session: "

    .line 2
    .line 3
    iget-object v1, p0, Ld3/m;->a:Ld3/p;

    .line 4
    .line 5
    invoke-static {v1}, Ld3/p;->a(Ld3/p;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Ld3/m;->a:Ld3/p;

    .line 9
    .line 10
    iget-object v1, v1, Ld3/p;->k:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v1

    .line 13
    :try_start_0
    iget-object v2, p0, Ld3/m;->a:Ld3/p;

    .line 14
    .line 15
    iget-object v3, v2, Ld3/p;->m:Ld3/x;

    .line 16
    .line 17
    if-eq p1, v3, :cond_0

    .line 18
    .line 19
    const-string p1, "CameraCapturer"

    .line 20
    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    const/4 v0, 0x4

    .line 34
    invoke-static {v0, p1, p2}, Lorg/webrtc/Logging;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    monitor-exit v1

    .line 38
    return-void

    .line 39
    :cond_0
    iget-object p1, v2, Ld3/p;->b:Ld3/y;

    .line 40
    .line 41
    invoke-interface {p1}, Ld3/y;->b()V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Ld3/m;->a:Ld3/p;

    .line 45
    .line 46
    invoke-virtual {p1}, Ld3/p;->f()V

    .line 47
    .line 48
    .line 49
    monitor-exit v1

    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw p1
.end method

.method public final j()V
    .locals 4

    .line 1
    iget-object v0, p0, Ld3/m;->a:Ld3/p;

    .line 2
    .line 3
    invoke-static {v0}, Ld3/p;->a(Ld3/p;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ld3/m;->a:Ld3/p;

    .line 7
    .line 8
    iget-object v0, v0, Ld3/p;->k:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Ld3/m;->a:Ld3/p;

    .line 12
    .line 13
    iget-object v2, v1, Ld3/p;->m:Ld3/x;

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    const-string v1, "CameraCapturer"

    .line 18
    .line 19
    const-string v2, "onCameraOpening while session was open."

    .line 20
    .line 21
    const/4 v3, 0x4

    .line 22
    invoke-static {v3, v1, v2}, Lorg/webrtc/Logging;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    monitor-exit v0

    .line 26
    return-void

    .line 27
    :cond_0
    iget-object v1, v1, Ld3/p;->b:Ld3/y;

    .line 28
    .line 29
    invoke-interface {v1}, Ld3/y;->f()V

    .line 30
    .line 31
    .line 32
    monitor-exit v0

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception v1

    .line 35
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw v1
.end method

.method public final k(Ld3/x;)V
    .locals 7

    .line 1
    iget-object v0, p0, Ld3/m;->a:Ld3/p;

    .line 2
    .line 3
    invoke-static {v0}, Ld3/p;->a(Ld3/p;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "CameraCapturer"

    .line 7
    .line 8
    iget-object v1, p0, Ld3/m;->a:Ld3/p;

    .line 9
    .line 10
    iget v1, v1, Ld3/p;->s:I

    .line 11
    .line 12
    invoke-static {v1}, La1/b;->o(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "Create session done. Switch state: "

    .line 17
    .line 18
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const/4 v2, 0x3

    .line 23
    invoke-static {v2, v0, v1}, Lorg/webrtc/Logging;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Ld3/m;->a:Ld3/p;

    .line 27
    .line 28
    iget-object v1, v0, Ld3/p;->c:Landroid/os/Handler;

    .line 29
    .line 30
    iget-object v0, v0, Ld3/p;->f:Ld3/n;

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Ld3/m;->a:Ld3/p;

    .line 36
    .line 37
    iget-object v0, v0, Ld3/p;->k:Ljava/lang/Object;

    .line 38
    .line 39
    monitor-enter v0

    .line 40
    :try_start_0
    iget-object v1, p0, Ld3/m;->a:Ld3/p;

    .line 41
    .line 42
    iget-object v1, v1, Ld3/p;->i:Lorg/webrtc/videoengine/VideoCaptureAndroid;

    .line 43
    .line 44
    const/4 v3, 0x1

    .line 45
    iput-boolean v3, v1, Lorg/webrtc/videoengine/VideoCaptureAndroid;->e:Z

    .line 46
    .line 47
    iget-object v1, v1, Lorg/webrtc/videoengine/VideoCaptureAndroid;->d:Ljava/util/concurrent/CountDownLatch;

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Ld3/m;->a:Ld3/p;

    .line 53
    .line 54
    const/4 v4, 0x0

    .line 55
    iput-boolean v4, v1, Ld3/p;->l:Z

    .line 56
    .line 57
    iput-object p1, v1, Ld3/p;->m:Ld3/x;

    .line 58
    .line 59
    new-instance p1, Ld3/a0;

    .line 60
    .line 61
    iget-object v5, v1, Ld3/p;->j:Ld3/p0;

    .line 62
    .line 63
    iget-object v6, v1, Ld3/p;->b:Ld3/y;

    .line 64
    .line 65
    invoke-direct {p1, v5, v6}, Ld3/a0;-><init>(Ld3/p0;Ld3/y;)V

    .line 66
    .line 67
    .line 68
    iput-object p1, v1, Ld3/p;->t:Ld3/a0;

    .line 69
    .line 70
    iget-object p1, p0, Ld3/m;->a:Ld3/p;

    .line 71
    .line 72
    iput-boolean v4, p1, Ld3/p;->u:Z

    .line 73
    .line 74
    iget-object p1, p1, Ld3/p;->k:Ljava/lang/Object;

    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Ld3/m;->a:Ld3/p;

    .line 80
    .line 81
    iget v1, p1, Ld3/p;->s:I

    .line 82
    .line 83
    if-ne v1, v2, :cond_0

    .line 84
    .line 85
    iput v3, p1, Ld3/p;->s:I

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :catchall_0
    move-exception p1

    .line 89
    goto :goto_1

    .line 90
    :cond_0
    const/4 v2, 0x2

    .line 91
    if-ne v1, v2, :cond_1

    .line 92
    .line 93
    iput v3, p1, Ld3/p;->s:I

    .line 94
    .line 95
    invoke-static {p1}, Ld3/p;->b(Ld3/p;)V

    .line 96
    .line 97
    .line 98
    :cond_1
    :goto_0
    monitor-exit v0

    .line 99
    return-void

    .line 100
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    throw p1
.end method

.method public final l(ILjava/lang/String;)V
    .locals 6

    .line 1
    const-string v0, "Opening camera failed, passing: "

    .line 2
    .line 3
    const-string v1, "Opening camera failed, retry: "

    .line 4
    .line 5
    iget-object v2, p0, Ld3/m;->a:Ld3/p;

    .line 6
    .line 7
    invoke-static {v2}, Ld3/p;->a(Ld3/p;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Ld3/m;->a:Ld3/p;

    .line 11
    .line 12
    iget-object v3, v2, Ld3/p;->c:Landroid/os/Handler;

    .line 13
    .line 14
    iget-object v2, v2, Ld3/p;->f:Ld3/n;

    .line 15
    .line 16
    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Ld3/m;->a:Ld3/p;

    .line 20
    .line 21
    iget-object v2, v2, Ld3/p;->k:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter v2

    .line 24
    :try_start_0
    iget-object v3, p0, Ld3/m;->a:Ld3/p;

    .line 25
    .line 26
    iget-object v3, v3, Ld3/p;->i:Lorg/webrtc/videoengine/VideoCaptureAndroid;

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    iput-boolean v4, v3, Lorg/webrtc/videoengine/VideoCaptureAndroid;->e:Z

    .line 30
    .line 31
    iget-object v3, v3, Lorg/webrtc/videoengine/VideoCaptureAndroid;->d:Ljava/util/concurrent/CountDownLatch;

    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 34
    .line 35
    .line 36
    iget-object v3, p0, Ld3/m;->a:Ld3/p;

    .line 37
    .line 38
    iget v5, v3, Ld3/p;->r:I

    .line 39
    .line 40
    add-int/lit8 v5, v5, -0x1

    .line 41
    .line 42
    iput v5, v3, Ld3/p;->r:I

    .line 43
    .line 44
    const/4 v3, 0x4

    .line 45
    if-gtz v5, :cond_2

    .line 46
    .line 47
    const-string v1, "CameraCapturer"

    .line 48
    .line 49
    new-instance v5, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-static {v3, v1, p2}, Lorg/webrtc/Logging;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object p2, p0, Ld3/m;->a:Ld3/p;

    .line 65
    .line 66
    iput-boolean v4, p2, Ld3/p;->l:Z

    .line 67
    .line 68
    iget-object p2, p2, Ld3/p;->k:Ljava/lang/Object;

    .line 69
    .line 70
    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 71
    .line 72
    .line 73
    iget-object p2, p0, Ld3/m;->a:Ld3/p;

    .line 74
    .line 75
    iget v0, p2, Ld3/p;->s:I

    .line 76
    .line 77
    const/4 v1, 0x1

    .line 78
    if-eq v0, v1, :cond_0

    .line 79
    .line 80
    iput v1, p2, Ld3/p;->s:I

    .line 81
    .line 82
    :cond_0
    const/4 v0, 0x2

    .line 83
    if-ne p1, v0, :cond_1

    .line 84
    .line 85
    iget-object p1, p2, Ld3/p;->b:Ld3/y;

    .line 86
    .line 87
    invoke-interface {p1}, Ld3/y;->d()V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    iget-object p1, p2, Ld3/p;->b:Ld3/y;

    .line 92
    .line 93
    invoke-interface {p1}, Ld3/y;->b()V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_2
    const-string p1, "CameraCapturer"

    .line 98
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    invoke-static {v3, p1, p2}, Lorg/webrtc/Logging;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iget-object p1, p0, Ld3/m;->a:Ld3/p;

    .line 115
    .line 116
    const/16 p2, 0x1f4

    .line 117
    .line 118
    invoke-virtual {p1, p2}, Ld3/p;->d(I)V

    .line 119
    .line 120
    .line 121
    :goto_0
    monitor-exit v2

    .line 122
    return-void

    .line 123
    :catchall_0
    move-exception p1

    .line 124
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    throw p1
.end method

.method public final m(Ld3/x;Lt2/q;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ld3/m;->a:Ld3/p;

    .line 2
    .line 3
    invoke-static {v0}, Ld3/p;->a(Ld3/p;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ld3/m;->a:Ld3/p;

    .line 7
    .line 8
    iget-object v0, v0, Ld3/p;->k:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Ld3/m;->a:Ld3/p;

    .line 12
    .line 13
    iget-object v2, v1, Ld3/p;->m:Ld3/x;

    .line 14
    .line 15
    if-eq p1, v2, :cond_0

    .line 16
    .line 17
    const-string p1, "CameraCapturer"

    .line 18
    .line 19
    const-string p2, "onFrameCaptured from another session."

    .line 20
    .line 21
    const/4 v1, 0x4

    .line 22
    invoke-static {v1, p1, p2}, Lorg/webrtc/Logging;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    monitor-exit v0

    .line 26
    return-void

    .line 27
    :cond_0
    iget-boolean p1, v1, Ld3/p;->u:Z

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    iget-object p1, v1, Ld3/p;->b:Ld3/y;

    .line 33
    .line 34
    invoke-interface {p1}, Ld3/y;->e()V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Ld3/m;->a:Ld3/p;

    .line 38
    .line 39
    iput-boolean v2, p1, Ld3/p;->u:Z

    .line 40
    .line 41
    :cond_1
    iget-object p1, p0, Ld3/m;->a:Ld3/p;

    .line 42
    .line 43
    iget-object p1, p1, Ld3/p;->t:Ld3/a0;

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    iget-object v3, p1, Ld3/a0;->a:Ld3/p0;

    .line 53
    .line 54
    iget-object v3, v3, Ld3/p0;->b:Landroid/os/Handler;

    .line 55
    .line 56
    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    if-ne v1, v3, :cond_2

    .line 65
    .line 66
    iget v1, p1, Ld3/a0;->c:I

    .line 67
    .line 68
    add-int/2addr v1, v2

    .line 69
    iput v1, p1, Ld3/a0;->c:I

    .line 70
    .line 71
    iget-object p1, p0, Ld3/m;->a:Ld3/p;

    .line 72
    .line 73
    iget-object p1, p1, Ld3/p;->i:Lorg/webrtc/videoengine/VideoCaptureAndroid;

    .line 74
    .line 75
    invoke-virtual {p1, p2}, Lorg/webrtc/videoengine/VideoCaptureAndroid;->g(Lt2/q;)V

    .line 76
    .line 77
    .line 78
    monitor-exit v0

    .line 79
    return-void

    .line 80
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 81
    .line 82
    const-string p2, "Wrong thread"

    .line 83
    .line 84
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p1

    .line 88
    :catchall_0
    move-exception p1

    .line 89
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    throw p1
.end method
