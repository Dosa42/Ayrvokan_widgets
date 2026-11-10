.class public Lcom/nomone/vr_desktop/Applications/PromptApplication;
.super Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;
.source "SourceFile"


# static fields
.field public static final h:Ljava/lang/String;


# instance fields
.field public f:Lr1/y;

.field public g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "apps/prompt/index.html"

    invoke-static {v0}, Lt1/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nomone/vr_desktop/Applications/PromptApplication;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lr1/y;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;-><init>()V

    invoke-virtual {p0, p1}, Lcom/nomone/vr_desktop/Applications/PromptApplication;->e(Lr1/y;)V

    return-void
.end method

.method public static g(Lr1/y;Lr1/c;)Lcom/nomone/vr_desktop/Applications/PromptApplication;
    .locals 4

    .line 1
    new-instance v0, Lcom/nomone/vr_desktop/Applications/PromptApplication;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/nomone/vr_desktop/Applications/PromptApplication;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-boolean v1, p0, Lr1/y;->c:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    iput-boolean v1, p0, Lr1/y;->b:Z

    .line 12
    .line 13
    iget-object v1, p0, Lr1/y;->a:Lq1/f;

    .line 14
    .line 15
    iget-object v2, v1, Lq1/f;->f:La2/b0;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {v2, v3}, La2/e0;->B(Z)V

    .line 19
    .line 20
    .line 21
    iget-object v1, v1, Lq1/f;->f:La2/b0;

    .line 22
    .line 23
    iput-boolean v3, v1, La2/e0;->m:Z

    .line 24
    .line 25
    :cond_0
    invoke-virtual {p0}, Lr1/y;->c()Lr1/y;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iput-object v1, v0, Lcom/nomone/vr_desktop/Applications/PromptApplication;->f:Lr1/y;

    .line 30
    .line 31
    sget-object v1, Lq1/f;->L:Lo1/j0;

    .line 32
    .line 33
    new-instance v2, Ln1/a;

    .line 34
    .line 35
    const/4 v3, 0x3

    .line 36
    invoke-direct {v2, v0, p0, p1, v3}, Ln1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 37
    .line 38
    .line 39
    new-instance p1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v3, "Prompt: "

    .line 42
    .line 43
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object p0, p0, Lr1/y;->d:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {v1, p0, v2}, Lo1/j0;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 56
    .line 57
    .line 58
    return-object v0
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/nomone/vr_desktop/Applications/PromptApplication;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/nomone/vr_desktop/Applications/PromptApplication;->g:Z

    .line 8
    .line 9
    invoke-super {p0}, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->b()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/nomone/vr_desktop/Applications/PromptApplication;->f:Lr1/y;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iget-boolean v1, v1, Lr1/y;->c:Z

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->a:Lq1/f;

    .line 21
    .line 22
    iget-object v1, v1, Lq1/f;->f:La2/b0;

    .line 23
    .line 24
    invoke-virtual {v1, v0}, La2/e0;->B(Z)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->a:Lq1/f;

    .line 28
    .line 29
    iget-object v1, v1, Lq1/f;->f:La2/b0;

    .line 30
    .line 31
    iput-boolean v0, v1, La2/e0;->m:Z

    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lcom/nomone/vr_desktop/Applications/PromptApplication;->f:Lr1/y;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    iget-object v0, v0, Lr1/y;->p:Lr1/x;

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    invoke-interface {v0, p0}, Lr1/x;->k(Lcom/nomone/vr_desktop/Applications/PromptApplication;)V

    .line 42
    .line 43
    .line 44
    :cond_2
    return-void
.end method

.method public final e(Lr1/y;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/nomone/GeckoView/MyGeckoView;->getGlobalDisplayDensity()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x3f800000    # 1.0f

    .line 6
    .line 7
    mul-float/2addr v0, v1

    .line 8
    iget v1, p1, Lr1/y;->g:I

    .line 9
    .line 10
    int-to-float v1, v1

    .line 11
    mul-float/2addr v1, v0

    .line 12
    float-to-int v1, v1

    .line 13
    iget v2, p1, Lr1/y;->h:I

    .line 14
    .line 15
    int-to-float v2, v2

    .line 16
    mul-float/2addr v2, v0

    .line 17
    float-to-int v0, v2

    .line 18
    iget-object v2, p1, Lr1/y;->a:Lq1/f;

    .line 19
    .line 20
    iget v3, v2, Lq1/f;->z:I

    .line 21
    .line 22
    if-le v0, v3, :cond_0

    .line 23
    .line 24
    move v0, v3

    .line 25
    :cond_0
    new-instance v3, Lr1/e0;

    .line 26
    .line 27
    sget-object v4, Lcom/nomone/vr_desktop/Applications/PromptApplication;->h:Ljava/lang/String;

    .line 28
    .line 29
    invoke-direct {v3, v2, v4}, Lr1/e0;-><init>(Lq1/f;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iput v1, v3, Lr1/q;->e:I

    .line 33
    .line 34
    iput v0, v3, Lr1/q;->f:I

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    iput-boolean v0, v3, Lr1/e0;->r:Z

    .line 38
    .line 39
    const-string v0, "promptTheme"

    .line 40
    .line 41
    iput-object v0, v3, Lr1/e0;->t:Ljava/lang/String;

    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    iput-boolean v0, v3, Lr1/q;->j:Z

    .line 45
    .line 46
    iput-boolean v0, v3, Lr1/e0;->s:Z

    .line 47
    .line 48
    iget-boolean v1, p1, Lr1/y;->m:Z

    .line 49
    .line 50
    iput-boolean v1, v3, Lr1/q;->m:Z

    .line 51
    .line 52
    iget-boolean v1, p1, Lr1/y;->n:Z

    .line 53
    .line 54
    iput-boolean v1, v3, Lr1/u;->q:Z

    .line 55
    .line 56
    invoke-virtual {p0, v3}, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->c(Lr1/e0;)V

    .line 57
    .line 58
    .line 59
    iput-object p1, p0, Lcom/nomone/vr_desktop/Applications/PromptApplication;->f:Lr1/y;

    .line 60
    .line 61
    iput-boolean v0, p0, Lcom/nomone/vr_desktop/Applications/PromptApplication;->g:Z

    .line 62
    .line 63
    new-instance v0, Landroidx/fragment/app/h;

    .line 64
    .line 65
    const/16 v1, 0x15

    .line 66
    .line 67
    invoke-direct {v0, v1, p0, p1}, Landroidx/fragment/app/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    iput-object v0, p0, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->e:Lr1/p;

    .line 71
    .line 72
    iget-object v0, p0, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->d:La2/p;

    .line 73
    .line 74
    iget-object v0, v0, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 75
    .line 76
    new-instance v1, Lr1/f;

    .line 77
    .line 78
    const/4 v2, 0x2

    .line 79
    invoke-direct {v1, p0, p1, v2}, Lr1/f;-><init>(Lr1/c;Ljava/lang/Object;I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Lcom/nomone/GeckoView/MyGeckoView;->a(Ln1/m;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nomone/vr_desktop/Applications/PromptApplication;->f:Lr1/y;

    iget-object v0, v0, Lr1/y;->o:Lr1/w;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lr1/w;->c(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/nomone/vr_desktop/Applications/PromptApplication;->b()V

    return-void
.end method
