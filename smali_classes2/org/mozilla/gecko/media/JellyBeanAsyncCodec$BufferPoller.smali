.class final Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$BufferPoller;
.super Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$CancelableHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BufferPoller"
.end annotation


# static fields
.field private static final DEQUEUE_TIMEOUT_US:J = 0x2710L

.field private static final MSG_POLL_INPUT_BUFFERS:I = 0x1

.field private static final MSG_POLL_OUTPUT_BUFFERS:I = 0x2


# instance fields
.field final synthetic this$0:Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;


# direct methods
.method public constructor <init>(Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$BufferPoller;->this$0:Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;

    invoke-direct {p0, p1, p2}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$CancelableHandler;-><init>(Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;Landroid/os/Looper;)V

    return-void
.end method

.method public static synthetic access$700(Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$BufferPoller;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$BufferPoller;->schedulePolling(I)V

    return-void
.end method

.method private needsBuffer(I)Z
    .locals 3

    iget-object v0, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$BufferPoller;->this$0:Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;

    invoke-static {v0}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->access$000(Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$BufferPoller;->this$0:Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;

    invoke-static {v0}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->access$100(Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-ne p1, v2, :cond_1

    return v1

    :cond_1
    return v2
.end method

.method private pollInputBuffer()V
    .locals 3

    iget-object v0, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$BufferPoller;->this$0:Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;

    invoke-static {v0}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->access$300(Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;)Landroid/media/MediaCodec;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$BufferPoller;->this$0:Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;

    invoke-static {v1}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->access$200(Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;)Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$CallbackSender;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$CallbackSender;->notifyInputBuffer(I)V

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$BufferPoller;->this$0:Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;

    invoke-static {v0}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->access$400(Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;)Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$BufferPoller;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$BufferPoller;->schedulePollingIfNotCanceled(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$BufferPoller;->this$0:Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;

    invoke-static {v1}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->access$200(Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;)Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$CallbackSender;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$CallbackSender;->notifyError(I)V

    :goto_0
    return-void
.end method

.method private pollOutputBuffer()V
    .locals 4

    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iget-object v1, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$BufferPoller;->this$0:Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;

    invoke-static {v1}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->access$300(Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;)Landroid/media/MediaCodec;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    const/4 v2, 0x1

    if-ltz v1, :cond_1

    iget v3, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$BufferPoller;->this$0:Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;

    invoke-static {v3, v2}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->access$002(Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;Z)Z

    :cond_0
    iget-object v3, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$BufferPoller;->this$0:Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;

    invoke-static {v3}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->access$200(Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;)Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$CallbackSender;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$CallbackSender;->notifyOutputBuffer(ILandroid/media/MediaCodec$BufferInfo;)V

    goto :goto_0

    :cond_1
    const/4 v0, -0x3

    if-ne v1, v0, :cond_2

    iget-object v0, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$BufferPoller;->this$0:Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;

    invoke-static {v0}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->access$300(Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;)Landroid/media/MediaCodec;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->access$502(Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;[Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_2
    const/4 v0, -0x2

    if-ne v1, v0, :cond_3

    iget-object v0, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$BufferPoller;->this$0:Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;

    invoke-static {v0}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->access$300(Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;)Landroid/media/MediaCodec;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->access$502(Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;[Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$BufferPoller;->this$0:Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;

    invoke-static {v0}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->access$200(Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;)Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$CallbackSender;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$BufferPoller;->this$0:Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;

    invoke-static {v1}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->access$300(Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;)Landroid/media/MediaCodec;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$CallbackSender;->notifyOutputFormat(Landroid/media/MediaFormat;)V

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    if-ne v1, v0, :cond_4

    iget-object v0, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$BufferPoller;->this$0:Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;

    invoke-static {v0}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->access$100(Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;)Z

    move-result v2

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$BufferPoller;->this$0:Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;

    invoke-static {v0}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->access$200(Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;)Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$CallbackSender;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$CallbackSender;->notifyError(I)V

    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_5

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$BufferPoller;->schedulePollingIfNotCanceled(I)V

    :cond_5
    return-void
.end method

.method private schedulePolling(I)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$BufferPoller;->needsBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private schedulePollingIfNotCanceled(I)V
    .locals 1

    invoke-virtual {p0}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$CancelableHandler;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$BufferPoller;->schedulePolling(I)V

    return-void
.end method


# virtual methods
.method public handleMessageLocked(Landroid/os/Message;)Z
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    iget p1, p1, Landroid/os/Message;->what:I

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-direct {p0}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$BufferPoller;->pollOutputBuffer()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$BufferPoller;->pollInputBuffer()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p1, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$BufferPoller;->this$0:Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;

    invoke-static {p1}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;->access$200(Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;)Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$CallbackSender;

    move-result-object p1

    const/16 v1, -0x2710

    invoke-virtual {p1, v1}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$CallbackSender;->notifyError(I)V

    :goto_0
    return v0
.end method
