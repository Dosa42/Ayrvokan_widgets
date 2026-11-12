.class final Lcom/nomone/vr_desktop/runtime/MachineEngine$Order;
.super Ljava/lang/Object;
.source "MachineEngine.java"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcom/nomone/vr_desktop/runtime/MachineEngine;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 18
  name = "Order"
.end annotation

.field final data:Ljava/util/Properties;

.field process:Ljava/lang/Process;

.field final record:Ljava/io/File;

.field final synthetic this$0:Lcom/nomone/vr_desktop/runtime/MachineEngine;

.method constructor <init>(Lcom/nomone/vr_desktop/runtime/MachineEngine;Ljava/io/File;Ljava/util/Properties;)V
  .annotation system Ldalvik/annotation/MethodParameters;
    accessFlags = {
      4112,
      0,
      0
    }
    names = {
      null,
      null,
      null
    }
  .end annotation
  .registers 4
  .line 36
    iput-object p1, p0, Lcom/nomone/vr_desktop/runtime/MachineEngine$Order;->this$0:Lcom/nomone/vr_desktop/runtime/MachineEngine;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    iput-object p2, p0, Lcom/nomone/vr_desktop/runtime/MachineEngine$Order;->record:Ljava/io/File;
    iput-object p3, p0, Lcom/nomone/vr_desktop/runtime/MachineEngine$Order;->data:Ljava/util/Properties;
    return-void
.end method

.method json()Ljava/lang/String;
  .annotation system Ldalvik/annotation/Throws;
    value = {
      Ljava/io/IOException;
    }
  .end annotation
  .registers 13
  .line 40
    new-instance v0, Ljava/lang/StringBuilder;
    const-string v1, "{"
    invoke-direct { v0, v1 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
  .line 41
    const-string v10, "error"
    const-string v11, "checklist"
    const-string v2, "id"
    const-string v3, "source"
    const-string v4, "cwd"
    const-string v5, "status"
    const-string v6, "created"
    const-string v7, "started"
    const-string v8, "finished"
    const-string v9, "exit"
    filled-new-array/range { v2 .. v11 }, [Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    move-result-object v1
    invoke-interface { v1 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v1
  :L0
    invoke-interface { v1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    const/16 v3, 44
    if-eqz v2, :L2
    invoke-interface { v1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/String;
  .line 42
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->length()I
    move-result v4
    const/4 v5, 1
    if-le v4, v5, :L1
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
  :L1
  .line 43
    invoke-static { v2 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->quote(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    const/16 v4, 58
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    move-result-object v3
    iget-object v4, p0, Lcom/nomone/vr_desktop/runtime/MachineEngine$Order;->data:Ljava/util/Properties;
    const-string v5, ""
    invoke-virtual { v4, v2, v5 }, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    invoke-static { v2 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->quote(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    invoke-virtual { v3, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 44
    goto :L0
  :L2
  .line 45
    const-string v1, ",\"argv\":["
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 46
    iget-object v1, p0, Lcom/nomone/vr_desktop/runtime/MachineEngine$Order;->data:Ljava/util/Properties;
    const-string v2, "argc"
    const-string v4, "0"
    invoke-virtual { v1, v2, v4 }, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v1
  .line 47
    const/4 v2, 0
  :L3
    if-ge v2, v1, :L5
  .line 48
    if-lez v2, :L4
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
  :L4
  .line 49
    iget-object v4, p0, Lcom/nomone/vr_desktop/runtime/MachineEngine$Order;->data:Ljava/util/Properties;
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct { v5 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v6, "arg."
    invoke-virtual { v5, v6 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v5
    invoke-virtual { v5, v2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v5
    invoke-virtual { v5 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-virtual { v4, v5 }, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v4
    invoke-static { v4 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->quote(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v4
    invoke-virtual { v0, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 47
    add-int/lit8 v2, v2, 1
    goto :L3
  :L5
  .line 51
    const-string v1, "],\"stdout\":"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, "stdout"
    invoke-virtual { p0, v1 }, Lcom/nomone/vr_desktop/runtime/MachineEngine$Order;->stream(Ljava/lang/String;)Ljava/io/File;
    move-result-object v1
    invoke-static { v1 }, Lcom/nomone/vr_desktop/runtime/MachineEngine;->access$200(Ljava/io/File;)Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->quote(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
  .line 52
    const-string v1, ",\"stderr\":"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, "stderr"
    invoke-virtual { p0, v1 }, Lcom/nomone/vr_desktop/runtime/MachineEngine$Order;->stream(Ljava/lang/String;)Ljava/io/File;
    move-result-object v1
    invoke-static { v1 }, Lcom/nomone/vr_desktop/runtime/MachineEngine;->access$200(Ljava/io/File;)Ljava/lang/String;
    move-result-object v1
    invoke-static { v1 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->quote(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    const/16 v1, 125
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
  .line 51
    return-object v0
.end method

.method save()V
  .annotation system Ldalvik/annotation/Throws;
    value = {
      Ljava/io/IOException;
    }
  .end annotation
  .registers 3
  .line 38
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/MachineEngine$Order;->record:Ljava/io/File;
    iget-object v1, p0, Lcom/nomone/vr_desktop/runtime/MachineEngine$Order;->data:Ljava/util/Properties;
    invoke-static { v0, v1 }, Lcom/nomone/vr_desktop/runtime/MachineEngine;->access$100(Ljava/io/File;Ljava/util/Properties;)V
    return-void
.end method

.method stream(Ljava/lang/String;)Ljava/io/File;
  .registers 6
  .line 37
    new-instance v0, Ljava/io/File;
    iget-object v1, p0, Lcom/nomone/vr_desktop/runtime/MachineEngine$Order;->this$0:Lcom/nomone/vr_desktop/runtime/MachineEngine;
    invoke-static { v1 }, Lcom/nomone/vr_desktop/runtime/MachineEngine;->access$000(Lcom/nomone/vr_desktop/runtime/MachineEngine;)Ljava/io/File;
    move-result-object v1
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct { v2 }, Ljava/lang/StringBuilder;-><init>()V
    iget-object v3, p0, Lcom/nomone/vr_desktop/runtime/MachineEngine$Order;->record:Ljava/io/File;
    invoke-virtual { v3 }, Ljava/io/File;->getName()Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    const-string v3, "."
    invoke-virtual { v2, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object p1
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { v0, v1, p1 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    return-object v0
.end method
