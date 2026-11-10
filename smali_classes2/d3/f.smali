.class public final Ld3/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld3/x;


# static fields
.field public static final l:Ly0/i;

.field public static final m:Ly0/i;

.field public static final n:Ly0/i;


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Ld3/m;

.field public final c:Landroid/content/Context;

.field public final d:Ld3/p0;

.field public final e:I

.field public final f:Landroid/hardware/Camera;

.field public final g:Landroid/hardware/Camera$CameraInfo;

.field public final h:Ld3/t;

.field public final i:J

.field public j:I

.field public k:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ly0/i;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ly0/i;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Ld3/f;->l:Ly0/i;

    .line 8
    .line 9
    new-instance v0, Ly0/i;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ly0/i;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Ld3/f;->m:Ly0/i;

    .line 15
    .line 16
    sget-object v0, Ld3/v;->a:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    new-instance v0, Ly0/i;

    .line 22
    .line 23
    invoke-direct {v0, v1}, Ly0/i;-><init>(I)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Ld3/f;->n:Ly0/i;

    .line 27
    .line 28
    return-void
.end method

.method public constructor <init>(Ld3/m;ZLandroid/content/Context;Ld3/p0;ILandroid/hardware/Camera;Landroid/hardware/Camera$CameraInfo;Ld3/t;J)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Create new camera1 session on camera "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "Camera1Session"

    .line 1
    invoke-static {v1, v2, v0}, Lorg/webrtc/Logging;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ld3/f;->a:Landroid/os/Handler;

    iput-object p1, p0, Ld3/f;->b:Ld3/m;

    iput-object p3, p0, Ld3/f;->c:Landroid/content/Context;

    iput-object p4, p0, Ld3/f;->d:Ld3/p0;

    iput p5, p0, Ld3/f;->e:I

    iput-object p6, p0, Ld3/f;->f:Landroid/hardware/Camera;

    iput-object p7, p0, Ld3/f;->g:Landroid/hardware/Camera$CameraInfo;

    iput-object p8, p0, Ld3/f;->h:Ld3/t;

    iput-wide p9, p0, Ld3/f;->i:J

    iget p1, p8, Ld3/t;->a:I

    iget p3, p8, Ld3/t;->b:I

    invoke-virtual {p4, p1, p3}, Ld3/p0;->a(II)V

    const-string p1, "Start capturing"

    .line 3
    invoke-static {v1, v2, p1}, Lorg/webrtc/Logging;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Ld3/f;->c()V

    const/4 p1, 0x1

    iput p1, p0, Ld3/f;->j:I

    new-instance p1, Ld3/c;

    invoke-direct {p1, p0}, Ld3/c;-><init>(Ld3/f;)V

    invoke-virtual {p6, p1}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    if-eqz p2, :cond_1

    .line 5
    new-instance p1, Lh0/b;

    const/16 p2, 0x11

    invoke-direct {p1, p0, p2}, Lh0/b;-><init>(Ljava/lang/Object;I)V

    .line 6
    iget-object p2, p4, Ld3/p0;->h:Ld3/w0;

    if-nez p2, :cond_0

    iget-object p2, p4, Ld3/p0;->m:Ld3/w0;

    if-nez p2, :cond_0

    iput-object p1, p4, Ld3/p0;->m:Ld3/w0;

    iget-object p1, p4, Ld3/p0;->n:Ld3/z;

    iget-object p2, p4, Ld3/p0;->b:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "SurfaceTextureHelper listener has already been set."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    new-instance p1, Ld3/e;

    invoke-direct {p1, p0}, Ld3/e;-><init>(Ld3/f;)V

    invoke-virtual {p6, p1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 8
    :goto_0
    :try_start_0
    invoke-virtual {p6}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Ld3/f;->e()V

    iget-object p2, p0, Ld3/f;->b:Ld3/m;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Ld3/m;->i(Ld3/x;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static d(Landroid/hardware/Camera$Parameters;III)Ld3/t;
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, [I

    .line 25
    .line 26
    new-instance v3, Ld3/s;

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    aget v4, v2, v4

    .line 30
    .line 31
    const/4 v5, 0x1

    .line 32
    aget v2, v2, v5

    .line 33
    .line 34
    invoke-direct {v3, v4, v2}, Ld3/s;-><init>(II)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v2, "Available fps ranges: "

    .line 44
    .line 45
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const/4 v2, 0x3

    .line 56
    const-string v3, "Camera1Session"

    .line 57
    .line 58
    invoke-static {v2, v3, v0}, Lorg/webrtc/Logging;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    sget-object v0, Ld3/v;->a:Ljava/util/ArrayList;

    .line 62
    .line 63
    new-instance v0, Ld3/q;

    .line 64
    .line 65
    invoke-direct {v0, p3}, Ld3/q;-><init>(I)V

    .line 66
    .line 67
    .line 68
    invoke-static {v1, v0}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p3

    .line 72
    check-cast p3, Ld3/s;

    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-static {p0}, Ld3/b;->e(Ljava/util/List;)Ljava/util/ArrayList;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    new-instance v0, Ld3/r;

    .line 83
    .line 84
    invoke-direct {v0, p1, p2}, Ld3/r;-><init>(II)V

    .line 85
    .line 86
    .line 87
    invoke-static {p0, v0}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    check-cast p0, Ld3/l0;

    .line 92
    .line 93
    sget-object p1, Ld3/v;->a:Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 96
    .line 97
    .line 98
    sget-object p1, Ld3/f;->n:Ly0/i;

    .line 99
    .line 100
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    new-instance p1, Ld3/t;

    .line 104
    .line 105
    iget p2, p0, Ld3/l0;->a:I

    .line 106
    .line 107
    iget p0, p0, Ld3/l0;->b:I

    .line 108
    .line 109
    invoke-direct {p1, p2, p0, p3}, Ld3/t;-><init>(IILd3/s;)V

    .line 110
    .line 111
    .line 112
    return-object p1
.end method

.method public static f(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;Ld3/t;Ld3/l0;Z)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    iget-object v1, p2, Ld3/t;->c:Ld3/s;

    iget v2, v1, Ld3/s;->a:I

    iget v1, v1, Ld3/s;->b:I

    invoke-virtual {p1, v2, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    iget v1, p2, Ld3/t;->a:I

    iget p2, p2, Ld3/t;->b:I

    invoke-virtual {p1, v1, p2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    iget p2, p3, Ld3/l0;->a:I

    iget p3, p3, Ld3/l0;->b:I

    invoke-virtual {p1, p2, p3}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    if-nez p4, :cond_0

    const/16 p2, 0x11

    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    :cond_0
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    :cond_1
    const-string p2, "continuous-video"

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Ld3/f;->a:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Wrong thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e()V
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    const-string v1, "Camera1Session"

    .line 3
    .line 4
    const-string v2, "Stop internal"

    .line 5
    .line 6
    invoke-static {v0, v1, v2}, Lorg/webrtc/Logging;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ld3/f;->c()V

    .line 10
    .line 11
    .line 12
    iget v2, p0, Ld3/f;->j:I

    .line 13
    .line 14
    const/4 v3, 0x2

    .line 15
    if-ne v2, v3, :cond_0

    .line 16
    .line 17
    const-string v2, "Camera is already stopped"

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iput v3, p0, Ld3/f;->j:I

    .line 21
    .line 22
    iget-object v2, p0, Ld3/f;->d:Ld3/p0;

    .line 23
    .line 24
    invoke-virtual {v2}, Ld3/p0;->b()V

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Ld3/f;->f:Landroid/hardware/Camera;

    .line 28
    .line 29
    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    .line 33
    .line 34
    .line 35
    iget-object v2, p0, Ld3/f;->b:Ld3/m;

    .line 36
    .line 37
    invoke-virtual {v2, p0}, Ld3/m;->g(Ld3/x;)V

    .line 38
    .line 39
    .line 40
    const-string v2, "Stop done"

    .line 41
    .line 42
    :goto_0
    invoke-static {v0, v1, v2}, Lorg/webrtc/Logging;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final stop()V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Stop camera1 session on camera "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Ld3/f;->e:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x3

    .line 18
    const-string v2, "Camera1Session"

    .line 19
    .line 20
    invoke-static {v1, v2, v0}, Lorg/webrtc/Logging;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Ld3/f;->c()V

    .line 24
    .line 25
    .line 26
    iget v0, p0, Ld3/f;->j:I

    .line 27
    .line 28
    const/4 v1, 0x2

    .line 29
    if-eq v0, v1, :cond_0

    .line 30
    .line 31
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    invoke-virtual {p0}, Ld3/f;->e()V

    .line 36
    .line 37
    .line 38
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 39
    .line 40
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 41
    .line 42
    .line 43
    move-result-wide v3

    .line 44
    sub-long/2addr v3, v0

    .line 45
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 46
    .line 47
    .line 48
    sget-object v0, Ld3/f;->m:Ly0/i;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    :cond_0
    return-void
.end method
