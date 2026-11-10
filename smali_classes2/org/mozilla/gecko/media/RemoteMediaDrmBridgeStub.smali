.class final Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub;
.super Lorg/mozilla/gecko/media/IMediaDrmBridge$Stub;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub$Callbacks;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOGTAG:Ljava/lang/String; = "RemoteDrmBridgeStub"

.field public static final mBridgeStubs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBridge:Lorg/mozilla/gecko/media/GeckoMediaDrm;

.field private volatile mCallbacks:Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks;

.field private mStubId:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub;->mBridgeStubs:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lorg/mozilla/gecko/media/IMediaDrmBridge$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub;->mCallbacks:Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks;

    iput-object v0, p0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub;->mBridge:Lorg/mozilla/gecko/media/GeckoMediaDrm;

    const-string v0, ""

    iput-object v0, p0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub;->mStubId:Ljava/lang/String;

    :try_start_0
    new-instance v0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV23;

    invoke-direct {v0, p1}, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV23;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub;->mBridge:Lorg/mozilla/gecko/media/GeckoMediaDrm;

    iput-object p2, p0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub;->mStubId:Ljava/lang/String;

    sget-object p1, Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub;->mBridgeStubs:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "RemoteMediaDrmBridgeStub cannot create bridge implementation."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub;->mStubId:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized getMediaCrypto(Ljava/lang/String;)Landroid/media/MediaCrypto;
    .locals 4

    const-class v0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    sget-object v2, Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub;->mBridgeStubs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub;

    invoke-direct {v3}, Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub;

    invoke-direct {p0}, Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub;->getMediaCryptoFromBridge()Landroid/media/MediaCrypto;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getMediaCryptoFromBridge()Landroid/media/MediaCrypto;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub;->mBridge:Lorg/mozilla/gecko/media/GeckoMediaDrm;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/mozilla/gecko/media/GeckoMediaDrm;->getMediaCrypto()Landroid/media/MediaCrypto;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public assertTrue(Z)V
    .locals 0

    return-void
.end method

.method public declared-synchronized binderDied()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized closeSession(ILjava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub;->mCallbacks:Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p0, v0}, Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub;->assertTrue(Z)V

    iget-object v0, p0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub;->mBridge:Lorg/mozilla/gecko/media/GeckoMediaDrm;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub;->assertTrue(Z)V

    iget-object v0, p0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub;->mBridge:Lorg/mozilla/gecko/media/GeckoMediaDrm;

    invoke-interface {v0, p1, p2}, Lorg/mozilla/gecko/media/GeckoMediaDrm;->closeSession(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    :try_start_1
    iget-object p2, p0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub;->mCallbacks:Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks;

    const-string v0, "Failed to closeSession."

    invoke-interface {p2, p1, v0}, Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks;->onRejectPromise(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized createSession(IILjava/lang/String;[B)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub;->mCallbacks:Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p0, v0}, Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub;->assertTrue(Z)V

    iget-object v0, p0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub;->mBridge:Lorg/mozilla/gecko/media/GeckoMediaDrm;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub;->assertTrue(Z)V

    iget-object v0, p0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub;->mBridge:Lorg/mozilla/gecko/media/GeckoMediaDrm;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/mozilla/gecko/media/GeckoMediaDrm;->createSession(IILjava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    :try_start_1
    iget-object p1, p0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub;->mCallbacks:Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks;

    const-string p3, "Failed to createSession."

    invoke-interface {p1, p2, p3}, Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks;->onRejectPromise(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized release()V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub;->mBridgeStubs:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub;->mBridge:Lorg/mozilla/gecko/media/GeckoMediaDrm;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/mozilla/gecko/media/GeckoMediaDrm;->release()V

    iput-object v1, p0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub;->mBridge:Lorg/mozilla/gecko/media/GeckoMediaDrm;

    :cond_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub;->mCallbacks:Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iput-object v1, p0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub;->mCallbacks:Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks;

    const-string v0, ""

    iput-object v0, p0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub;->mStubId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCallbacks(Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub;->mBridge:Lorg/mozilla/gecko/media/GeckoMediaDrm;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p0, v0}, Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub;->assertTrue(Z)V

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub;->assertTrue(Z)V

    iput-object p1, p0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub;->mCallbacks:Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object p1, p0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub;->mBridge:Lorg/mozilla/gecko/media/GeckoMediaDrm;

    new-instance v0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub$Callbacks;

    iget-object v1, p0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub;->mCallbacks:Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks;

    invoke-direct {v0, p0, v1}, Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub$Callbacks;-><init>(Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub;Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks;)V

    invoke-interface {p1, v0}, Lorg/mozilla/gecko/media/GeckoMediaDrm;->setCallbacks(Lorg/mozilla/gecko/media/GeckoMediaDrm$Callbacks;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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
    iget-object v0, p0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub;->mBridge:Lorg/mozilla/gecko/media/GeckoMediaDrm;

    invoke-interface {v0, p1}, Lorg/mozilla/gecko/media/GeckoMediaDrm;->setServerCertificate([B)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateSession(ILjava/lang/String;[B)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub;->mCallbacks:Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p0, v0}, Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub;->assertTrue(Z)V

    iget-object v0, p0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub;->mBridge:Lorg/mozilla/gecko/media/GeckoMediaDrm;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub;->assertTrue(Z)V

    iget-object v0, p0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub;->mBridge:Lorg/mozilla/gecko/media/GeckoMediaDrm;

    invoke-interface {v0, p1, p2, p3}, Lorg/mozilla/gecko/media/GeckoMediaDrm;->updateSession(ILjava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    :try_start_1
    iget-object p2, p0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub;->mCallbacks:Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks;

    const-string p3, "Failed to updateSession."

    invoke-interface {p2, p1, p3}, Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks;->onRejectPromise(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0

    throw p1
.end method
