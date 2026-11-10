.class public Lorg/mozilla/geckoview/MediaElement$LoadProgressInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/MediaElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadProgressInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/geckoview/MediaElement$LoadProgressInfo$TimeRange;
    }
.end annotation


# instance fields
.field public final buffered:[Lorg/mozilla/geckoview/MediaElement$LoadProgressInfo$TimeRange;

.field public final loadedBytes:J

.field public final totalBytes:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/mozilla/geckoview/MediaElement$LoadProgressInfo;->loadedBytes:J

    iput-wide v0, p0, Lorg/mozilla/geckoview/MediaElement$LoadProgressInfo;->totalBytes:J

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/geckoview/MediaElement$LoadProgressInfo;->buffered:[Lorg/mozilla/geckoview/MediaElement$LoadProgressInfo$TimeRange;

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/gecko/util/GeckoBundle;)V
    .locals 10

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "loadedBytes"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Lorg/mozilla/gecko/util/GeckoBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lorg/mozilla/geckoview/MediaElement$LoadProgressInfo;->loadedBytes:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/mozilla/gecko/util/GeckoBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/mozilla/geckoview/MediaElement$LoadProgressInfo;->totalBytes:J

    const-string v0, "timeRangeStarts"

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    const-string v1, "timeRangeEnds"

    invoke-virtual {p1, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object p1

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    array-length v1, v0

    array-length v2, p1

    if-ne v1, v2, :cond_2

    array-length v1, v0

    new-array v1, v1, [Lorg/mozilla/geckoview/MediaElement$LoadProgressInfo$TimeRange;

    iput-object v1, p0, Lorg/mozilla/geckoview/MediaElement$LoadProgressInfo;->buffered:[Lorg/mozilla/geckoview/MediaElement$LoadProgressInfo$TimeRange;

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/mozilla/geckoview/MediaElement$LoadProgressInfo;->buffered:[Lorg/mozilla/geckoview/MediaElement$LoadProgressInfo$TimeRange;

    new-instance v9, Lorg/mozilla/geckoview/MediaElement$LoadProgressInfo$TimeRange;

    aget-wide v5, v0, v1

    aget-wide v7, p1, v1

    move-object v3, v9

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lorg/mozilla/geckoview/MediaElement$LoadProgressInfo$TimeRange;-><init>(Lorg/mozilla/geckoview/MediaElement$LoadProgressInfo;DD)V

    aput-object v9, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "timeRangeStarts and timeRangeEnds length do not match"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/mozilla/geckoview/MediaElement$LoadProgressInfo;->buffered:[Lorg/mozilla/geckoview/MediaElement$LoadProgressInfo$TimeRange;

    return-void
.end method
