.class public final synthetic Lcom/nomone/vr_desktop/runtime/UbuntuRuntime$1;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "D8$$SyntheticClass"

.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
  holder = "Lcom/nomone/vr_desktop/runtime/UbuntuRuntime;"
  method = "lambda$startIfBare$1"
  proto = "(Landroid/content/Context;)V"
.end annotation

.field public final synthetic f$0:Landroid/content/Context;

.method public synthetic constructor <init>(Landroid/content/Context;)V
  .registers 2
  .line 0
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntime$1;->f$0:Landroid/content/Context;
    return-void
.end method

.method public final run()V
  .registers 2
  .line 0
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntime$1;->f$0:Landroid/content/Context;
    invoke-static { v0 }, Lcom/nomone/vr_desktop/runtime/UbuntuRuntime;->lambda$startIfBare$1(Landroid/content/Context;)V
    return-void
.end method
