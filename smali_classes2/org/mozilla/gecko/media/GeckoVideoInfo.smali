.class public final Lorg/mozilla/gecko/media/GeckoVideoInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
.end annotation


# instance fields
.field public final codecSpecificData:[B

.field public final displayHeight:I

.field public final displayWidth:I

.field public final duration:J

.field public final extraData:[B

.field public final mimeType:Ljava/lang/String;

.field public final pictureHeight:I

.field public final pictureWidth:I

.field public final rotation:I

.field public final stereoMode:I


# direct methods
.method public constructor <init>(IIIIIIJLjava/lang/String;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/mozilla/gecko/media/GeckoVideoInfo;->displayWidth:I

    iput p2, p0, Lorg/mozilla/gecko/media/GeckoVideoInfo;->displayHeight:I

    iput p3, p0, Lorg/mozilla/gecko/media/GeckoVideoInfo;->pictureWidth:I

    iput p4, p0, Lorg/mozilla/gecko/media/GeckoVideoInfo;->pictureHeight:I

    iput p5, p0, Lorg/mozilla/gecko/media/GeckoVideoInfo;->rotation:I

    iput p6, p0, Lorg/mozilla/gecko/media/GeckoVideoInfo;->stereoMode:I

    iput-wide p7, p0, Lorg/mozilla/gecko/media/GeckoVideoInfo;->duration:J

    iput-object p9, p0, Lorg/mozilla/gecko/media/GeckoVideoInfo;->mimeType:Ljava/lang/String;

    iput-object p10, p0, Lorg/mozilla/gecko/media/GeckoVideoInfo;->extraData:[B

    iput-object p11, p0, Lorg/mozilla/gecko/media/GeckoVideoInfo;->codecSpecificData:[B

    return-void
.end method
