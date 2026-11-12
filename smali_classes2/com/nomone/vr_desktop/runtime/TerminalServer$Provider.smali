.class public interface abstract Lcom/nomone/vr_desktop/runtime/TerminalServer$Provider;
.super Ljava/lang/Object;
.source "TerminalServer.java"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcom/nomone/vr_desktop/runtime/TerminalServer;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 1545
  name = "Provider"
.end annotation

.method public create()Lcom/nomone/vr_desktop/runtime/TerminalServer$State;
  .annotation system Ldalvik/annotation/Throws;
    value = {
      Ljava/io/IOException;
    }
  .end annotation
  .registers 3
  .line 34
    new-instance v0, Ljava/io/IOException;
    const-string v1, "Nieuwe sessies zijn niet beschikbaar"
    invoke-direct { v0, v1 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw v0
.end method

.method public abstract current()Lcom/nomone/vr_desktop/runtime/TerminalServer$State;
.end method

.method public find(Ljava/lang/String;)Lcom/nomone/vr_desktop/runtime/TerminalServer$State;
  .registers 4
  .line 31
    invoke-interface { p0 }, Lcom/nomone/vr_desktop/runtime/TerminalServer$Provider;->current()Lcom/nomone/vr_desktop/runtime/TerminalServer$State;
    move-result-object v0
  .line 32
    if-eqz p1, :L1
    invoke-virtual { p1 }, Ljava/lang/String;->isEmpty()Z
    move-result v1
    if-nez v1, :L1
    iget-object v1, v0, Lcom/nomone/vr_desktop/runtime/TerminalServer$State;->id:Ljava/lang/String;
    invoke-virtual { p1, v1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p1
    if-eqz p1, :L0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    return-object v0
.end method

.method public list()[Lcom/nomone/vr_desktop/runtime/TerminalServer$State;
  .registers 4
  .line 35
    const/4 v0, 1
    new-array v0, v0, [Lcom/nomone/vr_desktop/runtime/TerminalServer$State;
    const/4 v1, 0
    invoke-interface { p0 }, Lcom/nomone/vr_desktop/runtime/TerminalServer$Provider;->current()Lcom/nomone/vr_desktop/runtime/TerminalServer$State;
    move-result-object v2
    aput-object v2, v0, v1
    return-object v0
.end method

.method public stop(Ljava/lang/String;)V
  .annotation system Ldalvik/annotation/Throws;
    value = {
      Ljava/io/IOException;
    }
  .end annotation
  .registers 3
  .line 37
    invoke-interface { p0, p1 }, Lcom/nomone/vr_desktop/runtime/TerminalServer$Provider;->find(Ljava/lang/String;)Lcom/nomone/vr_desktop/runtime/TerminalServer$State;
    move-result-object p1
  .line 38
    if-eqz p1, :L0
    iget-object v0, p1, Lcom/nomone/vr_desktop/runtime/TerminalServer$State;->session:Lcom/nomone/vr_desktop/runtime/PtySession;
    if-eqz v0, :L0
  .line 39
    iget-object p1, p1, Lcom/nomone/vr_desktop/runtime/TerminalServer$State;->session:Lcom/nomone/vr_desktop/runtime/PtySession;
    invoke-virtual { p1 }, Lcom/nomone/vr_desktop/runtime/PtySession;->stop()V
  .line 40
    return-void
  :L0
  .line 38
    new-instance p1, Ljava/io/IOException;
    const-string v0, "Onbekende terminalsessie"
    invoke-direct { p1, v0 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw p1
.end method
