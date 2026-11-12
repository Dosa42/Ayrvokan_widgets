.class public final synthetic Lcom/nomone/vr_desktop/runtime/MachineEngine$0;
.super Ljava/lang/Object;
.implements Ljava/io/FilenameFilter;
.source "D8$$SyntheticClass"

.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
  holder = "Lcom/nomone/vr_desktop/runtime/MachineEngine;"
  method = "lambda$new$0"
  proto = "(Ljava/io/File;Ljava/lang/String;)Z"
.end annotation

.method public synthetic constructor <init>()V
  .registers 1
  .line 0
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
  .registers 3
  .line 0
    invoke-static { p1, p2 }, Lcom/nomone/vr_desktop/runtime/MachineEngine;->lambda$new$0(Ljava/io/File;Ljava/lang/String;)Z
    move-result p1
    return p1
.end method
