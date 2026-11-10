.class public interface abstract Lorg/mozilla/gecko/media/CodecProxy$Callbacks;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/media/CodecProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation


# virtual methods
.method public abstract onError(Z)V
.end method

.method public abstract onInputStatus(JZ)V
.end method

.method public abstract onOutput(Lorg/mozilla/gecko/media/Sample;Lorg/mozilla/gecko/media/SampleBuffer;)V
.end method

.method public abstract onOutputFormatChanged(Landroid/media/MediaFormat;)V
.end method
