.class final Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub$Callbacks;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/gecko/media/GeckoMediaDrm$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Callbacks"
.end annotation


# instance fields
.field private mRemoteCallbacks:Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks;

.field final synthetic this$0:Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub;


# direct methods
.method public constructor <init>(Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub;Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub$Callbacks;->this$0:Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub$Callbacks;->mRemoteCallbacks:Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks;

    return-void
.end method


# virtual methods
.method public onRejectPromise(ILjava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub$Callbacks;->mRemoteCallbacks:Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks;

    invoke-interface {v0, p1, p2}, Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks;->onRejectPromise(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onSessionBatchedKeyChanged([B[Lorg/mozilla/gecko/media/SessionKeyInfo;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub$Callbacks;->mRemoteCallbacks:Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks;

    invoke-interface {v0, p1, p2}, Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks;->onSessionBatchedKeyChanged([B[Lorg/mozilla/gecko/media/SessionKeyInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onSessionClosed(I[B)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub$Callbacks;->mRemoteCallbacks:Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks;

    invoke-interface {v0, p1, p2}, Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks;->onSessionClosed(I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onSessionCreated(II[B[B)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub$Callbacks;->mRemoteCallbacks:Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks;->onSessionCreated(II[B[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onSessionError([BLjava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub$Callbacks;->mRemoteCallbacks:Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks;

    invoke-interface {v0, p1, p2}, Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks;->onSessionError([BLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onSessionMessage([BI[B)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub$Callbacks;->mRemoteCallbacks:Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks;->onSessionMessage([BI[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onSessionUpdated(I[B)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub$Callbacks;->mRemoteCallbacks:Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks;

    invoke-interface {v0, p1, p2}, Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks;->onSessionUpdated(I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
