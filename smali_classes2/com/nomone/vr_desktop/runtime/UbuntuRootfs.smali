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
  .line 13
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-direct { v0 }, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V
    sput-object v0, Lcom/nomone/vr_desktop/runtime/UbuntuRootfs;->INSTALLING:Ljava/util/concurrent/atomic/AtomicBoolean;
    return-void
.end method

.method private constructor <init>()V
  .registers 1
  .line 15
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method static synthetic access$000()V
  .annotation system Ldalvik/annotation/Throws;
    value = {
      Ljava/lang/Exception;
    }
  .end annotation
  .registers 0
  .line 12
    invoke-static { }, Lcom/nomone/vr_desktop/runtime/UbuntuRootfs;->markDeployed()V
    return-void
.end method

.method static synthetic access$100()Ljava/util/concurrent/atomic/AtomicBoolean;
  .registers 1
  .line 12
    sget-object v0, Lcom/nomone/vr_desktop/runtime/UbuntuRootfs;->INSTALLING:Ljava/util/concurrent/atomic/AtomicBoolean;
    return-object v0
.end method

.method public static ensureInstalled(Landroid/app/Activity;Ljava/lang/Object;)Z
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L6
  .catch Ljava/lang/Exception; { :L4 .. :L5 } :L6
  .registers 10
  .line 18
    invoke-virtual { p0 }, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;
    move-result-object v0
  .line 19
    new-instance v1, Ljava/io/File;
    invoke-virtual { v0 }, Landroid/content/Context;->getFilesDir()Ljava/io/File;
    move-result-object v2
    const-string v3, "Ubuntu22.04Bare"
    invoke-direct { v1, v2, v3 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
  .line 21
    const/4 v2, 0
  :L0
    const-string v3, "o1.y"
    invoke-static { v3 }, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    move-result-object v3
    const-string v4, "a"
    const/4 v5, 2
    new-array v5, v5, [Ljava/lang/Class;
    const-class v6, Ljava/lang/String;
    aput-object v6, v5, v2
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
    const/4 v7, 1
    aput-object v6, v5, v7
    invoke-virtual { v3, v4, v5 }, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v3
    const-string v4, "Linux image deployed"
  .line 22
    invoke-static { v2 }, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    move-result-object v5
    filled-new-array { v4, v5 }, [Ljava/lang/Object;
    move-result-object v4
    const/4 v5, 0
    invoke-virtual { v3, v5, v4 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/lang/Boolean;
  .line 21
    invoke-virtual { v3 }, Ljava/lang/Boolean;->booleanValue()Z
    move-result v3
  .line 23
    invoke-virtual { v0 }, Landroid/content/Context;->getFilesDir()Ljava/io/File;
    move-result-object v0
    invoke-static { v0 }, Lcom/nomone/vr_desktop/runtime/UbuntuImage;->ready(Ljava/io/File;)Z
    move-result v0
    if-nez v0, :L4
    if-eqz v3, :L2
    new-instance v0, Ljava/io/File;
    const-string v3, "bin/bash"
    invoke-direct { v0, v1, v3 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    invoke-virtual { v0 }, Ljava/io/File;->isFile()Z
    move-result v0
    if-eqz v0, :L2
    new-instance v0, Ljava/io/File;
    const-string v3, "NOMone/boot.sh"
    invoke-direct { v0, v1, v3 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
  .line 24
    invoke-virtual { v0 }, Ljava/io/File;->isFile()Z
    move-result v0
  :L1
    if-eqz v0, :L2
    goto :L4
  :L2
  .line 31
    nop
  .line 32
    sget-object v0, Lcom/nomone/vr_desktop/runtime/UbuntuRootfs;->INSTALLING:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-virtual { v0, v2, v7 }, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z
    move-result v0
    if-eqz v0, :L3
  .line 33
    const-string v0, "Ubuntu22.04Bare installeren\u2026"
    invoke-static { p0, v0, v7 }, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/widget/Toast;->show()V
  .line 34
    new-instance v0, Ljava/lang/Thread;
    new-instance v1, Lcom/nomone/vr_desktop/runtime/UbuntuRootfs$InstallTask;
    invoke-direct { v1, p0, p1 }, Lcom/nomone/vr_desktop/runtime/UbuntuRootfs$InstallTask;-><init>(Landroid/app/Activity;Ljava/lang/Object;)V
    const-string p0, "Ubuntu22.04Bare-install"
    invoke-direct { v0, v1, p0 }, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    invoke-virtual { v0 }, Ljava/lang/Thread;->start()V
  :L3
  .line 36
    return v2
  :L4
  .line 25
    invoke-static { }, Lcom/nomone/vr_desktop/runtime/UbuntuRootfs;->markDeployed()V
  :L5
  .line 26
    return v7
  :L6
  .line 28
    move-exception p0
  .line 29
    const-string p1, "UbuntuRootfs"
    const-string v0, "Kan Linux-status niet lezen"
    invoke-static { p1, v0, p0 }, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
  .line 30
    return v2
.end method

.method private static markDeployed()V
  .annotation system Ldalvik/annotation/Throws;
    value = {
      Ljava/lang/Exception;
    }
  .end annotation
  .registers 4
  .line 40
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
  .line 41
    invoke-static { v3 }, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    move-result-object v1
    const-string v2, "Linux image deployed"
    filled-new-array { v2, v1 }, [Ljava/lang/Object;
    move-result-object v1
    const/4 v2, 0
    invoke-virtual { v0, v2, v1 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
  .line 42
    return-void
.end method
