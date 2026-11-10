.class public interface abstract Lorg/mozilla/gecko/media/BaseHlsPlayer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/gecko/media/BaseHlsPlayer$ResourceCallbacks;,
        Lorg/mozilla/gecko/media/BaseHlsPlayer$DemuxerCallbacks;,
        Lorg/mozilla/gecko/media/BaseHlsPlayer$DemuxerError;,
        Lorg/mozilla/gecko/media/BaseHlsPlayer$ResourceError;,
        Lorg/mozilla/gecko/media/BaseHlsPlayer$TrackType;
    }
.end annotation


# virtual methods
.method public abstract addDemuxerWrapperCallbackListener(Lorg/mozilla/gecko/media/BaseHlsPlayer$DemuxerCallbacks;)V
.end method

.method public abstract getAudioInfo(I)Lorg/mozilla/gecko/media/GeckoAudioInfo;
.end method

.method public abstract getBufferedPosition()J
.end method

.method public abstract getId()I
.end method

.method public abstract getNextKeyFrameTime()J
.end method

.method public abstract getNumberOfTracks(Lorg/mozilla/gecko/media/BaseHlsPlayer$TrackType;)I
.end method

.method public abstract getSamples(Lorg/mozilla/gecko/media/BaseHlsPlayer$TrackType;I)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/gecko/media/BaseHlsPlayer$TrackType;",
            "I)",
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lorg/mozilla/gecko/media/GeckoHLSSample;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVideoInfo(I)Lorg/mozilla/gecko/media/GeckoVideoInfo;
.end method

.method public abstract init(Ljava/lang/String;Lorg/mozilla/gecko/media/BaseHlsPlayer$ResourceCallbacks;)V
.end method

.method public abstract isLiveStream()Z
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract release()V
.end method

.method public abstract resume()V
.end method

.method public abstract seek(J)Z
.end method

.method public abstract suspend()V
.end method
