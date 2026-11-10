.class public Lcom/nomone/vr_desktop/Applications/GeckoViewApplication;
.super Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;
.source "SourceFile"


# static fields
.field public static final l:Ljava/util/Random;

.field public static m:I


# instance fields
.field public final k:Lq1/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/nomone/vr_desktop/Applications/GeckoViewApplication;->l:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Lr1/u;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lr1/q;->k:Lq1/f;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/nomone/vr_desktop/Applications/GeckoViewApplication;->k:Lq1/f;

    .line 7
    .line 8
    iget-object v1, v0, Lq1/f;->b:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/nomone/GeckoView/MyGeckoView;->b(Lq1/f;)Lcom/nomone/GeckoView/MyGeckoView;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v2}, Lcom/nomone/GeckoView/MyGeckoView;->getSession()Lorg/mozilla/geckoview/GeckoSession;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    new-instance v4, Lr1/r;

    .line 19
    .line 20
    invoke-direct {v4, p0, v2}, Lr1/r;-><init>(Lcom/nomone/vr_desktop/Applications/GeckoViewApplication;Lcom/nomone/GeckoView/MyGeckoView;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3, v4}, Lorg/mozilla/geckoview/GeckoSession;->setNavigationDelegate(Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate;)V

    .line 24
    .line 25
    .line 26
    iget-object v4, p1, Lr1/u;->o:Ljava/lang/String;

    .line 27
    .line 28
    if-eqz v4, :cond_0

    .line 29
    .line 30
    invoke-virtual {v3, v4}, Lorg/mozilla/geckoview/GeckoSession;->loadUri(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lcom/nomone/vr_desktop/Applications/SettingsApplication;->h(Lq1/f;)F

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    invoke-static {v1, v4}, Lcom/nomone/GeckoView/MyGeckoView;->c(Lcom/nomone/vr_desktop/LaunchActivity;F)Lorg/mozilla/geckoview/GeckoRuntime;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v3, v1}, Lorg/mozilla/geckoview/GeckoSession;->open(Lorg/mozilla/geckoview/GeckoRuntime;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    new-instance v1, Lz1/c;

    .line 45
    .line 46
    const/4 v4, 0x1

    .line 47
    invoke-direct {v1, v4, v4}, Lz1/c;-><init>(II)V

    .line 48
    .line 49
    .line 50
    iput-object v1, p1, Lr1/q;->b:Lz1/c;

    .line 51
    .line 52
    new-instance v4, La2/i;

    .line 53
    .line 54
    invoke-direct {v4, v0, v2, v1}, La2/i;-><init>(Lq1/f;Lcom/nomone/GeckoView/MyGeckoView;Lz1/c;)V

    .line 55
    .line 56
    .line 57
    iput-object v4, p1, Lr1/q;->a:La2/a;

    .line 58
    .line 59
    iget v0, p1, Lr1/u;->p:I

    .line 60
    .line 61
    iput v0, v4, La2/i;->J:I

    .line 62
    .line 63
    iget-boolean v0, p1, Lr1/u;->q:Z

    .line 64
    .line 65
    iput-boolean v0, v4, La2/i;->y:Z

    .line 66
    .line 67
    invoke-virtual {p0, p1}, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->c(Lr1/q;)V

    .line 68
    .line 69
    .line 70
    new-instance p1, Lr1/t;

    .line 71
    .line 72
    invoke-direct {p1, p0}, Lr1/t;-><init>(Lcom/nomone/vr_desktop/Applications/GeckoViewApplication;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, p1}, Lorg/mozilla/geckoview/GeckoSession;->setContentDelegate(Lorg/mozilla/geckoview/GeckoSession$ContentDelegate;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public static h()Lo1/x;
    .locals 5

    .line 1
    sget-object v0, Lcom/nomone/vr_desktop/Applications/GeckoViewApplication;->l:Ljava/util/Random;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    :goto_0
    add-int/lit8 v2, v2, -0x1e

    sget v3, Lcom/nomone/vr_desktop/Applications/GeckoViewApplication;->m:I

    sub-int v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0xa

    if-ge v3, v4, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    goto :goto_0

    :cond_0
    int-to-float v0, v2

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    sget v1, Lcom/nomone/vr_desktop/Applications/GeckoViewApplication;->m:I

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    neg-int v2, v2

    :cond_1
    sput v2, Lcom/nomone/vr_desktop/Applications/GeckoViewApplication;->m:I

    invoke-static {}, Lcom/nomone/GeckoView/MyGeckoView;->getGlobalDisplayDensity()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    new-instance v1, Lo1/x;

    add-int/lit16 v3, v2, 0x1f4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    int-to-float v3, v3

    rsub-int v2, v2, 0x118

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v0, v2

    int-to-float v0, v0

    invoke-direct {v1, v3, v0}, Lo1/x;-><init>(FF)V

    return-object v1
.end method


# virtual methods
.method public final g(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->g(Z)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->e:La2/a;

    .line 7
    .line 8
    check-cast p1, La2/i;

    .line 9
    .line 10
    iget-object p1, p1, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 11
    .line 12
    const-string v0, "document.exitFullscreen()"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/nomone/GeckoView/MyGeckoView;->f(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
