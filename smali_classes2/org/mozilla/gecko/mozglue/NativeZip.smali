.class public Lorg/mozilla/gecko/mozglue/NativeZip;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/gecko/mozglue/NativeReference;


# static fields
.field private static final DEFLATE:I = 0x8

.field private static final STORE:I


# instance fields
.field private mInput:Ljava/io/InputStream;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private volatile mObj:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Lorg/mozilla/gecko/mozglue/ByteBufferInputStream;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/mozilla/gecko/mozglue/ByteBufferInputStream;

    iget-object v0, v0, Lorg/mozilla/gecko/mozglue/ByteBufferInputStream;->mBuf:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lorg/mozilla/gecko/mozglue/NativeZip;->getZipFromByteBuffer(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/mozilla/gecko/mozglue/NativeZip;->mObj:J

    iput-object p1, p0, Lorg/mozilla/gecko/mozglue/NativeZip;->mInput:Ljava/io/InputStream;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Got "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", but expected ByteBufferInputStream!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/mozilla/gecko/mozglue/NativeZip;->getZip(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/mozilla/gecko/mozglue/NativeZip;->mObj:J

    return-void
.end method

.method private native _getInputStream(JLjava/lang/String;)Ljava/io/InputStream;
.end method

.method private static native _release(J)V
.end method

.method private createInputStream(Ljava/nio/ByteBuffer;I)Ljava/io/InputStream;
    .locals 2
    .annotation build Lorg/mozilla/gecko/annotation/JNITarget;
    .end annotation

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    if-ne p2, v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    const-string v0, "Unexpected compression: "

    .line 11
    .line 12
    invoke-static {v0, p2}, La1/b;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p1

    .line 20
    :cond_1
    :goto_0
    new-instance v1, Lorg/mozilla/gecko/mozglue/ByteBufferInputStream;

    .line 21
    .line 22
    invoke-direct {v1, p1, p0}, Lorg/mozilla/gecko/mozglue/ByteBufferInputStream;-><init>(Ljava/nio/ByteBuffer;Lorg/mozilla/gecko/mozglue/NativeReference;)V

    .line 23
    .line 24
    .line 25
    if-ne p2, v0, :cond_2

    .line 26
    .line 27
    new-instance p1, Ljava/util/zip/Inflater;

    .line 28
    .line 29
    const/4 p2, 0x1

    .line 30
    invoke-direct {p1, p2}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 31
    .line 32
    .line 33
    new-instance p2, Ljava/util/zip/InflaterInputStream;

    .line 34
    .line 35
    invoke-direct {p2, v1, p1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    .line 36
    .line 37
    .line 38
    move-object v1, p2

    .line 39
    :cond_2
    return-object v1
.end method

.method private static native getZip(Ljava/lang/String;)J
.end method

.method private static native getZipFromByteBuffer(Ljava/nio/ByteBuffer;)J
.end method


# virtual methods
.method public finalize()V
    .locals 0

    invoke-virtual {p0}, Lorg/mozilla/gecko/mozglue/NativeZip;->release()V

    return-void
.end method

.method public getInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/mozilla/gecko/mozglue/NativeZip;->isReleased()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-wide v0, p0, Lorg/mozilla/gecko/mozglue/NativeZip;->mObj:J

    .line 8
    .line 9
    invoke-direct {p0, v0, v1, p1}, Lorg/mozilla/gecko/mozglue/NativeZip;->_getInputStream(JLjava/lang/String;)Ljava/io/InputStream;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    const-string v1, "Can\'t get path \""

    .line 17
    .line 18
    const-string v2, "\" because NativeZip is closed!"

    .line 19
    .line 20
    invoke-static {v1, p1, v2}, La1/b;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0
.end method

.method public isReleased()Z
    .locals 4

    iget-wide v0, p0, Lorg/mozilla/gecko/mozglue/NativeZip;->mObj:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public release()V
    .locals 4

    iget-wide v0, p0, Lorg/mozilla/gecko/mozglue/NativeZip;->mObj:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/mozilla/gecko/mozglue/NativeZip;->mObj:J

    invoke-static {v0, v1}, Lorg/mozilla/gecko/mozglue/NativeZip;->_release(J)V

    iput-wide v2, p0, Lorg/mozilla/gecko/mozglue/NativeZip;->mObj:J

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/gecko/mozglue/NativeZip;->mInput:Ljava/io/InputStream;

    return-void
.end method
