.class final Lorg/mozilla/gecko/gfx/SurfaceAllocator$SurfaceAllocatorConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/gfx/SurfaceAllocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SurfaceAllocatorConnection"
.end annotation


# instance fields
.field private mAllocator:Lorg/mozilla/gecko/gfx/ISurfaceAllocator;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/mozilla/gecko/gfx/SurfaceAllocator$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/mozilla/gecko/gfx/SurfaceAllocator$SurfaceAllocatorConnection;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized getAllocator()Lorg/mozilla/gecko/gfx/ISurfaceAllocator;
    .locals 1

    monitor-enter p0

    :catch_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/gfx/SurfaceAllocator$SurfaceAllocatorConnection;->mAllocator:Lorg/mozilla/gecko/gfx/ISurfaceAllocator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Lorg/mozilla/gecko/gfx/ISurfaceAllocator$Stub;->asInterface(Landroid/os/IBinder;)Lorg/mozilla/gecko/gfx/ISurfaceAllocator;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/gecko/gfx/SurfaceAllocator$SurfaceAllocatorConnection;->mAllocator:Lorg/mozilla/gecko/gfx/ISurfaceAllocator;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    monitor-enter p0

    const/4 p1, 0x0

    :try_start_0
    iput-object p1, p0, Lorg/mozilla/gecko/gfx/SurfaceAllocator$SurfaceAllocatorConnection;->mAllocator:Lorg/mozilla/gecko/gfx/ISurfaceAllocator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
