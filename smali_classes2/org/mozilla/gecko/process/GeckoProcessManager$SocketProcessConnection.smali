.class final Lorg/mozilla/gecko/process/GeckoProcessManager$SocketProcessConnection;
.super Lorg/mozilla/gecko/process/GeckoProcessManager$NonContentConnection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/process/GeckoProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SocketProcessConnection"
.end annotation


# static fields
.field private static final sPriorityStates:[[Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;


# instance fields
.field private mIsForeground:Z

.field private mIsNetworkUp:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/process/GeckoProcessManager$SocketProcessConnection;->initPriorityStates()[[Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;

    move-result-object v0

    sput-object v0, Lorg/mozilla/gecko/process/GeckoProcessManager$SocketProcessConnection;->sPriorityStates:[[Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/gecko/process/ServiceAllocator;)V
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/process/GeckoProcessType;->SOCKET:Lorg/mozilla/gecko/process/GeckoProcessType;

    invoke-direct {p0, p1, v0}, Lorg/mozilla/gecko/process/GeckoProcessManager$NonContentConnection;-><init>(Lorg/mozilla/gecko/process/ServiceAllocator;Lorg/mozilla/gecko/process/GeckoProcessType;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/mozilla/gecko/process/GeckoProcessManager$SocketProcessConnection;->mIsForeground:Z

    iput-boolean p1, p0, Lorg/mozilla/gecko/process/GeckoProcessManager$SocketProcessConnection;->mIsNetworkUp:Z

    invoke-static {}, Lorg/mozilla/gecko/process/GeckoProcessManager;->access$000()Lorg/mozilla/gecko/process/GeckoProcessManager;

    move-result-object p1

    invoke-static {p1}, Lorg/mozilla/gecko/process/GeckoProcessManager;->access$100(Lorg/mozilla/gecko/process/GeckoProcessManager;)Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;

    move-result-object p1

    invoke-static {p1}, Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;->access$200(Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;)V

    return-void
.end method

.method private static initPriorityStates()[[Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;
    .locals 6

    const/4 v0, 0x2

    filled-new-array {v0, v0}, [I

    move-result-object v0

    const-class v1, Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    sget-object v3, Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;->IDLE:Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;

    aput-object v3, v2, v1

    aget-object v2, v0, v1

    sget-object v4, Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;->BACKGROUND:Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;

    const/4 v5, 0x1

    aput-object v4, v2, v5

    aget-object v2, v0, v5

    aput-object v3, v2, v1

    sget-object v1, Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;->FOREGROUND:Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;

    aput-object v1, v2, v5

    return-object v0
.end method

.method private prioritize()V
    .locals 2

    sget-object v0, Lorg/mozilla/gecko/process/GeckoProcessManager$SocketProcessConnection;->sPriorityStates:[[Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;

    iget-boolean v1, p0, Lorg/mozilla/gecko/process/GeckoProcessManager$SocketProcessConnection;->mIsForeground:Z

    aget-object v0, v0, v1

    iget-boolean v1, p0, Lorg/mozilla/gecko/process/GeckoProcessManager$SocketProcessConnection;->mIsNetworkUp:Z

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->setPriorityLevel(Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;)Z

    return-void
.end method


# virtual methods
.method public onAppBackground()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/gecko/process/GeckoProcessManager$SocketProcessConnection;->mIsForeground:Z

    invoke-direct {p0}, Lorg/mozilla/gecko/process/GeckoProcessManager$SocketProcessConnection;->prioritize()V

    return-void
.end method

.method public onAppForeground()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/gecko/process/GeckoProcessManager$SocketProcessConnection;->mIsForeground:Z

    invoke-direct {p0}, Lorg/mozilla/gecko/process/GeckoProcessManager$SocketProcessConnection;->prioritize()V

    return-void
.end method

.method public onNetworkStateChange(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/mozilla/gecko/process/GeckoProcessManager$SocketProcessConnection;->mIsNetworkUp:Z

    invoke-direct {p0}, Lorg/mozilla/gecko/process/GeckoProcessManager$SocketProcessConnection;->prioritize()V

    return-void
.end method
