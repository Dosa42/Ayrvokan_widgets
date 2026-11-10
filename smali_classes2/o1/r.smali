.class public abstract Lo1/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/ArrayList;

.field public static final b:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lo1/r;->a:Ljava/util/ArrayList;

    const/4 v0, 0x1

    new-array v0, v0, [I

    sput-object v0, Lo1/r;->b:[I

    return-void
.end method

.method public static a(IIIZZ)I
    .locals 10

    .line 1
    invoke-static {}, Lo1/r;->d()I

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "sdf"

    const-string p1, "Failed to create texture"

    invoke-static {p0, p1}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const v1, 0x47012f00    # 33071.0f

    const v2, 0x46240400    # 10497.0f

    if-eqz p3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    const/16 v4, 0x2802

    invoke-static {p0, v4, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    const/16 p3, 0x2803

    invoke-static {p0, p3, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p3, 0x2801

    const v1, 0x46180400    # 9729.0f

    invoke-static {p0, p3, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p3, 0x2800

    invoke-static {p0, p3, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p3, 0xde1

    if-ne p0, p3, :cond_6

    const/16 v1, 0xde1

    const/4 v2, 0x0

    const/16 p0, 0x1908

    if-eqz p4, :cond_3

    const p3, 0x8d62

    move v3, p3

    goto :goto_2

    :cond_3
    move v3, p0

    :goto_2
    const/4 v6, 0x0

    if-eqz p4, :cond_4

    const/16 p0, 0x1907

    :cond_4
    move v7, p0

    if-eqz p4, :cond_5

    const p0, 0x8363

    goto :goto_3

    :cond_5
    const/16 p0, 0x1401

    :goto_3
    move v8, p0

    const/4 v9, 0x0

    move v4, p1

    move v5, p2

    invoke-static/range {v1 .. v9}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    :cond_6
    return v0
.end method

.method public static b(Lo1/p;Landroidx/fragment/app/h;Landroidx/fragment/app/h;Lo1/q;Z)V
    .locals 7

    .line 1
    iget v0, p3, Lo1/q;->j:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/16 v2, 0x1406

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    const/16 v4, 0xc

    .line 8
    .line 9
    iget-object v5, p0, Lo1/p;->a:Ljava/nio/FloatBuffer;

    .line 10
    .line 11
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 12
    .line 13
    .line 14
    iget-boolean v0, p3, Lo1/q;->e:Z

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget v1, p3, Lo1/q;->k:I

    .line 19
    .line 20
    const/4 v2, 0x2

    .line 21
    const/16 v3, 0x1406

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    const/16 v5, 0x8

    .line 25
    .line 26
    if-eqz p4, :cond_0

    .line 27
    .line 28
    iget-object p4, p0, Lo1/p;->c:Ljava/nio/FloatBuffer;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object p4, p0, Lo1/p;->b:Ljava/nio/FloatBuffer;

    .line 32
    .line 33
    :goto_0
    move-object v6, p4

    .line 34
    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    iget p4, p3, Lo1/q;->l:I

    .line 38
    .line 39
    iget-object p1, p1, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p1, [F

    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    const/4 v1, 0x0

    .line 45
    invoke-static {p4, v0, v1, p1, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 46
    .line 47
    .line 48
    iget p1, p3, Lo1/q;->m:I

    .line 49
    .line 50
    iget-object p2, p2, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast p2, [F

    .line 53
    .line 54
    invoke-static {p1, v0, v1, p2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 55
    .line 56
    .line 57
    const/4 p1, 0x4

    .line 58
    const/4 p2, 0x6

    .line 59
    const/16 p3, 0x1403

    .line 60
    .line 61
    iget-object p0, p0, Lo1/p;->d:Ljava/nio/ShortBuffer;

    .line 62
    .line 63
    invoke-static {p1, p2, p3, p0}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public static c(I)Lo1/o;
    .locals 3

    .line 1
    sget-object v0, Lo1/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo1/o;

    iget v2, v1, Lo1/o;->a:I

    if-ne v2, p0, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d()I
    .locals 4

    .line 1
    :goto_0
    const/4 v0, 0x1

    sget-object v1, Lo1/r;->b:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v3, v1, v2

    invoke-static {v3}, Lo1/r;->c(I)Lo1/o;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Created texture: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "sdf"

    invoke-static {v3, v0}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    aget v0, v1, v2

    return v0

    :cond_0
    iput-boolean v0, v3, Lo1/o;->b:Z

    goto :goto_0
.end method
