.class public final synthetic Lcom/nomone/vr_desktop/runtime/TerminalServer$1;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "D8$$SyntheticClass"

.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
  holder = "Lcom/nomone/vr_desktop/runtime/TerminalServer;"
  method = "accept"
  proto = "()V"
.end annotation

.field public final synthetic f$0:Lcom/nomone/vr_desktop/runtime/TerminalServer;

.method public synthetic constructor <init>(Lcom/nomone/vr_desktop/runtime/TerminalServer;)V
  .registers 2
  .line 0
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$1;->f$0:Lcom/nomone/vr_desktop/runtime/TerminalServer;
    return-void
.end method

.method public final run()V
  .registers 2
  .line 0
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$1;->f$0:Lcom/nomone/vr_desktop/runtime/TerminalServer;
    invoke-static { v0 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->$r8$lambda$4fXOlwVlAtZTzi_DaqlM_CdGq8c(Lcom/nomone/vr_desktop/runtime/TerminalServer;)V
    return-void
.end method
