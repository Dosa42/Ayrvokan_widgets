.class public final Lorg/mozilla/gecko/media/GeckoAudioInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
.end annotation


# instance fields
.field public final bitDepth:I

.field public final channels:I

.field public final codecSpecificData:[B

.field public final duration:J

.field public final mimeType:Ljava/lang/String;

.field public final profile:I

.field public final rate:I


# direct methods
.method public constructor <init>(IIIIJLjava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/mozilla/gecko/media/GeckoAudioInfo;->rate:I

    iput p2, p0, Lorg/mozilla/gecko/media/GeckoAudioInfo;->channels:I

    iput p3, p0, Lorg/mozilla/gecko/media/GeckoAudioInfo;->bitDepth:I

    iput p4, p0, Lorg/mozilla/gecko/media/GeckoAudioInfo;->profile:I

    iput-wide p5, p0, Lorg/mozilla/gecko/media/GeckoAudioInfo;->duration:J

    iput-object p7, p0, Lorg/mozilla/gecko/media/GeckoAudioInfo;->mimeType:Ljava/lang/String;

    iput-object p8, p0, Lorg/mozilla/gecko/media/GeckoAudioInfo;->codecSpecificData:[B

    return-void
.end method
