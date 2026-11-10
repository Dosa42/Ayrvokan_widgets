.class final Lorg/mozilla/gecko/media/Codec;
.super Lorg/mozilla/gecko/media/ICodec$Stub;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/gecko/media/Codec$OutputProcessor;,
        Lorg/mozilla/gecko/media/Codec$Output;,
        Lorg/mozilla/gecko/media/Codec$InputProcessor;,
        Lorg/mozilla/gecko/media/Codec$Input;,
        Lorg/mozilla/gecko/media/Codec$Callbacks;,
        Lorg/mozilla/gecko/media/Codec$Error;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOGTAG:Ljava/lang/String; = "GeckoRemoteCodec"


# instance fields
.field private volatile mCallbacks:Lorg/mozilla/gecko/media/ICodecCallbacks;

.field private mCodec:Lorg/mozilla/gecko/media/AsyncCodec;

.field private mInputProcessor:Lorg/mozilla/gecko/media/Codec$InputProcessor;

.field private volatile mIsAdaptivePlaybackSupported:Z

.field private volatile mIsHardwareAccelerated:Z

.field private mIsTunneledPlaybackSupported:Z

.field private mOutputProcessor:Lorg/mozilla/gecko/media/Codec$OutputProcessor;

.field private mSamplePool:Lorg/mozilla/gecko/media/SamplePool;

.field private mSession:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/mozilla/gecko/media/ICodec$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/gecko/media/Codec;->mIsAdaptivePlaybackSupported:Z

    iput-boolean v0, p0, Lorg/mozilla/gecko/media/Codec;->mIsHardwareAccelerated:Z

    iput-boolean v0, p0, Lorg/mozilla/gecko/media/Codec;->mIsTunneledPlaybackSupported:Z

    return-void
.end method

.method public static synthetic access$000(Lorg/mozilla/gecko/media/Codec;)Lorg/mozilla/gecko/media/Codec$InputProcessor;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/gecko/media/Codec;->mInputProcessor:Lorg/mozilla/gecko/media/Codec$InputProcessor;

    return-object p0
.end method

.method public static synthetic access$200(Lorg/mozilla/gecko/media/Codec;)Lorg/mozilla/gecko/media/Codec$OutputProcessor;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/gecko/media/Codec;->mOutputProcessor:Lorg/mozilla/gecko/media/Codec$OutputProcessor;

    return-object p0
.end method

.method public static synthetic access$400(Lorg/mozilla/gecko/media/Codec;Lorg/mozilla/gecko/media/Codec$Error;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/mozilla/gecko/media/Codec;->reportError(Lorg/mozilla/gecko/media/Codec$Error;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic access$600(Lorg/mozilla/gecko/media/Codec;)Lorg/mozilla/gecko/media/SamplePool;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/gecko/media/Codec;->mSamplePool:Lorg/mozilla/gecko/media/SamplePool;

    return-object p0
.end method

.method public static synthetic access$700(Lorg/mozilla/gecko/media/Codec;)J
    .locals 2

    iget-wide v0, p0, Lorg/mozilla/gecko/media/Codec;->mSession:J

    return-wide v0
.end method

.method public static synthetic access$800(Lorg/mozilla/gecko/media/Codec;)Lorg/mozilla/gecko/media/AsyncCodec;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/gecko/media/Codec;->mCodec:Lorg/mozilla/gecko/media/AsyncCodec;

    return-object p0
.end method

.method public static synthetic access$900(Lorg/mozilla/gecko/media/Codec;)Lorg/mozilla/gecko/media/ICodecCallbacks;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/gecko/media/Codec;->mCallbacks:Lorg/mozilla/gecko/media/ICodecCallbacks;

    return-object p0
.end method

.method private configureCodec(Ljava/lang/String;Landroid/media/MediaFormat;Landroid/view/Surface;ILjava/lang/String;)Lorg/mozilla/gecko/media/AsyncCodec;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lorg/mozilla/gecko/media/AsyncCodecFactory;->create(Ljava/lang/String;)Lorg/mozilla/gecko/media/AsyncCodec;

    move-result-object p1

    new-instance v1, Lorg/mozilla/gecko/media/Codec$Callbacks;

    invoke-direct {v1, p0, v0}, Lorg/mozilla/gecko/media/Codec$Callbacks;-><init>(Lorg/mozilla/gecko/media/Codec;Lorg/mozilla/gecko/media/Codec$1;)V

    invoke-interface {p1, v1, v0}, Lorg/mozilla/gecko/media/AsyncCodec;->setCallbacks(Lorg/mozilla/gecko/media/AsyncCodec$Callbacks;Landroid/os/Handler;)V

    invoke-static {p5}, Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub;->getMediaCrypto(Ljava/lang/String;)Landroid/media/MediaCrypto;

    move-result-object p5

    if-eqz p3, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/mozilla/gecko/media/Codec;->setupAdaptivePlayback(Lorg/mozilla/gecko/media/AsyncCodec;Landroid/media/MediaFormat;)V

    :cond_0
    invoke-interface {p1, p2, p3, p5, p4}, Lorg/mozilla/gecko/media/AsyncCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method

.method private findMatchingCodecNames(Ljava/lang/String;Z)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_3

    invoke-static {v3}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v5

    xor-int/lit8 v6, p2, 0x1

    if-ne v5, v6, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    invoke-virtual {v8, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private reportError(Lorg/mozilla/gecko/media/Codec$Error;Ljava/lang/Exception;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :try_start_0
    iget-object p2, p0, Lorg/mozilla/gecko/media/Codec;->mCallbacks:Lorg/mozilla/gecko/media/ICodecCallbacks;

    sget-object v0, Lorg/mozilla/gecko/media/Codec$Error;->FATAL:Lorg/mozilla/gecko/media/Codec$Error;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p2, p1}, Lorg/mozilla/gecko/media/ICodecCallbacks;->onError(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :catch_1
    :goto_1
    return-void
.end method

.method private setupAdaptivePlayback(Lorg/mozilla/gecko/media/AsyncCodec;Landroid/media/MediaFormat;)V
    .locals 1

    const-string v0, "mime"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/mozilla/gecko/media/AsyncCodec;->isAdaptivePlaybackSupported(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/mozilla/gecko/media/Codec;->mIsAdaptivePlaybackSupported:Z

    iget-boolean p1, p0, Lorg/mozilla/gecko/media/Codec;->mIsAdaptivePlaybackSupported:Z

    if-eqz p1, :cond_0

    const-string p1, "max-width"

    const/16 v0, 0x780

    invoke-virtual {p2, p1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p1, "max-height"

    const/16 v0, 0x438

    invoke-virtual {p2, p1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized binderDied()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/mozilla/gecko/media/Codec;->release()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized configure(Lorg/mozilla/gecko/media/FormatParam;Lorg/mozilla/gecko/gfx/GeckoSurface;ILjava/lang/String;)Z
    .locals 11

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/Codec;->mCallbacks:Lorg/mozilla/gecko/media/ICodecCallbacks;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/mozilla/gecko/media/Codec;->mCodec:Lorg/mozilla/gecko/media/AsyncCodec;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/mozilla/gecko/media/AsyncCodec;->release()V

    :cond_1
    invoke-virtual {p1}, Lorg/mozilla/gecko/media/FormatParam;->asFormat()Landroid/media/MediaFormat;

    move-result-object p1

    const-string v0, "mime"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_3

    :cond_2
    const/4 v8, 0x1

    if-ne p3, v8, :cond_3

    move v2, v8

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    invoke-direct {p0, v0, v2}, Lorg/mozilla/gecko/media/Codec;->findMatchingCodecNames(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Ljava/lang/String;

    move-object v2, p0

    move-object v3, v10

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lorg/mozilla/gecko/media/Codec;->configureCodec(Ljava/lang/String;Landroid/media/MediaFormat;Landroid/view/Surface;ILjava/lang/String;)Lorg/mozilla/gecko/media/AsyncCodec;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    const-string p1, "OMX.google."

    invoke-virtual {v10, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    move p1, v8

    goto :goto_2

    :cond_5
    move p1, v1

    :goto_2
    iput-boolean p1, p0, Lorg/mozilla/gecko/media/Codec;->mIsHardwareAccelerated:Z

    iput-object v2, p0, Lorg/mozilla/gecko/media/Codec;->mCodec:Lorg/mozilla/gecko/media/AsyncCodec;

    new-instance p1, Lorg/mozilla/gecko/media/Codec$InputProcessor;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Lorg/mozilla/gecko/media/Codec$InputProcessor;-><init>(Lorg/mozilla/gecko/media/Codec;Lorg/mozilla/gecko/media/Codec$1;)V

    iput-object p1, p0, Lorg/mozilla/gecko/media/Codec;->mInputProcessor:Lorg/mozilla/gecko/media/Codec$InputProcessor;

    if-eqz p2, :cond_6

    move v1, v8

    :cond_6
    new-instance p1, Lorg/mozilla/gecko/media/Codec$OutputProcessor;

    invoke-direct {p1, p0, v1, p3}, Lorg/mozilla/gecko/media/Codec$OutputProcessor;-><init>(Lorg/mozilla/gecko/media/Codec;ZLorg/mozilla/gecko/media/Codec$1;)V

    iput-object p1, p0, Lorg/mozilla/gecko/media/Codec;->mOutputProcessor:Lorg/mozilla/gecko/media/Codec$OutputProcessor;

    new-instance p1, Lorg/mozilla/gecko/media/SamplePool;

    invoke-direct {p1, v10, v1}, Lorg/mozilla/gecko/media/SamplePool;-><init>(Ljava/lang/String;Z)V

    iput-object p1, p0, Lorg/mozilla/gecko/media/Codec;->mSamplePool:Lorg/mozilla/gecko/media/SamplePool;

    if-eqz v1, :cond_7

    iget-object p1, p0, Lorg/mozilla/gecko/media/Codec;->mCodec:Lorg/mozilla/gecko/media/AsyncCodec;

    invoke-interface {p1, v0}, Lorg/mozilla/gecko/media/AsyncCodec;->isTunneledPlaybackSupported(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/mozilla/gecko/media/Codec;->mIsTunneledPlaybackSupported:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    monitor-exit p0

    return v8

    :cond_8
    monitor-exit p0

    return v1

    :cond_9
    :goto_3
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized dequeueInput(I)Lorg/mozilla/gecko/media/Sample;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/Codec;->mInputProcessor:Lorg/mozilla/gecko/media/Codec$InputProcessor;

    invoke-static {v0, p1}, Lorg/mozilla/gecko/media/Codec$InputProcessor;->access$1700(Lorg/mozilla/gecko/media/Codec$InputProcessor;I)Lorg/mozilla/gecko/media/Sample;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    new-instance v0, Landroid/os/RemoteException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized flush()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/Codec;->mInputProcessor:Lorg/mozilla/gecko/media/Codec$InputProcessor;

    invoke-static {v0}, Lorg/mozilla/gecko/media/Codec$InputProcessor;->access$1500(Lorg/mozilla/gecko/media/Codec$InputProcessor;)V

    iget-object v0, p0, Lorg/mozilla/gecko/media/Codec;->mOutputProcessor:Lorg/mozilla/gecko/media/Codec$OutputProcessor;

    invoke-static {v0}, Lorg/mozilla/gecko/media/Codec$OutputProcessor;->access$1600(Lorg/mozilla/gecko/media/Codec$OutputProcessor;)V

    iget-object v0, p0, Lorg/mozilla/gecko/media/Codec;->mCodec:Lorg/mozilla/gecko/media/AsyncCodec;

    invoke-interface {v0}, Lorg/mozilla/gecko/media/AsyncCodec;->flush()V

    iget-object v0, p0, Lorg/mozilla/gecko/media/Codec;->mInputProcessor:Lorg/mozilla/gecko/media/Codec$InputProcessor;

    invoke-static {v0}, Lorg/mozilla/gecko/media/Codec$InputProcessor;->access$1300(Lorg/mozilla/gecko/media/Codec$InputProcessor;)V

    iget-object v0, p0, Lorg/mozilla/gecko/media/Codec;->mOutputProcessor:Lorg/mozilla/gecko/media/Codec$OutputProcessor;

    invoke-static {v0}, Lorg/mozilla/gecko/media/Codec$OutputProcessor;->access$1400(Lorg/mozilla/gecko/media/Codec$OutputProcessor;)V

    iget-object v0, p0, Lorg/mozilla/gecko/media/Codec;->mCodec:Lorg/mozilla/gecko/media/AsyncCodec;

    invoke-interface {v0}, Lorg/mozilla/gecko/media/AsyncCodec;->resumeReceivingInputs()V

    iget-wide v0, p0, Lorg/mozilla/gecko/media/Codec;->mSession:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/mozilla/gecko/media/Codec;->mSession:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v1, Lorg/mozilla/gecko/media/Codec$Error;->FATAL:Lorg/mozilla/gecko/media/Codec$Error;

    invoke-direct {p0, v1, v0}, Lorg/mozilla/gecko/media/Codec;->reportError(Lorg/mozilla/gecko/media/Codec$Error;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getInputBuffer(I)Lorg/mozilla/gecko/media/SampleBuffer;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/Codec;->mSamplePool:Lorg/mozilla/gecko/media/SamplePool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Lorg/mozilla/gecko/media/SamplePool;->getInputBuffer(I)Lorg/mozilla/gecko/media/SampleBuffer;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getOutputBuffer(I)Lorg/mozilla/gecko/media/SampleBuffer;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/Codec;->mSamplePool:Lorg/mozilla/gecko/media/SamplePool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Lorg/mozilla/gecko/media/SamplePool;->getOutputBuffer(I)Lorg/mozilla/gecko/media/SampleBuffer;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isAdaptivePlaybackSupported()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/mozilla/gecko/media/Codec;->mIsAdaptivePlaybackSupported:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isHardwareAccelerated()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/mozilla/gecko/media/Codec;->mIsHardwareAccelerated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isTunneledPlaybackSupported()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/mozilla/gecko/media/Codec;->mIsTunneledPlaybackSupported:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized queueInput(Lorg/mozilla/gecko/media/Sample;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/Codec;->mInputProcessor:Lorg/mozilla/gecko/media/Codec$InputProcessor;

    invoke-static {v0, p1}, Lorg/mozilla/gecko/media/Codec$InputProcessor;->access$1800(Lorg/mozilla/gecko/media/Codec$InputProcessor;Lorg/mozilla/gecko/media/Sample;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    new-instance v0, Landroid/os/RemoteException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized release()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/Codec;->mInputProcessor:Lorg/mozilla/gecko/media/Codec$InputProcessor;

    invoke-static {v0}, Lorg/mozilla/gecko/media/Codec$InputProcessor;->access$1500(Lorg/mozilla/gecko/media/Codec$InputProcessor;)V

    iget-object v0, p0, Lorg/mozilla/gecko/media/Codec;->mOutputProcessor:Lorg/mozilla/gecko/media/Codec$OutputProcessor;

    invoke-static {v0}, Lorg/mozilla/gecko/media/Codec$OutputProcessor;->access$1600(Lorg/mozilla/gecko/media/Codec$OutputProcessor;)V

    iget-object v0, p0, Lorg/mozilla/gecko/media/Codec;->mCodec:Lorg/mozilla/gecko/media/AsyncCodec;

    invoke-interface {v0}, Lorg/mozilla/gecko/media/AsyncCodec;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v1, Lorg/mozilla/gecko/media/Codec$Error;->FATAL:Lorg/mozilla/gecko/media/Codec$Error;

    invoke-direct {p0, v1, v0}, Lorg/mozilla/gecko/media/Codec;->reportError(Lorg/mozilla/gecko/media/Codec$Error;Ljava/lang/Exception;)V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/gecko/media/Codec;->mCodec:Lorg/mozilla/gecko/media/AsyncCodec;

    iget-object v1, p0, Lorg/mozilla/gecko/media/Codec;->mSamplePool:Lorg/mozilla/gecko/media/SamplePool;

    invoke-virtual {v1}, Lorg/mozilla/gecko/media/SamplePool;->reset()V

    iput-object v0, p0, Lorg/mozilla/gecko/media/Codec;->mSamplePool:Lorg/mozilla/gecko/media/SamplePool;

    iget-object v1, p0, Lorg/mozilla/gecko/media/Codec;->mCallbacks:Lorg/mozilla/gecko/media/ICodecCallbacks;

    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iput-object v0, p0, Lorg/mozilla/gecko/media/Codec;->mCallbacks:Lorg/mozilla/gecko/media/ICodecCallbacks;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized releaseOutput(Lorg/mozilla/gecko/media/Sample;Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/Codec;->mOutputProcessor:Lorg/mozilla/gecko/media/Codec$OutputProcessor;

    invoke-static {v0, p1, p2}, Lorg/mozilla/gecko/media/Codec$OutputProcessor;->access$1900(Lorg/mozilla/gecko/media/Codec$OutputProcessor;Lorg/mozilla/gecko/media/Sample;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    sget-object p2, Lorg/mozilla/gecko/media/Codec$Error;->FATAL:Lorg/mozilla/gecko/media/Codec$Error;

    invoke-direct {p0, p2, p1}, Lorg/mozilla/gecko/media/Codec;->reportError(Lorg/mozilla/gecko/media/Codec$Error;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setBitrate(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/Codec;->mCodec:Lorg/mozilla/gecko/media/AsyncCodec;

    invoke-interface {v0, p1}, Lorg/mozilla/gecko/media/AsyncCodec;->setBitrate(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    sget-object v0, Lorg/mozilla/gecko/media/Codec$Error;->FATAL:Lorg/mozilla/gecko/media/Codec$Error;

    invoke-direct {p0, v0, p1}, Lorg/mozilla/gecko/media/Codec;->reportError(Lorg/mozilla/gecko/media/Codec$Error;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setCallbacks(Lorg/mozilla/gecko/media/ICodecCallbacks;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/mozilla/gecko/media/Codec;->mCallbacks:Lorg/mozilla/gecko/media/ICodecCallbacks;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized start()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/Codec;->mInputProcessor:Lorg/mozilla/gecko/media/Codec$InputProcessor;

    invoke-static {v0}, Lorg/mozilla/gecko/media/Codec$InputProcessor;->access$1300(Lorg/mozilla/gecko/media/Codec$InputProcessor;)V

    iget-object v0, p0, Lorg/mozilla/gecko/media/Codec;->mOutputProcessor:Lorg/mozilla/gecko/media/Codec$OutputProcessor;

    invoke-static {v0}, Lorg/mozilla/gecko/media/Codec$OutputProcessor;->access$1400(Lorg/mozilla/gecko/media/Codec$OutputProcessor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lorg/mozilla/gecko/media/Codec;->mCodec:Lorg/mozilla/gecko/media/AsyncCodec;

    invoke-interface {v0}, Lorg/mozilla/gecko/media/AsyncCodec;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v1, Lorg/mozilla/gecko/media/Codec$Error;->FATAL:Lorg/mozilla/gecko/media/Codec$Error;

    invoke-direct {p0, v1, v0}, Lorg/mozilla/gecko/media/Codec;->reportError(Lorg/mozilla/gecko/media/Codec$Error;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/Codec;->mInputProcessor:Lorg/mozilla/gecko/media/Codec$InputProcessor;

    invoke-static {v0}, Lorg/mozilla/gecko/media/Codec$InputProcessor;->access$1500(Lorg/mozilla/gecko/media/Codec$InputProcessor;)V

    iget-object v0, p0, Lorg/mozilla/gecko/media/Codec;->mOutputProcessor:Lorg/mozilla/gecko/media/Codec$OutputProcessor;

    invoke-static {v0}, Lorg/mozilla/gecko/media/Codec$OutputProcessor;->access$1600(Lorg/mozilla/gecko/media/Codec$OutputProcessor;)V

    iget-object v0, p0, Lorg/mozilla/gecko/media/Codec;->mCodec:Lorg/mozilla/gecko/media/AsyncCodec;

    invoke-interface {v0}, Lorg/mozilla/gecko/media/AsyncCodec;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v1, Lorg/mozilla/gecko/media/Codec$Error;->FATAL:Lorg/mozilla/gecko/media/Codec$Error;

    invoke-direct {p0, v1, v0}, Lorg/mozilla/gecko/media/Codec;->reportError(Lorg/mozilla/gecko/media/Codec$Error;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method
