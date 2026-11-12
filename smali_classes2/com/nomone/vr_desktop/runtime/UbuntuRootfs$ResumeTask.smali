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

.method constructor <init>(Landroid/app/Activity;Ljava/lang/Exception;)V
  .registers 3
  .line 75
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 76
    iput-object p1, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRootfs$ResumeTask;->activity:Landroid/app/Activity;
  .line 77
    iput-object p2, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRootfs$ResumeTask;->error:Ljava/lang/Exception;
  .line 78
    return-void
.end method

.method public run()V
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L6
  .catchall { :L0 .. :L1 } :L5
  .catch Ljava/lang/Exception; { :L2 .. :L4 } :L6
  .catchall { :L2 .. :L4 } :L5
  .catchall { :L7 .. :L8 } :L5
  .registers 7
  .line 83
    const/4 v0, 1
    const/4 v1, 0
  :L0
    iget-object v2, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRootfs$ResumeTask;->error:Ljava/lang/Exception;
    if-eqz v2, :L2
  .line 84
    iget-object v2, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRootfs$ResumeTask;->activity:Landroid/app/Activity;
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "Ubuntu-installatie mislukt: "
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    iget-object v4, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRootfs$ResumeTask;->error:Ljava/lang/Exception;
    invoke-static { v4 }, Lcom/nomone/vr_desktop/runtime/UbuntuRootfs;->access$000(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object v4
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-static { v2, v3, v0 }, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v2
    invoke-virtual { v2 }, Landroid/widget/Toast;->show()V
  :L1
  .line 97
    invoke-static { }, Lcom/nomone/vr_desktop/runtime/UbuntuRootfs;->access$200()Ljava/util/concurrent/atomic/AtomicBoolean;
    move-result-object v0
    invoke-virtual { v0, v1 }, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
  .line 85
    return-void
  :L2
  .line 87
    invoke-static { }, Lcom/nomone/vr_desktop/runtime/UbuntuRootfs;->access$100()V
  .line 88
    iget-object v2, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRootfs$ResumeTask;->activity:Landroid/app/Activity;
    invoke-virtual { v2 }, Landroid/app/Activity;->isFinishing()Z
    move-result v2
    if-nez v2, :L4
    iget-object v2, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRootfs$ResumeTask;->activity:Landroid/app/Activity;
    invoke-virtual { v2 }, Landroid/app/Activity;->isDestroyed()Z
    move-result v2
    if-nez v2, :L4
  .line 89
    iget-object v2, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRootfs$ResumeTask;->activity:Landroid/app/Activity;
    invoke-static { v2 }, Lcom/nomone/vr_desktop/runtime/UbuntuRuntime;->startIfBare(Landroid/content/Context;)Z
    move-result v2
    if-eqz v2, :L3
    goto :L4
  :L3
  .line 90
    new-instance v2, Ljava/io/IOException;
    const-string v3, "Ubuntu Bare installatiemarkering ontbreekt"
    invoke-direct { v2, v3 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw v2
  :L4
  .line 97
    invoke-static { }, Lcom/nomone/vr_desktop/runtime/UbuntuRootfs;->access$200()Ljava/util/concurrent/atomic/AtomicBoolean;
    move-result-object v0
    invoke-virtual { v0, v1 }, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
  .line 98
    goto :L9
  :L5
  .line 97
    move-exception v0
    goto :L10
  :L6
  .line 93
    move-exception v2
  :L7
  .line 94
    const-string v3, "UbuntuRootfs"
    const-string v4, "Linux-start mislukt"
    invoke-static { v3, v4, v2 }, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
  .line 95
    iget-object v3, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRootfs$ResumeTask;->activity:Landroid/app/Activity;
    new-instance v4, Ljava/lang/StringBuilder;
    invoke-direct { v4 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v5, "Linux-start mislukt: "
    invoke-virtual { v4, v5 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v4
    invoke-static { v2 }, Lcom/nomone/vr_desktop/runtime/UbuntuRootfs;->access$000(Ljava/lang/Throwable;)Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v4, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static { v3, v2, v0 }, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v0
    invoke-virtual { v0 }, Landroid/widget/Toast;->show()V
  :L8
    goto :L4
  :L9
  .line 99
    return-void
  :L10
  .line 97
    invoke-static { }, Lcom/nomone/vr_desktop/runtime/UbuntuRootfs;->access$200()Ljava/util/concurrent/atomic/AtomicBoolean;
    move-result-object v2
    invoke-virtual { v2, v1 }, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
  .line 98
    throw v0
.end method
