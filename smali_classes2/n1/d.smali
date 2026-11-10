.class public final Ln1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate;


# instance fields
.field public final synthetic a:Ln1/e;


# direct methods
.method public constructor <init>(Ln1/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln1/d;->a:Ln1/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCanGoBack(Lorg/mozilla/geckoview/GeckoSession;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln1/d;->a:Ln1/e;

    iget-object v0, v0, Ln1/e;->b:Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate;->onCanGoBack(Lorg/mozilla/geckoview/GeckoSession;Z)V

    :cond_0
    return-void
.end method

.method public final onCanGoForward(Lorg/mozilla/geckoview/GeckoSession;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln1/d;->a:Ln1/e;

    iget-object v0, v0, Ln1/e;->b:Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate;->onCanGoForward(Lorg/mozilla/geckoview/GeckoSession;Z)V

    :cond_0
    return-void
.end method

.method public final onLoadError(Lorg/mozilla/geckoview/GeckoSession;Ljava/lang/String;Lorg/mozilla/geckoview/WebRequestError;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 1

    .line 1
    iget-object v0, p0, Ln1/d;->a:Ln1/e;

    iget-object v0, v0, Ln1/e;->b:Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate;->onLoadError(Lorg/mozilla/geckoview/GeckoSession;Ljava/lang/String;Lorg/mozilla/geckoview/WebRequestError;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final onLoadRequest(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate$LoadRequest;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 1

    .line 1
    iget-object v0, p0, Ln1/d;->a:Ln1/e;

    iget-object v0, v0, Ln1/e;->b:Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate;->onLoadRequest(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate$LoadRequest;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final onLocationChange(Lorg/mozilla/geckoview/GeckoSession;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln1/d;->a:Ln1/e;

    iput-object p2, v0, Ln1/e;->a:Ljava/lang/String;

    iget-object v0, v0, Ln1/e;->b:Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate;->onLocationChange(Lorg/mozilla/geckoview/GeckoSession;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onNewSession(Lorg/mozilla/geckoview/GeckoSession;Ljava/lang/String;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 1

    .line 1
    iget-object v0, p0, Ln1/d;->a:Ln1/e;

    iget-object v0, v0, Ln1/e;->b:Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate;->onNewSession(Lorg/mozilla/geckoview/GeckoSession;Ljava/lang/String;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final onSubframeLoadRequest(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate$LoadRequest;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 1

    .line 1
    iget-object v0, p0, Ln1/d;->a:Ln1/e;

    iget-object v0, v0, Ln1/e;->b:Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate;->onSubframeLoadRequest(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate$LoadRequest;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
