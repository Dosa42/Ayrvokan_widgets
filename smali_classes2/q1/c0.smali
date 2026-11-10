.class public final Lq1/c0;
.super Lo1/q;
.source "SourceFile"


# instance fields
.field public p:I

.field public q:I

.field public r:F

.field public s:F

.field public final t:[F


# direct methods
.method public constructor <init>(Lcom/nomone/vr_desktop/LaunchActivity;)V
    .locals 6

    .line 1
    const/4 v1, 0x0

    const-string v0, "unsharpFragmentShader.txt"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/i0;->b0(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lo1/q;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    const/16 p1, 0x19

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    iput-object p1, p0, Lq1/c0;->t:[F

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
        0x40c00000    # 6.0f
        0x40800000    # 4.0f
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
        0x41800000    # 16.0f
        0x41c00000    # 24.0f
        0x41800000    # 16.0f
        0x40800000    # 4.0f
        0x40c00000    # 6.0f
        0x41c00000    # 24.0f
        0x42100000    # 36.0f
        0x41c00000    # 24.0f
        0x40c00000    # 6.0f
        0x40800000    # 4.0f
        0x41800000    # 16.0f
        0x41c00000    # 24.0f
        0x41800000    # 16.0f
        0x40800000    # 4.0f
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
        0x40c00000    # 6.0f
        0x40800000    # 4.0f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    invoke-super {p0}, Lo1/q;->a()V

    iget v0, p0, Lo1/q;->g:I

    const-string v1, "uTexelSize"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lq1/c0;->p:I

    iget v0, p0, Lo1/q;->g:I

    const-string v1, "uKernel"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lq1/c0;->q:I

    return-void
.end method

.method public final d()V
    .locals 4

    .line 1
    invoke-super {p0}, Lo1/q;->d()V

    iget v0, p0, Lq1/c0;->p:I

    iget v1, p0, Lq1/c0;->r:F

    iget v2, p0, Lq1/c0;->s:F

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    iget v0, p0, Lq1/c0;->q:I

    iget-object v1, p0, Lq1/c0;->t:[F

    const/4 v2, 0x0

    const/16 v3, 0x19

    invoke-static {v0, v3, v1, v2}, Landroid/opengl/GLES20;->glUniform1fv(II[FI)V

    return-void
.end method
