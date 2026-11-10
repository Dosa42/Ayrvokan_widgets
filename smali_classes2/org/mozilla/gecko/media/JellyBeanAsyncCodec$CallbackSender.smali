.class final Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$CallbackSender;
.super Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$CancelableHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CallbackSender"
.end annotation


# static fields
.field private static final MSG_ERROR:I = 0x4

.field private static final MSG_INPUT_BUFFER_AVAILABLE:I = 0x1

.field private static final MSG_OUTPUT_BUFFER_AVAILABLE:I = 0x2

.field private static final MSG_OUTPUT_FORMAT_CHANGE:I = 0x3


# instance fields
.field private mCallbacks:Lorg/mozilla/gecko/media/AsyncCodec$Callbacks;

.field final synthetic this$0:Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;


# direct methods
.method private constructor <init>(Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;Landroid/os/Looper;Lorg/mozilla/gecko/media/AsyncCodec$Callbacks;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$CallbackSender;->this$0:Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;

    invoke-direct {p0, p1, p2}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$CancelableHandler;-><init>(Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;Landroid/os/Looper;)V

    iput-object p3, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$CallbackSender;->mCallbacks:Lorg/mozilla/gecko/media/AsyncCodec$Callbacks;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;Landroid/os/Looper;Lorg/mozilla/gecko/media/AsyncCodec$Callbacks;Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$CallbackSender;-><init>(Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;Landroid/os/Looper;Lorg/mozilla/gecko/media/AsyncCodec$Callbacks;)V

    return-void
.end method

.method private processMessage(Landroid/os/Message;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$CancelableHandler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public handleMessageLocked(Landroid/os/Message;)Z
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$CallbackSender;->mCallbacks:Lorg/mozilla/gecko/media/AsyncCodec$Callbacks;

    iget-object v2, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$CallbackSender;->this$0:Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v2, p1}, Lorg/mozilla/gecko/media/AsyncCodec$Callbacks;->onError(Lorg/mozilla/gecko/media/AsyncCodec;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$CallbackSender;->mCallbacks:Lorg/mozilla/gecko/media/AsyncCodec$Callbacks;

    iget-object v2, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$CallbackSender;->this$0:Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/media/MediaFormat;

    invoke-interface {v0, v2, p1}, Lorg/mozilla/gecko/media/AsyncCodec$Callbacks;->onOutputFormatChanged(Lorg/mozilla/gecko/media/AsyncCodec;Landroid/media/MediaFormat;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$CallbackSender;->mCallbacks:Lorg/mozilla/gecko/media/AsyncCodec$Callbacks;

    iget-object v2, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$CallbackSender;->this$0:Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-interface {v0, v2, v3, p1}, Lorg/mozilla/gecko/media/AsyncCodec$Callbacks;->onOutputBufferAvailable(Lorg/mozilla/gecko/media/AsyncCodec;ILandroid/media/MediaCodec$BufferInfo;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$CallbackSender;->mCallbacks:Lorg/mozilla/gecko/media/AsyncCodec$Callbacks;

    iget-object v2, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$CallbackSender;->this$0:Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v2, p1}, Lorg/mozilla/gecko/media/AsyncCodec$Callbacks;->onInputBufferAvailable(Lorg/mozilla/gecko/media/AsyncCodec;I)V

    :goto_0
    return v1
.end method

.method public notifyError(I)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$CallbackSender;->processMessage(Landroid/os/Message;)V

    return-void
.end method

.method public notifyInputBuffer(I)V
    .locals 1

    invoke-virtual {p0}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$CancelableHandler;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$CallbackSender;->processMessage(Landroid/os/Message;)V

    return-void
.end method

.method public notifyOutputBuffer(ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    invoke-virtual {p0}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$CancelableHandler;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    iput p1, p2, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p2}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$CallbackSender;->processMessage(Landroid/os/Message;)V

    return-void
.end method

.method public notifyOutputFormat(Landroid/media/MediaFormat;)V
    .locals 1

    invoke-virtual {p0}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$CancelableHandler;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$CallbackSender;->processMessage(Landroid/os/Message;)V

    return-void
.end method
