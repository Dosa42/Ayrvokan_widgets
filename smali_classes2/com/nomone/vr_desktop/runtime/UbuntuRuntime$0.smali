.class public final synthetic Lcom/nomone/vr_desktop/runtime/UbuntuRuntime$0;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "D8$$SyntheticClass"

.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
  holder = "Lcom/nomone/vr_desktop/runtime/UbuntuRuntime;"
  method = "lambda$startIfBare$0"
  proto = "(ZLandroid/content/Context;)V"
.end annotation

.field public final synthetic f$0:Z

.field public final synthetic f$1:Landroid/content/Context;

.method public synthetic constructor <init>(ZLandroid/content/Context;)V
  .registers 3
  .line 0
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    iput-boolean p1, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntime$0;->f$0:Z
    iput-object p2, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntime$0;->f$1:Landroid/content/Context;
    return-void
.end method

.method public final run()V
  .registers 3
  .line 0
    iget-boolean v0, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntime$0;->f$0:Z
    iget-object v1, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntime$0;->f$1:Landroid/content/Context;
    invoke-static { v0, v1 }, Lcom/nomone/vr_desktop/runtime/UbuntuRuntime;->lambda$startIfBare$0(ZLandroid/content/Context;)V
    return-void
.end method
