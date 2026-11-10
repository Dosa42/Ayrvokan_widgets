.class public final Lorg/mozilla/gecko/media/SampleBuffer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/mozilla/gecko/media/SampleBuffer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mSharedMem:Lorg/mozilla/gecko/mozglue/SharedMemory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/mozilla/gecko/media/SampleBuffer$1;

    invoke-direct {v0}, Lorg/mozilla/gecko/media/SampleBuffer$1;-><init>()V

    sput-object v0, Lorg/mozilla/gecko/media/SampleBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lorg/mozilla/gecko/media/SampleBuffer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lorg/mozilla/gecko/mozglue/SharedMemory;

    iput-object p1, p0, Lorg/mozilla/gecko/media/SampleBuffer;->mSharedMem:Lorg/mozilla/gecko/mozglue/SharedMemory;

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/gecko/mozglue/SharedMemory;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/gecko/media/SampleBuffer;->mSharedMem:Lorg/mozilla/gecko/mozglue/SharedMemory;

    return-void
.end method

.method private static native nativeReadFromDirectBuffer(Ljava/nio/ByteBuffer;JII)V
.end method

.method private static native nativeWriteToDirectBuffer(JLjava/nio/ByteBuffer;II)V
.end method


# virtual methods
.method public capacity()I
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/media/SampleBuffer;->mSharedMem:Lorg/mozilla/gecko/mozglue/SharedMemory;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/mozilla/gecko/mozglue/SharedMemory;->getSize()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/media/SampleBuffer;->mSharedMem:Lorg/mozilla/gecko/mozglue/SharedMemory;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/mozilla/gecko/mozglue/SharedMemory;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/gecko/media/SampleBuffer;->mSharedMem:Lorg/mozilla/gecko/mozglue/SharedMemory;

    :cond_0
    return-void
.end method

.method public isValid()Z
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    iget-object v0, p0, Lorg/mozilla/gecko/media/SampleBuffer;->mSharedMem:Lorg/mozilla/gecko/mozglue/SharedMemory;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public readFromByteBuffer(Ljava/nio/ByteBuffer;II)V
    .locals 2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/SampleBuffer;->mSharedMem:Lorg/mozilla/gecko/mozglue/SharedMemory;

    invoke-virtual {v0}, Lorg/mozilla/gecko/mozglue/SharedMemory;->getPointer()J

    move-result-wide v0

    invoke-static {p1, v0, v1, p2, p3}, Lorg/mozilla/gecko/media/SampleBuffer;->nativeReadFromDirectBuffer(Ljava/nio/ByteBuffer;JII)V

    iget-object p1, p0, Lorg/mozilla/gecko/media/SampleBuffer;->mSharedMem:Lorg/mozilla/gecko/mozglue/SharedMemory;

    invoke-virtual {p1}, Lorg/mozilla/gecko/mozglue/SharedMemory;->flush()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "SharedMemBuffer only support reading from direct byte buffer."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Buffer: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mozilla/gecko/media/SampleBuffer;->mSharedMem:Lorg/mozilla/gecko/mozglue/SharedMemory;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToByteBuffer(Ljava/nio/ByteBuffer;II)V
    .locals 2
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/SampleBuffer;->mSharedMem:Lorg/mozilla/gecko/mozglue/SharedMemory;

    invoke-virtual {v0}, Lorg/mozilla/gecko/mozglue/SharedMemory;->getPointer()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2, p3}, Lorg/mozilla/gecko/media/SampleBuffer;->nativeWriteToDirectBuffer(JLjava/nio/ByteBuffer;II)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "SharedMemBuffer only support writing to direct byte buffer."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/media/SampleBuffer;->mSharedMem:Lorg/mozilla/gecko/mozglue/SharedMemory;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
