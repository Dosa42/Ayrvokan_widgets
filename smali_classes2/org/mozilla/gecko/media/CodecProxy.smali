.class public final Lorg/mozilla/gecko/media/CodecProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/gecko/media/CodecProxy$CallbacksForwarder;,
        Lorg/mozilla/gecko/media/CodecProxy$NativeCallbacks;,
        Lorg/mozilla/gecko/media/CodecProxy$Callbacks;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final INVALID_SESSION:J = -0x1L
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field private static final LOGTAG:Ljava/lang/String; = "GeckoRemoteCodecProxy"


# instance fields
.field private mCallbacks:Lorg/mozilla/gecko/media/CodecProxy$CallbacksForwarder;

.field private mFlushed:Z

.field private mFormat:Lorg/mozilla/gecko/media/FormatParam;

.field private mInputBuffers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/mozilla/gecko/media/SampleBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsEncoder:Z

.field private mOutputBuffers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/mozilla/gecko/media/SampleBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mOutputSurface:Lorg/mozilla/gecko/gfx/GeckoSurface;

.field private mRemote:Lorg/mozilla/gecko/media/ICodec;

.field private mRemoteDrmStubId:Ljava/lang/String;

.field private mSession:J

.field private mSurfaceOutputs:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/mozilla/gecko/media/Sample;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ZLandroid/media/MediaFormat;Lorg/mozilla/gecko/gfx/GeckoSurface;Lorg/mozilla/gecko/media/CodecProxy$Callbacks;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/mozilla/gecko/media/CodecProxy;->mSurfaceOutputs:Ljava/util/Queue;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/gecko/media/CodecProxy;->mFlushed:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/gecko/media/CodecProxy;->mInputBuffers:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/gecko/media/CodecProxy;->mOutputBuffers:Ljava/util/Map;

    iput-boolean p1, p0, Lorg/mozilla/gecko/media/CodecProxy;->mIsEncoder:Z

    new-instance p1, Lorg/mozilla/gecko/media/FormatParam;

    invoke-direct {p1, p2}, Lorg/mozilla/gecko/media/FormatParam;-><init>(Landroid/media/MediaFormat;)V

    iput-object p1, p0, Lorg/mozilla/gecko/media/CodecProxy;->mFormat:Lorg/mozilla/gecko/media/FormatParam;

    iput-object p3, p0, Lorg/mozilla/gecko/media/CodecProxy;->mOutputSurface:Lorg/mozilla/gecko/gfx/GeckoSurface;

    iput-object p5, p0, Lorg/mozilla/gecko/media/CodecProxy;->mRemoteDrmStubId:Ljava/lang/String;

    new-instance p1, Lorg/mozilla/gecko/media/CodecProxy$CallbacksForwarder;

    invoke-direct {p1, p0, p4}, Lorg/mozilla/gecko/media/CodecProxy$CallbacksForwarder;-><init>(Lorg/mozilla/gecko/media/CodecProxy;Lorg/mozilla/gecko/media/CodecProxy$Callbacks;)V

    iput-object p1, p0, Lorg/mozilla/gecko/media/CodecProxy;->mCallbacks:Lorg/mozilla/gecko/media/CodecProxy$CallbacksForwarder;

    return-void
.end method

.method public static synthetic access$000(Lorg/mozilla/gecko/media/CodecProxy;I)Lorg/mozilla/gecko/media/SampleBuffer;
    .locals 0

    invoke-direct {p0, p1}, Lorg/mozilla/gecko/media/CodecProxy;->getOutputBuffer(I)Lorg/mozilla/gecko/media/SampleBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lorg/mozilla/gecko/media/CodecProxy;)Lorg/mozilla/gecko/gfx/GeckoSurface;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/gecko/media/CodecProxy;->mOutputSurface:Lorg/mozilla/gecko/gfx/GeckoSurface;

    return-object p0
.end method

.method public static synthetic access$200(Lorg/mozilla/gecko/media/CodecProxy;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/gecko/media/CodecProxy;->mSurfaceOutputs:Ljava/util/Queue;

    return-object p0
.end method

.method public static create(ZLandroid/media/MediaFormat;Lorg/mozilla/gecko/gfx/GeckoSurface;Lorg/mozilla/gecko/media/CodecProxy$Callbacks;Ljava/lang/String;)Lorg/mozilla/gecko/media/CodecProxy;
    .locals 6
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    invoke-static {}, Lorg/mozilla/gecko/media/RemoteManager;->getInstance()Lorg/mozilla/gecko/media/RemoteManager;

    move-result-object v0

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/gecko/media/RemoteManager;->createCodec(ZLandroid/media/MediaFormat;Lorg/mozilla/gecko/gfx/GeckoSurface;Lorg/mozilla/gecko/media/CodecProxy$Callbacks;Ljava/lang/String;)Lorg/mozilla/gecko/media/CodecProxy;

    move-result-object p0

    return-object p0
.end method

.method public static createCodecProxy(ZLandroid/media/MediaFormat;Lorg/mozilla/gecko/gfx/GeckoSurface;Lorg/mozilla/gecko/media/CodecProxy$Callbacks;Ljava/lang/String;)Lorg/mozilla/gecko/media/CodecProxy;
    .locals 7

    new-instance v6, Lorg/mozilla/gecko/media/CodecProxy;

    move-object v0, v6

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/gecko/media/CodecProxy;-><init>(ZLandroid/media/MediaFormat;Lorg/mozilla/gecko/gfx/GeckoSurface;Lorg/mozilla/gecko/media/CodecProxy$Callbacks;Ljava/lang/String;)V

    return-object v6
.end method

.method private fillInputBuffer(ILjava/nio/ByteBuffer;II)V
    .locals 2

    if-eqz p2, :cond_3

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/CodecProxy;->mInputBuffers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/gecko/media/SampleBuffer;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/mozilla/gecko/media/CodecProxy;->mRemote:Lorg/mozilla/gecko/media/ICodec;

    invoke-interface {v0, p1}, Lorg/mozilla/gecko/media/ICodec;->getInputBuffer(I)Lorg/mozilla/gecko/media/SampleBuffer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/mozilla/gecko/media/CodecProxy;->mInputBuffers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0}, Lorg/mozilla/gecko/media/SampleBuffer;->capacity()I

    move-result p1

    if-lt p1, p4, :cond_2

    invoke-virtual {v0, p2, p3, p4}, Lorg/mozilla/gecko/media/SampleBuffer;->readFromByteBuffer(Ljava/nio/ByteBuffer;II)V

    return-void

    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "data larger than capacity: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " > "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/mozilla/gecko/media/SampleBuffer;->capacity()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method private declared-synchronized getOutputBuffer(I)Lorg/mozilla/gecko/media/SampleBuffer;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/CodecProxy;->mRemote:Lorg/mozilla/gecko/media/ICodec;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/mozilla/gecko/media/CodecProxy;->mOutputSurface:Lorg/mozilla/gecko/gfx/GeckoSurface;

    if-nez v0, :cond_4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/mozilla/gecko/media/CodecProxy;->mOutputBuffers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/gecko/media/SampleBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lorg/mozilla/gecko/media/CodecProxy;->mRemote:Lorg/mozilla/gecko/media/ICodec;

    invoke-interface {v0, p1}, Lorg/mozilla/gecko/media/ICodec;->getOutputBuffer(I)Lorg/mozilla/gecko/media/SampleBuffer;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_3

    :try_start_3
    iget-object v1, p0, Lorg/mozilla/gecko/media/CodecProxy;->mOutputBuffers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    monitor-exit p0

    return-object v0

    :catch_0
    monitor-exit p0

    return-object v1

    :cond_4
    :goto_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private resetBuffers()V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/gecko/media/CodecProxy;->mInputBuffers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/gecko/media/SampleBuffer;

    invoke-virtual {v1}, Lorg/mozilla/gecko/media/SampleBuffer;->dispose()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/CodecProxy;->mInputBuffers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lorg/mozilla/gecko/media/CodecProxy;->mOutputBuffers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/gecko/media/SampleBuffer;

    invoke-virtual {v1}, Lorg/mozilla/gecko/media/SampleBuffer;->dispose()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/mozilla/gecko/media/CodecProxy;->mOutputBuffers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private sendInput(Lorg/mozilla/gecko/media/Sample;)J
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/CodecProxy;->mRemote:Lorg/mozilla/gecko/media/ICodec;

    invoke-interface {v0, p1}, Lorg/mozilla/gecko/media/ICodec;->queueInput(Lorg/mozilla/gecko/media/Sample;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/mozilla/gecko/media/Sample;->dispose()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/gecko/media/CodecProxy;->mFlushed:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-wide v0, p0, Lorg/mozilla/gecko/media/CodecProxy;->mSession:J

    return-wide v0

    :catch_0
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    const-wide/16 v0, -0x1

    return-wide v0
.end method


# virtual methods
.method public deinit()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/CodecProxy;->mRemote:Lorg/mozilla/gecko/media/ICodec;

    invoke-interface {v0}, Lorg/mozilla/gecko/media/ICodec;->stop()V

    iget-object v0, p0, Lorg/mozilla/gecko/media/CodecProxy;->mRemote:Lorg/mozilla/gecko/media/ICodec;

    invoke-interface {v0}, Lorg/mozilla/gecko/media/ICodec;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/gecko/media/CodecProxy;->mRemote:Lorg/mozilla/gecko/media/ICodec;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized flush()Z
    .locals 3
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/mozilla/gecko/media/CodecProxy;->mFlushed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/mozilla/gecko/media/CodecProxy;->mRemote:Lorg/mozilla/gecko/media/ICodec;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    monitor-exit p0

    return v2

    :cond_1
    :try_start_2
    invoke-direct {p0}, Lorg/mozilla/gecko/media/CodecProxy;->resetBuffers()V

    iget-object v0, p0, Lorg/mozilla/gecko/media/CodecProxy;->mRemote:Lorg/mozilla/gecko/media/ICodec;

    invoke-interface {v0}, Lorg/mozilla/gecko/media/ICodec;->flush()V

    iput-boolean v1, p0, Lorg/mozilla/gecko/media/CodecProxy;->mFlushed:Z
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v1

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v2

    :catch_1
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public init(Lorg/mozilla/gecko/media/ICodec;)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/mozilla/gecko/media/CodecProxy;->mCallbacks:Lorg/mozilla/gecko/media/CodecProxy$CallbacksForwarder;

    invoke-interface {p1, v1}, Lorg/mozilla/gecko/media/ICodec;->setCallbacks(Lorg/mozilla/gecko/media/ICodecCallbacks;)V

    iget-object v1, p0, Lorg/mozilla/gecko/media/CodecProxy;->mFormat:Lorg/mozilla/gecko/media/FormatParam;

    iget-object v2, p0, Lorg/mozilla/gecko/media/CodecProxy;->mOutputSurface:Lorg/mozilla/gecko/gfx/GeckoSurface;

    iget-boolean v3, p0, Lorg/mozilla/gecko/media/CodecProxy;->mIsEncoder:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    iget-object v5, p0, Lorg/mozilla/gecko/media/CodecProxy;->mRemoteDrmStubId:Ljava/lang/String;

    invoke-interface {p1, v1, v2, v3, v5}, Lorg/mozilla/gecko/media/ICodec;->configure(Lorg/mozilla/gecko/media/FormatParam;Lorg/mozilla/gecko/gfx/GeckoSurface;ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-interface {p1}, Lorg/mozilla/gecko/media/ICodec;->start()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object p1, p0, Lorg/mozilla/gecko/media/CodecProxy;->mRemote:Lorg/mozilla/gecko/media/ICodec;

    return v4

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public declared-synchronized input(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Landroid/media/MediaCodec$CryptoInfo;)J
    .locals 6
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/CodecProxy;->mRemote:Lorg/mozilla/gecko/media/ICodec;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    monitor-exit p0

    return-wide v1

    :cond_0
    :try_start_1
    iget v3, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    sget-object p1, Lorg/mozilla/gecko/media/Sample;->EOS:Lorg/mozilla/gecko/media/Sample;

    invoke-direct {p0, p1}, Lorg/mozilla/gecko/media/CodecProxy;->sendInput(Lorg/mozilla/gecko/media/Sample;)J

    move-result-wide p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide p1

    :cond_2
    :try_start_2
    iget v3, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-interface {v0, v3}, Lorg/mozilla/gecko/media/ICodec;->dequeueInput(I)Lorg/mozilla/gecko/media/Sample;

    move-result-object v0

    iget v3, v0, Lorg/mozilla/gecko/media/Sample;->bufferId:I

    iget v4, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v5, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-direct {p0, v3, p1, v4, v5}, Lorg/mozilla/gecko/media/CodecProxy;->fillInputBuffer(ILjava/nio/ByteBuffer;II)V

    iget-wide v3, v0, Lorg/mozilla/gecko/media/Sample;->session:J

    iput-wide v3, p0, Lorg/mozilla/gecko/media/CodecProxy;->mSession:J

    invoke-virtual {v0, p2, p3}, Lorg/mozilla/gecko/media/Sample;->set(Landroid/media/MediaCodec$BufferInfo;Landroid/media/MediaCodec$CryptoInfo;)Lorg/mozilla/gecko/media/Sample;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/mozilla/gecko/media/CodecProxy;->sendInput(Lorg/mozilla/gecko/media/Sample;)J

    move-result-wide p1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-wide p1

    :catch_0
    const/4 p1, 0x0

    :try_start_3
    invoke-direct {p0, p1}, Lorg/mozilla/gecko/media/CodecProxy;->sendInput(Lorg/mozilla/gecko/media/Sample;)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_1
    monitor-exit p0

    return-wide v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isAdaptivePlaybackSupported()Z
    .locals 2
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/CodecProxy;->mRemote:Lorg/mozilla/gecko/media/ICodec;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-interface {v0}, Lorg/mozilla/gecko/media/ICodec;->isAdaptivePlaybackSupported()Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isHardwareAccelerated()Z
    .locals 2
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/CodecProxy;->mRemote:Lorg/mozilla/gecko/media/ICodec;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-interface {v0}, Lorg/mozilla/gecko/media/ICodec;->isHardwareAccelerated()Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isTunneledPlaybackSupported()Z
    .locals 2
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/CodecProxy;->mRemote:Lorg/mozilla/gecko/media/ICodec;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-interface {v0}, Lorg/mozilla/gecko/media/ICodec;->isTunneledPlaybackSupported()Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public release()Z
    .locals 4
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    iget-object v0, p0, Lorg/mozilla/gecko/media/CodecProxy;->mCallbacks:Lorg/mozilla/gecko/media/CodecProxy$CallbacksForwarder;

    invoke-static {v0}, Lorg/mozilla/gecko/media/CodecProxy$CallbacksForwarder;->access$300(Lorg/mozilla/gecko/media/CodecProxy$CallbacksForwarder;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/CodecProxy;->mRemote:Lorg/mozilla/gecko/media/ICodec;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/CodecProxy;->mSurfaceOutputs:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/mozilla/gecko/media/CodecProxy;->mSurfaceOutputs:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lorg/mozilla/gecko/media/CodecProxy;->mSurfaceOutputs:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/gecko/media/Sample;

    iget-object v3, p0, Lorg/mozilla/gecko/media/CodecProxy;->mRemote:Lorg/mozilla/gecko/media/ICodec;

    invoke-interface {v3, v2, v1}, Lorg/mozilla/gecko/media/ICodec;->releaseOutput(Lorg/mozilla/gecko/media/Sample;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    iget-object v0, p0, Lorg/mozilla/gecko/media/CodecProxy;->mSurfaceOutputs:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    :cond_2
    invoke-direct {p0}, Lorg/mozilla/gecko/media/CodecProxy;->resetBuffers()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    :try_start_3
    invoke-static {}, Lorg/mozilla/gecko/media/RemoteManager;->getInstance()Lorg/mozilla/gecko/media/RemoteManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lorg/mozilla/gecko/media/RemoteManager;->releaseCodec(Lorg/mozilla/gecko/media/CodecProxy;)V
    :try_end_3
    .catch Landroid/os/DeadObjectException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit p0

    return v1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    monitor-exit p0

    return v0

    :catch_2
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public declared-synchronized releaseOutput(Lorg/mozilla/gecko/media/Sample;Z)Z
    .locals 4
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/CodecProxy;->mOutputSurface:Lorg/mozilla/gecko/gfx/GeckoSurface;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mozilla/gecko/media/CodecProxy;->mSurfaceOutputs:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p2, p0, Lorg/mozilla/gecko/media/CodecProxy;->mRemote:Lorg/mozilla/gecko/media/ICodec;

    if-eqz p2, :cond_0

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return v1

    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/mozilla/gecko/media/CodecProxy;->mRemote:Lorg/mozilla/gecko/media/ICodec;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lorg/mozilla/gecko/media/Sample;->dispose()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    :cond_2
    :try_start_2
    invoke-interface {v0, p1, p2}, Lorg/mozilla/gecko/media/ICodec;->releaseOutput(Lorg/mozilla/gecko/media/Sample;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p2

    :try_start_3
    iget-object v0, p1, Lorg/mozilla/gecko/media/Sample;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-virtual {p1}, Lorg/mozilla/gecko/media/Sample;->dispose()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public reportError(Z)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/media/CodecProxy;->mCallbacks:Lorg/mozilla/gecko/media/CodecProxy$CallbacksForwarder;

    invoke-static {v0, p1}, Lorg/mozilla/gecko/media/CodecProxy$CallbacksForwarder;->access$400(Lorg/mozilla/gecko/media/CodecProxy$CallbacksForwarder;Z)V

    return-void
.end method

.method public declared-synchronized setBitrate(I)Z
    .locals 2
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/mozilla/gecko/media/CodecProxy;->mIsEncoder:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/mozilla/gecko/media/CodecProxy;->mRemote:Lorg/mozilla/gecko/media/ICodec;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    :try_start_2
    invoke-interface {v0, p1}, Lorg/mozilla/gecko/media/ICodec;->setBitrate(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
