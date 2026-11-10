.class public interface abstract Lorg/mozilla/geckoview/WebExtensionController$TabDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/WebExtensionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TabDelegate"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public onCloseTab(Lorg/mozilla/geckoview/WebExtension;Lorg/mozilla/geckoview/GeckoSession;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/geckoview/WebExtension;",
            "Lorg/mozilla/geckoview/GeckoSession;",
            ")",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Lorg/mozilla/geckoview/AllowOrDeny;",
            ">;"
        }
    .end annotation

    sget-object p1, Lorg/mozilla/geckoview/GeckoResult;->DENY:Lorg/mozilla/geckoview/GeckoResult;

    return-object p1
.end method

.method public onNewTab(Lorg/mozilla/geckoview/WebExtension;Ljava/lang/String;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/geckoview/WebExtension;",
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
