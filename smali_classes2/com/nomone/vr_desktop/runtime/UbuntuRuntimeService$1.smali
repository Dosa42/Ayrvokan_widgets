.class public final synthetic Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService$1;
.super Ljava/lang/Object;
.implements Lcom/nomone/vr_desktop/runtime/TerminalSessions$Factory;
.source "D8$$SyntheticClass"

.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
  holder = "Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;"
  method = "lambda$onCreate$0"
  proto = "(Ljava/lang/String;Lcom/nomone/vr_desktop/runtime/PtySession$Listener;)Lcom/nomone/vr_desktop/runtime/PtySession;"
.end annotation

.field public final synthetic f$0:Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;

.method public synthetic constructor <init>(Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;)V
  .registers 2
  .line 0
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService$1;->f$0:Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;
    return-void
.end method

.method public final open(Ljava/lang/String;Lcom/nomone/vr_desktop/runtime/PtySession$Listener;)Lcom/nomone/vr_desktop/runtime/PtySession;
  .registers 4
  .line 0
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService$1;->f$0:Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;
    invoke-virtual { v0, p1, p2 }, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;->lambda$onCreate$0$com-nomone-vr_desktop-runtime-UbuntuRuntimeService(Ljava/lang/String;Lcom/nomone/vr_desktop/runtime/PtySession$Listener;)Lcom/nomone/vr_desktop/runtime/PtySession;
    move-result-object p1
    return-object p1
.end method
