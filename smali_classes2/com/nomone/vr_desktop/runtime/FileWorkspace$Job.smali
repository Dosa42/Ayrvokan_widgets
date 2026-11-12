.class final Lcom/nomone/vr_desktop/runtime/FileWorkspace$Job;
.super Ljava/lang/Object;
.source "FileWorkspace.java"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcom/nomone/vr_desktop/runtime/FileWorkspace;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 26
  name = "Job"
.end annotation

.field volatile completed:I

.field volatile current:Ljava/lang/String;

.field volatile detail:Ljava/lang/String;

.field volatile error:Ljava/lang/String;

.field final from:Ljava/lang/String;

.field final id:Ljava/lang/String;

.field final operation:Ljava/lang/String;

.field final sources:Ljava/util/List;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/List<",
      "Ljava/lang/String;",
      ">;"
    }
  .end annotation
.end field

.field final started:J

.field volatile status:Ljava/lang/String;

.field final target:Ljava/lang/String;

.field final to:Ljava/lang/String;

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/lang/String;",
      "Ljava/lang/String;",
      "Ljava/lang/String;",
      "Ljava/lang/String;",
      "Ljava/util/List<",
      "Ljava/lang/String;",
      ">;)V"
    }
  .end annotation
  .registers 8
  .line 195
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 183
    invoke-static { }, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/util/UUID;->toString()Ljava/lang/String;
    move-result-object v0
    iput-object v0, p0, Lcom/nomone/vr_desktop/runtime/FileWorkspace$Job;->id:Ljava/lang/String;
  .line 189
    invoke-static { }, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v0
    iput-wide v0, p0, Lcom/nomone/vr_desktop/runtime/FileWorkspace$Job;->started:J
  .line 190
    const-string v0, "queued"
    iput-object v0, p0, Lcom/nomone/vr_desktop/runtime/FileWorkspace$Job;->status:Ljava/lang/String;
  .line 191
    const-string v0, ""
    iput-object v0, p0, Lcom/nomone/vr_desktop/runtime/FileWorkspace$Job;->current:Ljava/lang/String;
  .line 192
    iput-object v0, p0, Lcom/nomone/vr_desktop/runtime/FileWorkspace$Job;->detail:Ljava/lang/String;
  .line 193
    iput-object v0, p0, Lcom/nomone/vr_desktop/runtime/FileWorkspace$Job;->error:Ljava/lang/String;
  .line 196
    iput-object p1, p0, Lcom/nomone/vr_desktop/runtime/FileWorkspace$Job;->operation:Ljava/lang/String;
    iput-object p2, p0, Lcom/nomone/vr_desktop/runtime/FileWorkspace$Job;->from:Ljava/lang/String;
    iput-object p3, p0, Lcom/nomone/vr_desktop/runtime/FileWorkspace$Job;->to:Ljava/lang/String;
    iput-object p4, p0, Lcom/nomone/vr_desktop/runtime/FileWorkspace$Job;->target:Ljava/lang/String;
    iput-object p5, p0, Lcom/nomone/vr_desktop/runtime/FileWorkspace$Job;->sources:Ljava/util/List;
  .line 197
    return-void
.end method

.method json()Ljava/lang/String;
  .registers 4
  .line 199
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "{\"id\":"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget-object v1, p0, Lcom/nomone/vr_desktop/runtime/FileWorkspace$Job;->id:Ljava/lang/String;
    invoke-static { v1 }, Lcom/nomone/vr_desktop/runtime/FileWorkspace;->access$100(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ",\"operation\":"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget-object v1, p0, Lcom/nomone/vr_desktop/runtime/FileWorkspace$Job;->operation:Ljava/lang/String;
    invoke-static { v1 }, Lcom/nomone/vr_desktop/runtime/FileWorkspace;->access$100(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ",\"from\":"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget-object v1, p0, Lcom/nomone/vr_desktop/runtime/FileWorkspace$Job;->from:Ljava/lang/String;
    invoke-static { v1 }, Lcom/nomone/vr_desktop/runtime/FileWorkspace;->access$100(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ",\"to\":"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget-object v1, p0, Lcom/nomone/vr_desktop/runtime/FileWorkspace$Job;->to:Ljava/lang/String;
    invoke-static { v1 }, Lcom/nomone/vr_desktop/runtime/FileWorkspace;->access$100(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ",\"target\":"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget-object v1, p0, Lcom/nomone/vr_desktop/runtime/FileWorkspace$Job;->target:Ljava/lang/String;
  .line 200
    invoke-static { v1 }, Lcom/nomone/vr_desktop/runtime/FileWorkspace;->access$100(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ",\"status\":"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget-object v1, p0, Lcom/nomone/vr_desktop/runtime/FileWorkspace$Job;->status:Ljava/lang/String;
    invoke-static { v1 }, Lcom/nomone/vr_desktop/runtime/FileWorkspace;->access$100(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ",\"current\":"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget-object v1, p0, Lcom/nomone/vr_desktop/runtime/FileWorkspace$Job;->current:Ljava/lang/String;
    invoke-static { v1 }, Lcom/nomone/vr_desktop/runtime/FileWorkspace;->access$100(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ",\"detail\":"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget-object v1, p0, Lcom/nomone/vr_desktop/runtime/FileWorkspace$Job;->detail:Ljava/lang/String;
    invoke-static { v1 }, Lcom/nomone/vr_desktop/runtime/FileWorkspace;->access$100(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ",\"error\":"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget-object v1, p0, Lcom/nomone/vr_desktop/runtime/FileWorkspace$Job;->error:Ljava/lang/String;
  .line 201
    invoke-static { v1 }, Lcom/nomone/vr_desktop/runtime/FileWorkspace;->access$100(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ",\"completed\":"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget v1, p0, Lcom/nomone/vr_desktop/runtime/FileWorkspace$Job;->completed:I
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ",\"total\":"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget-object v1, p0, Lcom/nomone/vr_desktop/runtime/FileWorkspace$Job;->sources:Ljava/util/List;
    invoke-interface { v1 }, Ljava/util/List;->size()I
    move-result v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ",\"started\":"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget-wide v1, p0, Lcom/nomone/vr_desktop/runtime/FileWorkspace$Job;->started:J
    invoke-virtual { v0, v1, v2 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, "}"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
  .line 199
    return-object v0
.end method
