.class public final Lq1/i;
.super Lo1/q;
.source "SourceFile"


# instance fields
.field public p:I

.field public q:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 6

    .line 1
    const/4 v1, 0x0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/i0;->b0(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lo1/q;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    invoke-super {p0}, Lo1/q;->a()V

    iget v0, p0, Lo1/q;->g:I

    const-string v1, "time"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lq1/i;->p:I

    iget v0, p0, Lo1/q;->g:I

    const-string v1, "resolution"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lq1/i;->q:I

    return-void
.end method
