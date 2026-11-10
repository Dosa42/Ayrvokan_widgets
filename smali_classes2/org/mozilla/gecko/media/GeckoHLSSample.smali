.class public final Lorg/mozilla/gecko/media/GeckoHLSSample;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EOS:Lorg/mozilla/gecko/media/GeckoHLSSample;


# instance fields
.field public final cryptoInfo:Landroid/media/MediaCodec$CryptoInfo;
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field public duration:J
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field public final formatIndex:I
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field public final info:Landroid/media/MediaCodec$BufferInfo;
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field private mBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v6, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v6}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/high16 v3, -0x8000000000000000L

    const/4 v5, 0x4

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    new-instance v0, Lorg/mozilla/gecko/media/GeckoHLSSample;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v6, v1, v2}, Lorg/mozilla/gecko/media/GeckoHLSSample;-><init>(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Landroid/media/MediaCodec$CryptoInfo;I)V

    sput-object v0, Lorg/mozilla/gecko/media/GeckoHLSSample;->EOS:Lorg/mozilla/gecko/media/GeckoHLSSample;

    return-void
.end method

.method private constructor <init>(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Landroid/media/MediaCodec$CryptoInfo;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, Lorg/mozilla/gecko/media/GeckoHLSSample;->formatIndex:I

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lorg/mozilla/gecko/media/GeckoHLSSample;->duration:J

    iput-object p1, p0, Lorg/mozilla/gecko/media/GeckoHLSSample;->mBuffer:Ljava/nio/ByteBuffer;

    iput-object p2, p0, Lorg/mozilla/gecko/media/GeckoHLSSample;->info:Landroid/media/MediaCodec$BufferInfo;

    iput-object p3, p0, Lorg/mozilla/gecko/media/GeckoHLSSample;->cryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    return-void
.end method

.method public static create(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Landroid/media/MediaCodec$CryptoInfo;I)Lorg/mozilla/gecko/media/GeckoHLSSample;
    .locals 1

    new-instance v0, Lorg/mozilla/gecko/media/GeckoHLSSample;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/mozilla/gecko/media/GeckoHLSSample;-><init>(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Landroid/media/MediaCodec$CryptoInfo;I)V

    return-object v0
.end method


# virtual methods
.method public isEOS()Z
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHLSSample;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isKeyFrame()Z
    .locals 2
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHLSSample;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/mozilla/gecko/media/GeckoHLSSample;->isEOS()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "EOS GeckoHLSSample"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{ info={ offset="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mozilla/gecko/media/GeckoHLSSample;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mozilla/gecko/media/GeckoHLSSample;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mozilla/gecko/media/GeckoHLSSample;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v1, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/mozilla/gecko/media/GeckoHLSSample;->duration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mozilla/gecko/media/GeckoHLSSample;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " } }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToByteBuffer(Ljava/nio/ByteBuffer;)V
    .locals 2
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHLSSample;->mBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lorg/mozilla/gecko/media/GeckoHLSSample;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method
