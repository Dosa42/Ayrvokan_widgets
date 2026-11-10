.class public interface abstract Lorg/mozilla/geckoview/WebExtension$MessageDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/WebExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MessageDelegate"
.end annotation


# virtual methods
.method public onConnect(Lorg/mozilla/geckoview/WebExtension$Port;)V
    .locals 0

    return-void
.end method

.method public onMessage(Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/geckoview/WebExtension$MessageSender;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lorg/mozilla/geckoview/WebExtension$MessageSender;",
            ")",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
