.class public final Ld3/a;
.super Ld3/p;
.source "SourceFile"


# instance fields
.field public final v:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ld3/y;Z)V
    .locals 1

    .line 1
    new-instance v0, Ld3/b;

    invoke-direct {v0, p3}, Ld3/b;-><init>(Z)V

    invoke-direct {p0, p1, p2, v0}, Ld3/p;-><init>(Ljava/lang/String;Ld3/y;Ld3/w;)V

    iput-boolean p3, p0, Ld3/a;->v:Z

    return-void
.end method


# virtual methods
.method public final c(Ld3/m;Ld3/m;Landroid/content/Context;Ld3/p0;Ljava/lang/String;III)V
    .locals 16

    move-object/from16 v1, p1

    move/from16 v0, p6

    move/from16 v2, p7

    move-object/from16 v3, p0

    iget-boolean v6, v3, Ld3/a;->v:Z

    invoke-static/range {p5 .. p5}, Ld3/b;->g(Ljava/lang/String;)I

    move-result v9

    sget-object v4, Ld3/f;->l:Ly0/i;

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Open camera "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    const-string v7, "Camera1Session"

    .line 2
    invoke-static {v5, v7, v4}, Lorg/webrtc/Logging;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual/range {p2 .. p2}, Ld3/m;->j()V

    :try_start_0
    invoke-static {v9}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v10, :cond_0

    const-string v0, "android.hardware.Camera.open returned null for camera id = "

    .line 4
    invoke-static {v0, v9}, La1/b;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_0
    move-object/from16 v8, p4

    .line 5
    :try_start_1
    iget-object v4, v8, Ld3/p0;->d:Landroid/graphics/SurfaceTexture;

    .line 6
    invoke-virtual {v10, v4}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    new-instance v11, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v11}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    invoke-static {v9, v11}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    :try_start_2
    invoke-virtual {v10}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    move/from16 v7, p8

    invoke-static {v4, v0, v2, v7}, Ld3/f;->d(Landroid/hardware/Camera$Parameters;III)Ld3/t;

    move-result-object v12

    .line 7
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Ld3/b;->e(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v7

    .line 8
    new-instance v15, Ld3/r;

    invoke-direct {v15, v0, v2}, Ld3/r;-><init>(II)V

    invoke-static {v7, v15}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld3/l0;

    .line 9
    invoke-static {v10, v4, v12, v0, v6}, Ld3/f;->f(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;Ld3/t;Ld3/l0;Z)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v0, 0x0

    if-nez v6, :cond_1

    .line 10
    iget v2, v12, Ld3/t;->a:I

    iget v4, v12, Ld3/t;->b:I

    mul-int/2addr v2, v4

    const/16 v4, 0x11

    invoke-static {v4}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v4

    mul-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x8

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_1

    .line 11
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v10, v7}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v10, v0}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    new-instance v0, Ld3/f;

    move-object v4, v0

    move-object/from16 v5, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v4 .. v14}, Ld3/f;-><init>(Ld3/m;ZLandroid/content/Context;Ld3/p0;ILandroid/hardware/Camera;Landroid/hardware/Camera$CameraInfo;Ld3/t;J)V

    invoke-virtual {v1, v0}, Ld3/m;->k(Ld3/x;)V

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    invoke-virtual {v10}, Landroid/hardware/Camera;->release()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_2
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ld3/m;->l(ILjava/lang/String;)V

    :goto_3
    return-void
.end method
