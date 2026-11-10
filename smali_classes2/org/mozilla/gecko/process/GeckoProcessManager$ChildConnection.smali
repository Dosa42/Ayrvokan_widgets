.class Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;
.super Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/process/GeckoProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChildConnection"
.end annotation


# instance fields
.field private mChild:Lorg/mozilla/gecko/process/IChildProcess;

.field private mPendingBind:Lorg/mozilla/geckoview/GeckoResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Lorg/mozilla/gecko/process/IChildProcess;",
            ">;"
        }
    .end annotation
.end field

.field private mPid:I


# direct methods
.method public constructor <init>(Lorg/mozilla/gecko/process/ServiceAllocator;Lorg/mozilla/gecko/process/GeckoProcessType;Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;-><init>(Lorg/mozilla/gecko/process/ServiceAllocator;Lorg/mozilla/gecko/process/GeckoProcessType;Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;)V

    const/4 p1, 0x0

    iput p1, p0, Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;->mPid:I

    return-void
.end method

.method public static synthetic a(Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;Lorg/mozilla/gecko/process/IChildProcess;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;->lambda$unbind$1(Lorg/mozilla/gecko/process/IChildProcess;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/mozilla/geckoview/GeckoResult;Lorg/mozilla/gecko/process/ServiceAllocator$BindException;Ljava/lang/Void;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;->lambda$completeFailedBind$0(Lorg/mozilla/geckoview/GeckoResult;Lorg/mozilla/gecko/process/ServiceAllocator$BindException;Ljava/lang/Void;)V

    return-void
.end method

.method private completeFailedBind(Lorg/mozilla/gecko/process/ServiceAllocator$BindException;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/gecko/process/ServiceAllocator$BindException;",
            ")",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Lorg/mozilla/gecko/process/IChildProcess;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/mozilla/gecko/util/XPCOMEventTarget;->assertOnLauncherThread()V

    iget-object v0, p0, Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;->mPendingBind:Lorg/mozilla/geckoview/GeckoResult;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;->mPendingBind:Lorg/mozilla/geckoview/GeckoResult;

    invoke-virtual {p0}, Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;->unbind()Lorg/mozilla/geckoview/GeckoResult;

    move-result-object v1

    new-instance v2, Lorg/mozilla/gecko/process/e;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, v3}, Lorg/mozilla/gecko/process/e;-><init>(Lorg/mozilla/geckoview/GeckoResult;Ljava/lang/RuntimeException;I)V

    invoke-virtual {v1, v2}, Lorg/mozilla/geckoview/GeckoResult;->accept(Lorg/mozilla/geckoview/GeckoResult$Consumer;)Lorg/mozilla/geckoview/GeckoResult;

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Bind failed with null mPendingBind"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static synthetic lambda$completeFailedBind$0(Lorg/mozilla/geckoview/GeckoResult;Lorg/mozilla/gecko/process/ServiceAllocator$BindException;Ljava/lang/Void;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/mozilla/geckoview/GeckoResult;->completeExceptionally(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$unbind$1(Lorg/mozilla/gecko/process/IChildProcess;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 0

    invoke-virtual {p0}, Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;->unbind()Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public bind()Lorg/mozilla/geckoview/GeckoResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Lorg/mozilla/gecko/process/IChildProcess;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/mozilla/gecko/util/XPCOMEventTarget;->assertOnLauncherThread()V

    iget-object v0, p0, Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;->mChild:Lorg/mozilla/gecko/process/IChildProcess;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/mozilla/geckoview/GeckoResult;->fromValue(Ljava/lang/Object;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;->mPendingBind:Lorg/mozilla/geckoview/GeckoResult;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Lorg/mozilla/geckoview/GeckoResult;

    invoke-direct {v0}, Lorg/mozilla/geckoview/GeckoResult;-><init>()V

    iput-object v0, p0, Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;->mPendingBind:Lorg/mozilla/geckoview/GeckoResult;

    :try_start_0
    invoke-virtual {p0}, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->bindService()Z

    move-result v0
    :try_end_0
    .catch Lorg/mozilla/gecko/process/ServiceAllocator$BindException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;->mPendingBind:Lorg/mozilla/geckoview/GeckoResult;

    return-object v0

    :cond_2
    :try_start_1
    new-instance v0, Lorg/mozilla/gecko/process/ServiceAllocator$BindException;

    const-string v1, "Cannot connect to process"

    invoke-direct {v0, v1}, Lorg/mozilla/gecko/process/ServiceAllocator$BindException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lorg/mozilla/gecko/process/ServiceAllocator$BindException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;->completeFailedBind(Lorg/mozilla/gecko/process/ServiceAllocator$BindException;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object v0

    return-object v0
.end method

.method public getPid()I
    .locals 2

    invoke-static {}, Lorg/mozilla/gecko/util/XPCOMEventTarget;->assertOnLauncherThread()V

    iget-object v0, p0, Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;->mChild:Lorg/mozilla/gecko/process/IChildProcess;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;->mPid:I

    return v0

    :cond_0
    new-instance v0, Lorg/mozilla/gecko/process/GeckoProcessManager$IncompleteChildConnectionException;

    const-string v1, "Calling ChildConnection.getPid() on an incomplete connection"

    invoke-direct {v0, v1}, Lorg/mozilla/gecko/process/GeckoProcessManager$IncompleteChildConnectionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onBinderConnected(Landroid/os/IBinder;)V
    .locals 2

    invoke-static {}, Lorg/mozilla/gecko/util/XPCOMEventTarget;->assertOnLauncherThread()V

    invoke-static {p1}, Lorg/mozilla/gecko/process/IChildProcess$Stub;->asInterface(Landroid/os/IBinder;)Lorg/mozilla/gecko/process/IChildProcess;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1}, Lorg/mozilla/gecko/process/IChildProcess;->getPid()I

    move-result v1

    iput v1, p0, Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;->mPid:I
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object p1, p0, Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;->mChild:Lorg/mozilla/gecko/process/IChildProcess;

    invoke-static {}, Lorg/mozilla/gecko/process/GeckoProcessManager;->access$000()Lorg/mozilla/gecko/process/GeckoProcessManager;

    move-result-object p1

    invoke-static {p1}, Lorg/mozilla/gecko/process/GeckoProcessManager;->access$100(Lorg/mozilla/gecko/process/GeckoProcessManager;)Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;->onBindComplete(Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;)V

    iget-object p1, p0, Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;->mPendingBind:Lorg/mozilla/geckoview/GeckoResult;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;->mChild:Lorg/mozilla/gecko/process/IChildProcess;

    invoke-virtual {p1, v1}, Lorg/mozilla/geckoview/GeckoResult;->complete(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;->mPendingBind:Lorg/mozilla/geckoview/GeckoResult;

    :cond_0
    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    invoke-virtual {p0}, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->unbindService()V

    iget-object v1, p0, Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;->mPendingBind:Lorg/mozilla/geckoview/GeckoResult;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lorg/mozilla/geckoview/GeckoResult;->completeExceptionally(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;->mPendingBind:Lorg/mozilla/geckoview/GeckoResult;

    :cond_1
    return-void
.end method

.method public onReleaseResources()V
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/XPCOMEventTarget;->assertOnLauncherThread()V

    invoke-static {}, Lorg/mozilla/gecko/process/GeckoProcessManager;->access$000()Lorg/mozilla/gecko/process/GeckoProcessManager;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/gecko/process/GeckoProcessManager;->access$100(Lorg/mozilla/gecko/process/GeckoProcessManager;)Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;->removeConnection(Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;->mChild:Lorg/mozilla/gecko/process/IChildProcess;

    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;->mPid:I

    return-void
.end method

.method public unbind()Lorg/mozilla/geckoview/GeckoResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/mozilla/gecko/util/XPCOMEventTarget;->assertOnLauncherThread()V

    iget-object v0, p0, Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;->mPendingBind:Lorg/mozilla/geckoview/GeckoResult;

    if-eqz v0, :cond_0

    new-instance v1, Lorg/mozilla/gecko/process/f;

    invoke-direct {v1, p0}, Lorg/mozilla/gecko/process/f;-><init>(Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;)V

    invoke-virtual {v0, v1}, Lorg/mozilla/geckoview/GeckoResult;->then(Lorg/mozilla/geckoview/GeckoResult$OnValueListener;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;->mChild:Lorg/mozilla/gecko/process/IChildProcess;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {v1}, Lorg/mozilla/geckoview/GeckoResult;->fromValue(Ljava/lang/Object;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->unbindService()V

    invoke-static {v1}, Lorg/mozilla/geckoview/GeckoResult;->fromValue(Ljava/lang/Object;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object v0

    return-object v0
.end method
