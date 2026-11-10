.class final Lorg/mozilla/gecko/process/ServiceAllocator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/gecko/process/ServiceAllocator$IsolatedContentPolicy;,
        Lorg/mozilla/gecko/process/ServiceAllocator$DefaultContentPolicy;,
        Lorg/mozilla/gecko/process/ServiceAllocator$ContentAllocationPolicy;,
        Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;,
        Lorg/mozilla/gecko/process/ServiceAllocator$BindServiceDelegate;,
        Lorg/mozilla/gecko/process/ServiceAllocator$BindException;,
        Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "ServiceAllocator"

.field private static final MAX_NUM_ISOLATED_CONTENT_SERVICES:I = 0x32


# instance fields
.field private mContentAllocPolicy:Lorg/mozilla/gecko/process/ServiceAllocator$ContentAllocationPolicy;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/gecko/process/ServiceAllocator;->mContentAllocPolicy:Lorg/mozilla/gecko/process/ServiceAllocator$ContentAllocationPolicy;

    return-void
.end method

.method public static synthetic access$1000(Lorg/mozilla/gecko/process/ServiceAllocator;Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/mozilla/gecko/process/ServiceAllocator;->release(Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;)V

    return-void
.end method

.method public static synthetic access$1100()Z
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/process/ServiceAllocator;->hasQApis()Z

    move-result v0

    return v0
.end method

.method public static synthetic access$200(Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;)I
    .locals 0

    invoke-static {p0}, Lorg/mozilla/gecko/process/ServiceAllocator;->getAndroidFlags(Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$300(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/gecko/process/ServiceAllocator;->bindServiceDefault(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$400(Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/mozilla/gecko/process/ServiceAllocator;->getSvcClassNameDefault(Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$600(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Landroid/content/ServiceConnection;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/mozilla/gecko/process/ServiceAllocator;->bindServiceIsolated(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Landroid/content/ServiceConnection;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$700(Lorg/mozilla/gecko/process/ServiceAllocator;Lorg/mozilla/gecko/process/GeckoProcessType;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1}, Lorg/mozilla/gecko/process/ServiceAllocator;->allocate(Lorg/mozilla/gecko/process/GeckoProcessType;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$900(Lorg/mozilla/gecko/process/ServiceAllocator;)Lorg/mozilla/gecko/process/ServiceAllocator$ContentAllocationPolicy;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/gecko/process/ServiceAllocator;->mContentAllocPolicy:Lorg/mozilla/gecko/process/ServiceAllocator$ContentAllocationPolicy;

    return-object p0
.end method

.method private allocate(Lorg/mozilla/gecko/process/GeckoProcessType;)Ljava/lang/Integer;
    .locals 2

    invoke-static {}, Lorg/mozilla/gecko/util/XPCOMEventTarget;->assertOnLauncherThread()V

    sget-object v0, Lorg/mozilla/gecko/process/GeckoProcessType;->CONTENT:Lorg/mozilla/gecko/process/GeckoProcessType;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    return-object v1

    :cond_0
    iget-object p1, p0, Lorg/mozilla/gecko/process/ServiceAllocator;->mContentAllocPolicy:Lorg/mozilla/gecko/process/ServiceAllocator$ContentAllocationPolicy;

    if-nez p1, :cond_2

    invoke-static {v0}, Lorg/mozilla/gecko/process/ServiceAllocator;->canBindIsolated(Lorg/mozilla/gecko/process/GeckoProcessType;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lorg/mozilla/gecko/process/ServiceAllocator$IsolatedContentPolicy;

    invoke-direct {p1, v1}, Lorg/mozilla/gecko/process/ServiceAllocator$IsolatedContentPolicy;-><init>(Lorg/mozilla/gecko/process/ServiceAllocator$1;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/mozilla/gecko/process/ServiceAllocator$DefaultContentPolicy;

    invoke-direct {p1}, Lorg/mozilla/gecko/process/ServiceAllocator$DefaultContentPolicy;-><init>()V

    :goto_0
    iput-object p1, p0, Lorg/mozilla/gecko/process/ServiceAllocator;->mContentAllocPolicy:Lorg/mozilla/gecko/process/ServiceAllocator$ContentAllocationPolicy;

    :cond_2
    iget-object p1, p0, Lorg/mozilla/gecko/process/ServiceAllocator;->mContentAllocPolicy:Lorg/mozilla/gecko/process/ServiceAllocator$ContentAllocationPolicy;

    invoke-interface {p1}, Lorg/mozilla/gecko/process/ServiceAllocator$ContentAllocationPolicy;->allocate()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private static bindServiceDefault(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1d
    .end annotation

    invoke-static {}, Lorg/mozilla/gecko/process/ServiceAllocator;->hasQApis()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/mozilla/gecko/util/XPCOMEventTarget;->launcherThread()Lorg/mozilla/gecko/util/IXPCOMEventTarget;

    move-result-object v0

    invoke-static {p3, p0, p1, p2, v0}, Landroidx/lifecycle/v;->j(ILandroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;Lorg/mozilla/gecko/util/IXPCOMEventTarget;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    return p0
.end method

.method private static bindServiceIsolated(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Landroid/content/ServiceConnection;)Z
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1d
    .end annotation

    invoke-static {}, Lorg/mozilla/gecko/util/XPCOMEventTarget;->launcherThread()Lorg/mozilla/gecko/util/IXPCOMEventTarget;

    move-result-object v5

    move v0, p2

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Landroidx/lifecycle/v;->i(ILandroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;Ljava/lang/String;Lorg/mozilla/gecko/util/IXPCOMEventTarget;)Z

    move-result p0

    return p0
.end method

.method private static canBindIsolated(Lorg/mozilla/gecko/process/GeckoProcessType;)Z
    .locals 2

    invoke-static {}, Lorg/mozilla/gecko/process/ServiceAllocator;->hasQApis()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/mozilla/gecko/process/ServiceUtils;->getServiceFlags(Landroid/content/Context;Lorg/mozilla/gecko/process/GeckoProcessType;)I

    move-result p0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private static getAndroidFlags(Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;)I
    .locals 0

    invoke-virtual {p0}, Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;->getAndroidFlag()I

    move-result p0

    or-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static getSvcClassNameDefault(Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->getType()Lorg/mozilla/gecko/process/GeckoProcessType;

    move-result-object v0

    invoke-static {p0}, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->access$500(Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lorg/mozilla/gecko/process/ServiceUtils;->buildSvcName(Lorg/mozilla/gecko/process/GeckoProcessType;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static hasQApis()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private release(Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;)V
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/XPCOMEventTarget;->assertOnLauncherThread()V

    invoke-virtual {p1}, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->isContent()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/mozilla/gecko/process/ServiceAllocator;->mContentAllocPolicy:Lorg/mozilla/gecko/process/ServiceAllocator$ContentAllocationPolicy;

    invoke-virtual {p1}, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->getId()I

    move-result p1

    invoke-interface {v0, p1}, Lorg/mozilla/gecko/process/ServiceAllocator$ContentAllocationPolicy;->release(I)V

    return-void
.end method
