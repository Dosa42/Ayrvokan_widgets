.class public final Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/media/GeckoHlsPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ComponentListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/gecko/media/GeckoHlsPlayer;


# direct methods
.method public constructor <init>(Lorg/mozilla/gecko/media/GeckoHlsPlayer;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentListener;->this$0:Lorg/mozilla/gecko/media/GeckoHlsPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioInputFormatChanged(Lf2/t;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentListener;->this$0:Lorg/mozilla/gecko/media/GeckoHlsPlayer;

    invoke-static {p1}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->access$000(Lorg/mozilla/gecko/media/GeckoHlsPlayer;)Z

    move-result p1

    invoke-static {p1}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->access$100(Z)V

    iget-object p1, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentListener;->this$0:Lorg/mozilla/gecko/media/GeckoHlsPlayer;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentListener;->this$0:Lorg/mozilla/gecko/media/GeckoHlsPlayer;

    invoke-static {v0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->access$500(Lorg/mozilla/gecko/media/GeckoHlsPlayer;)Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit p1

    return-void

    :cond_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentListener;->this$0:Lorg/mozilla/gecko/media/GeckoHlsPlayer;

    invoke-static {v0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->access$600(Lorg/mozilla/gecko/media/GeckoHlsPlayer;)Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;->onAudioInfoUpdated()V

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentListener;->this$0:Lorg/mozilla/gecko/media/GeckoHlsPlayer;

    invoke-virtual {v0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->checkInitDone()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDataArrived(I)V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentListener;->this$0:Lorg/mozilla/gecko/media/GeckoHlsPlayer;

    invoke-static {v0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->access$000(Lorg/mozilla/gecko/media/GeckoHlsPlayer;)Z

    move-result v0

    invoke-static {v0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->access$100(Z)V

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentListener;->this$0:Lorg/mozilla/gecko/media/GeckoHlsPlayer;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentListener;->this$0:Lorg/mozilla/gecko/media/GeckoHlsPlayer;

    invoke-static {v1}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->access$500(Lorg/mozilla/gecko/media/GeckoHlsPlayer;)Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentListener;->this$0:Lorg/mozilla/gecko/media/GeckoHlsPlayer;

    invoke-static {v1}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->access$600(Lorg/mozilla/gecko/media/GeckoHlsPlayer;)Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;->onDataArrived(I)V

    iget-object p1, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentListener;->this$0:Lorg/mozilla/gecko/media/GeckoHlsPlayer;

    invoke-static {p1}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->access$200(Lorg/mozilla/gecko/media/GeckoHlsPlayer;)Lorg/mozilla/gecko/media/BaseHlsPlayer$ResourceCallbacks;

    move-result-object p1

    invoke-interface {p1}, Lorg/mozilla/gecko/media/BaseHlsPlayer$ResourceCallbacks;->onDataArrived()V

    iget-object p1, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentListener;->this$0:Lorg/mozilla/gecko/media/GeckoHlsPlayer;

    invoke-virtual {p1}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->checkInitDone()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onVideoInputFormatChanged(Lf2/t;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentListener;->this$0:Lorg/mozilla/gecko/media/GeckoHlsPlayer;

    invoke-static {p1}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->access$000(Lorg/mozilla/gecko/media/GeckoHlsPlayer;)Z

    move-result p1

    invoke-static {p1}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->access$100(Z)V

    iget-object p1, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentListener;->this$0:Lorg/mozilla/gecko/media/GeckoHlsPlayer;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentListener;->this$0:Lorg/mozilla/gecko/media/GeckoHlsPlayer;

    invoke-static {v0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->access$500(Lorg/mozilla/gecko/media/GeckoHlsPlayer;)Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit p1

    return-void

    :cond_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentListener;->this$0:Lorg/mozilla/gecko/media/GeckoHlsPlayer;

    invoke-static {v0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->access$600(Lorg/mozilla/gecko/media/GeckoHlsPlayer;)Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer$HlsMediaTracksInfo;->onVideoInfoUpdated()V

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentListener;->this$0:Lorg/mozilla/gecko/media/GeckoHlsPlayer;

    invoke-virtual {v0}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->checkInitDone()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
