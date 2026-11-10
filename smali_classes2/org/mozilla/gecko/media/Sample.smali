.class public final Lorg/mozilla/gecko/media/Sample;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/mozilla/gecko/media/Sample;",
            ">;"
        }
    .end annotation
.end field

.field public static final EOS:Lorg/mozilla/gecko/media/Sample;

.field public static final NO_BUFFER:I = -0x1

.field private static sPool:Lorg/mozilla/gecko/media/Sample;

.field private static sPoolSize:I


# instance fields
.field public bufferId:I

.field public cryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

.field public info:Landroid/media/MediaCodec$BufferInfo;
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field private mNext:Lorg/mozilla/gecko/media/Sample;

.field public session:J
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    new-instance v0, Lorg/mozilla/gecko/media/Sample;

    invoke-direct {v0}, Lorg/mozilla/gecko/media/Sample;-><init>()V

    sput-object v0, Lorg/mozilla/gecko/media/Sample;->EOS:Lorg/mozilla/gecko/media/Sample;

    iget-object v1, v0, Lorg/mozilla/gecko/media/Sample;->info:Landroid/media/MediaCodec$BufferInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/high16 v4, -0x8000000000000000L

    const/4 v6, 0x4

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    new-instance v0, Lorg/mozilla/gecko/media/Sample;

    invoke-direct {v0}, Lorg/mozilla/gecko/media/Sample;-><init>()V

    sput-object v0, Lorg/mozilla/gecko/media/Sample;->sPool:Lorg/mozilla/gecko/media/Sample;

    const/4 v0, 0x1

    sput v0, Lorg/mozilla/gecko/media/Sample;->sPoolSize:I

    new-instance v0, Lorg/mozilla/gecko/media/Sample$1;

    invoke-direct {v0}, Lorg/mozilla/gecko/media/Sample$1;-><init>()V

    sput-object v0, Lorg/mozilla/gecko/media/Sample;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/mozilla/gecko/media/Sample;->bufferId:I

    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lorg/mozilla/gecko/media/Sample;->info:Landroid/media/MediaCodec$BufferInfo;

    return-void
.end method

.method public static synthetic access$000()I
    .locals 1

    sget v0, Lorg/mozilla/gecko/media/Sample;->sPoolSize:I

    return v0
.end method

.method public static synthetic access$010()I
    .locals 2

    sget v0, Lorg/mozilla/gecko/media/Sample;->sPoolSize:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lorg/mozilla/gecko/media/Sample;->sPoolSize:I

    return v0
.end method

.method public static synthetic access$100()Lorg/mozilla/gecko/media/Sample;
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/media/Sample;->sPool:Lorg/mozilla/gecko/media/Sample;

    return-object v0
.end method

.method public static synthetic access$102(Lorg/mozilla/gecko/media/Sample;)Lorg/mozilla/gecko/media/Sample;
    .locals 0

    sput-object p0, Lorg/mozilla/gecko/media/Sample;->sPool:Lorg/mozilla/gecko/media/Sample;

    return-object p0
.end method

.method public static synthetic access$200(Lorg/mozilla/gecko/media/Sample;)Lorg/mozilla/gecko/media/Sample;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/gecko/media/Sample;->mNext:Lorg/mozilla/gecko/media/Sample;

    return-object p0
.end method

.method public static synthetic access$202(Lorg/mozilla/gecko/media/Sample;Lorg/mozilla/gecko/media/Sample;)Lorg/mozilla/gecko/media/Sample;
    .locals 0

    iput-object p1, p0, Lorg/mozilla/gecko/media/Sample;->mNext:Lorg/mozilla/gecko/media/Sample;

    return-object p1
.end method

.method public static synthetic access$300(Lorg/mozilla/gecko/media/Sample;Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/mozilla/gecko/media/Sample;->readInfo(Landroid/os/Parcel;)V

    return-void
.end method

.method public static synthetic access$400(Lorg/mozilla/gecko/media/Sample;Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/mozilla/gecko/media/Sample;->readCrypto(Landroid/os/Parcel;)V

    return-void
.end method

.method public static byteArrayFromBuffer(Ljava/nio/ByteBuffer;II)[B
    .locals 1

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    array-length v0, v0

    if-ne v0, p2, :cond_1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0

    :cond_1
    add-int/2addr p2, p1

    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    sub-int/2addr p2, p1

    new-array p2, p2, [B

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object p2

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private readCrypto(Landroid/os/Parcel;)V
    .locals 7

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/mozilla/gecko/media/Sample;->cryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iget-object p1, p0, Lorg/mozilla/gecko/media/Sample;->cryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    if-nez p1, :cond_1

    new-instance p1, Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$CryptoInfo;-><init>()V

    iput-object p1, p0, Lorg/mozilla/gecko/media/Sample;->cryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    :cond_1
    iget-object v0, p0, Lorg/mozilla/gecko/media/Sample;->cryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec$CryptoInfo;->set(I[I[I[B[BI)V

    return-void
.end method

.method private readInfo(Landroid/os/Parcel;)V
    .locals 6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iget-object v0, p0, Lorg/mozilla/gecko/media/Sample;->info:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    return-void
.end method

.method private writeCrypto(Landroid/os/Parcel;)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/media/Sample;->cryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lorg/mozilla/gecko/media/Sample;->cryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    iget-object v0, v0, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Lorg/mozilla/gecko/media/Sample;->cryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    iget-object v0, v0, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Lorg/mozilla/gecko/media/Sample;->cryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    iget v0, v0, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lorg/mozilla/gecko/media/Sample;->cryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    iget-object v0, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Lorg/mozilla/gecko/media/Sample;->cryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    iget-object v0, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Lorg/mozilla/gecko/media/Sample;->cryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    iget v0, v0, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method private writeInfo(Landroid/os/Parcel;)V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/gecko/media/Sample;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lorg/mozilla/gecko/media/Sample;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lorg/mozilla/gecko/media/Sample;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lorg/mozilla/gecko/media/Sample;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dispose()V
    .locals 14
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    invoke-virtual {p0}, Lorg/mozilla/gecko/media/Sample;->isEOS()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lorg/mozilla/gecko/media/Sample;->bufferId:I

    iget-object v1, p0, Lorg/mozilla/gecko/media/Sample;->info:Landroid/media/MediaCodec$BufferInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    iget-object v7, p0, Lorg/mozilla/gecko/media/Sample;->cryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    if-eqz v7, :cond_1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v7 .. v13}, Landroid/media/MediaCodec$CryptoInfo;->set(I[I[I[B[BI)V

    :cond_1
    sget-object v0, Lorg/mozilla/gecko/media/Sample;->CREATOR:Landroid/os/Parcelable$Creator;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/mozilla/gecko/media/Sample;->sPool:Lorg/mozilla/gecko/media/Sample;

    iput-object v1, p0, Lorg/mozilla/gecko/media/Sample;->mNext:Lorg/mozilla/gecko/media/Sample;

    sput-object p0, Lorg/mozilla/gecko/media/Sample;->sPool:Lorg/mozilla/gecko/media/Sample;

    sget v1, Lorg/mozilla/gecko/media/Sample;->sPoolSize:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lorg/mozilla/gecko/media/Sample;->sPoolSize:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isEOS()Z
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/media/Sample;->EOS:Lorg/mozilla/gecko/media/Sample;

    if-eq p0, v0, :cond_1

    iget-object v0, p0, Lorg/mozilla/gecko/media/Sample;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public set(Landroid/media/MediaCodec$BufferInfo;Landroid/media/MediaCodec$CryptoInfo;)Lorg/mozilla/gecko/media/Sample;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/mozilla/gecko/media/Sample;->setBufferInfo(Landroid/media/MediaCodec$BufferInfo;)V

    invoke-virtual {p0, p2}, Lorg/mozilla/gecko/media/Sample;->setCryptoInfo(Landroid/media/MediaCodec$CryptoInfo;)V

    return-object p0
.end method

.method public setBufferInfo(Landroid/media/MediaCodec$BufferInfo;)V
    .locals 6

    iget-object v0, p0, Lorg/mozilla/gecko/media/Sample;->info:Landroid/media/MediaCodec$BufferInfo;

    const/4 v1, 0x0

    iget v2, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v3, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v5, p1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    return-void
.end method

.method public setCryptoInfo(Landroid/media/MediaCodec$CryptoInfo;)V
    .locals 8

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/mozilla/gecko/media/Sample;->cryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    return-void

    :cond_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/Sample;->cryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    if-nez v0, :cond_1

    new-instance v0, Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$CryptoInfo;-><init>()V

    iput-object v0, p0, Lorg/mozilla/gecko/media/Sample;->cryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    :cond_1
    iget-object v1, p0, Lorg/mozilla/gecko/media/Sample;->cryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    iget v2, p1, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    iget-object v3, p1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    iget-object v4, p1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    iget-object v5, p1, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    iget-object v6, p1, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    iget v7, p1, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    invoke-virtual/range {v1 .. v7}, Landroid/media/MediaCodec$CryptoInfo;->set(I[I[I[B[BI)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/mozilla/gecko/media/Sample;->isEOS()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "EOS sample"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{ session#:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lorg/mozilla/gecko/media/Sample;->session:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", buffer#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/mozilla/gecko/media/Sample;->bufferId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", info={ offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mozilla/gecko/media/Sample;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mozilla/gecko/media/Sample;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mozilla/gecko/media/Sample;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v1, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mozilla/gecko/media/Sample;->info:Landroid/media/MediaCodec$BufferInfo;

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

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lorg/mozilla/gecko/media/Sample;->session:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Lorg/mozilla/gecko/media/Sample;->bufferId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-direct {p0, p1}, Lorg/mozilla/gecko/media/Sample;->writeInfo(Landroid/os/Parcel;)V

    invoke-direct {p0, p1}, Lorg/mozilla/gecko/media/Sample;->writeCrypto(Landroid/os/Parcel;)V

    return-void
.end method
