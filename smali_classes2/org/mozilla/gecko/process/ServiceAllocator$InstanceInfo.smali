.class public abstract Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/process/ServiceAllocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "InstanceInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo$IsolatedBindDelegate;,
        Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo$DefaultBindDelegate;,
        Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo$Binding;
    }
.end annotation


# instance fields
.field private final mAllocator:Lorg/mozilla/gecko/process/ServiceAllocator;

.field private final mBindDelegate:Lorg/mozilla/gecko/process/ServiceAllocator$BindServiceDelegate;

.field private final mBindings:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;",
            "Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo$Binding;",
            ">;"
        }
    .end annotation
.end field

.field private mCalledConnected:Z

.field private mCalledConnectionLost:Z

.field private mCurrentPriority:Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;

.field private final mId:Ljava/lang/Integer;

.field private mIsDefunct:Z

.field private mRelativeImportance:I

.field private final mType:Lorg/mozilla/gecko/process/GeckoProcessType;


# direct methods
.method public constructor <init>(Lorg/mozilla/gecko/process/ServiceAllocator;Lorg/mozilla/gecko/process/GeckoProcessType;Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->mCalledConnected:Z

    iput-boolean v0, p0, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->mCalledConnectionLost:Z

    iput-boolean v0, p0, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->mIsDefunct:Z

    iput v0, p0, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->mRelativeImportance:I

    iput-object p1, p0, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->mAllocator:Lorg/mozilla/gecko/process/ServiceAllocator;

    iput-object p2, p0, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->mType:Lorg/mozilla/gecko/process/GeckoProcessType;

    invoke-static {p1, p2}, Lorg/mozilla/gecko/process/ServiceAllocator;->access$700(Lorg/mozilla/gecko/process/ServiceAllocator;Lorg/mozilla/gecko/process/GeckoProcessType;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->mId:Ljava/lang/Integer;

    new-instance p1, Ljava/util/EnumMap;

    const-class p2, Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;

    invoke-direct {p1, p2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->mBindings:Ljava/util/EnumMap;

    invoke-direct {p0}, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->getBindServiceDelegate()Lorg/mozilla/gecko/process/ServiceAllocator$BindServiceDelegate;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->mBindDelegate:Lorg/mozilla/gecko/process/ServiceAllocator$BindServiceDelegate;

    iput-object p3, p0, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->mCurrentPriority:Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;

    return-void
.end method

.method public static synthetic access$000(Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;)V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->onBinderConnectionLostInternal()V

    return-void
.end method

.method public static synthetic access$100(Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->onBinderConnectedInternal(Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic access$500(Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->getIdAsString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getBindServiceDelegate()Lorg/mozilla/gecko/process/ServiceAllocator$BindServiceDelegate;
    .locals 2

    iget-object v0, p0, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->mType:Lorg/mozilla/gecko/process/GeckoProcessType;

    sget-object v1, Lorg/mozilla/gecko/process/GeckoProcessType;->CONTENT:Lorg/mozilla/gecko/process/GeckoProcessType;

    if-eq v0, v1, :cond_0

    new-instance v0, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo$DefaultBindDelegate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo$DefaultBindDelegate;-><init>(Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;Lorg/mozilla/gecko/process/ServiceAllocator$1;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->mAllocator:Lorg/mozilla/gecko/process/ServiceAllocator;

    invoke-static {v0}, Lorg/mozilla/gecko/process/ServiceAllocator;->access$900(Lorg/mozilla/gecko/process/ServiceAllocator;)Lorg/mozilla/gecko/process/ServiceAllocator$ContentAllocationPolicy;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/mozilla/gecko/process/ServiceAllocator$ContentAllocationPolicy;->getBindServiceDelegate(Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;)Lorg/mozilla/gecko/process/ServiceAllocator$BindServiceDelegate;

    move-result-object v0

    return-object v0
.end method

.method private getIdAsString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->mId:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private onBinderConnectedInternal(Landroid/os/IBinder;)V
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/XPCOMEventTarget;->assertOnLauncherThread()V

    iget-boolean v0, p0, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->mCalledConnected:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->mCalledConnected:Z

    invoke-virtual {p0, p1}, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->onBinderConnected(Landroid/os/IBinder;)V

    return-void
.end method

.method private onBinderConnectionLostInternal()V
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/XPCOMEventTarget;->assertOnLauncherThread()V

    iget-boolean v0, p0, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->mCalledConnectionLost:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->mCalledConnectionLost:Z

    invoke-virtual {p0}, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->onBinderConnectionLost()V

    return-void
.end method

.method private updateBindings()Z
    .locals 13
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1d
    .end annotation

    invoke-static {}, Lorg/mozilla/gecko/util/XPCOMEventTarget;->assertOnLauncherThread()V

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->mCurrentPriority:Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {}, Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;->values()[Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    array-length v7, v2

    const/4 v8, 0x1

    if-ge v4, v7, :cond_6

    aget-object v7, v2, v4

    iget-object v9, p0, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->mBindings:Ljava/util/EnumMap;

    invoke-virtual {v9, v7}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo$Binding;

    if-eqz v9, :cond_0

    move v10, v8

    goto :goto_1

    :cond_0
    move v10, v3

    :goto_1
    if-ge v4, v1, :cond_1

    if-eqz v10, :cond_5

    :try_start_0
    invoke-virtual {v0, v9}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v8, p0, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->mBindings:Ljava/util/EnumMap;

    invoke-virtual {v8, v7}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    iget-object v8, p0, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->mBindings:Ljava/util/EnumMap;

    invoke-virtual {v8, v7}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_1
    xor-int/lit8 v11, v10, 0x1

    if-eqz v10, :cond_2

    invoke-static {}, Lorg/mozilla/gecko/process/ServiceAllocator;->access$1100()Z

    move-result v12

    if-eqz v12, :cond_2

    add-int v12, v6, v5

    if-nez v12, :cond_2

    iget v11, p0, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->mRelativeImportance:I

    invoke-static {v0, v9, v11}, Landroidx/lifecycle/v;->g(Landroid/content/Context;Landroid/content/ServiceConnection;I)V

    goto :goto_2

    :cond_2
    move v8, v11

    :goto_2
    if-eqz v8, :cond_5

    if-eqz v10, :cond_3

    goto :goto_3

    :cond_3
    new-instance v9, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo$Binding;

    const/4 v8, 0x0

    invoke-direct {v9, p0, v8}, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo$Binding;-><init>(Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;Lorg/mozilla/gecko/process/ServiceAllocator$1;)V

    :goto_3
    iget-object v8, p0, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->mBindDelegate:Lorg/mozilla/gecko/process/ServiceAllocator$BindServiceDelegate;

    invoke-interface {v8, v9, v7}, Lorg/mozilla/gecko/process/ServiceAllocator$BindServiceDelegate;->bindService(Landroid/content/ServiceConnection;Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;)Z

    move-result v8

    if-eqz v8, :cond_4

    add-int/lit8 v6, v6, 0x1

    if-nez v10, :cond_5

    iget-object v8, p0, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->mBindings:Ljava/util/EnumMap;

    invoke-virtual {v8, v7, v9}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_4
    add-int/lit8 v5, v5, 0x1

    :cond_5
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->mBindDelegate:Lorg/mozilla/gecko/process/ServiceAllocator$BindServiceDelegate;

    invoke-interface {v0}, Lorg/mozilla/gecko/process/ServiceAllocator$BindServiceDelegate;->getServiceName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->mCurrentPriority:Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    if-nez v5, :cond_7

    move v3, v8

    :cond_7
    return v3
.end method


# virtual methods
.method public bindService()Z
    .locals 2

    iget-boolean v0, p0, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->mIsDefunct:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->updateBindings()Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Attempt to bind a defunct InstanceInfo for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->mType:Lorg/mozilla/gecko/process/GeckoProcessType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " child process"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/mozilla/gecko/process/ServiceAllocator$BindException;

    invoke-direct {v1, v0}, Lorg/mozilla/gecko/process/ServiceAllocator$BindException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getId()I
    .locals 2

    iget-object v0, p0, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->mId:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This service does not have a unique id"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPriorityLevel()Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/XPCOMEventTarget;->assertOnLauncherThread()V

    iget-object v0, p0, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->mCurrentPriority:Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;

    return-object v0
.end method

.method public getType()Lorg/mozilla/gecko/process/GeckoProcessType;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->mType:Lorg/mozilla/gecko/process/GeckoProcessType;

    return-object v0
.end method

.method public isContent()Z
    .locals 2

    iget-object v0, p0, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->mType:Lorg/mozilla/gecko/process/GeckoProcessType;

    sget-object v1, Lorg/mozilla/gecko/process/GeckoProcessType;->CONTENT:Lorg/mozilla/gecko/process/GeckoProcessType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract onBinderConnected(Landroid/os/IBinder;)V
.end method

.method public onBinderConnectionLost()V
    .locals 0

    invoke-virtual {p0}, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->unbindService()V

    return-void
.end method

.method public abstract onReleaseResources()V
.end method

.method public setPriorityLevel(Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->setPriorityLevel(Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;I)Z

    move-result p1

    return p1
.end method

.method public setPriorityLevel(Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;I)Z
    .locals 0

    .line 2
    invoke-static {}, Lorg/mozilla/gecko/util/XPCOMEventTarget;->assertOnLauncherThread()V

    iput-object p1, p0, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->mCurrentPriority:Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;

    iput p2, p0, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->mRelativeImportance:I

    iget-object p1, p0, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->mBindings:Ljava/util/EnumMap;

    invoke-virtual {p1}, Ljava/util/EnumMap;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-direct {p0}, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->updateBindings()Z

    move-result p1

    return p1
.end method

.method public unbindService()V
    .locals 4

    invoke-static {}, Lorg/mozilla/gecko/util/XPCOMEventTarget;->assertOnLauncherThread()V

    iget-boolean v0, p0, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->mIsDefunct:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->mBindings:Ljava/util/EnumMap;

    invoke-virtual {v1}, Ljava/util/EnumMap;->clone()Ljava/util/EnumMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ServiceConnection;

    invoke-virtual {v0, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v3, p0, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->mBindings:Ljava/util/EnumMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->mBindings:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->size()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->mIsDefunct:Z

    iget-object v0, p0, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->mAllocator:Lorg/mozilla/gecko/process/ServiceAllocator;

    invoke-static {v0, p0}, Lorg/mozilla/gecko/process/ServiceAllocator;->access$1000(Lorg/mozilla/gecko/process/ServiceAllocator;Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;)V

    invoke-virtual {p0}, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->onReleaseResources()V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to release all bindings"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
