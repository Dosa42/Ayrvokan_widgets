.class Lorg/mozilla/gecko/mozglue/ByteBufferInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field protected mBuf:Ljava/nio/ByteBuffer;

.field private final mNativeRef:Lorg/mozilla/gecko/mozglue/NativeReference;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Lorg/mozilla/gecko/mozglue/NativeReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lorg/mozilla/gecko/mozglue/ByteBufferInputStream;->mBuf:Ljava/nio/ByteBuffer;

    iput-object p2, p0, Lorg/mozilla/gecko/mozglue/ByteBufferInputStream;->mNativeRef:Lorg/mozilla/gecko/mozglue/NativeReference;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/mozglue/ByteBufferInputStream;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public read()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/gecko/mozglue/ByteBufferInputStream;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mozilla/gecko/mozglue/ByteBufferInputStream;->mNativeRef:Lorg/mozilla/gecko/mozglue/NativeReference;

    invoke-interface {v0}, Lorg/mozilla/gecko/mozglue/NativeReference;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/gecko/mozglue/ByteBufferInputStream;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0

    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public read([BII)I
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/mozilla/gecko/mozglue/ByteBufferInputStream;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mozilla/gecko/mozglue/ByteBufferInputStream;->mNativeRef:Lorg/mozilla/gecko/mozglue/NativeReference;

    invoke-interface {v0}, Lorg/mozilla/gecko/mozglue/NativeReference;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/gecko/mozglue/ByteBufferInputStream;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lorg/mozilla/gecko/mozglue/ByteBufferInputStream;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return p3

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public skip(J)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    iget-object v2, p0, Lorg/mozilla/gecko/mozglue/ByteBufferInputStream;->mNativeRef:Lorg/mozilla/gecko/mozglue/NativeReference;

    invoke-interface {v2}, Lorg/mozilla/gecko/mozglue/NativeReference;->isReleased()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/gecko/mozglue/ByteBufferInputStream;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    iget-object v0, p0, Lorg/mozilla/gecko/mozglue/ByteBufferInputStream;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v1

    long-to-int v2, p1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-wide p1

    :cond_1
    :goto_0
    return-wide v0
.end method
