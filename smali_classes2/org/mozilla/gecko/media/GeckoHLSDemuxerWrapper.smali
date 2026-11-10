.class public final Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper$Callbacks;,
        Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper$TrackType;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOGTAG:Ljava/lang/String; = "GeckoHLSDemuxerWrapper"


# instance fields
.field private mPlayer:Lorg/mozilla/gecko/media/BaseHlsPlayer;


# direct methods
.method public constructor <init>(ILorg/mozilla/gecko/media/BaseHlsPlayer$DemuxerCallbacks;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper;->mPlayer:Lorg/mozilla/gecko/media/BaseHlsPlayer;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper;->assertTrue(Z)V

    :try_start_0
    invoke-static {p1}, Lorg/mozilla/gecko/media/GeckoPlayerFactory;->getPlayer(I)Lorg/mozilla/gecko/media/BaseHlsPlayer;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper;->mPlayer:Lorg/mozilla/gecko/media/BaseHlsPlayer;

    if-eqz p1, :cond_1

    invoke-interface {p1, p2}, Lorg/mozilla/gecko/media/BaseHlsPlayer;->addDemuxerWrapperCallbackListener(Lorg/mozilla/gecko/media/BaseHlsPlayer$DemuxerCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sget-object p1, Lorg/mozilla/gecko/media/BaseHlsPlayer$DemuxerError;->UNKNOWN:Lorg/mozilla/gecko/media/BaseHlsPlayer$DemuxerError;

    invoke-virtual {p1}, Lorg/mozilla/gecko/media/BaseHlsPlayer$DemuxerError;->code()I

    move-result p1

    invoke-interface {p2, p1}, Lorg/mozilla/gecko/media/BaseHlsPlayer$DemuxerCallbacks;->onError(I)V

    :cond_1
    :goto_1
    return-void
.end method

.method private static assertTrue(Z)V
    .locals 0

    return-void
.end method

.method public static create(ILorg/mozilla/gecko/media/BaseHlsPlayer$DemuxerCallbacks;)Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper;
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    new-instance v0, Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper;

    invoke-direct {v0, p0, p1}, Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper;-><init>(ILorg/mozilla/gecko/media/BaseHlsPlayer$DemuxerCallbacks;)V

    return-object v0
.end method

.method private destroy()V
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper;->mPlayer:Lorg/mozilla/gecko/media/BaseHlsPlayer;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper;->release()V

    :cond_0
    return-void
.end method

.method private getNextKeyFrameTime()J
    .locals 2
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper;->mPlayer:Lorg/mozilla/gecko/media/BaseHlsPlayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper;->assertTrue(Z)V

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper;->mPlayer:Lorg/mozilla/gecko/media/BaseHlsPlayer;

    invoke-interface {v0}, Lorg/mozilla/gecko/media/BaseHlsPlayer;->getNextKeyFrameTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private getPlayerTrackType(I)Lorg/mozilla/gecko/media/BaseHlsPlayer$TrackType;
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper$TrackType;->AUDIO:Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper$TrackType;

    invoke-virtual {v0}, Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper$TrackType;->value()I

    move-result v0

    if-ne p1, v0, :cond_0

    sget-object p1, Lorg/mozilla/gecko/media/BaseHlsPlayer$TrackType;->AUDIO:Lorg/mozilla/gecko/media/BaseHlsPlayer$TrackType;

    return-object p1

    :cond_0
    sget-object v0, Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper$TrackType;->VIDEO:Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper$TrackType;

    invoke-virtual {v0}, Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper$TrackType;->value()I

    move-result v0

    if-ne p1, v0, :cond_1

    sget-object p1, Lorg/mozilla/gecko/media/BaseHlsPlayer$TrackType;->VIDEO:Lorg/mozilla/gecko/media/BaseHlsPlayer$TrackType;

    return-object p1

    :cond_1
    sget-object v0, Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper$TrackType;->TEXT:Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper$TrackType;

    invoke-virtual {v0}, Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper$TrackType;->value()I

    move-result v0

    if-ne p1, v0, :cond_2

    sget-object p1, Lorg/mozilla/gecko/media/BaseHlsPlayer$TrackType;->TEXT:Lorg/mozilla/gecko/media/BaseHlsPlayer$TrackType;

    return-object p1

    :cond_2
    sget-object p1, Lorg/mozilla/gecko/media/BaseHlsPlayer$TrackType;->UNDEFINED:Lorg/mozilla/gecko/media/BaseHlsPlayer$TrackType;

    return-object p1
.end method

.method private getSamples(II)[Lorg/mozilla/gecko/media/GeckoHLSSample;
    .locals 3
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper;->mPlayer:Lorg/mozilla/gecko/media/BaseHlsPlayer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper;->assertTrue(Z)V

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper;->mPlayer:Lorg/mozilla/gecko/media/BaseHlsPlayer;

    invoke-direct {p0, p1}, Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper;->getPlayerTrackType(I)Lorg/mozilla/gecko/media/BaseHlsPlayer$TrackType;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lorg/mozilla/gecko/media/BaseHlsPlayer;->getSamples(Lorg/mozilla/gecko/media/BaseHlsPlayer$TrackType;I)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    if-gt v0, p2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-static {v1}, Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper;->assertTrue(Z)V

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result p2

    new-array p2, p2, [Lorg/mozilla/gecko/media/GeckoHLSSample;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/mozilla/gecko/media/GeckoHLSSample;

    return-object p1
.end method

.method private isLiveStream()Z
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper;->mPlayer:Lorg/mozilla/gecko/media/BaseHlsPlayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper;->assertTrue(Z)V

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper;->mPlayer:Lorg/mozilla/gecko/media/BaseHlsPlayer;

    invoke-interface {v0}, Lorg/mozilla/gecko/media/BaseHlsPlayer;->isLiveStream()Z

    move-result v0

    return v0
.end method

.method private release()V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper;->mPlayer:Lorg/mozilla/gecko/media/BaseHlsPlayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper;->assertTrue(Z)V

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper;->mPlayer:Lorg/mozilla/gecko/media/BaseHlsPlayer;

    invoke-static {v0}, Lorg/mozilla/gecko/media/GeckoPlayerFactory;->removePlayer(Lorg/mozilla/gecko/media/BaseHlsPlayer;)V

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper;->mPlayer:Lorg/mozilla/gecko/media/BaseHlsPlayer;

    invoke-interface {v0}, Lorg/mozilla/gecko/media/BaseHlsPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper;->mPlayer:Lorg/mozilla/gecko/media/BaseHlsPlayer;

    return-void
.end method


# virtual methods
.method public getAudioInfo(I)Lorg/mozilla/gecko/media/GeckoAudioInfo;
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper;->mPlayer:Lorg/mozilla/gecko/media/BaseHlsPlayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper;->assertTrue(Z)V

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper;->mPlayer:Lorg/mozilla/gecko/media/BaseHlsPlayer;

    invoke-interface {v0, p1}, Lorg/mozilla/gecko/media/BaseHlsPlayer;->getAudioInfo(I)Lorg/mozilla/gecko/media/GeckoAudioInfo;

    move-result-object p1

    return-object p1
.end method

.method public getBuffered()J
    .locals 2
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper;->mPlayer:Lorg/mozilla/gecko/media/BaseHlsPlayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper;->assertTrue(Z)V

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper;->mPlayer:Lorg/mozilla/gecko/media/BaseHlsPlayer;

    invoke-interface {v0}, Lorg/mozilla/gecko/media/BaseHlsPlayer;->getBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNumberOfTracks(I)I
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper;->mPlayer:Lorg/mozilla/gecko/media/BaseHlsPlayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper;->assertTrue(Z)V

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper;->mPlayer:Lorg/mozilla/gecko/media/BaseHlsPlayer;

    invoke-direct {p0, p1}, Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper;->getPlayerTrackType(I)Lorg/mozilla/gecko/media/BaseHlsPlayer$TrackType;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/mozilla/gecko/media/BaseHlsPlayer;->getNumberOfTracks(Lorg/mozilla/gecko/media/BaseHlsPlayer$TrackType;)I

    move-result p1

    return p1
.end method

.method public getVideoInfo(I)Lorg/mozilla/gecko/media/GeckoVideoInfo;
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper;->mPlayer:Lorg/mozilla/gecko/media/BaseHlsPlayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper;->assertTrue(Z)V

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper;->mPlayer:Lorg/mozilla/gecko/media/BaseHlsPlayer;

    invoke-interface {v0, p1}, Lorg/mozilla/gecko/media/BaseHlsPlayer;->getVideoInfo(I)Lorg/mozilla/gecko/media/GeckoVideoInfo;

    move-result-object p1

    return-object p1
.end method

.method public seek(J)Z
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper;->mPlayer:Lorg/mozilla/gecko/media/BaseHlsPlayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper;->assertTrue(Z)V

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper;->mPlayer:Lorg/mozilla/gecko/media/BaseHlsPlayer;

    invoke-interface {v0, p1, p2}, Lorg/mozilla/gecko/media/BaseHlsPlayer;->seek(J)Z

    move-result p1

    return p1
.end method
