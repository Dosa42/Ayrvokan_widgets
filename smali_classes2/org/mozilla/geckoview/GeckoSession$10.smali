.class Lorg/mozilla/geckoview/GeckoSession$10;
.super Lorg/mozilla/geckoview/GeckoSessionHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/GeckoSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/mozilla/geckoview/GeckoSessionHandler<",
        "Lorg/mozilla/geckoview/GeckoSession$MediaDelegate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/geckoview/GeckoSession;


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/GeckoSession;Ljava/lang/String;Lorg/mozilla/geckoview/GeckoSession;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoSession$10;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    invoke-direct {p0, p2, p3, p4}, Lorg/mozilla/geckoview/GeckoSessionHandler;-><init>(Ljava/lang/String;Lorg/mozilla/geckoview/GeckoSession;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic handleMessage(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/mozilla/geckoview/GeckoSession$MediaDelegate;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/mozilla/geckoview/GeckoSession$10;->handleMessage(Lorg/mozilla/geckoview/GeckoSession$MediaDelegate;Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V

    return-void
.end method

.method public handleMessage(Lorg/mozilla/geckoview/GeckoSession$MediaDelegate;Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V
    .locals 3

    const-string p4, "GeckoView:MediaAdd"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    const-string v0, "id"

    if-eqz p4, :cond_0

    new-instance p2, Lorg/mozilla/geckoview/MediaElement;

    invoke-virtual {p3, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getLong(Ljava/lang/String;)J

    move-result-wide p3

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$10;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    invoke-direct {p2, p3, p4, v0}, Lorg/mozilla/geckoview/MediaElement;-><init>(JLorg/mozilla/geckoview/GeckoSession;)V

    iget-object p3, p0, Lorg/mozilla/geckoview/GeckoSession$10;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    invoke-interface {p1, p3, p2}, Lorg/mozilla/geckoview/GeckoSession$MediaDelegate;->onMediaAdd(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/MediaElement;)V

    return-void

    :cond_0
    const-string p4, "GeckoView:MediaRemoveAll"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    const/4 v1, 0x0

    if-eqz p4, :cond_2

    :goto_0
    iget-object p2, p0, Lorg/mozilla/geckoview/GeckoSession$10;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    invoke-static {p2}, Lorg/mozilla/geckoview/GeckoSession;->access$400(Lorg/mozilla/geckoview/GeckoSession;)Landroid/util/LongSparseArray;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/LongSparseArray;->size()I

    move-result p2

    if-ge v1, p2, :cond_1

    iget-object p2, p0, Lorg/mozilla/geckoview/GeckoSession$10;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    invoke-static {p2}, Lorg/mozilla/geckoview/GeckoSession;->access$400(Lorg/mozilla/geckoview/GeckoSession;)Landroid/util/LongSparseArray;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide p2

    iget-object p4, p0, Lorg/mozilla/geckoview/GeckoSession$10;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    invoke-static {p4}, Lorg/mozilla/geckoview/GeckoSession;->access$400(Lorg/mozilla/geckoview/GeckoSession;)Landroid/util/LongSparseArray;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/mozilla/geckoview/MediaElement;

    invoke-interface {p1, p4, p2}, Lorg/mozilla/geckoview/GeckoSession$MediaDelegate;->onMediaRemove(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/MediaElement;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoSession$10;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    invoke-static {p1}, Lorg/mozilla/geckoview/GeckoSession;->access$400(Lorg/mozilla/geckoview/GeckoSession;)Landroid/util/LongSparseArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/LongSparseArray;->clear()V

    return-void

    :cond_2
    const-string p4, "GeckoView:MediaRecordingStatusChanged"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4

    const-string p2, "devices"

    invoke-virtual {p3, p2}, Lorg/mozilla/gecko/util/GeckoBundle;->getBundleArray(Ljava/lang/String;)[Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object p2

    array-length p3, p2

    new-array p3, p3, [Lorg/mozilla/geckoview/GeckoSession$MediaDelegate$RecordingDevice;

    :goto_1
    array-length p4, p2

    if-ge v1, p4, :cond_3

    new-instance p4, Lorg/mozilla/geckoview/GeckoSession$MediaDelegate$RecordingDevice;

    aget-object v0, p2, v1

    invoke-direct {p4, v0}, Lorg/mozilla/geckoview/GeckoSession$MediaDelegate$RecordingDevice;-><init>(Lorg/mozilla/gecko/util/GeckoBundle;)V

    aput-object p4, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lorg/mozilla/geckoview/GeckoSession$10;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    invoke-interface {p1, p2, p3}, Lorg/mozilla/geckoview/GeckoSession$MediaDelegate;->onRecordingStatusChanged(Lorg/mozilla/geckoview/GeckoSession;[Lorg/mozilla/geckoview/GeckoSession$MediaDelegate$RecordingDevice;)V

    return-void

    :cond_4
    const-wide/16 v1, 0x0

    invoke-virtual {p3, v0, v1, v2}, Lorg/mozilla/gecko/util/GeckoBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iget-object p4, p0, Lorg/mozilla/geckoview/GeckoSession$10;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    invoke-static {p4}, Lorg/mozilla/geckoview/GeckoSession;->access$400(Lorg/mozilla/geckoview/GeckoSession;)Landroid/util/LongSparseArray;

    move-result-object p4

    invoke-virtual {p4, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/mozilla/geckoview/MediaElement;

    if-nez p4, :cond_5

    return-void

    :cond_5
    const-string v0, "GeckoView:MediaTimeChanged"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p1, "time"

    invoke-virtual {p3, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide p1

    invoke-virtual {p4, p1, p2}, Lorg/mozilla/geckoview/MediaElement;->notifyTimeChange(D)V

    goto/16 :goto_2

    :cond_6
    const-string v0, "GeckoView:MediaProgress"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p4, p3}, Lorg/mozilla/geckoview/MediaElement;->notifyLoadProgress(Lorg/mozilla/gecko/util/GeckoBundle;)V

    goto/16 :goto_2

    :cond_7
    const-string v0, "GeckoView:MediaMetadataChanged"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p4, p3}, Lorg/mozilla/geckoview/MediaElement;->notifyMetadataChange(Lorg/mozilla/gecko/util/GeckoBundle;)V

    goto/16 :goto_2

    :cond_8
    const-string v0, "GeckoView:MediaReadyStateChanged"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p1, "readyState"

    invoke-virtual {p3, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p4, p1}, Lorg/mozilla/geckoview/MediaElement;->notifyReadyStateChange(I)V

    goto/16 :goto_2

    :cond_9
    const-string v0, "GeckoView:MediaPlaybackStateChanged"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string p1, "playbackState"

    invoke-virtual {p3, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lorg/mozilla/geckoview/MediaElement;->notifyPlaybackStateChange(Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    const-string v0, "GeckoView:MediaVolumeChanged"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p1, "volume"

    invoke-virtual {p3, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide p1

    const-string v0, "muted"

    invoke-virtual {p3, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    invoke-virtual {p4, p1, p2, p3}, Lorg/mozilla/geckoview/MediaElement;->notifyVolumeChange(DZ)V

    goto :goto_2

    :cond_b
    const-string v0, "GeckoView:MediaRateChanged"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p1, "rate"

    invoke-virtual {p3, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide p1

    invoke-virtual {p4, p1, p2}, Lorg/mozilla/geckoview/MediaElement;->notifyPlaybackRateChange(D)V

    goto :goto_2

    :cond_c
    const-string v0, "GeckoView:MediaFullscreenChanged"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string p1, "fullscreen"

    invoke-virtual {p3, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p4, p1}, Lorg/mozilla/geckoview/MediaElement;->notifyFullscreenChange(Z)V

    goto :goto_2

    :cond_d
    const-string v0, "GeckoView:MediaRemove"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object p2, p0, Lorg/mozilla/geckoview/GeckoSession$10;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    invoke-interface {p1, p2, p4}, Lorg/mozilla/geckoview/GeckoSession$MediaDelegate;->onMediaRemove(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/MediaElement;)V

    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoSession$10;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    invoke-static {p1}, Lorg/mozilla/geckoview/GeckoSession;->access$400(Lorg/mozilla/geckoview/GeckoSession;)Landroid/util/LongSparseArray;

    move-result-object p1

    invoke-virtual {p4}, Lorg/mozilla/geckoview/MediaElement;->getVideoId()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroid/util/LongSparseArray;->remove(J)V

    goto :goto_2

    :cond_e
    const-string p1, "GeckoView:MediaError"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    const-string p1, "code"

    invoke-virtual {p3, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p4, p1}, Lorg/mozilla/geckoview/MediaElement;->notifyError(I)V

    :goto_2
    return-void

    :cond_f
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p3, " media message not implemented"

    .line 2
    invoke-static {p2, p3}, La1/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
