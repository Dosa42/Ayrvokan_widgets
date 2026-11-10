.class public final Lr1/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate;


# instance fields
.field public final synthetic a:Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;


# direct methods
.method public constructor <init>(Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr1/c0;->a:Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoadRequest(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate$LoadRequest;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 2

    .line 1
    iget-object v0, p2, Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate$LoadRequest;->uri:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/i0;->m0(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    :try_start_0
    iget-object p1, p0, Lr1/c0;->a:Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->a:Lq1/f;

    .line 12
    .line 13
    iget-object p1, p1, Lq1/f;->b:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 14
    .line 15
    new-instance p2, Landroid/content/Intent;

    .line 16
    .line 17
    const-string v1, "android.intent.action.VIEW"

    .line 18
    .line 19
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-direct {p2, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    :catch_0
    sget-object p1, Lorg/mozilla/geckoview/AllowOrDeny;->DENY:Lorg/mozilla/geckoview/AllowOrDeny;

    .line 30
    .line 31
    invoke-static {p1}, Lorg/mozilla/geckoview/GeckoResult;->fromValue(Ljava/lang/Object;)Lorg/mozilla/geckoview/GeckoResult;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1

    .line 36
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate;->onLoadRequest(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate$LoadRequest;)Lorg/mozilla/geckoview/GeckoResult;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    return-object p1
.end method

.method public final onNewSession(Lorg/mozilla/geckoview/GeckoSession;Ljava/lang/String;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 7

    .line 1
    invoke-static {}, Lcom/nomone/vr_desktop/Applications/GeckoViewApplication;->h()Lo1/x;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p2, p0, Lr1/c0;->a:Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;

    .line 6
    .line 7
    iget-object v0, p2, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->a:Lq1/f;

    .line 8
    .line 9
    iget-object v1, p2, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->c:La2/b;

    .line 10
    .line 11
    iget-object v1, v1, La2/b;->d:La2/c0;

    .line 12
    .line 13
    check-cast v1, La2/b0;

    .line 14
    .line 15
    iget-object p2, p2, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->b:Lz1/f;

    .line 16
    .line 17
    iget v2, p2, Lz1/f;->e:F

    .line 18
    .line 19
    iget p2, p2, Lz1/f;->f:F

    .line 20
    .line 21
    iget v3, p1, Lo1/x;->a:F

    .line 22
    .line 23
    float-to-int v3, v3

    .line 24
    iget p1, p1, Lo1/x;->b:F

    .line 25
    .line 26
    float-to-int p1, p1

    .line 27
    new-instance v4, Lcom/nomone/vr_desktop/Applications/GeckoViewApplication;

    .line 28
    .line 29
    new-instance v5, Lr1/u;

    .line 30
    .line 31
    const/4 v6, 0x0

    .line 32
    invoke-direct {v5, v0, v6}, Lr1/u;-><init>(Lq1/f;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iput v2, v5, Lr1/q;->c:F

    .line 36
    .line 37
    iput p2, v5, Lr1/q;->d:F

    .line 38
    .line 39
    iput v3, v5, Lr1/q;->e:I

    .line 40
    .line 41
    iput p1, v5, Lr1/q;->f:I

    .line 42
    .line 43
    invoke-direct {v4, v5}, Lcom/nomone/vr_desktop/Applications/GeckoViewApplication;-><init>(Lr1/u;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, v4, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->c:La2/b;

    .line 47
    .line 48
    const/4 p2, 0x1

    .line 49
    invoke-virtual {v1, p1, p2}, La2/e0;->A(La2/r;Z)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lq1/f;->d()V

    .line 53
    .line 54
    .line 55
    iget-object p1, v4, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->e:La2/a;

    .line 56
    .line 57
    check-cast p1, La2/i;

    .line 58
    .line 59
    iget-object p1, p1, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/nomone/GeckoView/MyGeckoView;->getSession()Lorg/mozilla/geckoview/GeckoSession;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-static {p1}, Lorg/mozilla/geckoview/GeckoResult;->fromValue(Ljava/lang/Object;)Lorg/mozilla/geckoview/GeckoResult;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    return-object p1
.end method
