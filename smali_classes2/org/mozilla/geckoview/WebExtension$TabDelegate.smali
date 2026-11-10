.class public interface abstract Lorg/mozilla/geckoview/WebExtension$TabDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/WebExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TabDelegate"
.end annotation


# virtual methods
.method public onNewTab(Lorg/mozilla/geckoview/WebExtension;Lorg/mozilla/geckoview/WebExtension$CreateTabDetails;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/geckoview/WebExtension;",
            "Lorg/mozilla/geckoview/WebExtension$CreateTabDetails;",
            ")",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Lorg/mozilla/geckoview/GeckoSession;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onOpenOptionsPage(Lorg/mozilla/geckoview/WebExtension;)V
    .locals 0

    return-void
.end method
