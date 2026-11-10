.class final Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$CodecMaxValues;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CodecMaxValues"
.end annotation


# instance fields
.field public final height:I

.field public final inputSize:I

.field public final width:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$CodecMaxValues;->width:I

    iput p2, p0, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$CodecMaxValues;->height:I

    iput p3, p0, Lorg/mozilla/gecko/media/GeckoHlsVideoRenderer$CodecMaxValues;->inputSize:I

    return-void
.end method
