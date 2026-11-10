.class Lorg/mozilla/gecko/process/GeckoServiceChildProcess$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/gecko/process/GeckoServiceChildProcess$1;->start(Lorg/mozilla/gecko/process/IProcessManager;[Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/mozilla/gecko/process/GeckoServiceChildProcess$1;

.field final synthetic val$args:[Ljava/lang/String;

.field final synthetic val$crashAnnotationFd:I

.field final synthetic val$crashHandlerService:Ljava/lang/String;

.field final synthetic val$crashReporterFd:I

.field final synthetic val$extras:Landroid/os/Bundle;

.field final synthetic val$flags:I

.field final synthetic val$ipcFd:I

.field final synthetic val$prefMapFd:I

.field final synthetic val$prefsFd:I


# direct methods
.method public constructor <init>(Lorg/mozilla/gecko/process/GeckoServiceChildProcess$1;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;IIIIII)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/gecko/process/GeckoServiceChildProcess$1$1;->this$1:Lorg/mozilla/gecko/process/GeckoServiceChildProcess$1;

    iput-object p2, p0, Lorg/mozilla/gecko/process/GeckoServiceChildProcess$1$1;->val$crashHandlerService:Ljava/lang/String;

    iput-object p3, p0, Lorg/mozilla/gecko/process/GeckoServiceChildProcess$1$1;->val$args:[Ljava/lang/String;

    iput-object p4, p0, Lorg/mozilla/gecko/process/GeckoServiceChildProcess$1$1;->val$extras:Landroid/os/Bundle;

    iput p5, p0, Lorg/mozilla/gecko/process/GeckoServiceChildProcess$1$1;->val$flags:I

    iput p6, p0, Lorg/mozilla/gecko/process/GeckoServiceChildProcess$1$1;->val$prefsFd:I

    iput p7, p0, Lorg/mozilla/gecko/process/GeckoServiceChildProcess$1$1;->val$prefMapFd:I

    iput p8, p0, Lorg/mozilla/gecko/process/GeckoServiceChildProcess$1$1;->val$ipcFd:I

    iput p9, p0, Lorg/mozilla/gecko/process/GeckoServiceChildProcess$1$1;->val$crashReporterFd:I

    iput p10, p0, Lorg/mozilla/gecko/process/GeckoServiceChildProcess$1$1;->val$crashAnnotationFd:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/gecko/process/GeckoServiceChildProcess$1$1;->val$crashHandlerService:Ljava/lang/String;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/gecko/GeckoAppShell;->setCrashHandlerService(Ljava/lang/Class;)V

    invoke-static {v0}, Lorg/mozilla/gecko/GeckoAppShell;->ensureCrashHandling(Ljava/lang/Class;)Lorg/mozilla/gecko/CrashHandler;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    new-instance v0, Lorg/mozilla/gecko/GeckoThread$InitInfo;

    invoke-direct {v0}, Lorg/mozilla/gecko/GeckoThread$InitInfo;-><init>()V

    iget-object v1, p0, Lorg/mozilla/gecko/process/GeckoServiceChildProcess$1$1;->val$args:[Ljava/lang/String;

    iput-object v1, v0, Lorg/mozilla/gecko/GeckoThread$InitInfo;->args:[Ljava/lang/String;

    iget-object v1, p0, Lorg/mozilla/gecko/process/GeckoServiceChildProcess$1$1;->val$extras:Landroid/os/Bundle;

    iput-object v1, v0, Lorg/mozilla/gecko/GeckoThread$InitInfo;->extras:Landroid/os/Bundle;

    iget v1, p0, Lorg/mozilla/gecko/process/GeckoServiceChildProcess$1$1;->val$flags:I

    iput v1, v0, Lorg/mozilla/gecko/GeckoThread$InitInfo;->flags:I

    iget v1, p0, Lorg/mozilla/gecko/process/GeckoServiceChildProcess$1$1;->val$prefsFd:I

    iput v1, v0, Lorg/mozilla/gecko/GeckoThread$InitInfo;->prefsFd:I

    iget v1, p0, Lorg/mozilla/gecko/process/GeckoServiceChildProcess$1$1;->val$prefMapFd:I

    iput v1, v0, Lorg/mozilla/gecko/GeckoThread$InitInfo;->prefMapFd:I

    iget v1, p0, Lorg/mozilla/gecko/process/GeckoServiceChildProcess$1$1;->val$ipcFd:I

    iput v1, v0, Lorg/mozilla/gecko/GeckoThread$InitInfo;->ipcFd:I

    iget v1, p0, Lorg/mozilla/gecko/process/GeckoServiceChildProcess$1$1;->val$crashReporterFd:I

    iput v1, v0, Lorg/mozilla/gecko/GeckoThread$InitInfo;->crashFd:I

    iget v1, p0, Lorg/mozilla/gecko/process/GeckoServiceChildProcess$1$1;->val$crashAnnotationFd:I

    iput v1, v0, Lorg/mozilla/gecko/GeckoThread$InitInfo;->crashAnnotationFd:I

    invoke-static {v0}, Lorg/mozilla/gecko/GeckoThread;->init(Lorg/mozilla/gecko/GeckoThread$InitInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/mozilla/gecko/GeckoThread;->launch()Z

    :cond_1
    return-void
.end method
