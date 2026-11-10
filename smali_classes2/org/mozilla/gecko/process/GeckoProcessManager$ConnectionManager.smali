.class final Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;
.super Lorg/mozilla/gecko/mozglue/JNIObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/process/GeckoProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConnectionManager"
.end annotation


# instance fields
.field private final mContentConnections:Lf/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/c;"
        }
    .end annotation
.end field

.field private final mContentPids:Lf/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/i;"
        }
    .end annotation
.end field

.field private mIsObservingNetwork:Z

.field private final mNonContentConnections:Lf/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/b;"
        }
    .end annotation
.end field

.field private final mNonStartedContentConnections:Lf/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/c;"
        }
    .end annotation
.end field

.field private final mServiceAllocator:Lorg/mozilla/gecko/process/ServiceAllocator;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lorg/mozilla/gecko/mozglue/JNIObject;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;->mIsObservingNetwork:Z

    new-instance v0, Lf/b;

    invoke-direct {v0}, Lf/b;-><init>()V

    iput-object v0, p0, Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;->mNonContentConnections:Lf/b;

    new-instance v0, Lf/i;

    invoke-direct {v0}, Lf/i;-><init>()V

    iput-object v0, p0, Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;->mContentPids:Lf/i;

    new-instance v0, Lf/c;

    invoke-direct {v0}, Lf/c;-><init>()V

    iput-object v0, p0, Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;->mContentConnections:Lf/c;

    new-instance v0, Lf/c;

    invoke-direct {v0}, Lf/c;-><init>()V

    iput-object v0, p0, Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;->mNonStartedContentConnections:Lf/c;

    new-instance v0, Lorg/mozilla/gecko/process/ServiceAllocator;

    invoke-direct {v0}, Lorg/mozilla/gecko/process/ServiceAllocator;-><init>()V

    iput-object v0, p0, Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;->mServiceAllocator:Lorg/mozilla/gecko/process/ServiceAllocator;

    sget-object v0, Lorg/mozilla/gecko/GeckoThread$State;->JNI_READY:Lorg/mozilla/gecko/GeckoThread$State;

    invoke-static {v0}, Lorg/mozilla/gecko/GeckoThread;->isStateAtLeast(Lorg/mozilla/gecko/GeckoThread$State;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;->attachTo(Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;)V

    goto :goto_0

    :cond_0
    const-string v1, "attachTo"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    const-class v3, Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;

    invoke-static {v0, v3, v1, v2}, Lorg/mozilla/gecko/GeckoThread;->queueNativeCallUntil(Lorg/mozilla/gecko/GeckoThread$State;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static synthetic a(Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;->lambda$onForeground$2()V

    return-void
.end method

.method public static synthetic access$200(Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;)V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;->enableNetworkNotifications()V

    return-void
.end method

.method private static native attachTo(Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        dispatchTo = "gecko"
    .end annotation
.end method

.method public static synthetic b(Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;->lambda$onNetworkStateChange$3(Z)V

    return-void
.end method

.method public static synthetic c(Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;->lambda$onBackground$1()V

    return-void
.end method

.method public static synthetic d()V
    .locals 0

    .line 1
    invoke-static {}, Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;->lambda$enableNetworkNotifications$0()V

    return-void
.end method

.method private enableNetworkNotifications()V
    .locals 1

    iget-boolean v0, p0, Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;->mIsObservingNetwork:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;->mIsObservingNetwork:Z

    new-instance v0, Lorg/mozilla/gecko/process/i;

    invoke-direct {v0}, Lorg/mozilla/gecko/process/i;-><init>()V

    invoke-static {v0}, Lorg/mozilla/gecko/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;->observeNetworkNotifications()V

    return-void
.end method

.method private getContentConnectionForStart()Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;
    .locals 2

    .line 1
    invoke-static {}, Lorg/mozilla/gecko/util/XPCOMEventTarget;->assertOnLauncherThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;->mNonStartedContentConnections:Lf/c;

    .line 5
    .line 6
    invoke-virtual {v0}, Lf/c;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget-object v0, Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;->FOREGROUND:Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;

    .line 13
    .line 14
    invoke-direct {p0, v0}, Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;->getNewContentConnection(Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;)Lorg/mozilla/gecko/process/GeckoProcessManager$ContentConnection;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0

    .line 19
    :cond_0
    iget-object v0, p0, Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;->mNonStartedContentConnections:Lf/c;

    .line 20
    .line 21
    iget v1, v0, Lf/c;->c:I

    .line 22
    .line 23
    add-int/lit8 v1, v1, -0x1

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lf/c;->i(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;

    .line 30
    .line 31
    sget-object v1, Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;->FOREGROUND:Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->setPriorityLevel(Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;)Z

    .line 34
    .line 35
    .line 36
    return-object v0
.end method

.method private getExistingContentConnection(Lorg/mozilla/gecko/process/GeckoProcessManager$Selector;)Lorg/mozilla/gecko/process/GeckoProcessManager$ContentConnection;
    .locals 2

    .line 1
    invoke-static {}, Lorg/mozilla/gecko/util/XPCOMEventTarget;->assertOnLauncherThread()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lorg/mozilla/gecko/process/GeckoProcessManager$Selector;->getType()Lorg/mozilla/gecko/process/GeckoProcessType;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget-object v1, Lorg/mozilla/gecko/process/GeckoProcessType;->CONTENT:Lorg/mozilla/gecko/process/GeckoProcessType;

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;->mContentPids:Lf/i;

    .line 13
    .line 14
    invoke-virtual {p1}, Lorg/mozilla/gecko/process/GeckoProcessManager$Selector;->getPid()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, p1, v1}, Lf/i;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lorg/mozilla/gecko/process/GeckoProcessManager$ContentConnection;

    .line 28
    .line 29
    return-object p1

    .line 30
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 31
    .line 32
    const-string v0, "Selector is not for content!"

    .line 33
    .line 34
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1
.end method

.method private getNewContentConnection(Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;)Lorg/mozilla/gecko/process/GeckoProcessManager$ContentConnection;
    .locals 2

    new-instance v0, Lorg/mozilla/gecko/process/GeckoProcessManager$ContentConnection;

    iget-object v1, p0, Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;->mServiceAllocator:Lorg/mozilla/gecko/process/ServiceAllocator;

    invoke-direct {v0, v1, p1}, Lorg/mozilla/gecko/process/GeckoProcessManager$ContentConnection;-><init>(Lorg/mozilla/gecko/process/ServiceAllocator;Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;)V

    iget-object p1, p0, Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;->mContentConnections:Lf/c;

    invoke-virtual {p1, v0}, Lf/c;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private getNonContentConnection(Lorg/mozilla/gecko/process/GeckoProcessType;)Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;
    .locals 2

    .line 1
    invoke-static {}, Lorg/mozilla/gecko/util/XPCOMEventTarget;->assertOnLauncherThread()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/mozilla/gecko/process/GeckoProcessType;->CONTENT:Lorg/mozilla/gecko/process/GeckoProcessType;

    .line 5
    .line 6
    if-eq p1, v0, :cond_2

    .line 7
    .line 8
    iget-object v0, p0, Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;->mNonContentConnections:Lf/b;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, p1, v1}, Lf/i;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lorg/mozilla/gecko/process/GeckoProcessManager$NonContentConnection;

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    sget-object v0, Lorg/mozilla/gecko/process/GeckoProcessType;->SOCKET:Lorg/mozilla/gecko/process/GeckoProcessType;

    .line 20
    .line 21
    if-ne p1, v0, :cond_0

    .line 22
    .line 23
    new-instance v0, Lorg/mozilla/gecko/process/GeckoProcessManager$SocketProcessConnection;

    .line 24
    .line 25
    iget-object v1, p0, Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;->mServiceAllocator:Lorg/mozilla/gecko/process/ServiceAllocator;

    .line 26
    .line 27
    invoke-direct {v0, v1}, Lorg/mozilla/gecko/process/GeckoProcessManager$SocketProcessConnection;-><init>(Lorg/mozilla/gecko/process/ServiceAllocator;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance v0, Lorg/mozilla/gecko/process/GeckoProcessManager$NonContentConnection;

    .line 32
    .line 33
    iget-object v1, p0, Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;->mServiceAllocator:Lorg/mozilla/gecko/process/ServiceAllocator;

    .line 34
    .line 35
    invoke-direct {v0, v1, p1}, Lorg/mozilla/gecko/process/GeckoProcessManager$NonContentConnection;-><init>(Lorg/mozilla/gecko/process/ServiceAllocator;Lorg/mozilla/gecko/process/GeckoProcessType;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    iget-object v1, p0, Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;->mNonContentConnections:Lf/b;

    .line 39
    .line 40
    invoke-virtual {v1, p1, v0}, Lf/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    :cond_1
    return-object v0

    .line 44
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 45
    .line 46
    const-string v0, "Content processes not supported by this method"

    .line 47
    .line 48
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1
.end method

.method private static synthetic lambda$enableNetworkNotifications$0()V
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/GeckoNetworkManager;->getInstance()Lorg/mozilla/gecko/GeckoNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/gecko/GeckoNetworkManager;->enableNotifications()V

    return-void
.end method

.method private synthetic lambda$onBackground$1()V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;->onAppBackgroundInternal()V

    return-void
.end method

.method private synthetic lambda$onForeground$2()V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;->onAppForegroundInternal()V

    return-void
.end method

.method private synthetic lambda$onNetworkStateChange$3(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;->onNetworkStateChangeInternal(Z)V

    return-void
.end method

.method private native observeNetworkNotifications()V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        dispatchTo = "gecko"
    .end annotation
.end method

.method private onAppBackgroundInternal()V
    .locals 3

    invoke-static {}, Lorg/mozilla/gecko/util/XPCOMEventTarget;->assertOnLauncherThread()V

    iget-object v0, p0, Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;->mNonContentConnections:Lf/b;

    invoke-virtual {v0}, Lf/b;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Lf/g;

    invoke-virtual {v0}, Lf/g;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    move-object v1, v0

    check-cast v1, Lf/d;

    invoke-virtual {v1}, Lf/d;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lf/d;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/gecko/process/GeckoProcessManager$NonContentConnection;

    invoke-virtual {v1}, Lorg/mozilla/gecko/process/GeckoProcessManager$NonContentConnection;->onAppBackground()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onAppForegroundInternal()V
    .locals 3

    invoke-static {}, Lorg/mozilla/gecko/util/XPCOMEventTarget;->assertOnLauncherThread()V

    iget-object v0, p0, Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;->mNonContentConnections:Lf/b;

    invoke-virtual {v0}, Lf/b;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Lf/g;

    invoke-virtual {v0}, Lf/g;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    move-object v1, v0

    check-cast v1, Lf/d;

    invoke-virtual {v1}, Lf/d;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lf/d;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/gecko/process/GeckoProcessManager$NonContentConnection;

    invoke-virtual {v1}, Lorg/mozilla/gecko/process/GeckoProcessManager$NonContentConnection;->onAppForeground()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onBackground()V
    .locals 2
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    new-instance v0, Lorg/mozilla/gecko/process/g;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/mozilla/gecko/process/g;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0}, Lorg/mozilla/gecko/util/XPCOMEventTarget;->runOnLauncherThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onForeground()V
    .locals 2
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    new-instance v0, Lorg/mozilla/gecko/process/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/mozilla/gecko/process/g;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0}, Lorg/mozilla/gecko/util/XPCOMEventTarget;->runOnLauncherThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onNetworkStateChange(Z)V
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    new-instance v0, Lorg/mozilla/gecko/process/h;

    invoke-direct {v0, p0, p1}, Lorg/mozilla/gecko/process/h;-><init>(Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;Z)V

    invoke-static {v0}, Lorg/mozilla/gecko/util/XPCOMEventTarget;->runOnLauncherThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onNetworkStateChangeInternal(Z)V
    .locals 3

    .line 1
    invoke-static {}, Lorg/mozilla/gecko/util/XPCOMEventTarget;->assertOnLauncherThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;->mNonContentConnections:Lf/b;

    .line 5
    .line 6
    sget-object v1, Lorg/mozilla/gecko/process/GeckoProcessType;->SOCKET:Lorg/mozilla/gecko/process/GeckoProcessType;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v1, v2}, Lf/i;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lorg/mozilla/gecko/process/GeckoProcessManager$SocketProcessConnection;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-virtual {v0, p1}, Lorg/mozilla/gecko/process/GeckoProcessManager$SocketProcessConnection;->onNetworkStateChange(Z)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private removeContentConnection(Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;)V
    .locals 3

    iget-object v0, p0, Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;->mContentConnections:Lf/c;

    invoke-virtual {v0, p1}, Lf/c;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;->mNonStartedContentConnections:Lf/c;

    invoke-virtual {v0, p1}, Lf/c;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Attempt to remove non-registered connection"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;->getPid()I

    move-result v0
    :try_end_0
    .catch Lorg/mozilla/gecko/process/GeckoProcessManager$IncompleteChildConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;->mContentPids:Lf/i;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lf/i;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;

    if-eqz v1, :cond_4

    if-ne v1, p1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Integrity error - connection mismatch for pid "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public native disposeNative()V
.end method

.method public getConnectionForPreload(Lorg/mozilla/gecko/process/GeckoProcessType;)Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/process/GeckoProcessType;->CONTENT:Lorg/mozilla/gecko/process/GeckoProcessType;

    if-ne p1, v0, :cond_0

    sget-object p1, Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;->BACKGROUND:Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;

    invoke-direct {p0, p1}, Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;->getNewContentConnection(Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;)Lorg/mozilla/gecko/process/GeckoProcessManager$ContentConnection;

    move-result-object p1

    iget-object v0, p0, Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;->mNonStartedContentConnections:Lf/c;

    invoke-virtual {v0, p1}, Lf/c;->add(Ljava/lang/Object;)Z

    return-object p1

    :cond_0
    invoke-direct {p0, p1}, Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;->getNonContentConnection(Lorg/mozilla/gecko/process/GeckoProcessType;)Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;

    move-result-object p1

    return-object p1
.end method

.method public getConnectionForStart(Lorg/mozilla/gecko/process/GeckoProcessType;)Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/process/GeckoProcessType;->CONTENT:Lorg/mozilla/gecko/process/GeckoProcessType;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;->getContentConnectionForStart()Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0, p1}, Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;->getNonContentConnection(Lorg/mozilla/gecko/process/GeckoProcessType;)Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;

    move-result-object p1

    return-object p1
.end method

.method public getExistingConnection(Lorg/mozilla/gecko/process/GeckoProcessManager$Selector;)Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;
    .locals 2

    .line 1
    invoke-static {}, Lorg/mozilla/gecko/util/XPCOMEventTarget;->assertOnLauncherThread()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lorg/mozilla/gecko/process/GeckoProcessManager$Selector;->getType()Lorg/mozilla/gecko/process/GeckoProcessType;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget-object v1, Lorg/mozilla/gecko/process/GeckoProcessType;->CONTENT:Lorg/mozilla/gecko/process/GeckoProcessType;

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    invoke-direct {p0, p1}, Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;->getExistingContentConnection(Lorg/mozilla/gecko/process/GeckoProcessManager$Selector;)Lorg/mozilla/gecko/process/GeckoProcessManager$ContentConnection;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1

    .line 17
    :cond_0
    iget-object p1, p0, Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;->mNonContentConnections:Lf/b;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p1, v0, v1}, Lf/i;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;

    .line 25
    .line 26
    return-object p1
.end method

.method public onBindComplete(Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;)V
    .locals 2

    invoke-virtual {p1}, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->getType()Lorg/mozilla/gecko/process/GeckoProcessType;

    move-result-object v0

    sget-object v1, Lorg/mozilla/gecko/process/GeckoProcessType;->CONTENT:Lorg/mozilla/gecko/process/GeckoProcessType;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;->getPid()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;->mContentPids:Lf/i;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast p1, Lorg/mozilla/gecko/process/GeckoProcessManager$ContentConnection;

    invoke-virtual {v1, v0, p1}, Lf/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "PID is invalid even though our caller just successfully retrieved it after binding"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public removeConnection(Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;)V
    .locals 3

    invoke-static {}, Lorg/mozilla/gecko/util/XPCOMEventTarget;->assertOnLauncherThread()V

    invoke-virtual {p1}, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->getType()Lorg/mozilla/gecko/process/GeckoProcessType;

    move-result-object v0

    sget-object v1, Lorg/mozilla/gecko/process/GeckoProcessType;->CONTENT:Lorg/mozilla/gecko/process/GeckoProcessType;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;->removeContentConnection(Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;->mNonContentConnections:Lf/b;

    invoke-virtual {p1}, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->getType()Lorg/mozilla/gecko/process/GeckoProcessType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/i;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Integrity error - connection mismatch for process type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->getType()Lorg/mozilla/gecko/process/GeckoProcessType;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/gecko/process/GeckoProcessType;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
