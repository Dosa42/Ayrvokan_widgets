.class final Lorg/mozilla/gecko/gfx/SurfaceAllocator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/gecko/gfx/SurfaceAllocator$SurfaceAllocatorConnection;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "SurfaceAllocator"

.field private static sConnection:Lorg/mozilla/gecko/gfx/SurfaceAllocator$SurfaceAllocatorConnection;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static acquireSurface(IIZ)Lorg/mozilla/gecko/gfx/GeckoSurface;
    .locals 3
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lorg/mozilla/gecko/gfx/SurfaceAllocator;->ensureConnection()V

    if-eqz p2, :cond_0

    invoke-static {}, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->isSingleBufferSupported()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lorg/mozilla/gecko/gfx/SurfaceAllocator;->sConnection:Lorg/mozilla/gecko/gfx/SurfaceAllocator$SurfaceAllocatorConnection;

    invoke-virtual {v1}, Lorg/mozilla/gecko/gfx/SurfaceAllocator$SurfaceAllocatorConnection;->getAllocator()Lorg/mozilla/gecko/gfx/ISurfaceAllocator;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2}, Lorg/mozilla/gecko/gfx/ISurfaceAllocator;->acquireSurface(IIZ)Lorg/mozilla/gecko/gfx/GeckoSurface;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lorg/mozilla/gecko/gfx/GeckoSurface;->inProcess()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p2, p0, p1}, Lorg/mozilla/gecko/gfx/GeckoSurface;->initSyncSurface(II)Lorg/mozilla/gecko/gfx/SyncConfig;

    move-result-object p0

    invoke-interface {v1, p0}, Lorg/mozilla/gecko/gfx/ISurfaceAllocator;->configureSync(Lorg/mozilla/gecko/gfx/SyncConfig;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object p2

    :catch_0
    return-object v0
.end method

.method public static disposeSurface(Lorg/mozilla/gecko/gfx/GeckoSurface;)V
    .locals 2
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    :try_start_0
    invoke-static {}, Lorg/mozilla/gecko/gfx/SurfaceAllocator;->ensureConnection()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object v0, Lorg/mozilla/gecko/gfx/SurfaceAllocator;->sConnection:Lorg/mozilla/gecko/gfx/SurfaceAllocator$SurfaceAllocatorConnection;

    invoke-virtual {v0}, Lorg/mozilla/gecko/gfx/SurfaceAllocator$SurfaceAllocatorConnection;->getAllocator()Lorg/mozilla/gecko/gfx/ISurfaceAllocator;

    move-result-object v0

    invoke-virtual {p0}, Lorg/mozilla/gecko/gfx/GeckoSurface;->getHandle()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/mozilla/gecko/gfx/ISurfaceAllocator;->releaseSurface(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :try_start_2
    invoke-virtual {p0}, Lorg/mozilla/gecko/gfx/GeckoSurface;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    return-void
.end method

.method private static declared-synchronized ensureConnection()V
    .locals 5

    const-class v0, Lorg/mozilla/gecko/gfx/SurfaceAllocator;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/mozilla/gecko/gfx/SurfaceAllocator;->sConnection:Lorg/mozilla/gecko/gfx/SurfaceAllocator$SurfaceAllocatorConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Lorg/mozilla/gecko/gfx/SurfaceAllocator$SurfaceAllocatorConnection;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/mozilla/gecko/gfx/SurfaceAllocator$SurfaceAllocatorConnection;-><init>(Lorg/mozilla/gecko/gfx/SurfaceAllocator$1;)V

    sput-object v1, Lorg/mozilla/gecko/gfx/SurfaceAllocator;->sConnection:Lorg/mozilla/gecko/gfx/SurfaceAllocator$SurfaceAllocatorConnection;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "org.mozilla.gecko.gfx.SurfaceAllocatorService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lorg/mozilla/gecko/gfx/SurfaceAllocator;->sConnection:Lorg/mozilla/gecko/gfx/SurfaceAllocator$SurfaceAllocatorConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    :try_start_2
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Failed to connect to surface allocator service!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static sync(I)V
    .locals 1

    :try_start_0
    invoke-static {}, Lorg/mozilla/gecko/gfx/SurfaceAllocator;->ensureConnection()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v0, Lorg/mozilla/gecko/gfx/SurfaceAllocator;->sConnection:Lorg/mozilla/gecko/gfx/SurfaceAllocator$SurfaceAllocatorConnection;

    invoke-virtual {v0}, Lorg/mozilla/gecko/gfx/SurfaceAllocator$SurfaceAllocatorConnection;->getAllocator()Lorg/mozilla/gecko/gfx/ISurfaceAllocator;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/mozilla/gecko/gfx/ISurfaceAllocator;->sync(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void
.end method
