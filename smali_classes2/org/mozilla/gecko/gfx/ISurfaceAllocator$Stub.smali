.class public abstract Lorg/mozilla/gecko/gfx/ISurfaceAllocator$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/gecko/gfx/ISurfaceAllocator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/gfx/ISurfaceAllocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/gecko/gfx/ISurfaceAllocator$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "org.mozilla.gecko.gfx.ISurfaceAllocator"

.field static final TRANSACTION_acquireSurface:I = 0x1

.field static final TRANSACTION_configureSync:I = 0x3

.field static final TRANSACTION_releaseSurface:I = 0x2

.field static final TRANSACTION_sync:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "org.mozilla.gecko.gfx.ISurfaceAllocator"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/mozilla/gecko/gfx/ISurfaceAllocator;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "org.mozilla.gecko.gfx.ISurfaceAllocator"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/mozilla/gecko/gfx/ISurfaceAllocator;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/mozilla/gecko/gfx/ISurfaceAllocator;

    return-object v0

    :cond_1
    new-instance v0, Lorg/mozilla/gecko/gfx/ISurfaceAllocator$Stub$Proxy;

    invoke-direct {v0, p0}, Lorg/mozilla/gecko/gfx/ISurfaceAllocator$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lorg/mozilla/gecko/gfx/ISurfaceAllocator;
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/gfx/ISurfaceAllocator$Stub$Proxy;->sDefaultImpl:Lorg/mozilla/gecko/gfx/ISurfaceAllocator;

    return-object v0
.end method

.method public static setDefaultImpl(Lorg/mozilla/gecko/gfx/ISurfaceAllocator;)Z
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/gfx/ISurfaceAllocator$Stub$Proxy;->sDefaultImpl:Lorg/mozilla/gecko/gfx/ISurfaceAllocator;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sput-object p0, Lorg/mozilla/gecko/gfx/ISurfaceAllocator$Stub$Proxy;->sDefaultImpl:Lorg/mozilla/gecko/gfx/ISurfaceAllocator;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const/4 v0, 0x1

    const-string v1, "org.mozilla.gecko.gfx.ISurfaceAllocator"

    if-eq p1, v0, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lorg/mozilla/gecko/gfx/ISurfaceAllocator;->sync(I)V

    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lorg/mozilla/gecko/gfx/SyncConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/gecko/gfx/SyncConfig;

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    invoke-interface {p0, p1}, Lorg/mozilla/gecko/gfx/ISurfaceAllocator;->configureSync(Lorg/mozilla/gecko/gfx/SyncConfig;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lorg/mozilla/gecko/gfx/ISurfaceAllocator;->releaseSurface(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_6

    move p2, v0

    goto :goto_2

    :cond_6
    move p2, v1

    :goto_2
    invoke-interface {p0, p1, p4, p2}, Lorg/mozilla/gecko/gfx/ISurfaceAllocator;->acquireSurface(IIZ)Lorg/mozilla/gecko/gfx/GeckoSurface;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_7

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p3, v0}, Lorg/mozilla/gecko/gfx/GeckoSurface;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    :cond_7
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    return v0
.end method
