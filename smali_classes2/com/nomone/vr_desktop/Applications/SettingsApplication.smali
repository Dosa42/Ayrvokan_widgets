.class public Lcom/nomone/vr_desktop/Applications/SettingsApplication;
.super Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;
.source "SourceFile"


# static fields
.field public static final g:Ljava/lang/String;

.field public static h:Lcom/nomone/vr_desktop/Applications/SettingsApplication;


# instance fields
.field public final f:Lq1/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "apps/settings/index.html"

    invoke-static {v0}, Lt1/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nomone/vr_desktop/Applications/SettingsApplication;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lq1/f;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/nomone/vr_desktop/Applications/SettingsApplication;->f:Lq1/f;

    .line 5
    .line 6
    invoke-static {}, Lcom/nomone/GeckoView/MyGeckoView;->getGlobalDisplayDensity()F

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/high16 v1, 0x3f800000    # 1.0f

    .line 11
    .line 12
    mul-float/2addr v0, v1

    .line 13
    const/high16 v1, 0x43fa0000    # 500.0f

    .line 14
    .line 15
    mul-float/2addr v1, v0

    .line 16
    float-to-int v1, v1

    .line 17
    const/high16 v2, 0x43960000    # 300.0f

    .line 18
    .line 19
    mul-float/2addr v0, v2

    .line 20
    float-to-int v0, v0

    .line 21
    new-instance v2, Lr1/e0;

    .line 22
    .line 23
    sget-object v3, Lcom/nomone/vr_desktop/Applications/SettingsApplication;->g:Ljava/lang/String;

    .line 24
    .line 25
    invoke-direct {v2, p1, v3}, Lr1/e0;-><init>(Lq1/f;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iput v1, v2, Lr1/q;->e:I

    .line 29
    .line 30
    iput v0, v2, Lr1/q;->f:I

    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    iput-boolean p1, v2, Lr1/e0;->r:Z

    .line 34
    .line 35
    const-string v0, "settingsTheme"

    .line 36
    .line 37
    iput-object v0, v2, Lr1/e0;->t:Ljava/lang/String;

    .line 38
    .line 39
    iput-boolean p1, v2, Lr1/q;->j:Z

    .line 40
    .line 41
    const/4 p1, 0x0

    .line 42
    iput-boolean p1, v2, Lr1/e0;->s:Z

    .line 43
    .line 44
    invoke-virtual {p0, v2}, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->c(Lr1/e0;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->d:La2/p;

    .line 48
    .line 49
    iput-boolean p1, v0, La2/i;->y:Z

    .line 50
    .line 51
    const/16 p1, 0x1f4

    .line 52
    .line 53
    iput p1, v0, La2/p;->U:I

    .line 54
    .line 55
    const/16 p1, 0x12c

    .line 56
    .line 57
    iput p1, v0, La2/p;->V:I

    .line 58
    .line 59
    new-instance p1, Ly0/i;

    .line 60
    .line 61
    invoke-direct {p1}, Ly0/i;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object p1, p0, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->e:Lr1/p;

    .line 65
    .line 66
    new-instance p1, Lr1/f;

    .line 67
    .line 68
    const/4 v1, 0x3

    .line 69
    iget-object v0, v0, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 70
    .line 71
    invoke-direct {p1, p0, v0, v1}, Lr1/f;-><init>(Lr1/c;Ljava/lang/Object;I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, p1}, Lcom/nomone/GeckoView/MyGeckoView;->a(Ln1/m;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public static e(Lcom/nomone/vr_desktop/LaunchActivity;F)F
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/nomone/vr_desktop/Applications/SettingsApplication;->g(Lcom/nomone/vr_desktop/LaunchActivity;)F

    move-result v0

    const v1, 0x3f333333    # 0.7f

    sub-float/2addr v0, v1

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    const p1, 0x3d75c28f    # 0.06f

    invoke-static {p0}, Lcom/nomone/vr_desktop/Applications/SettingsApplication;->g(Lcom/nomone/vr_desktop/LaunchActivity;)F

    move-result p0

    mul-float/2addr p0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    int-to-float p1, p1

    sub-float v1, p1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float p0, v1, p0

    if-gtz p0, :cond_0

    move v0, p1

    :cond_0
    return v0
.end method

.method public static f(Lcom/nomone/vr_desktop/LaunchActivity;)Z
    .locals 8

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/i0;->J()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v0, v1, :cond_0

    const-string v0, "Performance_Boot_Time"

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v0, v1}, Lo1/y;->b(Ljava/lang/String;F)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/i0;->R(Landroid/content/Context;)J

    move-result-wide v4

    const-wide/32 v6, 0x3b9aca00

    cmp-long p0, v4, v6

    if-lez p0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    and-int p0, v0, v2

    const-string v0, "Settings_Linux_Audio"

    invoke-static {v0, p0}, Lo1/y;->a(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static g(Lcom/nomone/vr_desktop/LaunchActivity;)F
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p0, v0

    const v0, 0x3fa66666    # 1.3f

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    move p0, v0

    :cond_0
    return p0
.end method

.method public static getInstance(Lq1/f;)Lcom/nomone/vr_desktop/Applications/SettingsApplication;
    .locals 1

    .line 1
    sget-object v0, Lcom/nomone/vr_desktop/Applications/SettingsApplication;->h:Lcom/nomone/vr_desktop/Applications/SettingsApplication;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nomone/vr_desktop/Applications/SettingsApplication;

    invoke-direct {v0, p0}, Lcom/nomone/vr_desktop/Applications/SettingsApplication;-><init>(Lq1/f;)V

    sput-object v0, Lcom/nomone/vr_desktop/Applications/SettingsApplication;->h:Lcom/nomone/vr_desktop/Applications/SettingsApplication;

    :cond_0
    sget-object p0, Lcom/nomone/vr_desktop/Applications/SettingsApplication;->h:Lcom/nomone/vr_desktop/Applications/SettingsApplication;

    return-object p0
.end method

.method public static h(Lq1/f;)F
    .locals 2

    .line 1
    iget-boolean v0, p0, Lq1/f;->B:Z

    .line 2
    .line 3
    iget-object p0, p0, Lq1/f;->b:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/high16 v0, 0x3f800000    # 1.0f

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const v0, 0x3f2aaaab

    .line 11
    .line 12
    .line 13
    invoke-static {p0, v0}, Lcom/nomone/vr_desktop/Applications/SettingsApplication;->e(Lcom/nomone/vr_desktop/LaunchActivity;F)F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    :goto_0
    const-string v1, "Settings_General_Scale"

    .line 18
    .line 19
    invoke-static {v1, v0}, Lo1/y;->b(Ljava/lang/String;F)F

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-static {p0}, Lcom/nomone/vr_desktop/Applications/SettingsApplication;->g(Lcom/nomone/vr_desktop/LaunchActivity;)F

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    cmpl-float v1, v0, p0

    .line 28
    .line 29
    if-lez v1, :cond_1

    .line 30
    .line 31
    move v0, p0

    .line 32
    :cond_1
    const p0, 0x3f333333    # 0.7f

    .line 33
    .line 34
    .line 35
    cmpg-float v1, v0, p0

    .line 36
    .line 37
    if-gez v1, :cond_2

    .line 38
    .line 39
    move v0, p0

    .line 40
    :cond_2
    return v0
.end method

.method public static i()Z
    .locals 2

    .line 1
    const-string v0, "Settings_Linux_Sharpen"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo1/y;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static j(Lcom/nomone/vr_desktop/LaunchActivity;)Z
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/play_billing/i0;->R(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/32 v2, 0x77359400

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string v0, "Settings_Linux_Ulauncher"

    invoke-static {v0, p0}, Lo1/y;->a(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
