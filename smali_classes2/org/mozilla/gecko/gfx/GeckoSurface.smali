.class public final Lorg/mozilla/gecko/gfx/GeckoSurface;
.super Landroid/view/Surface;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/mozilla/gecko/gfx/GeckoSurface;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOGTAG:Ljava/lang/String; = "GeckoSurface"


# instance fields
.field private mHandle:I

.field private volatile mIsAvailable:Z

.field private mIsSingleBuffer:Z

.field private mMyPid:I

.field private mOwned:Z

.field private mSyncSurface:Lorg/mozilla/gecko/gfx/GeckoSurface;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/mozilla/gecko/gfx/GeckoSurface$1;

    invoke-direct {v0}, Lorg/mozilla/gecko/gfx/GeckoSurface$1;-><init>()V

    sput-object v0, Lorg/mozilla/gecko/gfx/GeckoSurface;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Landroid/graphics/SurfaceTexture;)V
    .locals 3

    .line 1
    invoke-direct {p0, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/gecko/gfx/GeckoSurface;->mOwned:Z

    invoke-virtual {p0, p1}, Landroid/view/Surface;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lorg/mozilla/gecko/gfx/GeckoSurface;->mHandle:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lorg/mozilla/gecko/gfx/GeckoSurface;->mIsSingleBuffer:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lorg/mozilla/gecko/gfx/GeckoSurface;->mIsAvailable:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lorg/mozilla/gecko/gfx/GeckoSurface;->mMyPid:I

    invoke-virtual {p2}, Landroid/graphics/SurfaceTexture;->release()V

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;)V
    .locals 2
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        exceptionMode = "nsresult"
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/gecko/gfx/GeckoSurface;->mOwned:Z

    invoke-virtual {p1}, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->getHandle()I

    move-result v1

    iput v1, p0, Lorg/mozilla/gecko/gfx/GeckoSurface;->mHandle:I

    invoke-virtual {p1}, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->isSingleBuffer()Z

    move-result p1

    iput-boolean p1, p0, Lorg/mozilla/gecko/gfx/GeckoSurface;->mIsSingleBuffer:Z

    iput-boolean v0, p0, Lorg/mozilla/gecko/gfx/GeckoSurface;->mIsAvailable:Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    iput p1, p0, Lorg/mozilla/gecko/gfx/GeckoSurface;->mMyPid:I

    return-void
.end method


# virtual methods
.method public getAvailable()Z
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    iget-boolean v0, p0, Lorg/mozilla/gecko/gfx/GeckoSurface;->mIsAvailable:Z

    return v0
.end method

.method public getHandle()I
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    iget v0, p0, Lorg/mozilla/gecko/gfx/GeckoSurface;->mHandle:I

    return v0
.end method

.method public inProcess()Z
    .locals 2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iget v1, p0, Lorg/mozilla/gecko/gfx/GeckoSurface;->mMyPid:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public initSyncSurface(II)Lorg/mozilla/gecko/gfx/SyncConfig;
    .locals 3

    iget v0, p0, Lorg/mozilla/gecko/gfx/GeckoSurface;->mHandle:I

    invoke-static {v0}, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->lookup(I)Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iget v1, p0, Lorg/mozilla/gecko/gfx/GeckoSurface;->mHandle:I

    invoke-static {v0, v1}, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->acquire(ZI)Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    iget v1, p0, Lorg/mozilla/gecko/gfx/GeckoSurface;->mHandle:I

    invoke-virtual {v0, v1}, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->track(I)V

    new-instance v1, Lorg/mozilla/gecko/gfx/GeckoSurface;

    invoke-direct {v1, v0}, Lorg/mozilla/gecko/gfx/GeckoSurface;-><init>(Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;)V

    iput-object v1, p0, Lorg/mozilla/gecko/gfx/GeckoSurface;->mSyncSurface:Lorg/mozilla/gecko/gfx/GeckoSurface;

    new-instance v0, Lorg/mozilla/gecko/gfx/SyncConfig;

    iget v1, p0, Lorg/mozilla/gecko/gfx/GeckoSurface;->mHandle:I

    iget-object v2, p0, Lorg/mozilla/gecko/gfx/GeckoSurface;->mSyncSurface:Lorg/mozilla/gecko/gfx/GeckoSurface;

    invoke-direct {v0, v1, v2, p1, p2}, Lorg/mozilla/gecko/gfx/SyncConfig;-><init>(ILorg/mozilla/gecko/gfx/GeckoSurface;II)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "texture#"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lorg/mozilla/gecko/gfx/GeckoSurface;->mHandle:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " already in use."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/gfx/GeckoSurface;->mSyncSurface:Lorg/mozilla/gecko/gfx/GeckoSurface;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/mozilla/gecko/gfx/GeckoSurface;->release()V

    iget-object v0, p0, Lorg/mozilla/gecko/gfx/GeckoSurface;->mSyncSurface:Lorg/mozilla/gecko/gfx/GeckoSurface;

    invoke-virtual {v0}, Lorg/mozilla/gecko/gfx/GeckoSurface;->getHandle()I

    move-result v0

    invoke-static {v0}, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->lookup(I)Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->decrementUse()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/gecko/gfx/GeckoSurface;->mSyncSurface:Lorg/mozilla/gecko/gfx/GeckoSurface;

    :cond_1
    iget-boolean v0, p0, Lorg/mozilla/gecko/gfx/GeckoSurface;->mOwned:Z

    if-eqz v0, :cond_2

    invoke-super {p0}, Landroid/view/Surface;->release()V

    :cond_2
    return-void
.end method

.method public setAvailable(Z)V
    .locals 0
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    iput-boolean p1, p0, Lorg/mozilla/gecko/gfx/GeckoSurface;->mIsAvailable:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    iget p2, p0, Lorg/mozilla/gecko/gfx/GeckoSurface;->mHandle:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lorg/mozilla/gecko/gfx/GeckoSurface;->mIsSingleBuffer:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lorg/mozilla/gecko/gfx/GeckoSurface;->mIsAvailable:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget p2, p0, Lorg/mozilla/gecko/gfx/GeckoSurface;->mMyPid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/mozilla/gecko/gfx/GeckoSurface;->mOwned:Z

    return-void
.end method
