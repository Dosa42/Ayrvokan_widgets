.class final Lorg/mozilla/gecko/util/GeckoBackgroundThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field private static final LOOPER_NAME:Ljava/lang/String; = "GeckoBackgroundThread"

.field private static handler:Landroid/os/Handler;

.field private static thread:Ljava/lang/Thread;


# instance fields
.field private mInitialRunnable:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lorg/mozilla/gecko/util/GeckoBackgroundThread;->mInitialRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static declared-synchronized getHandler()Landroid/os/Handler;
    .locals 2

    const-class v0, Lorg/mozilla/gecko/util/GeckoBackgroundThread;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/mozilla/gecko/util/GeckoBackgroundThread;->thread:Ljava/lang/Thread;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Lorg/mozilla/gecko/util/GeckoBackgroundThread;->startThread(Ljava/lang/Runnable;)V

    :catch_0
    :cond_0
    :goto_0
    sget-object v1, Lorg/mozilla/gecko/util/GeckoBackgroundThread;->handler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :try_start_1
    const-class v1, Lorg/mozilla/gecko/util/GeckoBackgroundThread;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized post(Ljava/lang/Runnable;)V
    .locals 2

    const-class v0, Lorg/mozilla/gecko/util/GeckoBackgroundThread;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/mozilla/gecko/util/GeckoBackgroundThread;->thread:Ljava/lang/Thread;

    if-nez v1, :cond_0

    invoke-static {p0}, Lorg/mozilla/gecko/util/GeckoBackgroundThread;->startThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lorg/mozilla/gecko/util/GeckoBackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static postDelayed(Ljava/lang/Runnable;J)V
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/GeckoBackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static startThread(Ljava/lang/Runnable;)V
    .locals 1

    new-instance v0, Lorg/mozilla/gecko/util/GeckoBackgroundThread;

    invoke-direct {v0, p0}, Lorg/mozilla/gecko/util/GeckoBackgroundThread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lorg/mozilla/gecko/util/GeckoBackgroundThread;->thread:Ljava/lang/Thread;

    invoke-static {v0}, Lorg/mozilla/gecko/util/ThreadUtils;->setBackgroundThread(Ljava/lang/Thread;)V

    sget-object p0, Lorg/mozilla/gecko/util/GeckoBackgroundThread;->thread:Ljava/lang/Thread;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    sget-object p0, Lorg/mozilla/gecko/util/GeckoBackgroundThread;->thread:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "GeckoBackgroundThread"

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->prepare()V

    const-class v0, Lorg/mozilla/gecko/util/GeckoBackgroundThread;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    sput-object v1, Lorg/mozilla/gecko/util/GeckoBackgroundThread;->handler:Landroid/os/Handler;

    const-class v1, Lorg/mozilla/gecko/util/GeckoBackgroundThread;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/mozilla/gecko/util/GeckoBackgroundThread;->mInitialRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/gecko/util/GeckoBackgroundThread;->mInitialRunnable:Ljava/lang/Runnable;

    :cond_0
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
