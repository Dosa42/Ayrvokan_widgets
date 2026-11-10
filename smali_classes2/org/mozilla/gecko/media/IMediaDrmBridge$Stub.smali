.class public abstract Lorg/mozilla/gecko/media/IMediaDrmBridge$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/gecko/media/IMediaDrmBridge;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/media/IMediaDrmBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/gecko/media/IMediaDrmBridge$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "org.mozilla.gecko.media.IMediaDrmBridge"

.field static final TRANSACTION_closeSession:I = 0x4

.field static final TRANSACTION_createSession:I = 0x2

.field static final TRANSACTION_release:I = 0x5

.field static final TRANSACTION_setCallbacks:I = 0x1

.field static final TRANSACTION_setServerCertificate:I = 0x6

.field static final TRANSACTION_updateSession:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "org.mozilla.gecko.media.IMediaDrmBridge"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/mozilla/gecko/media/IMediaDrmBridge;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "org.mozilla.gecko.media.IMediaDrmBridge"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/mozilla/gecko/media/IMediaDrmBridge;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/mozilla/gecko/media/IMediaDrmBridge;

    return-object v0

    :cond_1
    new-instance v0, Lorg/mozilla/gecko/media/IMediaDrmBridge$Stub$Proxy;

    invoke-direct {v0, p0}, Lorg/mozilla/gecko/media/IMediaDrmBridge$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lorg/mozilla/gecko/media/IMediaDrmBridge;
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/media/IMediaDrmBridge$Stub$Proxy;->sDefaultImpl:Lorg/mozilla/gecko/media/IMediaDrmBridge;

    return-object v0
.end method

.method public static setDefaultImpl(Lorg/mozilla/gecko/media/IMediaDrmBridge;)Z
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/media/IMediaDrmBridge$Stub$Proxy;->sDefaultImpl:Lorg/mozilla/gecko/media/IMediaDrmBridge;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sput-object p0, Lorg/mozilla/gecko/media/IMediaDrmBridge$Stub$Proxy;->sDefaultImpl:Lorg/mozilla/gecko/media/IMediaDrmBridge;

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

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "org.mozilla.gecko.media.IMediaDrmBridge"

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/mozilla/gecko/media/IMediaDrmBridge;->setServerCertificate([B)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/mozilla/gecko/media/IMediaDrmBridge;->release()V

    return v1

    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lorg/mozilla/gecko/media/IMediaDrmBridge;->closeSession(ILjava/lang/String;)V

    return v1

    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    invoke-interface {p0, p1, p3, p2}, Lorg/mozilla/gecko/media/IMediaDrmBridge;->updateSession(ILjava/lang/String;[B)V

    return v1

    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    invoke-interface {p0, p1, p3, p4, p2}, Lorg/mozilla/gecko/media/IMediaDrmBridge;->createSession(IILjava/lang/String;[B)V

    return v1

    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/mozilla/gecko/media/IMediaDrmBridge;->setCallbacks(Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
