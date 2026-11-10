.class public final Ls1/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc2/c;


# instance fields
.field public final synthetic a:Lq1/f;

.field public final synthetic b:Ls1/p;

.field public final synthetic c:Landroidx/fragment/app/h;

.field public final synthetic d:Ls1/r;


# direct methods
.method public constructor <init>(Ls1/r;Lq1/f;Ls1/p;Landroidx/fragment/app/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ls1/q;->d:Ls1/r;

    iput-object p2, p0, Ls1/q;->a:Lq1/f;

    iput-object p3, p0, Ls1/q;->b:Ls1/p;

    iput-object p4, p0, Ls1/q;->c:Landroidx/fragment/app/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget-object v0, Ls1/r;->n0:Lq1/c0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, v0, Lo1/q;->c:Z

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Ls1/q;->d:Ls1/r;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    iput-boolean v2, v0, Ls1/r;->X:Z

    .line 12
    .line 13
    iget-object v2, v0, Ls1/r;->U:La2/t;

    .line 14
    .line 15
    iput v1, v2, La2/t;->a:I

    .line 16
    .line 17
    const/16 v1, 0xa

    .line 18
    .line 19
    iput v1, v0, Ls1/r;->W:I

    .line 20
    .line 21
    iput v1, v0, Ls1/r;->l0:I

    .line 22
    .line 23
    return-void
.end method

.method public final b()La2/t;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/q;->d:Ls1/r;

    iget-object v0, v0, Ls1/r;->U:La2/t;

    return-object v0
.end method

.method public final c()F
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/q;->d:Ls1/r;

    invoke-virtual {v0}, Ls1/r;->E()F

    move-result v0

    return v0
.end method

.method public final d()Lo1/q;
    .locals 4

    .line 1
    iget-object v0, p0, Ls1/q;->d:Ls1/r;

    .line 2
    .line 3
    iget-boolean v1, v0, Ls1/r;->Z:Z

    .line 4
    .line 5
    iget-object v2, p0, Ls1/q;->a:Lq1/f;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    sget-object v1, Ls1/r;->n0:Lq1/c0;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    new-instance v1, Lq1/c0;

    .line 14
    .line 15
    iget-object v2, v2, Lq1/f;->b:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 16
    .line 17
    invoke-direct {v1, v2}, Lq1/c0;-><init>(Lcom/nomone/vr_desktop/LaunchActivity;)V

    .line 18
    .line 19
    .line 20
    sput-object v1, Ls1/r;->n0:Lq1/c0;

    .line 21
    .line 22
    :cond_0
    sget-object v1, Ls1/r;->n0:Lq1/c0;

    .line 23
    .line 24
    iget-object v0, v0, Ls1/r;->U:La2/t;

    .line 25
    .line 26
    iget v2, v0, La2/t;->b:I

    .line 27
    .line 28
    int-to-float v2, v2

    .line 29
    const/high16 v3, 0x3f800000    # 1.0f

    .line 30
    .line 31
    div-float v2, v3, v2

    .line 32
    .line 33
    iget v0, v0, La2/t;->c:I

    .line 34
    .line 35
    int-to-float v0, v0

    .line 36
    div-float/2addr v3, v0

    .line 37
    iput v2, v1, Lq1/c0;->r:F

    .line 38
    .line 39
    iput v3, v1, Lq1/c0;->s:F

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object v1, v2, Lq1/f;->q:Lo1/q;

    .line 43
    .line 44
    :goto_0
    iget-boolean v0, v1, Lo1/q;->f:Z

    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    iput-boolean v0, v1, Lo1/q;->f:Z

    .line 48
    .line 49
    return-object v1
.end method

.method public final e()F
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/q;->d:Ls1/r;

    invoke-virtual {v0}, Ls1/r;->E()F

    move-result v0

    return v0
.end method

.method public final f()V
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/q;->d:Ls1/r;

    .line 2
    .line 3
    iget-object v0, v0, Ls1/r;->Y:Ls1/o;

    .line 4
    .line 5
    const-string v1, "Settings_Linux_Sharpen"

    .line 6
    .line 7
    invoke-static {v1, v0}, Lo1/y;->i(Ljava/lang/String;Lo1/b;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Ls1/r;->n0:Lq1/c0;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget v1, v0, Lo1/q;->g:I

    .line 15
    .line 16
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 17
    .line 18
    .line 19
    iget v1, v0, Lo1/q;->h:I

    .line 20
    .line 21
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 22
    .line 23
    .line 24
    iget v0, v0, Lo1/q;->i:I

    .line 25
    .line 26
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 27
    .line 28
    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    sput-object v0, Ls1/r;->n0:Lq1/c0;

    .line 31
    .line 32
    iget-object v0, p0, Ls1/q;->a:Lq1/f;

    .line 33
    .line 34
    iget-object v0, v0, Lq1/f;->k:Ljava/util/List;

    .line 35
    .line 36
    iget-object v1, p0, Ls1/q;->b:Ls1/p;

    .line 37
    .line 38
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Ls1/q;->c:Landroidx/fragment/app/h;

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    iget-object v0, v0, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v0, Ljava/lang/Runnable;

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 50
    .line 51
    .line 52
    :cond_1
    return-void
.end method

.method public final g(La2/t;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Ls1/q;->d:Ls1/r;

    iget p1, p1, Ls1/r;->W:I

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
