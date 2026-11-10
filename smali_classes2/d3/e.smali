.class public final Ld3/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# instance fields
.field public final synthetic a:Ld3/f;


# direct methods
.method public constructor <init>(Ld3/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld3/e;->a:Ld3/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 8

    .line 1
    iget-object v0, p0, Ld3/e;->a:Ld3/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Ld3/f;->c()V

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Ld3/f;->f:Landroid/hardware/Camera;

    .line 7
    .line 8
    const-string v2, "Camera1Session"

    .line 9
    .line 10
    if-eq p2, v1, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x5

    .line 13
    const-string p2, "Callback from a different camera. This should never happen."

    .line 14
    .line 15
    invoke-static {p1, v2, p2}, Lorg/webrtc/Logging;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget p2, v0, Ld3/f;->j:I

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    if-eq p2, v1, :cond_1

    .line 23
    .line 24
    const/4 p1, 0x3

    .line 25
    const-string p2, "Bytebuffer frame captured but camera is no longer running."

    .line 26
    .line 27
    invoke-static {p1, v2, p2}, Lorg/webrtc/Logging;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 32
    .line 33
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 34
    .line 35
    .line 36
    move-result-wide v2

    .line 37
    invoke-virtual {p2, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 38
    .line 39
    .line 40
    move-result-wide v2

    .line 41
    iget-boolean p2, v0, Ld3/f;->k:Z

    .line 42
    .line 43
    if-nez p2, :cond_2

    .line 44
    .line 45
    sget-object p2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 46
    .line 47
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 48
    .line 49
    .line 50
    move-result-wide v4

    .line 51
    iget-wide v6, v0, Ld3/f;->i:J

    .line 52
    .line 53
    sub-long/2addr v4, v6

    .line 54
    invoke-virtual {p2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 55
    .line 56
    .line 57
    sget-object p2, Ld3/f;->l:Ly0/i;

    .line 58
    .line 59
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    iput-boolean v1, v0, Ld3/f;->k:Z

    .line 63
    .line 64
    :cond_2
    new-instance p2, Lorg/webrtc/NV21Buffer;

    .line 65
    .line 66
    iget-object v1, v0, Ld3/f;->h:Ld3/t;

    .line 67
    .line 68
    iget v4, v1, Ld3/t;->a:I

    .line 69
    .line 70
    new-instance v5, Ld3/d;

    .line 71
    .line 72
    const/4 v6, 0x0

    .line 73
    invoke-direct {v5, p0, p1, v6}, Ld3/d;-><init>(Ld3/e;[BI)V

    .line 74
    .line 75
    .line 76
    iget v1, v1, Ld3/t;->b:I

    .line 77
    .line 78
    invoke-direct {p2, p1, v4, v1, v5}, Lorg/webrtc/NV21Buffer;-><init>([BIILd3/d;)V

    .line 79
    .line 80
    .line 81
    new-instance p1, Lt2/q;

    .line 82
    .line 83
    iget-object v1, v0, Ld3/f;->c:Landroid/content/Context;

    .line 84
    .line 85
    invoke-static {v1}, Ld3/x;->b(Landroid/content/Context;)I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    iget-object v4, v0, Ld3/f;->g:Landroid/hardware/Camera$CameraInfo;

    .line 90
    .line 91
    iget v5, v4, Landroid/hardware/Camera$CameraInfo;->facing:I

    .line 92
    .line 93
    if-nez v5, :cond_3

    .line 94
    .line 95
    rsub-int v1, v1, 0x168

    .line 96
    .line 97
    :cond_3
    iget v4, v4, Landroid/hardware/Camera$CameraInfo;->orientation:I

    .line 98
    .line 99
    add-int/2addr v4, v1

    .line 100
    rem-int/lit16 v4, v4, 0x168

    .line 101
    .line 102
    invoke-direct {p1, p2, v4, v2, v3}, Lt2/q;-><init>(Ld3/u0;IJ)V

    .line 103
    .line 104
    .line 105
    iget-object p2, v0, Ld3/f;->b:Ld3/m;

    .line 106
    .line 107
    invoke-virtual {p2, v0, p1}, Ld3/m;->m(Ld3/x;Lt2/q;)V

    .line 108
    .line 109
    .line 110
    iget-object p1, p1, Lt2/q;->c:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast p1, Ld3/u0;

    .line 113
    .line 114
    invoke-interface {p1}, Ld3/u0;->release()V

    .line 115
    .line 116
    .line 117
    return-void
.end method
