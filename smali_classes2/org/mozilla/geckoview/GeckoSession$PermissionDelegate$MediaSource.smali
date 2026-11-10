.class public Lorg/mozilla/geckoview/GeckoSession$PermissionDelegate$MediaSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/GeckoSession$PermissionDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaSource"
.end annotation


# static fields
.field public static final SOURCE_AUDIOCAPTURE:I = 0x3

.field public static final SOURCE_CAMERA:I = 0x0

.field public static final SOURCE_MICROPHONE:I = 0x2

.field public static final SOURCE_OTHER:I = 0x4

.field public static final SOURCE_SCREEN:I = 0x1

.field public static final TYPE_AUDIO:I = 0x1

.field public static final TYPE_VIDEO:I


# instance fields
.field public final id:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final rawId:Ljava/lang/String;

.field public final source:I

.field public final type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$PermissionDelegate$MediaSource;->id:Ljava/lang/String;

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$PermissionDelegate$MediaSource;->rawId:Ljava/lang/String;

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$PermissionDelegate$MediaSource;->name:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/geckoview/GeckoSession$PermissionDelegate$MediaSource;->source:I

    iput v0, p0, Lorg/mozilla/geckoview/GeckoSession$PermissionDelegate$MediaSource;->type:I

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/gecko/util/GeckoBundle;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$PermissionDelegate$MediaSource;->id:Ljava/lang/String;

    const-string v0, "rawId"

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$PermissionDelegate$MediaSource;->rawId:Ljava/lang/String;

    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$PermissionDelegate$MediaSource;->name:Ljava/lang/String;

    const-string v0, "mediaSource"

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/geckoview/GeckoSession$PermissionDelegate$MediaSource;->getSourceFromString(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/mozilla/geckoview/GeckoSession$PermissionDelegate$MediaSource;->source:I

    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/mozilla/geckoview/GeckoSession$PermissionDelegate$MediaSource;->getTypeFromString(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/mozilla/geckoview/GeckoSession$PermissionDelegate$MediaSource;->type:I

    return-void
.end method

.method private static getSourceFromString(Ljava/lang/String;)I
    .locals 3

    .line 1
    const-string v0, "camera"

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
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_0
    const-string v0, "screen"

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_6

    .line 18
    .line 19
    const-string v0, "window"

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_6

    .line 26
    .line 27
    const-string v0, "browser"

    .line 28
    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const-string v0, "microphone"

    .line 37
    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    const/4 p0, 0x2

    .line 45
    return p0

    .line 46
    :cond_2
    const-string v0, "audioCapture"

    .line 47
    .line 48
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    const/4 p0, 0x3

    .line 55
    return p0

    .line 56
    :cond_3
    const-string v0, "other"

    .line 57
    .line 58
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_5

    .line 63
    .line 64
    const-string v0, "application"

    .line 65
    .line 66
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_4

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 74
    .line 75
    const-string v1, "String: "

    .line 76
    .line 77
    const-string v2, " is not a valid media source string"

    .line 78
    .line 79
    invoke-static {v1, p0, v2}, La1/b;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw v0

    .line 87
    :cond_5
    :goto_0
    const/4 p0, 0x4

    .line 88
    return p0

    .line 89
    :cond_6
    :goto_1
    const/4 p0, 0x1

    .line 90
    return p0
.end method

.method private static getTypeFromString(Ljava/lang/String;)I
    .locals 3

    .line 1
    const-string v0, "videoinput"

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
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_0
    const-string v0, "audioinput"

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    const/4 p0, 0x1

    .line 20
    return p0

    .line 21
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    const-string v1, "String: "

    .line 24
    .line 25
    const-string v2, " is not a valid media type string"

    .line 26
    .line 27
    invoke-static {v1, p0, v2}, La1/b;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v0
.end method
