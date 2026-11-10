.class public Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper$Callbacks;
.super Lorg/mozilla/gecko/mozglue/JNIObject;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/gecko/media/BaseHlsPlayer$DemuxerCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/media/GeckoHLSDemuxerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Callbacks"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

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

.method public native onError(I)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end method

.method public native onInitialized(ZZ)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end method
