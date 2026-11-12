.class public final synthetic Lcom/nomone/vr_desktop/runtime/TerminalSessions$0;
.super Ljava/lang/Object;
.implements Lcom/nomone/vr_desktop/runtime/PtySession$Listener;
.source "D8$$SyntheticClass"

.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
  holder = "Lcom/nomone/vr_desktop/runtime/TerminalSessions;"
  method = "lambda$create$0"
  proto = "(ILjava/lang/String;)V"
.end annotation

.field public final synthetic f$0:Lcom/nomone/vr_desktop/runtime/TerminalSessions;

.method public synthetic constructor <init>(Lcom/nomone/vr_desktop/runtime/TerminalSessions;)V
  .registers 2
  .line 0
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/nomone/vr_desktop/runtime/TerminalSessions$0;->f$0:Lcom/nomone/vr_desktop/runtime/TerminalSessions;
    return-void
.end method

.method public final exited(ILjava/lang/String;)V
  .registers 4
  .line 0
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/TerminalSessions$0;->f$0:Lcom/nomone/vr_desktop/runtime/TerminalSessions;
    invoke-virtual { v0, p1, p2 }, Lcom/nomone/vr_desktop/runtime/TerminalSessions;->lambda$create$0$com-nomone-vr_desktop-runtime-TerminalSessions(ILjava/lang/String;)V
    return-void
.end method
