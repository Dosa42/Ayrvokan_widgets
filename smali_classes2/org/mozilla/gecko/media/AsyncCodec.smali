.class public interface abstract Lorg/mozilla/gecko/media/AsyncCodec;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/gecko/media/AsyncCodec$Callbacks;
    }
.end annotation


# virtual methods
.method public abstract configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
.end method

.method public abstract flush()V
.end method

.method public abstract getInputBuffer(I)Ljava/nio/ByteBuffer;
.end method

.method public abstract getOutputBuffer(I)Ljava/nio/ByteBuffer;
.end method

.method public abstract isAdaptivePlaybackSupported(Ljava/lang/String;)Z
.end method

.method public abstract isTunneledPlaybackSupported(Ljava/lang/String;)Z
.end method

.method public abstract queueInputBuffer(IIIJI)V
.end method

.method public abstract queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V
.end method

.method public abstract release()V
.end method

.method public abstract releaseOutputBuffer(IZ)V
.end method

.method public abstract resumeReceivingInputs()V
.end method

.method public abstract setBitrate(I)V
.end method

.method public abstract setCallbacks(Lorg/mozilla/gecko/media/AsyncCodec$Callbacks;Landroid/os/Handler;)V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
