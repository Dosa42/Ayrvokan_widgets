.class public Lorg/mozilla/gecko/GeckoSystemStateListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "SystemStateListener"

.field private static final listenerInstance:Lorg/mozilla/gecko/GeckoSystemStateListener;

.field private static sApplicationContext:Landroid/content/Context;


# instance fields
.field private mContentObserver:Landroid/database/ContentObserver;

.field private mInitialized:Z

.field private mInputManager:Landroid/hardware/input/InputManager;

.field private mIsNightMode:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/mozilla/gecko/GeckoSystemStateListener;

    invoke-direct {v0}, Lorg/mozilla/gecko/GeckoSystemStateListener;-><init>()V

    sput-object v0, Lorg/mozilla/gecko/GeckoSystemStateListener;->listenerInstance:Lorg/mozilla/gecko/GeckoSystemStateListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/mozilla/gecko/GeckoSystemStateListener;
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/GeckoSystemStateListener;->listenerInstance:Lorg/mozilla/gecko/GeckoSystemStateListener;

    return-object v0
.end method

.method private static native nativeOnDeviceChanged()V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "any"
        dispatchTo = "gecko"
        stubName = "OnDeviceChanged"
    .end annotation
.end method

.method private notifyDeviceChanged(I)V
    .locals 0

    invoke-static {p1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lorg/mozilla/gecko/util/InputDeviceUtils;->isPointerTypeDevice(Landroid/view/InputDevice;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/mozilla/gecko/GeckoSystemStateListener;->onDeviceChanged()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static onDeviceChanged()V
    .locals 4

    sget-object v0, Lorg/mozilla/gecko/GeckoThread$State;->PROFILE_READY:Lorg/mozilla/gecko/GeckoThread$State;

    invoke-static {v0}, Lorg/mozilla/gecko/GeckoThread;->isStateAtLeast(Lorg/mozilla/gecko/GeckoThread$State;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/mozilla/gecko/GeckoSystemStateListener;->nativeOnDeviceChanged()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-class v2, Lorg/mozilla/gecko/GeckoSystemStateListener;

    const-string v3, "nativeOnDeviceChanged"

    invoke-static {v0, v2, v3, v1}, Lorg/mozilla/gecko/GeckoThread;->queueNativeCallUntil(Lorg/mozilla/gecko/GeckoThread$State;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private static prefersReducedMotion()Z
    .locals 3
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    sget-object v0, Lorg/mozilla/gecko/GeckoSystemStateListener;->sApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "animator_duration_scale"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public declared-synchronized initialize(Landroid/content/Context;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/mozilla/gecko/GeckoSystemStateListener;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "input"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lorg/mozilla/gecko/GeckoSystemStateListener;->mInputManager:Landroid/hardware/input/InputManager;

    sget-object v1, Lorg/mozilla/gecko/GeckoSystemStateListener;->listenerInstance:Lorg/mozilla/gecko/GeckoSystemStateListener;

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->getUiHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    sput-object p1, Lorg/mozilla/gecko/GeckoSystemStateListener;->sApplicationContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "animator_duration_scale"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Lorg/mozilla/gecko/GeckoSystemStateListener$1;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lorg/mozilla/gecko/GeckoSystemStateListener$1;-><init>(Lorg/mozilla/gecko/GeckoSystemStateListener;Landroid/os/Handler;)V

    iput-object v1, p0, Lorg/mozilla/gecko/GeckoSystemStateListener;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    sget-object p1, Lorg/mozilla/gecko/GeckoSystemStateListener;->sApplicationContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    const/16 v0, 0x20

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    move v2, v1

    :cond_1
    iput-boolean v2, p0, Lorg/mozilla/gecko/GeckoSystemStateListener;->mIsNightMode:Z

    iput-boolean v1, p0, Lorg/mozilla/gecko/GeckoSystemStateListener;->mInitialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isNightMode()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mozilla/gecko/GeckoSystemStateListener;->mIsNightMode:Z

    return v0
.end method

.method public onInputDeviceAdded(I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/mozilla/gecko/GeckoSystemStateListener;->notifyDeviceChanged(I)V

    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/mozilla/gecko/GeckoSystemStateListener;->notifyDeviceChanged(I)V

    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 0

    invoke-static {}, Lorg/mozilla/gecko/GeckoSystemStateListener;->onDeviceChanged()V

    return-void
.end method

.method public declared-synchronized shutdown()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/mozilla/gecko/GeckoSystemStateListener;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/mozilla/gecko/GeckoSystemStateListener;->mInputManager:Landroid/hardware/input/InputManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    sget-object v1, Lorg/mozilla/gecko/GeckoSystemStateListener;->listenerInstance:Lorg/mozilla/gecko/GeckoSystemStateListener;

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    sget-object v0, Lorg/mozilla/gecko/GeckoSystemStateListener;->sApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/gecko/GeckoSystemStateListener;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/gecko/GeckoSystemStateListener;->mInitialized:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/gecko/GeckoSystemStateListener;->mInputManager:Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lorg/mozilla/gecko/GeckoSystemStateListener;->mContentObserver:Landroid/database/ContentObserver;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateNightMode(I)V
    .locals 1

    and-int/lit8 p1, p1, 0x30

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-boolean v0, p0, Lorg/mozilla/gecko/GeckoSystemStateListener;->mIsNightMode:Z

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    iput-boolean p1, p0, Lorg/mozilla/gecko/GeckoSystemStateListener;->mIsNightMode:Z

    invoke-static {}, Lorg/mozilla/gecko/GeckoSystemStateListener;->onDeviceChanged()V

    return-void
.end method
