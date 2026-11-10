.class final Lorg/mozilla/gecko/media/Codec$InputProcessor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/media/Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InputProcessor"
.end annotation


# instance fields
.field private mAvailableInputBuffers:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDequeuedSamples:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/mozilla/gecko/media/Sample;",
            ">;"
        }
    .end annotation
.end field

.field private mHasInputCapacitySet:Z

.field private mInputSamples:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/mozilla/gecko/media/Codec$Input;",
            ">;"
        }
    .end annotation
.end field

.field private mStopped:Z

.field final synthetic this$0:Lorg/mozilla/gecko/media/Codec;


# direct methods
.method private constructor <init>(Lorg/mozilla/gecko/media/Codec;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mozilla/gecko/media/Codec$InputProcessor;->this$0:Lorg/mozilla/gecko/media/Codec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lorg/mozilla/gecko/media/Codec$InputProcessor;->mAvailableInputBuffers:Ljava/util/Queue;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lorg/mozilla/gecko/media/Codec$InputProcessor;->mDequeuedSamples:Ljava/util/Queue;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lorg/mozilla/gecko/media/Codec$InputProcessor;->mInputSamples:Ljava/util/Queue;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/mozilla/gecko/media/Codec;Lorg/mozilla/gecko/media/Codec$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/mozilla/gecko/media/Codec$InputProcessor;-><init>(Lorg/mozilla/gecko/media/Codec;)V

    return-void
.end method

.method public static synthetic access$100(Lorg/mozilla/gecko/media/Codec$InputProcessor;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/mozilla/gecko/media/Codec$InputProcessor;->onBuffer(I)V

    return-void
.end method

.method public static synthetic access$1300(Lorg/mozilla/gecko/media/Codec$InputProcessor;)V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/gecko/media/Codec$InputProcessor;->start()V

    return-void
.end method

.method public static synthetic access$1500(Lorg/mozilla/gecko/media/Codec$InputProcessor;)V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/gecko/media/Codec$InputProcessor;->stop()V

    return-void
.end method

.method public static synthetic access$1700(Lorg/mozilla/gecko/media/Codec$InputProcessor;I)Lorg/mozilla/gecko/media/Sample;
    .locals 0

    invoke-direct {p0, p1}, Lorg/mozilla/gecko/media/Codec$InputProcessor;->onAllocate(I)Lorg/mozilla/gecko/media/Sample;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1800(Lorg/mozilla/gecko/media/Codec$InputProcessor;Lorg/mozilla/gecko/media/Sample;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/mozilla/gecko/media/Codec$InputProcessor;->onSample(Lorg/mozilla/gecko/media/Sample;)V

    return-void
.end method

.method private feedSampleToBuffer()V
    .locals 11

    :goto_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/Codec$InputProcessor;->mAvailableInputBuffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/mozilla/gecko/media/Codec$InputProcessor;->mInputSamples:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/mozilla/gecko/media/Codec$InputProcessor;->mAvailableInputBuffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lorg/mozilla/gecko/media/Codec$InputProcessor;->isValidBuffer(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/Codec$InputProcessor;->mInputSamples:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/gecko/media/Codec$Input;

    iget-object v0, v0, Lorg/mozilla/gecko/media/Codec$Input;->sample:Lorg/mozilla/gecko/media/Sample;

    iget-object v1, v0, Lorg/mozilla/gecko/media/Sample;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v8, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v7, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-object v4, v0, Lorg/mozilla/gecko/media/Sample;->cryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    invoke-virtual {v0}, Lorg/mozilla/gecko/media/Sample;->isEOS()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget v1, v0, Lorg/mozilla/gecko/media/Sample;->bufferId:I

    const/4 v5, -0x1

    if-eq v1, v5, :cond_1

    iget-object v1, v0, Lorg/mozilla/gecko/media/Sample;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-object v5, p0, Lorg/mozilla/gecko/media/Codec$InputProcessor;->this$0:Lorg/mozilla/gecko/media/Codec;

    invoke-static {v5}, Lorg/mozilla/gecko/media/Codec;->access$800(Lorg/mozilla/gecko/media/Codec;)Lorg/mozilla/gecko/media/AsyncCodec;

    move-result-object v5

    invoke-interface {v5, v2}, Lorg/mozilla/gecko/media/AsyncCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    :try_start_0
    iget-object v6, p0, Lorg/mozilla/gecko/media/Codec$InputProcessor;->this$0:Lorg/mozilla/gecko/media/Codec;

    invoke-static {v6}, Lorg/mozilla/gecko/media/Codec;->access$600(Lorg/mozilla/gecko/media/Codec;)Lorg/mozilla/gecko/media/SamplePool;

    move-result-object v6

    iget v10, v0, Lorg/mozilla/gecko/media/Sample;->bufferId:I

    invoke-virtual {v6, v10}, Lorg/mozilla/gecko/media/SamplePool;->getInputBuffer(I)Lorg/mozilla/gecko/media/SampleBuffer;

    move-result-object v6

    iget-object v10, v0, Lorg/mozilla/gecko/media/Sample;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v10, v10, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v6, v5, v10, v1}, Lorg/mozilla/gecko/media/SampleBuffer;->writeToByteBuffer(Ljava/nio/ByteBuffer;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v1

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    iget-object v1, p0, Lorg/mozilla/gecko/media/Codec$InputProcessor;->this$0:Lorg/mozilla/gecko/media/Codec;

    invoke-static {v1}, Lorg/mozilla/gecko/media/Codec;->access$600(Lorg/mozilla/gecko/media/Codec;)Lorg/mozilla/gecko/media/SamplePool;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/mozilla/gecko/media/SamplePool;->recycleInput(Lorg/mozilla/gecko/media/Sample;)V

    :cond_1
    move v0, v3

    if-eqz v4, :cond_2

    if-lez v0, :cond_2

    :try_start_1
    iget-object v0, p0, Lorg/mozilla/gecko/media/Codec$InputProcessor;->this$0:Lorg/mozilla/gecko/media/Codec;

    invoke-static {v0}, Lorg/mozilla/gecko/media/Codec;->access$800(Lorg/mozilla/gecko/media/Codec;)Lorg/mozilla/gecko/media/AsyncCodec;

    move-result-object v1

    const/4 v3, 0x0

    move-wide v5, v8

    invoke-interface/range {v1 .. v7}, Lorg/mozilla/gecko/media/AsyncCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lorg/mozilla/gecko/media/Codec$InputProcessor;->this$0:Lorg/mozilla/gecko/media/Codec;

    invoke-static {v1}, Lorg/mozilla/gecko/media/Codec;->access$800(Lorg/mozilla/gecko/media/Codec;)Lorg/mozilla/gecko/media/AsyncCodec;

    move-result-object v1

    const/4 v3, 0x0

    move v4, v0

    move-wide v5, v8

    invoke-interface/range {v1 .. v7}, Lorg/mozilla/gecko/media/AsyncCodec;->queueInputBuffer(IIIJI)V

    :goto_2
    iget-object v0, p0, Lorg/mozilla/gecko/media/Codec$InputProcessor;->this$0:Lorg/mozilla/gecko/media/Codec;

    invoke-static {v0}, Lorg/mozilla/gecko/media/Codec;->access$900(Lorg/mozilla/gecko/media/Codec;)Lorg/mozilla/gecko/media/ICodecCallbacks;

    move-result-object v0

    invoke-interface {v0, v8, v9}, Lorg/mozilla/gecko/media/ICodecCallbacks;->onInputQueued(J)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lorg/mozilla/gecko/media/Codec$InputProcessor;->this$0:Lorg/mozilla/gecko/media/Codec;

    sget-object v2, Lorg/mozilla/gecko/media/Codec$Error;->FATAL:Lorg/mozilla/gecko/media/Codec$Error;

    invoke-static {v1, v2, v0}, Lorg/mozilla/gecko/media/Codec;->access$400(Lorg/mozilla/gecko/media/Codec;Lorg/mozilla/gecko/media/Codec$Error;Ljava/lang/Exception;)V

    return-void

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :cond_3
    invoke-direct {p0}, Lorg/mozilla/gecko/media/Codec$InputProcessor;->reportPendingInputs()V

    return-void
.end method

.method private isValidBuffer(I)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/mozilla/gecko/media/Codec$InputProcessor;->this$0:Lorg/mozilla/gecko/media/Codec;

    invoke-static {v1}, Lorg/mozilla/gecko/media/Codec;->access$800(Lorg/mozilla/gecko/media/Codec;)Lorg/mozilla/gecko/media/AsyncCodec;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/mozilla/gecko/media/AsyncCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method private declared-synchronized onAllocate(I)Lorg/mozilla/gecko/media/Sample;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/Codec$InputProcessor;->this$0:Lorg/mozilla/gecko/media/Codec;

    invoke-static {v0}, Lorg/mozilla/gecko/media/Codec;->access$600(Lorg/mozilla/gecko/media/Codec;)Lorg/mozilla/gecko/media/SamplePool;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mozilla/gecko/media/SamplePool;->obtainInput(I)Lorg/mozilla/gecko/media/Sample;

    move-result-object p1

    iget-object v0, p0, Lorg/mozilla/gecko/media/Codec$InputProcessor;->this$0:Lorg/mozilla/gecko/media/Codec;

    invoke-static {v0}, Lorg/mozilla/gecko/media/Codec;->access$700(Lorg/mozilla/gecko/media/Codec;)J

    move-result-wide v0

    iput-wide v0, p1, Lorg/mozilla/gecko/media/Sample;->session:J

    iget-object v0, p0, Lorg/mozilla/gecko/media/Codec$InputProcessor;->mDequeuedSamples:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onBuffer(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/mozilla/gecko/media/Codec$InputProcessor;->mStopped:Z

    if-nez v0, :cond_3

    invoke-direct {p0, p1}, Lorg/mozilla/gecko/media/Codec$InputProcessor;->isValidBuffer(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lorg/mozilla/gecko/media/Codec$InputProcessor;->mHasInputCapacitySet:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/mozilla/gecko/media/Codec$InputProcessor;->this$0:Lorg/mozilla/gecko/media/Codec;

    invoke-static {v0}, Lorg/mozilla/gecko/media/Codec;->access$800(Lorg/mozilla/gecko/media/Codec;)Lorg/mozilla/gecko/media/AsyncCodec;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/mozilla/gecko/media/AsyncCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, Lorg/mozilla/gecko/media/Codec$InputProcessor;->this$0:Lorg/mozilla/gecko/media/Codec;

    invoke-static {v1}, Lorg/mozilla/gecko/media/Codec;->access$600(Lorg/mozilla/gecko/media/Codec;)Lorg/mozilla/gecko/media/SamplePool;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/mozilla/gecko/media/SamplePool;->setInputBufferSize(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/gecko/media/Codec$InputProcessor;->mHasInputCapacitySet:Z

    :cond_1
    iget-object v0, p0, Lorg/mozilla/gecko/media/Codec$InputProcessor;->mAvailableInputBuffers:Ljava/util/Queue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lorg/mozilla/gecko/media/Codec$InputProcessor;->feedSampleToBuffer()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/mozilla/gecko/media/Codec$InputProcessor;->this$0:Lorg/mozilla/gecko/media/Codec;

    sget-object v0, Lorg/mozilla/gecko/media/Codec$Error;->FATAL:Lorg/mozilla/gecko/media/Codec$Error;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "FAIL: input buffer queue is full"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0, v1}, Lorg/mozilla/gecko/media/Codec;->access$400(Lorg/mozilla/gecko/media/Codec;Lorg/mozilla/gecko/media/Codec$Error;Ljava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onSample(Lorg/mozilla/gecko/media/Sample;)V
    .locals 4

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lorg/mozilla/gecko/media/Codec$InputProcessor;->this$0:Lorg/mozilla/gecko/media/Codec;

    invoke-static {p1}, Lorg/mozilla/gecko/media/Codec;->access$600(Lorg/mozilla/gecko/media/Codec;)Lorg/mozilla/gecko/media/SamplePool;

    move-result-object p1

    iget-object v0, p0, Lorg/mozilla/gecko/media/Codec$InputProcessor;->mDequeuedSamples:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/gecko/media/Sample;

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/media/SamplePool;->recycleInput(Lorg/mozilla/gecko/media/Sample;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lorg/mozilla/gecko/media/Sample;->isEOS()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lorg/mozilla/gecko/media/Codec$InputProcessor;->queueSample(Lorg/mozilla/gecko/media/Sample;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-wide v0, p1, Lorg/mozilla/gecko/media/Sample;->session:J

    iget-object v2, p0, Lorg/mozilla/gecko/media/Codec$InputProcessor;->this$0:Lorg/mozilla/gecko/media/Codec;

    invoke-static {v2}, Lorg/mozilla/gecko/media/Codec;->access$700(Lorg/mozilla/gecko/media/Codec;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    iget-object v0, p0, Lorg/mozilla/gecko/media/Codec$InputProcessor;->mDequeuedSamples:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/gecko/media/Sample;

    iget-object v1, p1, Lorg/mozilla/gecko/media/Sample;->info:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v0, v1}, Lorg/mozilla/gecko/media/Sample;->setBufferInfo(Landroid/media/MediaCodec$BufferInfo;)V

    iget-object v1, p1, Lorg/mozilla/gecko/media/Sample;->cryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    invoke-virtual {v0, v1}, Lorg/mozilla/gecko/media/Sample;->setCryptoInfo(Landroid/media/MediaCodec$CryptoInfo;)V

    invoke-direct {p0, v0}, Lorg/mozilla/gecko/media/Codec$InputProcessor;->queueSample(Lorg/mozilla/gecko/media/Sample;)V

    :cond_2
    invoke-virtual {p1}, Lorg/mozilla/gecko/media/Sample;->dispose()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private queueSample(Lorg/mozilla/gecko/media/Sample;)V
    .locals 3

    iget-object v0, p0, Lorg/mozilla/gecko/media/Codec$InputProcessor;->mInputSamples:Ljava/util/Queue;

    new-instance v1, Lorg/mozilla/gecko/media/Codec$Input;

    invoke-direct {v1, p1}, Lorg/mozilla/gecko/media/Codec$Input;-><init>(Lorg/mozilla/gecko/media/Sample;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/mozilla/gecko/media/Codec$InputProcessor;->this$0:Lorg/mozilla/gecko/media/Codec;

    sget-object v0, Lorg/mozilla/gecko/media/Codec$Error;->FATAL:Lorg/mozilla/gecko/media/Codec$Error;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "FAIL: input sample queue is full"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0, v1}, Lorg/mozilla/gecko/media/Codec;->access$400(Lorg/mozilla/gecko/media/Codec;Lorg/mozilla/gecko/media/Codec$Error;Ljava/lang/Exception;)V

    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lorg/mozilla/gecko/media/Codec$InputProcessor;->feedSampleToBuffer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lorg/mozilla/gecko/media/Codec$InputProcessor;->this$0:Lorg/mozilla/gecko/media/Codec;

    sget-object v1, Lorg/mozilla/gecko/media/Codec$Error;->FATAL:Lorg/mozilla/gecko/media/Codec$Error;

    invoke-static {v0, v1, p1}, Lorg/mozilla/gecko/media/Codec;->access$400(Lorg/mozilla/gecko/media/Codec;Lorg/mozilla/gecko/media/Codec$Error;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private reportPendingInputs()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/Codec$InputProcessor;->mInputSamples:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/gecko/media/Codec$Input;

    iget-boolean v2, v1, Lorg/mozilla/gecko/media/Codec$Input;->reported:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/mozilla/gecko/media/Codec$Input;->reported:Z

    iget-object v2, p0, Lorg/mozilla/gecko/media/Codec$InputProcessor;->this$0:Lorg/mozilla/gecko/media/Codec;

    invoke-static {v2}, Lorg/mozilla/gecko/media/Codec;->access$900(Lorg/mozilla/gecko/media/Codec;)Lorg/mozilla/gecko/media/ICodecCallbacks;

    move-result-object v2

    iget-object v1, v1, Lorg/mozilla/gecko/media/Codec$Input;->sample:Lorg/mozilla/gecko/media/Sample;

    iget-object v1, v1, Lorg/mozilla/gecko/media/Sample;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v3, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-interface {v2, v3, v4}, Lorg/mozilla/gecko/media/ICodecCallbacks;->onInputPending(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-void
.end method

.method private declared-synchronized reset()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/Codec$InputProcessor;->mInputSamples:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/gecko/media/Codec$Input;

    iget-object v2, v1, Lorg/mozilla/gecko/media/Codec$Input;->sample:Lorg/mozilla/gecko/media/Sample;

    invoke-virtual {v2}, Lorg/mozilla/gecko/media/Sample;->isEOS()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/mozilla/gecko/media/Codec$InputProcessor;->this$0:Lorg/mozilla/gecko/media/Codec;

    invoke-static {v2}, Lorg/mozilla/gecko/media/Codec;->access$600(Lorg/mozilla/gecko/media/Codec;)Lorg/mozilla/gecko/media/SamplePool;

    move-result-object v2

    iget-object v1, v1, Lorg/mozilla/gecko/media/Codec$Input;->sample:Lorg/mozilla/gecko/media/Sample;

    invoke-virtual {v2, v1}, Lorg/mozilla/gecko/media/SamplePool;->recycleInput(Lorg/mozilla/gecko/media/Sample;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/mozilla/gecko/media/Codec$InputProcessor;->mInputSamples:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    iget-object v0, p0, Lorg/mozilla/gecko/media/Codec$InputProcessor;->mDequeuedSamples:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/gecko/media/Sample;

    iget-object v2, p0, Lorg/mozilla/gecko/media/Codec$InputProcessor;->this$0:Lorg/mozilla/gecko/media/Codec;

    invoke-static {v2}, Lorg/mozilla/gecko/media/Codec;->access$600(Lorg/mozilla/gecko/media/Codec;)Lorg/mozilla/gecko/media/SamplePool;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/mozilla/gecko/media/SamplePool;->recycleInput(Lorg/mozilla/gecko/media/Sample;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/mozilla/gecko/media/Codec$InputProcessor;->mDequeuedSamples:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    iget-object v0, p0, Lorg/mozilla/gecko/media/Codec$InputProcessor;->mAvailableInputBuffers:Ljava/util/Queue;

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
    iget-boolean v0, p0, Lorg/mozilla/gecko/media/Codec$InputProcessor;->mStopped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lorg/mozilla/gecko/media/Codec$InputProcessor;->mStopped:Z
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
    iget-boolean v0, p0, Lorg/mozilla/gecko/media/Codec$InputProcessor;->mStopped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lorg/mozilla/gecko/media/Codec$InputProcessor;->mStopped:Z

    invoke-direct {p0}, Lorg/mozilla/gecko/media/Codec$InputProcessor;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
