.class final Lorg/mozilla/geckoview/GeckoSession$Window;
.super Lorg/mozilla/gecko/mozglue/JNIObject;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/GeckoSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Window"
.end annotation


# instance fields
.field private mBinder:Landroid/os/Binder;

.field private mNativeQueue:Lorg/mozilla/gecko/NativeQueue;

.field private mOwner:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/mozilla/geckoview/GeckoSession;",
            ">;"
        }
    .end annotation
.end field

.field public final runtime:Lorg/mozilla/geckoview/GeckoRuntime;


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/GeckoRuntime;Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/gecko/NativeQueue;)V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/gecko/mozglue/JNIObject;-><init>()V

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoSession$Window;->runtime:Lorg/mozilla/geckoview/GeckoRuntime;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoSession$Window;->mOwner:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lorg/mozilla/geckoview/GeckoSession$Window;->mNativeQueue:Lorg/mozilla/gecko/NativeQueue;

    return-void
.end method

.method private native nativeClose()V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        dispatchTo = "proxy"
        stubName = "Close"
    .end annotation
.end method

.method private native nativeDisposeNative()V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        dispatchTo = "proxy"
        stubName = "DisposeNative"
    .end annotation
.end method

.method private native nativeTransfer(Lorg/mozilla/gecko/NativeQueue;Lorg/mozilla/geckoview/GeckoSession$Compositor;Lorg/mozilla/gecko/EventDispatcher;Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;Lorg/mozilla/gecko/util/GeckoBundle;)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        dispatchTo = "proxy"
        stubName = "Transfer"
    .end annotation
.end method

.method private onLoadRequest(Ljava/lang/String;IILjava/lang/String;ZZ)Lorg/mozilla/geckoview/GeckoResult;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "ZZ)",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    move-object v10, p0

    iget-object v0, v10, Lorg/mozilla/geckoview/GeckoSession$Window;->mOwner:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/geckoview/GeckoSession;

    :goto_0
    move-object v2, v0

    if-nez v2, :cond_1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lorg/mozilla/geckoview/GeckoResult;->fromValue(Ljava/lang/Object;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v11, Lorg/mozilla/geckoview/GeckoResult;

    invoke-direct {v11}, Lorg/mozilla/geckoview/GeckoResult;-><init>()V

    new-instance v12, Lorg/mozilla/geckoview/GeckoSession$Window$1;

    move-object v0, v12

    move-object v1, p0

    move-object v3, v11

    move-object/from16 v4, p4

    move-object v5, p1

    move v6, p2

    move/from16 v7, p3

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lorg/mozilla/geckoview/GeckoSession$Window$1;-><init>(Lorg/mozilla/geckoview/GeckoSession$Window;Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/GeckoResult;Ljava/lang/String;Ljava/lang/String;IIZZ)V

    invoke-static {v12}, Lorg/mozilla/gecko/util/ThreadUtils;->postToUiThread(Ljava/lang/Runnable;)V

    return-object v11
.end method

.method private declared-synchronized onReady(Lorg/mozilla/gecko/NativeQueue;)V
    .locals 3
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$Window;->mNativeQueue:Lorg/mozilla/gecko/NativeQueue;

    if-eqz v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$Window;->mNativeQueue:Lorg/mozilla/gecko/NativeQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, p1, :cond_2

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$Window;->mNativeQueue:Lorg/mozilla/gecko/NativeQueue;

    sget-object v1, Lorg/mozilla/geckoview/GeckoSession$State;->INITIAL:Lorg/mozilla/geckoview/GeckoSession$State;

    sget-object v2, Lorg/mozilla/geckoview/GeckoSession$State;->READY:Lorg/mozilla/geckoview/GeckoSession$State;

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/gecko/NativeQueue;->checkAndSetState(Lorg/mozilla/gecko/NativeQueue$State;Lorg/mozilla/gecko/NativeQueue$State;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public static native open(Lorg/mozilla/geckoview/GeckoSession$Window;Lorg/mozilla/gecko/NativeQueue;Lorg/mozilla/geckoview/GeckoSession$Compositor;Lorg/mozilla/gecko/EventDispatcher;Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;Lorg/mozilla/gecko/util/GeckoBundle;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        dispatchTo = "proxy"
    .end annotation
.end method


# virtual methods
.method public asBinder()Landroid/os/Binder;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$Window;->mBinder:Landroid/os/Binder;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$Window;->mBinder:Landroid/os/Binder;

    const-class v1, Lorg/mozilla/geckoview/GeckoSession$Window;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$Window;->mBinder:Landroid/os/Binder;

    return-object v0
.end method

.method public bridge synthetic asBinder()Landroid/os/IBinder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/mozilla/geckoview/GeckoSession$Window;->asBinder()Landroid/os/Binder;

    move-result-object v0

    return-object v0
.end method

.method public native attachAccessibility(Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        dispatchTo = "proxy"
    .end annotation
.end method

.method public native attachEditable(Lorg/mozilla/gecko/IGeckoEditableParent;)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        dispatchTo = "proxy"
    .end annotation
.end method

.method public close()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$Window;->mNativeQueue:Lorg/mozilla/gecko/NativeQueue;

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    sget-object v1, Lorg/mozilla/geckoview/GeckoSession$State;->INITIAL:Lorg/mozilla/geckoview/GeckoSession$State;

    invoke-virtual {v0, v1}, Lorg/mozilla/gecko/NativeQueue;->reset(Lorg/mozilla/gecko/NativeQueue$State;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$Window;->mNativeQueue:Lorg/mozilla/gecko/NativeQueue;

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$Window;->mOwner:Ljava/lang/ref/WeakReference;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lorg/mozilla/geckoview/GeckoSession$Window;->asBinder()Landroid/os/Binder;

    move-result-object v1

    const-class v2, Lorg/mozilla/geckoview/GeckoSession$Window;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    sget-object v0, Lorg/mozilla/gecko/GeckoThread$State;->PROFILE_READY:Lorg/mozilla/gecko/GeckoThread$State;

    invoke-static {v0}, Lorg/mozilla/gecko/GeckoThread;->isStateAtLeast(Lorg/mozilla/gecko/GeckoThread$State;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lorg/mozilla/geckoview/GeckoSession$Window;->nativeClose()V

    goto :goto_0

    :cond_1
    const-string v1, "nativeClose"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, p0, v1, v2}, Lorg/mozilla/gecko/GeckoThread;->queueNativeCallUntil(Lorg/mozilla/gecko/GeckoThread$State;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public disposeNative()V
    .locals 3

    sget-object v0, Lorg/mozilla/gecko/GeckoThread$State;->PROFILE_READY:Lorg/mozilla/gecko/GeckoThread$State;

    invoke-static {v0}, Lorg/mozilla/gecko/GeckoThread;->isStateAtLeast(Lorg/mozilla/gecko/GeckoThread$State;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lorg/mozilla/geckoview/GeckoSession$Window;->nativeDisposeNative()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "nativeDisposeNative"

    invoke-static {v0, p0, v2, v1}, Lorg/mozilla/gecko/GeckoThread;->queueNativeCallUntil(Lorg/mozilla/gecko/GeckoThread$State;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public finalize()V
    .locals 0

    invoke-virtual {p0}, Lorg/mozilla/geckoview/GeckoSession$Window;->close()V

    invoke-virtual {p0}, Lorg/mozilla/geckoview/GeckoSession$Window;->disposeNative()V

    return-void
.end method

.method public declared-synchronized transfer(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/gecko/NativeQueue;Lorg/mozilla/geckoview/GeckoSession$Compositor;Lorg/mozilla/gecko/EventDispatcher;Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;Lorg/mozilla/gecko/util/GeckoBundle;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$Window;->mNativeQueue:Lorg/mozilla/gecko/NativeQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$Window;->mOwner:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/geckoview/GeckoSession;

    if-eqz v0, :cond_1

    if-eq p1, v0, :cond_1

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->abandonWindow()V

    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$Window;->mOwner:Ljava/lang/ref/WeakReference;

    sget-object p1, Lorg/mozilla/gecko/GeckoThread$State;->PROFILE_READY:Lorg/mozilla/gecko/GeckoThread$State;

    invoke-static {p1}, Lorg/mozilla/gecko/GeckoThread;->isStateAtLeast(Lorg/mozilla/gecko/GeckoThread$State;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/geckoview/GeckoSession$Window;->nativeTransfer(Lorg/mozilla/gecko/NativeQueue;Lorg/mozilla/geckoview/GeckoSession$Compositor;Lorg/mozilla/gecko/EventDispatcher;Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;Lorg/mozilla/gecko/util/GeckoBundle;)V

    goto :goto_0

    :cond_2
    const-string v0, "nativeTransfer"

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const-class v2, Lorg/mozilla/gecko/NativeQueue;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-class v2, Lorg/mozilla/geckoview/GeckoSession$Compositor;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    aput-object p3, v1, v2

    const-class p3, Lorg/mozilla/gecko/EventDispatcher;

    const/4 v2, 0x4

    aput-object p3, v1, v2

    const/4 p3, 0x5

    aput-object p4, v1, p3

    const-class p3, Lorg/mozilla/geckoview/SessionAccessibility$NativeProvider;

    const/4 p4, 0x6

    aput-object p3, v1, p4

    const/4 p3, 0x7

    aput-object p5, v1, p3

    const-class p3, Lorg/mozilla/gecko/util/GeckoBundle;

    const/16 p4, 0x8

    aput-object p3, v1, p4

    const/16 p3, 0x9

    aput-object p6, v1, p3

    invoke-static {p1, p0, v0, v1}, Lorg/mozilla/gecko/GeckoThread;->queueNativeCallUntil(Lorg/mozilla/gecko/GeckoThread$State;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoSession$Window;->mNativeQueue:Lorg/mozilla/gecko/NativeQueue;

    if-eq p1, p2, :cond_3

    sget-object p3, Lorg/mozilla/geckoview/GeckoSession$State;->INITIAL:Lorg/mozilla/geckoview/GeckoSession$State;

    invoke-virtual {p1, p3}, Lorg/mozilla/gecko/NativeQueue;->reset(Lorg/mozilla/gecko/NativeQueue$State;)V

    iput-object p2, p0, Lorg/mozilla/geckoview/GeckoSession$Window;->mNativeQueue:Lorg/mozilla/gecko/NativeQueue;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
