.class final Lorg/mozilla/gecko/media/LollipopAsyncCodec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/gecko/media/AsyncCodec;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/gecko/media/LollipopAsyncCodec$CodecCallback;
    }
.end annotation


# instance fields
.field private final mCodec:Landroid/media/MediaCodec;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/gecko/media/LollipopAsyncCodec;->mCodec:Landroid/media/MediaCodec;

    return-void
.end method


# virtual methods
.method public configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/media/LollipopAsyncCodec;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    return-void
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/media/LollipopAsyncCodec;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    return-void
.end method

.method public getInputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/media/LollipopAsyncCodec;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public getOutputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/media/LollipopAsyncCodec;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public isAdaptivePlaybackSupported(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/media/LollipopAsyncCodec;->mCodec:Landroid/media/MediaCodec;

    invoke-static {v0, p1}, Lorg/mozilla/gecko/util/HardwareCodecCapabilityUtils;->checkSupportsAdaptivePlayback(Landroid/media/MediaCodec;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isTunneledPlaybackSupported(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/LollipopAsyncCodec;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object p1

    const-string v0, "tunneled-playback"

    invoke-virtual {p1, v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public queueInputBuffer(IIIJI)V
    .locals 9

    and-int/lit8 v0, p6, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "request-sync"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lorg/mozilla/gecko/media/LollipopAsyncCodec;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    :cond_0
    iget-object v2, p0, Lorg/mozilla/gecko/media/LollipopAsyncCodec;->mCodec:Landroid/media/MediaCodec;

    move v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    move v8, p6

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    return-void
.end method

.method public queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V
    .locals 7

    iget-object v0, p0, Lorg/mozilla/gecko/media/LollipopAsyncCodec;->mCodec:Landroid/media/MediaCodec;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/media/LollipopAsyncCodec;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    return-void
.end method

.method public releaseOutputBuffer(IZ)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/media/LollipopAsyncCodec;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return-void
.end method

.method public resumeReceivingInputs()V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/media/LollipopAsyncCodec;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    return-void
.end method

.method public setBitrate(I)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "video-bitrate"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lorg/mozilla/gecko/media/LollipopAsyncCodec;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {p1, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    return-void
.end method

.method public setCallbacks(Lorg/mozilla/gecko/media/AsyncCodec$Callbacks;Landroid/os/Handler;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/LollipopAsyncCodec;->mCodec:Landroid/media/MediaCodec;

    new-instance v1, Lorg/mozilla/gecko/media/LollipopAsyncCodec$CodecCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lorg/mozilla/gecko/media/LollipopAsyncCodec$CodecCallback;-><init>(Lorg/mozilla/gecko/media/LollipopAsyncCodec;Lorg/mozilla/gecko/media/AsyncCodec$Callbacks;Landroid/os/Handler;Lorg/mozilla/gecko/media/LollipopAsyncCodec$1;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;)V

    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/media/LollipopAsyncCodec;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/media/LollipopAsyncCodec;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    return-void
.end method
