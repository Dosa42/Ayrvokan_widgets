.class public final Lo2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Landroid/media/MediaCodecInfo$CodecCapabilities;

.field public final d:Z

.field public final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lo2/a;->a:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p2, p0, Lo2/a;->b:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p3, p0, Lo2/a;->c:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    if-nez p4, :cond_1

    .line 15
    .line 16
    if-eqz p3, :cond_1

    .line 17
    .line 18
    sget p4, Lb3/n;->a:I

    .line 19
    .line 20
    const/16 v0, 0x13

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    if-lt p4, v0, :cond_0

    .line 24
    .line 25
    const-string p4, "adaptive-playback"

    .line 26
    .line 27
    invoke-virtual {p3, p4}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result p4

    .line 31
    if-eqz p4, :cond_0

    .line 32
    .line 33
    move p4, v1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move p4, p1

    .line 36
    :goto_0
    if-eqz p4, :cond_1

    .line 37
    .line 38
    move p1, v1

    .line 39
    :cond_1
    iput-boolean p1, p0, Lo2/a;->d:Z

    .line 40
    .line 41
    const/16 p1, 0x15

    .line 42
    .line 43
    if-eqz p3, :cond_2

    .line 44
    .line 45
    sget p4, Lb3/n;->a:I

    .line 46
    .line 47
    if-lt p4, p1, :cond_2

    .line 48
    .line 49
    const-string p4, "tunneled-playback"

    .line 50
    .line 51
    invoke-virtual {p3, p4}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result p4

    .line 55
    :cond_2
    if-nez p5, :cond_3

    .line 56
    .line 57
    if-eqz p3, :cond_3

    .line 58
    .line 59
    sget p4, Lb3/n;->a:I

    .line 60
    .line 61
    if-lt p4, p1, :cond_3

    .line 62
    .line 63
    const-string p1, "secure-playback"

    .line 64
    .line 65
    invoke-virtual {p3, p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    :cond_3
    invoke-static {p2}, Lb3/c;->f(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    iput-boolean p1, p0, Lo2/a;->e:Z

    .line 73
    .line 74
    return-void
.end method

.method public static a(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getWidthAlignment()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getHeightAlignment()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    new-instance v2, Landroid/graphics/Point;

    .line 10
    .line 11
    sget v3, Lb3/n;->a:I

    .line 12
    .line 13
    add-int/2addr p1, v0

    .line 14
    add-int/lit8 p1, p1, -0x1

    .line 15
    .line 16
    div-int/2addr p1, v0

    .line 17
    mul-int/2addr p1, v0

    .line 18
    add-int/2addr p2, v1

    .line 19
    add-int/lit8 p2, p2, -0x1

    .line 20
    .line 21
    div-int/2addr p2, v1

    .line 22
    mul-int/2addr p2, v1

    .line 23
    invoke-direct {v2, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 24
    .line 25
    .line 26
    iget p1, v2, Landroid/graphics/Point;->x:I

    .line 27
    .line 28
    iget p2, v2, Landroid/graphics/Point;->y:I

    .line 29
    .line 30
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 31
    .line 32
    cmpl-double v0, p3, v0

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    const-wide/16 v0, 0x0

    .line 37
    .line 38
    cmpg-double v0, p3, v0

    .line 39
    .line 40
    if-gtz v0, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-static {p3, p4}, Ljava/lang/Math;->floor(D)D

    .line 44
    .line 45
    .line 46
    move-result-wide p3

    .line 47
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/media/MediaCodecInfo$VideoCapabilities;->areSizeAndRateSupported(IID)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    return p0

    .line 52
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    return p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Lo2/a;
    .locals 6

    .line 1
    new-instance p3, Lo2/a;

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lo2/a;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZ)V

    return-object p3
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lo2/a;->a:Ljava/lang/String;

    return-object v0
.end method
