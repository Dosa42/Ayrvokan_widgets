.class public final synthetic Lcom/nomone/vr_desktop/runtime/TerminalServer$0;
.super Ljava/lang/Object;
.implements Ljava/util/concurrent/ThreadFactory;
.source "D8$$SyntheticClass"

.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
  holder = "Lcom/nomone/vr_desktop/runtime/TerminalServer;"
  method = "lambda$new$0"
  proto = "(Ljava/lang/Runnable;)Ljava/lang/Thread;"
.end annotation

.method public synthetic constructor <init>()V
  .registers 1
  .line 0
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
  .registers 2
  .line 0
    invoke-static { p1 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->lambda$new$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    move-result-object p1
    return-object p1
.end method
