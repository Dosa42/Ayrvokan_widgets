.class public final Ld3/v0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ln2/a0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    new-instance v0, Ln2/a0;

    invoke-direct {v0}, Ln2/a0;-><init>()V

    iput-object v0, p0, Ld3/v0;->a:Ln2/a0;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    return-void
.end method

.method public static a(Ld3/j0;Ld3/r0;Landroid/graphics/Matrix;IIIIII)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p3

    new-instance v3, Landroid/graphics/Matrix;

    .line 1
    iget-object v4, v1, Ld3/r0;->e:Landroid/graphics/Matrix;

    .line 2
    invoke-direct {v3, v4}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    move-object/from16 v4, p2

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    const/16 v4, 0x9

    new-array v5, v4, [F

    .line 3
    invoke-virtual {v3, v5}, Landroid/graphics/Matrix;->getValues([F)V

    const/16 v3, 0x10

    new-array v3, v3, [F

    const/4 v6, 0x0

    aget v7, v5, v6

    aput v7, v3, v6

    const/4 v7, 0x3

    aget v8, v5, v7

    const/4 v9, 0x1

    aput v8, v3, v9

    const/4 v8, 0x2

    const/4 v10, 0x0

    aput v10, v3, v8

    const/4 v11, 0x6

    aget v12, v5, v11

    aput v12, v3, v7

    aget v7, v5, v9

    const/4 v12, 0x4

    aput v7, v3, v12

    aget v7, v5, v12

    const/4 v13, 0x5

    aput v7, v3, v13

    aput v10, v3, v11

    const/4 v7, 0x7

    aget v11, v5, v7

    aput v11, v3, v7

    const/16 v7, 0x8

    aput v10, v3, v7

    aput v10, v3, v4

    const/16 v4, 0xa

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v3, v4

    const/16 v4, 0xb

    aput v10, v3, v4

    const/16 v4, 0xc

    aget v11, v5, v8

    aput v11, v3, v4

    const/16 v4, 0xd

    aget v11, v5, v13

    aput v11, v3, v4

    const/16 v4, 0xe

    aput v10, v3, v4

    const/16 v4, 0xf

    aget v5, v5, v7

    aput v5, v3, v4

    .line 4
    iget v4, v1, Ld3/r0;->c:I

    invoke-static {v4}, Lk0/c;->b(I)I

    move-result v4

    const v5, 0x84c0

    iget v1, v1, Ld3/r0;->d:I

    if-eqz v4, :cond_1

    if-ne v4, v9, :cond_0

    .line 5
    invoke-virtual {p0, v8, v3, v2}, Ld3/j0;->a(I[FI)V

    .line 6
    invoke-static {v5}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static/range {p5 .. p8}, Landroid/opengl/GLES20;->glViewport(IIII)V

    invoke-static {v13, v6, v12}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown texture type."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_1
    invoke-virtual {p0, v9, v3, v2}, Ld3/j0;->a(I[FI)V

    .line 9
    invoke-static {v5}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const v0, 0x8d65

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static/range {p5 .. p8}, Landroid/opengl/GLES20;->glViewport(IIII)V

    invoke-static {v13, v6, v12}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    :goto_0
    return-void
.end method
