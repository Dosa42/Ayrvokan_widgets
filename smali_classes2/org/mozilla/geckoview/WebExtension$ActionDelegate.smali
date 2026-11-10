.class public interface abstract Lorg/mozilla/geckoview/WebExtension$ActionDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/WebExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ActionDelegate"
.end annotation


# virtual methods
.method public onBrowserAction(Lorg/mozilla/geckoview/WebExtension;Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/WebExtension$Action;)V
    .locals 0

    return-void
.end method

.method public onOpenPopup(Lorg/mozilla/geckoview/WebExtension;Lorg/mozilla/geckoview/WebExtension$Action;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/geckoview/WebExtension;",
            "Lorg/mozilla/geckoview/WebExtension$Action;",
            ")",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Lorg/mozilla/geckoview/GeckoSession;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onPageAction(Lorg/mozilla/geckoview/WebExtension;Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/WebExtension$Action;)V
    .locals 0

    return-void
.end method

.method public onTogglePopup(Lorg/mozilla/geckoview/WebExtension;Lorg/mozilla/geckoview/WebExtension$Action;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/geckoview/WebExtension;",
            "Lorg/mozilla/geckoview/WebExtension$Action;",
            ")",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Lorg/mozilla/geckoview/GeckoSession;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
