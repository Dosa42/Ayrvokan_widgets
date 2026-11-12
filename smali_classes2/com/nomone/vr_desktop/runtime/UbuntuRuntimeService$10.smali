.class public final synthetic Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService$10;
.super Ljava/lang/Object;
.implements Lcom/nomone/vr_desktop/runtime/MachineEngine$Runner;
.source "D8$$SyntheticClass"

.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
  holder = "Lcom/nomone/vr_desktop/runtime/ProotCommand;"
  method = "process"
  proto = "([Ljava/lang/String;)Ljava/lang/Process;"
.end annotation

.field public final synthetic f$0:Lcom/nomone/vr_desktop/runtime/ProotCommand;

.method public synthetic constructor <init>(Lcom/nomone/vr_desktop/runtime/ProotCommand;)V
  .registers 2
  .line 0
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService$10;->f$0:Lcom/nomone/vr_desktop/runtime/ProotCommand;
    return-void
.end method

.method public final start([Ljava/lang/String;)Ljava/lang/Process;
  .registers 3
  .line 0
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService$10;->f$0:Lcom/nomone/vr_desktop/runtime/ProotCommand;
    invoke-virtual { v0, p1 }, Lcom/nomone/vr_desktop/runtime/ProotCommand;->process([Ljava/lang/String;)Ljava/lang/Process;
    move-result-object p1
    return-object p1
.end method
