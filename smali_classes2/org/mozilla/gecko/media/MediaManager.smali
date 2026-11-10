.class public final Lorg/mozilla/gecko/media/MediaManager;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = false

.field private static final LOGTAG:Ljava/lang/String; = "GeckoMediaManager"

.field private static sNativeLibLoaded:Z


# instance fields
.field private mBinder:Landroid/os/Binder;

.field private mNumActiveRequests:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/gecko/media/MediaManager;->mNumActiveRequests:I

    new-instance v0, Lorg/mozilla/gecko/media/MediaManager$1;

    invoke-direct {v0, p0}, Lorg/mozilla/gecko/media/MediaManager$1;-><init>(Lorg/mozilla/gecko/media/MediaManager;)V

    iput-object v0, p0, Lorg/mozilla/gecko/media/MediaManager;->mBinder:Landroid/os/Binder;

    return-void
.end method

.method public static synthetic access$000(Lorg/mozilla/gecko/media/MediaManager;)I
    .locals 0

    iget p0, p0, Lorg/mozilla/gecko/media/MediaManager;->mNumActiveRequests:I

    return p0
.end method

.method public static synthetic access$008(Lorg/mozilla/gecko/media/MediaManager;)I
    .locals 2

    iget v0, p0, Lorg/mozilla/gecko/media/MediaManager;->mNumActiveRequests:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/mozilla/gecko/media/MediaManager;->mNumActiveRequests:I

    return v0
.end method

.method public static synthetic access$010(Lorg/mozilla/gecko/media/MediaManager;)I
    .locals 2

    iget v0, p0, Lorg/mozilla/gecko/media/MediaManager;->mNumActiveRequests:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/mozilla/gecko/media/MediaManager;->mNumActiveRequests:I

    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p1, p0, Lorg/mozilla/gecko/media/MediaManager;->mBinder:Landroid/os/Binder;

    return-object p1
.end method

.method public declared-synchronized onCreate()V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lorg/mozilla/gecko/media/MediaManager;->sNativeLibLoaded:Z

    if-nez v0, :cond_0

    const-string v0, "mozglue"

    invoke-static {p0, v0}, Lorg/mozilla/gecko/mozglue/GeckoLoader;->doLoadLibrary(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lorg/mozilla/gecko/mozglue/GeckoLoader;->suppressCrashDialog()V

    const/4 v0, 0x1

    sput-boolean v0, Lorg/mozilla/gecko/media/MediaManager;->sNativeLibLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    iget p1, p0, Lorg/mozilla/gecko/media/MediaManager;->mNumActiveRequests:I

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
