.class public Lorg/mozilla/gecko/media/CodecProxy$NativeCallbacks;
.super Lorg/mozilla/gecko/mozglue/JNIObject;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/gecko/media/CodecProxy$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/media/CodecProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NativeCallbacks"
.end annotation

.annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/gecko/mozglue/JNIObject;-><init>()V

    return-void
.end method


# virtual methods
.method public disposeNative()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public native onError(Z)V
.end method

.method public native onInputStatus(JZ)V
.end method

.method public native onOutput(Lorg/mozilla/gecko/media/Sample;Lorg/mozilla/gecko/media/SampleBuffer;)V
.end method

.method public native onOutputFormatChanged(Landroid/media/MediaFormat;)V
.end method
