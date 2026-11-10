.class public Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer;
.super Lorg/mozilla/gecko/media/GeckoHlsRendererBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$CodecMaxValues;,
        Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$RECONFIGURATION_STATE;
    }
.end annotation


# instance fields
.field private mCSDInfo:[B

.field private mCodecMaxValues:Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$CodecMaxValues;

.field private mDemuxedNoDurationSamples:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lorg/mozilla/gecko/media/GeckoHLSSample;",
            ">;"
        }
    .end annotation
.end field

.field private mRendererReconfigurationState:Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$RECONFIGURATION_STATE;

.field private mRendererReconfigured:Z

.field private mStreamFormats:[Lf2/t;


# direct methods
.method public constructor <init>(Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentEventDispatcher;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;-><init>(ILorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentEventDispatcher;)V

    sget-object p1, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$RECONFIGURATION_STATE;->NONE:Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$RECONFIGURATION_STATE;

    iput-object p1, p0, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer;->mRendererReconfigurationState:Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$RECONFIGURATION_STATE;

    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer;->mDemuxedNoDurationSamples:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer;->mCSDInfo:[B

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->assertTrue(Z)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->LOGTAG:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->DEBUG:Z

    return-void
.end method

.method private static areAdaptationCompatible(Lf2/t;Lf2/t;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lf2/t;->i:Ljava/lang/String;

    iget-object v1, p1, Lf2/t;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer;->getRotationDegrees(Lf2/t;)I

    move-result p0

    invoke-static {p1}, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer;->getRotationDegrees(Lf2/t;)I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private calculatDuration(Lorg/mozilla/gecko/media/GeckoHLSSample;)V
    .locals 6

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer;->mDemuxedNoDurationSamples:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    :cond_0
    iget-object p1, p0, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer;->mDemuxedNoDurationSamples:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result p1

    const/16 v0, 0x11

    if-lt p1, v0, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, p1

    :goto_0
    iget-object v2, p0, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer;->mDemuxedNoDurationSamples:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-array v3, p1, [Lorg/mozilla/gecko/media/GeckoHLSSample;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/mozilla/gecko/media/GeckoHLSSample;

    if-lt v1, v0, :cond_2

    iget-boolean v0, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mInputStreamEnded:Z

    if-nez v0, :cond_2

    invoke-direct {p0, v2, v1}, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer;->calculateSamplesWithin([Lorg/mozilla/gecko/media/GeckoHLSSample;I)V

    iget-object p1, p0, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer;->mDemuxedNoDurationSamples:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/gecko/media/GeckoHLSSample;

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mDemuxedInputSamples:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    iget-boolean v0, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mInputStreamEnded:Z

    if-eqz v0, :cond_5

    invoke-direct {p0, v2, p1}, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer;->calculateSamplesWithin([Lorg/mozilla/gecko/media/GeckoHLSSample;I)V

    iget-object p1, p0, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer;->mDemuxedNoDurationSamples:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/gecko/media/GeckoHLSSample;

    const-wide/32 v0, 0x8235

    :goto_1
    if-eqz p1, :cond_5

    iget-wide v2, p1, Lorg/mozilla/gecko/media/GeckoHLSSample;->duration:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iput-wide v0, p1, Lorg/mozilla/gecko/media/GeckoHLSSample;->duration:J

    :cond_3
    iget-wide v0, p1, Lorg/mozilla/gecko/media/GeckoHLSSample;->duration:J

    iget-boolean v2, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->DEBUG:Z

    if-eqz v2, :cond_4

    iget-object v2, p1, Lorg/mozilla/gecko/media/GeckoHLSSample;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {p1}, Lorg/mozilla/gecko/media/GeckoHLSSample;->isEOS()Z

    :cond_4
    iget-object v2, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mDemuxedInputSamples:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer;->mDemuxedNoDurationSamples:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/gecko/media/GeckoHLSSample;

    goto :goto_1

    :cond_5
    :goto_2
    return-void
.end method

.method private calculateSamplesWithin([Lorg/mozilla/gecko/media/GeckoHLSSample;I)V
    .locals 9

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    const/4 v1, -0x2

    :goto_1
    const/16 v2, 0xe

    if-ge v1, v2, :cond_1

    add-int v2, v0, v1

    if-ltz v2, :cond_0

    if-ge v2, p2, :cond_0

    aget-object v2, p1, v2

    iget-object v2, v2, Lorg/mozilla/gecko/media/GeckoHLSSample;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    aget-object v4, p1, v0

    iget-object v5, v4, Lorg/mozilla/gecko/media/GeckoHLSSample;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v5, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v7, v2, v5

    if-lez v7, :cond_0

    iget-wide v7, v4, Lorg/mozilla/gecko/media/GeckoHLSSample;->duration:J

    sub-long/2addr v2, v5

    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, v4, Lorg/mozilla/gecko/media/GeckoHLSSample;->duration:J

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static getCodecMaxValues(Lf2/t;[Lf2/t;)Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$CodecMaxValues;
    .locals 7

    .line 1
    iget v0, p0, Lf2/t;->n:I

    invoke-static {p0}, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer;->getMaxInputSize(Lf2/t;)I

    move-result v1

    array-length v2, p1

    iget v3, p0, Lf2/t;->o:I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, p1, v4

    invoke-static {p0, v5}, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer;->areAdaptationCompatible(Lf2/t;Lf2/t;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, v5, Lf2/t;->n:I

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v6, v5, Lf2/t;->o:I

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v5}, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer;->getMaxInputSize(Lf2/t;)I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$CodecMaxValues;

    invoke-direct {p0, v0, v3, v1}, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$CodecMaxValues;-><init>(III)V

    return-object p0
.end method

.method private static getMaxInputSize(Lf2/t;)I
    .locals 4

    .line 1
    iget v0, p0, Lf2/t;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lf2/t;->n:I

    if-eq v0, v1, :cond_3

    iget v2, p0, Lf2/t;->o:I

    if-ne v2, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lf2/t;->i:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "video/avc"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0xf

    div-int/lit8 v0, v0, 0x10

    add-int/lit8 v2, v2, 0xf

    div-int/lit8 v2, v2, 0x10

    mul-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x10

    mul-int/lit8 v2, v2, 0x10

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    return v2

    :cond_3
    :goto_0
    return v1
.end method

.method private static getRotationDegrees(Lf2/t;)I
    .locals 1

    .line 1
    iget p0, p0, Lf2/t;->q:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method


# virtual methods
.method public canReconfigure(Lf2/t;Lf2/t;)Z
    .locals 2

    .line 1
    invoke-static {p1, p2}, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer;->areAdaptationCompatible(Lf2/t;Lf2/t;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p2, Lf2/t;->n:I

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer;->mCodecMaxValues:Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$CodecMaxValues;

    iget v1, v0, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$CodecMaxValues;->width:I

    if-gt p1, v1, :cond_0

    iget p1, p2, Lf2/t;->o:I

    iget v1, v0, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$CodecMaxValues;->height:I

    if-gt p1, v1, :cond_0

    iget p1, p2, Lf2/t;->j:I

    iget p2, v0, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$CodecMaxValues;->inputSize:I

    if-gt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public clearInputSamplesQueue()Z
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mDemuxedInputSamples:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer;->mDemuxedNoDurationSamples:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    const/4 v0, 0x1

    return v0
.end method

.method public final createInputBuffer()V
    .locals 9

    .line 1
    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mFormats:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    move v0, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    invoke-virtual {p0, v0}, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->assertTrue(Z)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mFormats:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    sub-int/2addr v2, v1

    .line 23
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lf2/t;

    .line 28
    .line 29
    iget-object v2, p0, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer;->mStreamFormats:[Lf2/t;

    .line 30
    .line 31
    invoke-static {v0, v2}, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer;->getCodecMaxValues(Lf2/t;[Lf2/t;)Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$CodecMaxValues;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer;->mCodecMaxValues:Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$CodecMaxValues;

    .line 36
    .line 37
    :try_start_0
    iget v0, v0, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$CodecMaxValues;->inputSize:I

    .line 38
    .line 39
    new-array v0, v0, [B

    .line 40
    .line 41
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iput-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mInputBuffer:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    iget-object v2, p0, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer;->mCodecMaxValues:Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$CodecMaxValues;

    .line 50
    .line 51
    iget v2, v2, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$CodecMaxValues;->inputSize:I

    .line 52
    .line 53
    new-instance v5, Ljava/lang/Exception;

    .line 54
    .line 55
    invoke-direct {v5, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lf2/c;->getIndex()I

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mFormats:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_1

    .line 69
    .line 70
    const/4 v0, 0x0

    .line 71
    goto :goto_1

    .line 72
    :cond_1
    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mFormats:Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    sub-int/2addr v0, v1

    .line 79
    invoke-virtual {p0, v0}, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->getFormat(I)Lf2/t;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    :goto_1
    move-object v7, v0

    .line 84
    new-instance v0, Lf2/h;

    .line 85
    .line 86
    const/4 v4, 0x1

    .line 87
    const/4 v8, 0x4

    .line 88
    move-object v3, v0

    .line 89
    invoke-direct/range {v3 .. v8}, Lf2/h;-><init>(ILjava/lang/Throwable;ILf2/t;I)V

    .line 90
    .line 91
    .line 92
    throw v0
.end method

.method public getNextKeyFrameTime()J
    .locals 3

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mDemuxedInputSamples:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/gecko/media/GeckoHLSSample;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lorg/mozilla/gecko/media/GeckoHLSSample;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    iget-wide v0, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    goto :goto_0

    :cond_1
    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    return-wide v0
.end method

.method public handleEndOfStream(Li2/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer;->mRendererReconfigurationState:Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$RECONFIGURATION_STATE;

    sget-object v1, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$RECONFIGURATION_STATE;->QUEUE_PENDING:Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$RECONFIGURATION_STATE;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Li2/c;->c()V

    sget-object p1, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$RECONFIGURATION_STATE;->WRITE_PENDING:Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$RECONFIGURATION_STATE;

    iput-object p1, p0, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer;->mRendererReconfigurationState:Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$RECONFIGURATION_STATE;

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mInputStreamEnded:Z

    sget-object p1, Lorg/mozilla/gecko/media/GeckoHLSSample;->EOS:Lorg/mozilla/gecko/media/GeckoHLSSample;

    invoke-direct {p0, p1}, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer;->calculatDuration(Lorg/mozilla/gecko/media/GeckoHLSSample;)V

    return-void
.end method

.method public handleFormatRead(Li2/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer;->mRendererReconfigurationState:Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$RECONFIGURATION_STATE;

    sget-object v1, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$RECONFIGURATION_STATE;->QUEUE_PENDING:Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$RECONFIGURATION_STATE;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Li2/c;->c()V

    sget-object p1, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$RECONFIGURATION_STATE;->WRITE_PENDING:Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$RECONFIGURATION_STATE;

    iput-object p1, p0, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer;->mRendererReconfigurationState:Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$RECONFIGURATION_STATE;

    :cond_0
    iget-object p1, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mFormatHolder:Lf2/u;

    iget-object p1, p1, Lf2/u;->a:Lf2/t;

    invoke-virtual {p0, p1}, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->onInputFormatChanged(Lf2/t;)V

    return-void
.end method

.method public handleReconfiguration(Li2/c;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mFormats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->assertTrue(Z)V

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer;->mRendererReconfigurationState:Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$RECONFIGURATION_STATE;

    sget-object v3, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$RECONFIGURATION_STATE;->WRITE_PENDING:Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$RECONFIGURATION_STATE;

    if-ne v0, v3, :cond_3

    iget-object v0, p1, Li2/c;->d:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mFormats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf2/t;

    :goto_1
    iget-object v2, v0, Lf2/t;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, v0, Lf2/t;->k:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iget-object v3, p1, Li2/c;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    sget-object p1, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$RECONFIGURATION_STATE;->QUEUE_PENDING:Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$RECONFIGURATION_STATE;

    iput-object p1, p0, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer;->mRendererReconfigurationState:Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$RECONFIGURATION_STATE;

    :cond_3
    return-void
.end method

.method public handleSamplePreparation(Li2/c;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer;->mCSDInfo:[B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    array-length v0, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v0, v1

    .line 9
    :goto_0
    iget-object v2, p1, Li2/c;->d:Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-virtual {p1, v3}, Li2/a;->b(I)Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-eqz v4, :cond_1

    .line 21
    .line 22
    add-int v4, v0, v2

    .line 23
    .line 24
    move v7, v4

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    move v7, v2

    .line 27
    :goto_1
    new-array v4, v7, [B

    .line 28
    .line 29
    invoke-virtual {p1, v3}, Li2/a;->b(I)Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-eqz v5, :cond_2

    .line 34
    .line 35
    iget-object v5, p0, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer;->mCSDInfo:[B

    .line 36
    .line 37
    invoke-static {v5, v1, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    .line 39
    .line 40
    iget-object v5, p1, Li2/c;->d:Ljava/nio/ByteBuffer;

    .line 41
    .line 42
    invoke-virtual {v5, v4, v0, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 43
    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    iget-object v0, p1, Li2/c;->d:Ljava/nio/ByteBuffer;

    .line 47
    .line 48
    invoke-virtual {v0, v4, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 49
    .line 50
    .line 51
    :goto_2
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget-object v2, p1, Li2/c;->d:Ljava/nio/ByteBuffer;

    .line 56
    .line 57
    iput-object v2, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mInputBuffer:Ljava/nio/ByteBuffer;

    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 60
    .line 61
    .line 62
    const/high16 v2, 0x40000000    # 2.0f

    .line 63
    .line 64
    invoke-virtual {p1, v2}, Li2/a;->b(I)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_3

    .line 69
    .line 70
    iget-object v2, p1, Li2/c;->c:Li2/b;

    .line 71
    .line 72
    iget-object v2, v2, Li2/b;->d:Landroid/media/MediaCodec$CryptoInfo;

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_3
    const/4 v2, 0x0

    .line 76
    :goto_3
    new-instance v4, Landroid/media/MediaCodec$BufferInfo;

    .line 77
    .line 78
    invoke-direct {v4}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v3}, Li2/a;->b(I)Z

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    or-int/2addr v5, v1

    .line 86
    const/4 v6, 0x4

    .line 87
    invoke-virtual {p1, v6}, Li2/a;->b(I)Z

    .line 88
    .line 89
    .line 90
    move-result v8

    .line 91
    if-eqz v8, :cond_4

    .line 92
    .line 93
    goto :goto_4

    .line 94
    :cond_4
    move v6, v1

    .line 95
    :goto_4
    or-int v10, v5, v6

    .line 96
    .line 97
    const/4 v6, 0x0

    .line 98
    iget-wide v8, p1, Li2/c;->f:J

    .line 99
    .line 100
    move-object v5, v4

    .line 101
    invoke-virtual/range {v5 .. v10}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mFormats:Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    if-lez p1, :cond_5

    .line 111
    .line 112
    move v1, v3

    .line 113
    :cond_5
    invoke-virtual {p0, v1}, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->assertTrue(Z)V

    .line 114
    .line 115
    .line 116
    iget-object p1, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mFormats:Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    sub-int/2addr p1, v3

    .line 123
    invoke-static {v0, v4, v2, p1}, Lorg/mozilla/gecko/media/GeckoHLSSample;->create(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Landroid/media/MediaCodec$CryptoInfo;I)Lorg/mozilla/gecko/media/GeckoHLSSample;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-direct {p0, p1}, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer;->calculatDuration(Lorg/mozilla/gecko/media/GeckoHLSSample;)V

    .line 128
    .line 129
    .line 130
    sget-object p1, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$RECONFIGURATION_STATE;->NONE:Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$RECONFIGURATION_STATE;

    .line 131
    .line 132
    iput-object p1, p0, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer;->mRendererReconfigurationState:Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$RECONFIGURATION_STATE;

    .line 133
    .line 134
    return-void
.end method

.method public notifyPlayerInputFormatChanged(Lf2/t;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mPlayerEventDispatcher:Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentEventDispatcher;

    invoke-virtual {v0, p1}, Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentEventDispatcher;->onVideoInputFormatChanged(Lf2/t;)V

    return-void
.end method

.method public onPositionReset(JZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->onPositionReset(JZ)V

    iget-boolean p1, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mInitialized:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer;->mRendererReconfigured:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mFormats:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$RECONFIGURATION_STATE;->WRITE_PENDING:Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$RECONFIGURATION_STATE;

    iput-object p1, p0, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer;->mRendererReconfigurationState:Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$RECONFIGURATION_STATE;

    :cond_0
    return-void
.end method

.method public onStreamChanged([Lf2/t;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer;->mStreamFormats:[Lf2/t;

    return-void
.end method

.method public prepareReconfiguration()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer;->mRendererReconfigured:Z

    sget-object v0, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$RECONFIGURATION_STATE;->WRITE_PENDING:Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$RECONFIGURATION_STATE;

    iput-object v0, p0, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer;->mRendererReconfigurationState:Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$RECONFIGURATION_STATE;

    return-void
.end method

.method public resetRenderer()V
    .locals 2

    iget-boolean v0, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mInitialized:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer;->mRendererReconfigured:Z

    sget-object v1, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$RECONFIGURATION_STATE;->NONE:Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$RECONFIGURATION_STATE;

    iput-object v1, p0, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer;->mRendererReconfigurationState:Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$RECONFIGURATION_STATE;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mInputBuffer:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer;->mCSDInfo:[B

    iput-boolean v0, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->mInitialized:Z

    :cond_0
    return-void
.end method

.method public bridge synthetic setOperatingRate(F)V
    .locals 0

    .line 1
    return-void
.end method

.method public final supportsFormat(Lf2/t;)I
    .locals 17

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    iget-object v0, v1, Lf2/t;->i:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0}, Lb3/c;->f(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    return v3

    .line 13
    :cond_0
    :try_start_0
    invoke-static {v0}, Lo2/g;->c(Ljava/lang/String;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0
    :try_end_0
    .catch Lo2/d; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    move-object v4, v0

    .line 20
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    :goto_0
    const/4 v4, 0x1

    .line 25
    if-eqz v0, :cond_37

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-eqz v5, :cond_1

    .line 32
    .line 33
    goto/16 :goto_10

    .line 34
    .line 35
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    move v5, v3

    .line 40
    const/4 v6, 0x0

    .line 41
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    const/4 v9, 0x3

    .line 46
    const/4 v10, 0x4

    .line 47
    const/16 v11, 0x10

    .line 48
    .line 49
    if-eqz v7, :cond_2d

    .line 50
    .line 51
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    check-cast v7, Lo2/a;

    .line 56
    .line 57
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    iget-object v12, v1, Lf2/t;->f:Ljava/lang/String;

    .line 61
    .line 62
    if-eqz v12, :cond_2c

    .line 63
    .line 64
    iget-object v13, v7, Lo2/a;->b:Ljava/lang/String;

    .line 65
    .line 66
    if-nez v13, :cond_3

    .line 67
    .line 68
    goto/16 :goto_b

    .line 69
    .line 70
    :cond_3
    invoke-static {v12}, Lb3/c;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v14

    .line 74
    if-nez v14, :cond_4

    .line 75
    .line 76
    goto/16 :goto_b

    .line 77
    .line 78
    :cond_4
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v13

    .line 82
    if-nez v13, :cond_5

    .line 83
    .line 84
    sget v8, Lb3/n;->a:I

    .line 85
    .line 86
    goto/16 :goto_a

    .line 87
    .line 88
    :cond_5
    sget-object v13, Lo2/g;->a:Ljava/util/regex/Pattern;

    .line 89
    .line 90
    const-string v13, "\\."

    .line 91
    .line 92
    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v12

    .line 96
    const-string v13, "video/dolby-vision"

    .line 97
    .line 98
    iget-object v14, v1, Lf2/t;->i:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v13

    .line 104
    sget-object v14, Lo2/g;->a:Ljava/util/regex/Pattern;

    .line 105
    .line 106
    const/4 v15, 0x2

    .line 107
    if-eqz v13, :cond_a

    .line 108
    .line 109
    array-length v8, v12

    .line 110
    if-ge v8, v9, :cond_6

    .line 111
    .line 112
    goto/16 :goto_7

    .line 113
    .line 114
    :cond_6
    aget-object v8, v12, v4

    .line 115
    .line 116
    invoke-virtual {v14, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 117
    .line 118
    .line 119
    move-result-object v8

    .line 120
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    .line 121
    .line 122
    .line 123
    move-result v9

    .line 124
    if-nez v9, :cond_7

    .line 125
    .line 126
    goto/16 :goto_7

    .line 127
    .line 128
    :cond_7
    invoke-virtual {v8, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v8

    .line 132
    sget-object v9, Lo2/g;->h:Ljava/util/HashMap;

    .line 133
    .line 134
    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v8

    .line 138
    check-cast v8, Ljava/lang/Integer;

    .line 139
    .line 140
    if-nez v8, :cond_8

    .line 141
    .line 142
    goto/16 :goto_7

    .line 143
    .line 144
    :cond_8
    aget-object v9, v12, v15

    .line 145
    .line 146
    sget-object v10, Lo2/g;->i:Ljava/util/HashMap;

    .line 147
    .line 148
    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v9

    .line 152
    check-cast v9, Ljava/lang/Integer;

    .line 153
    .line 154
    if-nez v9, :cond_9

    .line 155
    .line 156
    goto/16 :goto_7

    .line 157
    .line 158
    :cond_9
    new-instance v10, Landroid/util/Pair;

    .line 159
    .line 160
    invoke-direct {v10, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    goto/16 :goto_8

    .line 164
    .line 165
    :cond_a
    aget-object v13, v12, v3

    .line 166
    .line 167
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    .line 171
    .line 172
    .line 173
    move-result v16

    .line 174
    const/4 v2, -0x1

    .line 175
    sparse-switch v16, :sswitch_data_0

    .line 176
    .line 177
    .line 178
    :goto_2
    move v8, v2

    .line 179
    goto :goto_3

    .line 180
    :sswitch_0
    const-string v8, "vp09"

    .line 181
    .line 182
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v8

    .line 186
    if-nez v8, :cond_b

    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_b
    const/4 v8, 0x6

    .line 190
    goto :goto_3

    .line 191
    :sswitch_1
    const-string v8, "mp4a"

    .line 192
    .line 193
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v8

    .line 197
    if-nez v8, :cond_c

    .line 198
    .line 199
    goto :goto_2

    .line 200
    :cond_c
    const/4 v8, 0x5

    .line 201
    goto :goto_3

    .line 202
    :sswitch_2
    const-string v8, "hvc1"

    .line 203
    .line 204
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v8

    .line 208
    if-nez v8, :cond_d

    .line 209
    .line 210
    goto :goto_2

    .line 211
    :cond_d
    move v8, v10

    .line 212
    goto :goto_3

    .line 213
    :sswitch_3
    const-string v8, "hev1"

    .line 214
    .line 215
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v8

    .line 219
    if-nez v8, :cond_e

    .line 220
    .line 221
    goto :goto_2

    .line 222
    :cond_e
    move v8, v9

    .line 223
    goto :goto_3

    .line 224
    :sswitch_4
    const-string v8, "avc2"

    .line 225
    .line 226
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v8

    .line 230
    if-nez v8, :cond_f

    .line 231
    .line 232
    goto :goto_2

    .line 233
    :cond_f
    move v8, v15

    .line 234
    goto :goto_3

    .line 235
    :sswitch_5
    const-string v8, "avc1"

    .line 236
    .line 237
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v8

    .line 241
    if-nez v8, :cond_10

    .line 242
    .line 243
    goto :goto_2

    .line 244
    :cond_10
    move v8, v4

    .line 245
    goto :goto_3

    .line 246
    :sswitch_6
    const-string v8, "av01"

    .line 247
    .line 248
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result v8

    .line 252
    if-nez v8, :cond_11

    .line 253
    .line 254
    goto :goto_2

    .line 255
    :cond_11
    move v8, v3

    .line 256
    :goto_3
    packed-switch v8, :pswitch_data_0

    .line 257
    .line 258
    .line 259
    goto/16 :goto_7

    .line 260
    .line 261
    :pswitch_0
    array-length v8, v12

    .line 262
    if-ge v8, v9, :cond_12

    .line 263
    .line 264
    goto/16 :goto_7

    .line 265
    .line 266
    :cond_12
    :try_start_1
    aget-object v8, v12, v4

    .line 267
    .line 268
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 269
    .line 270
    .line 271
    move-result v8

    .line 272
    aget-object v9, v12, v15

    .line 273
    .line 274
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 275
    .line 276
    .line 277
    move-result v9
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 278
    sget-object v10, Lo2/g;->e:Landroid/util/SparseIntArray;

    .line 279
    .line 280
    invoke-virtual {v10, v8, v2}, Landroid/util/SparseIntArray;->get(II)I

    .line 281
    .line 282
    .line 283
    move-result v8

    .line 284
    if-ne v8, v2, :cond_13

    .line 285
    .line 286
    goto/16 :goto_7

    .line 287
    .line 288
    :cond_13
    sget-object v10, Lo2/g;->f:Landroid/util/SparseIntArray;

    .line 289
    .line 290
    invoke-virtual {v10, v9, v2}, Landroid/util/SparseIntArray;->get(II)I

    .line 291
    .line 292
    .line 293
    move-result v9

    .line 294
    if-ne v9, v2, :cond_14

    .line 295
    .line 296
    goto/16 :goto_7

    .line 297
    .line 298
    :cond_14
    new-instance v10, Landroid/util/Pair;

    .line 299
    .line 300
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 305
    .line 306
    .line 307
    move-result-object v8

    .line 308
    invoke-direct {v10, v2, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 309
    .line 310
    .line 311
    goto/16 :goto_8

    .line 312
    .line 313
    :pswitch_1
    array-length v8, v12

    .line 314
    if-eq v8, v9, :cond_15

    .line 315
    .line 316
    goto/16 :goto_7

    .line 317
    .line 318
    :cond_15
    :try_start_2
    aget-object v8, v12, v4

    .line 319
    .line 320
    invoke-static {v8, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 321
    .line 322
    .line 323
    move-result v8

    .line 324
    invoke-static {v8}, Lb3/c;->b(I)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v8

    .line 328
    const-string v9, "audio/mp4a-latm"

    .line 329
    .line 330
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    move-result v8

    .line 334
    if-eqz v8, :cond_25

    .line 335
    .line 336
    aget-object v8, v12, v15

    .line 337
    .line 338
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 339
    .line 340
    .line 341
    move-result v8

    .line 342
    sget-object v9, Lo2/g;->k:Landroid/util/SparseIntArray;

    .line 343
    .line 344
    invoke-virtual {v9, v8, v2}, Landroid/util/SparseIntArray;->get(II)I

    .line 345
    .line 346
    .line 347
    move-result v8

    .line 348
    if-eq v8, v2, :cond_25

    .line 349
    .line 350
    new-instance v10, Landroid/util/Pair;

    .line 351
    .line 352
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 353
    .line 354
    .line 355
    move-result-object v2

    .line 356
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 357
    .line 358
    .line 359
    move-result-object v8

    .line 360
    invoke-direct {v10, v2, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 361
    .line 362
    .line 363
    goto/16 :goto_8

    .line 364
    .line 365
    :pswitch_2
    array-length v2, v12

    .line 366
    if-ge v2, v10, :cond_16

    .line 367
    .line 368
    goto/16 :goto_7

    .line 369
    .line 370
    :cond_16
    aget-object v2, v12, v4

    .line 371
    .line 372
    invoke-virtual {v14, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 373
    .line 374
    .line 375
    move-result-object v2

    .line 376
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    .line 377
    .line 378
    .line 379
    move-result v8

    .line 380
    if-nez v8, :cond_17

    .line 381
    .line 382
    goto/16 :goto_7

    .line 383
    .line 384
    :cond_17
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v2

    .line 388
    const-string v8, "1"

    .line 389
    .line 390
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 391
    .line 392
    .line 393
    move-result v8

    .line 394
    if-eqz v8, :cond_18

    .line 395
    .line 396
    move v15, v4

    .line 397
    goto :goto_4

    .line 398
    :cond_18
    const-string v8, "2"

    .line 399
    .line 400
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 401
    .line 402
    .line 403
    move-result v2

    .line 404
    if-eqz v2, :cond_25

    .line 405
    .line 406
    :goto_4
    aget-object v2, v12, v9

    .line 407
    .line 408
    sget-object v8, Lo2/g;->g:Ljava/util/HashMap;

    .line 409
    .line 410
    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    .line 412
    .line 413
    move-result-object v2

    .line 414
    check-cast v2, Ljava/lang/Integer;

    .line 415
    .line 416
    if-nez v2, :cond_19

    .line 417
    .line 418
    goto/16 :goto_7

    .line 419
    .line 420
    :cond_19
    new-instance v10, Landroid/util/Pair;

    .line 421
    .line 422
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 423
    .line 424
    .line 425
    move-result-object v8

    .line 426
    invoke-direct {v10, v8, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 427
    .line 428
    .line 429
    goto/16 :goto_8

    .line 430
    .line 431
    :pswitch_3
    array-length v8, v12

    .line 432
    if-ge v8, v15, :cond_1a

    .line 433
    .line 434
    goto/16 :goto_7

    .line 435
    .line 436
    :cond_1a
    :try_start_3
    aget-object v8, v12, v4

    .line 437
    .line 438
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 439
    .line 440
    .line 441
    move-result v8

    .line 442
    const/4 v13, 0x6

    .line 443
    if-ne v8, v13, :cond_1b

    .line 444
    .line 445
    aget-object v8, v12, v4

    .line 446
    .line 447
    invoke-virtual {v8, v3, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v8

    .line 451
    invoke-static {v8, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 452
    .line 453
    .line 454
    move-result v8

    .line 455
    aget-object v9, v12, v4

    .line 456
    .line 457
    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v9

    .line 461
    invoke-static {v9, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 462
    .line 463
    .line 464
    move-result v9

    .line 465
    goto :goto_5

    .line 466
    :cond_1b
    array-length v8, v12

    .line 467
    if-lt v8, v9, :cond_25

    .line 468
    .line 469
    aget-object v8, v12, v4

    .line 470
    .line 471
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 472
    .line 473
    .line 474
    move-result v8

    .line 475
    aget-object v9, v12, v15

    .line 476
    .line 477
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 478
    .line 479
    .line 480
    move-result v9
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    .line 481
    :goto_5
    sget-object v10, Lo2/g;->c:Landroid/util/SparseIntArray;

    .line 482
    .line 483
    invoke-virtual {v10, v8, v2}, Landroid/util/SparseIntArray;->get(II)I

    .line 484
    .line 485
    .line 486
    move-result v8

    .line 487
    if-ne v8, v2, :cond_1c

    .line 488
    .line 489
    goto/16 :goto_7

    .line 490
    .line 491
    :cond_1c
    sget-object v10, Lo2/g;->d:Landroid/util/SparseIntArray;

    .line 492
    .line 493
    invoke-virtual {v10, v9, v2}, Landroid/util/SparseIntArray;->get(II)I

    .line 494
    .line 495
    .line 496
    move-result v9

    .line 497
    if-ne v9, v2, :cond_1d

    .line 498
    .line 499
    goto :goto_7

    .line 500
    :cond_1d
    new-instance v10, Landroid/util/Pair;

    .line 501
    .line 502
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 503
    .line 504
    .line 505
    move-result-object v2

    .line 506
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 507
    .line 508
    .line 509
    move-result-object v8

    .line 510
    invoke-direct {v10, v2, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 511
    .line 512
    .line 513
    goto :goto_8

    .line 514
    :pswitch_4
    array-length v8, v12

    .line 515
    if-ge v8, v10, :cond_1e

    .line 516
    .line 517
    goto :goto_7

    .line 518
    :cond_1e
    :try_start_4
    aget-object v8, v12, v4

    .line 519
    .line 520
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 521
    .line 522
    .line 523
    move-result v8

    .line 524
    aget-object v10, v12, v15

    .line 525
    .line 526
    invoke-virtual {v10, v3, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v10

    .line 530
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 531
    .line 532
    .line 533
    move-result v10

    .line 534
    aget-object v9, v12, v9

    .line 535
    .line 536
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 537
    .line 538
    .line 539
    move-result v9
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1

    .line 540
    if-eqz v8, :cond_1f

    .line 541
    .line 542
    goto :goto_7

    .line 543
    :cond_1f
    const/16 v8, 0x8

    .line 544
    .line 545
    if-eq v9, v8, :cond_20

    .line 546
    .line 547
    const/16 v11, 0xa

    .line 548
    .line 549
    if-eq v9, v11, :cond_20

    .line 550
    .line 551
    goto :goto_7

    .line 552
    :cond_20
    if-ne v9, v8, :cond_21

    .line 553
    .line 554
    move v15, v4

    .line 555
    goto :goto_6

    .line 556
    :cond_21
    iget-object v8, v1, Lf2/t;->u:Lc3/a;

    .line 557
    .line 558
    if-eqz v8, :cond_23

    .line 559
    .line 560
    iget-object v9, v8, Lc3/a;->d:[B

    .line 561
    .line 562
    if-nez v9, :cond_22

    .line 563
    .line 564
    const/4 v9, 0x7

    .line 565
    iget v8, v8, Lc3/a;->c:I

    .line 566
    .line 567
    if-eq v8, v9, :cond_22

    .line 568
    .line 569
    const/4 v9, 0x6

    .line 570
    if-ne v8, v9, :cond_23

    .line 571
    .line 572
    :cond_22
    const/16 v15, 0x1000

    .line 573
    .line 574
    :cond_23
    :goto_6
    sget-object v8, Lo2/g;->j:Landroid/util/SparseIntArray;

    .line 575
    .line 576
    invoke-virtual {v8, v10, v2}, Landroid/util/SparseIntArray;->get(II)I

    .line 577
    .line 578
    .line 579
    move-result v8

    .line 580
    if-ne v8, v2, :cond_24

    .line 581
    .line 582
    goto :goto_7

    .line 583
    :cond_24
    new-instance v10, Landroid/util/Pair;

    .line 584
    .line 585
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 586
    .line 587
    .line 588
    move-result-object v2

    .line 589
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 590
    .line 591
    .line 592
    move-result-object v8

    .line 593
    invoke-direct {v10, v2, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 594
    .line 595
    .line 596
    goto :goto_8

    .line 597
    :catch_1
    :cond_25
    :goto_7
    const/4 v10, 0x0

    .line 598
    :goto_8
    if-nez v10, :cond_26

    .line 599
    .line 600
    goto :goto_b

    .line 601
    :cond_26
    iget-object v2, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 602
    .line 603
    check-cast v2, Ljava/lang/Integer;

    .line 604
    .line 605
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 606
    .line 607
    .line 608
    move-result v2

    .line 609
    iget-object v8, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 610
    .line 611
    check-cast v8, Ljava/lang/Integer;

    .line 612
    .line 613
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 614
    .line 615
    .line 616
    move-result v8

    .line 617
    iget-boolean v9, v7, Lo2/a;->e:Z

    .line 618
    .line 619
    if-nez v9, :cond_27

    .line 620
    .line 621
    const/16 v9, 0x2a

    .line 622
    .line 623
    if-eq v2, v9, :cond_27

    .line 624
    .line 625
    goto :goto_b

    .line 626
    :cond_27
    iget-object v9, v7, Lo2/a;->c:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 627
    .line 628
    if-eqz v9, :cond_28

    .line 629
    .line 630
    iget-object v9, v9, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 631
    .line 632
    if-nez v9, :cond_29

    .line 633
    .line 634
    :cond_28
    new-array v9, v3, [Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 635
    .line 636
    :cond_29
    array-length v10, v9

    .line 637
    move v11, v3

    .line 638
    :goto_9
    if-ge v11, v10, :cond_2b

    .line 639
    .line 640
    aget-object v12, v9, v11

    .line 641
    .line 642
    iget v13, v12, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 643
    .line 644
    if-ne v13, v2, :cond_2a

    .line 645
    .line 646
    iget v12, v12, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    .line 647
    .line 648
    if-lt v12, v8, :cond_2a

    .line 649
    .line 650
    goto :goto_b

    .line 651
    :cond_2a
    add-int/lit8 v11, v11, 0x1

    .line 652
    .line 653
    goto :goto_9

    .line 654
    :cond_2b
    sget v2, Lb3/n;->a:I

    .line 655
    .line 656
    :goto_a
    move v2, v3

    .line 657
    goto :goto_c

    .line 658
    :cond_2c
    :goto_b
    move v2, v4

    .line 659
    :goto_c
    if-eqz v2, :cond_2

    .line 660
    .line 661
    move v5, v4

    .line 662
    move-object v6, v7

    .line 663
    goto/16 :goto_1

    .line 664
    .line 665
    :cond_2d
    const/16 v8, 0x8

    .line 666
    .line 667
    if-eqz v5, :cond_34

    .line 668
    .line 669
    iget v0, v1, Lf2/t;->n:I

    .line 670
    .line 671
    if-lez v0, :cond_34

    .line 672
    .line 673
    iget v2, v1, Lf2/t;->o:I

    .line 674
    .line 675
    if-lez v2, :cond_34

    .line 676
    .line 677
    iget v1, v1, Lf2/t;->p:F

    .line 678
    .line 679
    float-to-double v12, v1

    .line 680
    iget-object v1, v6, Lo2/a;->c:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 681
    .line 682
    if-nez v1, :cond_2e

    .line 683
    .line 684
    goto :goto_e

    .line 685
    :cond_2e
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    .line 686
    .line 687
    .line 688
    move-result-object v1

    .line 689
    if-nez v1, :cond_2f

    .line 690
    .line 691
    goto :goto_e

    .line 692
    :cond_2f
    invoke-static {v1, v0, v2, v12, v13}, Lo2/a;->a(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z

    .line 693
    .line 694
    .line 695
    move-result v5

    .line 696
    if-nez v5, :cond_33

    .line 697
    .line 698
    if-ge v0, v2, :cond_32

    .line 699
    .line 700
    const-string v5, "OMX.MTK.VIDEO.DECODER.HEVC"

    .line 701
    .line 702
    iget-object v7, v6, Lo2/a;->a:Ljava/lang/String;

    .line 703
    .line 704
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 705
    .line 706
    .line 707
    move-result v5

    .line 708
    if-eqz v5, :cond_30

    .line 709
    .line 710
    const-string v5, "mcv5a"

    .line 711
    .line 712
    sget-object v7, Lb3/n;->b:Ljava/lang/String;

    .line 713
    .line 714
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 715
    .line 716
    .line 717
    move-result v5

    .line 718
    if-eqz v5, :cond_30

    .line 719
    .line 720
    move v5, v3

    .line 721
    goto :goto_d

    .line 722
    :cond_30
    move v5, v4

    .line 723
    :goto_d
    if-eqz v5, :cond_32

    .line 724
    .line 725
    invoke-static {v1, v2, v0, v12, v13}, Lo2/a;->a(Landroid/media/MediaCodecInfo$VideoCapabilities;IID)Z

    .line 726
    .line 727
    .line 728
    move-result v0

    .line 729
    if-nez v0, :cond_31

    .line 730
    .line 731
    goto :goto_e

    .line 732
    :cond_31
    sget v0, Lb3/n;->a:I

    .line 733
    .line 734
    goto :goto_f

    .line 735
    :cond_32
    :goto_e
    sget v0, Lb3/n;->a:I

    .line 736
    .line 737
    move v4, v3

    .line 738
    :cond_33
    :goto_f
    move v5, v4

    .line 739
    :cond_34
    if-eqz v5, :cond_35

    .line 740
    .line 741
    move v9, v10

    .line 742
    :cond_35
    if-eqz v6, :cond_36

    .line 743
    .line 744
    iget-boolean v0, v6, Lo2/a;->d:Z

    .line 745
    .line 746
    if-eqz v0, :cond_36

    .line 747
    .line 748
    move v8, v11

    .line 749
    :cond_36
    or-int v0, v9, v8

    .line 750
    .line 751
    or-int/2addr v0, v3

    .line 752
    return v0

    .line 753
    :cond_37
    :goto_10
    return v4

    .line 754
    nop

    .line 755
    :sswitch_data_0
    .sparse-switch
        0x2dd8f6 -> :sswitch_6
        0x2ddf23 -> :sswitch_5
        0x2ddf24 -> :sswitch_4
        0x30d038 -> :sswitch_3
        0x310dbc -> :sswitch_2
        0x333790 -> :sswitch_1
        0x374e43 -> :sswitch_0
    .end sparse-switch

    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final supportsMixedMimeTypeAdaptation()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public updateCSDInfo(Lf2/t;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget-object v3, p1, Lf2/t;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p1, Lf2/t;->k:Ljava/util/List;

    if-ge v1, v3, :cond_0

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    array-length v3, v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-array p1, v2, [B

    iput-object p1, p0, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer;->mCSDInfo:[B

    move p1, v0

    move v1, p1

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iget-object v3, p0, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer;->mCSDInfo:[B

    array-length v5, v2

    invoke-static {v2, v0, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    iget-boolean p1, p0, Lorg/mozilla/gecko/media/GeckoHlsRendererBase;->DEBUG:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer;->mCSDInfo:[B

    invoke-static {p1}, Lorg/mozilla/gecko/media/Utils;->bytesToHex([B)Ljava/lang/String;

    :cond_2
    return-void
.end method
