.class public interface abstract Lorg/mozilla/geckoview/GeckoSession$HistoryDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/GeckoSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HistoryDelegate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/geckoview/GeckoSession$HistoryDelegate$HistoryList;,
        Lorg/mozilla/geckoview/GeckoSession$HistoryDelegate$HistoryItem;
    }
.end annotation


# static fields
.field public static final VISIT_REDIRECT_PERMANENT:I = 0x4

.field public static final VISIT_REDIRECT_SOURCE:I = 0x8

.field public static final VISIT_REDIRECT_SOURCE_PERMANENT:I = 0x10

.field public static final VISIT_REDIRECT_TEMPORARY:I = 0x2

.field public static final VISIT_TOP_LEVEL:I = 0x1

.field public static final VISIT_UNRECOVERABLE_ERROR:I = 0x20


# virtual methods
.method public getVisited(Lorg/mozilla/geckoview/GeckoSession;[Ljava/lang/String;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/geckoview/GeckoSession;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "[Z>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onHistoryStateChange(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/GeckoSession$HistoryDelegate$HistoryList;)V
    .locals 0

    return-void
.end method

.method public onVisited(Lorg/mozilla/geckoview/GeckoSession;Ljava/lang/String;Ljava/lang/String;I)Lorg/mozilla/geckoview/GeckoResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/geckoview/GeckoSession;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
