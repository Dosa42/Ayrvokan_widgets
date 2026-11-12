.class public final synthetic Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService$12;
.super Ljava/lang/Object;
.implements Lcom/nomone/vr_desktop/runtime/TerminalServer$Control;
.source "D8$$SyntheticClass"

.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
  holder = "Lcom/nomone/vr_desktop/runtime/MachineEngine;"
  method = "request"
  proto = "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;"
.end annotation

.field public final synthetic f$0:Lcom/nomone/vr_desktop/runtime/MachineEngine;

.method public synthetic constructor <init>(Lcom/nomone/vr_desktop/runtime/MachineEngine;)V
  .registers 2
  .line 0
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService$12;->f$0:Lcom/nomone/vr_desktop/runtime/MachineEngine;
    return-void
.end method

.method public final request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  .registers 5
  .line 0
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService$12;->f$0:Lcom/nomone/vr_desktop/runtime/MachineEngine;
    invoke-virtual { v0, p1, p2, p3 }, Lcom/nomone/vr_desktop/runtime/MachineEngine;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
    return-object p1
.end method
