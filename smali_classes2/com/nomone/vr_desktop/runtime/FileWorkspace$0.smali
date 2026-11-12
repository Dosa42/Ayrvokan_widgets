.class public final synthetic Lcom/nomone/vr_desktop/runtime/FileWorkspace$0;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "D8$$SyntheticClass"

.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
  holder = "Lcom/nomone/vr_desktop/runtime/FileWorkspace;"
  method = "lambda$submit$2"
  proto = "(Lcom/nomone/vr_desktop/runtime/FileWorkspace$Job;)V"
.end annotation

.field public final synthetic f$0:Lcom/nomone/vr_desktop/runtime/FileWorkspace;

.field public final synthetic f$1:Lcom/nomone/vr_desktop/runtime/FileWorkspace$Job;

.method public synthetic constructor <init>(Lcom/nomone/vr_desktop/runtime/FileWorkspace;Lcom/nomone/vr_desktop/runtime/FileWorkspace$Job;)V
  .registers 3
  .line 0
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/nomone/vr_desktop/runtime/FileWorkspace$0;->f$0:Lcom/nomone/vr_desktop/runtime/FileWorkspace;
    iput-object p2, p0, Lcom/nomone/vr_desktop/runtime/FileWorkspace$0;->f$1:Lcom/nomone/vr_desktop/runtime/FileWorkspace$Job;
    return-void
.end method

.method public final run()V
  .registers 3
  .line 0
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/FileWorkspace$0;->f$0:Lcom/nomone/vr_desktop/runtime/FileWorkspace;
    iget-object v1, p0, Lcom/nomone/vr_desktop/runtime/FileWorkspace$0;->f$1:Lcom/nomone/vr_desktop/runtime/FileWorkspace$Job;
    invoke-virtual { v0, v1 }, Lcom/nomone/vr_desktop/runtime/FileWorkspace;->lambda$submit$2$com-nomone-vr_desktop-runtime-FileWorkspace(Lcom/nomone/vr_desktop/runtime/FileWorkspace$Job;)V
    return-void
.end method
