.class public Lorg/mozilla/geckoview/MediaElement$Metadata;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/MediaElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Metadata"
.end annotation


# instance fields
.field public final audioTrackCount:I

.field public final currentSource:Ljava/lang/String;

.field public final duration:D

.field public final height:J

.field public final isSeekable:Z

.field public final videoTrackCount:I

.field public final width:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lorg/mozilla/geckoview/MediaElement$Metadata;->currentSource:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/mozilla/geckoview/MediaElement$Metadata;->duration:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/mozilla/geckoview/MediaElement$Metadata;->width:J

    iput-wide v0, p0, Lorg/mozilla/geckoview/MediaElement$Metadata;->height:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/geckoview/MediaElement$Metadata;->isSeekable:Z

    iput v0, p0, Lorg/mozilla/geckoview/MediaElement$Metadata;->audioTrackCount:I

    iput v0, p0, Lorg/mozilla/geckoview/MediaElement$Metadata;->videoTrackCount:I

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/gecko/util/GeckoBundle;)V
    .locals 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "src"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/geckoview/MediaElement$Metadata;->currentSource:Ljava/lang/String;

    const-string v0, "duration"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/mozilla/gecko/util/GeckoBundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/mozilla/geckoview/MediaElement$Metadata;->duration:D

    const-string v0, "width"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/mozilla/gecko/util/GeckoBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lorg/mozilla/geckoview/MediaElement$Metadata;->width:J

    const-string v0, "height"

    invoke-virtual {p1, v0, v1, v2}, Lorg/mozilla/gecko/util/GeckoBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/mozilla/geckoview/MediaElement$Metadata;->height:J

    const-string v0, "seekable"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/mozilla/geckoview/MediaElement$Metadata;->isSeekable:Z

    const-string v0, "audioTrackCount"

    invoke-virtual {p1, v0, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/mozilla/geckoview/MediaElement$Metadata;->audioTrackCount:I

    const-string v0, "videoTrackCount"

    invoke-virtual {p1, v0, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/mozilla/geckoview/MediaElement$Metadata;->videoTrackCount:I

    return-void
.end method
