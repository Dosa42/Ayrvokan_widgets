.class public abstract Lorg/mozilla/gecko/media/ICodecCallbacks$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/gecko/media/ICodecCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/media/ICodecCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/gecko/media/ICodecCallbacks$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "org.mozilla.gecko.media.ICodecCallbacks"

.field static final TRANSACTION_onError:I = 0x5

.field static final TRANSACTION_onInputPending:I = 0x2

.field static final TRANSACTION_onInputQueued:I = 0x1

.field static final TRANSACTION_onOutput:I = 0x4

.field static final TRANSACTION_onOutputFormatChanged:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "org.mozilla.gecko.media.ICodecCallbacks"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/mozilla/gecko/media/ICodecCallbacks;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "org.mozilla.gecko.media.ICodecCallbacks"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/mozilla/gecko/media/ICodecCallbacks;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/mozilla/gecko/media/ICodecCallbacks;

    return-object v0

    :cond_1
    new-instance v0, Lorg/mozilla/gecko/media/ICodecCallbacks$Stub$Proxy;

    invoke-direct {v0, p0}, Lorg/mozilla/gecko/media/ICodecCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lorg/mozilla/gecko/media/ICodecCallbacks;
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/media/ICodecCallbacks$Stub$Proxy;->sDefaultImpl:Lorg/mozilla/gecko/media/ICodecCallbacks;

    return-object v0
.end method

.method public static setDefaultImpl(Lorg/mozilla/gecko/media/ICodecCallbacks;)Z
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/media/ICodecCallbacks$Stub$Proxy;->sDefaultImpl:Lorg/mozilla/gecko/media/ICodecCallbacks;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sput-object p0, Lorg/mozilla/gecko/media/ICodecCallbacks$Stub$Proxy;->sDefaultImpl:Lorg/mozilla/gecko/media/ICodecCallbacks;

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
    .locals 4

    const/4 v0, 0x1

    const-string v1, "org.mozilla.gecko.media.ICodecCallbacks"

    if-eq p1, v0, :cond_8

    const/4 v2, 0x2

    if-eq p1, v2, :cond_7

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq p1, v2, :cond_5

    const/4 v2, 0x4

    if-eq p1, v2, :cond_3

    const/4 v2, 0x5

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

    if-eqz p1, :cond_2

    move p1, v0

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0, p1}, Lorg/mozilla/gecko/media/ICodecCallbacks;->onError(Z)V

    return v0

    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lorg/mozilla/gecko/media/Sample;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lorg/mozilla/gecko/media/Sample;

    :cond_4
    invoke-interface {p0, v3}, Lorg/mozilla/gecko/media/ICodecCallbacks;->onOutput(Lorg/mozilla/gecko/media/Sample;)V

    return v0

    :cond_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lorg/mozilla/gecko/media/FormatParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lorg/mozilla/gecko/media/FormatParam;

    :cond_6
    invoke-interface {p0, v3}, Lorg/mozilla/gecko/media/ICodecCallbacks;->onOutputFormatChanged(Lorg/mozilla/gecko/media/FormatParam;)V

    return v0

    :cond_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    invoke-interface {p0, p1, p2}, Lorg/mozilla/gecko/media/ICodecCallbacks;->onInputPending(J)V

    return v0

    :cond_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    invoke-interface {p0, p1, p2}, Lorg/mozilla/gecko/media/ICodecCallbacks;->onInputQueued(J)V

    return v0
.end method
