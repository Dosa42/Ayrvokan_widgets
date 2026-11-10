.class Lorg/mozilla/gecko/media/Codec$OutputProcessor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/media/Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OutputProcessor"
.end annotation


# instance fields
.field private mHasOutputCapacitySet:Z

.field private final mRenderToSurface:Z

.field private mSentOutputs:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/mozilla/gecko/media/Codec$Output;",
            ">;"
        }
    .end annotation
.end field

.field private mStopped:Z

.field final synthetic this$0:Lorg/mozilla/gecko/media/Codec;


# direct methods
.method private constructor <init>(Lorg/mozilla/gecko/media/Codec;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mozilla/gecko/media/Codec$OutputProcessor;->this$0:Lorg/mozilla/gecko/media/Codec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lorg/mozilla/gecko/media/Codec$OutputProcessor;->mSentOutputs:Ljava/util/Queue;

    iput-boolean p2, p0, Lorg/mozilla/gecko/media/Codec$OutputProcessor;->mRenderToSurface:Z

    return-void
.end method

.method public synthetic constructor <init>(Lorg/mozilla/gecko/media/Codec;ZLorg/mozilla/gecko/media/Codec$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/mozilla/gecko/media/Codec$OutputProcessor;-><init>(Lorg/mozilla/gecko/media/Codec;Z)V

    return-void
.end method

.method public static synthetic access$1400(Lorg/mozilla/gecko/media/Codec$OutputProcessor;)V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/gecko/media/Codec$OutputProcessor;->start()V

    return-void
.end method

.method public static synthetic access$1600(Lorg/mozilla/gecko/media/Codec$OutputProcessor;)V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/gecko/media/Codec$OutputProcessor;->stop()V

    return-void
.end method

.method public static synthetic access$1900(Lorg/mozilla/gecko/media/Codec$OutputProcessor;Lorg/mozilla/gecko/media/Sample;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/mozilla/gecko/media/Codec$OutputProcessor;->onRelease(Lorg/mozilla/gecko/media/Sample;Z)V

    return-void
.end method

.method public static synthetic access$300(Lorg/mozilla/gecko/media/Codec$OutputProcessor;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/mozilla/gecko/media/Codec$OutputProcessor;->onBuffer(ILandroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method public static synthetic access$500(Lorg/mozilla/gecko/media/Codec$OutputProcessor;Landroid/media/MediaFormat;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/mozilla/gecko/media/Codec$OutputProcessor;->onFormatChanged(Landroid/media/MediaFormat;)V

    return-void
.end method

.method private isValidBuffer(I)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/mozilla/gecko/media/Codec$OutputProcessor;->this$0:Lorg/mozilla/gecko/media/Codec;

    invoke-static {v1}, Lorg/mozilla/gecko/media/Codec;->access$800(Lorg/mozilla/gecko/media/Codec;)Lorg/mozilla/gecko/media/AsyncCodec;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/mozilla/gecko/media/AsyncCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lorg/mozilla/gecko/media/Codec$OutputProcessor;->mRenderToSurface:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :catch_0
    :cond_1
    return v0
.end method

.method private obtainOutputSample(ILandroid/media/MediaCodec$BufferInfo;)Lorg/mozilla/gecko/media/Sample;
    .locals 3

    iget-object v0, p0, Lorg/mozilla/gecko/media/Codec$OutputProcessor;->this$0:Lorg/mozilla/gecko/media/Codec;

    invoke-static {v0}, Lorg/mozilla/gecko/media/Codec;->access$600(Lorg/mozilla/gecko/media/Codec;)Lorg/mozilla/gecko/media/SamplePool;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/mozilla/gecko/media/SamplePool;->obtainOutput(Landroid/media/MediaCodec$BufferInfo;)Lorg/mozilla/gecko/media/Sample;

    move-result-object v0

    iget-boolean v1, p0, Lorg/mozilla/gecko/media/Codec$OutputProcessor;->mRenderToSurface:Z

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/mozilla/gecko/media/Codec$OutputProcessor;->this$0:Lorg/mozilla/gecko/media/Codec;

    invoke-static {v1}, Lorg/mozilla/gecko/media/Codec;->access$800(Lorg/mozilla/gecko/media/Codec;)Lorg/mozilla/gecko/media/AsyncCodec;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/mozilla/gecko/media/AsyncCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iget-boolean v1, p0, Lorg/mozilla/gecko/media/Codec$OutputProcessor;->mHasOutputCapacitySet:Z

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v2, p0, Lorg/mozilla/gecko/media/Codec$OutputProcessor;->this$0:Lorg/mozilla/gecko/media/Codec;

    invoke-static {v2}, Lorg/mozilla/gecko/media/Codec;->access$600(Lorg/mozilla/gecko/media/Codec;)Lorg/mozilla/gecko/media/SamplePool;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/mozilla/gecko/media/SamplePool;->setOutputBufferSize(I)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/mozilla/gecko/media/Codec$OutputProcessor;->mHasOutputCapacitySet:Z

    :cond_1
    iget v1, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lorg/mozilla/gecko/media/Codec$OutputProcessor;->this$0:Lorg/mozilla/gecko/media/Codec;

    invoke-static {v1}, Lorg/mozilla/gecko/media/Codec;->access$600(Lorg/mozilla/gecko/media/Codec;)Lorg/mozilla/gecko/media/SamplePool;

    move-result-object v1

    iget v2, v0, Lorg/mozilla/gecko/media/Sample;->bufferId:I

    invoke-virtual {v1, v2}, Lorg/mozilla/gecko/media/SamplePool;->getOutputBuffer(I)Lorg/mozilla/gecko/media/SampleBuffer;

    move-result-object v1

    iget v2, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget p2, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v1, p1, v2, p2}, Lorg/mozilla/gecko/media/SampleBuffer;->readFromByteBuffer(Ljava/nio/ByteBuffer;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_2
    :goto_0
    return-object v0
.end method

.method private declared-synchronized onBuffer(ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/mozilla/gecko/media/Codec$OutputProcessor;->mStopped:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lorg/mozilla/gecko/media/Codec$OutputProcessor;->isValidBuffer(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2}, Lorg/mozilla/gecko/media/Codec$OutputProcessor;->obtainOutputSample(ILandroid/media/MediaCodec$BufferInfo;)Lorg/mozilla/gecko/media/Sample;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/gecko/media/Codec$OutputProcessor;->mSentOutputs:Ljava/util/Queue;

    new-instance v2, Lorg/mozilla/gecko/media/Codec$Output;

    invoke-direct {v2, v0, p1}, Lorg/mozilla/gecko/media/Codec$Output;-><init>(Lorg/mozilla/gecko/media/Sample;I)V

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/mozilla/gecko/media/Codec$OutputProcessor;->this$0:Lorg/mozilla/gecko/media/Codec;

    invoke-static {v1}, Lorg/mozilla/gecko/media/Codec;->access$700(Lorg/mozilla/gecko/media/Codec;)J

    move-result-wide v1

    iput-wide v1, v0, Lorg/mozilla/gecko/media/Sample;->session:J

    iget-object v1, p0, Lorg/mozilla/gecko/media/Codec$OutputProcessor;->this$0:Lorg/mozilla/gecko/media/Codec;

    invoke-static {v1}, Lorg/mozilla/gecko/media/Codec;->access$900(Lorg/mozilla/gecko/media/Codec;)Lorg/mozilla/gecko/media/ICodecCallbacks;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/mozilla/gecko/media/ICodecCallbacks;->onOutput(Lorg/mozilla/gecko/media/Sample;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v0, p0, Lorg/mozilla/gecko/media/Codec$OutputProcessor;->this$0:Lorg/mozilla/gecko/media/Codec;

    invoke-static {v0}, Lorg/mozilla/gecko/media/Codec;->access$800(Lorg/mozilla/gecko/media/Codec;)Lorg/mozilla/gecko/media/AsyncCodec;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lorg/mozilla/gecko/media/AsyncCodec;->releaseOutputBuffer(IZ)V

    :goto_0
    iget p1, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onFormatChanged(Landroid/media/MediaFormat;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/mozilla/gecko/media/Codec$OutputProcessor;->mStopped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/mozilla/gecko/media/Codec$OutputProcessor;->this$0:Lorg/mozilla/gecko/media/Codec;

    invoke-static {v0}, Lorg/mozilla/gecko/media/Codec;->access$900(Lorg/mozilla/gecko/media/Codec;)Lorg/mozilla/gecko/media/ICodecCallbacks;

    move-result-object v0

    new-instance v1, Lorg/mozilla/gecko/media/FormatParam;

    invoke-direct {v1, p1}, Lorg/mozilla/gecko/media/FormatParam;-><init>(Landroid/media/MediaFormat;)V

    invoke-interface {v0, v1}, Lorg/mozilla/gecko/media/ICodecCallbacks;->onOutputFormatChanged(Lorg/mozilla/gecko/media/FormatParam;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onRelease(Lorg/mozilla/gecko/media/Sample;Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/Codec$OutputProcessor;->mSentOutputs:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/gecko/media/Codec$Output;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/mozilla/gecko/media/Codec$OutputProcessor;->this$0:Lorg/mozilla/gecko/media/Codec;

    invoke-static {v1}, Lorg/mozilla/gecko/media/Codec;->access$800(Lorg/mozilla/gecko/media/Codec;)Lorg/mozilla/gecko/media/AsyncCodec;

    move-result-object v1

    iget v2, v0, Lorg/mozilla/gecko/media/Codec$Output;->index:I

    invoke-interface {v1, v2, p2}, Lorg/mozilla/gecko/media/AsyncCodec;->releaseOutputBuffer(IZ)V

    iget-object p2, p0, Lorg/mozilla/gecko/media/Codec$OutputProcessor;->this$0:Lorg/mozilla/gecko/media/Codec;

    invoke-static {p2}, Lorg/mozilla/gecko/media/Codec;->access$600(Lorg/mozilla/gecko/media/Codec;)Lorg/mozilla/gecko/media/SamplePool;

    move-result-object p2

    iget-object v0, v0, Lorg/mozilla/gecko/media/Codec$Output;->sample:Lorg/mozilla/gecko/media/Sample;

    invoke-virtual {p2, v0}, Lorg/mozilla/gecko/media/SamplePool;->recycleOutput(Lorg/mozilla/gecko/media/Sample;)V

    invoke-virtual {p1}, Lorg/mozilla/gecko/media/Sample;->dispose()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized reset()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/Codec$OutputProcessor;->mSentOutputs:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/gecko/media/Codec$Output;

    iget-object v2, p0, Lorg/mozilla/gecko/media/Codec$OutputProcessor;->this$0:Lorg/mozilla/gecko/media/Codec;

    invoke-static {v2}, Lorg/mozilla/gecko/media/Codec;->access$800(Lorg/mozilla/gecko/media/Codec;)Lorg/mozilla/gecko/media/AsyncCodec;

    move-result-object v2

    iget v3, v1, Lorg/mozilla/gecko/media/Codec$Output;->index:I

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lorg/mozilla/gecko/media/AsyncCodec;->releaseOutputBuffer(IZ)V

    iget-object v2, p0, Lorg/mozilla/gecko/media/Codec$OutputProcessor;->this$0:Lorg/mozilla/gecko/media/Codec;

    invoke-static {v2}, Lorg/mozilla/gecko/media/Codec;->access$600(Lorg/mozilla/gecko/media/Codec;)Lorg/mozilla/gecko/media/SamplePool;

    move-result-object v2

    iget-object v1, v1, Lorg/mozilla/gecko/media/Codec$Output;->sample:Lorg/mozilla/gecko/media/Sample;

    invoke-virtual {v2, v1}, Lorg/mozilla/gecko/media/SamplePool;->recycleOutput(Lorg/mozilla/gecko/media/Sample;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/Codec$OutputProcessor;->mSentOutputs:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized start()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/mozilla/gecko/media/Codec$OutputProcessor;->mStopped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lorg/mozilla/gecko/media/Codec$OutputProcessor;->mStopped:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized stop()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/mozilla/gecko/media/Codec$OutputProcessor;->mStopped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lorg/mozilla/gecko/media/Codec$OutputProcessor;->mStopped:Z

    invoke-direct {p0}, Lorg/mozilla/gecko/media/Codec$OutputProcessor;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
