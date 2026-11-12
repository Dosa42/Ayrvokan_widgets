.class final Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;
.super Ljava/lang/Object;
.source "TerminalServer.java"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcom/nomone/vr_desktop/runtime/TerminalServer;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 18
  name = "Connection"
.end annotation

.field private volatile acknowledged:J

.field private volatile done:Z

.field private volatile id:Ljava/lang/String;

.field private final input:Ljava/io/InputStream;

.field private final output:Ljava/io/OutputStream;

.field private volatile sent:J

.field private final socket:Ljava/net/Socket;

.field final synthetic this$0:Lcom/nomone/vr_desktop/runtime/TerminalServer;

.method public static synthetic $r8$lambda$W2s46Ii67VMsObxINPk3uPwBUiI(Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;)V
  .registers 1
    invoke-direct { p0 }, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;->pump()V
    return-void
.end method

.method constructor <init>(Lcom/nomone/vr_desktop/runtime/TerminalServer;Ljava/net/Socket;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/net/URI;)V
  .annotation system Ldalvik/annotation/MethodParameters;
    accessFlags = {
      4112,
      0,
      0,
      0,
      0
    }
    names = {
      null,
      null,
      null,
      null,
      null
    }
  .end annotation
  .catch Ljava/lang/Exception; { :L1 .. :L2 } :L3
  .catch Ljava/lang/NumberFormatException; { :L5 .. :L6 } :L7
  .registers 11
  .line 300
    iput-object p1, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;->this$0:Lcom/nomone/vr_desktop/runtime/TerminalServer;
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 298
    const-string v0, ""
    iput-object v0, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;->id:Ljava/lang/String;
  .line 301
    iput-object p2, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;->socket:Ljava/net/Socket;
  .line 302
    iput-object p3, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;->input:Ljava/io/InputStream;
  .line 303
    iput-object p4, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;->output:Ljava/io/OutputStream;
  .line 304
    invoke-virtual { p5 }, Ljava/net/URI;->getRawQuery()Ljava/lang/String;
    move-result-object p2
    if-eqz p2, :L9
    invoke-virtual { p5 }, Ljava/net/URI;->getRawQuery()Ljava/lang/String;
    move-result-object p2
    const-string p3, "&"
    invoke-virtual { p2, p3 }, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object p2
    array-length p3, p2
    const/4 p4, 0
    move p5, p4
  :L0
    if-ge p5, p3, :L9
    aget-object v0, p2, p5
  .line 305
    const-string v1, "="
    const/4 v2, 2
    invoke-virtual { v0, v1, v2 }, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;
    move-result-object v0
  .line 306
    array-length v1, v0
    const/4 v3, 1
    if-ne v1, v2, :L4
    aget-object v1, v0, p4
    const-string v4, "session"
    invoke-virtual { v1, v4 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L4
  :L1
    aget-object v1, v0, v3
    const-string v4, "UTF-8"
    invoke-static { v1, v4 }, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    iput-object v1, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;->id:Ljava/lang/String;
  :L2
    goto :L4
  :L3
    move-exception v1
  :L4
  .line 307
    array-length v1, v0
    if-ne v1, v2, :L8
    aget-object v1, v0, p4
    const-string v2, "cursor"
    invoke-virtual { v1, v2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L8
  :L5
    aget-object v0, v0, v3
    invoke-static { v0 }, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    move-result-wide v0
    const-wide/16 v2, 0
    invoke-static { v2, v3, v0, v1 }, Ljava/lang/Math;->max(JJ)J
    move-result-wide v0
    iput-wide v0, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;->acknowledged:J
  :L6
    goto :L8
  :L7
    move-exception v0
  :L8
  .line 304
    add-int/lit8 p5, p5, 1
    goto :L0
  :L9
  .line 309
    iget-object p2, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;->id:Ljava/lang/String;
    invoke-virtual { p2 }, Ljava/lang/String;->isEmpty()Z
    move-result p2
    if-eqz p2, :L10
    invoke-static { p1 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->access$100(Lcom/nomone/vr_desktop/runtime/TerminalServer;)Lcom/nomone/vr_desktop/runtime/TerminalServer$Provider;
    move-result-object p1
    invoke-interface { p1 }, Lcom/nomone/vr_desktop/runtime/TerminalServer$Provider;->current()Lcom/nomone/vr_desktop/runtime/TerminalServer$State;
    move-result-object p1
    iget-object p1, p1, Lcom/nomone/vr_desktop/runtime/TerminalServer$State;->id:Ljava/lang/String;
    iput-object p1, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;->id:Ljava/lang/String;
  :L10
  .line 310
    iget-wide p1, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;->acknowledged:J
    iput-wide p1, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;->sent:J
  .line 311
    return-void
.end method

.method static synthetic access$000(Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;)V
  .annotation system Ldalvik/annotation/Throws;
    value = {
      Ljava/io/IOException;
    }
  .end annotation
  .registers 1
  .line 291
    invoke-direct { p0 }, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;->run()V
    return-void
.end method

.method private declared-synchronized frame(I[B)V
  .annotation system Ldalvik/annotation/Throws;
    value = {
      Ljava/io/IOException;
    }
  .end annotation
  .catchall { :L0 .. :L1 } :L6
  .catchall { :L2 .. :L5 } :L6
  .catchall { :L7 .. :L8 } :L6
  .registers 5
    monitor-enter p0
  :L0
  .line 314
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;->output:Ljava/io/OutputStream;
    or-int/lit16 p1, p1, 128
    invoke-virtual { v0, p1 }, Ljava/io/OutputStream;->write(I)V
  .line 315
    array-length p1, p2
  :L1
  .line 316
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;->output:Ljava/io/OutputStream;
  .line 315
    const/16 v1, 126
    if-ge p1, v1, :L3
  :L2
    array-length p1, p2
    invoke-virtual { v0, p1 }, Ljava/io/OutputStream;->write(I)V
    goto :L4
  :L3
  .line 316
    invoke-virtual { v0, v1 }, Ljava/io/OutputStream;->write(I)V
    iget-object p1, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;->output:Ljava/io/OutputStream;
    array-length v0, p2
    ushr-int/lit8 v0, v0, 8
    invoke-virtual { p1, v0 }, Ljava/io/OutputStream;->write(I)V
    iget-object p1, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;->output:Ljava/io/OutputStream;
    array-length v0, p2
    and-int/lit16 v0, v0, 255
    invoke-virtual { p1, v0 }, Ljava/io/OutputStream;->write(I)V
  :L4
  .line 317
    iget-object p1, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;->output:Ljava/io/OutputStream;
    invoke-virtual { p1, p2 }, Ljava/io/OutputStream;->write([B)V
  .line 318
    iget-object p1, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;->output:Ljava/io/OutputStream;
    invoke-virtual { p1 }, Ljava/io/OutputStream;->flush()V
  :L5
  .line 319
    monitor-exit p0
    return-void
  :L6
  .line 313
    move-exception p1
  :L7
    monitor-exit p0
  :L8
    throw p1
.end method

.method private pump()V
  .catch Ljava/lang/Exception; { :L1 .. :L9 } :L17
  .catchall { :L1 .. :L9 } :L12
  .catch Ljava/io/IOException; { :L10 .. :L11 } :L21
  .catch Ljava/io/IOException; { :L13 .. :L14 } :L15
  .catch Ljava/io/IOException; { :L18 .. :L20 } :L21
  .registers 10
  .line 324
    const-string v0, ""
  :L0
  .line 326
    const/4 v1, 1
  :L1
    iget-boolean v2, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;->done:Z
    if-nez v2, :L9
    iget-object v2, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;->this$0:Lcom/nomone/vr_desktop/runtime/TerminalServer;
    invoke-static { v2 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->access$200(Lcom/nomone/vr_desktop/runtime/TerminalServer;)Z
    move-result v2
    if-nez v2, :L9
  .line 327
    iget-object v2, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;->this$0:Lcom/nomone/vr_desktop/runtime/TerminalServer;
    invoke-static { v2 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->access$100(Lcom/nomone/vr_desktop/runtime/TerminalServer;)Lcom/nomone/vr_desktop/runtime/TerminalServer$Provider;
    move-result-object v2
    iget-object v3, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;->id:Ljava/lang/String;
    invoke-interface { v2, v3 }, Lcom/nomone/vr_desktop/runtime/TerminalServer$Provider;->find(Ljava/lang/String;)Lcom/nomone/vr_desktop/runtime/TerminalServer$State;
    move-result-object v2
  .line 328
    if-eqz v2, :L8
  .line 329
    iget-object v3, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;->id:Ljava/lang/String;
    iget-object v4, v2, Lcom/nomone/vr_desktop/runtime/TerminalServer$State;->id:Ljava/lang/String;
    invoke-virtual { v3, v4 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-nez v3, :L2
  .line 330
    iget-object v3, v2, Lcom/nomone/vr_desktop/runtime/TerminalServer$State;->id:Ljava/lang/String;
    iput-object v3, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;->id:Ljava/lang/String;
  .line 331
    const-wide/16 v3, 0
    iput-wide v3, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;->sent:J
    iput-wide v3, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;->acknowledged:J
  .line 332
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "{\"type\":\"reset\",\"session\":"
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    iget-object v4, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;->id:Ljava/lang/String;
    invoke-static { v4 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->quote(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v4
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    const-string v4, "}"
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-direct { p0, v3 }, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;->text(Ljava/lang/String;)V
  :L2
  .line 334
    invoke-static { v2 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->access$300(Lcom/nomone/vr_desktop/runtime/TerminalServer$State;)Ljava/lang/String;
    move-result-object v3
  .line 335
    invoke-virtual { v3, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v4
    if-nez v4, :L3
    invoke-direct { p0, v3 }, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;->text(Ljava/lang/String;)V
    move-object v0, v3
  :L3
  .line 336
    iget-object v3, v2, Lcom/nomone/vr_desktop/runtime/TerminalServer$State;->session:Lcom/nomone/vr_desktop/runtime/PtySession;
    if-eqz v3, :L7
    iget-wide v3, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;->acknowledged:J
    iget-wide v5, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;->sent:J
    cmp-long v3, v3, v5
    if-nez v3, :L7
  .line 337
    iget-object v2, v2, Lcom/nomone/vr_desktop/runtime/TerminalServer$State;->session:Lcom/nomone/vr_desktop/runtime/PtySession;
    iget-wide v3, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;->acknowledged:J
    invoke-virtual { v2, v3, v4 }, Lcom/nomone/vr_desktop/runtime/PtySession;->output(J)Lcom/nomone/vr_desktop/runtime/PtySession$Output;
    move-result-object v2
  .line 338
    iget-boolean v3, v2, Lcom/nomone/vr_desktop/runtime/PtySession$Output;->truncated:Z
    if-eqz v3, :L4
    const-string v3, "{\"type\":\"truncated\"}"
    invoke-direct { p0, v3 }, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;->text(Ljava/lang/String;)V
  :L4
  .line 339
    iget-object v3, v2, Lcom/nomone/vr_desktop/runtime/PtySession$Output;->bytes:[B
    array-length v3, v3
    if-lez v3, :L7
  .line 340
    iget-object v3, v2, Lcom/nomone/vr_desktop/runtime/PtySession$Output;->bytes:[B
    array-length v3, v3
    const/16 v4, 8
    add-int/2addr v3, v4
    new-array v3, v3, [B
  .line 341
    iget-wide v5, v2, Lcom/nomone/vr_desktop/runtime/PtySession$Output;->cursor:J
  .line 342
    const/4 v7, 7
  :L5
    if-ltz v7, :L6
    long-to-int v8, v5
    int-to-byte v8, v8
    aput-byte v8, v3, v7
    ushr-long/2addr v5, v4
    add-int/lit8 v7, v7, -1
    goto :L5
  :L6
  .line 343
    iget-object v5, v2, Lcom/nomone/vr_desktop/runtime/PtySession$Output;->bytes:[B
    iget-object v6, v2, Lcom/nomone/vr_desktop/runtime/PtySession$Output;->bytes:[B
    array-length v6, v6
    const/4 v7, 0
    invoke-static { v5, v7, v3, v4, v6 }, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
  .line 344
    iget-wide v4, v2, Lcom/nomone/vr_desktop/runtime/PtySession$Output;->cursor:J
    iput-wide v4, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;->sent:J
  .line 345
    const/4 v2, 2
    invoke-direct { p0, v2, v3 }, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;->frame(I[B)V
  :L7
  .line 348
    const-wide/16 v2, 20
    invoke-static { v2, v3 }, Ljava/lang/Thread;->sleep(J)V
  .line 349
    goto/16 :L0
  :L8
  .line 328
    new-instance v0, Ljava/io/IOException;
    const-string v2, "Onbekende terminalsessie"
    invoke-direct { v0, v2 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw v0
  :L9
  .line 352
    iput-boolean v1, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;->done:Z
  :L10
  .line 353
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;->socket:Ljava/net/Socket;
  :L11
    goto :L19
  :L12
  .line 352
    move-exception v0
    iput-boolean v1, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;->done:Z
  :L13
  .line 353
    iget-object v1, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;->socket:Ljava/net/Socket;
    invoke-virtual { v1 }, Ljava/net/Socket;->close()V
  :L14
    goto :L16
  :L15
    move-exception v1
  :L16
  .line 354
    throw v0
  :L17
  .line 350
    move-exception v0
  .line 352
    iput-boolean v1, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;->done:Z
  :L18
  .line 353
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;->socket:Ljava/net/Socket;
  :L19
    invoke-virtual { v0 }, Ljava/net/Socket;->close()V
  :L20
    goto :L22
  :L21
    move-exception v0
  .line 354
    nop
  :L22
  .line 355
    return-void
.end method

.method private readByte()I
  .annotation system Ldalvik/annotation/Throws;
    value = {
      Ljava/io/IOException;
    }
  .end annotation
  .registers 2
  .line 409
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;->input:Ljava/io/InputStream;
    invoke-virtual { v0 }, Ljava/io/InputStream;->read()I
    move-result v0
  .line 410
    if-ltz v0, :L0
  .line 411
    return v0
  :L0
  .line 410
    new-instance v0, Ljava/io/EOFException;
    invoke-direct { v0 }, Ljava/io/EOFException;-><init>()V
    throw v0
.end method

.method private run()V
  .annotation system Ldalvik/annotation/Throws;
    value = {
      Ljava/io/IOException;
    }
  .end annotation
  .catchall { :L1 .. :L31 } :L32
  .registers 15
  .line 358
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;->this$0:Lcom/nomone/vr_desktop/runtime/TerminalServer;
    invoke-static { v0 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->access$400(Lcom/nomone/vr_desktop/runtime/TerminalServer;)Ljava/util/concurrent/ExecutorService;
    move-result-object v0
    new-instance v1, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection$0;
    invoke-direct { v1, p0 }, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection$0;-><init>(Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;)V
    invoke-interface { v0, v1 }, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
  .line 359
    new-instance v0, Ljava/io/ByteArrayOutputStream;
    invoke-direct { v0 }, Ljava/io/ByteArrayOutputStream;-><init>()V
  .line 360
    const/4 v1, 0
    move v2, v1
  :L0
  .line 362
    const/4 v3, 1
  :L1
    iget-boolean v4, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;->done:Z
    if-nez v4, :L31
    iget-object v4, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;->this$0:Lcom/nomone/vr_desktop/runtime/TerminalServer;
    invoke-static { v4 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->access$200(Lcom/nomone/vr_desktop/runtime/TerminalServer;)Z
    move-result v4
    if-nez v4, :L31
  .line 363
    iget-object v4, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;->input:Ljava/io/InputStream;
    invoke-virtual { v4 }, Ljava/io/InputStream;->read()I
    move-result v4
  .line 364
    if-gez v4, :L2
    goto/16 :L31
  :L2
  .line 365
    invoke-direct { p0 }, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;->readByte()I
    move-result v5
  .line 366
    and-int/lit8 v6, v4, 15
  .line 367
    and-int/lit16 v7, v4, 128
    if-eqz v7, :L3
    move v7, v3
    goto :L4
  :L3
    move v7, v1
  :L4
  .line 368
    and-int/lit8 v4, v4, 112
    if-nez v4, :L30
    and-int/lit16 v4, v5, 128
    if-eqz v4, :L30
  .line 369
    and-int/lit8 v4, v5, 127
    int-to-long v4, v4
  .line 370
    const-wide/16 v8, 126
    cmp-long v8, v4, v8
    const-wide/16 v9, 0
    const/16 v11, 8
    if-nez v8, :L5
    invoke-direct { p0 }, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;->readByte()I
    move-result v4
    shl-int/2addr v4, v11
    invoke-direct { p0 }, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;->readByte()I
    move-result v5
    or-int/2addr v4, v5
    int-to-long v4, v4
    goto :L7
  :L5
  .line 371
    const-wide/16 v12, 127
    cmp-long v8, v4, v12
    if-nez v8, :L7
    move v8, v1
    move-wide v4, v9
  :L6
    if-ge v8, v11, :L7
    shl-long/2addr v4, v11
    invoke-direct { p0 }, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;->readByte()I
    move-result v12
    int-to-long v12, v12
    or-long/2addr v4, v12
    add-int/lit8 v8, v8, 1
    goto :L6
  :L7
  .line 372
    cmp-long v8, v4, v9
    if-ltz v8, :L29
    const-wide/32 v8, 65536
    cmp-long v8, v4, v8
    if-gtz v8, :L29
    if-lt v6, v11, :L8
    if-eqz v7, :L29
    const-wide/16 v8, 125
    cmp-long v8, v4, v8
    if-gtz v8, :L29
  :L8
  .line 373
    const/4 v8, 4
    new-array v9, v8, [B
  .line 374
    move v10, v1
  :L9
    if-ge v10, v8, :L10
    invoke-direct { p0 }, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;->readByte()I
    move-result v12
    int-to-byte v12, v12
    aput-byte v12, v9, v10
    add-int/lit8 v10, v10, 1
    goto :L9
  :L10
  .line 375
    long-to-int v4, v4
    new-array v5, v4, [B
  .line 376
    move v10, v1
  :L11
    if-ge v10, v4, :L12
    invoke-direct { p0 }, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;->readByte()I
    move-result v12
    rem-int/lit8 v13, v10, 4
    aget-byte v13, v9, v13
    xor-int/2addr v12, v13
    int-to-byte v12, v12
    aput-byte v12, v5, v10
    add-int/lit8 v10, v10, 1
    goto :L11
  :L12
  .line 377
    if-ne v6, v11, :L13
    invoke-direct { p0, v11, v5 }, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;->frame(I[B)V
    goto/16 :L31
  :L13
  .line 378
    const/16 v4, 9
    const/16 v9, 10
    if-ne v6, v4, :L14
    invoke-direct { p0, v9, v5 }, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;->frame(I[B)V
    goto/16 :L0
  :L14
  .line 379
    if-ne v6, v9, :L15
    goto/16 :L0
  :L15
  .line 380
    const/4 v4, 2
    if-eqz v6, :L18
  .line 381
    if-nez v2, :L17
    if-eq v6, v3, :L16
    if-ne v6, v4, :L17
  :L16
  .line 382
    move v2, v6
    goto :L19
  :L17
  .line 381
    new-instance v0, Ljava/io/IOException;
    const-string v1, "Invalid WebSocket opcode"
    invoke-direct { v0, v1 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw v0
  :L18
  .line 383
    if-eqz v2, :L28
  :L19
  .line 384
    invoke-virtual { v0, v5 }, Ljava/io/ByteArrayOutputStream;->write([B)V
  .line 385
    invoke-virtual { v0 }, Ljava/io/ByteArrayOutputStream;->size()I
    move-result v5
    const/high16 v6, 65536
    if-gt v5, v6, :L27
  .line 386
    if-nez v7, :L20
    goto/16 :L0
  :L20
  .line 387
    invoke-virtual { v0 }, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    move-result-object v5
  .line 388
    if-ne v2, v3, :L24
  .line 389
    new-instance v2, Ljava/lang/String;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;
    invoke-direct { v2, v5, v6 }, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
  .line 390
    const-string v5, "ack:"
    invoke-virtual { v2, v5 }, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v5
    if-eqz v5, :L21
  .line 391
    invoke-virtual { v2, v8 }, Ljava/lang/String;->substring(I)Ljava/lang/String;
    move-result-object v2
    invoke-static { v2 }, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    move-result-wide v4
  .line 392
    iget-wide v6, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;->sent:J
    cmp-long v2, v4, v6
    if-nez v2, :L22
    iput-wide v4, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;->acknowledged:J
    goto :L22
  :L21
  .line 393
    const-string v5, "resize:"
    invoke-virtual { v2, v5 }, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v5
    if-eqz v5, :L22
  .line 394
    const-string v5, ":"
    invoke-virtual { v2, v5 }, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object v2
  .line 395
    iget-object v5, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;->this$0:Lcom/nomone/vr_desktop/runtime/TerminalServer;
    invoke-static { v5 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->access$100(Lcom/nomone/vr_desktop/runtime/TerminalServer;)Lcom/nomone/vr_desktop/runtime/TerminalServer$Provider;
    move-result-object v5
    iget-object v6, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;->id:Ljava/lang/String;
    invoke-interface { v5, v6 }, Lcom/nomone/vr_desktop/runtime/TerminalServer$Provider;->find(Ljava/lang/String;)Lcom/nomone/vr_desktop/runtime/TerminalServer$State;
    move-result-object v5
  .line 396
    if-eqz v5, :L23
    array-length v6, v2
    const/4 v7, 3
    if-ne v6, v7, :L23
    iget-object v6, v5, Lcom/nomone/vr_desktop/runtime/TerminalServer$State;->session:Lcom/nomone/vr_desktop/runtime/PtySession;
    if-eqz v6, :L23
    iget-object v6, v5, Lcom/nomone/vr_desktop/runtime/TerminalServer$State;->session:Lcom/nomone/vr_desktop/runtime/PtySession;
    invoke-virtual { v6 }, Lcom/nomone/vr_desktop/runtime/PtySession;->running()Z
    move-result v6
    if-eqz v6, :L23
    iget-object v5, v5, Lcom/nomone/vr_desktop/runtime/TerminalServer$State;->session:Lcom/nomone/vr_desktop/runtime/PtySession;
    aget-object v6, v2, v3
    invoke-static { v6 }, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v6
    aget-object v2, v2, v4
    invoke-static { v2 }, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v2
    invoke-virtual { v5, v6, v2 }, Lcom/nomone/vr_desktop/runtime/PtySession;->resize(II)V
    goto :L23
  :L22
  .line 393
    nop
  :L23
  .line 398
    goto :L26
  :L24
  .line 399
    iget-object v2, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;->this$0:Lcom/nomone/vr_desktop/runtime/TerminalServer;
    invoke-static { v2 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->access$100(Lcom/nomone/vr_desktop/runtime/TerminalServer;)Lcom/nomone/vr_desktop/runtime/TerminalServer$Provider;
    move-result-object v2
    iget-object v4, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;->id:Ljava/lang/String;
    invoke-interface { v2, v4 }, Lcom/nomone/vr_desktop/runtime/TerminalServer$Provider;->find(Ljava/lang/String;)Lcom/nomone/vr_desktop/runtime/TerminalServer$State;
    move-result-object v2
  .line 400
    if-eqz v2, :L26
    iget-object v4, v2, Lcom/nomone/vr_desktop/runtime/TerminalServer$State;->session:Lcom/nomone/vr_desktop/runtime/PtySession;
    if-eqz v4, :L26
    iget-object v4, v2, Lcom/nomone/vr_desktop/runtime/TerminalServer$State;->session:Lcom/nomone/vr_desktop/runtime/PtySession;
    invoke-virtual { v4 }, Lcom/nomone/vr_desktop/runtime/PtySession;->running()Z
    move-result v4
    if-eqz v4, :L26
    move v4, v1
  :L25
    array-length v6, v5
    if-ge v4, v6, :L26
    iget-object v6, v2, Lcom/nomone/vr_desktop/runtime/TerminalServer$State;->session:Lcom/nomone/vr_desktop/runtime/PtySession;
    array-length v7, v5
    add-int/lit16 v8, v4, 16384
    invoke-static { v7, v8 }, Ljava/lang/Math;->min(II)I
    move-result v7
    invoke-static { v5, v4, v7 }, Ljava/util/Arrays;->copyOfRange([BII)[B
    move-result-object v4
    invoke-virtual { v6, v4 }, Lcom/nomone/vr_desktop/runtime/PtySession;->write([B)V
    move v4, v8
    goto :L25
  :L26
  .line 402
    invoke-virtual { v0 }, Ljava/io/ByteArrayOutputStream;->reset()V
  .line 403
    nop
  .line 404
    move v2, v1
    goto/16 :L0
  :L27
  .line 385
    new-instance v0, Ljava/io/IOException;
    const-string v1, "WebSocket message exceeds 65536 bytes"
    invoke-direct { v0, v1 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw v0
  :L28
  .line 383
    new-instance v0, Ljava/io/IOException;
    const-string v1, "Unexpected continuation"
    invoke-direct { v0, v1 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw v0
  :L29
  .line 372
    new-instance v0, Ljava/io/IOException;
    const-string v1, "Invalid WebSocket length"
    invoke-direct { v0, v1 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw v0
  :L30
  .line 368
    new-instance v0, Ljava/io/IOException;
    const-string v1, "Invalid WebSocket frame"
    invoke-direct { v0, v1 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw v0
  :L31
  .line 405
    iput-boolean v3, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;->done:Z
  .line 406
    return-void
  :L32
  .line 405
    move-exception v0
    iput-boolean v3, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;->done:Z
    throw v0
.end method

.method private text(Ljava/lang/String;)V
  .annotation system Ldalvik/annotation/Throws;
    value = {
      Ljava/io/IOException;
    }
  .end annotation
  .registers 3
  .line 321
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;
    invoke-virtual { p1, v0 }, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
    move-result-object p1
    const/4 v0, 1
    invoke-direct { p0, v0, p1 }, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;->frame(I[B)V
    return-void
.end method
