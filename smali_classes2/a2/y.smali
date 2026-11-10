.class public final La2/y;
.super Lo1/q;
.source "SourceFile"


# instance fields
.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public final synthetic t:La2/z;


# direct methods
.method public constructor <init>(La2/z;Lcom/nomone/vr_desktop/LaunchActivity;)V
    .locals 6

    .line 1
    iput-object p1, p0, La2/y;->t:La2/z;

    const-string p1, "wallpaper360VertexShader.txt"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/play_billing/i0;->b0(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string p1, "wallpaper360FragmentShader.txt"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/play_billing/i0;->b0(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lo1/q;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    invoke-super {p0}, Lo1/q;->a()V

    iget v0, p0, Lo1/q;->g:I

    const-string v1, "uViewAngleRadian"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, La2/y;->p:I

    iget v0, p0, Lo1/q;->g:I

    const-string v1, "uTextureVerticalShift"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, La2/y;->q:I

    iget v0, p0, Lo1/q;->g:I

    const-string v1, "uTextureVerticalScale"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, La2/y;->r:I

    iget v0, p0, Lo1/q;->g:I

    const-string v1, "uAspectRatio"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, La2/y;->s:I

    return-void
.end method

.method public final e(FFZZ)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lo1/q;->d()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    const/high16 p3, 0x3f800000    # 1.0f

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/high16 p3, 0x3f000000    # 0.5f

    .line 11
    .line 12
    if-eqz p4, :cond_1

    .line 13
    .line 14
    move v0, p3

    .line 15
    :cond_1
    :goto_0
    iget p4, p0, La2/y;->p:I

    .line 16
    .line 17
    const v1, 0x40c90fdb

    .line 18
    .line 19
    .line 20
    rem-float/2addr p1, v1

    .line 21
    rem-float/2addr p2, v1

    .line 22
    invoke-static {p4, p1, p2}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 23
    .line 24
    .line 25
    iget p1, p0, La2/y;->q:I

    .line 26
    .line 27
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 28
    .line 29
    .line 30
    iget p1, p0, La2/y;->r:I

    .line 31
    .line 32
    invoke-static {p1, p3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 33
    .line 34
    .line 35
    iget p1, p0, La2/y;->s:I

    .line 36
    .line 37
    iget-object p2, p0, La2/y;->t:La2/z;

    .line 38
    .line 39
    iget p3, p2, La2/z;->x:I

    .line 40
    .line 41
    iget-object p2, p2, La2/z;->A:Lv1/b;

    .line 42
    .line 43
    iget p4, p2, Lv1/b;->a:I

    .line 44
    .line 45
    mul-int/2addr p3, p4

    .line 46
    int-to-float p3, p3

    .line 47
    iget p2, p2, Lv1/b;->b:I

    .line 48
    .line 49
    int-to-float p2, p2

    .line 50
    div-float/2addr p3, p2

    .line 51
    invoke-static {p1, p3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 52
    .line 53
    .line 54
    return-void
.end method
