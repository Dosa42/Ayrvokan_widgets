.class public abstract Ld3/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld3/b0;


# instance fields
.field public final a:Ld3/w;

.field public final b:Ld3/y;

.field public final c:Landroid/os/Handler;

.field public final d:Ld3/m;

.field public final e:Ld3/m;

.field public final f:Ld3/n;

.field public g:Landroid/os/Handler;

.field public h:Landroid/content/Context;

.field public i:Lorg/webrtc/videoengine/VideoCaptureAndroid;

.field public j:Ld3/p0;

.field public final k:Ljava/lang/Object;

.field public l:Z

.field public m:Ld3/x;

.field public n:Ljava/lang/String;

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:Ld3/a0;

.field public u:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ld3/y;Ld3/w;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ld3/m;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Ld3/m;-><init>(Ld3/p;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ld3/p;->d:Ld3/m;

    .line 10
    .line 11
    new-instance v0, Ld3/m;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Ld3/m;-><init>(Ld3/p;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Ld3/p;->e:Ld3/m;

    .line 17
    .line 18
    new-instance v0, Ld3/n;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-direct {v0, p0, v1}, Ld3/n;-><init>(Ld3/p;I)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Ld3/p;->f:Ld3/n;

    .line 25
    .line 26
    new-instance v0, Ljava/lang/Object;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Ld3/p;->k:Ljava/lang/Object;

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    iput v0, p0, Ld3/p;->s:I

    .line 35
    .line 36
    if-nez p2, :cond_0

    .line 37
    .line 38
    new-instance p2, Ld3/m;

    .line 39
    .line 40
    invoke-direct {p2, p0}, Ld3/m;-><init>(Ld3/p;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    iput-object p2, p0, Ld3/p;->b:Ld3/y;

    .line 44
    .line 45
    iput-object p3, p0, Ld3/p;->a:Ld3/w;

    .line 46
    .line 47
    iput-object p1, p0, Ld3/p;->n:Ljava/lang/String;

    .line 48
    .line 49
    new-instance p1, Landroid/os/Handler;

    .line 50
    .line 51
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 56
    .line 57
    .line 58
    iput-object p1, p0, Ld3/p;->c:Landroid/os/Handler;

    .line 59
    .line 60
    invoke-interface {p3}, Ld3/w;->a()[Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    array-length p2, p1

    .line 65
    if-eqz p2, :cond_2

    .line 66
    .line 67
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iget-object p2, p0, Ld3/p;->n:Ljava/lang/String;

    .line 72
    .line 73
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_1

    .line 78
    .line 79
    return-void

    .line 80
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 81
    .line 82
    new-instance p2, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    const-string p3, "Camera name "

    .line 85
    .line 86
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-object p3, p0, Ld3/p;->n:Ljava/lang/String;

    .line 90
    .line 91
    const-string v0, " does not match any known camera device."

    .line 92
    .line 93
    invoke-static {p2, p3, v0}, La1/b;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p1

    .line 101
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 102
    .line 103
    const-string p2, "No cameras attached."

    .line 104
    .line 105
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw p1
.end method

.method public static a(Ld3/p;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object p0, p0, Ld3/p;->g:Landroid/os/Handler;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    if-ne v0, p0, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    const-string p0, "CameraCapturer"

    .line 22
    .line 23
    const-string v0, "Check is on camera thread failed."

    .line 24
    .line 25
    invoke-static {p0, v0}, Lorg/webrtc/Logging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance p0, Ljava/lang/RuntimeException;

    .line 29
    .line 30
    const-string v0, "Not on camera thread."

    .line 31
    .line 32
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p0
.end method

.method public static b(Ld3/p;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "CameraCapturer"

    .line 5
    .line 6
    const-string v1, "switchCamera internal"

    .line 7
    .line 8
    const/4 v2, 0x3

    .line 9
    invoke-static {v2, v0, v1}, Lorg/webrtc/Logging;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Ld3/p;->a:Ld3/w;

    .line 13
    .line 14
    invoke-interface {v0}, Ld3/w;->a()[Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    array-length v1, v0

    .line 19
    const/4 v3, 0x2

    .line 20
    if-ge v1, v3, :cond_0

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_0
    iget-object v1, p0, Ld3/p;->k:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter v1

    .line 26
    :try_start_0
    iget v4, p0, Ld3/p;->s:I

    .line 27
    .line 28
    const/4 v5, 0x5

    .line 29
    const/4 v6, 0x1

    .line 30
    if-eq v4, v6, :cond_1

    .line 31
    .line 32
    const-string p0, "Camera switch already in progress."

    .line 33
    .line 34
    const-string v0, "CameraCapturer"

    .line 35
    .line 36
    :goto_0
    invoke-static {v5, v0, p0}, Lorg/webrtc/Logging;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_3

    .line 42
    :cond_1
    iget-boolean v4, p0, Ld3/p;->l:Z

    .line 43
    .line 44
    if-nez v4, :cond_2

    .line 45
    .line 46
    iget-object v7, p0, Ld3/p;->m:Ld3/x;

    .line 47
    .line 48
    if-nez v7, :cond_2

    .line 49
    .line 50
    const-string p0, "switchCamera: camera is not running."

    .line 51
    .line 52
    const-string v0, "CameraCapturer"

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    if-eqz v4, :cond_3

    .line 56
    .line 57
    iput v3, p0, Ld3/p;->s:I

    .line 58
    .line 59
    :goto_1
    monitor-exit v1

    .line 60
    goto :goto_2

    .line 61
    :cond_3
    iput v2, p0, Ld3/p;->s:I

    .line 62
    .line 63
    const-string v3, "CameraCapturer"

    .line 64
    .line 65
    const-string v4, "switchCamera: Stopping session"

    .line 66
    .line 67
    invoke-static {v2, v3, v4}, Lorg/webrtc/Logging;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object v3, p0, Ld3/p;->t:Ld3/a0;

    .line 71
    .line 72
    iget-object v4, v3, Ld3/a0;->a:Ld3/p0;

    .line 73
    .line 74
    iget-object v4, v4, Ld3/p0;->b:Landroid/os/Handler;

    .line 75
    .line 76
    iget-object v3, v3, Ld3/a0;->e:Ld3/z;

    .line 77
    .line 78
    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 79
    .line 80
    .line 81
    const/4 v3, 0x0

    .line 82
    iput-object v3, p0, Ld3/p;->t:Ld3/a0;

    .line 83
    .line 84
    iget-object v4, p0, Ld3/p;->m:Ld3/x;

    .line 85
    .line 86
    iget-object v5, p0, Ld3/p;->g:Landroid/os/Handler;

    .line 87
    .line 88
    new-instance v7, Ld3/o;

    .line 89
    .line 90
    invoke-direct {v7, v4, v6}, Ld3/o;-><init>(Ld3/x;I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 94
    .line 95
    .line 96
    iput-object v3, p0, Ld3/p;->m:Ld3/x;

    .line 97
    .line 98
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    iget-object v4, p0, Ld3/p;->n:Ljava/lang/String;

    .line 103
    .line 104
    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    add-int/2addr v3, v6

    .line 109
    array-length v4, v0

    .line 110
    rem-int/2addr v3, v4

    .line 111
    aget-object v0, v0, v3

    .line 112
    .line 113
    iput-object v0, p0, Ld3/p;->n:Ljava/lang/String;

    .line 114
    .line 115
    iput-boolean v6, p0, Ld3/p;->l:Z

    .line 116
    .line 117
    iput v6, p0, Ld3/p;->r:I

    .line 118
    .line 119
    const/4 v0, 0x0

    .line 120
    invoke-virtual {p0, v0}, Ld3/p;->d(I)V

    .line 121
    .line 122
    .line 123
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    const-string p0, "CameraCapturer"

    .line 125
    .line 126
    const-string v0, "switchCamera done"

    .line 127
    .line 128
    invoke-static {v2, p0, v0}, Lorg/webrtc/Logging;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    :goto_2
    return-void

    .line 132
    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    throw p0
.end method


# virtual methods
.method public abstract c(Ld3/m;Ld3/m;Landroid/content/Context;Ld3/p0;Ljava/lang/String;III)V
.end method

.method public final d(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Ld3/p;->c:Landroid/os/Handler;

    add-int/lit16 v1, p1, 0x2710

    int-to-long v1, v1

    iget-object v3, p0, Ld3/p;->f:Ld3/n;

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Ld3/p;->g:Landroid/os/Handler;

    new-instance v1, Ld3/n;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Ld3/n;-><init>(Ld3/p;I)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final e(III)V
    .locals 3

    .line 1
    const-string v0, "CameraCapturer"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "startCapture: "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v2, "x"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, "@"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const/4 v2, 0x3

    .line 34
    invoke-static {v2, v0, v1}, Lorg/webrtc/Logging;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Ld3/p;->h:Landroid/content/Context;

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    iget-object v0, p0, Ld3/p;->k:Ljava/lang/Object;

    .line 42
    .line 43
    monitor-enter v0

    .line 44
    :try_start_0
    iget-boolean v1, p0, Ld3/p;->l:Z

    .line 45
    .line 46
    if-nez v1, :cond_1

    .line 47
    .line 48
    iget-object v1, p0, Ld3/p;->m:Ld3/x;

    .line 49
    .line 50
    if-eqz v1, :cond_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    iput p1, p0, Ld3/p;->o:I

    .line 54
    .line 55
    iput p2, p0, Ld3/p;->p:I

    .line 56
    .line 57
    iput p3, p0, Ld3/p;->q:I

    .line 58
    .line 59
    const/4 p1, 0x1

    .line 60
    iput-boolean p1, p0, Ld3/p;->l:Z

    .line 61
    .line 62
    iput v2, p0, Ld3/p;->r:I

    .line 63
    .line 64
    const/4 p1, 0x0

    .line 65
    invoke-virtual {p0, p1}, Ld3/p;->d(I)V

    .line 66
    .line 67
    .line 68
    monitor-exit v0

    .line 69
    return-void

    .line 70
    :cond_1
    :goto_0
    const-string p1, "CameraCapturer"

    .line 71
    .line 72
    const-string p2, "Session already open"

    .line 73
    .line 74
    const/4 p3, 0x4

    .line 75
    invoke-static {p3, p1, p2}, Lorg/webrtc/Logging;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    monitor-exit v0

    .line 79
    return-void

    .line 80
    :catchall_0
    move-exception p1

    .line 81
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    throw p1

    .line 83
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    .line 84
    .line 85
    const-string p2, "CameraCapturer must be initialized before calling startCapture."

    .line 86
    .line 87
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p1
.end method

.method public final f()V
    .locals 7

    .line 1
    const-string v0, "CameraCapturer"

    .line 2
    .line 3
    const-string v1, "Stop capture"

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    invoke-static {v2, v0, v1}, Lorg/webrtc/Logging;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Ld3/p;->k:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Ld3/p;->l:Z

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const-string v1, "CameraCapturer"

    .line 17
    .line 18
    const-string v3, "Stop capture: Waiting for session to open"

    .line 19
    .line 20
    invoke-static {v2, v1, v3}, Lorg/webrtc/Logging;->d(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    :try_start_1
    iget-object v1, p0, Ld3/p;->k:Ljava/lang/Object;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    :try_start_2
    const-string v1, "CameraCapturer"

    .line 30
    .line 31
    const-string v2, "Stop capture interrupted while waiting for the session to open."

    .line 32
    .line 33
    const/4 v3, 0x4

    .line 34
    invoke-static {v3, v1, v2}, Lorg/webrtc/Logging;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 42
    .line 43
    .line 44
    monitor-exit v0

    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception v1

    .line 47
    goto :goto_2

    .line 48
    :cond_0
    iget-object v1, p0, Ld3/p;->m:Ld3/x;

    .line 49
    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    const-string v1, "CameraCapturer"

    .line 53
    .line 54
    const-string v3, "Stop capture: Nulling session"

    .line 55
    .line 56
    invoke-static {v2, v1, v3}, Lorg/webrtc/Logging;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Ld3/p;->t:Ld3/a0;

    .line 60
    .line 61
    iget-object v3, v1, Ld3/a0;->a:Ld3/p0;

    .line 62
    .line 63
    iget-object v3, v3, Ld3/p0;->b:Landroid/os/Handler;

    .line 64
    .line 65
    iget-object v1, v1, Ld3/a0;->e:Ld3/z;

    .line 66
    .line 67
    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 68
    .line 69
    .line 70
    const/4 v1, 0x0

    .line 71
    iput-object v1, p0, Ld3/p;->t:Ld3/a0;

    .line 72
    .line 73
    iget-object v3, p0, Ld3/p;->m:Ld3/x;

    .line 74
    .line 75
    iget-object v4, p0, Ld3/p;->g:Landroid/os/Handler;

    .line 76
    .line 77
    new-instance v5, Ld3/o;

    .line 78
    .line 79
    const/4 v6, 0x0

    .line 80
    invoke-direct {v5, v3, v6}, Ld3/o;-><init>(Ld3/x;I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 84
    .line 85
    .line 86
    iput-object v1, p0, Ld3/p;->m:Ld3/x;

    .line 87
    .line 88
    iget-object v1, p0, Ld3/p;->i:Lorg/webrtc/videoengine/VideoCaptureAndroid;

    .line 89
    .line 90
    iget-object v1, v1, Lorg/webrtc/videoengine/VideoCaptureAndroid;->f:Ljava/util/concurrent/CountDownLatch;

    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_1
    const-string v1, "CameraCapturer"

    .line 97
    .line 98
    const-string v3, "Stop capture: No session open"

    .line 99
    .line 100
    invoke-static {v2, v1, v3}, Lorg/webrtc/Logging;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    const-string v0, "CameraCapturer"

    .line 105
    .line 106
    const-string v1, "Stop capture done"

    .line 107
    .line 108
    invoke-static {v2, v0, v1}, Lorg/webrtc/Logging;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 113
    throw v1
.end method
