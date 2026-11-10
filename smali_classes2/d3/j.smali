.class public final Ld3/j;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ld3/l;


# direct methods
.method public constructor <init>(Ld3/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld3/j;->a:Ld3/l;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2

    .line 1
    iget-object p1, p0, Ld3/j;->a:Ld3/l;

    .line 2
    .line 3
    invoke-virtual {p1}, Ld3/l;->c()V

    .line 4
    .line 5
    .line 6
    const-string v0, "Camera2Session"

    .line 7
    .line 8
    const-string v1, "Camera device closed."

    .line 9
    .line 10
    invoke-static {v0, v1}, Lorg/webrtc/Logging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p1, Ld3/l;->c:Ld3/m;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ld3/m;->g(Ld3/x;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2

    .line 1
    iget-object p1, p0, Ld3/j;->a:Ld3/l;

    .line 2
    .line 3
    invoke-virtual {p1}, Ld3/l;->c()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Ld3/l;->n:Landroid/hardware/camera2/CameraCaptureSession;

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget v0, p1, Ld3/l;->o:I

    .line 12
    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    iput v1, p1, Ld3/l;->o:I

    .line 19
    .line 20
    invoke-virtual {p1}, Ld3/l;->e()V

    .line 21
    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object p1, p1, Ld3/l;->b:Ld3/m;

    .line 26
    .line 27
    const-string v0, "Camera disconnected / evicted."

    .line 28
    .line 29
    invoke-virtual {p1, v1, v0}, Ld3/m;->l(ILjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    iget-object v0, p1, Ld3/l;->c:Ld3/m;

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ld3/m;->h(Ld3/x;)V

    .line 36
    .line 37
    .line 38
    :goto_1
    return-void
.end method

.method public final onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Ld3/j;->a:Ld3/l;

    .line 2
    .line 3
    invoke-virtual {p1}, Ld3/l;->c()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    if-eq p2, v0, :cond_4

    .line 8
    .line 9
    const/4 v0, 0x2

    .line 10
    if-eq p2, v0, :cond_3

    .line 11
    .line 12
    const/4 v0, 0x3

    .line 13
    if-eq p2, v0, :cond_2

    .line 14
    .line 15
    const/4 v0, 0x4

    .line 16
    if-eq p2, v0, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x5

    .line 19
    if-eq p2, v0, :cond_0

    .line 20
    .line 21
    const-string v0, "Unknown camera error: "

    .line 22
    .line 23
    invoke-static {v0, p2}, La1/b;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string p2, "Camera service has encountered a fatal error."

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const-string p2, "Camera device has encountered a fatal error."

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const-string p2, "Camera device could not be opened due to a device policy."

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_3
    const-string p2, "Camera device could not be opened because there are too many other open camera devices."

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_4
    const-string p2, "Camera device is in use already."

    .line 41
    .line 42
    :goto_0
    invoke-virtual {p1, p2}, Ld3/l;->d(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public final onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ld3/j;->a:Ld3/l;

    .line 2
    .line 3
    invoke-virtual {v0}, Ld3/l;->c()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    const-string v2, "Camera2Session"

    .line 8
    .line 9
    const-string v3, "Camera opened."

    .line 10
    .line 11
    invoke-static {v1, v2, v3}, Lorg/webrtc/Logging;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, v0, Ld3/l;->l:Landroid/hardware/camera2/CameraDevice;

    .line 15
    .line 16
    iget-object v1, v0, Ld3/l;->k:Ld3/t;

    .line 17
    .line 18
    iget v2, v1, Ld3/t;->a:I

    .line 19
    .line 20
    iget v1, v1, Ld3/t;->b:I

    .line 21
    .line 22
    iget-object v3, v0, Ld3/l;->e:Ld3/p0;

    .line 23
    .line 24
    invoke-virtual {v3, v2, v1}, Ld3/p0;->a(II)V

    .line 25
    .line 26
    .line 27
    new-instance v1, Landroid/view/Surface;

    .line 28
    .line 29
    iget-object v2, v3, Ld3/p0;->d:Landroid/graphics/SurfaceTexture;

    .line 30
    .line 31
    invoke-direct {v1, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 32
    .line 33
    .line 34
    iput-object v1, v0, Ld3/l;->m:Landroid/view/Surface;

    .line 35
    .line 36
    const/4 v2, 0x1

    .line 37
    :try_start_0
    new-array v2, v2, [Landroid/view/Surface;

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    aput-object v1, v2, v3

    .line 41
    .line 42
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    new-instance v2, Ld3/k;

    .line 47
    .line 48
    invoke-direct {v2, v0}, Ld3/k;-><init>(Ld3/l;)V

    .line 49
    .line 50
    .line 51
    iget-object v3, v0, Ld3/l;->a:Landroid/os/Handler;

    .line 52
    .line 53
    invoke-virtual {p1, v1, v2, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :catch_0
    move-exception p1

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v2, "Failed to create capture session. "

    .line 61
    .line 62
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {v0, p1}, Ld3/l;->d(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method
