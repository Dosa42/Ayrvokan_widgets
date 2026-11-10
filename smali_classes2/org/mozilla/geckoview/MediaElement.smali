.class public Lorg/mozilla/geckoview/MediaElement;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/geckoview/MediaElement$Delegate;,
        Lorg/mozilla/geckoview/MediaElement$LoadProgressInfo;,
        Lorg/mozilla/geckoview/MediaElement$Metadata;
    }
.end annotation


# static fields
.field public static final MEDIA_ERROR_ABORTED:I = 0x1

.field public static final MEDIA_ERROR_DECODE:I = 0x3

.field public static final MEDIA_ERROR_NETWORK:I = 0x2

.field public static final MEDIA_ERROR_NETWORK_NO_SOURCE:I = 0x0

.field public static final MEDIA_ERROR_SRC_NOT_SUPPORTED:I = 0x4

.field public static final MEDIA_READY_STATE_HAVE_CURRENT_DATA:I = 0x2

.field public static final MEDIA_READY_STATE_HAVE_ENOUGH_DATA:I = 0x4

.field public static final MEDIA_READY_STATE_HAVE_FUTURE_DATA:I = 0x3

.field public static final MEDIA_READY_STATE_HAVE_METADATA:I = 0x1

.field public static final MEDIA_READY_STATE_HAVE_NOTHING:I = 0x0

.field public static final MEDIA_STATE_ABORT:I = 0x9

.field public static final MEDIA_STATE_EMPTIED:I = 0xa

.field public static final MEDIA_STATE_ENDED:I = 0x3

.field public static final MEDIA_STATE_PAUSE:I = 0x2

.field public static final MEDIA_STATE_PLAY:I = 0x0

.field public static final MEDIA_STATE_PLAYING:I = 0x1

.field public static final MEDIA_STATE_SEEKED:I = 0x5

.field public static final MEDIA_STATE_SEEKING:I = 0x4

.field public static final MEDIA_STATE_STALLED:I = 0x6

.field public static final MEDIA_STATE_SUSPEND:I = 0x7

.field public static final MEDIA_STATE_WAITING:I = 0x8


# instance fields
.field protected mDelegate:Lorg/mozilla/geckoview/MediaElement$Delegate;

.field protected final mSession:Lorg/mozilla/geckoview/GeckoSession;

.field protected final mVideoId:J


# direct methods
.method public constructor <init>(JLorg/mozilla/geckoview/GeckoSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/mozilla/geckoview/MediaElement;->mVideoId:J

    iput-object p3, p0, Lorg/mozilla/geckoview/MediaElement;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    return-void
.end method

.method private createMessage()Lorg/mozilla/gecko/util/GeckoBundle;
    .locals 4

    new-instance v0, Lorg/mozilla/gecko/util/GeckoBundle;

    invoke-direct {v0}, Lorg/mozilla/gecko/util/GeckoBundle;-><init>()V

    const-string v1, "id"

    iget-wide v2, p0, Lorg/mozilla/geckoview/MediaElement;->mVideoId:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/mozilla/gecko/util/GeckoBundle;->putLong(Ljava/lang/String;J)V

    return-object v0
.end method


# virtual methods
.method public getDelegate()Lorg/mozilla/geckoview/MediaElement$Delegate;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/MediaElement;->mDelegate:Lorg/mozilla/geckoview/MediaElement$Delegate;

    return-object v0
.end method

.method public getVideoId()J
    .locals 2

    iget-wide v0, p0, Lorg/mozilla/geckoview/MediaElement;->mVideoId:J

    return-wide v0
.end method

.method public notifyError(I)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/MediaElement;->mDelegate:Lorg/mozilla/geckoview/MediaElement$Delegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lorg/mozilla/geckoview/MediaElement$Delegate;->onError(Lorg/mozilla/geckoview/MediaElement;I)V

    :cond_0
    return-void
.end method

.method public notifyFullscreenChange(Z)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/MediaElement;->mDelegate:Lorg/mozilla/geckoview/MediaElement$Delegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lorg/mozilla/geckoview/MediaElement$Delegate;->onFullscreenChange(Lorg/mozilla/geckoview/MediaElement;Z)V

    :cond_0
    return-void
.end method

.method public notifyLoadProgress(Lorg/mozilla/gecko/util/GeckoBundle;)V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/geckoview/MediaElement;->mDelegate:Lorg/mozilla/geckoview/MediaElement$Delegate;

    if-eqz v0, :cond_0

    new-instance v1, Lorg/mozilla/geckoview/MediaElement$LoadProgressInfo;

    invoke-direct {v1, p1}, Lorg/mozilla/geckoview/MediaElement$LoadProgressInfo;-><init>(Lorg/mozilla/gecko/util/GeckoBundle;)V

    invoke-interface {v0, p0, v1}, Lorg/mozilla/geckoview/MediaElement$Delegate;->onLoadProgress(Lorg/mozilla/geckoview/MediaElement;Lorg/mozilla/geckoview/MediaElement$LoadProgressInfo;)V

    :cond_0
    return-void
.end method

.method public notifyMetadataChange(Lorg/mozilla/gecko/util/GeckoBundle;)V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/geckoview/MediaElement;->mDelegate:Lorg/mozilla/geckoview/MediaElement$Delegate;

    if-eqz v0, :cond_0

    new-instance v1, Lorg/mozilla/geckoview/MediaElement$Metadata;

    invoke-direct {v1, p1}, Lorg/mozilla/geckoview/MediaElement$Metadata;-><init>(Lorg/mozilla/gecko/util/GeckoBundle;)V

    invoke-interface {v0, p0, v1}, Lorg/mozilla/geckoview/MediaElement$Delegate;->onMetadataChange(Lorg/mozilla/geckoview/MediaElement;Lorg/mozilla/geckoview/MediaElement$Metadata;)V

    :cond_0
    return-void
.end method

.method public notifyPlaybackRateChange(D)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/MediaElement;->mDelegate:Lorg/mozilla/geckoview/MediaElement$Delegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lorg/mozilla/geckoview/MediaElement$Delegate;->onPlaybackRateChange(Lorg/mozilla/geckoview/MediaElement;D)V

    :cond_0
    return-void
.end method

.method public notifyPlaybackStateChange(Ljava/lang/String;)V
    .locals 14

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xa

    const/16 v3, 0x9

    const/16 v4, 0x8

    const/4 v5, 0x7

    const/4 v6, 0x6

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "seeking"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    move v13, v2

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "waiting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    move v13, v3

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "pause"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    move v13, v4

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "ended"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    move v13, v5

    goto :goto_0

    :sswitch_4
    const-string v1, "abort"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move v13, v6

    goto :goto_0

    :sswitch_5
    const-string v1, "play"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    move v13, v7

    goto :goto_0

    :sswitch_6
    const-string v1, "playing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    move v13, v8

    goto :goto_0

    :sswitch_7
    const-string v1, "seeked"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    move v13, v9

    goto :goto_0

    :sswitch_8
    const-string v1, "emptied"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    move v13, v10

    goto :goto_0

    :sswitch_9
    const-string v1, "suspend"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    move v13, v11

    goto :goto_0

    :sswitch_a
    const-string v1, "stalled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    move v13, v12

    :goto_0
    packed-switch v13, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, " HTMLMediaElement event not implemented"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move v2, v8

    goto :goto_1

    :pswitch_1
    move v2, v4

    goto :goto_1

    :pswitch_2
    move v2, v10

    goto :goto_1

    :pswitch_3
    move v2, v9

    goto :goto_1

    :pswitch_4
    move v2, v3

    goto :goto_1

    :pswitch_5
    move v2, v12

    goto :goto_1

    :pswitch_6
    move v2, v11

    goto :goto_1

    :pswitch_7
    move v2, v7

    goto :goto_1

    :pswitch_8
    move v2, v5

    goto :goto_1

    :pswitch_9
    move v2, v6

    :goto_1
    :pswitch_a
    iget-object p1, p0, Lorg/mozilla/geckoview/MediaElement;->mDelegate:Lorg/mozilla/geckoview/MediaElement$Delegate;

    if-eqz p1, :cond_b

    invoke-interface {p1, p0, v2}, Lorg/mozilla/geckoview/MediaElement$Delegate;->onPlaybackStateChange(Lorg/mozilla/geckoview/MediaElement;I)V

    :cond_b
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x711797c1 -> :sswitch_a
        -0x6e635fc4 -> :sswitch_9
        -0x60c9c964 -> :sswitch_8
        -0x3603e2e9 -> :sswitch_7
        -0x1d6b2fd2 -> :sswitch_6
        0x348b34 -> :sswitch_5
        0x5852330 -> :sswitch_4
        0x5c2caba -> :sswitch_3
        0x65825f6 -> :sswitch_2
        0x4289964d -> :sswitch_1
        0x7587966a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public notifyReadyStateChange(I)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/MediaElement;->mDelegate:Lorg/mozilla/geckoview/MediaElement$Delegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lorg/mozilla/geckoview/MediaElement$Delegate;->onReadyStateChange(Lorg/mozilla/geckoview/MediaElement;I)V

    :cond_0
    return-void
.end method

.method public notifyTimeChange(D)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/MediaElement;->mDelegate:Lorg/mozilla/geckoview/MediaElement$Delegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2}, Lorg/mozilla/geckoview/MediaElement$Delegate;->onTimeChange(Lorg/mozilla/geckoview/MediaElement;D)V

    :cond_0
    return-void
.end method

.method public notifyVolumeChange(DZ)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/MediaElement;->mDelegate:Lorg/mozilla/geckoview/MediaElement$Delegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2, p3}, Lorg/mozilla/geckoview/MediaElement$Delegate;->onVolumeChange(Lorg/mozilla/geckoview/MediaElement;DZ)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 3

    iget-object v0, p0, Lorg/mozilla/geckoview/MediaElement;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->getEventDispatcher()Lorg/mozilla/gecko/EventDispatcher;

    move-result-object v0

    const-string v1, "GeckoView:MediaPause"

    invoke-direct {p0}, Lorg/mozilla/geckoview/MediaElement;->createMessage()Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/gecko/EventDispatcher;->dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;)V

    return-void
.end method

.method public play()V
    .locals 3

    iget-object v0, p0, Lorg/mozilla/geckoview/MediaElement;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->getEventDispatcher()Lorg/mozilla/gecko/EventDispatcher;

    move-result-object v0

    const-string v1, "GeckoView:MediaPlay"

    invoke-direct {p0}, Lorg/mozilla/geckoview/MediaElement;->createMessage()Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/gecko/EventDispatcher;->dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;)V

    return-void
.end method

.method public seek(D)V
    .locals 2

    invoke-direct {p0}, Lorg/mozilla/geckoview/MediaElement;->createMessage()Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object v0

    const-string v1, "time"

    invoke-virtual {v0, v1, p1, p2}, Lorg/mozilla/gecko/util/GeckoBundle;->putDouble(Ljava/lang/String;D)V

    iget-object p1, p0, Lorg/mozilla/geckoview/MediaElement;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {p1}, Lorg/mozilla/geckoview/GeckoSession;->getEventDispatcher()Lorg/mozilla/gecko/EventDispatcher;

    move-result-object p1

    const-string p2, "GeckoView:MediaSeek"

    invoke-virtual {p1, p2, v0}, Lorg/mozilla/gecko/EventDispatcher;->dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;)V

    return-void
.end method

.method public setDelegate(Lorg/mozilla/geckoview/MediaElement$Delegate;)V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/geckoview/MediaElement;->mDelegate:Lorg/mozilla/geckoview/MediaElement$Delegate;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lorg/mozilla/geckoview/MediaElement;->mDelegate:Lorg/mozilla/geckoview/MediaElement$Delegate;

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/mozilla/geckoview/MediaElement;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {p1}, Lorg/mozilla/geckoview/GeckoSession;->getEventDispatcher()Lorg/mozilla/gecko/EventDispatcher;

    move-result-object p1

    const-string v0, "GeckoView:MediaUnobserve"

    invoke-direct {p0}, Lorg/mozilla/geckoview/MediaElement;->createMessage()Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/mozilla/gecko/EventDispatcher;->dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;)V

    iget-object p1, p0, Lorg/mozilla/geckoview/MediaElement;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {p1}, Lorg/mozilla/geckoview/GeckoSession;->getMediaElements()Landroid/util/LongSparseArray;

    move-result-object p1

    iget-wide v0, p0, Lorg/mozilla/geckoview/MediaElement;->mVideoId:J

    invoke-virtual {p1, v0, v1}, Landroid/util/LongSparseArray;->remove(J)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    iget-object p1, p0, Lorg/mozilla/geckoview/MediaElement;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {p1}, Lorg/mozilla/geckoview/GeckoSession;->getMediaElements()Landroid/util/LongSparseArray;

    move-result-object p1

    iget-wide v0, p0, Lorg/mozilla/geckoview/MediaElement;->mVideoId:J

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    iget-object p1, p0, Lorg/mozilla/geckoview/MediaElement;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {p1}, Lorg/mozilla/geckoview/GeckoSession;->getEventDispatcher()Lorg/mozilla/gecko/EventDispatcher;

    move-result-object p1

    const-string v0, "GeckoView:MediaObserve"

    invoke-direct {p0}, Lorg/mozilla/geckoview/MediaElement;->createMessage()Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/mozilla/gecko/EventDispatcher;->dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setMuted(Z)V
    .locals 2

    invoke-direct {p0}, Lorg/mozilla/geckoview/MediaElement;->createMessage()Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object v0

    const-string v1, "muted"

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Lorg/mozilla/geckoview/MediaElement;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {p1}, Lorg/mozilla/geckoview/GeckoSession;->getEventDispatcher()Lorg/mozilla/gecko/EventDispatcher;

    move-result-object p1

    const-string v1, "GeckoView:MediaSetMuted"

    invoke-virtual {p1, v1, v0}, Lorg/mozilla/gecko/EventDispatcher;->dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;)V

    return-void
.end method

.method public setPlaybackRate(D)V
    .locals 2

    invoke-direct {p0}, Lorg/mozilla/geckoview/MediaElement;->createMessage()Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object v0

    const-string v1, "playbackRate"

    invoke-virtual {v0, v1, p1, p2}, Lorg/mozilla/gecko/util/GeckoBundle;->putDouble(Ljava/lang/String;D)V

    iget-object p1, p0, Lorg/mozilla/geckoview/MediaElement;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {p1}, Lorg/mozilla/geckoview/GeckoSession;->getEventDispatcher()Lorg/mozilla/gecko/EventDispatcher;

    move-result-object p1

    const-string p2, "GeckoView:MediaSetPlaybackRate"

    invoke-virtual {p1, p2, v0}, Lorg/mozilla/gecko/EventDispatcher;->dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;)V

    return-void
.end method

.method public setVolume(D)V
    .locals 2

    invoke-direct {p0}, Lorg/mozilla/geckoview/MediaElement;->createMessage()Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object v0

    const-string v1, "volume"

    invoke-virtual {v0, v1, p1, p2}, Lorg/mozilla/gecko/util/GeckoBundle;->putDouble(Ljava/lang/String;D)V

    iget-object p1, p0, Lorg/mozilla/geckoview/MediaElement;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {p1}, Lorg/mozilla/geckoview/GeckoSession;->getEventDispatcher()Lorg/mozilla/gecko/EventDispatcher;

    move-result-object p1

    const-string p2, "GeckoView:MediaSetVolume"

    invoke-virtual {p1, p2, v0}, Lorg/mozilla/gecko/EventDispatcher;->dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;)V

    return-void
.end method
