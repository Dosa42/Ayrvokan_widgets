.class Lorg/mozilla/gecko/IGeckoEditableChild$Stub$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/gecko/IGeckoEditableChild;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/IGeckoEditableChild$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lorg/mozilla/gecko/IGeckoEditableChild;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/gecko/IGeckoEditableChild$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/IGeckoEditableChild$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "org.mozilla.gecko.IGeckoEditableChild"

    return-object v0
.end method

.method public onImeAddCompositionRange(IIIIIZIII)V
    .locals 14

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string v0, "org.mozilla.gecko.IGeckoEditableChild"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move v0, p1

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v5, p2

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v6, p3

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v7, p4

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v8, p5

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x0

    if-eqz p6, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v10, p7

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v11, p8

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v12, p9

    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v13, p0

    :try_start_1
    iget-object v4, v13, Lorg/mozilla/gecko/IGeckoEditableChild$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v9, 0x5

    invoke-interface {v4, v9, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lorg/mozilla/gecko/IGeckoEditableChild$Stub;->getDefaultImpl()Lorg/mozilla/gecko/IGeckoEditableChild;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {}, Lorg/mozilla/gecko/IGeckoEditableChild$Stub;->getDefaultImpl()Lorg/mozilla/gecko/IGeckoEditableChild;

    move-result-object v3

    move v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-interface/range {v3 .. v12}, Lorg/mozilla/gecko/IGeckoEditableChild;->onImeAddCompositionRange(IIIIIZIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    :try_start_2
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v13, p0

    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public onImeReplaceText(IILjava/lang/String;)V
    .locals 5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "org.mozilla.gecko.IGeckoEditableChild"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/mozilla/gecko/IGeckoEditableChild$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lorg/mozilla/gecko/IGeckoEditableChild$Stub;->getDefaultImpl()Lorg/mozilla/gecko/IGeckoEditableChild;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lorg/mozilla/gecko/IGeckoEditableChild$Stub;->getDefaultImpl()Lorg/mozilla/gecko/IGeckoEditableChild;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lorg/mozilla/gecko/IGeckoEditableChild;->onImeReplaceText(IILjava/lang/String;)V
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
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onImeRequestCommit()V
    .locals 5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "org.mozilla.gecko.IGeckoEditableChild"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/mozilla/gecko/IGeckoEditableChild$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lorg/mozilla/gecko/IGeckoEditableChild$Stub;->getDefaultImpl()Lorg/mozilla/gecko/IGeckoEditableChild;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lorg/mozilla/gecko/IGeckoEditableChild$Stub;->getDefaultImpl()Lorg/mozilla/gecko/IGeckoEditableChild;

    move-result-object v2

    invoke-interface {v2}, Lorg/mozilla/gecko/IGeckoEditableChild;->onImeRequestCommit()V
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

.method public onImeRequestCursorUpdates(I)V
    .locals 5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "org.mozilla.gecko.IGeckoEditableChild"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lorg/mozilla/gecko/IGeckoEditableChild$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lorg/mozilla/gecko/IGeckoEditableChild$Stub;->getDefaultImpl()Lorg/mozilla/gecko/IGeckoEditableChild;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lorg/mozilla/gecko/IGeckoEditableChild$Stub;->getDefaultImpl()Lorg/mozilla/gecko/IGeckoEditableChild;

    move-result-object v2

    invoke-interface {v2, p1}, Lorg/mozilla/gecko/IGeckoEditableChild;->onImeRequestCursorUpdates(I)V
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
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onImeSynchronize()V
    .locals 5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "org.mozilla.gecko.IGeckoEditableChild"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/mozilla/gecko/IGeckoEditableChild$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lorg/mozilla/gecko/IGeckoEditableChild$Stub;->getDefaultImpl()Lorg/mozilla/gecko/IGeckoEditableChild;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lorg/mozilla/gecko/IGeckoEditableChild$Stub;->getDefaultImpl()Lorg/mozilla/gecko/IGeckoEditableChild;

    move-result-object v2

    invoke-interface {v2}, Lorg/mozilla/gecko/IGeckoEditableChild;->onImeSynchronize()V
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

.method public onImeUpdateComposition(III)V
    .locals 5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "org.mozilla.gecko.IGeckoEditableChild"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lorg/mozilla/gecko/IGeckoEditableChild$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lorg/mozilla/gecko/IGeckoEditableChild$Stub;->getDefaultImpl()Lorg/mozilla/gecko/IGeckoEditableChild;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lorg/mozilla/gecko/IGeckoEditableChild$Stub;->getDefaultImpl()Lorg/mozilla/gecko/IGeckoEditableChild;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lorg/mozilla/gecko/IGeckoEditableChild;->onImeUpdateComposition(III)V
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
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onKeyEvent(IIIIIJIIIZLandroid/view/KeyEvent;)V
    .locals 16

    move-object/from16 v0, p12

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v14

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v15

    :try_start_0
    const-string v1, "org.mozilla.gecko.IGeckoEditableChild"

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move/from16 v2, p1

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v3, p2

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v4, p3

    invoke-virtual {v14, v4}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v5, p4

    invoke-virtual {v14, v5}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v6, p5

    invoke-virtual {v14, v6}, Landroid/os/Parcel;->writeInt(I)V

    move-wide/from16 v7, p6

    invoke-virtual {v14, v7, v8}, Landroid/os/Parcel;->writeLong(J)V

    move/from16 v9, p8

    invoke-virtual {v14, v9}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v10, p9

    invoke-virtual {v14, v10}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v11, p10

    invoke-virtual {v14, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    const/4 v12, 0x0

    if-eqz p11, :cond_0

    move v13, v1

    goto :goto_0

    :cond_0
    move v13, v12

    :goto_0
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz v0, :cond_1

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, v14, v12}, Landroid/view/KeyEvent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v14, v12}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    move-object/from16 v13, p0

    iget-object v1, v13, Lorg/mozilla/gecko/IGeckoEditableChild$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v0, 0x2

    invoke-interface {v1, v0, v14, v15, v12}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lorg/mozilla/gecko/IGeckoEditableChild$Stub;->getDefaultImpl()Lorg/mozilla/gecko/IGeckoEditableChild;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lorg/mozilla/gecko/IGeckoEditableChild$Stub;->getDefaultImpl()Lorg/mozilla/gecko/IGeckoEditableChild;

    move-result-object v1

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    invoke-interface/range {v1 .. v13}, Lorg/mozilla/gecko/IGeckoEditableChild;->onKeyEvent(IIIIIJIIIZLandroid/view/KeyEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v14}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    :try_start_1
    invoke-virtual {v15}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v14}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v14}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public transferParent(Lorg/mozilla/gecko/IGeckoEditableParent;)V
    .locals 5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "org.mozilla.gecko.IGeckoEditableChild"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Lorg/mozilla/gecko/IGeckoEditableChild$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lorg/mozilla/gecko/IGeckoEditableChild$Stub;->getDefaultImpl()Lorg/mozilla/gecko/IGeckoEditableChild;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lorg/mozilla/gecko/IGeckoEditableChild$Stub;->getDefaultImpl()Lorg/mozilla/gecko/IGeckoEditableChild;

    move-result-object v2

    invoke-interface {v2, p1}, Lorg/mozilla/gecko/IGeckoEditableChild;->transferParent(Lorg/mozilla/gecko/IGeckoEditableParent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method
