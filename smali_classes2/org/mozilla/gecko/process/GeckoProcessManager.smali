.class public final Lorg/mozilla/gecko/process/GeckoProcessManager;
.super Lorg/mozilla/gecko/process/IProcessManager$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;,
        Lorg/mozilla/gecko/process/GeckoProcessManager$ContentConnection;,
        Lorg/mozilla/gecko/process/GeckoProcessManager$SocketProcessConnection;,
        Lorg/mozilla/gecko/process/GeckoProcessManager$NonContentConnection;,
        Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;,
        Lorg/mozilla/gecko/process/GeckoProcessManager$IncompleteChildConnectionException;,
        Lorg/mozilla/gecko/process/GeckoProcessManager$Selector;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lorg/mozilla/gecko/process/GeckoProcessManager;

.field private static final INVALID_PID:I = 0x0

.field private static final LOGTAG:Ljava/lang/String; = "GeckoProcessManager"


# instance fields
.field private final mConnections:Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/mozilla/gecko/process/GeckoProcessManager;

    invoke-direct {v0}, Lorg/mozilla/gecko/process/GeckoProcessManager;-><init>()V

    sput-object v0, Lorg/mozilla/gecko/process/GeckoProcessManager;->INSTANCE:Lorg/mozilla/gecko/process/GeckoProcessManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/mozilla/gecko/process/IProcessManager$Stub;-><init>()V

    new-instance v0, Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;

    invoke-direct {v0}, Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;-><init>()V

    iput-object v0, p0, Lorg/mozilla/gecko/process/GeckoProcessManager;->mConnections:Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;

    return-void
.end method

.method public static synthetic a(Landroid/os/RemoteException;Lorg/mozilla/gecko/process/GeckoProcessType;Lorg/mozilla/geckoview/GeckoResult;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lorg/mozilla/gecko/process/GeckoProcessManager;->lambda$start$6(Landroid/os/RemoteException;Lorg/mozilla/gecko/process/GeckoProcessType;Lorg/mozilla/geckoview/GeckoResult;Ljava/lang/Throwable;)V

    return-void
.end method

.method private acceptUnbindFailure(Lorg/mozilla/geckoview/GeckoResult;Lorg/mozilla/geckoview/GeckoResult;Landroid/os/RemoteException;Lorg/mozilla/gecko/process/GeckoProcessType;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Ljava/lang/Void;",
            ">;",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/os/RemoteException;",
            "Lorg/mozilla/gecko/process/GeckoProcessType;",
            "Z)V"
        }
    .end annotation

    new-instance v0, Lw1/k;

    invoke-direct {v0, p5, p3, p4, p2}, Lw1/k;-><init>(ZLandroid/os/RemoteException;Lorg/mozilla/gecko/process/GeckoProcessType;Lorg/mozilla/geckoview/GeckoResult;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/mozilla/geckoview/GeckoResult;->accept(Lorg/mozilla/geckoview/GeckoResult$Consumer;Lorg/mozilla/geckoview/GeckoResult$Consumer;)Lorg/mozilla/geckoview/GeckoResult;

    return-void
.end method

.method public static synthetic access$000()Lorg/mozilla/gecko/process/GeckoProcessManager;
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/process/GeckoProcessManager;->INSTANCE:Lorg/mozilla/gecko/process/GeckoProcessManager;

    return-object v0
.end method

.method public static synthetic access$100(Lorg/mozilla/gecko/process/GeckoProcessManager;)Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/gecko/process/GeckoProcessManager;->mConnections:Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;

    return-object p0
.end method

.method public static synthetic b(ZLandroid/os/RemoteException;Lorg/mozilla/gecko/process/GeckoProcessType;Lorg/mozilla/geckoview/GeckoResult;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lorg/mozilla/gecko/process/GeckoProcessManager;->lambda$acceptUnbindFailure$7(ZLandroid/os/RemoteException;Lorg/mozilla/gecko/process/GeckoProcessType;Lorg/mozilla/geckoview/GeckoResult;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic c(Lorg/mozilla/gecko/process/GeckoProcessManager;Lorg/mozilla/gecko/process/GeckoProcessManager$Selector;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/mozilla/gecko/process/GeckoProcessManager;->lambda$crashChild$2(Lorg/mozilla/gecko/process/GeckoProcessManager$Selector;)V

    return-void
.end method

.method public static synthetic d(Lorg/mozilla/gecko/process/GeckoProcessManager;Lorg/mozilla/geckoview/GeckoResult;Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;Lorg/mozilla/gecko/process/GeckoProcessType;[Ljava/lang/String;Landroid/os/Bundle;IIIIIIZLandroid/os/RemoteException;Lorg/mozilla/gecko/process/IChildProcess;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p14}, Lorg/mozilla/gecko/process/GeckoProcessManager;->lambda$start$5(Lorg/mozilla/geckoview/GeckoResult;Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;Lorg/mozilla/gecko/process/GeckoProcessType;[Ljava/lang/String;Landroid/os/Bundle;IIIIIIZLandroid/os/RemoteException;Lorg/mozilla/gecko/process/IChildProcess;)V

    return-void
.end method

.method public static synthetic e(Lorg/mozilla/gecko/process/GeckoProcessManager;Lorg/mozilla/geckoview/GeckoResult;Lorg/mozilla/gecko/process/GeckoProcessType;[Ljava/lang/String;Landroid/os/Bundle;IIIIIILandroid/os/RemoteException;Ljava/lang/Void;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p12}, Lorg/mozilla/gecko/process/GeckoProcessManager;->lambda$start$9(Lorg/mozilla/geckoview/GeckoResult;Lorg/mozilla/gecko/process/GeckoProcessType;[Ljava/lang/String;Landroid/os/Bundle;IIIIIILandroid/os/RemoteException;Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic f(Lorg/mozilla/gecko/process/GeckoProcessManager$Selector;Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lorg/mozilla/gecko/process/GeckoProcessManager;->lambda$setProcessPriority$3(Lorg/mozilla/gecko/process/GeckoProcessManager$Selector;Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;I)V

    return-void
.end method

.method private static filterFlagsForChild(I)I
    .locals 0

    and-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static synthetic g(Lorg/mozilla/gecko/process/IChildProcess;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/mozilla/gecko/process/GeckoProcessManager;->lambda$null$1(Lorg/mozilla/gecko/process/IChildProcess;)V

    return-void
.end method

.method public static getInstance()Lorg/mozilla/gecko/process/GeckoProcessManager;
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/process/GeckoProcessManager;->INSTANCE:Lorg/mozilla/gecko/process/GeckoProcessManager;

    return-object v0
.end method

.method public static synthetic h(Lorg/mozilla/geckoview/GeckoResult;Ljava/lang/RuntimeException;Ljava/lang/Void;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lorg/mozilla/gecko/process/GeckoProcessManager;->lambda$start$8(Lorg/mozilla/geckoview/GeckoResult;Ljava/lang/RuntimeException;Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic i(Lorg/mozilla/geckoview/GeckoResult;Lorg/mozilla/gecko/process/GeckoProcessType;[Ljava/lang/String;Landroid/os/Bundle;IIIIII)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p9}, Lorg/mozilla/gecko/process/GeckoProcessManager;->lambda$start$4(Lorg/mozilla/geckoview/GeckoResult;Lorg/mozilla/gecko/process/GeckoProcessType;[Ljava/lang/String;Landroid/os/Bundle;IIIIII)V

    return-void
.end method

.method public static synthetic j(Lorg/mozilla/gecko/process/GeckoProcessManager;[Lorg/mozilla/gecko/process/GeckoProcessType;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/mozilla/gecko/process/GeckoProcessManager;->lambda$preload$0([Lorg/mozilla/gecko/process/GeckoProcessType;)V

    return-void
.end method

.method private static synthetic lambda$acceptUnbindFailure$7(ZLandroid/os/RemoteException;Lorg/mozilla/gecko/process/GeckoProcessType;Lorg/mozilla/geckoview/GeckoResult;Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to unbind"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    const-string p0, ": "

    goto :goto_0

    :cond_0
    const-string p0, " before child restart: "

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const-string p0, "; In response to RemoteException: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string p0, "; Type = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/mozilla/gecko/process/GeckoProcessType;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lorg/mozilla/geckoview/GeckoResult;->completeExceptionally(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$crashChild$2(Lorg/mozilla/gecko/process/GeckoProcessManager$Selector;)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/process/GeckoProcessManager;->mConnections:Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;

    invoke-virtual {v0, p1}, Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;->getExistingConnection(Lorg/mozilla/gecko/process/GeckoProcessManager$Selector;)Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;->bind()Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    new-instance v0, Lorg/mozilla/gecko/process/a;

    invoke-direct {v0}, Lorg/mozilla/gecko/process/a;-><init>()V

    invoke-virtual {p1, v0}, Lorg/mozilla/geckoview/GeckoResult;->accept(Lorg/mozilla/geckoview/GeckoResult$Consumer;)Lorg/mozilla/geckoview/GeckoResult;

    return-void
.end method

.method private static synthetic lambda$null$1(Lorg/mozilla/gecko/process/IChildProcess;)V
    .locals 0

    :try_start_0
    invoke-interface {p0}, Lorg/mozilla/gecko/process/IChildProcess;->crash()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private synthetic lambda$preload$0([Lorg/mozilla/gecko/process/GeckoProcessType;)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lorg/mozilla/gecko/process/GeckoProcessManager;->mConnections:Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;

    invoke-virtual {v3, v2}, Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;->getConnectionForPreload(Lorg/mozilla/gecko/process/GeckoProcessType;)Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;->bind()Lorg/mozilla/geckoview/GeckoResult;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static synthetic lambda$setProcessPriority$3(Lorg/mozilla/gecko/process/GeckoProcessManager$Selector;Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;I)V
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/process/GeckoProcessManager;->INSTANCE:Lorg/mozilla/gecko/process/GeckoProcessManager;

    iget-object v0, v0, Lorg/mozilla/gecko/process/GeckoProcessManager;->mConnections:Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;

    invoke-virtual {v0, p0}, Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;->getExistingConnection(Lorg/mozilla/gecko/process/GeckoProcessManager$Selector;)Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->setPriorityLevel(Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;I)Z

    return-void
.end method

.method private static synthetic lambda$start$4(Lorg/mozilla/geckoview/GeckoResult;Lorg/mozilla/gecko/process/GeckoProcessType;[Ljava/lang/String;Landroid/os/Bundle;IIIIII)V
    .locals 12

    sget-object v0, Lorg/mozilla/gecko/process/GeckoProcessManager;->INSTANCE:Lorg/mozilla/gecko/process/GeckoProcessManager;

    const/4 v11, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v11}, Lorg/mozilla/gecko/process/GeckoProcessManager;->start(Lorg/mozilla/geckoview/GeckoResult;Lorg/mozilla/gecko/process/GeckoProcessType;[Ljava/lang/String;Landroid/os/Bundle;IIIIIIZ)V

    return-void
.end method

.method private synthetic lambda$start$5(Lorg/mozilla/geckoview/GeckoResult;Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;Lorg/mozilla/gecko/process/GeckoProcessType;[Ljava/lang/String;Landroid/os/Bundle;IIIIIIZLandroid/os/RemoteException;Lorg/mozilla/gecko/process/IChildProcess;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p14

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v14, p13

    invoke-direct/range {v0 .. v14}, Lorg/mozilla/gecko/process/GeckoProcessManager;->start(Lorg/mozilla/geckoview/GeckoResult;Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;Lorg/mozilla/gecko/process/IChildProcess;Lorg/mozilla/gecko/process/GeckoProcessType;[Ljava/lang/String;Landroid/os/Bundle;IIIIIIZLandroid/os/RemoteException;)V

    return-void
.end method

.method private static synthetic lambda$start$6(Landroid/os/RemoteException;Lorg/mozilla/gecko/process/GeckoProcessType;Lorg/mozilla/geckoview/GeckoResult;Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot bind child process: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_0

    const-string p3, "; Previous exception: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string p0, "; Type: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/mozilla/gecko/process/GeckoProcessType;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lorg/mozilla/geckoview/GeckoResult;->completeExceptionally(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static synthetic lambda$start$8(Lorg/mozilla/geckoview/GeckoResult;Ljava/lang/RuntimeException;Ljava/lang/Void;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/mozilla/geckoview/GeckoResult;->completeExceptionally(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$start$9(Lorg/mozilla/geckoview/GeckoResult;Lorg/mozilla/gecko/process/GeckoProcessType;[Ljava/lang/String;Landroid/os/Bundle;IIIIIILandroid/os/RemoteException;Ljava/lang/Void;)V
    .locals 13

    const/4 v11, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lorg/mozilla/gecko/process/GeckoProcessManager;->start(Lorg/mozilla/geckoview/GeckoResult;Lorg/mozilla/gecko/process/GeckoProcessType;[Ljava/lang/String;Landroid/os/Bundle;IIIIIIZLandroid/os/RemoteException;)V

    return-void
.end method

.method private static markAsDead(Lorg/mozilla/gecko/process/GeckoProcessManager$Selector;)V
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    invoke-static {}, Lorg/mozilla/gecko/util/XPCOMEventTarget;->assertOnLauncherThread()V

    sget-object v0, Lorg/mozilla/gecko/process/GeckoProcessManager;->INSTANCE:Lorg/mozilla/gecko/process/GeckoProcessManager;

    iget-object v0, v0, Lorg/mozilla/gecko/process/GeckoProcessManager;->mConnections:Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;

    invoke-virtual {v0, p0}, Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;->getExistingConnection(Lorg/mozilla/gecko/process/GeckoProcessManager$Selector;)Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;->unbind()Lorg/mozilla/geckoview/GeckoResult;

    return-void
.end method

.method private static native nativeGetEditableParent(Lorg/mozilla/gecko/IGeckoEditableChild;JJ)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        dispatchTo = "gecko"
        stubName = "GetEditableParent"
    .end annotation
.end method

.method private static setEditableChildParent(Lorg/mozilla/gecko/IGeckoEditableChild;Lorg/mozilla/gecko/IGeckoEditableParent;)V
    .locals 0
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    :try_start_0
    invoke-interface {p0, p1}, Lorg/mozilla/gecko/IGeckoEditableChild;->transferParent(Lorg/mozilla/gecko/IGeckoEditableParent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static setProcessPriority(Lorg/mozilla/gecko/process/GeckoProcessManager$Selector;Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;I)V
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    new-instance v0, Lw1/l;

    invoke-direct {v0, p0, p1, p2}, Lw1/l;-><init>(Lorg/mozilla/gecko/process/GeckoProcessManager$Selector;Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;I)V

    invoke-static {v0}, Lorg/mozilla/gecko/util/XPCOMEventTarget;->runOnLauncherThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static start(Lorg/mozilla/gecko/process/GeckoProcessType;[Ljava/lang/String;IIIII)Lorg/mozilla/geckoview/GeckoResult;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/gecko/process/GeckoProcessType;",
            "[",
            "Ljava/lang/String;",
            "IIIII)",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    .line 1
    new-instance v11, Lorg/mozilla/geckoview/GeckoResult;

    invoke-direct {v11}, Lorg/mozilla/geckoview/GeckoResult;-><init>()V

    invoke-static {}, Lorg/mozilla/gecko/GeckoThread;->getActiveExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {}, Lorg/mozilla/gecko/GeckoThread;->getActiveFlags()I

    move-result v0

    invoke-static {v0}, Lorg/mozilla/gecko/process/GeckoProcessManager;->filterFlagsForChild(I)I

    move-result v5

    new-instance v12, Lorg/mozilla/gecko/process/b;

    move-object v0, v12

    move-object v1, v11

    move-object v2, p0

    move-object v3, p1

    move v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lorg/mozilla/gecko/process/b;-><init>(Lorg/mozilla/geckoview/GeckoResult;Lorg/mozilla/gecko/process/GeckoProcessType;[Ljava/lang/String;Landroid/os/Bundle;IIIIII)V

    invoke-static {v12}, Lorg/mozilla/gecko/util/XPCOMEventTarget;->runOnLauncherThread(Ljava/lang/Runnable;)V

    return-object v11
.end method

.method private start(Lorg/mozilla/geckoview/GeckoResult;Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;Lorg/mozilla/gecko/process/IChildProcess;Lorg/mozilla/gecko/process/GeckoProcessType;[Ljava/lang/String;Landroid/os/Bundle;IIIIIIZLandroid/os/RemoteException;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Ljava/lang/Integer;",
            ">;",
            "Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;",
            "Lorg/mozilla/gecko/process/IChildProcess;",
            "Lorg/mozilla/gecko/process/GeckoProcessType;",
            "[",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "IIIIIIZ",
            "Landroid/os/RemoteException;",
            ")V"
        }
    .end annotation

    .line 2
    move-object/from16 v7, p1

    invoke-static {}, Lorg/mozilla/gecko/util/XPCOMEventTarget;->assertOnLauncherThread()V

    const/4 v0, 0x0

    if-ltz p8, :cond_0

    invoke-static/range {p8 .. p8}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-ltz p9, :cond_1

    invoke-static/range {p9 .. p9}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_1
    invoke-static/range {p10 .. p10}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    if-ltz p11, :cond_2

    invoke-static/range {p11 .. p11}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, v0

    :goto_2
    if-ltz p12, :cond_3

    invoke-static/range {p12 .. p12}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    goto :goto_3

    :cond_3
    move-object v5, v0

    :goto_3
    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getCrashHandlerService()Ljava/lang/Class;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getCrashHandlerService()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v13, v6

    goto :goto_4

    :cond_4
    move-object v13, v0

    :goto_4
    move-object/from16 v8, p3

    move-object/from16 v9, p0

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move/from16 v12, p7

    move-object v14, v1

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    :try_start_0
    invoke-interface/range {v8 .. v18}, Lorg/mozilla/gecko/process/IChildProcess;->start(Lorg/mozilla/gecko/process/IProcessManager;[Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)Z

    move-result v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    move-object v13, v0

    goto :goto_6

    :catch_0
    move-exception v0

    const/4 v6, 0x0

    goto :goto_5

    :goto_6
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    :cond_6
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    :cond_8
    if-eqz v6, :cond_9

    invoke-virtual/range {p2 .. p2}, Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;->getPid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/mozilla/geckoview/GeckoResult;->complete(Ljava/lang/Object;)V

    return-void

    :cond_9
    invoke-virtual/range {p2 .. p2}, Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;->unbind()Lorg/mozilla/geckoview/GeckoResult;

    move-result-object v0

    move-object/from16 v1, p0

    move-object v2, v0

    move-object/from16 v3, p1

    move-object v4, v13

    move-object/from16 v5, p4

    move/from16 v6, p13

    invoke-direct/range {v1 .. v6}, Lorg/mozilla/gecko/process/GeckoProcessManager;->acceptUnbindFailure(Lorg/mozilla/geckoview/GeckoResult;Lorg/mozilla/geckoview/GeckoResult;Landroid/os/RemoteException;Lorg/mozilla/gecko/process/GeckoProcessType;Z)V

    invoke-virtual/range {p4 .. p4}, Lorg/mozilla/gecko/process/GeckoProcessType;->toString()Ljava/lang/String;

    if-eqz p13, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot restart child."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p14, :cond_a

    const-string v2, " Initial RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p14 .. p14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    if-eqz v13, :cond_b

    const-string v2, " Second RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    if-nez v13, :cond_c

    if-nez p14, :cond_c

    const-string v2, " No exceptions thrown; type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Lorg/mozilla/gecko/process/GeckoProcessType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/mozilla/gecko/process/e;

    const/4 v3, 0x1

    invoke-direct {v1, v7, v2, v3}, Lorg/mozilla/gecko/process/e;-><init>(Lorg/mozilla/geckoview/GeckoResult;Ljava/lang/RuntimeException;I)V

    invoke-virtual {v0, v1}, Lorg/mozilla/geckoview/GeckoResult;->accept(Lorg/mozilla/geckoview/GeckoResult$Consumer;)Lorg/mozilla/geckoview/GeckoResult;

    return-void

    :cond_d
    new-instance v14, Lorg/mozilla/gecko/process/c;

    move-object v1, v14

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-direct/range {v1 .. v13}, Lorg/mozilla/gecko/process/c;-><init>(Lorg/mozilla/gecko/process/GeckoProcessManager;Lorg/mozilla/geckoview/GeckoResult;Lorg/mozilla/gecko/process/GeckoProcessType;[Ljava/lang/String;Landroid/os/Bundle;IIIIIILandroid/os/RemoteException;)V

    invoke-virtual {v0, v14}, Lorg/mozilla/geckoview/GeckoResult;->accept(Lorg/mozilla/geckoview/GeckoResult$Consumer;)Lorg/mozilla/geckoview/GeckoResult;

    return-void
.end method

.method private start(Lorg/mozilla/geckoview/GeckoResult;Lorg/mozilla/gecko/process/GeckoProcessType;[Ljava/lang/String;Landroid/os/Bundle;IIIIIIZ)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Ljava/lang/Integer;",
            ">;",
            "Lorg/mozilla/gecko/process/GeckoProcessType;",
            "[",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "IIIIIIZ)V"
        }
    .end annotation

    .line 3
    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v12}, Lorg/mozilla/gecko/process/GeckoProcessManager;->start(Lorg/mozilla/geckoview/GeckoResult;Lorg/mozilla/gecko/process/GeckoProcessType;[Ljava/lang/String;Landroid/os/Bundle;IIIIIIZLandroid/os/RemoteException;)V

    return-void
.end method

.method private start(Lorg/mozilla/geckoview/GeckoResult;Lorg/mozilla/gecko/process/GeckoProcessType;[Ljava/lang/String;Landroid/os/Bundle;IIIIIIZLandroid/os/RemoteException;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Ljava/lang/Integer;",
            ">;",
            "Lorg/mozilla/gecko/process/GeckoProcessType;",
            "[",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "IIIIIIZ",
            "Landroid/os/RemoteException;",
            ")V"
        }
    .end annotation

    .line 4
    move-object/from16 v15, p2

    invoke-static {}, Lorg/mozilla/gecko/util/XPCOMEventTarget;->assertOnLauncherThread()V

    move-object/from16 v14, p0

    iget-object v0, v14, Lorg/mozilla/gecko/process/GeckoProcessManager;->mConnections:Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;

    invoke-virtual {v0, v15}, Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;->getConnectionForStart(Lorg/mozilla/gecko/process/GeckoProcessType;)Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;

    move-result-object v3

    invoke-virtual {v3}, Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;->bind()Lorg/mozilla/geckoview/GeckoResult;

    move-result-object v13

    new-instance v12, Lorg/mozilla/gecko/process/d;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v16, v12

    move/from16 v12, p10

    move-object/from16 v17, v13

    move/from16 v13, p11

    move-object/from16 v14, p12

    invoke-direct/range {v0 .. v14}, Lorg/mozilla/gecko/process/d;-><init>(Lorg/mozilla/gecko/process/GeckoProcessManager;Lorg/mozilla/geckoview/GeckoResult;Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;Lorg/mozilla/gecko/process/GeckoProcessType;[Ljava/lang/String;Landroid/os/Bundle;IIIIIIZLandroid/os/RemoteException;)V

    new-instance v0, Ln0/b;

    const/4 v1, 0x6

    move-object/from16 v3, p12

    invoke-direct {v0, v3, v15, v2, v1}, Ln0/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object/from16 v2, v16

    move-object/from16 v1, v17

    invoke-virtual {v1, v2, v0}, Lorg/mozilla/geckoview/GeckoResult;->accept(Lorg/mozilla/geckoview/GeckoResult$Consumer;Lorg/mozilla/geckoview/GeckoResult$Consumer;)Lorg/mozilla/geckoview/GeckoResult;

    return-void
.end method


# virtual methods
.method public crashChild(Lorg/mozilla/gecko/process/GeckoProcessManager$Selector;)V
    .locals 3

    invoke-static {}, Lorg/mozilla/gecko/util/XPCOMEventTarget;->launcherThread()Lorg/mozilla/gecko/util/IXPCOMEventTarget;

    move-result-object v0

    new-instance v1, Lorg/mozilla/gecko/process/j;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0, p1}, Lorg/mozilla/gecko/process/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getEditableParent(Lorg/mozilla/gecko/IGeckoEditableChild;JJ)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, Lorg/mozilla/gecko/process/GeckoProcessManager;->nativeGetEditableParent(Lorg/mozilla/gecko/IGeckoEditableChild;JJ)V

    return-void
.end method

.method public varargs preload([Lorg/mozilla/gecko/process/GeckoProcessType;)V
    .locals 3

    invoke-static {}, Lorg/mozilla/gecko/util/XPCOMEventTarget;->launcherThread()Lorg/mozilla/gecko/util/IXPCOMEventTarget;

    move-result-object v0

    new-instance v1, Lorg/mozilla/gecko/process/j;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0, p1}, Lorg/mozilla/gecko/process/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
