.class public final Lorg/mozilla/gecko/util/HardwareCodecCapabilityUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final COLOR_QCOM_FORMATYUV420PackedSemiPlanar32m:I = 0x7fa30c04

.field private static final H264_MIME_TYPE:Ljava/lang/String; = "video/avc"

.field private static final LOGTAG:Ljava/lang/String; = "HardwareCodecCapability"

.field private static final VP8_MIME_TYPE:Ljava/lang/String; = "video/x-vnd.on2.vp8"

.field private static final VP9_MIME_TYPE:Ljava/lang/String; = "video/x-vnd.on2.vp9"

.field private static final adaptivePlaybackBlacklist:[Ljava/lang/String;

.field private static final supportedColorList:[I

.field private static final supportedH264HwCodecPrefixes:[Ljava/lang/String;

.field private static final supportedVp8HwDecCodecPrefixes:[Ljava/lang/String;

.field private static final supportedVp8HwEncCodecPrefixes:[Ljava/lang/String;

.field private static final supportedVp9HwCodecPrefixes:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    const-string v0, "OMX.qcom."

    const-string v1, "OMX.Intel."

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/mozilla/gecko/util/HardwareCodecCapabilityUtils;->supportedVp8HwEncCodecPrefixes:[Ljava/lang/String;

    const-string v2, "OMX.Nvidia."

    const-string v3, "OMX.Exynos."

    filled-new-array {v0, v2, v3, v1}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/mozilla/gecko/util/HardwareCodecCapabilityUtils;->supportedVp8HwDecCodecPrefixes:[Ljava/lang/String;

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/gecko/util/HardwareCodecCapabilityUtils;->supportedVp9HwCodecPrefixes:[Ljava/lang/String;

    const-string v1, "OMX.qcom."

    const-string v2, "OMX.Intel."

    const-string v3, "OMX.Exynos."

    const-string v4, "OMX.Nvidia"

    const-string v5, "OMX.SEC."

    const-string v6, "OMX.IMG."

    const-string v7, "OMX.k3."

    const-string v8, "OMX.hisi."

    const-string v9, "OMX.TI."

    const-string v10, "OMX.MTK."

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/gecko/util/HardwareCodecCapabilityUtils;->supportedH264HwCodecPrefixes:[Ljava/lang/String;

    const v0, 0x7fa30c00

    const v1, 0x7fa30c04

    const/16 v2, 0x13

    const/16 v3, 0x15

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lorg/mozilla/gecko/util/HardwareCodecCapabilityUtils;->supportedColorList:[I

    const-string v1, "GT-I9300"

    const-string v2, "SCH-I535"

    const-string v3, "SGH-T999"

    const-string v4, "SAMSUNG-SGH-T999"

    const-string v5, "SGH-M919"

    const-string v6, "GT-I9505"

    const-string v7, "GT-I9515"

    const-string v8, "SCH-R970"

    const-string v9, "SGH-I337"

    const-string v10, "SPH-L720"

    const-string v11, "SAMSUNG-SGH-I337"

    const-string v12, "GT-I9195"

    const-string v13, "300E5EV/300E4EV/270E5EV/270E4EV/2470EV/2470EE"

    const-string v14, "LG-D605"

    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/gecko/util/HardwareCodecCapabilityUtils;->adaptivePlaybackBlacklist:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkSupportsAdaptivePlayback(Landroid/media/MediaCodec;Ljava/lang/String;)Z
    .locals 2
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    invoke-static {p1}, Lorg/mozilla/gecko/util/HardwareCodecCapabilityUtils;->isAdaptivePlaybackBlacklisted(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string p1, "adaptive-playback"

    invoke-virtual {p0, p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :catch_0
    :cond_1
    return v1
.end method

.method public static findDecoderCodecInfoForMimeType(Ljava/lang/String;)Z
    .locals 7
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-static {v2}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v5, v0

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :cond_3
    return v0
.end method

.method public static getHWCodecCapability(Ljava/lang/String;Z)Z
    .locals 12

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v2

    if-ge v1, v2, :cond_c

    invoke-static {v1}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v3

    if-eq v3, p1, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v5, v0

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-nez v3, :cond_3

    goto :goto_8

    :cond_3
    invoke-static {p0, p1}, Lorg/mozilla/gecko/util/HardwareCodecCapabilityUtils;->getSupportedHWCodecPrefixes(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_8

    :cond_4
    array-length v5, v4

    move v6, v0

    :goto_3
    const/4 v7, 0x1

    if-ge v6, v5, :cond_6

    aget-object v8, v4, v6

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v3, v7

    goto :goto_4

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_6
    move v3, v0

    :goto_4
    if-nez v3, :cond_7

    goto :goto_8

    :cond_7
    invoke-virtual {v2, p0}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v2

    iget-object v3, v2, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v4, v3

    move v5, v0

    :goto_5
    if-ge v5, v4, :cond_8

    aget v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_8
    sget-object v3, Lorg/mozilla/gecko/util/HardwareCodecCapabilityUtils;->supportedColorList:[I

    array-length v4, v3

    move v5, v0

    :goto_6
    if-ge v5, v4, :cond_b

    aget v6, v3, v5

    iget-object v8, v2, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v9, v8

    move v10, v0

    :goto_7
    if-ge v10, v9, :cond_a

    aget v11, v8, v10

    if-ne v11, v6, :cond_9

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    return v7

    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_b
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_c
    return v0
.end method

.method private static getSupportedHWCodecPrefixes(Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 1

    const-string v0, "video/avc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lorg/mozilla/gecko/util/HardwareCodecCapabilityUtils;->supportedH264HwCodecPrefixes:[Ljava/lang/String;

    return-object p0

    :cond_0
    const-string v0, "video/x-vnd.on2.vp9"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lorg/mozilla/gecko/util/HardwareCodecCapabilityUtils;->supportedVp9HwCodecPrefixes:[Ljava/lang/String;

    return-object p0

    :cond_1
    const-string v0, "video/x-vnd.on2.vp8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    if-eqz p1, :cond_2

    sget-object p0, Lorg/mozilla/gecko/util/HardwareCodecCapabilityUtils;->supportedVp8HwEncCodecPrefixes:[Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-object p0, Lorg/mozilla/gecko/util/HardwareCodecCapabilityUtils;->supportedVp8HwDecCodecPrefixes:[Ljava/lang/String;

    :goto_0
    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static hasHWH264()Z
    .locals 4
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    const-string v0, "video/avc"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/mozilla/gecko/util/HardwareCodecCapabilityUtils;->getHWCodecCapability(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-static {v0, v3}, Lorg/mozilla/gecko/util/HardwareCodecCapabilityUtils;->getHWCodecCapability(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    return v1
.end method

.method public static hasHWVP8(Z)Z
    .locals 1

    const-string v0, "video/x-vnd.on2.vp8"

    invoke-static {v0, p0}, Lorg/mozilla/gecko/util/HardwareCodecCapabilityUtils;->getHWCodecCapability(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static hasHWVP9(Z)Z
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    const-string v0, "video/x-vnd.on2.vp9"

    invoke-static {v0, p0}, Lorg/mozilla/gecko/util/HardwareCodecCapabilityUtils;->getHWCodecCapability(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static isAdaptivePlaybackBlacklisted(Ljava/lang/String;)Z
    .locals 5

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, "video/avc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "video/avc1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    return v1

    :cond_0
    sget-object p0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "samsung"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    sget-object p0, Lorg/mozilla/gecko/util/HardwareCodecCapabilityUtils;->adaptivePlaybackBlacklist:[Ljava/lang/String;

    array-length v0, p0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p0, v2

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method
