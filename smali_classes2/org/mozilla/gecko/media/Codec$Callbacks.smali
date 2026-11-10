.class final Lorg/mozilla/gecko/media/Codec$Callbacks;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/gecko/media/AsyncCodec$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/media/Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Callbacks"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/gecko/media/Codec;


# direct methods
.method private constructor <init>(Lorg/mozilla/gecko/media/Codec;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mozilla/gecko/media/Codec$Callbacks;->this$0:Lorg/mozilla/gecko/media/Codec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/mozilla/gecko/media/Codec;Lorg/mozilla/gecko/media/Codec$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/mozilla/gecko/media/Codec$Callbacks;-><init>(Lorg/mozilla/gecko/media/Codec;)V

    return-void
.end method


# virtual methods
.method public onError(Lorg/mozilla/gecko/media/AsyncCodec;I)V
    .locals 3

    .line 1
    iget-object p1, p0, Lorg/mozilla/gecko/media/Codec$Callbacks;->this$0:Lorg/mozilla/gecko/media/Codec;

    .line 2
    .line 3
    sget-object v0, Lorg/mozilla/gecko/media/Codec$Error;->FATAL:Lorg/mozilla/gecko/media/Codec$Error;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/Exception;

    .line 6
    .line 7
    const-string v2, "codec error:"

    .line 8
    .line 9
    invoke-static {v2, p2}, La1/b;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-direct {v1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p1, v0, v1}, Lorg/mozilla/gecko/media/Codec;->access$400(Lorg/mozilla/gecko/media/Codec;Lorg/mozilla/gecko/media/Codec$Error;Ljava/lang/Exception;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onInputBufferAvailable(Lorg/mozilla/gecko/media/AsyncCodec;I)V
    .locals 0

    iget-object p1, p0, Lorg/mozilla/gecko/media/Codec$Callbacks;->this$0:Lorg/mozilla/gecko/media/Codec;

    invoke-static {p1}, Lorg/mozilla/gecko/media/Codec;->access$000(Lorg/mozilla/gecko/media/Codec;)Lorg/mozilla/gecko/media/Codec$InputProcessor;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/mozilla/gecko/media/Codec$InputProcessor;->access$100(Lorg/mozilla/gecko/media/Codec$InputProcessor;I)V

    return-void
.end method

.method public onOutputBufferAvailable(Lorg/mozilla/gecko/media/AsyncCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 0

    iget-object p1, p0, Lorg/mozilla/gecko/media/Codec$Callbacks;->this$0:Lorg/mozilla/gecko/media/Codec;

    invoke-static {p1}, Lorg/mozilla/gecko/media/Codec;->access$200(Lorg/mozilla/gecko/media/Codec;)Lorg/mozilla/gecko/media/Codec$OutputProcessor;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lorg/mozilla/gecko/media/Codec$OutputProcessor;->access$300(Lorg/mozilla/gecko/media/Codec$OutputProcessor;ILandroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method public onOutputFormatChanged(Lorg/mozilla/gecko/media/AsyncCodec;Landroid/media/MediaFormat;)V
    .locals 0

    iget-object p1, p0, Lorg/mozilla/gecko/media/Codec$Callbacks;->this$0:Lorg/mozilla/gecko/media/Codec;

    invoke-static {p1}, Lorg/mozilla/gecko/media/Codec;->access$200(Lorg/mozilla/gecko/media/Codec;)Lorg/mozilla/gecko/media/Codec$OutputProcessor;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/mozilla/gecko/media/Codec$OutputProcessor;->access$500(Lorg/mozilla/gecko/media/Codec$OutputProcessor;Landroid/media/MediaFormat;)V

    return-void
.end method
