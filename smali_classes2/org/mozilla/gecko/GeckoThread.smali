.class public Lorg/mozilla/gecko/GeckoThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/gecko/GeckoThread$InitInfo;,
        Lorg/mozilla/gecko/GeckoThread$State;,
        Lorg/mozilla/gecko/GeckoThread$StateGeckoResult;
    }
.end annotation


# static fields
.field static final EXTRA_ARGS:Ljava/lang/String; = "args"

.field private static final EXTRA_CRASH_ANNOTATION_FD:Ljava/lang/String; = "crashAnnotationFd"

.field private static final EXTRA_CRASH_FD:Ljava/lang/String; = "crashFd"

.field private static final EXTRA_IPC_FD:Ljava/lang/String; = "ipcFd"

.field private static final EXTRA_PREFS_FD:Ljava/lang/String; = "prefsFd"

.field private static final EXTRA_PREF_MAP_FD:Ljava/lang/String; = "prefMapFd"

.field public static final FLAG_DEBUGGING:I = 0x1

.field public static final FLAG_ENABLE_NATIVE_CRASHREPORTER:I = 0x4

.field public static final FLAG_PRELOAD_CHILD:I = 0x2

.field private static final INSTANCE:Lorg/mozilla/gecko/GeckoThread;

.field private static final LOGTAG:Ljava/lang/String; = "GeckoThread"

.field public static final MAX_STATE:Lorg/mozilla/gecko/GeckoThread$State;

.field public static final MIN_STATE:Lorg/mozilla/gecko/GeckoThread$State;

.field private static final UI_THREAD_CALLBACK:Ljava/lang/Runnable;

.field private static final clsLoader:Ljava/lang/ClassLoader;
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field private static msgQueue:Landroid/os/MessageQueue;
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field private static sInitTimer:Lorg/mozilla/gecko/TelemetryUtils$Timer;

.field private static final sNativeQueue:Lorg/mozilla/gecko/NativeQueue;

.field private static sStateListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/mozilla/gecko/GeckoThread$StateGeckoResult;",
            ">;"
        }
    .end annotation
.end field

.field private static uiThreadId:I
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field


# instance fields
.field private mInitInfo:Lorg/mozilla/gecko/GeckoThread$InitInfo;

.field private mInitialized:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/mozilla/gecko/NativeQueue;

    sget-object v1, Lorg/mozilla/gecko/GeckoThread$State;->INITIAL:Lorg/mozilla/gecko/GeckoThread$State;

    sget-object v2, Lorg/mozilla/gecko/GeckoThread$State;->RUNNING:Lorg/mozilla/gecko/GeckoThread$State;

    invoke-direct {v0, v1, v2}, Lorg/mozilla/gecko/NativeQueue;-><init>(Lorg/mozilla/gecko/NativeQueue$State;Lorg/mozilla/gecko/NativeQueue$State;)V

    sput-object v0, Lorg/mozilla/gecko/GeckoThread;->sNativeQueue:Lorg/mozilla/gecko/NativeQueue;

    sput-object v1, Lorg/mozilla/gecko/GeckoThread;->MIN_STATE:Lorg/mozilla/gecko/GeckoThread$State;

    sget-object v0, Lorg/mozilla/gecko/GeckoThread$State;->EXITED:Lorg/mozilla/gecko/GeckoThread$State;

    sput-object v0, Lorg/mozilla/gecko/GeckoThread;->MAX_STATE:Lorg/mozilla/gecko/GeckoThread$State;

    new-instance v0, Lorg/mozilla/gecko/GeckoThread$1;

    invoke-direct {v0}, Lorg/mozilla/gecko/GeckoThread$1;-><init>()V

    sput-object v0, Lorg/mozilla/gecko/GeckoThread;->UI_THREAD_CALLBACK:Ljava/lang/Runnable;

    new-instance v0, Lorg/mozilla/gecko/GeckoThread;

    invoke-direct {v0}, Lorg/mozilla/gecko/GeckoThread;-><init>()V

    sput-object v0, Lorg/mozilla/gecko/GeckoThread;->INSTANCE:Lorg/mozilla/gecko/GeckoThread;

    const-class v0, Lorg/mozilla/gecko/GeckoThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lorg/mozilla/gecko/GeckoThread;->clsLoader:Ljava/lang/ClassLoader;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lorg/mozilla/gecko/GeckoThread;->sStateListeners:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "Gecko"

    const-wide/32 v4, 0x800000

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic a(Lorg/mozilla/gecko/GeckoThread$2;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lorg/mozilla/gecko/GeckoThread;->lambda$run$0(Lorg/mozilla/gecko/GeckoThread$2;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static checkAndSetState(Lorg/mozilla/gecko/GeckoThread$State;Lorg/mozilla/gecko/GeckoThread$State;)Z
    .locals 2
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    sget-object v0, Lorg/mozilla/gecko/GeckoThread;->sNativeQueue:Lorg/mozilla/gecko/NativeQueue;

    invoke-virtual {v0, p0, p1}, Lorg/mozilla/gecko/NativeQueue;->checkAndSetState(Lorg/mozilla/gecko/NativeQueue$State;Lorg/mozilla/gecko/NativeQueue$State;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "State changed to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GeckoThread"

    invoke-static {v0, p1}, Lo1/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lorg/mozilla/gecko/GeckoThread;->sInitTimer:Lorg/mozilla/gecko/TelemetryUtils$Timer;

    if-eqz p1, :cond_0

    invoke-static {}, Lorg/mozilla/gecko/GeckoThread;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lorg/mozilla/gecko/GeckoThread;->sInitTimer:Lorg/mozilla/gecko/TelemetryUtils$Timer;

    invoke-virtual {p1}, Lorg/mozilla/gecko/TelemetryUtils$Timer;->stop()V

    const/4 p1, 0x0

    sput-object p1, Lorg/mozilla/gecko/GeckoThread;->sInitTimer:Lorg/mozilla/gecko/TelemetryUtils$Timer;

    :cond_0
    invoke-static {}, Lorg/mozilla/gecko/GeckoThread;->notifyStateListeners()V

    :cond_1
    return p0
.end method

.method public static native crash()V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        dispatchTo = "gecko"
    .end annotation
.end method

.method public static createServices(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lorg/mozilla/gecko/GeckoThread$State;->PROFILE_READY:Lorg/mozilla/gecko/GeckoThread$State;

    invoke-static {v0}, Lorg/mozilla/gecko/GeckoThread;->isStateAtLeast(Lorg/mozilla/gecko/GeckoThread$State;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, p1}, Lorg/mozilla/gecko/GeckoThread;->nativeCreateServices(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "nativeCreateServices"

    const-class v2, Ljava/lang/String;

    filled-new-array {v2, p0, v2, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-class p1, Lorg/mozilla/gecko/GeckoThread;

    invoke-static {v0, p1, v1, p0}, Lorg/mozilla/gecko/GeckoThread;->queueNativeCallUntil(Lorg/mozilla/gecko/GeckoThread$State;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static native forceQuit()V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        dispatchTo = "gecko"
    .end annotation
.end method

.method public static getActiveExtras()Landroid/os/Bundle;
    .locals 3

    sget-object v0, Lorg/mozilla/gecko/GeckoThread;->INSTANCE:Lorg/mozilla/gecko/GeckoThread;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, v0, Lorg/mozilla/gecko/GeckoThread;->mInitialized:Z

    if-nez v1, :cond_0

    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    iget-object v2, v0, Lorg/mozilla/gecko/GeckoThread;->mInitInfo:Lorg/mozilla/gecko/GeckoThread$InitInfo;

    iget-object v2, v2, Lorg/mozilla/gecko/GeckoThread$InitInfo;->extras:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getActiveFlags()I
    .locals 2

    sget-object v0, Lorg/mozilla/gecko/GeckoThread;->INSTANCE:Lorg/mozilla/gecko/GeckoThread;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, v0, Lorg/mozilla/gecko/GeckoThread;->mInitialized:Z

    if-nez v1, :cond_0

    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v1, v0, Lorg/mozilla/gecko/GeckoThread;->mInitInfo:Lorg/mozilla/gecko/GeckoThread$InitInfo;

    iget v1, v1, Lorg/mozilla/gecko/GeckoThread$InitInfo;->flags:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getActiveProfile()Lorg/mozilla/gecko/GeckoProfile;
    .locals 1
    .annotation build Lorg/mozilla/gecko/annotation/RobocopTarget;
    .end annotation

    sget-object v0, Lorg/mozilla/gecko/GeckoThread;->INSTANCE:Lorg/mozilla/gecko/GeckoThread;

    invoke-virtual {v0}, Lorg/mozilla/gecko/GeckoThread;->getProfile()Lorg/mozilla/gecko/GeckoProfile;

    move-result-object v0

    return-object v0
.end method

.method private static getEnvFromExtras(Landroid/os/Bundle;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "env0"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    if-eqz v1, :cond_2

    sget-boolean v4, Lorg/mozilla/geckoview/BuildConfig;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "env var: "

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "GeckoThread"

    invoke-static {v5, v4}, Lo1/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "env"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    add-int/2addr v3, v2

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getMainProcessArgs()[Ljava/lang/String;
    .locals 6

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "-greomni"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/content/Context;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/mozilla/gecko/GeckoThread;->getProfile()Lorg/mozilla/gecko/GeckoProfile;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/gecko/GeckoProfile;->isCustomProfile()Z

    move-result v2

    const-string v3, "-profile"

    const-string v4, "-P"

    if-eqz v2, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lorg/mozilla/gecko/GeckoProfile;->getDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/mozilla/gecko/GeckoProfile;->getDir()Ljava/io/File;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lorg/mozilla/gecko/GeckoProfile;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/mozilla/gecko/GeckoThread;->mInitInfo:Lorg/mozilla/gecko/GeckoThread$InitInfo;

    iget-object v0, v0, Lorg/mozilla/gecko/GeckoThread$InitInfo;->args:[Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object v0, p0, Lorg/mozilla/gecko/GeckoThread;->mInitInfo:Lorg/mozilla/gecko/GeckoThread$InitInfo;

    iget-object v0, v0, Lorg/mozilla/gecko/GeckoThread$InitInfo;->extras:Landroid/os/Bundle;

    const-string v2, "args"

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    :cond_2
    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    :goto_2
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getNativeQueue()Lorg/mozilla/gecko/NativeQueue;
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/GeckoThread;->sNativeQueue:Lorg/mozilla/gecko/NativeQueue;

    return-object v0
.end method

.method private static getProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v0, :cond_1

    iget-object p0, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object p0

    :cond_2
    return-object v1
.end method

.method public static init(Lorg/mozilla/gecko/GeckoThread$InitInfo;)Z
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/GeckoThread;->INSTANCE:Lorg/mozilla/gecko/GeckoThread;

    invoke-direct {v0, p0}, Lorg/mozilla/gecko/GeckoThread;->initInternal(Lorg/mozilla/gecko/GeckoThread$InitInfo;)Z

    move-result p0

    return p0
.end method

.method private static initGeckoEnvironment()V
    .locals 4

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "zh_hk"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-static {v1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iput-object v1, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const/4 v1, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_0
    invoke-static {}, Lorg/mozilla/gecko/GeckoSystemStateListener;->getInstance()Lorg/mozilla/gecko/GeckoSystemStateListener;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/mozilla/gecko/GeckoSystemStateListener;->initialize(Landroid/content/Context;)V

    invoke-static {v0}, Lorg/mozilla/gecko/GeckoThread;->loadGeckoLibs(Landroid/content/Context;)V

    return-void
.end method

.method private declared-synchronized initInternal(Lorg/mozilla/gecko/GeckoThread$InitInfo;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    sput v0, Lorg/mozilla/gecko/GeckoThread;->uiThreadId:I

    iget-boolean v0, p0, Lorg/mozilla/gecko/GeckoThread;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :cond_0
    :try_start_1
    new-instance v0, Lorg/mozilla/gecko/TelemetryUtils$UptimeTimer;

    const-string v1, "GV_STARTUP_RUNTIME_MS"

    invoke-direct {v0, v1}, Lorg/mozilla/gecko/TelemetryUtils$UptimeTimer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/mozilla/gecko/GeckoThread;->sInitTimer:Lorg/mozilla/gecko/TelemetryUtils$Timer;

    iput-object p1, p0, Lorg/mozilla/gecko/GeckoThread;->mInitInfo:Lorg/mozilla/gecko/GeckoThread$InitInfo;

    iget-object v0, p1, Lorg/mozilla/gecko/GeckoThread$InitInfo;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p1, Lorg/mozilla/gecko/GeckoThread$InitInfo;->extras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    :goto_0
    iput-object v0, p1, Lorg/mozilla/gecko/GeckoThread$InitInfo;->extras:Landroid/os/Bundle;

    iget v0, p1, Lorg/mozilla/gecko/GeckoThread$InitInfo;->prefsFd:I

    if-lez v0, :cond_2

    iget-object v1, p0, Lorg/mozilla/gecko/GeckoThread;->mInitInfo:Lorg/mozilla/gecko/GeckoThread$InitInfo;

    iget-object v1, v1, Lorg/mozilla/gecko/GeckoThread$InitInfo;->extras:Landroid/os/Bundle;

    const-string v2, "prefsFd"

    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    iget v0, p1, Lorg/mozilla/gecko/GeckoThread$InitInfo;->prefMapFd:I

    if-lez v0, :cond_3

    iget-object v1, p0, Lorg/mozilla/gecko/GeckoThread;->mInitInfo:Lorg/mozilla/gecko/GeckoThread$InitInfo;

    iget-object v1, v1, Lorg/mozilla/gecko/GeckoThread$InitInfo;->extras:Landroid/os/Bundle;

    const-string v2, "prefMapFd"

    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_3
    iget v0, p1, Lorg/mozilla/gecko/GeckoThread$InitInfo;->ipcFd:I

    if-lez v0, :cond_4

    iget-object v1, p0, Lorg/mozilla/gecko/GeckoThread;->mInitInfo:Lorg/mozilla/gecko/GeckoThread$InitInfo;

    iget-object v1, v1, Lorg/mozilla/gecko/GeckoThread$InitInfo;->extras:Landroid/os/Bundle;

    const-string v2, "ipcFd"

    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_4
    iget v0, p1, Lorg/mozilla/gecko/GeckoThread$InitInfo;->crashFd:I

    if-lez v0, :cond_5

    iget-object v1, p0, Lorg/mozilla/gecko/GeckoThread;->mInitInfo:Lorg/mozilla/gecko/GeckoThread$InitInfo;

    iget-object v1, v1, Lorg/mozilla/gecko/GeckoThread$InitInfo;->extras:Landroid/os/Bundle;

    const-string v2, "crashFd"

    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_5
    iget p1, p1, Lorg/mozilla/gecko/GeckoThread$InitInfo;->crashAnnotationFd:I

    if-lez p1, :cond_6

    iget-object v0, p0, Lorg/mozilla/gecko/GeckoThread;->mInitInfo:Lorg/mozilla/gecko/GeckoThread$InitInfo;

    iget-object v0, v0, Lorg/mozilla/gecko/GeckoThread$InitInfo;->extras:Landroid/os/Bundle;

    const-string v1, "crashAnnotationFd"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_6
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/mozilla/gecko/GeckoThread;->mInitialized:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static isChildProcess()Z
    .locals 3
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    sget-object v0, Lorg/mozilla/gecko/GeckoThread;->INSTANCE:Lorg/mozilla/gecko/GeckoThread;

    iget-object v0, v0, Lorg/mozilla/gecko/GeckoThread;->mInitInfo:Lorg/mozilla/gecko/GeckoThread$InitInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/mozilla/gecko/GeckoThread$InitInfo;->extras:Landroid/os/Bundle;

    const-string v1, "ipcFd"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLaunched()Z
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/GeckoThread$State;->INITIAL:Lorg/mozilla/gecko/GeckoThread$State;

    invoke-static {v0}, Lorg/mozilla/gecko/GeckoThread;->isState(Lorg/mozilla/gecko/GeckoThread$State;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isRunning()Z
    .locals 1
    .annotation build Lorg/mozilla/gecko/annotation/RobocopTarget;
    .end annotation

    sget-object v0, Lorg/mozilla/gecko/GeckoThread$State;->RUNNING:Lorg/mozilla/gecko/GeckoThread$State;

    invoke-static {v0}, Lorg/mozilla/gecko/GeckoThread;->isState(Lorg/mozilla/gecko/GeckoThread$State;)Z

    move-result v0

    return v0
.end method

.method public static isState(Lorg/mozilla/gecko/GeckoThread$State;)Z
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/GeckoThread;->sNativeQueue:Lorg/mozilla/gecko/NativeQueue;

    invoke-virtual {v0}, Lorg/mozilla/gecko/NativeQueue;->getState()Lorg/mozilla/gecko/NativeQueue$State;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/mozilla/gecko/NativeQueue$State;->is(Lorg/mozilla/gecko/NativeQueue$State;)Z

    move-result p0

    return p0
.end method

.method public static isStateAtLeast(Lorg/mozilla/gecko/GeckoThread$State;)Z
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/GeckoThread;->sNativeQueue:Lorg/mozilla/gecko/NativeQueue;

    invoke-virtual {v0}, Lorg/mozilla/gecko/NativeQueue;->getState()Lorg/mozilla/gecko/NativeQueue$State;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/mozilla/gecko/NativeQueue$State;->isAtLeast(Lorg/mozilla/gecko/NativeQueue$State;)Z

    move-result p0

    return p0
.end method

.method public static isStateAtMost(Lorg/mozilla/gecko/GeckoThread$State;)Z
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/GeckoThread;->sNativeQueue:Lorg/mozilla/gecko/NativeQueue;

    invoke-virtual {v0}, Lorg/mozilla/gecko/NativeQueue;->getState()Lorg/mozilla/gecko/NativeQueue$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/gecko/GeckoThread$State;->isAtLeast(Lorg/mozilla/gecko/NativeQueue$State;)Z

    move-result p0

    return p0
.end method

.method public static isStateBetween(Lorg/mozilla/gecko/GeckoThread$State;Lorg/mozilla/gecko/GeckoThread$State;)Z
    .locals 0

    invoke-static {p0}, Lorg/mozilla/gecko/GeckoThread;->isStateAtLeast(Lorg/mozilla/gecko/GeckoThread$State;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lorg/mozilla/gecko/GeckoThread;->isStateAtMost(Lorg/mozilla/gecko/GeckoThread$State;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$run$0(Lorg/mozilla/gecko/GeckoThread$2;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    const-string p1, "<pre>GeckoThread UncaughtExceptionHandler.</pre>"

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/gecko/GeckoThread$2;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static launch()Z
    .locals 2

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    sget-object v0, Lorg/mozilla/gecko/GeckoThread$State;->INITIAL:Lorg/mozilla/gecko/GeckoThread$State;

    sget-object v1, Lorg/mozilla/gecko/GeckoThread$State;->LAUNCHED:Lorg/mozilla/gecko/GeckoThread$State;

    invoke-static {v0, v1}, Lorg/mozilla/gecko/GeckoThread;->checkAndSetState(Lorg/mozilla/gecko/GeckoThread$State;Lorg/mozilla/gecko/GeckoThread$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/mozilla/gecko/GeckoThread;->INSTANCE:Lorg/mozilla/gecko/GeckoThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static loadGeckoLibs(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lorg/mozilla/gecko/mozglue/GeckoLoader;->loadSQLiteLibs(Landroid/content/Context;)V

    invoke-static {p0}, Lorg/mozilla/gecko/mozglue/GeckoLoader;->loadNSSLibs(Landroid/content/Context;)V

    invoke-static {p0}, Lorg/mozilla/gecko/mozglue/GeckoLoader;->loadGeckoLibs(Landroid/content/Context;)V

    sget-object p0, Lorg/mozilla/gecko/GeckoThread$State;->LIBS_READY:Lorg/mozilla/gecko/GeckoThread$State;

    invoke-static {p0}, Lorg/mozilla/gecko/GeckoThread;->setState(Lorg/mozilla/gecko/GeckoThread$State;)V

    return-void
.end method

.method private static maybeWaitForJavaDebugger(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "MOZ_DEBUG_WAIT_FOR_JAVA_DEBUGGER=1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lorg/mozilla/gecko/GeckoThread;->isChildProcess()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lorg/mozilla/gecko/GeckoThread;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mozilla/gecko/GeckoThread;->waitForJavaDebugger(Ljava/lang/String;)V

    :cond_2
    const-string v1, "MOZ_DEBUG_CHILD_WAIT_FOR_JAVA_DEBUGGER="

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lorg/mozilla/gecko/GeckoThread;->isChildProcess()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lorg/mozilla/gecko/GeckoThread;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    invoke-static {v1}, Lorg/mozilla/gecko/GeckoThread;->waitForJavaDebugger(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private static native nativeCreateServices(Ljava/lang/String;Ljava/lang/String;)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        dispatchTo = "gecko"
        stubName = "CreateServices"
    .end annotation
.end method

.method private static native nativeOnPause()V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        dispatchTo = "gecko"
        stubName = "OnPause"
    .end annotation
.end method

.method private static native nativeOnResume()V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        dispatchTo = "gecko"
        stubName = "OnResume"
    .end annotation
.end method

.method private static notifyStateListeners()V
    .locals 5

    sget-object v0, Lorg/mozilla/gecko/GeckoThread;->sStateListeners:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    sget-object v2, Lorg/mozilla/gecko/GeckoThread;->sStateListeners:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mozilla/gecko/GeckoThread$StateGeckoResult;

    iget-object v4, v3, Lorg/mozilla/gecko/GeckoThread$StateGeckoResult;->state:Lorg/mozilla/gecko/GeckoThread$State;

    invoke-static {v4}, Lorg/mozilla/gecko/GeckoThread;->isStateAtLeast(Lorg/mozilla/gecko/GeckoThread$State;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/mozilla/geckoview/GeckoResult;->complete(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    sput-object v1, Lorg/mozilla/gecko/GeckoThread;->sStateListeners:Ljava/util/LinkedList;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static onPause()V
    .locals 4

    sget-object v0, Lorg/mozilla/gecko/GeckoThread$State;->PROFILE_READY:Lorg/mozilla/gecko/GeckoThread$State;

    invoke-static {v0}, Lorg/mozilla/gecko/GeckoThread;->isStateAtLeast(Lorg/mozilla/gecko/GeckoThread$State;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/mozilla/gecko/GeckoThread;->nativeOnPause()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-class v2, Lorg/mozilla/gecko/GeckoThread;

    const-string v3, "nativeOnPause"

    invoke-static {v0, v2, v3, v1}, Lorg/mozilla/gecko/GeckoThread;->queueNativeCallUntil(Lorg/mozilla/gecko/GeckoThread$State;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static onResume()V
    .locals 4

    sget-object v0, Lorg/mozilla/gecko/GeckoThread$State;->PROFILE_READY:Lorg/mozilla/gecko/GeckoThread$State;

    invoke-static {v0}, Lorg/mozilla/gecko/GeckoThread;->isStateAtLeast(Lorg/mozilla/gecko/GeckoThread$State;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/mozilla/gecko/GeckoThread;->nativeOnResume()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-class v2, Lorg/mozilla/gecko/GeckoThread;

    const-string v3, "nativeOnResume"

    invoke-static {v0, v2, v3, v1}, Lorg/mozilla/gecko/GeckoThread;->queueNativeCallUntil(Lorg/mozilla/gecko/GeckoThread$State;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private static pumpMessageLoop(Landroid/os/Message;)Z
    .locals 2
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    sget-object v0, Lorg/mozilla/gecko/util/ThreadUtils;->sGeckoHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v1

    if-ne v1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->quit()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static varargs queueNativeCall(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/mozilla/gecko/GeckoThread;->sNativeQueue:Lorg/mozilla/gecko/NativeQueue;

    invoke-virtual {v0, p0, p1, p2}, Lorg/mozilla/gecko/NativeQueue;->queueUntilReady(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs queueNativeCall(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 2
    sget-object v0, Lorg/mozilla/gecko/GeckoThread;->sNativeQueue:Lorg/mozilla/gecko/NativeQueue;

    invoke-virtual {v0, p0, p1, p2}, Lorg/mozilla/gecko/NativeQueue;->queueUntilReady(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs queueNativeCallUntil(Lorg/mozilla/gecko/GeckoThread$State;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/gecko/GeckoThread$State;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/mozilla/gecko/GeckoThread;->sNativeQueue:Lorg/mozilla/gecko/NativeQueue;

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/mozilla/gecko/NativeQueue;->queueUntil(Lorg/mozilla/gecko/NativeQueue$State;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs queueNativeCallUntil(Lorg/mozilla/gecko/GeckoThread$State;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 2
    sget-object v0, Lorg/mozilla/gecko/GeckoThread;->sNativeQueue:Lorg/mozilla/gecko/NativeQueue;

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/mozilla/gecko/NativeQueue;->queueUntil(Lorg/mozilla/gecko/NativeQueue$State;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static requestUiThreadCallback(J)V
    .locals 2
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lorg/mozilla/gecko/GeckoThread;->UI_THREAD_CALLBACK:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private runCatchingExceptions()V
    .locals 10

    const-string v0, "GeckoThread"

    const-string v1, "preparing to run Gecko"

    invoke-static {v0, v1}, Lo1/m;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->prepare()V

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    sput-object v0, Lorg/mozilla/gecko/GeckoThread;->msgQueue:Landroid/os/MessageQueue;

    sput-object p0, Lorg/mozilla/gecko/util/ThreadUtils;->sGeckoThread:Ljava/lang/Thread;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lorg/mozilla/gecko/util/ThreadUtils;->sGeckoHandler:Landroid/os/Handler;

    new-instance v0, Lorg/mozilla/gecko/GeckoThread$3;

    invoke-direct {v0, p0}, Lorg/mozilla/gecko/GeckoThread$3;-><init>(Lorg/mozilla/gecko/GeckoThread;)V

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    monitor-enter p0

    :catch_0
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lorg/mozilla/gecko/GeckoThread;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/mozilla/gecko/GeckoThread;->mInitInfo:Lorg/mozilla/gecko/GeckoThread$InitInfo;

    iget-object v2, v2, Lorg/mozilla/gecko/GeckoThread$InitInfo;->extras:Landroid/os/Bundle;

    invoke-static {v2}, Lorg/mozilla/gecko/GeckoThread;->getEnvFromExtras(Landroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lorg/mozilla/gecko/GeckoThread;->mInitInfo:Lorg/mozilla/gecko/GeckoThread$InitInfo;

    iget v3, v3, Lorg/mozilla/gecko/GeckoThread$InitInfo;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_1

    const/4 v3, 0x0

    const-string v4, "MOZ_CRASHREPORTER_DISABLE=1"

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    invoke-static {v1, v2}, Lorg/mozilla/gecko/GeckoThread;->maybeWaitForJavaDebugger(Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v1}, Lorg/mozilla/gecko/mozglue/GeckoLoader;->loadMozGlue(Landroid/content/Context;)V

    sget-object v3, Lorg/mozilla/gecko/GeckoThread$State;->MOZGLUE_READY:Lorg/mozilla/gecko/GeckoThread$State;

    invoke-static {v3}, Lorg/mozilla/gecko/GeckoThread;->setState(Lorg/mozilla/gecko/GeckoThread$State;)V

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/mozilla/gecko/GeckoThread;->mInitInfo:Lorg/mozilla/gecko/GeckoThread$InitInfo;

    iget-object v4, v4, Lorg/mozilla/gecko/GeckoThread$InitInfo;->prefs:Ljava/util/Map;

    invoke-static {v1, v3, v2, v4}, Lorg/mozilla/gecko/mozglue/GeckoLoader;->setupGeckoEnvironment(Landroid/content/Context;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Map;)V

    invoke-static {}, Lorg/mozilla/gecko/GeckoThread;->initGeckoEnvironment()V

    iget-object v1, p0, Lorg/mozilla/gecko/GeckoThread;->mInitInfo:Lorg/mozilla/gecko/GeckoThread$InitInfo;

    iget v1, v1, Lorg/mozilla/gecko/GeckoThread$InitInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    invoke-static {}, Lorg/mozilla/gecko/process/GeckoProcessManager;->getInstance()Lorg/mozilla/gecko/process/GeckoProcessManager;

    move-result-object v1

    sget-object v2, Lorg/mozilla/gecko/process/GeckoProcessType;->CONTENT:Lorg/mozilla/gecko/process/GeckoProcessType;

    filled-new-array {v2}, [Lorg/mozilla/gecko/process/GeckoProcessType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/mozilla/gecko/process/GeckoProcessManager;->preload([Lorg/mozilla/gecko/process/GeckoProcessType;)V

    :cond_2
    iget-object v1, p0, Lorg/mozilla/gecko/GeckoThread;->mInitInfo:Lorg/mozilla/gecko/GeckoThread$InitInfo;

    iget v1, v1, Lorg/mozilla/gecko/GeckoThread$InitInfo;->flags:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_3

    const-wide/16 v3, 0x1388

    :try_start_3
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_3
    const-string v1, "GeckoThread"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "zerdatime "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " - runGecko"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lo1/m;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/mozilla/gecko/GeckoThread;->isChildProcess()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/mozilla/gecko/GeckoThread;->mInitInfo:Lorg/mozilla/gecko/GeckoThread$InitInfo;

    iget-object v1, v1, Lorg/mozilla/gecko/GeckoThread$InitInfo;->args:[Ljava/lang/String;

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lorg/mozilla/gecko/GeckoThread;->getMainProcessArgs()[Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object v3, v1

    iget-object v1, p0, Lorg/mozilla/gecko/GeckoThread;->mInitInfo:Lorg/mozilla/gecko/GeckoThread$InitInfo;

    iget v1, v1, Lorg/mozilla/gecko/GeckoThread$InitInfo;->flags:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_5

    const-string v1, "GeckoThread"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "RunGecko - args = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-static {v5, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lo1/m;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v1, p0, Lorg/mozilla/gecko/GeckoThread;->mInitInfo:Lorg/mozilla/gecko/GeckoThread$InitInfo;

    iget-object v1, v1, Lorg/mozilla/gecko/GeckoThread$InitInfo;->extras:Landroid/os/Bundle;

    const-string v4, "prefsFd"

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iget-object v1, p0, Lorg/mozilla/gecko/GeckoThread;->mInitInfo:Lorg/mozilla/gecko/GeckoThread$InitInfo;

    iget-object v1, v1, Lorg/mozilla/gecko/GeckoThread$InitInfo;->extras:Landroid/os/Bundle;

    const-string v6, "prefMapFd"

    invoke-virtual {v1, v6, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v6, p0, Lorg/mozilla/gecko/GeckoThread;->mInitInfo:Lorg/mozilla/gecko/GeckoThread$InitInfo;

    iget-object v6, v6, Lorg/mozilla/gecko/GeckoThread$InitInfo;->extras:Landroid/os/Bundle;

    const-string v7, "ipcFd"

    invoke-virtual {v6, v7, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iget-object v7, p0, Lorg/mozilla/gecko/GeckoThread;->mInitInfo:Lorg/mozilla/gecko/GeckoThread$InitInfo;

    iget-object v7, v7, Lorg/mozilla/gecko/GeckoThread$InitInfo;->extras:Landroid/os/Bundle;

    const-string v8, "crashFd"

    invoke-virtual {v7, v8, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    iget-object v8, p0, Lorg/mozilla/gecko/GeckoThread;->mInitInfo:Lorg/mozilla/gecko/GeckoThread$InitInfo;

    iget-object v8, v8, Lorg/mozilla/gecko/GeckoThread$InitInfo;->extras:Landroid/os/Bundle;

    const-string v9, "crashAnnotationFd"

    invoke-virtual {v8, v9, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    move v5, v1

    invoke-static/range {v3 .. v8}, Lorg/mozilla/gecko/mozglue/GeckoLoader;->nativeRun([Ljava/lang/String;IIIII)V

    sget-object v1, Lorg/mozilla/gecko/GeckoThread$State;->RESTARTING:Lorg/mozilla/gecko/GeckoThread$State;

    invoke-static {v1}, Lorg/mozilla/gecko/GeckoThread;->isState(Lorg/mozilla/gecko/GeckoThread$State;)Z

    move-result v1

    sget-object v3, Lorg/mozilla/gecko/GeckoThread$State;->EXITED:Lorg/mozilla/gecko/GeckoThread$State;

    invoke-static {v3}, Lorg/mozilla/gecko/GeckoThread;->setState(Lorg/mozilla/gecko/GeckoThread$State;)V

    new-instance v3, Lorg/mozilla/gecko/util/GeckoBundle;

    invoke-direct {v3, v2}, Lorg/mozilla/gecko/util/GeckoBundle;-><init>(I)V

    const-string v2, "restart"

    invoke-virtual {v3, v2, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lorg/mozilla/gecko/EventDispatcher;->getInstance()Lorg/mozilla/gecko/EventDispatcher;

    move-result-object v1

    const-string v2, "Gecko:Exited"

    invoke-virtual {v1, v2, v3}, Lorg/mozilla/gecko/EventDispatcher;->dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;)V

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public static native runUiThreadCallback()J
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "ui"
    .end annotation
.end method

.method private static setState(Lorg/mozilla/gecko/GeckoThread$State;)V
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lorg/mozilla/gecko/GeckoThread;->checkAndSetState(Lorg/mozilla/gecko/GeckoThread$State;Lorg/mozilla/gecko/GeckoThread$State;)Z

    return-void
.end method

.method public static speculativeConnect(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lorg/mozilla/gecko/GeckoThread$State;->PROFILE_READY:Lorg/mozilla/gecko/GeckoThread$State;

    const-string v1, "speculativeConnectNative"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-class v2, Lorg/mozilla/gecko/GeckoThread;

    invoke-static {v0, v2, v1, p0}, Lorg/mozilla/gecko/GeckoThread;->queueNativeCallUntil(Lorg/mozilla/gecko/GeckoThread$State;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static native speculativeConnectNative(Ljava/lang/String;)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        stubName = "SpeculativeConnect"
    .end annotation
.end method

.method private static waitForJavaDebugger(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/mozilla/gecko/GeckoThread;->isChildProcess()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Child process "

    goto :goto_0

    :cond_0
    const-string v2, "Main process "

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const-string p0, "<unknown>"

    :goto_1
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ("

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    const-string v1, "GeckoThread"

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": Waiting for Java debugger ...  already connected"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lo1/m;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": Waiting for Java debugger ..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lo1/m;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": Waiting for Java debugger ... connected"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lo1/m;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static waitForState(Lorg/mozilla/gecko/GeckoThread$State;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/gecko/GeckoThread$State;",
            ")",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/mozilla/gecko/GeckoThread$StateGeckoResult;

    invoke-direct {v0, p0}, Lorg/mozilla/gecko/GeckoThread$StateGeckoResult;-><init>(Lorg/mozilla/gecko/GeckoThread$State;)V

    invoke-static {p0}, Lorg/mozilla/gecko/GeckoThread;->isStateAtLeast(Lorg/mozilla/gecko/GeckoThread$State;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lorg/mozilla/geckoview/GeckoResult;->complete(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    sget-object p0, Lorg/mozilla/gecko/GeckoThread;->sStateListeners:Ljava/util/LinkedList;

    monitor-enter p0

    :try_start_0
    sget-object v1, Lorg/mozilla/gecko/GeckoThread;->sStateListeners:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized getProfile()Lorg/mozilla/gecko/GeckoProfile;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/mozilla/gecko/GeckoThread;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    invoke-static {}, Lorg/mozilla/gecko/GeckoThread;->isChildProcess()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/mozilla/gecko/GeckoThread;->mInitInfo:Lorg/mozilla/gecko/GeckoThread$InitInfo;

    iget-object v0, v0, Lorg/mozilla/gecko/GeckoThread$InitInfo;->profile:Lorg/mozilla/gecko/GeckoProfile;

    if-nez v0, :cond_1

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lorg/mozilla/gecko/GeckoThread;->mInitInfo:Lorg/mozilla/gecko/GeckoThread$InitInfo;

    iget-object v3, v2, Lorg/mozilla/gecko/GeckoThread$InitInfo;->extras:Landroid/os/Bundle;

    const-string v4, "args"

    invoke-virtual {v3, v4, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/mozilla/gecko/GeckoProfile;->initFromArgs(Landroid/content/Context;Ljava/lang/String;)Lorg/mozilla/gecko/GeckoProfile;

    move-result-object v0

    iput-object v0, v2, Lorg/mozilla/gecko/GeckoThread$InitInfo;->profile:Lorg/mozilla/gecko/GeckoProfile;

    :cond_1
    iget-object v0, p0, Lorg/mozilla/gecko/GeckoThread;->mInitInfo:Lorg/mozilla/gecko/GeckoThread$InitInfo;

    iget-object v0, v0, Lorg/mozilla/gecko/GeckoThread$InitInfo;->profile:Lorg/mozilla/gecko/GeckoProfile;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot access profile from child process"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 3

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lorg/mozilla/gecko/GeckoThread$2;

    invoke-direct {v1, p0, v0}, Lorg/mozilla/gecko/GeckoThread$2;-><init>(Lorg/mozilla/gecko/GeckoThread;Landroid/content/Context;)V

    new-instance v0, Lorg/mozilla/gecko/a;

    invoke-direct {v0, v1}, Lorg/mozilla/gecko/a;-><init>(Lorg/mozilla/gecko/GeckoThread$2;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :try_start_0
    invoke-direct {p0}, Lorg/mozilla/gecko/GeckoThread;->runCatchingExceptions()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v2, "<pre>GeckoThread run.</pre>"

    invoke-virtual {v1, v2, v0}, Lorg/mozilla/gecko/GeckoThread$2;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :goto_0
    return-void
.end method
