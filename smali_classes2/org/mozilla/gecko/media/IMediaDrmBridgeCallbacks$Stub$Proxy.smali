.class Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks$Stub$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "org.mozilla.gecko.media.IMediaDrmBridgeCallbacks"

    return-object v0
.end method

.method public onRejectPromise(ILjava/lang/String;)V
    .locals 5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "org.mozilla.gecko.media.IMediaDrmBridgeCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x7

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks$Stub;->getDefaultImpl()Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks$Stub;->getDefaultImpl()Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks;->onRejectPromise(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onSessionBatchedKeyChanged([B[Lorg/mozilla/gecko/media/SessionKeyInfo;)V
    .locals 5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "org.mozilla.gecko.media.IMediaDrmBridgeCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget-object v1, p0, Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x6

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks$Stub;->getDefaultImpl()Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks$Stub;->getDefaultImpl()Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks;->onSessionBatchedKeyChanged([B[Lorg/mozilla/gecko/media/SessionKeyInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onSessionClosed(I[B)V
    .locals 5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "org.mozilla.gecko.media.IMediaDrmBridgeCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v1, p0, Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks$Stub;->getDefaultImpl()Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks$Stub;->getDefaultImpl()Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks;->onSessionClosed(I[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onSessionCreated(II[B[B)V
    .locals 4

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "org.mozilla.gecko.media.IMediaDrmBridgeCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v1, p0, Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks$Stub;->getDefaultImpl()Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks$Stub;->getDefaultImpl()Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks;->onSessionCreated(II[B[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onSessionError([BLjava/lang/String;)V
    .locals 5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "org.mozilla.gecko.media.IMediaDrmBridgeCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x5

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks$Stub;->getDefaultImpl()Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks$Stub;->getDefaultImpl()Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks;->onSessionError([BLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onSessionMessage([BI[B)V
    .locals 5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "org.mozilla.gecko.media.IMediaDrmBridgeCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v1, p0, Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks$Stub;->getDefaultImpl()Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks$Stub;->getDefaultImpl()Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks;->onSessionMessage([BI[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public onSessionUpdated(I[B)V
    .locals 5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "org.mozilla.gecko.media.IMediaDrmBridgeCallbacks"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v1, p0, Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-interface {v1, v4, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks$Stub;->getDefaultImpl()Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks$Stub;->getDefaultImpl()Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks;->onSessionUpdated(I[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method
