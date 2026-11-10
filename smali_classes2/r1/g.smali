.class public final Lr1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate;


# instance fields
.field public a:Z

.field public final synthetic b:Ln1/e;

.field public final synthetic c:Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate;

.field public final synthetic d:Lcom/nomone/vr_desktop/Applications/BrowserApplication;


# direct methods
.method public constructor <init>(Lcom/nomone/vr_desktop/Applications/BrowserApplication;Ln1/e;Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr1/g;->d:Lcom/nomone/vr_desktop/Applications/BrowserApplication;

    iput-object p2, p0, Lr1/g;->b:Ln1/e;

    iput-object p3, p0, Lr1/g;->c:Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lr1/g;->a:Z

    return-void
.end method


# virtual methods
.method public final onCanGoBack(Lorg/mozilla/geckoview/GeckoSession;Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Lr1/g;->d:Lcom/nomone/vr_desktop/Applications/BrowserApplication;

    .line 2
    .line 3
    iget-boolean v0, p1, Lcom/nomone/vr_desktop/Applications/BrowserApplication;->q:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    iget-boolean v0, p0, Lr1/g;->a:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 p2, 0x0

    .line 14
    iput-boolean p2, p0, Lr1/g;->a:Z

    .line 15
    .line 16
    iget-object v0, p0, Lr1/g;->b:Ln1/e;

    .line 17
    .line 18
    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->purgeHistory()V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p1, Lcom/nomone/vr_desktop/Applications/BrowserApplication;->s:Z

    .line 23
    .line 24
    iget-object v0, p1, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->d:La2/p;

    .line 25
    .line 26
    iget-object v0, v0, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 27
    .line 28
    const-string v1, "document.getElementById(\'reloadButton\').removeAttribute(\'disabled\')"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/nomone/GeckoView/MyGeckoView;->f(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    if-eqz p2, :cond_1

    .line 34
    .line 35
    iget-object v0, p1, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->d:La2/p;

    .line 36
    .line 37
    iget-object v0, v0, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 38
    .line 39
    const-string v1, "document.getElementById(\'backwardButton\').removeAttribute(\'disabled\')"

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object v0, p1, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->d:La2/p;

    .line 43
    .line 44
    iget-object v0, v0, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 45
    .line 46
    const-string v1, "document.getElementById(\'backwardButton\').setAttribute(\'disabled\', \'\')"

    .line 47
    .line 48
    :goto_0
    invoke-virtual {v0, v1}, Lcom/nomone/GeckoView/MyGeckoView;->f(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iput-boolean p2, p1, Lcom/nomone/vr_desktop/Applications/BrowserApplication;->p:Z

    .line 52
    .line 53
    return-void
.end method

.method public final onCanGoForward(Lorg/mozilla/geckoview/GeckoSession;Z)V
    .locals 0

    .line 1
    sget-object p1, Lcom/nomone/vr_desktop/Applications/BrowserApplication;->v:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p1, p0, Lr1/g;->d:Lcom/nomone/vr_desktop/Applications/BrowserApplication;

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    iget-object p1, p1, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->d:La2/p;

    .line 8
    .line 9
    iget-object p1, p1, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 10
    .line 11
    const-string p2, "document.getElementById(\'forwardButton\').removeAttribute(\'disabled\')"

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p1, p1, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->d:La2/p;

    .line 15
    .line 16
    iget-object p1, p1, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 17
    .line 18
    const-string p2, "document.getElementById(\'forwardButton\').setAttribute(\'disabled\', \'\')"

    .line 19
    .line 20
    :goto_0
    invoke-virtual {p1, p2}, Lcom/nomone/GeckoView/MyGeckoView;->f(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final onLoadError(Lorg/mozilla/geckoview/GeckoSession;Ljava/lang/String;Lorg/mozilla/geckoview/WebRequestError;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 1

    .line 1
    iget-object v0, p0, Lr1/g;->c:Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate;

    invoke-interface {v0, p1, p2, p3}, Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate;->onLoadError(Lorg/mozilla/geckoview/GeckoSession;Ljava/lang/String;Lorg/mozilla/geckoview/WebRequestError;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    return-object p1
.end method

.method public final onLoadRequest(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate$LoadRequest;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 0

    .line 1
    iget-object p1, p0, Lr1/g;->d:Lcom/nomone/vr_desktop/Applications/BrowserApplication;

    iget-object p2, p2, Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate$LoadRequest;->uri:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/nomone/vr_desktop/Applications/BrowserApplication;->i(Lcom/nomone/vr_desktop/Applications/BrowserApplication;Ljava/lang/String;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    return-object p1
.end method

.method public final onLocationChange(Lorg/mozilla/geckoview/GeckoSession;Ljava/lang/String;)V
    .locals 0

    .line 1
    sget-object p1, Lcom/nomone/vr_desktop/Applications/BrowserApplication;->v:Ljava/lang/String;

    iget-object p1, p0, Lr1/g;->d:Lcom/nomone/vr_desktop/Applications/BrowserApplication;

    invoke-virtual {p1, p2}, Lcom/nomone/vr_desktop/Applications/BrowserApplication;->j(Ljava/lang/String;)V

    return-void
.end method

.method public final onNewSession(Lorg/mozilla/geckoview/GeckoSession;Ljava/lang/String;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 1

    .line 1
    iget-object p1, p0, Lr1/g;->d:Lcom/nomone/vr_desktop/Applications/BrowserApplication;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/nomone/vr_desktop/Applications/BrowserApplication;->n:Lq1/f;

    .line 4
    .line 5
    const-string v0, "Launch:com.nomone.vr_desktop.Applications.BrowserApplication,arguments:popUpWindow"

    .line 6
    .line 7
    invoke-static {p2, p1, v0}, Lcom/nomone/vr_desktop/Applications/LauncherApplication;->f(Lq1/f;Lr1/c;Ljava/lang/String;)Lr1/c;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/nomone/vr_desktop/Applications/BrowserApplication;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->e:La2/a;

    .line 14
    .line 15
    check-cast p1, La2/i;

    .line 16
    .line 17
    iget-object p1, p1, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/nomone/GeckoView/MyGeckoView;->getSession()Lorg/mozilla/geckoview/GeckoSession;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1}, Lorg/mozilla/geckoview/GeckoResult;->fromValue(Ljava/lang/Object;)Lorg/mozilla/geckoview/GeckoResult;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1
.end method

.method public final onSubframeLoadRequest(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate$LoadRequest;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 0

    .line 1
    iget-object p1, p0, Lr1/g;->d:Lcom/nomone/vr_desktop/Applications/BrowserApplication;

    iget-object p2, p2, Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate$LoadRequest;->uri:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/nomone/vr_desktop/Applications/BrowserApplication;->i(Lcom/nomone/vr_desktop/Applications/BrowserApplication;Ljava/lang/String;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    return-object p1
.end method
