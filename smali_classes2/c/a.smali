.class public final Lc/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll0/b;
.implements Lr1/x;
.implements Ly1/a;
.implements Lo2/e;
.implements Lt2/s;
.implements Lv2/c;
.implements Lx2/j;


# static fields
.field public static g:Lc/a;


# instance fields
.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>()V
    .locals 2

    const/16 v0, 0xf

    iput v0, p0, Lc/a;->f:I

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lc/a;-><init>(II)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lc/a;->f:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    .line 3
    iput p1, p0, Lc/a;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static J(Lcom/nomone/vr_desktop/Applications/PromptApplication;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/nomone/vr_desktop/Applications/PromptApplication;->b()V

    sget-object p0, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->z:Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->g(Z)V

    :cond_0
    if-eqz p1, :cond_1

    const-string p0, "Should show gestures tutorial dialog 2"

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lo1/y;->e(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final A(J)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public final B(Lf2/u;Li2/c;Z)I
    .locals 0

    .line 1
    const/4 p1, 0x4

    .line 2
    iput p1, p2, Li2/a;->b:I

    .line 3
    .line 4
    const/4 p1, -0x4

    .line 5
    return p1
.end method

.method public final C()I
    .locals 2

    .line 1
    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {}, Lcom/nomone/GeckoView/MyGeckoView;->getGlobalDisplayDensity()F

    move-result v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    return v0
.end method

.method public final D()I
    .locals 2

    .line 1
    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {}, Lcom/nomone/GeckoView/MyGeckoView;->getGlobalDisplayDensity()F

    move-result v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    return v0
.end method

.method public final E()I
    .locals 2

    .line 1
    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {}, Lcom/nomone/GeckoView/MyGeckoView;->getGlobalDisplayDensity()F

    move-result v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    return v0
.end method

.method public final F()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final G()V
    .locals 0

    .line 1
    return-void
.end method

.method public final H()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final I()I
    .locals 2

    .line 1
    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {}, Lcom/nomone/GeckoView/MyGeckoView;->getGlobalDisplayDensity()F

    move-result v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    return v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "themes/darkWindowTheme"

    return-object v0
.end method

.method public final b(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public final c()I
    .locals 1

    .line 1
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v0

    return v0
.end method

.method public final d()I
    .locals 2

    .line 1
    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {}, Lcom/nomone/GeckoView/MyGeckoView;->getGlobalDisplayDensity()F

    move-result v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    return v0
.end method

.method public final e()I
    .locals 2

    .line 1
    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {}, Lcom/nomone/GeckoView/MyGeckoView;->getGlobalDisplayDensity()F

    move-result v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    return v0
.end method

.method public final f(F)I
    .locals 1

    .line 1
    const/high16 v0, 0x42540000    # 53.0f

    add-float/2addr p1, v0

    invoke-static {}, Lcom/nomone/GeckoView/MyGeckoView;->getGlobalDisplayDensity()F

    move-result v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    return p1
.end method

.method public final h(I)Landroid/media/MediaCodecInfo;
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object p1

    return-object p1
.end method

.method public final isReady()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public final j()I
    .locals 2

    .line 1
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {}, Lcom/nomone/GeckoView/MyGeckoView;->getGlobalDisplayDensity()F

    move-result v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    return v0
.end method

.method public final k(Lcom/nomone/vr_desktop/Applications/PromptApplication;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lc/a;->J(Lcom/nomone/vr_desktop/Applications/PromptApplication;Z)V

    return-void
.end method

.method public final m()Ljava/lang/Object;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget v2, p0, Lc/a;->f:I

    .line 4
    .line 5
    packed-switch v2, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_2

    .line 9
    :pswitch_0
    packed-switch v2, :pswitch_data_1

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :pswitch_1
    new-instance v0, Lr0/b;

    .line 14
    .line 15
    invoke-direct {v0, v1}, Lr0/b;-><init>(I)V

    .line 16
    .line 17
    .line 18
    goto :goto_1

    .line 19
    :goto_0
    new-instance v1, Lr0/b;

    .line 20
    .line 21
    invoke-direct {v1, v0}, Lr0/b;-><init>(I)V

    .line 22
    .line 23
    .line 24
    move-object v0, v1

    .line 25
    :goto_1
    return-object v0

    .line 26
    :pswitch_2
    sget-object v0, Lp0/a;->f:Lp0/a;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    return-object v0

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    .line 32
    .line 33
    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 34
    .line 35
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v0

    .line 39
    :pswitch_3
    sget v0, Lp0/n;->d:I

    .line 40
    .line 41
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0

    .line 46
    :pswitch_4
    const-string v0, "com.google.android.datatransport.events"

    .line 47
    .line 48
    return-object v0

    .line 49
    :pswitch_5
    new-instance v0, Lj0/p;

    .line 50
    .line 51
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-direct {v0, v1}, Lj0/p;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 56
    .line 57
    .line 58
    return-object v0

    .line 59
    :goto_2
    packed-switch v2, :pswitch_data_2

    .line 60
    .line 61
    .line 62
    goto :goto_3

    .line 63
    :pswitch_6
    new-instance v0, Lr0/b;

    .line 64
    .line 65
    invoke-direct {v0, v1}, Lr0/b;-><init>(I)V

    .line 66
    .line 67
    .line 68
    goto :goto_4

    .line 69
    :goto_3
    new-instance v1, Lr0/b;

    .line 70
    .line 71
    invoke-direct {v1, v0}, Lr0/b;-><init>(I)V

    .line 72
    .line 73
    .line 74
    move-object v0, v1

    .line 75
    :goto_4
    return-object v0

    .line 76
    nop

    .line 77
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_1
    .end packed-switch

    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    :pswitch_data_2
    .packed-switch 0x8
        :pswitch_6
    .end packed-switch
.end method

.method public final n()I
    .locals 2

    .line 1
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {}, Lcom/nomone/GeckoView/MyGeckoView;->getGlobalDisplayDensity()F

    move-result v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    return v0
.end method

.method public final o(Lcom/nomone/vr_desktop/Applications/PromptApplication;Lu1/x;)Z
    .locals 1

    .line 1
    iget v0, p2, Lu1/x;->d:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget p2, p2, Lu1/x;->b:I

    .line 6
    .line 7
    const/16 v0, 0x6f

    .line 8
    .line 9
    if-ne p2, v0, :cond_0

    .line 10
    .line 11
    const/4 p2, 0x0

    .line 12
    invoke-static {p1, p2}, Lc/a;->J(Lcom/nomone/vr_desktop/Applications/PromptApplication;Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    const/4 p1, 0x1

    .line 16
    return p1
.end method

.method public final p(Lx2/e;)La3/d0;
    .locals 1

    .line 1
    new-instance v0, Lx2/i;

    invoke-direct {v0, p1}, Lx2/i;-><init>(Lx2/e;)V

    return-object v0
.end method

.method public final q(Lcom/nomone/vr_desktop/Applications/PromptApplication;)V
    .locals 1

    .line 1
    iget-object p1, p1, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->d:La2/p;

    .line 2
    .line 3
    iget-object p1, p1, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 4
    .line 5
    const-string v0, "let tinyButtonElement = document.getElementById(\'tinyButton\');setupButton(tinyButtonElement);tinyButtonElement.click = function() { scrollDialogTo(212, 1000); };let dialogBodyElement = document.getElementById(\'dialogBody\');setupButton(dialogBodyElement);dialogBodyElement.rightclick = function() { scrollDialogTo(422, 1000); };function scrollDialogTo(y, duration) {    var initialY = dialogBodyElement.scrollTop;    var baseY = (initialY + y) * 0.5;    var difference = initialY - baseY;    var startTime = performance.now();    function step() {        var normalizedTime = (performance.now() - startTime) / duration;        if (normalizedTime > 1) normalizedTime = 1;        dialogBodyElement.scrollTo(0, baseY + difference * Math.cos(normalizedTime * Math.PI));        if (normalizedTime < 1) window.requestAnimationFrame(step);    }    window.requestAnimationFrame(step);}"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lcom/nomone/GeckoView/MyGeckoView;->f(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final r()I
    .locals 2

    .line 1
    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {}, Lcom/nomone/GeckoView/MyGeckoView;->getGlobalDisplayDensity()F

    move-result v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    return v0
.end method

.method public final s()I
    .locals 2

    .line 1
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {}, Lcom/nomone/GeckoView/MyGeckoView;->getGlobalDisplayDensity()F

    move-result v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    return v0
.end method

.method public final t()La3/d0;
    .locals 2

    .line 1
    new-instance v0, Lx2/i;

    .line 2
    .line 3
    sget-object v1, Lx2/e;->n:Lx2/e;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lx2/i;-><init>(Lx2/e;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final v(Lcom/nomone/vr_desktop/Applications/PromptApplication;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lc/a;->J(Lcom/nomone/vr_desktop/Applications/PromptApplication;Z)V

    return-void
.end method

.method public final x(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 0

    .line 1
    const-string p3, "secure-playback"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "video/avc"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final y()V
    .locals 0

    .line 1
    return-void
.end method

.method public final z()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method
