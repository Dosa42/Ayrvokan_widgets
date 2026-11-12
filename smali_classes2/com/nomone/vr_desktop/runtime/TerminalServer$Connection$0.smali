.class public final synthetic Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection$0;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "D8$$SyntheticClass"

.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
  holder = "Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;"
  method = "pump"
  proto = "()V"
.end annotation

.field public final synthetic f$0:Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;

.method public synthetic constructor <init>(Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;)V
  .registers 2
  .line 0
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection$0;->f$0:Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;
    return-void
.end method

.method public final run()V
  .registers 2
  .line 0
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection$0;->f$0:Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;
    invoke-static { v0 }, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;->$r8$lambda$W2s46Ii67VMsObxINPk3uPwBUiI(Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;)V
    return-void
.end method
