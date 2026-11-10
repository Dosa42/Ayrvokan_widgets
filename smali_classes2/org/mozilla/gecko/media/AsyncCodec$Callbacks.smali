.class public interface abstract Lorg/mozilla/gecko/media/AsyncCodec$Callbacks;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/media/AsyncCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation


# virtual methods
.method public abstract onError(Lorg/mozilla/gecko/media/AsyncCodec;I)V
.end method

.method public abstract onInputBufferAvailable(Lorg/mozilla/gecko/media/AsyncCodec;I)V
.end method

.method public abstract onOutputBufferAvailable(Lorg/mozilla/gecko/media/AsyncCodec;ILandroid/media/MediaCodec$BufferInfo;)V
.end method

.method public abstract onOutputFormatChanged(Lorg/mozilla/gecko/media/AsyncCodec;Landroid/media/MediaFormat;)V
.end method
