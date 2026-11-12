.class public final synthetic Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService$11;
.super Ljava/lang/Object;
.implements Lcom/nomone/vr_desktop/runtime/TerminalServer$Assets;
.source "D8$$SyntheticClass"

.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
  holder = "Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;"
  method = "readAsset"
  proto = "(Ljava/lang/String;)[B"
.end annotation

.field public final synthetic f$0:Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;

.method public synthetic constructor <init>(Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;)V
  .registers 2
  .line 0
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService$11;->f$0:Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;
    return-void
.end method

.method public final read(Ljava/lang/String;)[B
  .registers 3
  .line 0
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService$11;->f$0:Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;
    invoke-static { v0, p1 }, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->$r8$lambda$Y71EEhwxVMpfZFUw05zFsT4xEeA(Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;Ljava/lang/String;)[B
    move-result-object p1
    return-object p1
.end method
