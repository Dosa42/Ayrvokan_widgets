.class public final synthetic Lcom/nomone/vr_desktop/runtime/MachineEngine$1;
.super Ljava/lang/Object;
.implements Ljava/util/function/Function;
.source "D8$$SyntheticClass"

.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
  holder = "Ljava/io/File;"
  method = "getName"
  proto = "()Ljava/lang/String;"
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
    check-cast p1, Ljava/io/File;
    invoke-virtual { p1 }, Ljava/io/File;->getName()Ljava/lang/String;
    move-result-object p1
    return-object p1
.end method
