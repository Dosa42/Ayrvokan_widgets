.class Lorg/mozilla/gecko/media/RemoteMediaDrmBridge$CallbacksForwarder;
.super Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/media/RemoteMediaDrmBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallbacksForwarder"
.end annotation


# instance fields
.field private final mProxyCallbacks:Lorg/mozilla/gecko/media/GeckoMediaDrm$Callbacks;


# direct methods
.method public constructor <init>(Lorg/mozilla/gecko/media/GeckoMediaDrm$Callbacks;)V
    .locals 1

    invoke-direct {p0}, Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks$Stub;-><init>()V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/mozilla/gecko/media/RemoteMediaDrmBridge;->assertTrue(Z)V

    iput-object p1, p0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridge$CallbacksForwarder;->mProxyCallbacks:Lorg/mozilla/gecko/media/GeckoMediaDrm$Callbacks;

    return-void
.end method


# virtual methods
.method public onRejectPromise(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridge$CallbacksForwarder;->mProxyCallbacks:Lorg/mozilla/gecko/media/GeckoMediaDrm$Callbacks;

    invoke-interface {v0, p1, p2}, Lorg/mozilla/gecko/media/GeckoMediaDrm$Callbacks;->onRejectPromise(ILjava/lang/String;)V

    return-void
.end method

.method public onSessionBatchedKeyChanged([B[Lorg/mozilla/gecko/media/SessionKeyInfo;)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridge$CallbacksForwarder;->mProxyCallbacks:Lorg/mozilla/gecko/media/GeckoMediaDrm$Callbacks;

    invoke-interface {v0, p1, p2}, Lorg/mozilla/gecko/media/GeckoMediaDrm$Callbacks;->onSessionBatchedKeyChanged([B[Lorg/mozilla/gecko/media/SessionKeyInfo;)V

    return-void
.end method

.method public onSessionClosed(I[B)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridge$CallbacksForwarder;->mProxyCallbacks:Lorg/mozilla/gecko/media/GeckoMediaDrm$Callbacks;

    invoke-interface {v0, p1, p2}, Lorg/mozilla/gecko/media/GeckoMediaDrm$Callbacks;->onSessionClosed(I[B)V

    return-void
.end method

.method public onSessionCreated(II[B[B)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridge$CallbacksForwarder;->mProxyCallbacks:Lorg/mozilla/gecko/media/GeckoMediaDrm$Callbacks;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/mozilla/gecko/media/GeckoMediaDrm$Callbacks;->onSessionCreated(II[B[B)V

    return-void
.end method

.method public onSessionError([BLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridge$CallbacksForwarder;->mProxyCallbacks:Lorg/mozilla/gecko/media/GeckoMediaDrm$Callbacks;

    invoke-interface {v0, p1, p2}, Lorg/mozilla/gecko/media/GeckoMediaDrm$Callbacks;->onSessionError([BLjava/lang/String;)V

    return-void
.end method

.method public onSessionMessage([BI[B)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridge$CallbacksForwarder;->mProxyCallbacks:Lorg/mozilla/gecko/media/GeckoMediaDrm$Callbacks;

    invoke-interface {v0, p1, p2, p3}, Lorg/mozilla/gecko/media/GeckoMediaDrm$Callbacks;->onSessionMessage([BI[B)V

    return-void
.end method

.method public onSessionUpdated(I[B)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridge$CallbacksForwarder;->mProxyCallbacks:Lorg/mozilla/gecko/media/GeckoMediaDrm$Callbacks;

    invoke-interface {v0, p1, p2}, Lorg/mozilla/gecko/media/GeckoMediaDrm$Callbacks;->onSessionUpdated(I[B)V

    return-void
.end method
