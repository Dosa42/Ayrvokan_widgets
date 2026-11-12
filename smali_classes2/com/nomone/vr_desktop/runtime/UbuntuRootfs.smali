.class public final Lcom/nomone/vr_desktop/runtime/UbuntuRootfs;
.super Ljava/lang/Object;
.source "UbuntuRootfs.java"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcom/nomone/vr_desktop/runtime/UbuntuRootfs$InstallTask;,
    Lcom/nomone/vr_desktop/runtime/UbuntuRootfs$ResumeTask;
  }
.end annotation

.field private final static INSTALLING:Ljava/util/concurrent/atomic/AtomicBoolean;

.method static constructor <clinit>()V
  .registers 1
  .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-direct { v0 }, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V
    sput-object v0, Lcom/nomone/vr_desktop/runtime/UbuntuRootfs;->INSTALLING:Ljava/util/concurrent/atomic/AtomicBoolean;
    return-void
.end method

.method private constructor <init>()V
  .registers 1
  .line 14
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method static synthetic access$000(Ljava/lang/Throwable;)Ljava/lang/String;
  .registers 1
  .line 11
    invoke-static { p0 }, Lcom/nomone/vr_desktop/runtime/UbuntuRootfs;->describe(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object p0
    return-object p0
.end method

.method static synthetic access$100()V
  .annotation system Ldalvik/annotation/Throws;
    value = {
      Ljava/lang/Exception;
    }
  .end annotation
  .registers 0
  .line 11
    invoke-static { }, Lcom/nomone/vr_desktop/runtime/UbuntuRootfs;->markDeployed()V
    return-void
.end method

.method static synthetic access$200()Ljava/util/concurrent/atomic/AtomicBoolean;
  .registers 1
  .line 11
    sget-object v0, Lcom/nomone/vr_desktop/runtime/UbuntuRootfs;->INSTALLING:Ljava/util/concurrent/atomic/AtomicBoolean;
    return-object v0
.end method

.method private static describe(Ljava/lang/Throwable;)Ljava/lang/String;
  .registers 4
  .line 39
    nop
  :L0
    invoke-virtual { p0 }, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
    move-result-object v0
    if-eqz v0, :L1
    invoke-virtual { p0 }, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
    move-result-object v0
    if-eq v0, p0, :L1
    invoke-virtual { p0 }, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
    move-result-object p0
    goto :L0
  :L1
  .line 40
    invoke-virtual { p0 }, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    move-result-object v0
  .line 41
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { p0 }, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object p0
    invoke-virtual { p0 }, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
    move-result-object p0
    invoke-virtual { v1, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object p0
    if-nez v0, :L2
    const-string v0, ""
    goto :L3
  :L2
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v2, ": "
    invoke-virtual { v1, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
  :L3
    invoke-virtual { p0, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object p0
    invoke-virtual { p0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    return-object p0
.end method

.method public static ensureInstalled(Landroid/app/Activity;Ljava/lang/Object;)Z
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L6
  .catch Ljava/lang/Exception; { :L4 .. :L5 } :L6
  .registers 9
  .line 17
    invoke-virtual { p0 }, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;
    move-result-object p1
  .line 18
    new-instance v0, Ljava/io/File;
    invoke-virtual { p1 }, Landroid/content/Context;->getFilesDir()Ljava/io/File;
    move-result-object v1
    const-string v2, "Ubuntu22.04Bare"
    invoke-direct { v0, v1, v2 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
  .line 20
    const/4 v1, 0
  :L0
    const-string v2, "o1.y"
    invoke-static { v2 }, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    move-result-object v2
    const-string v3, "a"
    const/4 v4, 2
    new-array v4, v4, [Ljava/lang/Class;
    const-class v5, Ljava/lang/String;
    aput-object v5, v4, v1
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
    const/4 v6, 1
    aput-object v5, v4, v6
    invoke-virtual { v2, v3, v4 }, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v2
    const-string v3, "Linux image deployed"
  .line 21
    invoke-static { v1 }, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    move-result-object v4
    filled-new-array { v3, v4 }, [Ljava/lang/Object;
    move-result-object v3
    const/4 v4, 0
    invoke-virtual { v2, v4, v3 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/Boolean;
  .line 20
    invoke-virtual { v2 }, Ljava/lang/Boolean;->booleanValue()Z
    move-result v2
  .line 22
    invoke-virtual { p1 }, Landroid/content/Context;->getFilesDir()Ljava/io/File;
    move-result-object p1
    invoke-static { p1 }, Lcom/nomone/vr_desktop/runtime/UbuntuImage;->ready(Ljava/io/File;)Z
    move-result p1
    if-nez p1, :L4
    if-eqz v2, :L2
    new-instance p1, Ljava/io/File;
    const-string v2, "bin/bash"
    invoke-direct { p1, v0, v2 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    invoke-virtual { p1 }, Ljava/io/File;->isFile()Z
    move-result p1
    if-eqz p1, :L2
    new-instance p1, Ljava/io/File;
    const-string v2, "NOMone/boot.sh"
    invoke-direct { p1, v0, v2 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
  .line 23
    invoke-virtual { p1 }, Ljava/io/File;->isFile()Z
    move-result p1
  :L1
    if-eqz p1, :L2
    goto :L4
  :L2
  .line 30
    nop
  .line 31
    sget-object p1, Lcom/nomone/vr_desktop/runtime/UbuntuRootfs;->INSTALLING:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-virtual { p1, v1, v6 }, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z
    move-result p1
    if-eqz p1, :L3
  .line 32
    const-string p1, "Ubuntu22.04Bare installeren\u2026"
    invoke-static { p0, p1, v6 }, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object p1
    invoke-virtual { p1 }, Landroid/widget/Toast;->show()V
  .line 33
    new-instance p1, Ljava/lang/Thread;
    new-instance v0, Lcom/nomone/vr_desktop/runtime/UbuntuRootfs$InstallTask;
    invoke-direct { v0, p0 }, Lcom/nomone/vr_desktop/runtime/UbuntuRootfs$InstallTask;-><init>(Landroid/app/Activity;)V
    const-string p0, "Ubuntu22.04Bare-install"
    invoke-direct { p1, v0, p0 }, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    invoke-virtual { p1 }, Ljava/lang/Thread;->start()V
  :L3
  .line 35
    return v1
  :L4
  .line 24
    invoke-static { }, Lcom/nomone/vr_desktop/runtime/UbuntuRootfs;->markDeployed()V
  :L5
  .line 25
    return v6
  :L6
  .line 27
    move-exception p0
  .line 28
    const-string p1, "UbuntuRootfs"
    const-string v0, "Kan Linux-status niet lezen"
    invoke-static { p1, v0, p0 }, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
  .line 29
    return v1
.end method

.method private static markDeployed()V
  .annotation system Ldalvik/annotation/Throws;
    value = {
      Ljava/lang/Exception;
    }
  .end annotation
  .registers 4
  .line 45
    const-string v0, "o1.y"
    invoke-static { v0 }, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    move-result-object v0
    const/4 v1, 2
    new-array v1, v1, [Ljava/lang/Class;
    const/4 v2, 0
    const-class v3, Ljava/lang/String;
    aput-object v3, v1, v2
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
    const/4 v3, 1
    aput-object v2, v1, v3
    const-string v2, "e"
    invoke-virtual { v0, v2, v1 }, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v0
  .line 46
    invoke-static { v3 }, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    move-result-object v1
    const-string v2, "Linux image deployed"
    filled-new-array { v2, v1 }, [Ljava/lang/Object;
    move-result-object v1
    const/4 v2, 0
    invoke-virtual { v0, v2, v1 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
  .line 47
    return-void
.end method
