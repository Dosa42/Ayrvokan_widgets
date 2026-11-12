.class public final synthetic Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService$0;
.super Ljava/lang/Object;
.implements Landroid/os/Handler$Callback;
.source "D8$$SyntheticClass"

.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
  holder = "Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;"
  method = "handle"
  proto = "(Landroid/os/Message;)Z"
.end annotation

.field public final synthetic f$0:Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;

.method public synthetic constructor <init>(Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;)V
  .registers 2
  .line 0
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService$0;->f$0:Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
  .registers 3
  .line 0
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService$0;->f$0:Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;
    invoke-static { v0, p1 }, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->$r8$lambda$gGZa-gsS8zFRDNRKqHG5UVXHWz0(Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;Landroid/os/Message;)Z
    move-result p1
    return p1
.end method
