.class final Lorg/mozilla/gecko/gfx/SyncConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/mozilla/gecko/gfx/SyncConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final height:I

.field final sourceTextureHandle:I

.field final targetSurface:Lorg/mozilla/gecko/gfx/GeckoSurface;

.field final width:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/mozilla/gecko/gfx/SyncConfig$1;

    invoke-direct {v0}, Lorg/mozilla/gecko/gfx/SyncConfig$1;-><init>()V

    sput-object v0, Lorg/mozilla/gecko/gfx/SyncConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILorg/mozilla/gecko/gfx/GeckoSurface;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/mozilla/gecko/gfx/SyncConfig;->sourceTextureHandle:I

    iput-object p2, p0, Lorg/mozilla/gecko/gfx/SyncConfig;->targetSurface:Lorg/mozilla/gecko/gfx/GeckoSurface;

    iput p3, p0, Lorg/mozilla/gecko/gfx/SyncConfig;->width:I

    iput p4, p0, Lorg/mozilla/gecko/gfx/SyncConfig;->height:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/mozilla/gecko/gfx/SyncConfig;->sourceTextureHandle:I

    sget-object v0, Lorg/mozilla/gecko/gfx/GeckoSurface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/gecko/gfx/GeckoSurface;

    iput-object v0, p0, Lorg/mozilla/gecko/gfx/SyncConfig;->targetSurface:Lorg/mozilla/gecko/gfx/GeckoSurface;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/mozilla/gecko/gfx/SyncConfig;->width:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lorg/mozilla/gecko/gfx/SyncConfig;->height:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lorg/mozilla/gecko/gfx/SyncConfig$1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lorg/mozilla/gecko/gfx/SyncConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lorg/mozilla/gecko/gfx/SyncConfig;->sourceTextureHandle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lorg/mozilla/gecko/gfx/SyncConfig;->targetSurface:Lorg/mozilla/gecko/gfx/GeckoSurface;

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/gecko/gfx/GeckoSurface;->writeToParcel(Landroid/os/Parcel;I)V

    iget p2, p0, Lorg/mozilla/gecko/gfx/SyncConfig;->width:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lorg/mozilla/gecko/gfx/SyncConfig;->height:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
