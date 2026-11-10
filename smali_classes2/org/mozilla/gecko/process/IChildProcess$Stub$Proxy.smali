.class Lorg/mozilla/gecko/process/IChildProcess$Stub$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/gecko/process/IChildProcess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/process/IChildProcess$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lorg/mozilla/gecko/process/IChildProcess;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/gecko/process/IChildProcess$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/process/IChildProcess$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public crash()V
    .locals 5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "org.mozilla.gecko.process.IChildProcess"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/mozilla/gecko/process/IChildProcess$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lorg/mozilla/gecko/process/IChildProcess$Stub;->getDefaultImpl()Lorg/mozilla/gecko/process/IChildProcess;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lorg/mozilla/gecko/process/IChildProcess$Stub;->getDefaultImpl()Lorg/mozilla/gecko/process/IChildProcess;

    move-result-object v2

    invoke-interface {v2}, Lorg/mozilla/gecko/process/IChildProcess;->crash()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "org.mozilla.gecko.process.IChildProcess"

    return-object v0
.end method

.method public getPid()I
    .locals 5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "org.mozilla.gecko.process.IChildProcess"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/mozilla/gecko/process/IChildProcess$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lorg/mozilla/gecko/process/IChildProcess$Stub;->getDefaultImpl()Lorg/mozilla/gecko/process/IChildProcess;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lorg/mozilla/gecko/process/IChildProcess$Stub;->getDefaultImpl()Lorg/mozilla/gecko/process/IChildProcess;

    move-result-object v2

    invoke-interface {v2}, Lorg/mozilla/gecko/process/IChildProcess;->getPid()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public start(Lorg/mozilla/gecko/process/IProcessManager;[Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)Z
    .locals 16

    move-object/from16 v0, p3

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v12

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v13

    :try_start_0
    const-string v1, "org.mozilla.gecko.process.IChildProcess"

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move-object/from16 v3, p2

    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v12, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    move/from16 v5, p4

    invoke-virtual {v12, v5}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v6, p5

    invoke-virtual {v12, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz v7, :cond_2

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v7, v12, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    if-eqz v8, :cond_3

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v8, v12, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    :cond_3
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    if-eqz v9, :cond_4

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v9, v12, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    :cond_4
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    if-eqz v10, :cond_5

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v10, v12, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    :cond_5
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5
    if-eqz v11, :cond_6

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v11, v12, v2}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6

    :cond_6
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_6
    move-object/from16 v14, p0

    :try_start_1
    iget-object v4, v14, Lorg/mozilla/gecko/process/IChildProcess$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v15, 0x2

    invoke-interface {v4, v15, v12, v13, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {}, Lorg/mozilla/gecko/process/IChildProcess$Stub;->getDefaultImpl()Lorg/mozilla/gecko/process/IChildProcess;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-static {}, Lorg/mozilla/gecko/process/IChildProcess$Stub;->getDefaultImpl()Lorg/mozilla/gecko/process/IChildProcess;

    move-result-object v1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-interface/range {v1 .. v11}, Lorg/mozilla/gecko/process/IChildProcess;->start(Lorg/mozilla/gecko/process/IProcessManager;[Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    return v0

    :cond_7
    :try_start_2
    invoke-virtual {v13}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_8

    goto :goto_7

    :cond_8
    move v1, v2

    :goto_7
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    return v1

    :catchall_0
    move-exception v0

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object/from16 v14, p0

    :goto_8
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
