.class public final Lorg/mozilla/gecko/util/XPCOMEventTarget;
.super Lorg/mozilla/gecko/mozglue/JNIObject;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/gecko/util/IXPCOMEventTarget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/gecko/util/XPCOMEventTarget$AsyncProxy;,
        Lorg/mozilla/gecko/util/XPCOMEventTarget$JNIRunnable;
    }
.end annotation

.annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
.end annotation


# static fields
.field private static mLauncherThread:Lorg/mozilla/gecko/util/IXPCOMEventTarget;

.field private static mMainThread:Lorg/mozilla/gecko/util/IXPCOMEventTarget;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/gecko/mozglue/JNIObject;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/mozilla/gecko/util/XPCOMEventTarget;->lambda$setTarget$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$000(Ljava/lang/String;)Lorg/mozilla/gecko/util/IXPCOMEventTarget;
    .locals 0

    invoke-static {p0}, Lorg/mozilla/gecko/util/XPCOMEventTarget;->getTarget(Ljava/lang/String;)Lorg/mozilla/gecko/util/IXPCOMEventTarget;

    move-result-object p0

    return-object p0
.end method

.method public static assertNotOnLauncherThread()V
    .locals 2

    sget-boolean v0, Lorg/mozilla/geckoview/BuildConfig;->DEBUG:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/mozilla/gecko/util/XPCOMEventTarget;->launcherThread()Lorg/mozilla/gecko/util/IXPCOMEventTarget;

    move-result-object v0

    invoke-interface {v0}, Lorg/mozilla/gecko/util/IXPCOMEventTarget;->isOnCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Expected to not be running on XPCOM launcher thread"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public static assertOnLauncherThread()V
    .locals 2

    sget-boolean v0, Lorg/mozilla/geckoview/BuildConfig;->DEBUG:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/mozilla/gecko/util/XPCOMEventTarget;->launcherThread()Lorg/mozilla/gecko/util/IXPCOMEventTarget;

    move-result-object v0

    invoke-interface {v0}, Lorg/mozilla/gecko/util/IXPCOMEventTarget;->isOnCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Expected to be running on XPCOM launcher thread"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private native dispatchNative(Lorg/mozilla/gecko/util/XPCOMEventTarget$JNIRunnable;)V
.end method

.method private static declared-synchronized getTarget(Ljava/lang/String;)Lorg/mozilla/gecko/util/IXPCOMEventTarget;
    .locals 3

    const-string v0, "Attempt to assign to unknown thread named "

    const-class v1, Lorg/mozilla/gecko/util/XPCOMEventTarget;

    monitor-enter v1

    :try_start_0
    const-string v2, "launcher"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object p0, Lorg/mozilla/gecko/util/XPCOMEventTarget;->mLauncherThread:Lorg/mozilla/gecko/util/IXPCOMEventTarget;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object p0

    :cond_0
    :try_start_1
    const-string v2, "main"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object p0, Lorg/mozilla/gecko/util/XPCOMEventTarget;->mMainThread:Lorg/mozilla/gecko/util/IXPCOMEventTarget;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object p0

    :cond_1
    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
.end method

.method private static synthetic lambda$setTarget$0(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized launcherThread()Lorg/mozilla/gecko/util/IXPCOMEventTarget;
    .locals 3

    const-class v0, Lorg/mozilla/gecko/util/XPCOMEventTarget;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/mozilla/gecko/util/XPCOMEventTarget;->mLauncherThread:Lorg/mozilla/gecko/util/IXPCOMEventTarget;

    if-nez v1, :cond_0

    new-instance v1, Lorg/mozilla/gecko/util/XPCOMEventTarget$AsyncProxy;

    const-string v2, "launcher"

    invoke-direct {v1, v2}, Lorg/mozilla/gecko/util/XPCOMEventTarget$AsyncProxy;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/mozilla/gecko/util/XPCOMEventTarget;->mLauncherThread:Lorg/mozilla/gecko/util/IXPCOMEventTarget;

    :cond_0
    sget-object v1, Lorg/mozilla/gecko/util/XPCOMEventTarget;->mLauncherThread:Lorg/mozilla/gecko/util/IXPCOMEventTarget;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized mainThread()Lorg/mozilla/gecko/util/IXPCOMEventTarget;
    .locals 3

    const-class v0, Lorg/mozilla/gecko/util/XPCOMEventTarget;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/mozilla/gecko/util/XPCOMEventTarget;->mMainThread:Lorg/mozilla/gecko/util/IXPCOMEventTarget;

    if-nez v1, :cond_0

    new-instance v1, Lorg/mozilla/gecko/util/XPCOMEventTarget$AsyncProxy;

    const-string v2, "main"

    invoke-direct {v1, v2}, Lorg/mozilla/gecko/util/XPCOMEventTarget$AsyncProxy;-><init>(Ljava/lang/String;)V

    sput-object v1, Lorg/mozilla/gecko/util/XPCOMEventTarget;->mMainThread:Lorg/mozilla/gecko/util/IXPCOMEventTarget;

    :cond_0
    sget-object v1, Lorg/mozilla/gecko/util/XPCOMEventTarget;->mMainThread:Lorg/mozilla/gecko/util/IXPCOMEventTarget;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized resolveAndDispatch(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    const-class v0, Lorg/mozilla/gecko/util/XPCOMEventTarget;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lorg/mozilla/gecko/util/XPCOMEventTarget;->getTarget(Ljava/lang/String;)Lorg/mozilla/gecko/util/IXPCOMEventTarget;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static native resolveAndDispatchNative(Ljava/lang/String;Ljava/lang/Runnable;)V
.end method

.method public static runOnLauncherThread(Ljava/lang/Runnable;)V
    .locals 2

    invoke-static {}, Lorg/mozilla/gecko/util/XPCOMEventTarget;->launcherThread()Lorg/mozilla/gecko/util/IXPCOMEventTarget;

    move-result-object v0

    invoke-interface {v0}, Lorg/mozilla/gecko/util/IXPCOMEventTarget;->isOnCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static declared-synchronized setTarget(Ljava/lang/String;Lorg/mozilla/gecko/util/XPCOMEventTarget;)V
    .locals 3
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    const-string v0, "Attempt to assign to unknown thread named "

    const-class v1, Lorg/mozilla/gecko/util/XPCOMEventTarget;

    monitor-enter v1

    :try_start_0
    const-string v2, "main"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sput-object p1, Lorg/mozilla/gecko/util/XPCOMEventTarget;->mMainThread:Lorg/mozilla/gecko/util/IXPCOMEventTarget;

    goto :goto_0

    :cond_0
    const-string v2, "launcher"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sput-object p1, Lorg/mozilla/gecko/util/XPCOMEventTarget;->mLauncherThread:Lorg/mozilla/gecko/util/IXPCOMEventTarget;

    :goto_0
    sget-object v0, Lorg/mozilla/gecko/util/XPCOMEventTarget;->mMainThread:Lorg/mozilla/gecko/util/IXPCOMEventTarget;

    if-eq v0, p1, :cond_1

    new-instance v0, Lo0/n;

    const/16 v2, 0x19

    invoke-direct {v0, p0, v2}, Lo0/n;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/util/XPCOMEventTarget;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    return-void

    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
.end method


# virtual methods
.method public native disposeNative()V
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    new-instance v0, Lorg/mozilla/gecko/util/XPCOMEventTarget$JNIRunnable;

    invoke-direct {v0, p1}, Lorg/mozilla/gecko/util/XPCOMEventTarget$JNIRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-direct {p0, v0}, Lorg/mozilla/gecko/util/XPCOMEventTarget;->dispatchNative(Lorg/mozilla/gecko/util/XPCOMEventTarget$JNIRunnable;)V

    return-void
.end method

.method public native isOnCurrentThread()Z
.end method
