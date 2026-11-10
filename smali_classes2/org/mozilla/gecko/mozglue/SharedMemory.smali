.class public Lorg/mozilla/gecko/mozglue/SharedMemory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/mozilla/gecko/mozglue/SharedMemory;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOGTAG:Ljava/lang/String; = "GeckoShmem"

.field private static final sGetFDMethod:Ljava/lang/reflect/Method;


# instance fields
.field private mBackedFile:Landroid/os/MemoryFile;

.field private mDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mHandle:J

.field private mId:I

.field private mIsMapped:Z

.field private mSize:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-class v0, Landroid/os/MemoryFile;

    const-string v1, "getFileDescriptor"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lorg/mozilla/gecko/mozglue/SharedMemory;->sGetFDMethod:Ljava/lang/reflect/Method;

    new-instance v0, Lorg/mozilla/gecko/mozglue/SharedMemory$1;

    invoke-direct {v0}, Lorg/mozilla/gecko/mozglue/SharedMemory$1;-><init>()V

    sput-object v0, Lorg/mozilla/gecko/mozglue/SharedMemory;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/mozilla/gecko/mozglue/SharedMemory;->sGetFDMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/os/MemoryFile;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lorg/mozilla/gecko/mozglue/SharedMemory;->mBackedFile:Landroid/os/MemoryFile;

    const/4 v2, 0x0

    :try_start_0
    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/FileDescriptor;

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/gecko/mozglue/SharedMemory;->mDescriptor:Landroid/os/ParcelFileDescriptor;

    iput p2, p0, Lorg/mozilla/gecko/mozglue/SharedMemory;->mSize:I

    iput p1, p0, Lorg/mozilla/gecko/mozglue/SharedMemory;->mId:I

    iget-object p1, p0, Lorg/mozilla/gecko/mozglue/SharedMemory;->mBackedFile:Landroid/os/MemoryFile;

    invoke-virtual {p1, v2}, Landroid/os/MemoryFile;->allowPurging(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p0}, Lorg/mozilla/gecko/mozglue/SharedMemory;->close()V

    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    new-instance p1, Ljava/lang/NoSuchMethodException;

    const-string p2, "MemoryFile.getFileDescriptor() doesn\'t exist."

    invoke-direct {p1, p2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/gecko/mozglue/SharedMemory;->mDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/mozilla/gecko/mozglue/SharedMemory;->mSize:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lorg/mozilla/gecko/mozglue/SharedMemory;->mId:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lorg/mozilla/gecko/mozglue/SharedMemory$1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/mozilla/gecko/mozglue/SharedMemory;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private getFD()I
    .locals 1

    invoke-virtual {p0}, Lorg/mozilla/gecko/mozglue/SharedMemory;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/gecko/mozglue/SharedMemory;->mDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method private native map(II)J
.end method

.method private native unmap(JI)V
.end method


# virtual methods
.method public close()V
    .locals 1

    invoke-virtual {p0}, Lorg/mozilla/gecko/mozglue/SharedMemory;->flush()V

    iget-object v0, p0, Lorg/mozilla/gecko/mozglue/SharedMemory;->mDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/gecko/mozglue/SharedMemory;->mDescriptor:Landroid/os/ParcelFileDescriptor;

    :cond_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public dispose()V
    .locals 1

    invoke-virtual {p0}, Lorg/mozilla/gecko/mozglue/SharedMemory;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/mozilla/gecko/mozglue/SharedMemory;->close()V

    iget-object v0, p0, Lorg/mozilla/gecko/mozglue/SharedMemory;->mBackedFile:Landroid/os/MemoryFile;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/MemoryFile;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/gecko/mozglue/SharedMemory;->mBackedFile:Landroid/os/MemoryFile;

    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lorg/mozilla/gecko/mozglue/SharedMemory;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/mozilla/gecko/mozglue/SharedMemory;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public finalize()V
    .locals 0

    invoke-virtual {p0}, Lorg/mozilla/gecko/mozglue/SharedMemory;->dispose()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public flush()V
    .locals 3

    iget-boolean v0, p0, Lorg/mozilla/gecko/mozglue/SharedMemory;->mIsMapped:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lorg/mozilla/gecko/mozglue/SharedMemory;->mHandle:J

    iget v2, p0, Lorg/mozilla/gecko/mozglue/SharedMemory;->mSize:I

    invoke-direct {p0, v0, v1, v2}, Lorg/mozilla/gecko/mozglue/SharedMemory;->unmap(JI)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/mozilla/gecko/mozglue/SharedMemory;->mHandle:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/gecko/mozglue/SharedMemory;->mIsMapped:Z

    return-void
.end method

.method public getPointer()J
    .locals 5

    invoke-virtual {p0}, Lorg/mozilla/gecko/mozglue/SharedMemory;->isValid()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    iget-boolean v0, p0, Lorg/mozilla/gecko/mozglue/SharedMemory;->mIsMapped:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/mozilla/gecko/mozglue/SharedMemory;->getFD()I

    move-result v0

    iget v3, p0, Lorg/mozilla/gecko/mozglue/SharedMemory;->mSize:I

    invoke-direct {p0, v0, v3}, Lorg/mozilla/gecko/mozglue/SharedMemory;->map(II)J

    move-result-wide v3

    iput-wide v3, p0, Lorg/mozilla/gecko/mozglue/SharedMemory;->mHandle:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/gecko/mozglue/SharedMemory;->mIsMapped:Z

    :cond_1
    iget-wide v0, p0, Lorg/mozilla/gecko/mozglue/SharedMemory;->mHandle:J

    return-wide v0
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lorg/mozilla/gecko/mozglue/SharedMemory;->mSize:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lorg/mozilla/gecko/mozglue/SharedMemory;->mId:I

    return v0
.end method

.method public isValid()Z
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/mozglue/SharedMemory;->mDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SHM("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/mozilla/gecko/mozglue/SharedMemory;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes): id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/mozilla/gecko/mozglue/SharedMemory;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", backing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mozilla/gecko/mozglue/SharedMemory;->mBackedFile:Landroid/os/MemoryFile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",fd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mozilla/gecko/mozglue/SharedMemory;->mDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lorg/mozilla/gecko/mozglue/SharedMemory;->mDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    iget p2, p0, Lorg/mozilla/gecko/mozglue/SharedMemory;->mSize:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lorg/mozilla/gecko/mozglue/SharedMemory;->mId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
