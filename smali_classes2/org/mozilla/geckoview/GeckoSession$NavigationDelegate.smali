.class public interface abstract Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/GeckoSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NavigationDelegate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate$LoadRequest;
    }
.end annotation


# static fields
.field public static final LOAD_REQUEST_IS_REDIRECT:I = 0x800000

.field public static final TARGET_WINDOW_CURRENT:I = 0x1

.field public static final TARGET_WINDOW_NEW:I = 0x2

.field public static final TARGET_WINDOW_NONE:I


# virtual methods
.method public onCanGoBack(Lorg/mozilla/geckoview/GeckoSession;Z)V
    .locals 0

    return-void
.end method

.method public onCanGoForward(Lorg/mozilla/geckoview/GeckoSession;Z)V
    .locals 0

    return-void
.end method

.method public onLoadError(Lorg/mozilla/geckoview/GeckoSession;Ljava/lang/String;Lorg/mozilla/geckoview/WebRequestError;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/geckoview/GeckoSession;",
            "Ljava/lang/String;",
            "Lorg/mozilla/geckoview/WebRequestError;",
            ")",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onLoadRequest(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate$LoadRequest;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/geckoview/GeckoSession;",
            "Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate$LoadRequest;",
            ")",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Lorg/mozilla/geckoview/AllowOrDeny;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onLocationChange(Lorg/mozilla/geckoview/GeckoSession;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onNewSession(Lorg/mozilla/geckoview/GeckoSession;Ljava/lang/String;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/geckoview/GeckoSession;",
            "Ljava/lang/String;",
            ")",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Lorg/mozilla/geckoview/GeckoSession;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onSubframeLoadRequest(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate$LoadRequest;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/geckoview/GeckoSession;",
            "Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate$LoadRequest;",
            ")",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Lorg/mozilla/geckoview/AllowOrDeny;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
