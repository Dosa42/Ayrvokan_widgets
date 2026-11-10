.class Lorg/mozilla/gecko/media/LollipopAsyncCodec$CodecCallback$Forwarder;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/media/LollipopAsyncCodec$CodecCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Forwarder"
.end annotation


# static fields
.field private static final MSG_ERROR:I = 0x4

.field private static final MSG_INPUT_BUFFER_AVAILABLE:I = 0x1

.field private static final MSG_OUTPUT_BUFFER_AVAILABLE:I = 0x2

.field private static final MSG_OUTPUT_FORMAT_CHANGE:I = 0x3


# instance fields
.field private final mTarget:Lorg/mozilla/gecko/media/AsyncCodec$Callbacks;

.field final synthetic this$1:Lorg/mozilla/gecko/media/LollipopAsyncCodec$CodecCallback;


# direct methods
.method private constructor <init>(Lorg/mozilla/gecko/media/LollipopAsyncCodec$CodecCallback;Landroid/os/Looper;Lorg/mozilla/gecko/media/AsyncCodec$Callbacks;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mozilla/gecko/media/LollipopAsyncCodec$CodecCallback$Forwarder;->this$1:Lorg/mozilla/gecko/media/LollipopAsyncCodec$CodecCallback;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lorg/mozilla/gecko/media/LollipopAsyncCodec$CodecCallback$Forwarder;->mTarget:Lorg/mozilla/gecko/media/AsyncCodec$Callbacks;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/mozilla/gecko/media/LollipopAsyncCodec$CodecCallback;Landroid/os/Looper;Lorg/mozilla/gecko/media/AsyncCodec$Callbacks;Lorg/mozilla/gecko/media/LollipopAsyncCodec$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lorg/mozilla/gecko/media/LollipopAsyncCodec$CodecCallback$Forwarder;-><init>(Lorg/mozilla/gecko/media/LollipopAsyncCodec$CodecCallback;Landroid/os/Looper;Lorg/mozilla/gecko/media/AsyncCodec$Callbacks;)V

    return-void
.end method

.method public static synthetic access$100(Lorg/mozilla/gecko/media/LollipopAsyncCodec$CodecCallback$Forwarder;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/mozilla/gecko/media/LollipopAsyncCodec$CodecCallback$Forwarder;->onInput(I)V

    return-void
.end method

.method public static synthetic access$200(Lorg/mozilla/gecko/media/LollipopAsyncCodec$CodecCallback$Forwarder;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/mozilla/gecko/media/LollipopAsyncCodec$CodecCallback$Forwarder;->onOutput(ILandroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method public static synthetic access$300(Lorg/mozilla/gecko/media/LollipopAsyncCodec$CodecCallback$Forwarder;Landroid/media/MediaFormat;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/mozilla/gecko/media/LollipopAsyncCodec$CodecCallback$Forwarder;->onOutputFormatChanged(Landroid/media/MediaFormat;)V

    return-void
.end method

.method public static synthetic access$400(Lorg/mozilla/gecko/media/LollipopAsyncCodec$CodecCallback$Forwarder;Landroid/media/MediaCodec$CodecException;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/mozilla/gecko/media/LollipopAsyncCodec$CodecCallback$Forwarder;->onError(Landroid/media/MediaCodec$CodecException;)V

    return-void
.end method

.method private notify(Landroid/os/Message;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/mozilla/gecko/media/LollipopAsyncCodec$CodecCallback$Forwarder;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method private onError(Landroid/media/MediaCodec$CodecException;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p1}, Landroid/media/MediaCodec$CodecException;->getErrorCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/mozilla/gecko/media/LollipopAsyncCodec$CodecCallback$Forwarder;->notify(Landroid/os/Message;)V

    return-void
.end method

.method private onInput(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/mozilla/gecko/media/LollipopAsyncCodec$CodecCallback$Forwarder;->notify(Landroid/os/Message;)V

    return-void
.end method

.method private onOutput(ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/mozilla/gecko/media/LollipopAsyncCodec$CodecCallback$Forwarder;->notify(Landroid/os/Message;)V

    return-void
.end method

.method private onOutputFormatChanged(Landroid/media/MediaFormat;)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/mozilla/gecko/media/LollipopAsyncCodec$CodecCallback$Forwarder;->notify(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/LollipopAsyncCodec$CodecCallback$Forwarder;->mTarget:Lorg/mozilla/gecko/media/AsyncCodec$Callbacks;

    iget-object v1, p0, Lorg/mozilla/gecko/media/LollipopAsyncCodec$CodecCallback$Forwarder;->this$1:Lorg/mozilla/gecko/media/LollipopAsyncCodec$CodecCallback;

    iget-object v1, v1, Lorg/mozilla/gecko/media/LollipopAsyncCodec$CodecCallback;->this$0:Lorg/mozilla/gecko/media/LollipopAsyncCodec;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, p1}, Lorg/mozilla/gecko/media/AsyncCodec$Callbacks;->onError(Lorg/mozilla/gecko/media/AsyncCodec;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/mozilla/gecko/media/LollipopAsyncCodec$CodecCallback$Forwarder;->mTarget:Lorg/mozilla/gecko/media/AsyncCodec$Callbacks;

    iget-object v1, p0, Lorg/mozilla/gecko/media/LollipopAsyncCodec$CodecCallback$Forwarder;->this$1:Lorg/mozilla/gecko/media/LollipopAsyncCodec$CodecCallback;

    iget-object v1, v1, Lorg/mozilla/gecko/media/LollipopAsyncCodec$CodecCallback;->this$0:Lorg/mozilla/gecko/media/LollipopAsyncCodec;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/media/MediaFormat;

    invoke-interface {v0, v1, p1}, Lorg/mozilla/gecko/media/AsyncCodec$Callbacks;->onOutputFormatChanged(Lorg/mozilla/gecko/media/AsyncCodec;Landroid/media/MediaFormat;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/mozilla/gecko/media/LollipopAsyncCodec$CodecCallback$Forwarder;->mTarget:Lorg/mozilla/gecko/media/AsyncCodec$Callbacks;

    iget-object v1, p0, Lorg/mozilla/gecko/media/LollipopAsyncCodec$CodecCallback$Forwarder;->this$1:Lorg/mozilla/gecko/media/LollipopAsyncCodec$CodecCallback;

    iget-object v1, v1, Lorg/mozilla/gecko/media/LollipopAsyncCodec$CodecCallback;->this$0:Lorg/mozilla/gecko/media/LollipopAsyncCodec;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-interface {v0, v1, v2, p1}, Lorg/mozilla/gecko/media/AsyncCodec$Callbacks;->onOutputBufferAvailable(Lorg/mozilla/gecko/media/AsyncCodec;ILandroid/media/MediaCodec$BufferInfo;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/mozilla/gecko/media/LollipopAsyncCodec$CodecCallback$Forwarder;->mTarget:Lorg/mozilla/gecko/media/AsyncCodec$Callbacks;

    iget-object v1, p0, Lorg/mozilla/gecko/media/LollipopAsyncCodec$CodecCallback$Forwarder;->this$1:Lorg/mozilla/gecko/media/LollipopAsyncCodec$CodecCallback;

    iget-object v1, v1, Lorg/mozilla/gecko/media/LollipopAsyncCodec$CodecCallback;->this$0:Lorg/mozilla/gecko/media/LollipopAsyncCodec;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, p1}, Lorg/mozilla/gecko/media/AsyncCodec$Callbacks;->onInputBufferAvailable(Lorg/mozilla/gecko/media/AsyncCodec;I)V

    :goto_0
    return-void
.end method
