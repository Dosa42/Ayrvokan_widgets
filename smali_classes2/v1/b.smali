.class public final Lv1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv1/c;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    if-lt p2, v0, :cond_0

    iput p1, p0, Lv1/b;->a:I

    iput p2, p0, Lv1/b;->b:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Can\'t have a NormalFrameBuffer with width or height <= 0"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lv1/b;->e()V

    return-void
.end method

.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Lv1/b;->a:I

    return v0
.end method

.method public final c()I
    .locals 1

    .line 1
    iget v0, p0, Lv1/b;->b:I

    return v0
.end method

.method public final d()V
    .locals 2

    .line 1
    iget v0, p0, Lv1/b;->d:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lv1/b;->e()V

    :cond_0
    const/16 v0, 0xde1

    iget v1, p0, Lv1/b;->d:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method

.method public final e()V
    .locals 6

    .line 1
    iget v0, p0, Lv1/b;->a:I

    .line 2
    .line 3
    iget v1, p0, Lv1/b;->b:I

    .line 4
    .line 5
    const/16 v2, 0xde1

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    invoke-static {v2, v0, v1, v3, v4}, Lo1/r;->a(IIIZZ)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iput v0, p0, Lv1/b;->d:I

    .line 14
    .line 15
    new-array v1, v3, [I

    .line 16
    .line 17
    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 18
    .line 19
    .line 20
    aget v1, v1, v4

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    const-string v0, "Failed to create frame buffer"

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const v3, 0x8d40

    .line 28
    .line 29
    .line 30
    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 31
    .line 32
    .line 33
    const v5, 0x8ce0

    .line 34
    .line 35
    .line 36
    invoke-static {v3, v5, v2, v0, v4}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 37
    .line 38
    .line 39
    invoke-static {v3}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    const v2, 0x8cd5

    .line 44
    .line 45
    .line 46
    if-eq v0, v2, :cond_1

    .line 47
    .line 48
    const-string v1, "Failed to create frame buffer: "

    .line 49
    .line 50
    invoke-static {v1, v0}, La1/b;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    :goto_0
    const-string v1, "sdf"

    .line 55
    .line 56
    invoke-static {v1, v0}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    move v4, v1

    .line 61
    :goto_1
    iput v4, p0, Lv1/b;->c:I

    .line 62
    .line 63
    return-void
.end method

.method public final f(II)V
    .locals 11

    .line 1
    iput p1, p0, Lv1/b;->a:I

    .line 2
    .line 3
    iput p2, p0, Lv1/b;->b:I

    .line 4
    .line 5
    iget v0, p0, Lv1/b;->d:I

    .line 6
    .line 7
    sget-object v1, Lo1/r;->a:Ljava/util/ArrayList;

    .line 8
    .line 9
    const/16 v1, 0xde1

    .line 10
    .line 11
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 12
    .line 13
    .line 14
    const/16 v2, 0xde1

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    const/16 v4, 0x1908

    .line 18
    .line 19
    const/4 v7, 0x0

    .line 20
    const/16 v8, 0x1908

    .line 21
    .line 22
    const/16 v9, 0x1401

    .line 23
    .line 24
    const/4 v10, 0x0

    .line 25
    move v5, p1

    .line 26
    move v6, p2

    .line 27
    invoke-static/range {v2 .. v10}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
