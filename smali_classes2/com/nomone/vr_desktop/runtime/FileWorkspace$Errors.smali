.class final Lcom/nomone/vr_desktop/runtime/FileWorkspace$Errors;
.super Ljava/lang/Thread;
.source "FileWorkspace.java"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcom/nomone/vr_desktop/runtime/FileWorkspace;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 26
  name = "Errors"
.end annotation

.field bytes:[B

.field failure:Ljava/io/IOException;

.field final input:Ljava/io/InputStream;

.method constructor <init>(Ljava/io/InputStream;)V
  .registers 3
  .line 65
    invoke-direct { p0 }, Ljava/lang/Thread;-><init>()V
  .line 63
    const/4 v0, 0
    new-array v0, v0, [B
    iput-object v0, p0, Lcom/nomone/vr_desktop/runtime/FileWorkspace$Errors;->bytes:[B
  .line 65
    iput-object p1, p0, Lcom/nomone/vr_desktop/runtime/FileWorkspace$Errors;->input:Ljava/io/InputStream;
    const/4 p1, 1
    invoke-virtual { p0, p1 }, Lcom/nomone/vr_desktop/runtime/FileWorkspace$Errors;->setDaemon(Z)V
    invoke-virtual { p0 }, Lcom/nomone/vr_desktop/runtime/FileWorkspace$Errors;->start()V
    return-void
.end method

.method public run()V
  .catch Ljava/io/IOException; { :L0 .. :L1 } :L2
  .registers 2
  :L0
  .line 67
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/FileWorkspace$Errors;->input:Ljava/io/InputStream;
    invoke-static { v0 }, Lcom/nomone/vr_desktop/runtime/FileWorkspace;->access$000(Ljava/io/InputStream;)[B
    move-result-object v0
    iput-object v0, p0, Lcom/nomone/vr_desktop/runtime/FileWorkspace$Errors;->bytes:[B
  :L1
  .line 68
    goto :L3
  :L2
    move-exception v0
    iput-object v0, p0, Lcom/nomone/vr_desktop/runtime/FileWorkspace$Errors;->failure:Ljava/io/IOException;
  :L3
  .line 69
    return-void
.end method

.method text()Ljava/lang/String;
  .annotation system Ldalvik/annotation/Throws;
    value = {
      Ljava/io/IOException;,
      Ljava/lang/InterruptedException;
    }
  .end annotation
  .registers 4
  .line 71
    invoke-virtual { p0 }, Lcom/nomone/vr_desktop/runtime/FileWorkspace$Errors;->join()V
  .line 72
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/FileWorkspace$Errors;->failure:Ljava/io/IOException;
    if-nez v0, :L0
  .line 73
    new-instance v0, Ljava/lang/String;
    iget-object v1, p0, Lcom/nomone/vr_desktop/runtime/FileWorkspace$Errors;->bytes:[B
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;
    invoke-direct { v0, v1, v2 }, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    invoke-virtual { v0 }, Ljava/lang/String;->trim()Ljava/lang/String;
    move-result-object v0
    return-object v0
  :L0
  .line 72
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/FileWorkspace$Errors;->failure:Ljava/io/IOException;
    throw v0
.end method
