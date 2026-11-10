.class public final Lorg/mozilla/gecko/EventDispatcher;
.super Lorg/mozilla/gecko/mozglue/JNIObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/gecko/EventDispatcher$JavaCallbackDelegate;,
        Lorg/mozilla/gecko/EventDispatcher$NativeCallbackDelegate;
    }
.end annotation

.annotation build Lorg/mozilla/gecko/annotation/RobocopTarget;
.end annotation


# static fields
.field private static final ATTACHED:I = 0x1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field private static final DEFAULT_BACKGROUND_EVENTS_COUNT:I = 0x40

.field private static final DEFAULT_GECKO_EVENTS_COUNT:I = 0x40

.field private static final DEFAULT_UI_EVENTS_COUNT:I = 0x80

.field private static final DETACHED:I = 0x0
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field private static final INSTANCE:Lorg/mozilla/gecko/EventDispatcher;

.field private static final LOGTAG:Ljava/lang/String; = "GeckoEventDispatcher"

.field private static final REATTACHING:I = 0x2
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field


# instance fields
.field private mAttachedToGecko:Z

.field private final mBackgroundThreadListeners:Lorg/mozilla/gecko/MultiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/gecko/MultiMap<",
            "Ljava/lang/String;",
            "Lorg/mozilla/gecko/util/BundleEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mGeckoThreadListeners:Lorg/mozilla/gecko/MultiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/gecko/MultiMap<",
            "Ljava/lang/String;",
            "Lorg/mozilla/gecko/util/BundleEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mNativeQueue:Lorg/mozilla/gecko/NativeQueue;

.field private final mUiThreadListeners:Lorg/mozilla/gecko/MultiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/gecko/MultiMap<",
            "Ljava/lang/String;",
            "Lorg/mozilla/gecko/util/BundleEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/mozilla/gecko/EventDispatcher;

    invoke-direct {v0}, Lorg/mozilla/gecko/EventDispatcher;-><init>()V

    sput-object v0, Lorg/mozilla/gecko/EventDispatcher;->INSTANCE:Lorg/mozilla/gecko/EventDispatcher;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/mozilla/gecko/mozglue/JNIObject;-><init>()V

    new-instance v0, Lorg/mozilla/gecko/MultiMap;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lorg/mozilla/gecko/MultiMap;-><init>(I)V

    iput-object v0, p0, Lorg/mozilla/gecko/EventDispatcher;->mGeckoThreadListeners:Lorg/mozilla/gecko/MultiMap;

    new-instance v0, Lorg/mozilla/gecko/MultiMap;

    const/16 v2, 0x80

    invoke-direct {v0, v2}, Lorg/mozilla/gecko/MultiMap;-><init>(I)V

    iput-object v0, p0, Lorg/mozilla/gecko/EventDispatcher;->mUiThreadListeners:Lorg/mozilla/gecko/MultiMap;

    new-instance v0, Lorg/mozilla/gecko/MultiMap;

    invoke-direct {v0, v1}, Lorg/mozilla/gecko/MultiMap;-><init>(I)V

    iput-object v0, p0, Lorg/mozilla/gecko/EventDispatcher;->mBackgroundThreadListeners:Lorg/mozilla/gecko/MultiMap;

    invoke-static {}, Lorg/mozilla/gecko/GeckoThread;->getNativeQueue()Lorg/mozilla/gecko/NativeQueue;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/gecko/EventDispatcher;->mNativeQueue:Lorg/mozilla/gecko/NativeQueue;

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/gecko/NativeQueue;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Lorg/mozilla/gecko/mozglue/JNIObject;-><init>()V

    new-instance v0, Lorg/mozilla/gecko/MultiMap;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lorg/mozilla/gecko/MultiMap;-><init>(I)V

    iput-object v0, p0, Lorg/mozilla/gecko/EventDispatcher;->mGeckoThreadListeners:Lorg/mozilla/gecko/MultiMap;

    new-instance v0, Lorg/mozilla/gecko/MultiMap;

    const/16 v2, 0x80

    invoke-direct {v0, v2}, Lorg/mozilla/gecko/MultiMap;-><init>(I)V

    iput-object v0, p0, Lorg/mozilla/gecko/EventDispatcher;->mUiThreadListeners:Lorg/mozilla/gecko/MultiMap;

    new-instance v0, Lorg/mozilla/gecko/MultiMap;

    invoke-direct {v0, v1}, Lorg/mozilla/gecko/MultiMap;-><init>(I)V

    iput-object v0, p0, Lorg/mozilla/gecko/EventDispatcher;->mBackgroundThreadListeners:Lorg/mozilla/gecko/MultiMap;

    iput-object p1, p0, Lorg/mozilla/gecko/EventDispatcher;->mNativeQueue:Lorg/mozilla/gecko/NativeQueue;

    return-void
.end method

.method public static synthetic access$000(Lorg/mozilla/gecko/EventDispatcher;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/mozilla/gecko/EventDispatcher;->mAttachedToGecko:Z

    return p0
.end method

.method private checkNotRegisteredElsewhere(Lorg/mozilla/gecko/MultiMap;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/gecko/MultiMap<",
            "Ljava/lang/String;",
            "*>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method private native dispatchToGecko(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        dispatchTo = "gecko"
    .end annotation
.end method

.method private dispatchToThread(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;Lorg/mozilla/gecko/MultiMap;Landroid/os/Handler;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/mozilla/gecko/util/GeckoBundle;",
            "Lorg/mozilla/gecko/util/EventCallback;",
            "Lorg/mozilla/gecko/MultiMap<",
            "Ljava/lang/String;",
            "Lorg/mozilla/gecko/util/BundleEventListener;",
            ">;",
            "Landroid/os/Handler;",
            ")Z"
        }
    .end annotation

    monitor-enter p4

    :try_start_0
    invoke-virtual {p4, p1}, Lorg/mozilla/gecko/MultiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit p4

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {p3}, Lorg/mozilla/gecko/EventDispatcher$JavaCallbackDelegate;->wrap(Lorg/mozilla/gecko/util/EventCallback;)Lorg/mozilla/gecko/util/EventCallback;

    move-result-object p3

    invoke-virtual {p4, p1}, Lorg/mozilla/gecko/MultiMap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/mozilla/gecko/util/BundleEventListener;

    new-instance v7, Lorg/mozilla/gecko/EventDispatcher$3;

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/gecko/EventDispatcher$3;-><init>(Lorg/mozilla/gecko/EventDispatcher;Lorg/mozilla/gecko/util/BundleEventListener;Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V

    invoke-virtual {p5, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    monitor-exit p4

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private dispatchToThreads(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)Z
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/mozilla/gecko/EventDispatcher;->dispatchToThreads(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;Z)Z

    move-result p1

    return p1
.end method

.method private dispatchToThreads(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;Z)Z
    .locals 15

    move-object v7, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p3

    iget-object v1, v7, Lorg/mozilla/gecko/EventDispatcher;->mGeckoThreadListeners:Lorg/mozilla/gecko/MultiMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, v7, Lorg/mozilla/gecko/EventDispatcher;->mGeckoThreadListeners:Lorg/mozilla/gecko/MultiMap;

    invoke-virtual {v2, v0}, Lorg/mozilla/gecko/MultiMap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v9, 0x1

    if-nez v1, :cond_2

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->isOnGeckoThread()Z

    move-result v10

    invoke-static/range {p3 .. p3}, Lorg/mozilla/gecko/EventDispatcher$JavaCallbackDelegate;->wrap(Lorg/mozilla/gecko/util/EventCallback;)Lorg/mozilla/gecko/util/EventCallback;

    move-result-object v8

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lorg/mozilla/gecko/util/BundleEventListener;

    move-object/from16 v12, p2

    if-eqz v10, :cond_0

    invoke-interface {v3, v0, v12, v8}, Lorg/mozilla/gecko/util/BundleEventListener;->handleMessage(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V

    goto :goto_0

    :cond_0
    sget-object v13, Lorg/mozilla/gecko/util/ThreadUtils;->sGeckoHandler:Landroid/os/Handler;

    new-instance v14, Lorg/mozilla/gecko/EventDispatcher$2;

    move-object v1, v14

    move-object v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Lorg/mozilla/gecko/EventDispatcher$2;-><init>(Lorg/mozilla/gecko/EventDispatcher;Lorg/mozilla/gecko/util/BundleEventListener;Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    return v9

    :cond_2
    move-object/from16 v12, p2

    iget-object v5, v7, Lorg/mozilla/gecko/EventDispatcher;->mUiThreadListeners:Lorg/mozilla/gecko/MultiMap;

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->getUiHandler()Landroid/os/Handler;

    move-result-object v6

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v6}, Lorg/mozilla/gecko/EventDispatcher;->dispatchToThread(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;Lorg/mozilla/gecko/MultiMap;Landroid/os/Handler;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v9

    :cond_3
    iget-object v5, v7, Lorg/mozilla/gecko/EventDispatcher;->mBackgroundThreadListeners:Lorg/mozilla/gecko/MultiMap;

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v6

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v6}, Lorg/mozilla/gecko/EventDispatcher;->dispatchToThread(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;Lorg/mozilla/gecko/MultiMap;Landroid/os/Handler;)Z

    move-result v1

    if-eqz v1, :cond_4

    return v9

    :cond_4
    if-nez p4, :cond_5

    iget-object v10, v7, Lorg/mozilla/gecko/EventDispatcher;->mNativeQueue:Lorg/mozilla/gecko/NativeQueue;

    const-string v11, "dispatchToGecko"

    const-class v1, Ljava/lang/String;

    const-class v3, Lorg/mozilla/gecko/util/GeckoBundle;

    const-class v5, Lorg/mozilla/gecko/util/EventCallback;

    invoke-static/range {p3 .. p3}, Lorg/mozilla/gecko/EventDispatcher$JavaCallbackDelegate;->wrap(Lorg/mozilla/gecko/util/EventCallback;)Lorg/mozilla/gecko/util/EventCallback;

    move-result-object v6

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v10, p0, v11, v0}, Lorg/mozilla/gecko/NativeQueue;->queueUntilReady(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return v9

    :cond_5
    const-string v1, "No listener for "

    .line 2
    invoke-static {v1, v0}, La1/b;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v8, :cond_6

    .line 3
    invoke-interface {v8, v0}, Lorg/mozilla/gecko/util/EventCallback;->sendError(Ljava/lang/Object;)V

    :cond_6
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private dispose(Z)V
    .locals 2

    sget-object v0, Lorg/mozilla/gecko/util/ThreadUtils;->sGeckoHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lorg/mozilla/gecko/EventDispatcher$1;

    invoke-direct {v1, p0, p1}, Lorg/mozilla/gecko/EventDispatcher$1;-><init>(Lorg/mozilla/gecko/EventDispatcher;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static getInstance()Lorg/mozilla/gecko/EventDispatcher;
    .locals 1
    .annotation build Lorg/mozilla/gecko/annotation/ReflectionTarget;
    .end annotation

    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    sget-object v0, Lorg/mozilla/gecko/EventDispatcher;->INSTANCE:Lorg/mozilla/gecko/EventDispatcher;

    return-object v0
.end method

.method private native hasGeckoListener(Ljava/lang/String;)Z
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end method

.method private isReadyForDispatchingToGecko()Z
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/EventDispatcher;->mNativeQueue:Lorg/mozilla/gecko/NativeQueue;

    invoke-virtual {v0}, Lorg/mozilla/gecko/NativeQueue;->isReady()Z

    move-result v0

    return v0
.end method

.method private registerListener(Ljava/lang/Class;Lorg/mozilla/gecko/MultiMap;Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/mozilla/gecko/MultiMap<",
            "Ljava/lang/String;",
            "TT;>;TT;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    :try_start_0
    monitor-enter p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    array-length p1, p4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    aget-object v1, p4, v0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2, v1, p3}, Lorg/mozilla/gecko/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Invalid new list type"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private declared-synchronized setAttachedToGecko(I)V
    .locals 2
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/mozilla/gecko/EventDispatcher;->mAttachedToGecko:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    invoke-direct {p0, v1}, Lorg/mozilla/gecko/EventDispatcher;->dispose(Z)V

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    move v1, v0

    :cond_1
    iput-boolean v1, p0, Lorg/mozilla/gecko/EventDispatcher;->mAttachedToGecko:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private unregisterListener(Lorg/mozilla/gecko/MultiMap;Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mozilla/gecko/MultiMap<",
            "Ljava/lang/String;",
            "TT;>;TT;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    monitor-enter p1

    :try_start_0
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p3, v1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v2, p2}, Lorg/mozilla/gecko/MultiMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method


# virtual methods
.method public dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/mozilla/gecko/EventDispatcher;->dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V

    return-void
.end method

.method public dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V
    .locals 2

    .line 2
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/mozilla/gecko/EventDispatcher;->isReadyForDispatchingToGecko()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lorg/mozilla/gecko/EventDispatcher;->mAttachedToGecko:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lorg/mozilla/gecko/EventDispatcher;->hasGeckoListener(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p3}, Lorg/mozilla/gecko/EventDispatcher$JavaCallbackDelegate;->wrap(Lorg/mozilla/gecko/util/EventCallback;)Lorg/mozilla/gecko/util/EventCallback;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lorg/mozilla/gecko/EventDispatcher;->dispatchToGecko(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/mozilla/gecko/EventDispatcher;->dispatchToThreads(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;Z)Z

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public native disposeNative()V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end method

.method public finalize()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/mozilla/gecko/EventDispatcher;->dispose(Z)V

    return-void
.end method

.method public hasListener(Ljava/lang/String;)Z
    .locals 5
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/mozilla/gecko/MultiMap;

    iget-object v1, p0, Lorg/mozilla/gecko/EventDispatcher;->mGeckoThreadListeners:Lorg/mozilla/gecko/MultiMap;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/mozilla/gecko/EventDispatcher;->mUiThreadListeners:Lorg/mozilla/gecko/MultiMap;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    iget-object v4, p0, Lorg/mozilla/gecko/EventDispatcher;->mBackgroundThreadListeners:Lorg/mozilla/gecko/MultiMap;

    aput-object v4, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/gecko/MultiMap;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v1, p1}, Lorg/mozilla/gecko/MultiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    monitor-exit v1

    return v3

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    return v2
.end method

.method public varargs registerBackgroundThreadListener(Lorg/mozilla/gecko/util/BundleEventListener;[Ljava/lang/String;)V
    .locals 2
    .annotation build Lorg/mozilla/gecko/annotation/ReflectionTarget;
    .end annotation

    iget-object v0, p0, Lorg/mozilla/gecko/EventDispatcher;->mBackgroundThreadListeners:Lorg/mozilla/gecko/MultiMap;

    invoke-direct {p0, v0, p2}, Lorg/mozilla/gecko/EventDispatcher;->checkNotRegisteredElsewhere(Lorg/mozilla/gecko/MultiMap;[Ljava/lang/String;)V

    const-class v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/mozilla/gecko/EventDispatcher;->mBackgroundThreadListeners:Lorg/mozilla/gecko/MultiMap;

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/mozilla/gecko/EventDispatcher;->registerListener(Ljava/lang/Class;Lorg/mozilla/gecko/MultiMap;Ljava/lang/Object;[Ljava/lang/String;)V

    return-void
.end method

.method public varargs registerGeckoThreadListener(Lorg/mozilla/gecko/util/BundleEventListener;[Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/gecko/EventDispatcher;->mGeckoThreadListeners:Lorg/mozilla/gecko/MultiMap;

    invoke-direct {p0, v0, p2}, Lorg/mozilla/gecko/EventDispatcher;->checkNotRegisteredElsewhere(Lorg/mozilla/gecko/MultiMap;[Ljava/lang/String;)V

    const-class v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lorg/mozilla/gecko/EventDispatcher;->mGeckoThreadListeners:Lorg/mozilla/gecko/MultiMap;

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/mozilla/gecko/EventDispatcher;->registerListener(Ljava/lang/Class;Lorg/mozilla/gecko/MultiMap;Ljava/lang/Object;[Ljava/lang/String;)V

    return-void
.end method

.method public varargs registerUiThreadListener(Lorg/mozilla/gecko/util/BundleEventListener;[Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/gecko/EventDispatcher;->mUiThreadListeners:Lorg/mozilla/gecko/MultiMap;

    invoke-direct {p0, v0, p2}, Lorg/mozilla/gecko/EventDispatcher;->checkNotRegisteredElsewhere(Lorg/mozilla/gecko/MultiMap;[Ljava/lang/String;)V

    const-class v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/mozilla/gecko/EventDispatcher;->mUiThreadListeners:Lorg/mozilla/gecko/MultiMap;

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/mozilla/gecko/EventDispatcher;->registerListener(Ljava/lang/Class;Lorg/mozilla/gecko/MultiMap;Ljava/lang/Object;[Ljava/lang/String;)V

    return-void
.end method

.method public varargs unregisterBackgroundThreadListener(Lorg/mozilla/gecko/util/BundleEventListener;[Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/EventDispatcher;->mBackgroundThreadListeners:Lorg/mozilla/gecko/MultiMap;

    invoke-direct {p0, v0, p1, p2}, Lorg/mozilla/gecko/EventDispatcher;->unregisterListener(Lorg/mozilla/gecko/MultiMap;Ljava/lang/Object;[Ljava/lang/String;)V

    return-void
.end method

.method public varargs unregisterGeckoThreadListener(Lorg/mozilla/gecko/util/BundleEventListener;[Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/EventDispatcher;->mGeckoThreadListeners:Lorg/mozilla/gecko/MultiMap;

    invoke-direct {p0, v0, p1, p2}, Lorg/mozilla/gecko/EventDispatcher;->unregisterListener(Lorg/mozilla/gecko/MultiMap;Ljava/lang/Object;[Ljava/lang/String;)V

    return-void
.end method

.method public varargs unregisterUiThreadListener(Lorg/mozilla/gecko/util/BundleEventListener;[Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/EventDispatcher;->mUiThreadListeners:Lorg/mozilla/gecko/MultiMap;

    invoke-direct {p0, v0, p1, p2}, Lorg/mozilla/gecko/EventDispatcher;->unregisterListener(Lorg/mozilla/gecko/MultiMap;Ljava/lang/Object;[Ljava/lang/String;)V

    return-void
.end method
