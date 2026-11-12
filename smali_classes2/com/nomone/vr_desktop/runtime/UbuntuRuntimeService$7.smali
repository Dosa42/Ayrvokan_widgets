.class public final synthetic Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService$7;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "D8$$SyntheticClass"

.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
  holder = "Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;"
  method = "shutdown"
  proto = "()V"
.end annotation

.field public final synthetic f$0:Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;

.method public synthetic constructor <init>(Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;)V
  .registers 2
  .line 0
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService$7;->f$0:Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;
    return-void
.end method

.method public final run()V
  .registers 2
  .line 0
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService$7;->f$0:Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;
    invoke-static { v0 }, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->$r8$lambda$Tb5bTHL-f_KC1sRed_ferzMMb0g(Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;)V
    return-void
.end method
