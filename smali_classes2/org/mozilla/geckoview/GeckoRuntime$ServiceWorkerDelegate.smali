.class public interface abstract Lorg/mozilla/geckoview/GeckoRuntime$ServiceWorkerDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/GeckoRuntime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ServiceWorkerDelegate"
.end annotation


# virtual methods
.method public abstract onOpenWindow(Ljava/lang/String;)Lorg/mozilla/geckoview/GeckoResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Lorg/mozilla/geckoview/GeckoSession;",
            ">;"
        }
    .end annotation
.end method
