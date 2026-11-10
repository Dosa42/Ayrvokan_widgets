.class public Lorg/mozilla/geckoview/GeckoSession$MediaDelegate$RecordingDevice;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/GeckoSession$MediaDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecordingDevice"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/geckoview/GeckoSession$MediaDelegate$RecordingDevice$Type;,
        Lorg/mozilla/geckoview/GeckoSession$MediaDelegate$RecordingDevice$Status;
    }
.end annotation


# instance fields
.field public final status:J

.field public final type:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lorg/mozilla/geckoview/GeckoSession$MediaDelegate$RecordingDevice;->status:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/mozilla/geckoview/GeckoSession$MediaDelegate$RecordingDevice;->type:J

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/gecko/util/GeckoBundle;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "status"

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/geckoview/GeckoSession$MediaDelegate$RecordingDevice;->getStatusFromString(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/mozilla/geckoview/GeckoSession$MediaDelegate$RecordingDevice;->status:J

    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/mozilla/geckoview/GeckoSession$MediaDelegate$RecordingDevice;->getTypeFromString(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/mozilla/geckoview/GeckoSession$MediaDelegate$RecordingDevice;->type:J

    return-void
.end method

.method private static getStatusFromString(Ljava/lang/String;)J
    .locals 2

    const-string v0, "recording"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method private static getTypeFromString(Ljava/lang/String;)J
    .locals 3

    .line 1
    const-string v0, "microphone"

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-wide/16 v0, 0x1

    .line 10
    .line 11
    return-wide v0

    .line 12
    :cond_0
    const-string v0, "camera"

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const-wide/16 v0, 0x0

    .line 21
    .line 22
    return-wide v0

    .line 23
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    const-string v1, "String: "

    .line 26
    .line 27
    const-string v2, " is not a valid recording device string"

    .line 28
    .line 29
    invoke-static {v1, p0, v2}, La1/b;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v0
.end method
