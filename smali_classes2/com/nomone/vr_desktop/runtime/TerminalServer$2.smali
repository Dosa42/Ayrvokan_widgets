.class public final synthetic Lcom/nomone/vr_desktop/runtime/TerminalServer$2;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "D8$$SyntheticClass"

.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
  holder = "Lcom/nomone/vr_desktop/runtime/TerminalServer;"
  method = "lambda$accept$1"
  proto = "(Ljava/net/Socket;)V"
.end annotation

.field public final synthetic f$0:Lcom/nomone/vr_desktop/runtime/TerminalServer;

.field public final synthetic f$1:Ljava/net/Socket;

.method public synthetic constructor <init>(Lcom/nomone/vr_desktop/runtime/TerminalServer;Ljava/net/Socket;)V
  .registers 3
  .line 0
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$2;->f$0:Lcom/nomone/vr_desktop/runtime/TerminalServer;
    iput-object p2, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$2;->f$1:Ljava/net/Socket;
    return-void
.end method

.method public final run()V
  .registers 3
  .line 0
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$2;->f$0:Lcom/nomone/vr_desktop/runtime/TerminalServer;
    iget-object v1, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$2;->f$1:Ljava/net/Socket;
    invoke-virtual { v0, v1 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->lambda$accept$1$com-nomone-vr_desktop-runtime-TerminalServer(Ljava/net/Socket;)V
    return-void
.end method
