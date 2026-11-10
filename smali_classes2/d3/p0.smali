.class public final Ld3/p0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ld3/o0;

.field public final b:Landroid/os/Handler;

.field public final c:Ld3/h0;

.field public final d:Landroid/graphics/SurfaceTexture;

.field public final e:I

.field public final f:Lj0/j;

.field public final g:Lorg/webrtc/TimestampAligner;

.field public h:Ld3/w0;

.field public i:Z

.field public volatile j:Z

.field public k:I

.field public l:I

.field public m:Ld3/w0;

.field public final n:Ld3/z;


# direct methods
.method public constructor <init>(Ld3/d0;Landroid/os/Handler;ZLj0/j;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ld3/o0;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Ld3/o0;-><init>(Ljava/lang/Object;I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Ld3/p0;->a:Ld3/o0;

    .line 11
    .line 12
    new-instance v0, Ld3/z;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-direct {v0, p0, v1}, Ld3/z;-><init>(Ljava/lang/Object;I)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Ld3/p0;->n:Ld3/z;

    .line 19
    .line 20
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    if-ne v0, v2, :cond_1

    .line 33
    .line 34
    iput-object p2, p0, Ld3/p0;->b:Landroid/os/Handler;

    .line 35
    .line 36
    if-eqz p3, :cond_0

    .line 37
    .line 38
    new-instance p3, Lorg/webrtc/TimestampAligner;

    .line 39
    .line 40
    invoke-direct {p3}, Lorg/webrtc/TimestampAligner;-><init>()V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 p3, 0x0

    .line 45
    :goto_0
    iput-object p3, p0, Ld3/p0;->g:Lorg/webrtc/TimestampAligner;

    .line 46
    .line 47
    iput-object p4, p0, Ld3/p0;->f:Lj0/j;

    .line 48
    .line 49
    sget-object p3, Ld3/h0;->c:[I

    .line 50
    .line 51
    invoke-static {p1, p3}, Ld3/h0;->a(Ld3/d0;[I)Ld3/h0;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iput-object p1, p0, Ld3/p0;->c:Ld3/h0;

    .line 56
    .line 57
    :try_start_0
    invoke-interface {p1}, Ld3/h0;->d()V

    .line 58
    .line 59
    .line 60
    invoke-interface {p1}, Ld3/h0;->e()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    const p1, 0x8d65

    .line 64
    .line 65
    .line 66
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/i0;->G(I)I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    iput p1, p0, Ld3/p0;->e:I

    .line 71
    .line 72
    new-instance p3, Landroid/graphics/SurfaceTexture;

    .line 73
    .line 74
    invoke-direct {p3, p1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 75
    .line 76
    .line 77
    iput-object p3, p0, Ld3/p0;->d:Landroid/graphics/SurfaceTexture;

    .line 78
    .line 79
    new-instance p1, Lb2/a;

    .line 80
    .line 81
    invoke-direct {p1, p0, v1}, Lb2/a;-><init>(Ljava/lang/Object;I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p3, p1, p2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :catch_0
    move-exception p1

    .line 89
    iget-object p3, p0, Ld3/p0;->c:Ld3/h0;

    .line 90
    .line 91
    invoke-interface {p3}, Ld3/h0;->release()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    invoke-virtual {p2}, Landroid/os/Looper;->quit()V

    .line 99
    .line 100
    .line 101
    throw p1

    .line 102
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 103
    .line 104
    const-string p2, "SurfaceTextureHelper must be created on the handler thread"

    .line 105
    .line 106
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw p1
.end method


# virtual methods
.method public final a(II)V
    .locals 2

    .line 1
    if-lez p1, :cond_1

    .line 2
    .line 3
    if-lez p2, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ld3/p0;->d:Landroid/graphics/SurfaceTexture;

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Lo1/v;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-direct {v0, p0, p1, p2, v1}, Lo1/v;-><init>(Ljava/lang/Object;III)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Ld3/p0;->b:Landroid/os/Handler;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    const-string v0, "Texture height must be positive, but was "

    .line 25
    .line 26
    invoke-static {v0, p2}, La1/b;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1

    .line 34
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 35
    .line 36
    const-string v0, "Texture width must be positive, but was "

    .line 37
    .line 38
    invoke-static {v0, p1}, La1/b;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p2
.end method

.method public final b()V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    const-string v1, "SurfaceTextureHelper"

    .line 3
    .line 4
    const-string v2, "stopListening()"

    .line 5
    .line 6
    invoke-static {v0, v1, v2}, Lorg/webrtc/Logging;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Ld3/p0;->b:Landroid/os/Handler;

    .line 10
    .line 11
    iget-object v1, p0, Ld3/p0;->n:Ld3/z;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Ld3/m0;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-direct {v1, p0, v2}, Ld3/m0;-><init>(Ld3/p0;I)V

    .line 20
    .line 21
    .line 22
    new-instance v2, Ld3/t0;

    .line 23
    .line 24
    invoke-direct {v2, v1}, Ld3/t0;-><init>(Ld3/m0;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/i0;->U(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final c()V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Ld3/p0;->b:Landroid/os/Handler;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-ne v0, v2, :cond_c

    .line 18
    .line 19
    iget-boolean v0, v1, Ld3/p0;->i:Z

    .line 20
    .line 21
    if-eqz v0, :cond_b

    .line 22
    .line 23
    iget-boolean v0, v1, Ld3/p0;->j:Z

    .line 24
    .line 25
    if-nez v0, :cond_b

    .line 26
    .line 27
    iget-object v0, v1, Ld3/p0;->h:Ld3/w0;

    .line 28
    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    goto/16 :goto_4

    .line 32
    .line 33
    :cond_0
    iget v0, v1, Ld3/p0;->k:I

    .line 34
    .line 35
    const/4 v2, 0x4

    .line 36
    if-eqz v0, :cond_a

    .line 37
    .line 38
    iget v0, v1, Ld3/p0;->l:I

    .line 39
    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    goto/16 :goto_3

    .line 43
    .line 44
    :cond_1
    const/4 v0, 0x1

    .line 45
    iput-boolean v0, v1, Ld3/p0;->j:Z

    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    iput-boolean v3, v1, Ld3/p0;->i:Z

    .line 49
    .line 50
    sget-object v4, Ld3/h0;->a:Ljava/lang/Object;

    .line 51
    .line 52
    monitor-enter v4

    .line 53
    :try_start_0
    iget-object v5, v1, Ld3/p0;->d:Landroid/graphics/SurfaceTexture;

    .line 54
    .line 55
    invoke-virtual {v5}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 56
    .line 57
    .line 58
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    const/16 v4, 0x10

    .line 60
    .line 61
    new-array v4, v4, [F

    .line 62
    .line 63
    iget-object v5, v1, Ld3/p0;->d:Landroid/graphics/SurfaceTexture;

    .line 64
    .line 65
    invoke-virtual {v5, v4}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 66
    .line 67
    .line 68
    iget-object v5, v1, Ld3/p0;->d:Landroid/graphics/SurfaceTexture;

    .line 69
    .line 70
    invoke-virtual {v5}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    .line 71
    .line 72
    .line 73
    move-result-wide v5

    .line 74
    iget-object v7, v1, Ld3/p0;->g:Lorg/webrtc/TimestampAligner;

    .line 75
    .line 76
    if-eqz v7, :cond_2

    .line 77
    .line 78
    invoke-virtual {v7, v5, v6}, Lorg/webrtc/TimestampAligner;->a(J)J

    .line 79
    .line 80
    .line 81
    move-result-wide v5

    .line 82
    :cond_2
    new-instance v15, Ld3/r0;

    .line 83
    .line 84
    iget v8, v1, Ld3/p0;->k:I

    .line 85
    .line 86
    iget v9, v1, Ld3/p0;->l:I

    .line 87
    .line 88
    const/4 v10, 0x1

    .line 89
    iget v11, v1, Ld3/p0;->e:I

    .line 90
    .line 91
    const/16 v7, 0x9

    .line 92
    .line 93
    new-array v7, v7, [F

    .line 94
    .line 95
    aget v12, v4, v3

    .line 96
    .line 97
    aput v12, v7, v3

    .line 98
    .line 99
    aget v12, v4, v2

    .line 100
    .line 101
    aput v12, v7, v0

    .line 102
    .line 103
    const/16 v12, 0xc

    .line 104
    .line 105
    aget v12, v4, v12

    .line 106
    .line 107
    const/4 v13, 0x2

    .line 108
    aput v12, v7, v13

    .line 109
    .line 110
    aget v12, v4, v0

    .line 111
    .line 112
    const/4 v14, 0x3

    .line 113
    aput v12, v7, v14

    .line 114
    .line 115
    const/4 v12, 0x5

    .line 116
    aget v13, v4, v12

    .line 117
    .line 118
    aput v13, v7, v2

    .line 119
    .line 120
    const/16 v2, 0xd

    .line 121
    .line 122
    aget v2, v4, v2

    .line 123
    .line 124
    aput v2, v7, v12

    .line 125
    .line 126
    const/4 v2, 0x6

    .line 127
    aget v12, v4, v14

    .line 128
    .line 129
    aput v12, v7, v2

    .line 130
    .line 131
    const/4 v2, 0x7

    .line 132
    aget v12, v4, v2

    .line 133
    .line 134
    aput v12, v7, v2

    .line 135
    .line 136
    const/16 v2, 0xf

    .line 137
    .line 138
    aget v2, v4, v2

    .line 139
    .line 140
    const/16 v4, 0x8

    .line 141
    .line 142
    aput v2, v7, v4

    .line 143
    .line 144
    new-instance v12, Landroid/graphics/Matrix;

    .line 145
    .line 146
    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v12, v7}, Landroid/graphics/Matrix;->setValues([F)V

    .line 150
    .line 151
    .line 152
    iget-object v13, v1, Ld3/p0;->b:Landroid/os/Handler;

    .line 153
    .line 154
    iget-object v2, v1, Ld3/p0;->f:Lj0/j;

    .line 155
    .line 156
    iget-object v4, v1, Ld3/p0;->a:Ld3/o0;

    .line 157
    .line 158
    move-object v7, v15

    .line 159
    move v3, v14

    .line 160
    move-object v14, v2

    .line 161
    move-object v2, v15

    .line 162
    move-object v15, v4

    .line 163
    invoke-direct/range {v7 .. v15}, Ld3/r0;-><init>(IIIILandroid/graphics/Matrix;Landroid/os/Handler;Lj0/j;Ld3/o0;)V

    .line 164
    .line 165
    .line 166
    iget-object v4, v1, Ld3/p0;->h:Ld3/w0;

    .line 167
    .line 168
    check-cast v4, Lh0/b;

    .line 169
    .line 170
    iget v7, v4, Lh0/b;->f:I

    .line 171
    .line 172
    iget-object v4, v4, Lh0/b;->g:Ljava/lang/Object;

    .line 173
    .line 174
    const-string v8, "Texture frame captured but camera is no longer running."

    .line 175
    .line 176
    packed-switch v7, :pswitch_data_0

    .line 177
    .line 178
    .line 179
    goto :goto_1

    .line 180
    :pswitch_0
    check-cast v4, Ld3/f;

    .line 181
    .line 182
    sget-object v7, Ld3/f;->l:Ly0/i;

    .line 183
    .line 184
    invoke-virtual {v4}, Ld3/f;->c()V

    .line 185
    .line 186
    .line 187
    iget v7, v4, Ld3/f;->j:I

    .line 188
    .line 189
    if-eq v7, v0, :cond_3

    .line 190
    .line 191
    const-string v0, "Camera1Session"

    .line 192
    .line 193
    invoke-static {v3, v0, v8}, Lorg/webrtc/Logging;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    goto/16 :goto_2

    .line 197
    .line 198
    :cond_3
    iget-boolean v3, v4, Ld3/f;->k:Z

    .line 199
    .line 200
    if-nez v3, :cond_4

    .line 201
    .line 202
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 203
    .line 204
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 205
    .line 206
    .line 207
    move-result-wide v7

    .line 208
    iget-wide v9, v4, Ld3/f;->i:J

    .line 209
    .line 210
    sub-long/2addr v7, v9

    .line 211
    invoke-virtual {v3, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 212
    .line 213
    .line 214
    sget-object v3, Ld3/f;->l:Ly0/i;

    .line 215
    .line 216
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 217
    .line 218
    .line 219
    iput-boolean v0, v4, Ld3/f;->k:Z

    .line 220
    .line 221
    :cond_4
    new-instance v3, Lt2/q;

    .line 222
    .line 223
    iget-object v7, v4, Ld3/f;->g:Landroid/hardware/Camera$CameraInfo;

    .line 224
    .line 225
    iget v7, v7, Landroid/hardware/Camera$CameraInfo;->facing:I

    .line 226
    .line 227
    if-ne v7, v0, :cond_5

    .line 228
    .line 229
    goto :goto_0

    .line 230
    :cond_5
    const/4 v0, 0x0

    .line 231
    :goto_0
    const/4 v7, 0x0

    .line 232
    invoke-static {v2, v0, v7}, Ld3/x;->a(Ld3/r0;ZI)Ld3/r0;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    iget-object v7, v4, Ld3/f;->c:Landroid/content/Context;

    .line 237
    .line 238
    invoke-static {v7}, Ld3/x;->b(Landroid/content/Context;)I

    .line 239
    .line 240
    .line 241
    move-result v7

    .line 242
    iget-object v8, v4, Ld3/f;->g:Landroid/hardware/Camera$CameraInfo;

    .line 243
    .line 244
    iget v9, v8, Landroid/hardware/Camera$CameraInfo;->facing:I

    .line 245
    .line 246
    if-nez v9, :cond_6

    .line 247
    .line 248
    rsub-int v7, v7, 0x168

    .line 249
    .line 250
    :cond_6
    iget v8, v8, Landroid/hardware/Camera$CameraInfo;->orientation:I

    .line 251
    .line 252
    add-int/2addr v8, v7

    .line 253
    rem-int/lit16 v8, v8, 0x168

    .line 254
    .line 255
    invoke-direct {v3, v0, v8, v5, v6}, Lt2/q;-><init>(Ld3/u0;IJ)V

    .line 256
    .line 257
    .line 258
    iget-object v0, v4, Ld3/f;->b:Ld3/m;

    .line 259
    .line 260
    invoke-virtual {v0, v4, v3}, Ld3/m;->m(Ld3/x;Lt2/q;)V

    .line 261
    .line 262
    .line 263
    iget-object v0, v3, Lt2/q;->c:Ljava/lang/Object;

    .line 264
    .line 265
    check-cast v0, Ld3/u0;

    .line 266
    .line 267
    invoke-interface {v0}, Ld3/u0;->release()V

    .line 268
    .line 269
    .line 270
    goto :goto_2

    .line 271
    :goto_1
    check-cast v4, Ld3/k;

    .line 272
    .line 273
    sget v7, Ld3/k;->b:I

    .line 274
    .line 275
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 276
    .line 277
    .line 278
    sget-object v7, Ld3/l;->r:Ly0/i;

    .line 279
    .line 280
    iget-object v4, v4, Ld3/k;->a:Ld3/l;

    .line 281
    .line 282
    invoke-virtual {v4}, Ld3/l;->c()V

    .line 283
    .line 284
    .line 285
    iget v7, v4, Ld3/l;->o:I

    .line 286
    .line 287
    if-eq v7, v0, :cond_7

    .line 288
    .line 289
    const-string v0, "Camera2Session"

    .line 290
    .line 291
    invoke-static {v3, v0, v8}, Lorg/webrtc/Logging;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    goto :goto_2

    .line 295
    :cond_7
    iget-boolean v3, v4, Ld3/l;->p:Z

    .line 296
    .line 297
    if-nez v3, :cond_8

    .line 298
    .line 299
    iput-boolean v0, v4, Ld3/l;->p:Z

    .line 300
    .line 301
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 302
    .line 303
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 304
    .line 305
    .line 306
    move-result-wide v7

    .line 307
    iget-wide v9, v4, Ld3/l;->q:J

    .line 308
    .line 309
    sub-long/2addr v7, v9

    .line 310
    invoke-virtual {v0, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 311
    .line 312
    .line 313
    sget-object v0, Ld3/l;->r:Ly0/i;

    .line 314
    .line 315
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 316
    .line 317
    .line 318
    :cond_8
    new-instance v0, Lt2/q;

    .line 319
    .line 320
    iget-boolean v3, v4, Ld3/l;->i:Z

    .line 321
    .line 322
    iget v7, v4, Ld3/l;->h:I

    .line 323
    .line 324
    neg-int v7, v7

    .line 325
    invoke-static {v2, v3, v7}, Ld3/x;->a(Ld3/r0;ZI)Ld3/r0;

    .line 326
    .line 327
    .line 328
    move-result-object v3

    .line 329
    iget-object v7, v4, Ld3/l;->d:Landroid/content/Context;

    .line 330
    .line 331
    invoke-static {v7}, Ld3/x;->b(Landroid/content/Context;)I

    .line 332
    .line 333
    .line 334
    move-result v7

    .line 335
    iget-boolean v8, v4, Ld3/l;->i:Z

    .line 336
    .line 337
    if-nez v8, :cond_9

    .line 338
    .line 339
    rsub-int v7, v7, 0x168

    .line 340
    .line 341
    :cond_9
    iget v8, v4, Ld3/l;->h:I

    .line 342
    .line 343
    add-int/2addr v8, v7

    .line 344
    rem-int/lit16 v8, v8, 0x168

    .line 345
    .line 346
    invoke-direct {v0, v3, v8, v5, v6}, Lt2/q;-><init>(Ld3/u0;IJ)V

    .line 347
    .line 348
    .line 349
    iget-object v3, v4, Ld3/l;->c:Ld3/m;

    .line 350
    .line 351
    invoke-virtual {v3, v4, v0}, Ld3/m;->m(Ld3/x;Lt2/q;)V

    .line 352
    .line 353
    .line 354
    iget-object v0, v0, Lt2/q;->c:Ljava/lang/Object;

    .line 355
    .line 356
    check-cast v0, Ld3/u0;

    .line 357
    .line 358
    invoke-interface {v0}, Ld3/u0;->release()V

    .line 359
    .line 360
    .line 361
    :goto_2
    invoke-virtual {v2}, Ld3/r0;->release()V

    .line 362
    .line 363
    .line 364
    return-void

    .line 365
    :catchall_0
    move-exception v0

    .line 366
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 367
    throw v0

    .line 368
    :cond_a
    :goto_3
    const-string v0, "SurfaceTextureHelper"

    .line 369
    .line 370
    const-string v3, "Texture size has not been set."

    .line 371
    .line 372
    invoke-static {v2, v0, v3}, Lorg/webrtc/Logging;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    :cond_b
    :goto_4
    return-void

    .line 376
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 377
    .line 378
    const-string v2, "Wrong thread."

    .line 379
    .line 380
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    throw v0

    .line 384
    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method
