.class public Lorg/mozilla/gecko/media/MediaDrmProxy$MediaDrmProxyCallbacks;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/gecko/media/GeckoMediaDrm$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/media/MediaDrmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaDrmProxyCallbacks"
.end annotation


# instance fields
.field private final mNativeCallbacks:Lorg/mozilla/gecko/media/MediaDrmProxy$Callbacks;

.field private final mProxy:Lorg/mozilla/gecko/media/MediaDrmProxy;


# direct methods
.method public constructor <init>(Lorg/mozilla/gecko/media/MediaDrmProxy;Lorg/mozilla/gecko/media/MediaDrmProxy$Callbacks;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/mozilla/gecko/media/MediaDrmProxy$MediaDrmProxyCallbacks;->mNativeCallbacks:Lorg/mozilla/gecko/media/MediaDrmProxy$Callbacks;

    iput-object p1, p0, Lorg/mozilla/gecko/media/MediaDrmProxy$MediaDrmProxyCallbacks;->mProxy:Lorg/mozilla/gecko/media/MediaDrmProxy;

    return-void
.end method


# virtual methods
.method public onRejectPromise(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/media/MediaDrmProxy$MediaDrmProxyCallbacks;->mProxy:Lorg/mozilla/gecko/media/MediaDrmProxy;

    invoke-virtual {v0}, Lorg/mozilla/gecko/media/MediaDrmProxy;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/gecko/media/MediaDrmProxy$MediaDrmProxyCallbacks;->mNativeCallbacks:Lorg/mozilla/gecko/media/MediaDrmProxy$Callbacks;

    invoke-interface {v0, p1, p2}, Lorg/mozilla/gecko/media/MediaDrmProxy$Callbacks;->onRejectPromise(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSessionBatchedKeyChanged([B[Lorg/mozilla/gecko/media/SessionKeyInfo;)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/media/MediaDrmProxy$MediaDrmProxyCallbacks;->mProxy:Lorg/mozilla/gecko/media/MediaDrmProxy;

    invoke-virtual {v0}, Lorg/mozilla/gecko/media/MediaDrmProxy;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/gecko/media/MediaDrmProxy$MediaDrmProxyCallbacks;->mNativeCallbacks:Lorg/mozilla/gecko/media/MediaDrmProxy$Callbacks;

    invoke-interface {v0, p1, p2}, Lorg/mozilla/gecko/media/MediaDrmProxy$Callbacks;->onSessionBatchedKeyChanged([B[Lorg/mozilla/gecko/media/SessionKeyInfo;)V

    :cond_0
    return-void
.end method

.method public onSessionClosed(I[B)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/media/MediaDrmProxy$MediaDrmProxyCallbacks;->mProxy:Lorg/mozilla/gecko/media/MediaDrmProxy;

    invoke-virtual {v0}, Lorg/mozilla/gecko/media/MediaDrmProxy;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/gecko/media/MediaDrmProxy$MediaDrmProxyCallbacks;->mNativeCallbacks:Lorg/mozilla/gecko/media/MediaDrmProxy$Callbacks;

    invoke-interface {v0, p1, p2}, Lorg/mozilla/gecko/media/MediaDrmProxy$Callbacks;->onSessionClosed(I[B)V

    :cond_0
    return-void
.end method

.method public onSessionCreated(II[B[B)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/media/MediaDrmProxy$MediaDrmProxyCallbacks;->mProxy:Lorg/mozilla/gecko/media/MediaDrmProxy;

    invoke-virtual {v0}, Lorg/mozilla/gecko/media/MediaDrmProxy;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/gecko/media/MediaDrmProxy$MediaDrmProxyCallbacks;->mNativeCallbacks:Lorg/mozilla/gecko/media/MediaDrmProxy$Callbacks;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/mozilla/gecko/media/MediaDrmProxy$Callbacks;->onSessionCreated(II[B[B)V

    :cond_0
    return-void
.end method

.method public onSessionError([BLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/media/MediaDrmProxy$MediaDrmProxyCallbacks;->mProxy:Lorg/mozilla/gecko/media/MediaDrmProxy;

    invoke-virtual {v0}, Lorg/mozilla/gecko/media/MediaDrmProxy;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/gecko/media/MediaDrmProxy$MediaDrmProxyCallbacks;->mNativeCallbacks:Lorg/mozilla/gecko/media/MediaDrmProxy$Callbacks;

    invoke-interface {v0, p1, p2}, Lorg/mozilla/gecko/media/MediaDrmProxy$Callbacks;->onSessionError([BLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSessionMessage([BI[B)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/media/MediaDrmProxy$MediaDrmProxyCallbacks;->mProxy:Lorg/mozilla/gecko/media/MediaDrmProxy;

    invoke-virtual {v0}, Lorg/mozilla/gecko/media/MediaDrmProxy;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/gecko/media/MediaDrmProxy$MediaDrmProxyCallbacks;->mNativeCallbacks:Lorg/mozilla/gecko/media/MediaDrmProxy$Callbacks;

    invoke-interface {v0, p1, p2, p3}, Lorg/mozilla/gecko/media/MediaDrmProxy$Callbacks;->onSessionMessage([BI[B)V

    :cond_0
    return-void
.end method

.method public onSessionUpdated(I[B)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/media/MediaDrmProxy$MediaDrmProxyCallbacks;->mProxy:Lorg/mozilla/gecko/media/MediaDrmProxy;

    invoke-virtual {v0}, Lorg/mozilla/gecko/media/MediaDrmProxy;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/gecko/media/MediaDrmProxy$MediaDrmProxyCallbacks;->mNativeCallbacks:Lorg/mozilla/gecko/media/MediaDrmProxy$Callbacks;

    invoke-interface {v0, p1, p2}, Lorg/mozilla/gecko/media/MediaDrmProxy$Callbacks;->onSessionUpdated(I[B)V

    :cond_0
    return-void
.end method
