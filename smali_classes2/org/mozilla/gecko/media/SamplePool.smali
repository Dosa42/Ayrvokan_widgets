.class final Lorg/mozilla/gecko/media/SamplePool;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/gecko/media/SamplePool$Impl;
    }
.end annotation


# instance fields
.field private final mInputs:Lorg/mozilla/gecko/media/SamplePool$Impl;

.field private final mOutputs:Lorg/mozilla/gecko/media/SamplePool$Impl;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/mozilla/gecko/media/SamplePool$Impl;

    .line 5
    .line 6
    const-string v1, " input sample pool"

    .line 7
    .line 8
    invoke-static {p1, v1}, La1/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/gecko/media/SamplePool$Impl;-><init>(Ljava/lang/String;ZLorg/mozilla/gecko/media/SamplePool$1;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lorg/mozilla/gecko/media/SamplePool;->mInputs:Lorg/mozilla/gecko/media/SamplePool$Impl;

    .line 18
    .line 19
    new-instance v0, Lorg/mozilla/gecko/media/SamplePool$Impl;

    .line 20
    .line 21
    const-string v1, " output sample pool"

    .line 22
    .line 23
    invoke-static {p1, v1}, La1/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-direct {v0, p1, p2, v3}, Lorg/mozilla/gecko/media/SamplePool$Impl;-><init>(Ljava/lang/String;ZLorg/mozilla/gecko/media/SamplePool$1;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lorg/mozilla/gecko/media/SamplePool;->mOutputs:Lorg/mozilla/gecko/media/SamplePool$Impl;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public getInputBuffer(I)Lorg/mozilla/gecko/media/SampleBuffer;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/media/SamplePool;->mInputs:Lorg/mozilla/gecko/media/SamplePool$Impl;

    invoke-static {v0, p1}, Lorg/mozilla/gecko/media/SamplePool$Impl;->access$500(Lorg/mozilla/gecko/media/SamplePool$Impl;I)Lorg/mozilla/gecko/media/SampleBuffer;

    move-result-object p1

    return-object p1
.end method

.method public getOutputBuffer(I)Lorg/mozilla/gecko/media/SampleBuffer;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/media/SamplePool;->mOutputs:Lorg/mozilla/gecko/media/SamplePool$Impl;

    invoke-static {v0, p1}, Lorg/mozilla/gecko/media/SamplePool$Impl;->access$500(Lorg/mozilla/gecko/media/SamplePool$Impl;I)Lorg/mozilla/gecko/media/SampleBuffer;

    move-result-object p1

    return-object p1
.end method

.method public obtainInput(I)Lorg/mozilla/gecko/media/Sample;
    .locals 6

    iget-object v0, p0, Lorg/mozilla/gecko/media/SamplePool;->mInputs:Lorg/mozilla/gecko/media/SamplePool$Impl;

    invoke-static {v0, p1}, Lorg/mozilla/gecko/media/SamplePool$Impl;->access$200(Lorg/mozilla/gecko/media/SamplePool$Impl;I)Lorg/mozilla/gecko/media/Sample;

    move-result-object p1

    iget-object v0, p1, Lorg/mozilla/gecko/media/Sample;->info:Landroid/media/MediaCodec$BufferInfo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    return-object p1
.end method

.method public obtainOutput(Landroid/media/MediaCodec$BufferInfo;)Lorg/mozilla/gecko/media/Sample;
    .locals 7

    iget-object v0, p0, Lorg/mozilla/gecko/media/SamplePool;->mOutputs:Lorg/mozilla/gecko/media/SamplePool$Impl;

    iget v1, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-static {v0, v1}, Lorg/mozilla/gecko/media/SamplePool$Impl;->access$200(Lorg/mozilla/gecko/media/SamplePool$Impl;I)Lorg/mozilla/gecko/media/Sample;

    move-result-object v0

    iget-object v1, v0, Lorg/mozilla/gecko/media/Sample;->info:Landroid/media/MediaCodec$BufferInfo;

    const/4 v2, 0x0

    iget v3, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v4, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v6, p1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    return-object v0
.end method

.method public recycleInput(Lorg/mozilla/gecko/media/Sample;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/mozilla/gecko/media/Sample;->cryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    iget-object v0, p0, Lorg/mozilla/gecko/media/SamplePool;->mInputs:Lorg/mozilla/gecko/media/SamplePool$Impl;

    invoke-static {v0, p1}, Lorg/mozilla/gecko/media/SamplePool$Impl;->access$300(Lorg/mozilla/gecko/media/SamplePool$Impl;Lorg/mozilla/gecko/media/Sample;)V

    return-void
.end method

.method public recycleOutput(Lorg/mozilla/gecko/media/Sample;)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/media/SamplePool;->mOutputs:Lorg/mozilla/gecko/media/SamplePool$Impl;

    invoke-static {v0, p1}, Lorg/mozilla/gecko/media/SamplePool$Impl;->access$300(Lorg/mozilla/gecko/media/SamplePool$Impl;Lorg/mozilla/gecko/media/Sample;)V

    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/media/SamplePool;->mInputs:Lorg/mozilla/gecko/media/SamplePool$Impl;

    invoke-static {v0}, Lorg/mozilla/gecko/media/SamplePool$Impl;->access$400(Lorg/mozilla/gecko/media/SamplePool$Impl;)V

    iget-object v0, p0, Lorg/mozilla/gecko/media/SamplePool;->mOutputs:Lorg/mozilla/gecko/media/SamplePool$Impl;

    invoke-static {v0}, Lorg/mozilla/gecko/media/SamplePool$Impl;->access$400(Lorg/mozilla/gecko/media/SamplePool$Impl;)V

    return-void
.end method

.method public setInputBufferSize(I)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/media/SamplePool;->mInputs:Lorg/mozilla/gecko/media/SamplePool$Impl;

    invoke-static {v0, p1}, Lorg/mozilla/gecko/media/SamplePool$Impl;->access$100(Lorg/mozilla/gecko/media/SamplePool$Impl;I)V

    return-void
.end method

.method public setOutputBufferSize(I)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/media/SamplePool;->mOutputs:Lorg/mozilla/gecko/media/SamplePool$Impl;

    invoke-static {v0, p1}, Lorg/mozilla/gecko/media/SamplePool$Impl;->access$100(Lorg/mozilla/gecko/media/SamplePool$Impl;I)V

    return-void
.end method
