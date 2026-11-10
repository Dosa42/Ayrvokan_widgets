.class final Lorg/mozilla/gecko/media/SamplePool$Impl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/media/SamplePool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Impl"
.end annotation


# instance fields
.field private final mBufferless:Z

.field private mBuffers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/mozilla/gecko/media/SampleBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultBufferSize:I

.field private final mName:Ljava/lang/String;

.field private mNextBufferId:I

.field private final mRecycledSamples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mozilla/gecko/media/Sample;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    iput v0, p0, Lorg/mozilla/gecko/media/SamplePool$Impl;->mDefaultBufferSize:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/gecko/media/SamplePool$Impl;->mRecycledSamples:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/gecko/media/SamplePool$Impl;->mNextBufferId:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/gecko/media/SamplePool$Impl;->mBuffers:Ljava/util/Map;

    iput-object p1, p0, Lorg/mozilla/gecko/media/SamplePool$Impl;->mName:Ljava/lang/String;

    iput-boolean p2, p0, Lorg/mozilla/gecko/media/SamplePool$Impl;->mBufferless:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZLorg/mozilla/gecko/media/SamplePool$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/mozilla/gecko/media/SamplePool$Impl;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic access$100(Lorg/mozilla/gecko/media/SamplePool$Impl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/mozilla/gecko/media/SamplePool$Impl;->setDefaultBufferSize(I)V

    return-void
.end method

.method public static synthetic access$200(Lorg/mozilla/gecko/media/SamplePool$Impl;I)Lorg/mozilla/gecko/media/Sample;
    .locals 0

    invoke-direct {p0, p1}, Lorg/mozilla/gecko/media/SamplePool$Impl;->obtain(I)Lorg/mozilla/gecko/media/Sample;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Lorg/mozilla/gecko/media/SamplePool$Impl;Lorg/mozilla/gecko/media/Sample;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/mozilla/gecko/media/SamplePool$Impl;->recycle(Lorg/mozilla/gecko/media/Sample;)V

    return-void
.end method

.method public static synthetic access$400(Lorg/mozilla/gecko/media/SamplePool$Impl;)V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/gecko/media/SamplePool$Impl;->clear()V

    return-void
.end method

.method public static synthetic access$500(Lorg/mozilla/gecko/media/SamplePool$Impl;I)Lorg/mozilla/gecko/media/SampleBuffer;
    .locals 0

    invoke-direct {p0, p1}, Lorg/mozilla/gecko/media/SamplePool$Impl;->getBuffer(I)Lorg/mozilla/gecko/media/SampleBuffer;

    move-result-object p0

    return-object p0
.end method

.method private allocateSampleAndBuffer(I)Lorg/mozilla/gecko/media/Sample;
    .locals 4

    iget v0, p0, Lorg/mozilla/gecko/media/SamplePool$Impl;->mNextBufferId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/mozilla/gecko/media/SamplePool$Impl;->mNextBufferId:I

    :try_start_0
    new-instance v1, Lorg/mozilla/gecko/mozglue/SharedMemory;

    iget v2, p0, Lorg/mozilla/gecko/media/SamplePool$Impl;->mDefaultBufferSize:I

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {v1, v0, p1}, Lorg/mozilla/gecko/mozglue/SharedMemory;-><init>(II)V

    iget-object p1, p0, Lorg/mozilla/gecko/media/SamplePool$Impl;->mBuffers:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lorg/mozilla/gecko/media/SampleBuffer;

    invoke-direct {v3, v1}, Lorg/mozilla/gecko/media/SampleBuffer;-><init>(Lorg/mozilla/gecko/mozglue/SharedMemory;)V

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lorg/mozilla/gecko/media/Sample;

    invoke-direct {p1}, Lorg/mozilla/gecko/media/Sample;-><init>()V

    iput v0, p1, Lorg/mozilla/gecko/media/Sample;->bufferId:I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    iget-object v1, p0, Lorg/mozilla/gecko/media/SamplePool$Impl;->mBuffers:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private declared-synchronized clear()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/SamplePool$Impl;->mRecycledSamples:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/gecko/media/Sample;

    invoke-direct {p0, v1}, Lorg/mozilla/gecko/media/SamplePool$Impl;->disposeSample(Lorg/mozilla/gecko/media/Sample;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/SamplePool$Impl;->mRecycledSamples:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lorg/mozilla/gecko/media/SamplePool$Impl;->mBuffers:Ljava/util/Map;

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
    iget-object v0, p0, Lorg/mozilla/gecko/media/SamplePool$Impl;->mBuffers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private disposeSample(Lorg/mozilla/gecko/media/Sample;)V
    .locals 2

    iget v0, p1, Lorg/mozilla/gecko/media/Sample;->bufferId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/mozilla/gecko/media/SamplePool$Impl;->mBuffers:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/gecko/media/SampleBuffer;

    invoke-virtual {v0}, Lorg/mozilla/gecko/media/SampleBuffer;->dispose()V

    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/gecko/media/Sample;->dispose()V

    return-void
.end method

.method private declared-synchronized getBuffer(I)Lorg/mozilla/gecko/media/SampleBuffer;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/SamplePool$Impl;->mBuffers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/gecko/media/SampleBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private isUsefulSample(Lorg/mozilla/gecko/media/Sample;)Z
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/media/SamplePool$Impl;->mBuffers:Ljava/util/Map;

    iget p1, p1, Lorg/mozilla/gecko/media/Sample;->bufferId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/gecko/media/SampleBuffer;

    invoke-virtual {p1}, Lorg/mozilla/gecko/media/SampleBuffer;->capacity()I

    move-result p1

    iget v0, p0, Lorg/mozilla/gecko/media/SamplePool$Impl;->mDefaultBufferSize:I

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private declared-synchronized obtain(I)Lorg/mozilla/gecko/media/Sample;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/SamplePool$Impl;->mRecycledSamples:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lorg/mozilla/gecko/media/SamplePool$Impl;->mRecycledSamples:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/gecko/media/Sample;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lorg/mozilla/gecko/media/SamplePool$Impl;->mBufferless:Z

    if-eqz v0, :cond_1

    new-instance p1, Lorg/mozilla/gecko/media/Sample;

    invoke-direct {p1}, Lorg/mozilla/gecko/media/Sample;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    :try_start_2
    invoke-direct {p0, p1}, Lorg/mozilla/gecko/media/SamplePool$Impl;->allocateSampleAndBuffer(I)Lorg/mozilla/gecko/media/Sample;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized recycle(Lorg/mozilla/gecko/media/Sample;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/mozilla/gecko/media/SamplePool$Impl;->mBufferless:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lorg/mozilla/gecko/media/SamplePool$Impl;->isUsefulSample(Lorg/mozilla/gecko/media/Sample;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lorg/mozilla/gecko/media/SamplePool$Impl;->disposeSample(Lorg/mozilla/gecko/media/Sample;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/SamplePool$Impl;->mRecycledSamples:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private setDefaultBufferSize(I)V
    .locals 1

    iget-boolean v0, p0, Lorg/mozilla/gecko/media/SamplePool$Impl;->mBufferless:Z

    if-nez v0, :cond_0

    iput p1, p0, Lorg/mozilla/gecko/media/SamplePool$Impl;->mDefaultBufferSize:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Setting buffer size of a bufferless pool is not allowed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public finalize()V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/gecko/media/SamplePool$Impl;->clear()V

    return-void
.end method
