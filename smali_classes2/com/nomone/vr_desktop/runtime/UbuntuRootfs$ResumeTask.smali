.class final Lcom/nomone/vr_desktop/runtime/UbuntuRootfs$ResumeTask;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "UbuntuRootfs.java"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcom/nomone/vr_desktop/runtime/UbuntuRootfs;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 26
  name = "ResumeTask"
.end annotation

.field private final activity:Landroid/app/Activity;

.field private final error:Ljava/lang/Exception;

.field private final scene:Ljava/lang/Object;

.method constructor <init>(Landroid/app/Activity;Ljava/lang/Object;Ljava/lang/Exception;)V
  .registers 4
  .line 73
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 74
    iput-object p1, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRootfs$ResumeTask;->activity:Landroid/app/Activity;
  .line 75
    iput-object p2, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRootfs$ResumeTask;->scene:Ljava/lang/Object;
  .line 76
    iput-object p3, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRootfs$ResumeTask;->error:Ljava/lang/Exception;
  .line 77
    return-void
.end method

.method public run()V
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L5
  .catchall { :L0 .. :L1 } :L4
  .catch Ljava/lang/Exception; { :L2 .. :L3 } :L5
  .catchall { :L2 .. :L3 } :L4
  .catchall { :L6 .. :L7 } :L4
  .registers 8
  .line 82
    const/4 v0, 1
    const/4 v1, 0
  :L0
    iget-object v2, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRootfs$ResumeTask;->error:Ljava/lang/Exception;
    if-eqz v2, :L2
  .line 83
    iget-object v2, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRootfs$ResumeTask;->activity:Landroid/app/Activity;
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "Ubuntu-installatie mislukt: "
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    iget-object v4, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRootfs$ResumeTask;->error:Ljava/lang/Exception;
    invoke-virtual { v4 }, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
    move-result-object v4
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-static { v2, v3, v0 }, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v2
    invoke-virtual { v2 }, Landroid/widget/Toast;->show()V
  :L1
  .line 96
    invoke-static { }, Lcom/nomone/vr_desktop/runtime/UbuntuRootfs;->access$100()Ljava/util/concurrent/atomic/AtomicBoolean;
    move-result-object v0
    invoke-virtual { v0, v1 }, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
  .line 84
    return-void
  :L2
  .line 86
    invoke-static { }, Lcom/nomone/vr_desktop/runtime/UbuntuRootfs;->access$000()V
  .line 87
    iget-object v2, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRootfs$ResumeTask;->activity:Landroid/app/Activity;
    invoke-virtual { v2 }, Landroid/app/Activity;->isFinishing()Z
    move-result v2
    if-nez v2, :L3
    iget-object v2, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRootfs$ResumeTask;->activity:Landroid/app/Activity;
    invoke-virtual { v2 }, Landroid/app/Activity;->isDestroyed()Z
    move-result v2
    if-nez v2, :L3
  .line 88
    const-string v2, "com.nomone.vr_desktop.Applications.LauncherApplication"
    invoke-static { v2 }, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    move-result-object v2
    const-string v3, "f"
    const/4 v4, 3
    new-array v4, v4, [Ljava/lang/Class;
    const-string v5, "q1.f"
  .line 89
    invoke-static { v5 }, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    move-result-object v5
    aput-object v5, v4, v1
    const-string v5, "r1.c"
    invoke-static { v5 }, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    move-result-object v5
    aput-object v5, v4, v0
    const-class v5, Ljava/lang/String;
    const/4 v6, 2
    aput-object v5, v4, v6
    invoke-virtual { v2, v3, v4 }, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v2
  .line 90
    iget-object v3, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRootfs$ResumeTask;->scene:Ljava/lang/Object;
    const-string v4, "Launch:com.nomone.vr_desktop.Applications.Linux.LinuxApplication"
    const/4 v5, 0
    filled-new-array { v3, v5, v4 }, [Ljava/lang/Object;
    move-result-object v3
    invoke-virtual { v2, v5, v3 }, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
  :L3
  .line 96
    invoke-static { }, Lcom/nomone/vr_desktop/runtime/UbuntuRootfs;->access$100()Ljava/util/concurrent/atomic/AtomicBoolean;
    move-result-object v0
    invoke-virtual { v0, v1 }, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
  .line 97
    goto :L8
  :L4
  .line 96
    move-exception v0
    goto :L9
  :L5
  .line 92
    move-exception v2
  :L6
  .line 93
    const-string v3, "UbuntuRootfs"
    const-string v4, "Linux-start mislukt"
    invoke-static { v3, v4, v2 }, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
  .line 94
    iget-object v3, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRootfs$ResumeTask;->activity:Landroid/app/Activity;
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "Linux-start mislukt: "
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v4
    invoke-virtual { v2 }, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v4, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static { v3, v2, v0 }, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/widget/Toast;->show()V
  :L7
    goto :L3
  :L8
  .line 98
    return-void
  :L9
  .line 96
    invoke-static { }, Lcom/nomone/vr_desktop/runtime/UbuntuRootfs;->access$100()Ljava/util/concurrent/atomic/AtomicBoolean;
    move-result-object v2
    invoke-virtual { v2, v1 }, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
  .line 97
    throw v0
.end method
