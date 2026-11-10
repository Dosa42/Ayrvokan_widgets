.class public final Lorg/mozilla/gecko/media/RemoteManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/gecko/media/RemoteManager$RemoteConnection;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOGTAG:Ljava/lang/String; = "GeckoRemoteManager"

.field private static sRemoteManager:Lorg/mozilla/gecko/media/RemoteManager;


# instance fields
.field private mCodecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mozilla/gecko/media/CodecProxy;",
            ">;"
        }
    .end annotation
.end field

.field mConnection:Lorg/mozilla/gecko/media/RemoteManager$RemoteConnection;

.field private mDrmBridges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mozilla/gecko/media/IMediaDrmBridge;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mRemote:Lorg/mozilla/gecko/media/IMediaManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/gecko/media/RemoteManager;->mCodecs:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/gecko/media/RemoteManager;->mDrmBridges:Ljava/util/List;

    new-instance v0, Lorg/mozilla/gecko/media/RemoteManager$RemoteConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/mozilla/gecko/media/RemoteManager$RemoteConnection;-><init>(Lorg/mozilla/gecko/media/RemoteManager;Lorg/mozilla/gecko/media/RemoteManager$1;)V

    iput-object v0, p0, Lorg/mozilla/gecko/media/RemoteManager;->mConnection:Lorg/mozilla/gecko/media/RemoteManager$RemoteConnection;

    return-void
.end method

.method public static synthetic access$000(Lorg/mozilla/gecko/media/RemoteManager;)Lorg/mozilla/gecko/media/IMediaManager;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/gecko/media/RemoteManager;->mRemote:Lorg/mozilla/gecko/media/IMediaManager;

    return-object p0
.end method

.method public static synthetic access$002(Lorg/mozilla/gecko/media/RemoteManager;Lorg/mozilla/gecko/media/IMediaManager;)Lorg/mozilla/gecko/media/IMediaManager;
    .locals 0

    iput-object p1, p0, Lorg/mozilla/gecko/media/RemoteManager;->mRemote:Lorg/mozilla/gecko/media/IMediaManager;

    return-object p1
.end method

.method public static declared-synchronized getInstance()Lorg/mozilla/gecko/media/RemoteManager;
    .locals 2

    const-class v0, Lorg/mozilla/gecko/media/RemoteManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/mozilla/gecko/media/RemoteManager;->sRemoteManager:Lorg/mozilla/gecko/media/RemoteManager;

    if-nez v1, :cond_0

    new-instance v1, Lorg/mozilla/gecko/media/RemoteManager;

    invoke-direct {v1}, Lorg/mozilla/gecko/media/RemoteManager;-><init>()V

    sput-object v1, Lorg/mozilla/gecko/media/RemoteManager;->sRemoteManager:Lorg/mozilla/gecko/media/RemoteManager;

    :cond_0
    sget-object v1, Lorg/mozilla/gecko/media/RemoteManager;->sRemoteManager:Lorg/mozilla/gecko/media/RemoteManager;

    invoke-direct {v1}, Lorg/mozilla/gecko/media/RemoteManager;->init()Z

    sget-object v1, Lorg/mozilla/gecko/media/RemoteManager;->sRemoteManager:Lorg/mozilla/gecko/media/RemoteManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized handleRemoteDeath()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/RemoteManager;->mConnection:Lorg/mozilla/gecko/media/RemoteManager$RemoteConnection;

    invoke-static {v0}, Lorg/mozilla/gecko/media/RemoteManager$RemoteConnection;->access$300(Lorg/mozilla/gecko/media/RemoteManager$RemoteConnection;)V

    invoke-direct {p0}, Lorg/mozilla/gecko/media/RemoteManager;->init()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/mozilla/gecko/media/RemoteManager;->recoverRemoteCodec()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/mozilla/gecko/media/RemoteManager;->notifyError(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/mozilla/gecko/media/RemoteManager;->notifyError(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized init()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/RemoteManager;->mRemote:Lorg/mozilla/gecko/media/IMediaManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/mozilla/gecko/media/RemoteManager;->mConnection:Lorg/mozilla/gecko/media/RemoteManager$RemoteConnection;

    invoke-static {v0}, Lorg/mozilla/gecko/media/RemoteManager$RemoteConnection;->access$200(Lorg/mozilla/gecko/media/RemoteManager$RemoteConnection;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized notifyError(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/RemoteManager;->mCodecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/gecko/media/CodecProxy;

    invoke-virtual {v1, p1}, Lorg/mozilla/gecko/media/CodecProxy;->reportError(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized recoverRemoteCodec()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/RemoteManager;->mCodecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/gecko/media/CodecProxy;

    iget-object v3, p0, Lorg/mozilla/gecko/media/RemoteManager;->mRemote:Lorg/mozilla/gecko/media/IMediaManager;

    invoke-interface {v3}, Lorg/mozilla/gecko/media/IMediaManager;->createCodec()Lorg/mozilla/gecko/media/ICodec;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/mozilla/gecko/media/CodecProxy;->init(Lorg/mozilla/gecko/media/ICodec;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/2addr v1, v2

    goto :goto_0

    :cond_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0
.end method

.method private releaseIfNeeded()V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/gecko/media/RemoteManager;->mCodecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mozilla/gecko/media/RemoteManager;->mDrmBridges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/RemoteManager;->mConnection:Lorg/mozilla/gecko/media/RemoteManager$RemoteConnection;

    invoke-static {v0}, Lorg/mozilla/gecko/media/RemoteManager$RemoteConnection;->access$400(Lorg/mozilla/gecko/media/RemoteManager$RemoteConnection;)V

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/gecko/media/RemoteManager;->mConnection:Lorg/mozilla/gecko/media/RemoteManager$RemoteConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    const-string v0, "MEDIA_DECODING_PROCESS_CRASH"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/mozilla/gecko/TelemetryUtils;->addToHistogram(Ljava/lang/String;I)V

    invoke-direct {p0}, Lorg/mozilla/gecko/media/RemoteManager;->handleRemoteDeath()V

    return-void
.end method

.method public declared-synchronized createCodec(ZLandroid/media/MediaFormat;Lorg/mozilla/gecko/gfx/GeckoSurface;Lorg/mozilla/gecko/media/CodecProxy$Callbacks;Ljava/lang/String;)Lorg/mozilla/gecko/media/CodecProxy;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/RemoteManager;->mRemote:Lorg/mozilla/gecko/media/IMediaManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/mozilla/gecko/media/RemoteManager;->mRemote:Lorg/mozilla/gecko/media/IMediaManager;

    invoke-interface {v0}, Lorg/mozilla/gecko/media/IMediaManager;->createCodec()Lorg/mozilla/gecko/media/ICodec;

    move-result-object v0

    invoke-static {p1, p2, p3, p4, p5}, Lorg/mozilla/gecko/media/CodecProxy;->createCodecProxy(ZLandroid/media/MediaFormat;Lorg/mozilla/gecko/gfx/GeckoSurface;Lorg/mozilla/gecko/media/CodecProxy$Callbacks;Ljava/lang/String;)Lorg/mozilla/gecko/media/CodecProxy;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/media/CodecProxy;->init(Lorg/mozilla/gecko/media/ICodec;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/mozilla/gecko/media/RemoteManager;->mCodecs:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    monitor-exit p0

    return-object v1

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized createRemoteMediaDrmBridge(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/gecko/media/IMediaDrmBridge;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/RemoteManager;->mRemote:Lorg/mozilla/gecko/media/IMediaManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/mozilla/gecko/media/RemoteManager;->mRemote:Lorg/mozilla/gecko/media/IMediaManager;

    invoke-interface {v0, p1, p2}, Lorg/mozilla/gecko/media/IMediaManager;->createRemoteMediaDrmBridge(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/gecko/media/IMediaDrmBridge;

    move-result-object p1

    iget-object p2, p0, Lorg/mozilla/gecko/media/RemoteManager;->mDrmBridges:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catch_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onRemoteMediaDrmBridgeReleased(Lorg/mozilla/gecko/media/IMediaDrmBridge;)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/media/RemoteManager;->mDrmBridges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/RemoteManager;->mDrmBridges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    :try_start_1
    iget-object p1, p0, Lorg/mozilla/gecko/media/RemoteManager;->mRemote:Lorg/mozilla/gecko/media/IMediaManager;

    invoke-interface {p1}, Lorg/mozilla/gecko/media/IMediaManager;->endRequest()V

    invoke-direct {p0}, Lorg/mozilla/gecko/media/RemoteManager;->releaseIfNeeded()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_1
    :try_start_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public releaseCodec(Lorg/mozilla/gecko/media/CodecProxy;)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/media/RemoteManager;->mRemote:Lorg/mozilla/gecko/media/IMediaManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/gecko/media/CodecProxy;->deinit()Z

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/RemoteManager;->mCodecs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    :try_start_1
    iget-object p1, p0, Lorg/mozilla/gecko/media/RemoteManager;->mRemote:Lorg/mozilla/gecko/media/IMediaManager;

    invoke-interface {p1}, Lorg/mozilla/gecko/media/IMediaManager;->endRequest()V

    invoke-direct {p0}, Lorg/mozilla/gecko/media/RemoteManager;->releaseIfNeeded()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_1
    :try_start_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
