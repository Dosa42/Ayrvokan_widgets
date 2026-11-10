.class public final Lorg/mozilla/gecko/media/AsyncCodecFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;)Lorg/mozilla/gecko/media/AsyncCodec;
    .locals 1

    new-instance v0, Lorg/mozilla/gecko/media/LollipopAsyncCodec;

    invoke-direct {v0, p0}, Lorg/mozilla/gecko/media/LollipopAsyncCodec;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
