.class Lorg/mozilla/gecko/media/LollipopAsyncCodec$CodecCallback;
.super Landroid/media/MediaCodec$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/media/LollipopAsyncCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CodecCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/gecko/media/LollipopAsyncCodec$CodecCallback$Forwarder;
    }
.end annotation


# instance fields
.field private final mForwarder:Lorg/mozilla/gecko/media/LollipopAsyncCodec$CodecCallback$Forwarder;

.field final synthetic this$0:Lorg/mozilla/gecko/media/LollipopAsyncCodec;


# direct methods
.method private constructor <init>(Lorg/mozilla/gecko/media/LollipopAsyncCodec;Lorg/mozilla/gecko/media/AsyncCodec$Callbacks;Landroid/os/Handler;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/mozilla/gecko/media/LollipopAsyncCodec$CodecCallback;->this$0:Lorg/mozilla/gecko/media/LollipopAsyncCodec;

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    const/4 p1, 0x0

    if-nez p3, :cond_0

    move-object p3, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p3

    :goto_0
    if-nez p3, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p3

    :cond_1
    if-nez p3, :cond_2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    :cond_2
    new-instance v0, Lorg/mozilla/gecko/media/LollipopAsyncCodec$CodecCallback$Forwarder;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/mozilla/gecko/media/LollipopAsyncCodec$CodecCallback$Forwarder;-><init>(Lorg/mozilla/gecko/media/LollipopAsyncCodec$CodecCallback;Landroid/os/Looper;Lorg/mozilla/gecko/media/AsyncCodec$Callbacks;Lorg/mozilla/gecko/media/LollipopAsyncCodec$1;)V

    iput-object v0, p0, Lorg/mozilla/gecko/media/LollipopAsyncCodec$CodecCallback;->mForwarder:Lorg/mozilla/gecko/media/LollipopAsyncCodec$CodecCallback$Forwarder;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/mozilla/gecko/media/LollipopAsyncCodec;Lorg/mozilla/gecko/media/AsyncCodec$Callbacks;Landroid/os/Handler;Lorg/mozilla/gecko/media/LollipopAsyncCodec$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lorg/mozilla/gecko/media/LollipopAsyncCodec$CodecCallback;-><init>(Lorg/mozilla/gecko/media/LollipopAsyncCodec;Lorg/mozilla/gecko/media/AsyncCodec$Callbacks;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 0

    iget-object p1, p0, Lorg/mozilla/gecko/media/LollipopAsyncCodec$CodecCallback;->mForwarder:Lorg/mozilla/gecko/media/LollipopAsyncCodec$CodecCallback$Forwarder;

    invoke-static {p1, p2}, Lorg/mozilla/gecko/media/LollipopAsyncCodec$CodecCallback$Forwarder;->access$400(Lorg/mozilla/gecko/media/LollipopAsyncCodec$CodecCallback$Forwarder;Landroid/media/MediaCodec$CodecException;)V

    return-void
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 0

    iget-object p1, p0, Lorg/mozilla/gecko/media/LollipopAsyncCodec$CodecCallback;->mForwarder:Lorg/mozilla/gecko/media/LollipopAsyncCodec$CodecCallback$Forwarder;

    invoke-static {p1, p2}, Lorg/mozilla/gecko/media/LollipopAsyncCodec$CodecCallback$Forwarder;->access$100(Lorg/mozilla/gecko/media/LollipopAsyncCodec$CodecCallback$Forwarder;I)V

    return-void
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 0

    iget-object p1, p0, Lorg/mozilla/gecko/media/LollipopAsyncCodec$CodecCallback;->mForwarder:Lorg/mozilla/gecko/media/LollipopAsyncCodec$CodecCallback$Forwarder;

    invoke-static {p1, p2, p3}, Lorg/mozilla/gecko/media/LollipopAsyncCodec$CodecCallback$Forwarder;->access$200(Lorg/mozilla/gecko/media/LollipopAsyncCodec$CodecCallback$Forwarder;ILandroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 0

    iget-object p1, p0, Lorg/mozilla/gecko/media/LollipopAsyncCodec$CodecCallback;->mForwarder:Lorg/mozilla/gecko/media/LollipopAsyncCodec$CodecCallback$Forwarder;

    invoke-static {p1, p2}, Lorg/mozilla/gecko/media/LollipopAsyncCodec$CodecCallback$Forwarder;->access$300(Lorg/mozilla/gecko/media/LollipopAsyncCodec$CodecCallback$Forwarder;Landroid/media/MediaFormat;)V

    return-void
.end method
