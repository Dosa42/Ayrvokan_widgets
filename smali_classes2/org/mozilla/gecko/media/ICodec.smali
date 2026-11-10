.class public interface abstract Lorg/mozilla/gecko/media/ICodec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/gecko/media/ICodec$Stub;,
        Lorg/mozilla/gecko/media/ICodec$Default;
    }
.end annotation


# virtual methods
.method public abstract configure(Lorg/mozilla/gecko/media/FormatParam;Lorg/mozilla/gecko/gfx/GeckoSurface;ILjava/lang/String;)Z
.end method

.method public abstract dequeueInput(I)Lorg/mozilla/gecko/media/Sample;
.end method

.method public abstract flush()V
.end method

.method public abstract getInputBuffer(I)Lorg/mozilla/gecko/media/SampleBuffer;
.end method

.method public abstract getOutputBuffer(I)Lorg/mozilla/gecko/media/SampleBuffer;
.end method

.method public abstract isAdaptivePlaybackSupported()Z
.end method

.method public abstract isHardwareAccelerated()Z
.end method

.method public abstract isTunneledPlaybackSupported()Z
.end method

.method public abstract queueInput(Lorg/mozilla/gecko/media/Sample;)V
.end method

.method public abstract release()V
.end method

.method public abstract releaseOutput(Lorg/mozilla/gecko/media/Sample;Z)V
.end method

.method public abstract setBitrate(I)V
.end method

.method public abstract setCallbacks(Lorg/mozilla/gecko/media/ICodecCallbacks;)V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
