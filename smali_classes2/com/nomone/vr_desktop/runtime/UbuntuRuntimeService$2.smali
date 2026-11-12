.class public final synthetic Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService$2;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "D8$$SyntheticClass"

.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
  holder = "Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;"
  method = "lambda$onCreate$2"
  proto = "()V"
.end annotation

.field public final synthetic f$0:Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;

.method public synthetic constructor <init>(Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;)V
  .registers 2
  .line 0
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService$2;->f$0:Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;
    return-void
.end method

.method public final run()V
  .registers 2
  .line 0
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService$2;->f$0:Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;
    invoke-virtual { v0 }, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->lambda$onCreate$2$com-nomone-vr_desktop-runtime-UbuntuRuntimeService()V
    return-void
.end method
