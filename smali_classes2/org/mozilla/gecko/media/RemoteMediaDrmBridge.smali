.class final Lorg/mozilla/gecko/media/RemoteMediaDrmBridge;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/gecko/media/GeckoMediaDrm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/gecko/media/RemoteMediaDrmBridge$CallbacksForwarder;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOGTAG:Ljava/lang/String; = "RemoteMediaDrmBridge"


# instance fields
.field private mCallbacksFwd:Lorg/mozilla/gecko/media/RemoteMediaDrmBridge$CallbacksForwarder;

.field private mRemote:Lorg/mozilla/gecko/media/IMediaDrmBridge;


# direct methods
.method public constructor <init>(Lorg/mozilla/gecko/media/IMediaDrmBridge;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/mozilla/gecko/media/RemoteMediaDrmBridge;->assertTrue(Z)V

    iput-object p1, p0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridge;->mRemote:Lorg/mozilla/gecko/media/IMediaDrmBridge;

    return-void
.end method

.method public static assertTrue(Z)V
    .locals 0

    return-void
.end method


# virtual methods
.method public declared-synchronized closeSession(ILjava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridge;->mRemote:Lorg/mozilla/gecko/media/IMediaDrmBridge;

    invoke-interface {v0, p1, p2}, Lorg/mozilla/gecko/media/IMediaDrmBridge;->closeSession(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    :try_start_1
    iget-object p2, p0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridge;->mCallbacksFwd:Lorg/mozilla/gecko/media/RemoteMediaDrmBridge$CallbacksForwarder;

    const-string v0, "Failed to close session."

    invoke-virtual {p2, p1, v0}, Lorg/mozilla/gecko/media/RemoteMediaDrmBridge$CallbacksForwarder;->onRejectPromise(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized createSession(IILjava/lang/String;[B)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridge;->mRemote:Lorg/mozilla/gecko/media/IMediaDrmBridge;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/mozilla/gecko/media/IMediaDrmBridge;->createSession(IILjava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    :try_start_1
    iget-object p1, p0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridge;->mCallbacksFwd:Lorg/mozilla/gecko/media/RemoteMediaDrmBridge$CallbacksForwarder;

    const-string p3, "Failed to create session."

    invoke-virtual {p1, p2, p3}, Lorg/mozilla/gecko/media/RemoteMediaDrmBridge$CallbacksForwarder;->onRejectPromise(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMediaCrypto()Landroid/media/MediaCrypto;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lorg/mozilla/gecko/media/RemoteMediaDrmBridge;->assertTrue(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridge;->mRemote:Lorg/mozilla/gecko/media/IMediaDrmBridge;

    invoke-interface {v0}, Lorg/mozilla/gecko/media/IMediaDrmBridge;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    :goto_0
    :try_start_1
    invoke-static {}, Lorg/mozilla/gecko/media/RemoteManager;->getInstance()Lorg/mozilla/gecko/media/RemoteManager;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridge;->mRemote:Lorg/mozilla/gecko/media/IMediaDrmBridge;

    invoke-virtual {v0, v1}, Lorg/mozilla/gecko/media/RemoteManager;->onRemoteMediaDrmBridgeReleased(Lorg/mozilla/gecko/media/IMediaDrmBridge;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridge;->mRemote:Lorg/mozilla/gecko/media/IMediaDrmBridge;

    iput-object v0, p0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridge;->mCallbacksFwd:Lorg/mozilla/gecko/media/RemoteMediaDrmBridge$CallbacksForwarder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCallbacks(Lorg/mozilla/gecko/media/GeckoMediaDrm$Callbacks;)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    :try_start_0
    invoke-static {v2}, Lorg/mozilla/gecko/media/RemoteMediaDrmBridge;->assertTrue(Z)V

    iget-object v2, p0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridge;->mRemote:Lorg/mozilla/gecko/media/IMediaDrmBridge;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-static {v0}, Lorg/mozilla/gecko/media/RemoteMediaDrmBridge;->assertTrue(Z)V

    new-instance v0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridge$CallbacksForwarder;

    invoke-direct {v0, p1}, Lorg/mozilla/gecko/media/RemoteMediaDrmBridge$CallbacksForwarder;-><init>(Lorg/mozilla/gecko/media/GeckoMediaDrm$Callbacks;)V

    iput-object v0, p0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridge;->mCallbacksFwd:Lorg/mozilla/gecko/media/RemoteMediaDrmBridge$CallbacksForwarder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p1, p0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridge;->mRemote:Lorg/mozilla/gecko/media/IMediaDrmBridge;

    invoke-interface {p1, v0}, Lorg/mozilla/gecko/media/IMediaDrmBridge;->setCallbacks(Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setServerCertificate([B)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridge;->mRemote:Lorg/mozilla/gecko/media/IMediaDrmBridge;

    invoke-interface {v0, p1}, Lorg/mozilla/gecko/media/IMediaDrmBridge;->setServerCertificate([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateSession(ILjava/lang/String;[B)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridge;->mRemote:Lorg/mozilla/gecko/media/IMediaDrmBridge;

    invoke-interface {v0, p1, p2, p3}, Lorg/mozilla/gecko/media/IMediaDrmBridge;->updateSession(ILjava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    :try_start_1
    iget-object p2, p0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridge;->mCallbacksFwd:Lorg/mozilla/gecko/media/RemoteMediaDrmBridge$CallbacksForwarder;

    const-string p3, "Failed to update session."

    invoke-virtual {p2, p1, p3}, Lorg/mozilla/gecko/media/RemoteMediaDrmBridge$CallbacksForwarder;->onRejectPromise(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method
