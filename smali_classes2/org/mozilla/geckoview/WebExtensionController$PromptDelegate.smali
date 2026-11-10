.class public interface abstract Lorg/mozilla/geckoview/WebExtensionController$PromptDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/WebExtensionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PromptDelegate"
.end annotation


# virtual methods
.method public onInstallPrompt(Lorg/mozilla/geckoview/WebExtension;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/geckoview/WebExtension;",
            ")",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Lorg/mozilla/geckoview/AllowOrDeny;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onUpdatePrompt(Lorg/mozilla/geckoview/WebExtension;Lorg/mozilla/geckoview/WebExtension;[Ljava/lang/String;[Ljava/lang/String;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/geckoview/WebExtension;",
            "Lorg/mozilla/geckoview/WebExtension;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Lorg/mozilla/geckoview/AllowOrDeny;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
