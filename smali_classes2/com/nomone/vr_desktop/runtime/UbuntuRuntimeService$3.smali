.class public final synthetic Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService$3;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "D8$$SyntheticClass"

.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
  holder = "Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;"
  method = "lambda$startSsh$3"
  proto = "(Ljava/lang/String;Ljava/lang/String;I)V"
.end annotation

.field public final synthetic f$0:Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I

.method public synthetic constructor <init>(Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;Ljava/lang/String;Ljava/lang/String;I)V
  .registers 5
  .line 0
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService$3;->f$0:Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;
    iput-object p2, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService$3;->f$1:Ljava/lang/String;
    iput-object p3, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService$3;->f$2:Ljava/lang/String;
    iput p4, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService$3;->f$3:I
    return-void
.end method

.method public final run()V
  .registers 5
  .line 0
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService$3;->f$0:Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;
    iget-object v1, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService$3;->f$1:Ljava/lang/String;
    iget-object v2, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService$3;->f$2:Ljava/lang/String;
    iget v3, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService$3;->f$3:I
    invoke-virtual { v0, v1, v2, v3 }, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->lambda$startSsh$3$com-nomone-vr_desktop-runtime-UbuntuRuntimeService(Ljava/lang/String;Ljava/lang/String;I)V
    return-void
.end method
