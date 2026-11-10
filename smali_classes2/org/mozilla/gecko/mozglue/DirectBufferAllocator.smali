.class public final Lorg/mozilla/gecko/mozglue/DirectBufferAllocator;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allocate(I)Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    if-lez p0, :cond_2

    .line 2
    .line 3
    int-to-long v0, p0

    .line 4
    invoke-static {v0, v1}, Lorg/mozilla/gecko/mozglue/DirectBufferAllocator;->nativeAllocateDirectBuffer(J)Ljava/nio/ByteBuffer;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    .line 18
    .line 19
    const-string v0, "allocateDirectBuffer() did not return a direct buffer"

    .line 20
    .line 21
    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    throw p0

    .line 25
    :cond_1
    new-instance p0, Ljava/lang/OutOfMemoryError;

    .line 26
    .line 27
    const-string v0, "allocateDirectBuffer() returned null"

    .line 28
    .line 29
    invoke-direct {p0, v0}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p0

    .line 33
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 34
    .line 35
    const-string v1, "Invalid size "

    .line 36
    .line 37
    invoke-static {v1, p0}, La1/b;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v0
.end method

.method public static free(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lorg/mozilla/gecko/mozglue/DirectBufferAllocator;->nativeFreeDirectBuffer(Ljava/nio/ByteBuffer;)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "buffer must be direct"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static native nativeAllocateDirectBuffer(J)Ljava/nio/ByteBuffer;
.end method

.method private static native nativeFreeDirectBuffer(Ljava/nio/ByteBuffer;)V
.end method
