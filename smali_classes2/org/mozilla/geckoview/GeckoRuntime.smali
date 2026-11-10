.class public final Lorg/mozilla/geckoview/GeckoRuntime;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/geckoview/GeckoRuntime$ServiceWorkerDelegate;,
        Lorg/mozilla/geckoview/GeckoRuntime$Delegate;,
        Lorg/mozilla/geckoview/GeckoRuntime$LifecycleListener;
    }
.end annotation


# static fields
.field public static final ACTION_CRASHED:Ljava/lang/String; = "org.mozilla.gecko.ACTION_CRASHED"

.field private static final CONFIG_FILE_PATH_TEMPLATE:Ljava/lang/String; = "/data/local/tmp/%s-geckoview-config.yaml"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/mozilla/geckoview/GeckoRuntime;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field public static final EXTRA_CRASH_FATAL:Ljava/lang/String; = "fatal"

.field public static final EXTRA_EXTRAS_PATH:Ljava/lang/String; = "extrasPath"

.field public static final EXTRA_MINIDUMP_PATH:Ljava/lang/String; = "minidumpPath"

.field private static final LOGTAG:Ljava/lang/String; = "GeckoRuntime"

.field private static sDefaultRuntime:Lorg/mozilla/geckoview/GeckoRuntime;

.field private static sRuntime:Lorg/mozilla/geckoview/GeckoRuntime;


# instance fields
.field private final mContentBlockingController:Lorg/mozilla/geckoview/ContentBlockingController;

.field private mDelegate:Lorg/mozilla/geckoview/GeckoRuntime$Delegate;

.field private final mEventListener:Lorg/mozilla/gecko/util/BundleEventListener;

.field private final mLoginStorageProxy:Lorg/mozilla/geckoview/Autocomplete$LoginStorageProxy;

.field private mNotificationDelegate:Lorg/mozilla/geckoview/WebNotificationDelegate;

.field private final mProfilerController:Lorg/mozilla/geckoview/ProfilerController;

.field private mPushController:Lorg/mozilla/geckoview/WebPushController;

.field private mServiceWorkerDelegate:Lorg/mozilla/geckoview/GeckoRuntime$ServiceWorkerDelegate;

.field private mSettings:Lorg/mozilla/geckoview/GeckoRuntimeSettings;

.field private mStorageController:Lorg/mozilla/geckoview/StorageController;

.field private final mWebExtensionController:Lorg/mozilla/geckoview/WebExtensionController;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/mozilla/geckoview/GeckoRuntime$4;

    invoke-direct {v0}, Lorg/mozilla/geckoview/GeckoRuntime$4;-><init>()V

    sput-object v0, Lorg/mozilla/geckoview/GeckoRuntime;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/mozilla/geckoview/GeckoRuntime$1;

    invoke-direct {v0, p0}, Lorg/mozilla/geckoview/GeckoRuntime$1;-><init>(Lorg/mozilla/geckoview/GeckoRuntime;)V

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntime;->mEventListener:Lorg/mozilla/gecko/util/BundleEventListener;

    new-instance v0, Lorg/mozilla/geckoview/WebExtensionController;

    invoke-direct {v0, p0}, Lorg/mozilla/geckoview/WebExtensionController;-><init>(Lorg/mozilla/geckoview/GeckoRuntime;)V

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntime;->mWebExtensionController:Lorg/mozilla/geckoview/WebExtensionController;

    new-instance v0, Lorg/mozilla/geckoview/ContentBlockingController;

    invoke-direct {v0}, Lorg/mozilla/geckoview/ContentBlockingController;-><init>()V

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntime;->mContentBlockingController:Lorg/mozilla/geckoview/ContentBlockingController;

    new-instance v0, Lorg/mozilla/geckoview/Autocomplete$LoginStorageProxy;

    invoke-direct {v0}, Lorg/mozilla/geckoview/Autocomplete$LoginStorageProxy;-><init>()V

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntime;->mLoginStorageProxy:Lorg/mozilla/geckoview/Autocomplete$LoginStorageProxy;

    new-instance v0, Lorg/mozilla/geckoview/ProfilerController;

    invoke-direct {v0}, Lorg/mozilla/geckoview/ProfilerController;-><init>()V

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntime;->mProfilerController:Lorg/mozilla/geckoview/ProfilerController;

    sget-object v0, Lorg/mozilla/geckoview/GeckoRuntime;->sRuntime:Lorg/mozilla/geckoview/GeckoRuntime;

    if-nez v0, :cond_0

    sput-object p0, Lorg/mozilla/geckoview/GeckoRuntime;->sRuntime:Lorg/mozilla/geckoview/GeckoRuntime;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only one GeckoRuntime instance is allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic constructor <init>(Lorg/mozilla/geckoview/GeckoRuntime$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/mozilla/geckoview/GeckoRuntime;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/mozilla/geckoview/GeckoRuntime;Lorg/mozilla/geckoview/WebNotification;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/GeckoRuntime;->lambda$notifyOnClose$4(Lorg/mozilla/geckoview/WebNotification;)V

    return-void
.end method

.method public static synthetic access$000(Lorg/mozilla/geckoview/GeckoRuntime;)Lorg/mozilla/geckoview/GeckoRuntime$Delegate;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/geckoview/GeckoRuntime;->mDelegate:Lorg/mozilla/geckoview/GeckoRuntime$Delegate;

    return-object p0
.end method

.method public static synthetic access$100(Lorg/mozilla/geckoview/GeckoRuntime;)Lorg/mozilla/gecko/util/BundleEventListener;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/geckoview/GeckoRuntime;->mEventListener:Lorg/mozilla/gecko/util/BundleEventListener;

    return-object p0
.end method

.method public static synthetic b(Lorg/mozilla/geckoview/GeckoRuntime;Lorg/mozilla/geckoview/WebExtension;Ljava/lang/Void;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/mozilla/geckoview/GeckoRuntime;->lambda$unregisterWebExtension$2(Lorg/mozilla/geckoview/WebExtension;Ljava/lang/Void;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/mozilla/geckoview/GeckoRuntime;Lorg/mozilla/geckoview/WebNotification;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/GeckoRuntime;->lambda$notifyOnShow$3(Lorg/mozilla/geckoview/WebNotification;)V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lorg/mozilla/geckoview/GeckoRuntime;
    .locals 1

    .line 1
    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    new-instance v0, Lorg/mozilla/geckoview/GeckoRuntimeSettings;

    invoke-direct {v0}, Lorg/mozilla/geckoview/GeckoRuntimeSettings;-><init>()V

    invoke-static {p0, v0}, Lorg/mozilla/geckoview/GeckoRuntime;->create(Landroid/content/Context;Lorg/mozilla/geckoview/GeckoRuntimeSettings;)Lorg/mozilla/geckoview/GeckoRuntime;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/content/Context;Lorg/mozilla/geckoview/GeckoRuntimeSettings;)Lorg/mozilla/geckoview/GeckoRuntime;
    .locals 1

    .line 2
    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    new-instance v0, Lorg/mozilla/geckoview/GeckoRuntime;

    invoke-direct {v0}, Lorg/mozilla/geckoview/GeckoRuntime;-><init>()V

    invoke-virtual {v0, p0}, Lorg/mozilla/geckoview/GeckoRuntime;->attachTo(Landroid/content/Context;)V

    invoke-virtual {v0, p0, p1}, Lorg/mozilla/geckoview/GeckoRuntime;->init(Landroid/content/Context;Lorg/mozilla/geckoview/GeckoRuntimeSettings;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Failed to initialize GeckoRuntime"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic d(Ljava/lang/String;Lorg/mozilla/geckoview/GeckoResult;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/mozilla/geckoview/GeckoRuntime;->lambda$serviceWorkerOpenWindow$1(Ljava/lang/String;Lorg/mozilla/geckoview/GeckoResult;)V

    return-void
.end method

.method public static synthetic e(Lorg/mozilla/geckoview/GeckoResult;Ljava/lang/String;Lorg/mozilla/geckoview/GeckoSession;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lorg/mozilla/geckoview/GeckoRuntime;->lambda$null$0(Lorg/mozilla/geckoview/GeckoResult;Ljava/lang/String;Lorg/mozilla/geckoview/GeckoSession;)V

    return-void
.end method

.method public static declared-synchronized getDefault(Landroid/content/Context;)Lorg/mozilla/geckoview/GeckoRuntime;
    .locals 3

    const-class v0, Lorg/mozilla/geckoview/GeckoRuntime;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    sget-object v1, Lorg/mozilla/geckoview/GeckoRuntime;->sDefaultRuntime:Lorg/mozilla/geckoview/GeckoRuntime;

    if-nez v1, :cond_0

    new-instance v1, Lorg/mozilla/geckoview/GeckoRuntime;

    invoke-direct {v1}, Lorg/mozilla/geckoview/GeckoRuntime;-><init>()V

    sput-object v1, Lorg/mozilla/geckoview/GeckoRuntime;->sDefaultRuntime:Lorg/mozilla/geckoview/GeckoRuntime;

    invoke-virtual {v1, p0}, Lorg/mozilla/geckoview/GeckoRuntime;->attachTo(Landroid/content/Context;)V

    sget-object v1, Lorg/mozilla/geckoview/GeckoRuntime;->sDefaultRuntime:Lorg/mozilla/geckoview/GeckoRuntime;

    new-instance v2, Lorg/mozilla/geckoview/GeckoRuntimeSettings;

    invoke-direct {v2}, Lorg/mozilla/geckoview/GeckoRuntimeSettings;-><init>()V

    invoke-virtual {v1, p0, v2}, Lorg/mozilla/geckoview/GeckoRuntime;->init(Landroid/content/Context;Lorg/mozilla/geckoview/GeckoRuntimeSettings;)Z

    :cond_0
    sget-object p0, Lorg/mozilla/geckoview/GeckoRuntime;->sDefaultRuntime:Lorg/mozilla/geckoview/GeckoRuntime;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static getInstance()Lorg/mozilla/geckoview/GeckoRuntime;
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    sget-object v0, Lorg/mozilla/geckoview/GeckoRuntime;->sRuntime:Lorg/mozilla/geckoview/GeckoRuntime;

    return-object v0
.end method

.method private static getProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-ne v2, v3, :cond_1

    iget-object p0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object p0

    :cond_2
    return-object v0
.end method

.method private isApplicationCurrentDebugApp(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "debug_app"

    invoke-static {p1, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private isApplicationDebuggable(Landroid/content/Context;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private synthetic lambda$notifyOnClose$4(Lorg/mozilla/geckoview/WebNotification;)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntime;->mNotificationDelegate:Lorg/mozilla/geckoview/WebNotificationDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/mozilla/geckoview/WebNotificationDelegate;->onCloseNotification(Lorg/mozilla/geckoview/WebNotification;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$notifyOnShow$3(Lorg/mozilla/geckoview/WebNotification;)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntime;->mNotificationDelegate:Lorg/mozilla/geckoview/WebNotificationDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/mozilla/geckoview/WebNotificationDelegate;->onShowNotification(Lorg/mozilla/geckoview/WebNotification;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$null$0(Lorg/mozilla/geckoview/GeckoResult;Ljava/lang/String;Lorg/mozilla/geckoview/GeckoSession;)V
    .locals 1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lorg/mozilla/geckoview/GeckoSession;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Returned GeckoSession must be open."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/mozilla/geckoview/GeckoResult;->completeExceptionally(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p2, p1}, Lorg/mozilla/geckoview/GeckoSession;->loadUri(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/mozilla/geckoview/GeckoSession;->getId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/mozilla/geckoview/GeckoResult;->complete(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private static synthetic lambda$serviceWorkerOpenWindow$1(Ljava/lang/String;Lorg/mozilla/geckoview/GeckoResult;)V
    .locals 3

    sget-object v0, Lorg/mozilla/geckoview/GeckoRuntime;->sRuntime:Lorg/mozilla/geckoview/GeckoRuntime;

    iget-object v0, v0, Lorg/mozilla/geckoview/GeckoRuntime;->mServiceWorkerDelegate:Lorg/mozilla/geckoview/GeckoRuntime$ServiceWorkerDelegate;

    invoke-interface {v0, p0}, Lorg/mozilla/geckoview/GeckoRuntime$ServiceWorkerDelegate;->onOpenWindow(Ljava/lang/String;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object v0

    new-instance v1, Lorg/mozilla/geckoview/j;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p1, p0}, Lorg/mozilla/geckoview/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/mozilla/geckoview/GeckoResult;->accept(Lorg/mozilla/geckoview/GeckoResult$Consumer;)Lorg/mozilla/geckoview/GeckoResult;

    return-void
.end method

.method private synthetic lambda$unregisterWebExtension$2(Lorg/mozilla/geckoview/WebExtension;Ljava/lang/Void;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntime;->mWebExtensionController:Lorg/mozilla/geckoview/WebExtensionController;

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/WebExtensionController;->unregisterWebExtension(Lorg/mozilla/geckoview/WebExtension;)V

    invoke-static {p2}, Lorg/mozilla/geckoview/GeckoResult;->fromValue(Ljava/lang/Object;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    return-object p1
.end method

.method private notifyOnClose(Lorg/mozilla/geckoview/WebNotification;)V
    .locals 2
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    new-instance v0, Lorg/mozilla/geckoview/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/mozilla/geckoview/h;-><init>(Lorg/mozilla/geckoview/GeckoRuntime;Lorg/mozilla/geckoview/WebNotification;I)V

    invoke-static {v0}, Lorg/mozilla/gecko/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private notifyOnShow(Lorg/mozilla/geckoview/WebNotification;)V
    .locals 2
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    new-instance v0, Lorg/mozilla/geckoview/h;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/mozilla/geckoview/h;-><init>(Lorg/mozilla/geckoview/GeckoRuntime;Lorg/mozilla/geckoview/WebNotification;I)V

    invoke-static {v0}, Lorg/mozilla/gecko/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static serviceWorkerOpenWindow(Ljava/lang/String;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    sget-object v0, Lorg/mozilla/geckoview/GeckoRuntime;->sRuntime:Lorg/mozilla/geckoview/GeckoRuntime;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/mozilla/geckoview/GeckoRuntime;->mServiceWorkerDelegate:Lorg/mozilla/geckoview/GeckoRuntime$ServiceWorkerDelegate;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/mozilla/geckoview/GeckoResult;

    invoke-direct {v0}, Lorg/mozilla/geckoview/GeckoResult;-><init>()V

    new-instance v1, Lorg/mozilla/geckoview/c;

    invoke-direct {v1, p0, v0}, Lorg/mozilla/geckoview/c;-><init>(Ljava/lang/String;Lorg/mozilla/geckoview/GeckoResult;)V

    invoke-static {v1}, Lorg/mozilla/gecko/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "No available Service Worker delegate."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lorg/mozilla/geckoview/GeckoResult;->fromException(Ljava/lang/Throwable;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p0

    return-object p0
.end method

.method private usesDarkTheme()Z
    .locals 2
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    invoke-virtual {p0}, Lorg/mozilla/geckoview/GeckoRuntime;->getSettings()Lorg/mozilla/geckoview/GeckoRuntimeSettings;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->getPreferredColorScheme()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1

    :cond_1
    invoke-static {}, Lorg/mozilla/gecko/GeckoSystemStateListener;->getInstance()Lorg/mozilla/gecko/GeckoSystemStateListener;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/gecko/GeckoSystemStateListener;->isNightMode()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public appendAppNotesToCrashReport(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "\n"

    .line 2
    .line 3
    invoke-static {p1, v0}, La1/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lorg/mozilla/gecko/GeckoThread$State;->PROFILE_READY:Lorg/mozilla/gecko/GeckoThread$State;

    .line 8
    .line 9
    invoke-static {v1}, Lorg/mozilla/gecko/GeckoThread;->isStateAtLeast(Lorg/mozilla/gecko/GeckoThread$State;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-static {v0}, Lorg/mozilla/gecko/GeckoAppShell;->nativeAppendAppNotesToCrashReport(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-class v2, Ljava/lang/String;

    .line 20
    .line 21
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-class v2, Lorg/mozilla/gecko/GeckoAppShell;

    .line 26
    .line 27
    const-string v3, "nativeAppendAppNotesToCrashReport"

    .line 28
    .line 29
    invoke-static {v1, v2, v3, v0}, Lorg/mozilla/gecko/GeckoThread;->queueNativeCallUntil(Lorg/mozilla/gecko/GeckoThread$State;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-static {p1}, Lorg/mozilla/gecko/GeckoAppShell;->appendAppNotesToCrashReport(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public attachTo(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/mozilla/gecko/GeckoAppShell;->setApplicationContext(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public configurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    invoke-static {}, Lorg/mozilla/gecko/GeckoSystemStateListener;->getInstance()Lorg/mozilla/gecko/GeckoSystemStateListener;

    move-result-object v0

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {v0, p1}, Lorg/mozilla/gecko/GeckoSystemStateListener;->updateNightMode(I)V

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getContentBlockingController()Lorg/mozilla/geckoview/ContentBlockingController;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntime;->mContentBlockingController:Lorg/mozilla/geckoview/ContentBlockingController;

    return-object v0
.end method

.method public getDelegate()Lorg/mozilla/geckoview/GeckoRuntime$Delegate;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntime;->mDelegate:Lorg/mozilla/geckoview/GeckoRuntime$Delegate;

    return-object v0
.end method

.method public getLoginStorageDelegate()Lorg/mozilla/geckoview/Autocomplete$LoginStorageDelegate;
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntime;->mLoginStorageProxy:Lorg/mozilla/geckoview/Autocomplete$LoginStorageProxy;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/Autocomplete$LoginStorageProxy;->getDelegate()Lorg/mozilla/geckoview/Autocomplete$LoginStorageDelegate;

    move-result-object v0

    return-object v0
.end method

.method public getProfileDir()Ljava/io/File;
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    invoke-static {}, Lorg/mozilla/gecko/GeckoThread;->getActiveProfile()Lorg/mozilla/gecko/GeckoProfile;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/gecko/GeckoProfile;->getDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getProfilerController()Lorg/mozilla/geckoview/ProfilerController;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntime;->mProfilerController:Lorg/mozilla/geckoview/ProfilerController;

    return-object v0
.end method

.method public getSettings()Lorg/mozilla/geckoview/GeckoRuntimeSettings;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntime;->mSettings:Lorg/mozilla/geckoview/GeckoRuntimeSettings;

    return-object v0
.end method

.method public getStorageController()Lorg/mozilla/geckoview/StorageController;
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntime;->mStorageController:Lorg/mozilla/geckoview/StorageController;

    if-nez v0, :cond_0

    new-instance v0, Lorg/mozilla/geckoview/StorageController;

    invoke-direct {v0}, Lorg/mozilla/geckoview/StorageController;-><init>()V

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntime;->mStorageController:Lorg/mozilla/geckoview/StorageController;

    :cond_0
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntime;->mStorageController:Lorg/mozilla/geckoview/StorageController;

    return-object v0
.end method

.method public getWebExtensionController()Lorg/mozilla/geckoview/WebExtensionController;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntime;->mWebExtensionController:Lorg/mozilla/geckoview/WebExtensionController;

    return-object v0
.end method

.method public getWebNotificationDelegate()Lorg/mozilla/geckoview/WebNotificationDelegate;
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntime;->mNotificationDelegate:Lorg/mozilla/geckoview/WebNotificationDelegate;

    return-object v0
.end method

.method public getWebPushController()Lorg/mozilla/geckoview/WebPushController;
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntime;->mPushController:Lorg/mozilla/geckoview/WebPushController;

    if-nez v0, :cond_0

    new-instance v0, Lorg/mozilla/geckoview/WebPushController;

    invoke-direct {v0}, Lorg/mozilla/geckoview/WebPushController;-><init>()V

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntime;->mPushController:Lorg/mozilla/geckoview/WebPushController;

    :cond_0
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntime;->mPushController:Lorg/mozilla/geckoview/WebPushController;

    return-object v0
.end method

.method public init(Landroid/content/Context;Lorg/mozilla/geckoview/GeckoRuntimeSettings;)Z
    .locals 7

    .line 1
    invoke-virtual {p2}, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->getUseMultiprocess()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v0, v1

    .line 11
    :goto_0
    invoke-virtual {p2}, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->getPauseForDebuggerEnabled()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    or-int/lit8 v0, v0, 0x1

    .line 18
    .line 19
    :cond_1
    invoke-virtual {p2}, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->getCrashHandler()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const/4 v3, 0x1

    .line 24
    if-eqz v2, :cond_3

    .line 25
    .line 26
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    new-instance v5, Landroid/content/ComponentName;

    .line 31
    .line 32
    invoke-direct {v5, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4, v5, v1}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {p1}, Lorg/mozilla/geckoview/GeckoRuntime;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-nez v2, :cond_2

    .line 50
    .line 51
    invoke-static {}, Lorg/mozilla/gecko/EventDispatcher;->getInstance()Lorg/mozilla/gecko/EventDispatcher;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    iget-object v4, p0, Lorg/mozilla/geckoview/GeckoRuntime;->mEventListener:Lorg/mozilla/gecko/util/BundleEventListener;

    .line 56
    .line 57
    new-array v5, v3, [Ljava/lang/String;

    .line 58
    .line 59
    const-string v6, "GeckoView:ContentCrashReport"

    .line 60
    .line 61
    aput-object v6, v5, v1

    .line 62
    .line 63
    invoke-virtual {v2, v4, v5}, Lorg/mozilla/gecko/EventDispatcher;->registerUiThreadListener(Lorg/mozilla/gecko/util/BundleEventListener;[Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    or-int/lit8 v0, v0, 0x4

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 70
    .line 71
    const-string p2, "Crash handler service must run in a separate process"

    .line 72
    .line 73
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 78
    .line 79
    const-string p2, "Crash handler must be registered as a service"

    .line 80
    .line 81
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p1

    .line 85
    :cond_3
    :goto_1
    invoke-virtual {p2}, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->getUseMaxScreenDepth()Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    invoke-static {v2}, Lorg/mozilla/gecko/GeckoAppShell;->useMaxScreenDepth(Z)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2}, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->getDisplayDensityOverride()Ljava/lang/Float;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-static {v2}, Lorg/mozilla/gecko/GeckoAppShell;->setDisplayDensityOverride(Ljava/lang/Float;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2}, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->getDisplayDpiOverride()Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-static {v2}, Lorg/mozilla/gecko/GeckoAppShell;->setDisplayDpiOverride(Ljava/lang/Integer;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2}, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->getScreenSizeOverride()Landroid/graphics/Rect;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-static {v2}, Lorg/mozilla/gecko/GeckoAppShell;->setScreenSizeOverride(Landroid/graphics/Rect;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2}, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->getCrashHandler()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-static {v2}, Lorg/mozilla/gecko/GeckoAppShell;->setCrashHandlerService(Ljava/lang/Class;)V

    .line 118
    .line 119
    .line 120
    invoke-static {}, Lorg/mozilla/geckoview/GeckoFontScaleListener;->getInstance()Lorg/mozilla/geckoview/GeckoFontScaleListener;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v2, p1, p2}, Lorg/mozilla/geckoview/GeckoFontScaleListener;->attachToContext(Landroid/content/Context;Lorg/mozilla/geckoview/GeckoRuntimeSettings;)V

    .line 125
    .line 126
    .line 127
    new-instance v2, Lorg/mozilla/gecko/GeckoThread$InitInfo;

    .line 128
    .line 129
    invoke-direct {v2}, Lorg/mozilla/gecko/GeckoThread$InitInfo;-><init>()V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2}, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->getArguments()[Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    iput-object v4, v2, Lorg/mozilla/gecko/GeckoThread$InitInfo;->args:[Ljava/lang/String;

    .line 137
    .line 138
    invoke-virtual {p2}, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->getExtras()Landroid/os/Bundle;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    iput-object v4, v2, Lorg/mozilla/gecko/GeckoThread$InitInfo;->extras:Landroid/os/Bundle;

    .line 143
    .line 144
    iput v0, v2, Lorg/mozilla/gecko/GeckoThread$InitInfo;->flags:I

    .line 145
    .line 146
    new-instance v0, Lf/b;

    .line 147
    .line 148
    invoke-direct {v0}, Lf/b;-><init>()V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p2}, Lorg/mozilla/geckoview/RuntimeSettings;->getPrefsMap()Ljava/util/Map;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    invoke-virtual {v0, v4}, Lf/b;->putAll(Ljava/util/Map;)V

    .line 156
    .line 157
    .line 158
    iget-object v4, v2, Lorg/mozilla/gecko/GeckoThread$InitInfo;->extras:Landroid/os/Bundle;

    .line 159
    .line 160
    const-string v5, "forcedisablewebrender"

    .line 161
    .line 162
    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    move-result v4

    .line 166
    if-ne v4, v3, :cond_4

    .line 167
    .line 168
    const-string v4, "gfx.webrender.force-disabled"

    .line 169
    .line 170
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 171
    .line 172
    invoke-virtual {v0, v4, v5}, Lf/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    :cond_4
    iput-object v0, v2, Lorg/mozilla/gecko/GeckoThread$InitInfo;->prefs:Ljava/util/Map;

    .line 176
    .line 177
    invoke-virtual {p2}, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->getConfigFilePath()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    if-nez v0, :cond_6

    .line 182
    .line 183
    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/GeckoRuntime;->isApplicationDebuggable(Landroid/content/Context;)Z

    .line 184
    .line 185
    .line 186
    move-result v4

    .line 187
    if-nez v4, :cond_5

    .line 188
    .line 189
    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/GeckoRuntime;->isApplicationCurrentDebugApp(Landroid/content/Context;)Z

    .line 190
    .line 191
    .line 192
    move-result v4

    .line 193
    if-eqz v4, :cond_6

    .line 194
    .line 195
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 200
    .line 201
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    const-string v0, "/data/local/tmp/%s-geckoview-config.yaml"

    .line 206
    .line 207
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    :cond_6
    if-eqz v0, :cond_7

    .line 212
    .line 213
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 214
    .line 215
    .line 216
    move-result p1

    .line 217
    if-nez p1, :cond_7

    .line 218
    .line 219
    :try_start_1
    new-instance p1, Ljava/io/File;

    .line 220
    .line 221
    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-static {p1}, Lorg/mozilla/gecko/util/DebugConfig;->fromFile(Ljava/io/File;)Lorg/mozilla/gecko/util/DebugConfig;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    invoke-virtual {p1, v2}, Lorg/mozilla/gecko/util/DebugConfig;->mergeIntoInitInfo(Lorg/mozilla/gecko/GeckoThread$InitInfo;)V
    :try_end_1
    .catch Lh3/c; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 229
    .line 230
    .line 231
    :catch_1
    :cond_7
    invoke-static {v2}, Lorg/mozilla/gecko/GeckoThread;->init(Lorg/mozilla/gecko/GeckoThread$InitInfo;)Z

    .line 232
    .line 233
    .line 234
    move-result p1

    .line 235
    if-nez p1, :cond_8

    .line 236
    .line 237
    return v1

    .line 238
    :cond_8
    invoke-static {}, Lorg/mozilla/gecko/GeckoThread;->launch()Z

    .line 239
    .line 240
    .line 241
    move-result p1

    .line 242
    if-nez p1, :cond_9

    .line 243
    .line 244
    return v1

    .line 245
    :cond_9
    iput-object p2, p0, Lorg/mozilla/geckoview/GeckoRuntime;->mSettings:Lorg/mozilla/geckoview/GeckoRuntimeSettings;

    .line 246
    .line 247
    invoke-static {}, Lorg/mozilla/gecko/EventDispatcher;->getInstance()Lorg/mozilla/gecko/EventDispatcher;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    iget-object p2, p0, Lorg/mozilla/geckoview/GeckoRuntime;->mEventListener:Lorg/mozilla/gecko/util/BundleEventListener;

    .line 252
    .line 253
    const-string v0, "Gecko:Exited"

    .line 254
    .line 255
    filled-new-array {v0}, [Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    invoke-virtual {p1, p2, v0}, Lorg/mozilla/gecko/EventDispatcher;->registerUiThreadListener(Lorg/mozilla/gecko/util/BundleEventListener;[Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoRuntime;->mSettings:Lorg/mozilla/geckoview/GeckoRuntimeSettings;

    .line 263
    .line 264
    invoke-virtual {p1, p0}, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->attachTo(Lorg/mozilla/geckoview/GeckoRuntime;)V

    .line 265
    .line 266
    .line 267
    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getApplicationContext()Landroid/content/Context;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    const-string p2, "clipboard"

    .line 272
    .line 273
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    sget-object p1, Landroidx/lifecycle/u;->i:Landroidx/lifecycle/u;

    .line 277
    .line 278
    iget-object p1, p1, Landroidx/lifecycle/u;->f:Landroidx/lifecycle/p;

    .line 279
    .line 280
    new-instance p2, Lorg/mozilla/geckoview/GeckoRuntime$LifecycleListener;

    .line 281
    .line 282
    invoke-direct {p2, p0}, Lorg/mozilla/geckoview/GeckoRuntime$LifecycleListener;-><init>(Lorg/mozilla/geckoview/GeckoRuntime;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {p1, p2}, Landroidx/lifecycle/p;->a(Landroidx/lifecycle/m;)V

    .line 286
    .line 287
    .line 288
    return v3
.end method

.method public orientationChanged()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    invoke-static {}, Lorg/mozilla/gecko/GeckoScreenOrientation;->getInstance()Lorg/mozilla/gecko/GeckoScreenOrientation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/gecko/GeckoScreenOrientation;->update()Z

    return-void
.end method

.method public orientationChanged(I)V
    .locals 1

    .line 2
    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    invoke-static {}, Lorg/mozilla/gecko/GeckoScreenOrientation;->getInstance()Lorg/mozilla/gecko/GeckoScreenOrientation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mozilla/gecko/GeckoScreenOrientation;->update(I)Z

    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    const-class v0, Lorg/mozilla/geckoview/GeckoRuntime;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lorg/mozilla/geckoview/GeckoRuntimeSettings;

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoRuntime;->mSettings:Lorg/mozilla/geckoview/GeckoRuntimeSettings;

    return-void
.end method

.method public registerWebExtension(Lorg/mozilla/geckoview/WebExtension;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/geckoview/WebExtension;",
            ")",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lorg/mozilla/geckoview/GeckoRuntime$2;

    invoke-direct {v0, p0}, Lorg/mozilla/geckoview/GeckoRuntime$2;-><init>(Lorg/mozilla/geckoview/GeckoRuntime;)V

    new-instance v1, Lorg/mozilla/gecko/util/GeckoBundle;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lorg/mozilla/gecko/util/GeckoBundle;-><init>(I)V

    iget-object v2, p1, Lorg/mozilla/geckoview/WebExtension;->location:Ljava/lang/String;

    const-string v3, "locationUri"

    invoke-virtual {v1, v3, v2}, Lorg/mozilla/gecko/util/GeckoBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "id"

    iget-object v3, p1, Lorg/mozilla/geckoview/WebExtension;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/mozilla/gecko/util/GeckoBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v2, p1, Lorg/mozilla/geckoview/WebExtension;->flags:J

    const-wide/16 v4, 0x1

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "allowContentMessaging"

    invoke-virtual {v1, v3, v2}, Lorg/mozilla/gecko/util/GeckoBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v2, p0, Lorg/mozilla/geckoview/GeckoRuntime;->mWebExtensionController:Lorg/mozilla/geckoview/WebExtensionController;

    invoke-virtual {v2, p1}, Lorg/mozilla/geckoview/WebExtensionController;->registerWebExtension(Lorg/mozilla/geckoview/WebExtension;)V

    invoke-static {}, Lorg/mozilla/gecko/EventDispatcher;->getInstance()Lorg/mozilla/gecko/EventDispatcher;

    move-result-object p1

    const-string v2, "GeckoView:RegisterWebExtension"

    invoke-virtual {p1, v2, v1, v0}, Lorg/mozilla/gecko/EventDispatcher;->dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V

    return-object v0
.end method

.method public setDefaultPrefs(Lorg/mozilla/gecko/util/GeckoBundle;)V
    .locals 2

    invoke-static {}, Lorg/mozilla/gecko/EventDispatcher;->getInstance()Lorg/mozilla/gecko/EventDispatcher;

    move-result-object v0

    const-string v1, "GeckoView:SetDefaultPrefs"

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/gecko/EventDispatcher;->dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;)V

    return-void
.end method

.method public setDelegate(Lorg/mozilla/geckoview/GeckoRuntime$Delegate;)V
    .locals 0

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoRuntime;->mDelegate:Lorg/mozilla/geckoview/GeckoRuntime$Delegate;

    return-void
.end method

.method public setLoginStorageDelegate(Lorg/mozilla/geckoview/Autocomplete$LoginStorageDelegate;)V
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntime;->mLoginStorageProxy:Lorg/mozilla/geckoview/Autocomplete$LoginStorageProxy;

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/Autocomplete$LoginStorageProxy;->setDelegate(Lorg/mozilla/geckoview/Autocomplete$LoginStorageDelegate;)V

    return-void
.end method

.method public setPref(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lorg/mozilla/gecko/PrefsHelper;->setPref(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public setServiceWorkerDelegate(Lorg/mozilla/geckoview/GeckoRuntime$ServiceWorkerDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoRuntime;->mServiceWorkerDelegate:Lorg/mozilla/geckoview/GeckoRuntime$ServiceWorkerDelegate;

    return-void
.end method

.method public setWebNotificationDelegate(Lorg/mozilla/geckoview/WebNotificationDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoRuntime;->mNotificationDelegate:Lorg/mozilla/geckoview/WebNotificationDelegate;

    return-void
.end method

.method public shutdown()V
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/GeckoSystemStateListener;->getInstance()Lorg/mozilla/gecko/GeckoSystemStateListener;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/gecko/GeckoSystemStateListener;->shutdown()V

    invoke-static {}, Lorg/mozilla/gecko/GeckoThread;->forceQuit()V

    return-void
.end method

.method public unregisterWebExtension(Lorg/mozilla/geckoview/WebExtension;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/geckoview/WebExtension;",
            ")",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lorg/mozilla/geckoview/GeckoRuntime$3;

    invoke-direct {v0, p0}, Lorg/mozilla/geckoview/GeckoRuntime$3;-><init>(Lorg/mozilla/geckoview/GeckoRuntime;)V

    new-instance v1, Lorg/mozilla/gecko/util/GeckoBundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lorg/mozilla/gecko/util/GeckoBundle;-><init>(I)V

    iget-object v2, p1, Lorg/mozilla/geckoview/WebExtension;->id:Ljava/lang/String;

    const-string v3, "id"

    invoke-virtual {v1, v3, v2}, Lorg/mozilla/gecko/util/GeckoBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/mozilla/gecko/EventDispatcher;->getInstance()Lorg/mozilla/gecko/EventDispatcher;

    move-result-object v2

    const-string v3, "GeckoView:UnregisterWebExtension"

    invoke-virtual {v2, v3, v1, v0}, Lorg/mozilla/gecko/EventDispatcher;->dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V

    new-instance v1, Lorg/mozilla/geckoview/j;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0, p1}, Lorg/mozilla/geckoview/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/mozilla/geckoview/GeckoResult;->then(Lorg/mozilla/geckoview/GeckoResult$OnValueListener;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    return-object p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoRuntime;->mSettings:Lorg/mozilla/geckoview/GeckoRuntimeSettings;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
