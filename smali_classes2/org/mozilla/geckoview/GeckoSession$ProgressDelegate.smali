.class public interface abstract Lorg/mozilla/geckoview/GeckoSession$ProgressDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/GeckoSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProgressDelegate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/geckoview/GeckoSession$ProgressDelegate$SecurityInformation;
    }
.end annotation


# virtual methods
.method public onPageStart(Lorg/mozilla/geckoview/GeckoSession;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPageStop(Lorg/mozilla/geckoview/GeckoSession;Z)V
    .locals 0

    return-void
.end method

.method public onProgressChange(Lorg/mozilla/geckoview/GeckoSession;I)V
    .locals 0

    return-void
.end method

.method public onSecurityChange(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/GeckoSession$ProgressDelegate$SecurityInformation;)V
    .locals 0

    return-void
.end method

.method public onSessionStateChange(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/GeckoSession$SessionState;)V
    .locals 0

    return-void
.end method
