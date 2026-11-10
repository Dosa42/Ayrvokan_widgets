.class public final Ls1/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc2/c;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Lq1/f;

.field public final synthetic e:Ls1/f;

.field public final synthetic f:Lz1/g;

.field public final synthetic g:Lcom/nomone/vr_desktop/Applications/Linux/XvfbWindow;


# direct methods
.method public constructor <init>(Lcom/nomone/vr_desktop/Applications/Linux/XvfbWindow;IIZLq1/f;Ls1/f;Lz1/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ls1/s;->g:Lcom/nomone/vr_desktop/Applications/Linux/XvfbWindow;

    iput p2, p0, Ls1/s;->a:I

    iput p3, p0, Ls1/s;->b:I

    iput-boolean p4, p0, Ls1/s;->c:Z

    iput-object p5, p0, Ls1/s;->d:Lq1/f;

    iput-object p6, p0, Ls1/s;->e:Ls1/f;

    iput-object p7, p0, Ls1/s;->f:Lz1/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    sget-object v0, Lcom/nomone/vr_desktop/Applications/Linux/XvfbWindow;->a0:Lq1/c0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-boolean v1, v0, Lo1/q;->c:Z

    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final b()La2/t;
    .locals 6

    .line 1
    new-instance v0, La2/t;

    .line 2
    .line 3
    const/16 v1, 0xde1

    .line 4
    .line 5
    iget v2, p0, Ls1/s;->a:I

    .line 6
    .line 7
    iget v3, p0, Ls1/s;->b:I

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    iget-boolean v5, p0, Ls1/s;->c:Z

    .line 11
    .line 12
    invoke-static {v1, v2, v3, v4, v5}, Lo1/r;->a(IIIZZ)I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    invoke-direct {v0, v4, v2, v3}, La2/t;-><init>(III)V

    .line 17
    .line 18
    .line 19
    if-nez v5, :cond_0

    .line 20
    .line 21
    iget v2, v0, La2/t;->a:I

    .line 22
    .line 23
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 24
    .line 25
    .line 26
    const v2, 0x8e42

    .line 27
    .line 28
    .line 29
    const v3, 0x45c82800    # 6405.0f

    .line 30
    .line 31
    .line 32
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 33
    .line 34
    .line 35
    const v2, 0x8e44

    .line 36
    .line 37
    .line 38
    const v3, 0x45c81800    # 6403.0f

    .line 39
    .line 40
    .line 41
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 42
    .line 43
    .line 44
    const v2, 0x8e45

    .line 45
    .line 46
    .line 47
    const/high16 v3, 0x3f800000    # 1.0f

    .line 48
    .line 49
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 50
    .line 51
    .line 52
    :cond_0
    return-object v0
.end method

.method public final c()F
    .locals 2

    .line 1
    iget v0, p0, Ls1/s;->a:I

    int-to-float v0, v0

    iget-object v1, p0, Ls1/s;->f:Lz1/g;

    invoke-interface {v1}, Lz1/g;->h()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public final d()Lo1/q;
    .locals 4

    .line 1
    iget-object v0, p0, Ls1/s;->g:Lcom/nomone/vr_desktop/Applications/Linux/XvfbWindow;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/nomone/vr_desktop/Applications/Linux/XvfbWindow;->U:Z

    .line 4
    .line 5
    iget-object v1, p0, Ls1/s;->d:Lq1/f;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    sget-object v0, Lcom/nomone/vr_desktop/Applications/Linux/XvfbWindow;->a0:Lq1/c0;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Lq1/c0;

    .line 14
    .line 15
    iget-object v1, v1, Lq1/f;->b:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 16
    .line 17
    invoke-direct {v0, v1}, Lq1/c0;-><init>(Lcom/nomone/vr_desktop/LaunchActivity;)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/nomone/vr_desktop/Applications/Linux/XvfbWindow;->a0:Lq1/c0;

    .line 21
    .line 22
    iget v1, p0, Ls1/s;->a:I

    .line 23
    .line 24
    int-to-float v1, v1

    .line 25
    const/high16 v2, 0x3f800000    # 1.0f

    .line 26
    .line 27
    div-float v1, v2, v1

    .line 28
    .line 29
    iget v3, p0, Ls1/s;->b:I

    .line 30
    .line 31
    int-to-float v3, v3

    .line 32
    div-float/2addr v2, v3

    .line 33
    iput v1, v0, Lq1/c0;->r:F

    .line 34
    .line 35
    iput v2, v0, Lq1/c0;->s:F

    .line 36
    .line 37
    :cond_0
    sget-object v0, Lcom/nomone/vr_desktop/Applications/Linux/XvfbWindow;->a0:Lq1/c0;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-object v0, v1, Lq1/f;->q:Lo1/q;

    .line 41
    .line 42
    :goto_0
    iget-boolean v1, v0, Lo1/q;->f:Z

    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    iput-boolean v1, v0, Lo1/q;->f:Z

    .line 46
    .line 47
    return-object v0
.end method

.method public final e()F
    .locals 2

    .line 1
    iget v0, p0, Ls1/s;->b:I

    int-to-float v0, v0

    iget-object v1, p0, Ls1/s;->f:Lz1/g;

    invoke-interface {v1}, Lz1/g;->i()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public final f()V
    .locals 3

    .line 1
    iget-object v0, p0, Ls1/s;->g:Lcom/nomone/vr_desktop/Applications/Linux/XvfbWindow;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/nomone/vr_desktop/Applications/Linux/XvfbWindow;->T:Ls1/o;

    .line 4
    .line 5
    const-string v2, "Settings_Linux_Sharpen"

    .line 6
    .line 7
    invoke-static {v2, v1}, Lo1/y;->i(Ljava/lang/String;Lo1/b;)V

    .line 8
    .line 9
    .line 10
    sget-object v1, Lcom/nomone/vr_desktop/Applications/Linux/XvfbWindow;->a0:Lq1/c0;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget v2, v1, Lo1/q;->g:I

    .line 15
    .line 16
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 17
    .line 18
    .line 19
    iget v2, v1, Lo1/q;->h:I

    .line 20
    .line 21
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 22
    .line 23
    .line 24
    iget v1, v1, Lo1/q;->i:I

    .line 25
    .line 26
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 27
    .line 28
    .line 29
    :cond_0
    const/4 v1, 0x0

    .line 30
    sput-object v1, Lcom/nomone/vr_desktop/Applications/Linux/XvfbWindow;->a0:Lq1/c0;

    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    iput-boolean v1, v0, Lcom/nomone/vr_desktop/Applications/Linux/XvfbWindow;->V:Z

    .line 34
    .line 35
    iget-object v0, p0, Ls1/s;->e:Ls1/f;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    sget-object v1, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->y:Ljava/lang/ThreadGroup;

    .line 40
    .line 41
    iget-object v0, v0, Ls1/f;->f:Ljava/lang/Runnable;

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 44
    .line 45
    .line 46
    :cond_1
    return-void
.end method

.method public final g(La2/t;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Ls1/s;->g:Lcom/nomone/vr_desktop/Applications/Linux/XvfbWindow;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/nomone/vr_desktop/Applications/Linux/XvfbWindow;->W:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    iget-boolean v3, v0, Lc2/e;->u:Z

    .line 9
    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    return v2

    .line 13
    :cond_0
    if-eqz v1, :cond_4

    .line 14
    .line 15
    iget p1, p1, La2/t;->a:I

    .line 16
    .line 17
    const/16 v1, 0xde1

    .line 18
    .line 19
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 23
    .line 24
    .line 25
    move-result-wide v3

    .line 26
    iget-boolean p1, p0, Ls1/s;->c:Z

    .line 27
    .line 28
    iget v1, p0, Ls1/s;->a:I

    .line 29
    .line 30
    iget v5, p0, Ls1/s;->b:I

    .line 31
    .line 32
    invoke-static {v1, v5, p1}, Lcom/nomone/vr_desktop/Applications/Linux/XvfbWindow;->nativeUpdateTextureFromMemoryMappedFile(IIZ)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    sget-object p1, Lq1/f;->L:Lo1/j0;

    .line 39
    .line 40
    new-instance v1, Lw1/d;

    .line 41
    .line 42
    const/4 v5, 0x2

    .line 43
    invoke-direct {v1, v0, v2, v5}, Lw1/d;-><init>(Ljava/lang/Object;ZI)V

    .line 44
    .line 45
    .line 46
    const-string v5, "setDisplayLoadingAnimation"

    .line 47
    .line 48
    const/16 v6, 0x1f4

    .line 49
    .line 50
    int-to-long v6, v6

    .line 51
    invoke-virtual {p1, v1, v5, v6, v7}, Lo1/j0;->b(Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 52
    .line 53
    .line 54
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 55
    .line 56
    .line 57
    move-result-wide v5

    .line 58
    sub-long/2addr v5, v3

    .line 59
    long-to-float p1, v5

    .line 60
    const v1, 0x49742400    # 1000000.0f

    .line 61
    .line 62
    .line 63
    div-float/2addr p1, v1

    .line 64
    const/high16 v1, 0x447a0000    # 1000.0f

    .line 65
    .line 66
    div-float/2addr v1, p1

    .line 67
    iget p1, v0, Lcom/nomone/vr_desktop/Applications/Linux/XvfbWindow;->Z:F

    .line 68
    .line 69
    sub-float/2addr p1, v1

    .line 70
    const/high16 v3, 0x40e00000    # 7.0f

    .line 71
    .line 72
    mul-float/2addr p1, v3

    .line 73
    div-float/2addr p1, v1

    .line 74
    float-to-int p1, p1

    .line 75
    iput p1, v0, Lcom/nomone/vr_desktop/Applications/Linux/XvfbWindow;->X:I

    .line 76
    .line 77
    sget v1, Lcom/nomone/vr_desktop/Applications/Linux/XvfbWindow;->b0:I

    .line 78
    .line 79
    if-ge p1, v1, :cond_2

    .line 80
    .line 81
    iput v1, v0, Lcom/nomone/vr_desktop/Applications/Linux/XvfbWindow;->X:I

    .line 82
    .line 83
    :cond_2
    iget p1, v0, Lcom/nomone/vr_desktop/Applications/Linux/XvfbWindow;->Y:I

    .line 84
    .line 85
    iget v1, v0, Lcom/nomone/vr_desktop/Applications/Linux/XvfbWindow;->X:I

    .line 86
    .line 87
    if-le p1, v1, :cond_3

    .line 88
    .line 89
    iput v1, v0, Lcom/nomone/vr_desktop/Applications/Linux/XvfbWindow;->Y:I

    .line 90
    .line 91
    :cond_3
    iput-boolean v2, v0, Lcom/nomone/vr_desktop/Applications/Linux/XvfbWindow;->W:Z

    .line 92
    .line 93
    :cond_4
    const/4 p1, 0x1

    .line 94
    return p1
.end method
