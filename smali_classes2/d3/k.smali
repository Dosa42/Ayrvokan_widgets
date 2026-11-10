.class public final Ld3/k;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "SourceFile"


# static fields
.field public static final synthetic b:I


# instance fields
.field public final synthetic a:Ld3/l;


# direct methods
.method public constructor <init>(Ld3/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld3/k;->a:Ld3/l;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 9

    .line 1
    iget-object v0, p0, Ld3/k;->a:Ld3/l;

    .line 2
    .line 3
    iget-object v1, v0, Ld3/l;->g:Landroid/hardware/camera2/CameraCharacteristics;

    .line 4
    .line 5
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_OPTICAL_STABILIZATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, [I

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const/4 v4, 0x1

    .line 19
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    array-length v6, v1

    .line 26
    move v7, v2

    .line 27
    :goto_0
    if-ge v7, v6, :cond_1

    .line 28
    .line 29
    aget v8, v1, v7

    .line 30
    .line 31
    if-ne v8, v4, :cond_0

    .line 32
    .line 33
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 34
    .line 35
    invoke-virtual {p1, v0, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 39
    .line 40
    invoke-virtual {p1, v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    const-string p1, "Using optical stabilization."

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_0
    add-int/lit8 v7, v7, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    iget-object v0, v0, Ld3/l;->g:Landroid/hardware/camera2/CameraCharacteristics;

    .line 50
    .line 51
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, [I

    .line 58
    .line 59
    array-length v1, v0

    .line 60
    :goto_1
    if-ge v2, v1, :cond_3

    .line 61
    .line 62
    aget v6, v0, v2

    .line 63
    .line 64
    if-ne v6, v4, :cond_2

    .line 65
    .line 66
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 67
    .line 68
    invoke-virtual {p1, v0, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 72
    .line 73
    invoke-virtual {p1, v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    const-string p1, "Using video stabilization."

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    const-string p1, "Stabilization not available."

    .line 83
    .line 84
    :goto_2
    const/4 v0, 0x3

    .line 85
    const-string v1, "Camera2Session"

    .line 86
    .line 87
    invoke-static {v0, v1, p1}, Lorg/webrtc/Logging;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method public final onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    .line 1
    sget-object v0, Ld3/l;->r:Ly0/i;

    .line 2
    .line 3
    iget-object v0, p0, Ld3/k;->a:Ld3/l;

    .line 4
    .line 5
    invoke-virtual {v0}, Ld3/l;->c()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 9
    .line 10
    .line 11
    const-string p1, "Failed to configure capture session."

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ld3/l;->d(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 9

    .line 1
    sget-object v0, Ld3/l;->r:Ly0/i;

    .line 2
    .line 3
    iget-object v0, p0, Ld3/k;->a:Ld3/l;

    .line 4
    .line 5
    invoke-virtual {v0}, Ld3/l;->c()V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x3

    .line 9
    const-string v2, "Camera2Session"

    .line 10
    .line 11
    const-string v3, "Camera capture session configured."

    .line 12
    .line 13
    invoke-static {v1, v2, v3}, Lorg/webrtc/Logging;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, v0, Ld3/l;->n:Landroid/hardware/camera2/CameraCaptureSession;

    .line 17
    .line 18
    :try_start_0
    iget-object v3, v0, Ld3/l;->l:Landroid/hardware/camera2/CameraDevice;

    .line 19
    .line 20
    invoke-virtual {v3, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 25
    .line 26
    new-instance v5, Landroid/util/Range;

    .line 27
    .line 28
    iget-object v6, v0, Ld3/l;->k:Ld3/t;

    .line 29
    .line 30
    iget-object v6, v6, Ld3/t;->c:Ld3/s;

    .line 31
    .line 32
    iget v6, v6, Ld3/s;->a:I

    .line 33
    .line 34
    iget v7, v0, Ld3/l;->j:I

    .line 35
    .line 36
    div-int/2addr v6, v7

    .line 37
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    iget-object v7, v0, Ld3/l;->k:Ld3/t;

    .line 42
    .line 43
    iget-object v7, v7, Ld3/t;->c:Ld3/s;

    .line 44
    .line 45
    iget v7, v7, Ld3/s;->b:I

    .line 46
    .line 47
    iget v8, v0, Ld3/l;->j:I

    .line 48
    .line 49
    div-int/2addr v7, v8

    .line 50
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    invoke-direct {v5, v6, v7}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 61
    .line 62
    const/4 v5, 0x1

    .line 63
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-virtual {v3, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 71
    .line 72
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 73
    .line 74
    invoke-virtual {v3, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v3}, Ld3/k;->a(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 78
    .line 79
    .line 80
    iget-object v4, v0, Ld3/l;->g:Landroid/hardware/camera2/CameraCharacteristics;

    .line 81
    .line 82
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 83
    .line 84
    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    check-cast v4, [I

    .line 89
    .line 90
    array-length v5, v4

    .line 91
    const/4 v6, 0x0

    .line 92
    :goto_0
    if-ge v6, v5, :cond_1

    .line 93
    .line 94
    aget v7, v4, v6

    .line 95
    .line 96
    if-ne v7, v1, :cond_0

    .line 97
    .line 98
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 99
    .line 100
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    invoke-virtual {v3, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    const-string v4, "Using continuous video auto-focus."

    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_1
    const-string v4, "Auto-focus is not available."

    .line 114
    .line 115
    :goto_1
    invoke-static {v1, v2, v4}, Lorg/webrtc/Logging;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget-object v4, v0, Ld3/l;->m:Landroid/view/Surface;

    .line 119
    .line 120
    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    new-instance v4, Ld3/i;

    .line 128
    .line 129
    invoke-direct {v4}, Ld3/i;-><init>()V

    .line 130
    .line 131
    .line 132
    iget-object v5, v0, Ld3/l;->a:Landroid/os/Handler;

    .line 133
    .line 134
    invoke-virtual {p1, v3, v4, v5}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .line 136
    .line 137
    new-instance p1, Lh0/b;

    .line 138
    .line 139
    const/16 v3, 0x12

    .line 140
    .line 141
    invoke-direct {p1, p0, v3}, Lh0/b;-><init>(Ljava/lang/Object;I)V

    .line 142
    .line 143
    .line 144
    iget-object v3, v0, Ld3/l;->e:Ld3/p0;

    .line 145
    .line 146
    iget-object v4, v3, Ld3/p0;->h:Ld3/w0;

    .line 147
    .line 148
    if-nez v4, :cond_2

    .line 149
    .line 150
    iget-object v4, v3, Ld3/p0;->m:Ld3/w0;

    .line 151
    .line 152
    if-nez v4, :cond_2

    .line 153
    .line 154
    iput-object p1, v3, Ld3/p0;->m:Ld3/w0;

    .line 155
    .line 156
    iget-object p1, v3, Ld3/p0;->n:Ld3/z;

    .line 157
    .line 158
    iget-object v3, v3, Ld3/p0;->b:Landroid/os/Handler;

    .line 159
    .line 160
    invoke-virtual {v3, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 161
    .line 162
    .line 163
    const-string p1, "Camera device successfully started."

    .line 164
    .line 165
    invoke-static {v1, v2, p1}, Lorg/webrtc/Logging;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    iget-object p1, v0, Ld3/l;->b:Ld3/m;

    .line 169
    .line 170
    invoke-virtual {p1, v0}, Ld3/m;->k(Ld3/x;)V

    .line 171
    .line 172
    .line 173
    return-void

    .line 174
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 175
    .line 176
    const-string v0, "SurfaceTextureHelper listener has already been set."

    .line 177
    .line 178
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    throw p1

    .line 182
    :catch_0
    move-exception p1

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    const-string v2, "Failed to start capture request. "

    .line 186
    .line 187
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-virtual {v0, p1}, Ld3/l;->d(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    return-void
.end method
