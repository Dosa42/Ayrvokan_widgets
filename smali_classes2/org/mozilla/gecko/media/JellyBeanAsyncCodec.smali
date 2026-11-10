.class final Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/gecko/media/AsyncCodec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$BufferPoller;,
        Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$CallbackSender;,
        Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$CancelableHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final ERROR_CODEC:I = -0x2710

.field private static final LOGTAG:Ljava/lang/String; = "GeckoAsyncCodecAPIv16"


# instance fields
.field private mBufferPoller:Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$BufferPoller;

.field private mCallbackSender:Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$CallbackSender;

.field private mCallbacks:Lorg/mozilla/gecko/media/AsyncCodec$Callbacks;

.field private mCodec:Landroid/media/MediaCodec;

.field private mInputBuffers:[Ljava/nio/ByteBuffer;

.field private volatile mInputEnded:Z

.field private mOutputBuffers:[Ljava/nio/ByteBuffer;

.field private volatile mOutputEnded:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->mCodec:Landroid/media/MediaCodec;

    .line 9
    .line 10
    const-string v0, " buffer poller"

    .line 11
    .line 12
    invoke-static {p1, v0}, La1/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-direct {p0, p1}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->initBufferPoller(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public static synthetic access$000(Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->mOutputEnded:Z

    return p0
.end method

.method public static synthetic access$002(Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->mOutputEnded:Z

    return p1
.end method

.method public static synthetic access$100(Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->mInputEnded:Z

    return p0
.end method

.method public static synthetic access$200(Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;)Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$CallbackSender;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->mCallbackSender:Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$CallbackSender;

    return-object p0
.end method

.method public static synthetic access$300(Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;)Landroid/media/MediaCodec;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->mCodec:Landroid/media/MediaCodec;

    return-object p0
.end method

.method public static synthetic access$400(Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;)Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$BufferPoller;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->mBufferPoller:Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$BufferPoller;

    return-object p0
.end method

.method public static synthetic access$502(Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;[Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;
    .locals 0

    iput-object p1, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method private assertCallbacks()V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->mCallbackSender:Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$CallbackSender;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GeckoAsyncCodecAPIv16: callback must be supplied with setCallbacks()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private cancelPendingTasks()V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->mBufferPoller:Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$BufferPoller;

    invoke-virtual {v0}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$CancelableHandler;->cancel()V

    iget-object v0, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->mCallbackSender:Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$CallbackSender;

    invoke-virtual {v0}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$CancelableHandler;->cancel()V

    return-void
.end method

.method private initBufferPoller(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->mBufferPoller:Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$BufferPoller;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance p1, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$BufferPoller;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$BufferPoller;-><init>(Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;Landroid/os/Looper;)V

    iput-object p1, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->mBufferPoller:Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$BufferPoller;

    return-void
.end method

.method private stopBufferPoller()V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->mBufferPoller:Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$BufferPoller;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->mBufferPoller:Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$BufferPoller;

    return-void
.end method


# virtual methods
.method public configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    .locals 1

    invoke-direct {p0}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->assertCallbacks()V

    iget-object v0, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    return-void
.end method

.method public flush()V
    .locals 1

    invoke-direct {p0}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->assertCallbacks()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->mInputEnded:Z

    iput-boolean v0, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->mOutputEnded:Z

    invoke-direct {p0}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->cancelPendingTasks()V

    iget-object v0, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    return-void
.end method

.method public final getInputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 1

    invoke-direct {p0}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->assertCallbacks()V

    iget-object v0, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->mInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final getOutputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 1

    invoke-direct {p0}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->assertCallbacks()V

    iget-object v0, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public isAdaptivePlaybackSupported(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->mCodec:Landroid/media/MediaCodec;

    invoke-static {v0, p1}, Lorg/mozilla/gecko/util/HardwareCodecCapabilityUtils;->checkSupportsAdaptivePlayback(Landroid/media/MediaCodec;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isTunneledPlaybackSupported(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object p1

    const-string v1, "tunneled-playback"

    invoke-virtual {p1, v1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public final queueInputBuffer(IIIJI)V
    .locals 10

    move-object v1, p0

    invoke-direct {p0}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->assertCallbacks()V

    and-int/lit8 v0, p6, 0x4

    const/4 v2, 0x0

    const/4 v9, 0x1

    if-eqz v0, :cond_0

    move v0, v9

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, v1, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->mInputEnded:Z

    and-int/lit8 v0, p6, 0x1

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "request-sync"

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, v1, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    :cond_1
    :try_start_0
    iget-object v2, v1, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->mCodec:Landroid/media/MediaCodec;

    move v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    move/from16 v8, p6

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, v1, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->mBufferPoller:Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$BufferPoller;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$BufferPoller;->access$700(Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$BufferPoller;I)V

    iget-object v0, v1, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->mBufferPoller:Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$BufferPoller;

    invoke-static {v0, v9}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$BufferPoller;->access$700(Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$BufferPoller;I)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v0, v1, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->mCallbackSender:Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$CallbackSender;

    const/16 v2, -0x2710

    invoke-virtual {v0, v2}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$CallbackSender;->notifyError(I)V

    return-void
.end method

.method public final queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V
    .locals 9

    invoke-direct {p0}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->assertCallbacks()V

    and-int/lit8 v0, p6, 0x4

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->mInputEnded:Z

    :try_start_0
    iget-object v2, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->mCodec:Landroid/media/MediaCodec;

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-wide v6, p4

    move v8, p6

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->mBufferPoller:Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$BufferPoller;

    invoke-static {p1, v1}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$BufferPoller;->access$700(Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$BufferPoller;I)V

    iget-object p1, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->mBufferPoller:Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$BufferPoller;

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$BufferPoller;->access$700(Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$BufferPoller;I)V

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p1, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->mCallbackSender:Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$CallbackSender;

    const/16 p2, -0x2710

    invoke-virtual {p1, p2}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$CallbackSender;->notifyError(I)V

    return-void
.end method

.method public release()V
    .locals 1

    invoke-direct {p0}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->assertCallbacks()V

    invoke-direct {p0}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->cancelPendingTasks()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->mCallbackSender:Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$CallbackSender;

    iget-object v0, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    invoke-direct {p0}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->stopBufferPoller()V

    return-void
.end method

.method public final releaseOutputBuffer(IZ)V
    .locals 1

    invoke-direct {p0}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->assertCallbacks()V

    iget-object v0, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return-void
.end method

.method public resumeReceivingInputs()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->mInputBuffers:[Ljava/nio/ByteBuffer;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->mBufferPoller:Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$BufferPoller;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$BufferPoller;->access$700(Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$BufferPoller;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setBitrate(I)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "video-bitrate"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {p1, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    return-void
.end method

.method public setCallbacks(Lorg/mozilla/gecko/media/AsyncCodec$Callbacks;Landroid/os/Handler;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-nez p2, :cond_1

    move-object p2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    :goto_0
    if-nez p2, :cond_2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    :cond_2
    if-nez p2, :cond_3

    iget-object p2, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->mBufferPoller:Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$BufferPoller;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    :cond_3
    new-instance v1, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$CallbackSender;

    invoke-direct {v1, p0, p2, p1, v0}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$CallbackSender;-><init>(Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;Landroid/os/Looper;Lorg/mozilla/gecko/media/AsyncCodec$Callbacks;Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$1;)V

    iput-object v1, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->mCallbackSender:Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$CallbackSender;

    return-void
.end method

.method public start()V
    .locals 1

    invoke-direct {p0}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->assertCallbacks()V

    iget-object v0, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->mInputEnded:Z

    iput-boolean v0, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->mOutputEnded:Z

    iget-object v0, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->mInputBuffers:[Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->resumeReceivingInputs()V

    iget-object v0, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    return-void
.end method

.method public stop()V
    .locals 1

    invoke-direct {p0}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->assertCallbacks()V

    invoke-direct {p0}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->cancelPendingTasks()V

    iget-object v0, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    return-void
.end method
