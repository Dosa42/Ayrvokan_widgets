.class Lorg/mozilla/gecko/media/CodecProxy$CallbacksForwarder;
.super Lorg/mozilla/gecko/media/ICodecCallbacks$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/media/CodecProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CallbacksForwarder"
.end annotation


# instance fields
.field private final mCallbacks:Lorg/mozilla/gecko/media/CodecProxy$Callbacks;

.field private mCodecProxyReleased:Z

.field final synthetic this$0:Lorg/mozilla/gecko/media/CodecProxy;


# direct methods
.method public constructor <init>(Lorg/mozilla/gecko/media/CodecProxy;Lorg/mozilla/gecko/media/CodecProxy$Callbacks;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/gecko/media/CodecProxy$CallbacksForwarder;->this$0:Lorg/mozilla/gecko/media/CodecProxy;

    invoke-direct {p0}, Lorg/mozilla/gecko/media/ICodecCallbacks$Stub;-><init>()V

    iput-object p2, p0, Lorg/mozilla/gecko/media/CodecProxy$CallbacksForwarder;->mCallbacks:Lorg/mozilla/gecko/media/CodecProxy$Callbacks;

    return-void
.end method

.method public static synthetic access$300(Lorg/mozilla/gecko/media/CodecProxy$CallbacksForwarder;)V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/gecko/media/CodecProxy$CallbacksForwarder;->setCodecProxyReleased()V

    return-void
.end method

.method public static synthetic access$400(Lorg/mozilla/gecko/media/CodecProxy$CallbacksForwarder;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/mozilla/gecko/media/CodecProxy$CallbacksForwarder;->reportError(Z)V

    return-void
.end method

.method private declared-synchronized reportError(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/mozilla/gecko/media/CodecProxy$CallbacksForwarder;->mCodecProxyReleased:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/gecko/media/CodecProxy$CallbacksForwarder;->mCallbacks:Lorg/mozilla/gecko/media/CodecProxy$Callbacks;

    invoke-interface {v0, p1}, Lorg/mozilla/gecko/media/CodecProxy$Callbacks;->onError(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized setCodecProxyReleased()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/mozilla/gecko/media/CodecProxy$CallbacksForwarder;->mCodecProxyReleased:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onError(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/mozilla/gecko/media/CodecProxy$CallbacksForwarder;->reportError(Z)V

    return-void
.end method

.method public declared-synchronized onInputPending(J)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/mozilla/gecko/media/CodecProxy$CallbacksForwarder;->mCodecProxyReleased:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/gecko/media/CodecProxy$CallbacksForwarder;->mCallbacks:Lorg/mozilla/gecko/media/CodecProxy$Callbacks;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lorg/mozilla/gecko/media/CodecProxy$Callbacks;->onInputStatus(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onInputQueued(J)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/mozilla/gecko/media/CodecProxy$CallbacksForwarder;->mCodecProxyReleased:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/gecko/media/CodecProxy$CallbacksForwarder;->mCallbacks:Lorg/mozilla/gecko/media/CodecProxy$Callbacks;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lorg/mozilla/gecko/media/CodecProxy$Callbacks;->onInputStatus(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onOutput(Lorg/mozilla/gecko/media/Sample;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/mozilla/gecko/media/CodecProxy$CallbacksForwarder;->mCodecProxyReleased:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/mozilla/gecko/media/Sample;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/mozilla/gecko/media/CodecProxy$CallbacksForwarder;->this$0:Lorg/mozilla/gecko/media/CodecProxy;

    iget v1, p1, Lorg/mozilla/gecko/media/Sample;->bufferId:I

    invoke-static {v0, v1}, Lorg/mozilla/gecko/media/CodecProxy;->access$000(Lorg/mozilla/gecko/media/CodecProxy;I)Lorg/mozilla/gecko/media/SampleBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/gecko/media/CodecProxy$CallbacksForwarder;->this$0:Lorg/mozilla/gecko/media/CodecProxy;

    invoke-static {v1}, Lorg/mozilla/gecko/media/CodecProxy;->access$100(Lorg/mozilla/gecko/media/CodecProxy;)Lorg/mozilla/gecko/gfx/GeckoSurface;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/mozilla/gecko/media/CodecProxy$CallbacksForwarder;->this$0:Lorg/mozilla/gecko/media/CodecProxy;

    invoke-static {v1}, Lorg/mozilla/gecko/media/CodecProxy;->access$200(Lorg/mozilla/gecko/media/CodecProxy;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p1}, Lorg/mozilla/gecko/media/Sample;->dispose()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :goto_0
    :try_start_2
    iget-object v1, p0, Lorg/mozilla/gecko/media/CodecProxy$CallbacksForwarder;->mCallbacks:Lorg/mozilla/gecko/media/CodecProxy$Callbacks;

    invoke-interface {v1, p1, v0}, Lorg/mozilla/gecko/media/CodecProxy$Callbacks;->onOutput(Lorg/mozilla/gecko/media/Sample;Lorg/mozilla/gecko/media/SampleBuffer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onOutputFormatChanged(Lorg/mozilla/gecko/media/FormatParam;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/mozilla/gecko/media/CodecProxy$CallbacksForwarder;->mCodecProxyReleased:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/gecko/media/CodecProxy$CallbacksForwarder;->mCallbacks:Lorg/mozilla/gecko/media/CodecProxy$Callbacks;

    invoke-virtual {p1}, Lorg/mozilla/gecko/media/FormatParam;->asFormat()Landroid/media/MediaFormat;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/mozilla/gecko/media/CodecProxy$Callbacks;->onOutputFormatChanged(Landroid/media/MediaFormat;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
