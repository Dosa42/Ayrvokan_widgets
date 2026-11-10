.class public interface abstract Lorg/mozilla/geckoview/GeckoSession$ContentDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/GeckoSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ContentDelegate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/geckoview/GeckoSession$ContentDelegate$ContextElement;
    }
.end annotation


# virtual methods
.method public onCloseRequest(Lorg/mozilla/geckoview/GeckoSession;)V
    .locals 0

    return-void
.end method

.method public onContextMenu(Lorg/mozilla/geckoview/GeckoSession;IILorg/mozilla/geckoview/GeckoSession$ContentDelegate$ContextElement;)V
    .locals 0

    return-void
.end method

.method public onCrash(Lorg/mozilla/geckoview/GeckoSession;)V
    .locals 0

    return-void
.end method

.method public onExternalResponse(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/GeckoSession$WebResponseInfo;)V
    .locals 0

    return-void
.end method

.method public onFirstComposite(Lorg/mozilla/geckoview/GeckoSession;)V
    .locals 0

    return-void
.end method

.method public onFirstContentfulPaint(Lorg/mozilla/geckoview/GeckoSession;)V
    .locals 0

    return-void
.end method

.method public onFocusRequest(Lorg/mozilla/geckoview/GeckoSession;)V
    .locals 0

    return-void
.end method

.method public onFullScreen(Lorg/mozilla/geckoview/GeckoSession;Z)V
    .locals 0

    return-void
.end method

.method public onKill(Lorg/mozilla/geckoview/GeckoSession;)V
    .locals 0

    return-void
.end method

.method public onMetaViewportFitChange(Lorg/mozilla/geckoview/GeckoSession;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSlowScript(Lorg/mozilla/geckoview/GeckoSession;Ljava/lang/String;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/geckoview/GeckoSession;",
            "Ljava/lang/String;",
            ")",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Lorg/mozilla/geckoview/SlowScriptResponse;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onTitleChange(Lorg/mozilla/geckoview/GeckoSession;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onWebAppManifest(Lorg/mozilla/geckoview/GeckoSession;Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method
