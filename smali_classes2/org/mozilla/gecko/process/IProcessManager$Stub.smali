.class public abstract Lorg/mozilla/gecko/process/IProcessManager$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/gecko/process/IProcessManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/process/IProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/gecko/process/IProcessManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "org.mozilla.gecko.process.IProcessManager"

.field static final TRANSACTION_getEditableParent:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "org.mozilla.gecko.process.IProcessManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/mozilla/gecko/process/IProcessManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "org.mozilla.gecko.process.IProcessManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/mozilla/gecko/process/IProcessManager;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/mozilla/gecko/process/IProcessManager;

    return-object v0

    :cond_1
    new-instance v0, Lorg/mozilla/gecko/process/IProcessManager$Stub$Proxy;

    invoke-direct {v0, p0}, Lorg/mozilla/gecko/process/IProcessManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lorg/mozilla/gecko/process/IProcessManager;
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/process/IProcessManager$Stub$Proxy;->sDefaultImpl:Lorg/mozilla/gecko/process/IProcessManager;

    return-object v0
.end method

.method public static setDefaultImpl(Lorg/mozilla/gecko/process/IProcessManager;)Z
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/process/IProcessManager$Stub$Proxy;->sDefaultImpl:Lorg/mozilla/gecko/process/IProcessManager;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sput-object p0, Lorg/mozilla/gecko/process/IProcessManager$Stub$Proxy;->sDefaultImpl:Lorg/mozilla/gecko/process/IProcessManager;

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
    .locals 7

    const/4 v0, 0x1

    const-string v1, "org.mozilla.gecko.process.IProcessManager"

    if-eq p1, v0, :cond_1

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

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lorg/mozilla/gecko/IGeckoEditableChild$Stub;->asInterface(Landroid/os/IBinder;)Lorg/mozilla/gecko/IGeckoEditableChild;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    move-object v1, p0

    invoke-interface/range {v1 .. v6}, Lorg/mozilla/gecko/process/IProcessManager;->getEditableParent(Lorg/mozilla/gecko/IGeckoEditableChild;JJ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method
