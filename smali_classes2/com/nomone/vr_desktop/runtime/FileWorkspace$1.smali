.class public final synthetic Lcom/nomone/vr_desktop/runtime/FileWorkspace$1;
.super Ljava/lang/Object;
.implements Ljava/util/function/Function;
.source "D8$$SyntheticClass"

.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
  holder = "Lcom/nomone/vr_desktop/runtime/FileWorkspace;"
  method = "lambda$list$0"
  proto = "([Ljava/lang/String;)Ljava/lang/Boolean;"
.end annotation

.method public synthetic constructor <init>()V
  .registers 1
  .line 0
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
  .registers 2
  .line 0
    check-cast p1, [Ljava/lang/String;
    invoke-static { p1 }, Lcom/nomone/vr_desktop/runtime/FileWorkspace;->lambda$list$0([Ljava/lang/String;)Ljava/lang/Boolean;
    move-result-object p1
    return-object p1
.end method
