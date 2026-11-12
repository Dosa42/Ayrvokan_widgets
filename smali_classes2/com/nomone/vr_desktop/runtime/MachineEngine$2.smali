.class public final synthetic Lcom/nomone/vr_desktop/runtime/MachineEngine$2;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "D8$$SyntheticClass"

.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
  holder = "Lcom/nomone/vr_desktop/runtime/MachineEngine;"
  method = "lambda$submit$1"
  proto = "(Lcom/nomone/vr_desktop/runtime/MachineEngine$Order;)V"
.end annotation

.field public final synthetic f$0:Lcom/nomone/vr_desktop/runtime/MachineEngine;

.field public final synthetic f$1:Lcom/nomone/vr_desktop/runtime/MachineEngine$Order;

.method public synthetic constructor <init>(Lcom/nomone/vr_desktop/runtime/MachineEngine;Lcom/nomone/vr_desktop/runtime/MachineEngine$Order;)V
  .registers 3
  .line 0
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/nomone/vr_desktop/runtime/MachineEngine$2;->f$0:Lcom/nomone/vr_desktop/runtime/MachineEngine;
    iput-object p2, p0, Lcom/nomone/vr_desktop/runtime/MachineEngine$2;->f$1:Lcom/nomone/vr_desktop/runtime/MachineEngine$Order;
    return-void
.end method

.method public final run()V
  .registers 3
  .line 0
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/MachineEngine$2;->f$0:Lcom/nomone/vr_desktop/runtime/MachineEngine;
    iget-object v1, p0, Lcom/nomone/vr_desktop/runtime/MachineEngine$2;->f$1:Lcom/nomone/vr_desktop/runtime/MachineEngine$Order;
    invoke-virtual { v0, v1 }, Lcom/nomone/vr_desktop/runtime/MachineEngine;->lambda$submit$1$com-nomone-vr_desktop-runtime-MachineEngine(Lcom/nomone/vr_desktop/runtime/MachineEngine$Order;)V
    return-void
.end method
