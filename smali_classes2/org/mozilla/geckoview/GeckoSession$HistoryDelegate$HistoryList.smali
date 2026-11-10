.class public interface abstract Lorg/mozilla/geckoview/GeckoSession$HistoryDelegate$HistoryList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/GeckoSession$HistoryDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HistoryList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/List<",
        "Lorg/mozilla/geckoview/GeckoSession$HistoryDelegate$HistoryItem;",
        ">;"
    }
.end annotation


# virtual methods
.method public getCurrentIndex()I
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "HistoryList.getCurrentIndex() called on invalid object."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
