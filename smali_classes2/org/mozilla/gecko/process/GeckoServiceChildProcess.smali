.class public Lorg/mozilla/gecko/process/GeckoServiceChildProcess;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "ServiceChildProcess"

.field private static sProcessManager:Lorg/mozilla/gecko/process/IProcessManager;


# instance fields
.field private final mBinder:Landroid/os/Binder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lorg/mozilla/gecko/process/GeckoServiceChildProcess$1;

    invoke-direct {v0, p0}, Lorg/mozilla/gecko/process/GeckoServiceChildProcess$1;-><init>(Lorg/mozilla/gecko/process/GeckoServiceChildProcess;)V

    iput-object v0, p0, Lorg/mozilla/gecko/process/GeckoServiceChildProcess;->mBinder:Landroid/os/Binder;

    return-void
.end method

.method public static synthetic access$000()Lorg/mozilla/gecko/process/IProcessManager;
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/process/GeckoServiceChildProcess;->sProcessManager:Lorg/mozilla/gecko/process/IProcessManager;

    return-object v0
.end method

.method public static synthetic access$002(Lorg/mozilla/gecko/process/IProcessManager;)Lorg/mozilla/gecko/process/IProcessManager;
    .locals 0

    sput-object p0, Lorg/mozilla/gecko/process/GeckoServiceChildProcess;->sProcessManager:Lorg/mozilla/gecko/process/IProcessManager;

    return-object p0
.end method

.method private static getEditableParent(Lorg/mozilla/gecko/IGeckoEditableChild;JJ)V
    .locals 6
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    :try_start_0
    sget-object v0, Lorg/mozilla/gecko/process/GeckoServiceChildProcess;->sProcessManager:Lorg/mozilla/gecko/process/IProcessManager;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lorg/mozilla/gecko/process/IProcessManager;->getEditableParent(Lorg/mozilla/gecko/IGeckoEditableChild;JJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    invoke-static {}, Lorg/mozilla/gecko/GeckoThread;->launch()Z

    iget-object p1, p0, Lorg/mozilla/gecko/process/GeckoServiceChildProcess;->mBinder:Landroid/os/Binder;

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/gecko/GeckoAppShell;->setApplicationContext(Landroid/content/Context;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p1, 0x2

    return p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    const/4 p1, 0x0

    return p1
.end method
