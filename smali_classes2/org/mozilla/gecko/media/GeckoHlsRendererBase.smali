.class public abstract Lorg/mozilla/gecko/media/GeckoHlsRendererBase;
.super Lf2/c;
.source "SourceFile"


# static fields
.field protected static final QUEUED_INPUT_SAMPLE_DURATION_THRESHOLD:I = 0xf4240


# instance fields
.field protected DEBUG:Z

.field protected LOGTAG:Ljava/lang/String;

.field private mBufferForRead:Li2/c;

.field protected mDemuxedInputSamples:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lorg/mozilla/gecko/media/GeckoHLSSample;",
            ">;"
        }
    .end annotation
.end field

.field protected mFirstSampleStartTime:J

.field private final mFlagsOnlyBuffer:Li2/c;

.field protected final mFormatHolder:Lf2/u;

.field protected mFormats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lf2/t;",
            ">;"
        }
    .end annotation
.end field

.field protected mInitialized:Z

.field protected mInputBuffer:Ljava/nio/ByteBuffer;

.field protected mInputStreamEnded:Z

.field protected mPlayerEventDispatcher:Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentEventDispatcher;

.field protected mWaitingForData:Z


# direct methods
.method public constructor <init>(ILorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentEventDispatcher;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lf2/c;-><init>(I)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lf2/u;

    .line 5
    .line 6
    invoke-direct {p1}, Lf2/u;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mFormatHolder:Lf2/u;

    .line 10
    .line 11
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mDemuxedInputSamples:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mInputBuffer:Ljava/nio/ByteBuffer;

    .line 20
    .line 21
    new-instance p1, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mFormats:Ljava/util/ArrayList;

    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mInitialized:Z

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mWaitingForData:Z

    .line 33
    .line 34
    iput-boolean p1, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mInputStreamEnded:Z

    .line 35
    .line 36
    const-wide/high16 v1, -0x8000000000000000L

    .line 37
    .line 38
    iput-wide v1, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mFirstSampleStartTime:J

    .line 39
    .line 40
    new-instance v1, Li2/c;

    .line 41
    .line 42
    invoke-direct {v1, v0}, Li2/c;-><init>(I)V

    .line 43
    .line 44
    .line 45
    iput-object v1, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mBufferForRead:Li2/c;

    .line 46
    .line 47
    new-instance v0, Li2/c;

    .line 48
    .line 49
    invoke-direct {v0, p1}, Li2/c;-><init>(I)V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mFlagsOnlyBuffer:Li2/c;

    .line 53
    .line 54
    iput-object p2, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mPlayerEventDispatcher:Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentEventDispatcher;

    .line 55
    .line 56
    return-void
.end method

.method private isQueuedEnoughData()Z
    .locals 7

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mDemuxedInputSamples:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mDemuxedInputSamples:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/gecko/media/GeckoHLSSample;

    iget-object v2, v2, Lorg/mozilla/gecko/media/GeckoHLSSample;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    :goto_0
    move-wide v4, v2

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mozilla/gecko/media/GeckoHLSSample;

    iget-object v4, v4, Lorg/mozilla/gecko/media/GeckoHLSSample;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v4, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    goto :goto_1

    :cond_2
    sub-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private maybeNotifyDataArrived()V
    .locals 2

    iget-boolean v0, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mWaitingForData:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->isQueuedEnoughData()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mPlayerEventDispatcher:Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentEventDispatcher;

    invoke-virtual {p0}, Lf2/c;->getTrackType()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentEventDispatcher;->onDataArrived(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mWaitingForData:Z

    :cond_0
    return-void
.end method

.method private readFormat()V
    .locals 3

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mFlagsOnlyBuffer:Li2/c;

    invoke-virtual {v0}, Li2/c;->c()V

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mFormatHolder:Lf2/u;

    iget-object v1, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mFlagsOnlyBuffer:Li2/c;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lf2/c;->readSource(Lf2/u;Li2/c;Z)I

    move-result v0

    const/4 v1, -0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mFormatHolder:Lf2/u;

    iget-object v0, v0, Lf2/u;->a:Lf2/t;

    invoke-virtual {p0, v0}, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->onInputFormatChanged(Lf2/t;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public assertTrue(Z)V
    .locals 1

    iget-boolean v0, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->DEBUG:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Expected condition to be true"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public canReconfigure(Lf2/t;Lf2/t;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public abstract clearInputSamplesQueue()Z
.end method

.method public abstract createInputBuffer()V
.end method

.method public declared-synchronized feedInputBuffersQueue()Z
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mInitialized:Z

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz v0, :cond_6

    .line 6
    .line 7
    iget-boolean v0, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mInputStreamEnded:Z

    .line 8
    .line 9
    if-nez v0, :cond_6

    .line 10
    .line 11
    invoke-direct {p0}, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->isQueuedEnoughData()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mBufferForRead:Li2/c;

    .line 19
    .line 20
    iget-object v2, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mInputBuffer:Ljava/nio/ByteBuffer;

    .line 21
    .line 22
    iput-object v2, v0, Li2/c;->d:Ljava/nio/ByteBuffer;

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Li2/c;->c()V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mBufferForRead:Li2/c;

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->handleReconfiguration(Li2/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    :try_start_1
    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mFormatHolder:Lf2/u;

    .line 35
    .line 36
    iget-object v2, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mBufferForRead:Li2/c;

    .line 37
    .line 38
    invoke-virtual {p0, v0, v2, v1}, Lf2/c;->readSource(Lf2/u;Li2/c;Z)I

    .line 39
    .line 40
    .line 41
    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    const/4 v2, -0x3

    .line 43
    if-ne v0, v2, :cond_2

    .line 44
    .line 45
    monitor-exit p0

    .line 46
    return v1

    .line 47
    :cond_2
    const/4 v2, -0x5

    .line 48
    const/4 v3, 0x1

    .line 49
    if-ne v0, v2, :cond_3

    .line 50
    .line 51
    :try_start_2
    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mBufferForRead:Li2/c;

    .line 52
    .line 53
    invoke-virtual {p0, v0}, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->handleFormatRead(Li2/c;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    .line 55
    .line 56
    monitor-exit p0

    .line 57
    return v3

    .line 58
    :cond_3
    :try_start_3
    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mBufferForRead:Li2/c;

    .line 59
    .line 60
    const/4 v2, 0x4

    .line 61
    invoke-virtual {v0, v2}, Li2/a;->b(I)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_4

    .line 66
    .line 67
    iget-boolean v0, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->DEBUG:Z

    .line 68
    .line 69
    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mBufferForRead:Li2/c;

    .line 70
    .line 71
    invoke-virtual {p0, v0}, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->handleEndOfStream(Li2/c;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 72
    .line 73
    .line 74
    monitor-exit p0

    .line 75
    return v1

    .line 76
    :cond_4
    :try_start_4
    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mBufferForRead:Li2/c;

    .line 77
    .line 78
    iget-object v1, v0, Li2/c;->d:Ljava/nio/ByteBuffer;

    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 81
    .line 82
    .line 83
    iget-object v0, v0, Li2/c;->g:Ljava/nio/ByteBuffer;

    .line 84
    .line 85
    if-eqz v0, :cond_5

    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 88
    .line 89
    .line 90
    :cond_5
    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mBufferForRead:Li2/c;

    .line 91
    .line 92
    invoke-virtual {p0, v0}, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->handleSamplePreparation(Li2/c;)V

    .line 93
    .line 94
    .line 95
    invoke-direct {p0}, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->maybeNotifyDataArrived()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 96
    .line 97
    .line 98
    monitor-exit p0

    .line 99
    return v3

    .line 100
    :catch_0
    monitor-exit p0

    .line 101
    return v1

    .line 102
    :cond_6
    :goto_0
    monitor-exit p0

    .line 103
    return v1

    .line 104
    :catchall_0
    move-exception v0

    .line 105
    monitor-exit p0

    .line 106
    throw v0
.end method

.method public declared-synchronized getFirstSamplePTS()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mFirstSampleStartTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFormat(I)Lf2/t;
    .locals 1

    .line 1
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->assertTrue(Z)V

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mFormats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mFormats:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf2/t;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iget-boolean v0, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->DEBUG:Z

    if-eqz v0, :cond_2

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :cond_2
    return-object p1
.end method

.method public declared-synchronized getQueuedSamples(I)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lorg/mozilla/gecko/media/GeckoHLSSample;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iget-object v1, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mDemuxedInputSamples:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    if-lt v2, p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mDemuxedInputSamples:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mozilla/gecko/media/GeckoHLSSample;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/gecko/media/GeckoHLSSample;

    :goto_2
    if-nez p1, :cond_3

    iget-boolean p1, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->DEBUG:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mWaitingForData:Z

    goto :goto_3

    :cond_3
    iget-wide v1, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mFirstSampleStartTime:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v1, v1, v3

    if-nez v1, :cond_4

    iget-object p1, p1, Lorg/mozilla/gecko/media/GeckoHLSSample;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v1, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v1, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mFirstSampleStartTime:J

    iget-boolean p1, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->DEBUG:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_3
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public handleDrmInitChanged(Lf2/t;Lf2/t;)V
    .locals 0

    .line 1
    iget-object p1, p2, Lf2/t;->l:Lj2/b;

    return-void
.end method

.method public abstract handleEndOfStream(Li2/c;)V
.end method

.method public abstract handleFormatRead(Li2/c;)V
.end method

.method public abstract handleReconfiguration(Li2/c;)V
.end method

.method public abstract handleSamplePreparation(Li2/c;)V
.end method

.method public isEnded()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mInputStreamEnded:Z

    return v0
.end method

.method public isReady()Z
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mFormats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public maybeInitRenderer()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mInitialized:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mFormats:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    const/4 v0, 0x1

    .line 15
    :try_start_0
    invoke-virtual {p0}, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->createInputBuffer()V

    .line 16
    .line 17
    .line 18
    iput-boolean v0, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mInitialized:Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    return-void

    .line 21
    :catch_0
    move-exception v1

    .line 22
    new-instance v4, Ljava/lang/RuntimeException;

    .line 23
    .line 24
    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lf2/c;->getIndex()I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    iget-object v1, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mFormats:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object v1, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mFormats:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    sub-int/2addr v1, v0

    .line 48
    invoke-virtual {p0, v1}, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->getFormat(I)Lf2/t;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    :goto_0
    move-object v6, v0

    .line 53
    new-instance v0, Lf2/h;

    .line 54
    .line 55
    const/4 v3, 0x1

    .line 56
    const/4 v7, 0x4

    .line 57
    move-object v2, v0

    .line 58
    invoke-direct/range {v2 .. v7}, Lf2/h;-><init>(ILjava/lang/Throwable;ILf2/t;I)V

    .line 59
    .line 60
    .line 61
    throw v0

    .line 62
    :cond_2
    :goto_1
    return-void
.end method

.method public abstract notifyPlayerInputFormatChanged(Lf2/t;)V
.end method

.method public onDisabled()V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mFormats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->resetRenderer()V

    return-void
.end method

.method public onEnabled(Z)V
    .locals 0

    return-void
.end method

.method public onInputFormatChanged(Lf2/t;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mFormats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf2/t;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->DEBUG:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mFormats:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0, p1}, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->handleDrmInitChanged(Lf2/t;Lf2/t;)V

    iget-boolean v1, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mInitialized:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0, p1}, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->canReconfigure(Lf2/t;Lf2/t;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->prepareReconfiguration()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->resetRenderer()V

    invoke-virtual {p0}, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->maybeInitRenderer()V

    :goto_1
    invoke-virtual {p0, p1}, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->updateCSDInfo(Lf2/t;)V

    invoke-virtual {p0, p1}, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->notifyPlayerInputFormatChanged(Lf2/t;)V

    return-void
.end method

.method public declared-synchronized onPositionReset(JZ)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iget-boolean p1, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->DEBUG:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mInputStreamEnded:Z

    iget-boolean p1, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mInitialized:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->clearInputSamplesQueue()Z
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

.method public prepareReconfiguration()V
    .locals 0

    return-void
.end method

.method public render(JJ)V
    .locals 0

    iget-boolean p1, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mInputStreamEnded:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mFormats:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->readFormat()V

    :cond_1
    invoke-virtual {p0}, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->maybeInitRenderer()V

    :goto_0
    invoke-virtual {p0}, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->feedInputBuffersQueue()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    return-void
.end method

.method public abstract resetRenderer()V
.end method

.method public bridge synthetic setOperatingRate(F)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract synthetic supportsFormat(Lf2/t;)I
.end method

.method public updateCSDInfo(Lf2/t;)V
    .locals 0

    .line 1
    return-void
.end method
