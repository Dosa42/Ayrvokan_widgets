.class public final La2/o;
.super Lo1/q;
.source "SourceFile"


# instance fields
.field public p:I

.field public final synthetic q:La2/p;


# direct methods
.method public constructor <init>(La2/p;)V
    .locals 6

    .line 1
    iput-object p1, p0, La2/o;->q:La2/p;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object p1, p1, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "themes/transparencyShader.txt"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/i0;->b0(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const/4 v3, 0x1

    .line 17
    const/4 v4, 0x1

    .line 18
    const/4 v5, 0x1

    .line 19
    move-object v0, p0

    .line 20
    invoke-direct/range {v0 .. v5}, Lo1/q;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 21
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    invoke-super {p0}, Lo1/q;->a()V

    iget v0, p0, Lo1/q;->g:I

    const-string v1, "uBorders"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, La2/o;->p:I

    return-void
.end method
