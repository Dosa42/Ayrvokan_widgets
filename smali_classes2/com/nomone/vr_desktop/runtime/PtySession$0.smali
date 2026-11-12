.class public final synthetic Lcom/nomone/vr_desktop/runtime/PtySession$0;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "D8$$SyntheticClass"

.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
  holder = "Lcom/nomone/vr_desktop/runtime/PtySession;"
  method = "lambda$stop$0"
  proto = "()V"
.end annotation

.field public final synthetic f$0:Lcom/nomone/vr_desktop/runtime/PtySession;

.method public synthetic constructor <init>(Lcom/nomone/vr_desktop/runtime/PtySession;)V
  .registers 2
  .line 0
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/nomone/vr_desktop/runtime/PtySession$0;->f$0:Lcom/nomone/vr_desktop/runtime/PtySession;
    return-void
.end method

.method public final run()V
  .registers 2
  .line 0
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/PtySession$0;->f$0:Lcom/nomone/vr_desktop/runtime/PtySession;
    invoke-virtual { v0 }, Lcom/nomone/vr_desktop/runtime/PtySession;->lambda$stop$0$com-nomone-vr_desktop-runtime-PtySession()V
    return-void
.end method
