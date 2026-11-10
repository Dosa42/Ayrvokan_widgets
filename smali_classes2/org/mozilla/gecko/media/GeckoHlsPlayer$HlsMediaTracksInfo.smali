.class Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/media/GeckoHlsPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HlsMediaTracksInfo"
.end annotation


# instance fields
.field private mAudioDataArrived:Z

.field private mAudioInfoUpdated:Z

.field private mNumAudioTracks:I

.field private mNumVideoTracks:I

.field private mVideoDataArrived:Z

.field private mVideoInfoUpdated:Z

.field final synthetic this$0:Lorg/mozilla/gecko/media/GeckoHlsPlayer;


# direct methods
.method public constructor <init>(Lorg/mozilla/gecko/media/GeckoHlsPlayer;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;->this$0:Lorg/mozilla/gecko/media/GeckoHlsPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;->mNumVideoTracks:I

    iput p1, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;->mNumAudioTracks:I

    iput-boolean p1, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;->mVideoInfoUpdated:Z

    iput-boolean p1, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;->mAudioInfoUpdated:Z

    iput-boolean p1, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;->mVideoDataArrived:Z

    iput-boolean p1, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;->mAudioDataArrived:Z

    return-void
.end method


# virtual methods
.method public audioReady()Z
    .locals 1

    invoke-virtual {p0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;->hasAudio()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;->mAudioInfoUpdated:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;->mAudioDataArrived:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public getNumOfAudioTracks()I
    .locals 1

    iget v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;->mNumAudioTracks:I

    return v0
.end method

.method public getNumOfVideoTracks()I
    .locals 1

    iget v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;->mNumVideoTracks:I

    return v0
.end method

.method public hasAudio()Z
    .locals 1

    iget v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;->mNumAudioTracks:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasVideo()Z
    .locals 1

    iget v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;->mNumVideoTracks:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAudioInfoUpdated()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;->mAudioInfoUpdated:Z

    return-void
.end method

.method public onDataArrived(I)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    iput-boolean v1, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;->mVideoDataArrived:Z

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    iput-boolean v1, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;->mAudioDataArrived:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onVideoInfoUpdated()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;->mVideoInfoUpdated:Z

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;->mNumVideoTracks:I

    iput v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;->mNumAudioTracks:I

    iput-boolean v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;->mVideoInfoUpdated:Z

    iput-boolean v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;->mAudioInfoUpdated:Z

    iput-boolean v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;->mVideoDataArrived:Z

    iput-boolean v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;->mAudioDataArrived:Z

    return-void
.end method

.method public updateNumOfAudioTracks(I)V
    .locals 0

    iput p1, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;->mNumAudioTracks:I

    return-void
.end method

.method public updateNumOfVideoTracks(I)V
    .locals 0

    iput p1, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;->mNumVideoTracks:I

    return-void
.end method

.method public videoReady()Z
    .locals 1

    invoke-virtual {p0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;->hasVideo()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;->mVideoInfoUpdated:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;->mVideoDataArrived:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
