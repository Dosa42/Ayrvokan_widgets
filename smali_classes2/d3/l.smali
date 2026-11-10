.class public final Ld3/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld3/x;


# static fields
.field public static final r:Ly0/i;

.field public static final s:Ly0/i;

.field public static final t:Ly0/i;


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Ld3/m;

.field public final c:Ld3/m;

.field public final d:Landroid/content/Context;

.field public final e:Ld3/p0;

.field public final f:Ljava/lang/String;

.field public g:Landroid/hardware/camera2/CameraCharacteristics;

.field public h:I

.field public i:Z

.field public j:I

.field public k:Ld3/t;

.field public l:Landroid/hardware/camera2/CameraDevice;

.field public m:Landroid/view/Surface;

.field public n:Landroid/hardware/camera2/CameraCaptureSession;

.field public o:I

.field public p:Z

.field public final q:J


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
    sput-object v0, Ld3/l;->r:Ly0/i;

    .line 8
    .line 9
    new-instance v0, Ly0/i;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ly0/i;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Ld3/l;->s:Ly0/i;

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
    sput-object v0, Ld3/l;->t:Ly0/i;

    .line 27
    .line 28
    return-void
.end method

.method public constructor <init>(Ld3/m;Ld3/m;Landroid/content/Context;Landroid/hardware/camera2/CameraManager;Ld3/p0;Ljava/lang/String;III)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Ld3/l;->o:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Create new camera2 session on camera "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    const-string v3, "Camera2Session"

    .line 1
    invoke-static {v2, v3, v1}, Lorg/webrtc/Logging;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, p0, Ld3/l;->q:J

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Ld3/l;->a:Landroid/os/Handler;

    iput-object p1, p0, Ld3/l;->b:Ld3/m;

    iput-object p2, p0, Ld3/l;->c:Ld3/m;

    iput-object p3, p0, Ld3/l;->d:Landroid/content/Context;

    iput-object p5, p0, Ld3/l;->e:Ld3/p0;

    iput-object p6, p0, Ld3/l;->f:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Ld3/l;->c()V

    const-string p1, "start"

    .line 4
    invoke-static {v2, v3, p1}, Lorg/webrtc/Logging;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 5
    :try_start_0
    invoke-virtual {p4, p6}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p1

    iput-object p1, p0, Ld3/l;->g:Landroid/hardware/camera2/CameraCharacteristics;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1

    sget-object p3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Ld3/l;->h:I

    iget-object p1, p0, Ld3/l;->g:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object p3, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p3, 0x0

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, p3

    :goto_0
    iput-boolean p1, p0, Ld3/l;->i:Z

    .line 6
    invoke-virtual {p0}, Ld3/l;->c()V

    iget-object p1, p0, Ld3/l;->g:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object p5, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/util/Range;

    sget-object p5, Ld3/h;->c:Ljava/util/HashMap;

    .line 7
    array-length p5, p1

    const/16 v4, 0x3e8

    if-nez p5, :cond_1

    goto :goto_1

    :cond_1
    aget-object p3, p1, p3

    invoke-virtual {p3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ge p3, v4, :cond_2

    move v0, v4

    :cond_2
    move v4, v0

    .line 8
    :goto_1
    iput v4, p0, Ld3/l;->j:I

    invoke-static {p1, v4}, Ld3/h;->e([Landroid/util/Range;I)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p3, p0, Ld3/l;->g:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {p3}, Ld3/h;->f(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/ArrayList;

    move-result-object p3

    new-instance p5, Ljava/lang/StringBuilder;

    const-string v0, "Available preview sizes: "

    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 9
    invoke-static {v2, v3, p5}, Lorg/webrtc/Logging;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 10
    new-instance p5, Ljava/lang/StringBuilder;

    const-string v0, "Available fps ranges: "

    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 11
    invoke-static {v2, v3, p5}, Lorg/webrtc/Logging;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_4

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p5

    if-eqz p5, :cond_3

    goto :goto_2

    .line 13
    :cond_3
    new-instance p5, Ld3/q;

    invoke-direct {p5, p9}, Ld3/q;-><init>(I)V

    invoke-static {p1, p5}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld3/s;

    .line 14
    new-instance p5, Ld3/r;

    invoke-direct {p5, p7, p8}, Ld3/r;-><init>(II)V

    invoke-static {p3, p5}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ld3/l0;

    .line 15
    sget-object p5, Ld3/v;->a:Ljava/util/ArrayList;

    invoke-virtual {p5, p3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    sget-object p5, Ld3/l;->t:Ly0/i;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    new-instance p5, Ld3/t;

    iget p7, p3, Ld3/l0;->a:I

    iget p3, p3, Ld3/l0;->b:I

    invoke-direct {p5, p7, p3, p1}, Ld3/t;-><init>(IILd3/s;)V

    iput-object p5, p0, Ld3/l;->k:Ld3/t;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Using capture format: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Ld3/l;->k:Ld3/t;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-static {v2, v3, p1}, Lorg/webrtc/Logging;->d(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    :goto_2
    const-string p1, "No supported capture formats."

    .line 18
    invoke-virtual {p0, p1}, Ld3/l;->d(Ljava/lang/String;)V

    .line 19
    :goto_3
    invoke-virtual {p0}, Ld3/l;->c()V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Opening camera "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 20
    invoke-static {v2, v3, p1}, Lorg/webrtc/Logging;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p2}, Ld3/m;->j()V

    :try_start_1
    new-instance p1, Ld3/j;

    invoke-direct {p1, p0}, Ld3/j;-><init>(Ld3/l;)V

    invoke-virtual {p4, p6, p1, v1}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Failed to open camera: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ld3/l;->d(Ljava/lang/String;)V

    goto :goto_4

    :catch_1
    move-exception p1

    .line 22
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "getCameraCharacteristics(): "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ld3/l;->d(Ljava/lang/String;)V

    :goto_4
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Ld3/l;->a:Landroid/os/Handler;

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

.method public final d(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ld3/l;->c()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v1, "Error: "

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x5

    .line 19
    const-string v2, "Camera2Session"

    .line 20
    .line 21
    invoke-static {v1, v2, v0}, Lorg/webrtc/Logging;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Ld3/l;->n:Landroid/hardware/camera2/CameraCaptureSession;

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    const/4 v2, 0x2

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    iget v0, p0, Ld3/l;->o:I

    .line 31
    .line 32
    if-eq v0, v2, :cond_0

    .line 33
    .line 34
    move v0, v1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v0, 0x0

    .line 37
    :goto_0
    iput v2, p0, Ld3/l;->o:I

    .line 38
    .line 39
    invoke-virtual {p0}, Ld3/l;->e()V

    .line 40
    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    iget-object v0, p0, Ld3/l;->b:Ld3/m;

    .line 45
    .line 46
    invoke-virtual {v0, v1, p1}, Ld3/m;->l(ILjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    iget-object v0, p0, Ld3/l;->c:Ld3/m;

    .line 51
    .line 52
    invoke-virtual {v0, p0, p1}, Ld3/m;->i(Ld3/x;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :goto_1
    return-void
.end method

.method public final e()V
    .locals 3

    .line 1
    const-string v0, "Stop internal"

    const-string v1, "Camera2Session"

    invoke-static {v1, v0}, Lorg/webrtc/Logging;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ld3/l;->c()V

    iget-object v0, p0, Ld3/l;->e:Ld3/p0;

    invoke-virtual {v0}, Ld3/p0;->b()V

    iget-object v0, p0, Ld3/l;->n:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    iput-object v2, p0, Ld3/l;->n:Landroid/hardware/camera2/CameraCaptureSession;

    :cond_0
    iget-object v0, p0, Ld3/l;->m:Landroid/view/Surface;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v2, p0, Ld3/l;->m:Landroid/view/Surface;

    :cond_1
    iget-object v0, p0, Ld3/l;->l:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    iput-object v2, p0, Ld3/l;->l:Landroid/hardware/camera2/CameraDevice;

    :cond_2
    const-string v0, "Stop done"

    invoke-static {v1, v0}, Lorg/webrtc/Logging;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final stop()V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Stop camera2 session on camera "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Ld3/l;->f:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    const-string v2, "Camera2Session"

    .line 19
    .line 20
    invoke-static {v1, v2, v0}, Lorg/webrtc/Logging;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Ld3/l;->c()V

    .line 24
    .line 25
    .line 26
    iget v0, p0, Ld3/l;->o:I

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
    move-result-wide v2

    .line 35
    iput v1, p0, Ld3/l;->o:I

    .line 36
    .line 37
    invoke-virtual {p0}, Ld3/l;->e()V

    .line 38
    .line 39
    .line 40
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 41
    .line 42
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 43
    .line 44
    .line 45
    move-result-wide v4

    .line 46
    sub-long/2addr v4, v2

    .line 47
    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 48
    .line 49
    .line 50
    sget-object v0, Ld3/l;->s:Ly0/i;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    :cond_0
    return-void
.end method
