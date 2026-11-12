.class public final Lcom/nomone/vr_desktop/runtime/TerminalServer;
.super Ljava/lang/Object;
.implements Ljava/io/Closeable;
.source "TerminalServer.java"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcom/nomone/vr_desktop/runtime/TerminalServer$State;,
    Lcom/nomone/vr_desktop/runtime/TerminalServer$Provider;,
    Lcom/nomone/vr_desktop/runtime/TerminalServer$Assets;,
    Lcom/nomone/vr_desktop/runtime/TerminalServer$Control;,
    Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;
  }
.end annotation

.field private final assets:Lcom/nomone/vr_desktop/runtime/TerminalServer$Assets;

.field private final clients:Ljava/util/concurrent/ExecutorService;

.field private volatile closed:Z

.field private final control:Lcom/nomone/vr_desktop/runtime/TerminalServer$Control;

.field private final files:Lcom/nomone/vr_desktop/runtime/FileWorkspace;

.field private final listener:Ljava/net/ServerSocket;

.field private final provider:Lcom/nomone/vr_desktop/runtime/TerminalServer$Provider;

.field private final sockets:Ljava/util/Set;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/Set<",
      "Ljava/net/Socket;",
      ">;"
    }
  .end annotation
.end field

.method public static synthetic $r8$lambda$4fXOlwVlAtZTzi_DaqlM_CdGq8c(Lcom/nomone/vr_desktop/runtime/TerminalServer;)V
  .registers 1
    invoke-direct { p0 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->accept()V
    return-void
.end method

.method public constructor <init>(ILcom/nomone/vr_desktop/runtime/TerminalServer$Assets;Lcom/nomone/vr_desktop/runtime/TerminalServer$Provider;)V
  .annotation system Ldalvik/annotation/Throws;
    value = {
      Ljava/io/IOException;
    }
  .end annotation
  .registers 5
  .line 78
    const/4 v0, 0
    invoke-direct { p0, p1, p2, p3, v0 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;-><init>(ILcom/nomone/vr_desktop/runtime/TerminalServer$Assets;Lcom/nomone/vr_desktop/runtime/TerminalServer$Provider;Lcom/nomone/vr_desktop/runtime/FileWorkspace;)V
  .line 79
    return-void
.end method

.method public constructor <init>(ILcom/nomone/vr_desktop/runtime/TerminalServer$Assets;Lcom/nomone/vr_desktop/runtime/TerminalServer$Provider;Lcom/nomone/vr_desktop/runtime/FileWorkspace;)V
  .annotation system Ldalvik/annotation/Throws;
    value = {
      Ljava/io/IOException;
    }
  .end annotation
  .registers 11
  .line 82
    const/4 v5, 0
    move-object v0, p0
    move v1, p1
    move-object v2, p2
    move-object v3, p3
    move-object v4, p4
    invoke-direct/range { v0 .. v5 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;-><init>(ILcom/nomone/vr_desktop/runtime/TerminalServer$Assets;Lcom/nomone/vr_desktop/runtime/TerminalServer$Provider;Lcom/nomone/vr_desktop/runtime/FileWorkspace;Lcom/nomone/vr_desktop/runtime/TerminalServer$Control;)V
  .line 83
    return-void
.end method

.method public constructor <init>(ILcom/nomone/vr_desktop/runtime/TerminalServer$Assets;Lcom/nomone/vr_desktop/runtime/TerminalServer$Provider;Lcom/nomone/vr_desktop/runtime/FileWorkspace;Lcom/nomone/vr_desktop/runtime/TerminalServer$Control;)V
  .annotation system Ldalvik/annotation/Throws;
    value = {
      Ljava/io/IOException;
    }
  .end annotation
  .catch Ljava/io/IOException; { :L0 .. :L1 } :L2
  .registers 7
  .line 85
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 69
    invoke-static { }, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;
    move-result-object v0
    iput-object v0, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer;->sockets:Ljava/util/Set;
  .line 70
    new-instance v0, Lcom/nomone/vr_desktop/runtime/TerminalServer$0;
    invoke-direct { v0 }, Lcom/nomone/vr_desktop/runtime/TerminalServer$0;-><init>()V
    invoke-static { v0 }, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;
    move-result-object v0
    iput-object v0, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer;->clients:Ljava/util/concurrent/ExecutorService;
  .line 86
    iput-object p5, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer;->control:Lcom/nomone/vr_desktop/runtime/TerminalServer$Control;
  .line 87
    iput-object p4, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer;->files:Lcom/nomone/vr_desktop/runtime/FileWorkspace;
  .line 88
    iput-object p2, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer;->assets:Lcom/nomone/vr_desktop/runtime/TerminalServer$Assets;
  .line 89
    iput-object p3, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer;->provider:Lcom/nomone/vr_desktop/runtime/TerminalServer$Provider;
  .line 90
    new-instance p2, Ljava/net/ServerSocket;
    invoke-direct { p2 }, Ljava/net/ServerSocket;-><init>()V
    iput-object p2, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer;->listener:Ljava/net/ServerSocket;
  .line 91
    iget-object p2, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer;->listener:Ljava/net/ServerSocket;
    const/4 p3, 1
    invoke-virtual { p2, p3 }, Ljava/net/ServerSocket;->setReuseAddress(Z)V
  :L0
  .line 92
    iget-object p2, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer;->listener:Ljava/net/ServerSocket;
    new-instance p3, Ljava/net/InetSocketAddress;
    const-string p4, "0.0.0.0"
    invoke-direct { p3, p4, p1 }, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V
    invoke-virtual { p2, p3 }, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V
  :L1
  .line 93
    nop
  .line 94
    iget-object p1, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer;->clients:Ljava/util/concurrent/ExecutorService;
    new-instance p2, Lcom/nomone/vr_desktop/runtime/TerminalServer$1;
    invoke-direct { p2, p0 }, Lcom/nomone/vr_desktop/runtime/TerminalServer$1;-><init>(Lcom/nomone/vr_desktop/runtime/TerminalServer;)V
    invoke-interface { p1, p2 }, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
  .line 95
    return-void
  :L2
  .line 93
    move-exception p1
    iget-object p2, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer;->listener:Ljava/net/ServerSocket;
    invoke-virtual { p2 }, Ljava/net/ServerSocket;->close()V
    iget-object p2, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer;->clients:Ljava/util/concurrent/ExecutorService;
    invoke-interface { p2 }, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    throw p1
.end method

.method private accept()V
  .catch Ljava/io/IOException; { :L1 .. :L2 } :L3
  .registers 4
  .line 100
    nop
  :L0
    iget-boolean v0, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer;->closed:Z
    if-nez v0, :L5
  :L1
  .line 102
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer;->listener:Ljava/net/ServerSocket;
    invoke-virtual { v0 }, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;
    move-result-object v0
  .line 103
    const/4 v1, 1
    invoke-virtual { v0, v1 }, Ljava/net/Socket;->setTcpNoDelay(Z)V
  .line 104
    const/16 v1, 10000
    invoke-virtual { v0, v1 }, Ljava/net/Socket;->setSoTimeout(I)V
  .line 105
    iget-object v1, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer;->sockets:Ljava/util/Set;
    invoke-interface { v1, v0 }, Ljava/util/Set;->add(Ljava/lang/Object;)Z
  .line 106
    iget-object v1, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer;->clients:Ljava/util/concurrent/ExecutorService;
    new-instance v2, Lcom/nomone/vr_desktop/runtime/TerminalServer$2;
    invoke-direct { v2, p0, v0 }, Lcom/nomone/vr_desktop/runtime/TerminalServer$2;-><init>(Lcom/nomone/vr_desktop/runtime/TerminalServer;Ljava/net/Socket;)V
    invoke-interface { v1, v2 }, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
  :L2
    goto :L4
  :L3
  .line 107
    move-exception v0
  .line 108
    iget-boolean v0, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer;->closed:Z
    if-nez v0, :L4
    invoke-virtual { p0 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->close()V
  :L4
  .line 109
    goto :L0
  :L5
  .line 111
    return-void
.end method

.method static synthetic access$100(Lcom/nomone/vr_desktop/runtime/TerminalServer;)Lcom/nomone/vr_desktop/runtime/TerminalServer$Provider;
  .registers 1
  .line 26
    iget-object p0, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer;->provider:Lcom/nomone/vr_desktop/runtime/TerminalServer$Provider;
    return-object p0
.end method

.method static synthetic access$200(Lcom/nomone/vr_desktop/runtime/TerminalServer;)Z
  .registers 1
  .line 26
    iget-boolean p0, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer;->closed:Z
    return p0
.end method

.method static synthetic access$300(Lcom/nomone/vr_desktop/runtime/TerminalServer$State;)Ljava/lang/String;
  .registers 1
  .line 26
    invoke-static { p0 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->stateJson(Lcom/nomone/vr_desktop/runtime/TerminalServer$State;)Ljava/lang/String;
    move-result-object p0
    return-object p0
.end method

.method static synthetic access$400(Lcom/nomone/vr_desktop/runtime/TerminalServer;)Ljava/util/concurrent/ExecutorService;
  .registers 1
  .line 26
    iget-object p0, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer;->clients:Ljava/util/concurrent/ExecutorService;
    return-object p0
.end method

.method private static base64([B)Ljava/lang/String;
  .registers 9
  .line 272
    nop
  .line 273
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
  .line 274
    const/4 v1, 0
  :L0
    array-length v2, p0
    if-ge v1, v2, :L6
  .line 275
    aget-byte v2, p0, v1
    and-int/lit16 v2, v2, 255
    shl-int/lit8 v2, v2, 16
  .line 276
    add-int/lit8 v3, v1, 1
    array-length v4, p0
    if-ge v3, v4, :L1
    aget-byte v4, p0, v3
    and-int/lit16 v4, v4, 255
    shl-int/lit8 v4, v4, 8
    or-int/2addr v2, v4
  :L1
  .line 277
    add-int/lit8 v4, v1, 2
    array-length v5, p0
    if-ge v4, v5, :L2
    aget-byte v5, p0, v4
    and-int/lit16 v5, v5, 255
    or-int/2addr v2, v5
  :L2
  .line 278
    ushr-int/lit8 v5, v2, 18
    const-string v6, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
    invoke-virtual { v6, v5 }, Ljava/lang/String;->charAt(I)C
    move-result v5
    invoke-virtual { v0, v5 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    move-result-object v5
    ushr-int/lit8 v7, v2, 12
    and-int/lit8 v7, v7, 63
    invoke-virtual { v6, v7 }, Ljava/lang/String;->charAt(I)C
    move-result v7
    invoke-virtual { v5, v7 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
  .line 279
    array-length v5, p0
    const/16 v7, 61
    if-ge v3, v5, :L3
    ushr-int/lit8 v3, v2, 6
    and-int/lit8 v3, v3, 63
    invoke-virtual { v6, v3 }, Ljava/lang/String;->charAt(I)C
    move-result v3
    goto :L4
  :L3
    move v3, v7
  :L4
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
  .line 280
    array-length v3, p0
    if-ge v4, v3, :L5
    and-int/lit8 v2, v2, 63
    invoke-virtual { v6, v2 }, Ljava/lang/String;->charAt(I)C
    move-result v7
  :L5
    invoke-virtual { v0, v7 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
  .line 274
    add-int/lit8 v1, v1, 3
    goto :L0
  :L6
  .line 282
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    return-object p0
.end method

.method private static header(Ljava/io/InputStream;)Ljava/lang/String;
  .annotation system Ldalvik/annotation/Throws;
    value = {
      Ljava/io/IOException;
    }
  .end annotation
  .registers 8
  .line 242
    new-instance v0, Ljava/io/ByteArrayOutputStream;
    invoke-direct { v0 }, Ljava/io/ByteArrayOutputStream;-><init>()V
  .line 243
    nop
  .line 244
    const/4 v1, 4
    new-array v2, v1, [B
    fill-array-data v2, :L7
    const/4 v3, 0
    move v4, v3
  :L0
  .line 245
    invoke-virtual { v0 }, Ljava/io/ByteArrayOutputStream;->size()I
    move-result v5
    const/16 v6, 16384
    if-ge v5, v6, :L6
  .line 246
    invoke-virtual { p0 }, Ljava/io/InputStream;->read()I
    move-result v5
  .line 247
    if-ltz v5, :L5
  .line 248
    invoke-virtual { v0, v5 }, Ljava/io/ByteArrayOutputStream;->write(I)V
  .line 249
    aget-byte v6, v2, v4
    if-ne v5, v6, :L1
    add-int/lit8 v4, v4, 1
    goto :L3
  :L1
    const/16 v4, 13
    if-ne v5, v4, :L2
    const/4 v4, 1
    goto :L3
  :L2
    move v4, v3
  :L3
  .line 250
    if-ne v4, v1, :L4
    new-instance p0, Ljava/lang/String;
    invoke-virtual { v0 }, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    move-result-object v0
    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;
    invoke-direct { p0, v0, v1 }, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    return-object p0
  :L4
  .line 251
    goto :L0
  :L5
  .line 247
    new-instance p0, Ljava/io/EOFException;
    invoke-direct { p0 }, Ljava/io/EOFException;-><init>()V
    throw p0
  :L6
  .line 252
    new-instance p0, Ljava/io/IOException;
    const-string v0, "HTTP header exceeds 16384 bytes"
    invoke-direct { p0, v0 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw p0
  :L7
  .array-data 1
    13t
    10t
    13t
    10t
  .end array-data
.end method

.method static synthetic lambda$new$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
  .registers 3
  .line 71
    new-instance v0, Ljava/lang/Thread;
    const-string v1, "Ubuntu-web-terminal"
    invoke-direct { v0, p0, v1 }, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V
  .line 72
    const/4 p0, 1
    invoke-virtual { v0, p0 }, Ljava/lang/Thread;->setDaemon(Z)V
  .line 73
    return-object v0
.end method

.method private static query(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
  .annotation system Ldalvik/annotation/Throws;
    value = {
      Ljava/io/IOException;
    }
  .end annotation
  .registers 8
  .line 234
    invoke-virtual { p0 }, Ljava/net/URI;->getRawQuery()Ljava/lang/String;
    move-result-object v0
    if-eqz v0, :L2
    invoke-virtual { p0 }, Ljava/net/URI;->getRawQuery()Ljava/lang/String;
    move-result-object p0
    const-string v0, "&"
    invoke-virtual { p0, v0 }, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object p0
    array-length v0, p0
    const/4 v1, 0
    move v2, v1
  :L0
    if-ge v2, v0, :L2
    aget-object v3, p0, v2
  .line 235
    const-string v4, "="
    const/4 v5, 2
    invoke-virtual { v3, v4, v5 }, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;
    move-result-object v3
  .line 236
    array-length v4, v3
    if-ne v4, v5, :L1
    aget-object v4, v3, v1
    invoke-virtual { v4, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v4
    if-eqz v4, :L1
    const/4 p0, 1
    aget-object p0, v3, p0
    const-string p1, "UTF-8"
    invoke-static { p0, p1 }, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object p0
    return-object p0
  :L1
  .line 234
    add-int/lit8 v2, v2, 1
    goto :L0
  :L2
  .line 238
    const-string p0, ""
    return-object p0
.end method

.method static quote(Ljava/lang/String;)Ljava/lang/String;
  .registers 7
  .line 262
    new-instance v0, Ljava/lang/StringBuilder;
    const-string v1, "\""
    invoke-direct { v0, v1 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
  .line 263
    invoke-virtual { p0 }, Ljava/lang/String;->toCharArray()[C
    move-result-object p0
    array-length v1, p0
    const/4 v2, 0
  :L0
    const/16 v3, 34
    if-ge v2, v1, :L5
    aget-char v4, p0, v2
  .line 264
    const/16 v5, 92
    if-eq v4, v3, :L3
    if-ne v4, v5, :L1
    goto :L3
  :L1
  .line 265
    const/16 v3, 32
    if-ge v4, v3, :L2
    invoke-static { v4 }, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v3
    filled-new-array { v3 }, [Ljava/lang/Object;
    move-result-object v3
    const-string v4, "\\u%04x"
    invoke-static { v4, v3 }, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    goto :L4
  :L2
  .line 266
    invoke-virtual { v0, v4 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    goto :L4
  :L3
  .line 264
    invoke-virtual { v0, v5 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    move-result-object v3
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
  :L4
  .line 263
    add-int/lit8 v2, v2, 1
    goto :L0
  :L5
  .line 268
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    move-result-object p0
    invoke-virtual { p0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
    return-object p0
.end method

.method private static response(Ljava/io/OutputStream;ILjava/lang/String;[BZ)V
  .annotation system Ldalvik/annotation/Throws;
    value = {
      Ljava/io/IOException;
    }
  .end annotation
  .registers 7
  .line 256
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "HTTP/1.1 "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, " "
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    const/16 v1, 200
    if-ne p1, v1, :L0
    const-string p1, "OK"
    goto :L2
  :L0
    const/16 v1, 201
    if-ne p1, v1, :L1
    const-string p1, "Created"
    goto :L2
  :L1
    const-string p1, "Error"
  :L2
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object p1
    const-string v0, "\r\nContent-Type: "
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object p1
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object p1
    const-string p2, "; charset=utf-8\r\nContent-Length: "
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object p1
    array-length p2, p3
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object p1
    const-string p2, "\r\nCache-Control: no-store\r\nConnection: close\r\n\r\n"
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object p1
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    sget-object p2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;
    invoke-virtual { p1, p2 }, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
    move-result-object p1
    invoke-virtual { p0, p1 }, Ljava/io/OutputStream;->write([B)V
  .line 257
    if-nez p4, :L3
    invoke-virtual { p0, p3 }, Ljava/io/OutputStream;->write([B)V
  :L3
  .line 258
    invoke-virtual { p0 }, Ljava/io/OutputStream;->flush()V
  .line 259
    return-void
.end method

.method private serve(Ljava/net/Socket;)V
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L126
  .catchall { :L0 .. :L1 } :L125
  .catch Ljava/lang/Exception; { :L2 .. :L3 } :L4
  .catchall { :L2 .. :L3 } :L125
  .catch Ljava/lang/Exception; { :L6 .. :L11 } :L126
  .catchall { :L6 .. :L11 } :L125
  .catch Ljava/lang/Exception; { :L12 .. :L16 } :L126
  .catchall { :L12 .. :L16 } :L125
  .catch Ljava/io/IOException; { :L17 .. :L18 } :L19
  .catch Ljava/lang/Exception; { :L22 .. :L23 } :L126
  .catchall { :L22 .. :L23 } :L125
  .catch Ljava/lang/Exception; { :L24 .. :L25 } :L126
  .catchall { :L24 .. :L25 } :L125
  .catch Ljava/lang/Exception; { :L26 .. :L37 } :L51
  .catchall { :L26 .. :L37 } :L125
  .catch Ljava/io/IOException; { :L38 .. :L39 } :L40
  .catch Ljava/lang/Exception; { :L42 .. :L43 } :L51
  .catchall { :L42 .. :L43 } :L125
  .catch Ljava/lang/Exception; { :L44 .. :L45 } :L126
  .catchall { :L44 .. :L45 } :L125
  .catch Ljava/io/IOException; { :L46 .. :L47 } :L48
  .catch Ljava/lang/Exception; { :L53 .. :L54 } :L126
  .catchall { :L53 .. :L54 } :L125
  .catch Ljava/lang/Exception; { :L55 .. :L57 } :L126
  .catchall { :L55 .. :L57 } :L125
  .catch Ljava/io/IOException; { :L58 .. :L59 } :L60
  .catch Ljava/lang/Exception; { :L62 .. :L64 } :L126
  .catchall { :L62 .. :L64 } :L125
  .catch Ljava/io/IOException; { :L66 .. :L67 } :L68
  .catch Ljava/lang/Exception; { :L70 .. :L74 } :L126
  .catchall { :L70 .. :L74 } :L125
  .catch Ljava/io/IOException; { :L75 .. :L76 } :L77
  .catch Ljava/lang/Exception; { :L79 .. :L80 } :L126
  .catchall { :L79 .. :L80 } :L125
  .catch Ljava/io/IOException; { :L81 .. :L82 } :L83
  .catch Ljava/lang/Exception; { :L85 .. :L86 } :L126
  .catchall { :L85 .. :L86 } :L125
  .catch Ljava/lang/Exception; { :L87 .. :L88 } :L93
  .catchall { :L87 .. :L88 } :L125
  .catch Ljava/io/IOException; { :L89 .. :L90 } :L91
  .catch Ljava/lang/Exception; { :L94 .. :L96 } :L126
  .catchall { :L94 .. :L96 } :L125
  .catch Ljava/io/IOException; { :L97 .. :L98 } :L99
  .catch Ljava/lang/Exception; { :L101 .. :L102 } :L126
  .catchall { :L101 .. :L102 } :L125
  .catch Ljava/lang/Exception; { :L103 .. :L108 } :L126
  .catchall { :L103 .. :L108 } :L125
  .catch Ljava/io/IOException; { :L109 .. :L110 } :L111
  .catch Ljava/lang/Exception; { :L113 .. :L117 } :L126
  .catchall { :L113 .. :L117 } :L125
  .catch Ljava/lang/Exception; { :L119 .. :L120 } :L126
  .catchall { :L119 .. :L120 } :L125
  .catch Ljava/io/IOException; { :L121 .. :L122 } :L123
  .catchall { :L129 .. :L130 } :L125
  .catch Ljava/io/IOException; { :L131 .. :L132 } :L133
  .catchall { :L131 .. :L132 } :L125
  .catch Ljava/io/IOException; { :L136 .. :L137 } :L138
  .catch Ljava/io/IOException; { :L141 .. :L142 } :L143
  .registers 33
  .line 114
    move-object/from16 v1, p0
    move-object/from16 v2, p1
    const-string v0, "UTF-8"
    const-string v3, "sec-websocket-key"
    const-string v4, "/files/jobs"
    const-string v6, "text/plain"
  .line 116
    const/4 v7, 0
  :L0
    new-instance v5, Ljava/io/BufferedInputStream;
    invoke-virtual { v2 }, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;
    move-result-object v8
    const/16 v9, 16384
    invoke-direct { v5, v8, v9 }, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
  .line 117
    invoke-virtual { v2 }, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;
    move-result-object v8
  .line 118
    invoke-static { v5 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->header(Ljava/io/InputStream;)Ljava/lang/String;
    move-result-object v10
  .line 119
    const-string v11, "\r\n"
    invoke-virtual { v10, v11 }, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object v10
  .line 120
    aget-object v11, v10, v7
    const-string v12, " "
    invoke-virtual { v11, v12 }, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object v11
  .line 121
    array-length v12, v11
    const/4 v13, 3
    if-ne v12, v13, :L118
    aget-object v12, v11, v7
    const-string v13, "GET"
    invoke-virtual { v12, v13 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v12
  :L1
    const-string v13, "POST"
    const-string v14, "HEAD"
    if-nez v12, :L5
  :L2
    aget-object v12, v11, v7
    invoke-virtual { v12, v14 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v12
    if-nez v12, :L5
    aget-object v12, v11, v7
    invoke-virtual { v12, v13 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v12
  :L3
    if-nez v12, :L5
    move-object v4, v8
    goto/16 :L119
  :L4
  .line 222
    move-exception v0
    move v12, v7
    goto/16 :L128
  :L5
  .line 125
    const/4 v12, 1
  :L6
    aget-object v15, v11, v12
    invoke-static { v15 }, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;
    move-result-object v15
  .line 126
    move/from16 v16, v12
    new-instance v12, Ljava/util/HashMap;
    invoke-direct { v12 }, Ljava/util/HashMap;-><init>()V
  .line 127
    move/from16 v9, v16
  :L7
    array-length v7, v10
    if-ge v9, v7, :L10
  .line 128
    aget-object v7, v10, v9
    move/from16 v18, v9
    const/16 v9, 58
    invoke-virtual { v7, v9 }, Ljava/lang/String;->indexOf(I)I
    move-result v7
  .line 129
    if-lez v7, :L8
    aget-object v9, v10, v18
    move-object/from16 v19, v10
    const/4 v10, 0
    invoke-virtual { v9, v10, v7 }, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v9
    invoke-virtual { v9 }, Ljava/lang/String;->trim()Ljava/lang/String;
    move-result-object v9
    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;
    invoke-virtual { v9, v10 }, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
    move-result-object v9
    aget-object v10, v19, v18
    add-int/lit8 v7, v7, 1
    invoke-virtual { v10, v7 }, Ljava/lang/String;->substring(I)Ljava/lang/String;
    move-result-object v7
    invoke-virtual { v7 }, Ljava/lang/String;->trim()Ljava/lang/String;
    move-result-object v7
    invoke-interface { v12, v9, v7 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    goto :L9
  :L8
    move-object/from16 v19, v10
  :L9
  .line 127
    add-int/lit8 v9, v18, 1
    move-object/from16 v10, v19
    const/4 v7, 0
    goto :L7
  :L10
  .line 131
    iget-object v7, v1, Lcom/nomone/vr_desktop/runtime/TerminalServer;->control:Lcom/nomone/vr_desktop/runtime/TerminalServer$Control;
  :L11
    const-wide/16 v18, 0
    const-string v9, "0"
    const-string v10, "content-length"
    move-object/from16 v20, v7
    const-string v7, "application/json"
    if-eqz v20, :L21
    move-object/from16 v20, v11
  :L12
    invoke-virtual { v15 }, Ljava/net/URI;->getPath()Ljava/lang/String;
    move-result-object v11
    move-object/from16 v21, v3
    const-string v3, "/control/"
    invoke-virtual { v11, v3 }, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v3
    if-eqz v3, :L22
  .line 132
    new-instance v0, Ljava/io/ByteArrayOutputStream;
    invoke-direct { v0 }, Ljava/io/ByteArrayOutputStream;-><init>()V
  .line 133
    invoke-interface { v12, v10, v9 }, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/lang/String;
    invoke-static { v3 }, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    move-result-wide v3
  .line 134
    const/16 v9, 16384
    new-array v9, v9, [B
  :L13
  .line 135
    cmp-long v10, v3, v18
    if-lez v10, :L15
  .line 136
    const-wide/16 v10, 16384
    invoke-static { v10, v11, v3, v4 }, Ljava/lang/Math;->min(JJ)J
    move-result-wide v12
    long-to-int v10, v12
    const/4 v11, 0
    invoke-virtual { v5, v9, v11, v10 }, Ljava/io/InputStream;->read([BII)I
    move-result v10
  .line 137
    if-ltz v10, :L14
  .line 138
    invoke-virtual { v0, v9, v11, v10 }, Ljava/io/ByteArrayOutputStream;->write([BII)V
    int-to-long v10, v10
    sub-long/2addr v3, v10
  .line 139
    goto :L13
  :L14
  .line 137
    new-instance v0, Ljava/io/EOFException;
    invoke-direct { v0 }, Ljava/io/EOFException;-><init>()V
    throw v0
  :L15
  .line 140
    iget-object v3, v1, Lcom/nomone/vr_desktop/runtime/TerminalServer;->control:Lcom/nomone/vr_desktop/runtime/TerminalServer$Control;
    const/16 v17, 0
    aget-object v4, v20, v17
    invoke-virtual { v15 }, Ljava/net/URI;->getPath()Ljava/lang/String;
    move-result-object v5
    new-instance v9, Ljava/lang/String;
    invoke-virtual { v0 }, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    move-result-object v0
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;
    invoke-direct { v9, v0, v10 }, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    invoke-interface { v3, v4, v5, v9 }, Lcom/nomone/vr_desktop/runtime/TerminalServer$Control;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
  .line 141
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;
    invoke-virtual { v0, v3 }, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
    move-result-object v0
    const/16 v17, 0
    aget-object v3, v20, v17
    invoke-virtual { v3, v14 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    const/16 v4, 200
    invoke-static { v8, v4, v7, v0, v3 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->response(Ljava/io/OutputStream;ILjava/lang/String;[BZ)V
  :L16
  .line 228
    iget-object v0, v1, Lcom/nomone/vr_desktop/runtime/TerminalServer;->sockets:Ljava/util/Set;
    invoke-interface { v0, v2 }, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
  :L17
  .line 229
    invoke-virtual { v2 }, Ljava/net/Socket;->close()V
  :L18
    goto :L20
  :L19
    move-exception v0
  :L20
  .line 142
    return-void
  :L21
  .line 131
    move-object/from16 v21, v3
    move-object/from16 v20, v11
  :L22
  .line 144
    iget-object v3, v1, Lcom/nomone/vr_desktop/runtime/TerminalServer;->files:Lcom/nomone/vr_desktop/runtime/FileWorkspace;
  :L23
    const-string v11, "Not found"
    move-object/from16 v22, v3
    if-eqz v22, :L52
  :L24
    invoke-virtual { v15 }, Ljava/net/URI;->getPath()Ljava/lang/String;
    move-result-object v3
  :L25
    move-object/from16 v23, v6
  :L26
    const-string v6, "/files/"
    invoke-virtual { v3, v6 }, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v3
    if-eqz v3, :L50
  .line 146
    nop
  .line 147
    invoke-virtual { v15 }, Ljava/net/URI;->getPath()Ljava/lang/String;
    move-result-object v3
    const-string v6, "/files/list"
    invoke-virtual { v3, v6 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :L27
    const/16 v17, 0
    aget-object v3, v20, v17
    invoke-virtual { v3, v13 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-nez v3, :L27
    iget-object v0, v1, Lcom/nomone/vr_desktop/runtime/TerminalServer;->files:Lcom/nomone/vr_desktop/runtime/FileWorkspace;
    const-string v3, "side"
    invoke-static { v15, v3 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->query(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
    const-string v4, "path"
    invoke-static { v15, v4 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->query(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v4
    invoke-virtual { v0, v3, v4 }, Lcom/nomone/vr_desktop/runtime/FileWorkspace;->list(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    const/16 v3, 200
    goto/16 :L36
  :L27
  .line 148
    invoke-virtual { v15 }, Ljava/net/URI;->getPath()Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v3, v4 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :L35
    const/16 v17, 0
    aget-object v3, v20, v17
    invoke-virtual { v3, v13 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :L35
  .line 149
    invoke-interface { v12, v10, v9 }, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/lang/String;
    invoke-static { v3 }, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    move-result-wide v3
  .line 150
    new-instance v6, Ljava/io/ByteArrayOutputStream;
    invoke-direct { v6 }, Ljava/io/ByteArrayOutputStream;-><init>()V
  .line 151
    const/16 v9, 16384
    new-array v9, v9, [B
  :L28
  .line 152
    cmp-long v10, v3, v18
    if-lez v10, :L30
  .line 153
    const-wide/16 v10, 16384
    invoke-static { v10, v11, v3, v4 }, Ljava/lang/Math;->min(JJ)J
    move-result-wide v12
    long-to-int v12, v12
    const/4 v13, 0
    invoke-virtual { v5, v9, v13, v12 }, Ljava/io/InputStream;->read([BII)I
    move-result v12
  .line 154
    if-ltz v12, :L29
  .line 155
    invoke-virtual { v6, v9, v13, v12 }, Ljava/io/ByteArrayOutputStream;->write([BII)V
    int-to-long v12, v12
    sub-long/2addr v3, v12
  .line 156
    goto :L28
  :L29
  .line 154
    new-instance v0, Ljava/io/EOFException;
    invoke-direct { v0 }, Ljava/io/EOFException;-><init>()V
    throw v0
  :L30
  .line 157
    new-instance v3, Ljava/util/HashMap;
    invoke-direct { v3 }, Ljava/util/HashMap;-><init>()V
  .line 158
    new-instance v4, Ljava/lang/String;
    invoke-virtual { v6 }, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    move-result-object v5
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;
    invoke-direct { v4, v5, v6 }, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    const-string v5, "&"
    invoke-virtual { v4, v5 }, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object v4
    array-length v5, v4
    const/4 v6, 0
  :L31
    if-ge v6, v5, :L34
    aget-object v9, v4, v6
  .line 159
    const-string v10, "="
    const/4 v11, 2
    invoke-virtual { v9, v10, v11 }, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;
    move-result-object v9
  .line 160
    array-length v10, v9
    if-ne v10, v11, :L33
  .line 161
    const/16 v17, 0
    aget-object v10, v9, v17
    invoke-static { v10, v0 }, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v10
  .line 162
    invoke-interface { v3, v10 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v11
    check-cast v11, Ljava/util/List;
  .line 163
    if-nez v11, :L32
    new-instance v11, Ljava/util/ArrayList;
    invoke-direct { v11 }, Ljava/util/ArrayList;-><init>()V
    invoke-interface { v3, v10, v11 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L32
  .line 164
    aget-object v9, v9, v16
    invoke-static { v9, v0 }, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v9
    invoke-interface { v11, v9 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  :L33
  .line 158
    add-int/lit8 v6, v6, 1
    goto :L31
  :L34
  .line 167
    iget-object v0, v1, Lcom/nomone/vr_desktop/runtime/TerminalServer;->files:Lcom/nomone/vr_desktop/runtime/FileWorkspace;
    invoke-virtual { v0, v3 }, Lcom/nomone/vr_desktop/runtime/FileWorkspace;->submit(Ljava/util/Map;)Ljava/lang/String;
    move-result-object v0
  .line 168
    const/16 v3, 201
    goto :L36
  :L35
    invoke-virtual { v15 }, Ljava/net/URI;->getPath()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v0, v4 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L42
    iget-object v0, v1, Lcom/nomone/vr_desktop/runtime/TerminalServer;->files:Lcom/nomone/vr_desktop/runtime/FileWorkspace;
    invoke-virtual { v0 }, Lcom/nomone/vr_desktop/runtime/FileWorkspace;->jobs()Ljava/lang/String;
    move-result-object v0
    const/16 v3, 200
  :L36
  .line 170
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;
    invoke-virtual { v0, v4 }, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
    move-result-object v0
    const/16 v17, 0
    aget-object v4, v20, v17
    invoke-virtual { v4, v14 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v4
    invoke-static { v8, v3, v7, v0, v4 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->response(Ljava/io/OutputStream;ILjava/lang/String;[BZ)V
  :L37
  .line 228
    iget-object v0, v1, Lcom/nomone/vr_desktop/runtime/TerminalServer;->sockets:Ljava/util/Set;
    invoke-interface { v0, v2 }, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
  :L38
  .line 229
    invoke-virtual { v2 }, Ljava/net/Socket;->close()V
  :L39
    goto :L41
  :L40
    move-exception v0
  :L41
  .line 171
    return-void
  :L42
  .line 169
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;
    invoke-virtual { v11, v0 }, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
    move-result-object v0
  :L43
    move-object/from16 v6, v23
    const/16 v3, 404
    const/4 v10, 0
  :L44
    invoke-static { v8, v3, v6, v0, v10 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->response(Ljava/io/OutputStream;ILjava/lang/String;[BZ)V
  :L45
  .line 228
    iget-object v0, v1, Lcom/nomone/vr_desktop/runtime/TerminalServer;->sockets:Ljava/util/Set;
    invoke-interface { v0, v2 }, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
  :L46
  .line 229
    invoke-virtual { v2 }, Ljava/net/Socket;->close()V
  :L47
    goto :L49
  :L48
    move-exception v0
  :L49
  .line 169
    return-void
  :L50
  .line 144
    move-object/from16 v6, v23
    goto :L52
  :L51
  .line 222
    move-exception v0
    move-object/from16 v6, v23
    goto/16 :L127
  :L52
  .line 173
    const/16 v17, 0
  :L53
    aget-object v0, v20, v17
    invoke-virtual { v0, v13 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
  :L54
    const/16 v3, 10
    const-string v4, "/sessions"
    if-eqz v0, :L70
  :L55
  .line 174
    invoke-virtual { v15 }, Ljava/net/URI;->getPath()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v0, v4 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L56
  .line 175
    iget-object v0, v1, Lcom/nomone/vr_desktop/runtime/TerminalServer;->provider:Lcom/nomone/vr_desktop/runtime/TerminalServer$Provider;
    invoke-interface { v0 }, Lcom/nomone/vr_desktop/runtime/TerminalServer$Provider;->create()Lcom/nomone/vr_desktop/runtime/TerminalServer$State;
    move-result-object v0
    invoke-static { v0 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->stateJson(Lcom/nomone/vr_desktop/runtime/TerminalServer$State;)Ljava/lang/String;
    move-result-object v0
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;
    invoke-virtual { v0, v3 }, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
    move-result-object v0
    const/16 v3, 201
    const/4 v10, 0
    invoke-static { v8, v3, v7, v0, v10 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->response(Ljava/io/OutputStream;ILjava/lang/String;[BZ)V
    goto :L65
  :L56
  .line 176
    invoke-virtual { v15 }, Ljava/net/URI;->getPath()Ljava/lang/String;
    move-result-object v0
    const-string v4, "/sessions/"
    invoke-virtual { v0, v4 }, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :L63
    invoke-virtual { v15 }, Ljava/net/URI;->getPath()Ljava/lang/String;
    move-result-object v0
    const-string v4, "/close"
    invoke-virtual { v0, v4 }, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :L63
  .line 177
    invoke-virtual { v15 }, Ljava/net/URI;->getPath()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v15 }, Ljava/net/URI;->getPath()Ljava/lang/String;
    move-result-object v4
    invoke-virtual { v4 }, Ljava/lang/String;->length()I
    move-result v4
    add-int/lit8 v4, v4, -6
    invoke-virtual { v0, v3, v4 }, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v0
  .line 178
    iget-object v3, v1, Lcom/nomone/vr_desktop/runtime/TerminalServer;->provider:Lcom/nomone/vr_desktop/runtime/TerminalServer$Provider;
    invoke-interface { v3, v0 }, Lcom/nomone/vr_desktop/runtime/TerminalServer$Provider;->find(Ljava/lang/String;)Lcom/nomone/vr_desktop/runtime/TerminalServer$State;
    move-result-object v3
  .line 179
    if-nez v3, :L62
    const-string v0, "{}"
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;
    invoke-virtual { v0, v3 }, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
    move-result-object v0
    const/16 v3, 404
    const/4 v10, 0
    invoke-static { v8, v3, v7, v0, v10 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->response(Ljava/io/OutputStream;ILjava/lang/String;[BZ)V
  :L57
  .line 228
    iget-object v0, v1, Lcom/nomone/vr_desktop/runtime/TerminalServer;->sockets:Ljava/util/Set;
    invoke-interface { v0, v2 }, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
  :L58
  .line 229
    invoke-virtual { v2 }, Ljava/net/Socket;->close()V
  :L59
    goto :L61
  :L60
    move-exception v0
  :L61
  .line 179
    return-void
  :L62
  .line 180
    iget-object v4, v1, Lcom/nomone/vr_desktop/runtime/TerminalServer;->provider:Lcom/nomone/vr_desktop/runtime/TerminalServer$Provider;
    invoke-interface { v4, v0 }, Lcom/nomone/vr_desktop/runtime/TerminalServer$Provider;->stop(Ljava/lang/String;)V
  .line 181
    invoke-static { v3 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->stateJson(Lcom/nomone/vr_desktop/runtime/TerminalServer$State;)Ljava/lang/String;
    move-result-object v0
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;
    invoke-virtual { v0, v3 }, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
    move-result-object v0
    const/16 v4, 200
    const/4 v10, 0
    invoke-static { v8, v4, v7, v0, v10 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->response(Ljava/io/OutputStream;ILjava/lang/String;[BZ)V
    goto :L64
  :L63
  .line 182
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;
    invoke-virtual { v11, v0 }, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
    move-result-object v0
    const/16 v3, 404
    const/4 v10, 0
    invoke-static { v8, v3, v6, v0, v10 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->response(Ljava/io/OutputStream;ILjava/lang/String;[BZ)V
  :L64
    nop
  :L65
  .line 228
    iget-object v0, v1, Lcom/nomone/vr_desktop/runtime/TerminalServer;->sockets:Ljava/util/Set;
    invoke-interface { v0, v2 }, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
  :L66
  .line 229
    invoke-virtual { v2 }, Ljava/net/Socket;->close()V
  :L67
    goto :L69
  :L68
    move-exception v0
  :L69
  .line 183
    return-void
  :L70
  .line 185
    invoke-virtual { v15 }, Ljava/net/URI;->getPath()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v0, v4 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L79
  .line 186
    new-instance v0, Ljava/lang/StringBuilder;
    const-string v3, "{\"sessions\":["
    invoke-direct { v0, v3 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
  .line 187
    iget-object v3, v1, Lcom/nomone/vr_desktop/runtime/TerminalServer;->provider:Lcom/nomone/vr_desktop/runtime/TerminalServer$Provider;
    invoke-interface { v3 }, Lcom/nomone/vr_desktop/runtime/TerminalServer$Provider;->list()[Lcom/nomone/vr_desktop/runtime/TerminalServer$State;
    move-result-object v3
    array-length v4, v3
    const/4 v5, 0
  :L71
    if-ge v5, v4, :L73
    aget-object v9, v3, v5
  .line 188
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->length()I
    move-result v10
    const/16 v11, 13
    if-le v10, v11, :L72
    const/16 v10, 44
    invoke-virtual { v0, v10 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
  :L72
  .line 189
    invoke-static { v9 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->stateJson(Lcom/nomone/vr_desktop/runtime/TerminalServer$State;)Ljava/lang/String;
    move-result-object v9
    invoke-virtual { v0, v9 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 187
    add-int/lit8 v5, v5, 1
    goto :L71
  :L73
  .line 191
    const-string v3, "]}"
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;
    invoke-virtual { v0, v3 }, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
    move-result-object v0
    const/16 v17, 0
    aget-object v3, v20, v17
    invoke-virtual { v3, v14 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    const/16 v4, 200
    invoke-static { v8, v4, v7, v0, v3 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->response(Ljava/io/OutputStream;ILjava/lang/String;[BZ)V
  :L74
  .line 228
    iget-object v0, v1, Lcom/nomone/vr_desktop/runtime/TerminalServer;->sockets:Ljava/util/Set;
    invoke-interface { v0, v2 }, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
  :L75
  .line 229
    invoke-virtual { v2 }, Ljava/net/Socket;->close()V
  :L76
    goto :L78
  :L77
    move-exception v0
  :L78
  .line 192
    return-void
  :L79
  .line 194
    invoke-virtual { v15 }, Ljava/net/URI;->getPath()Ljava/lang/String;
    move-result-object v0
    const-string v4, "/ws"
    invoke-virtual { v0, v4 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L95
  .line 195
    iget-object v0, v1, Lcom/nomone/vr_desktop/runtime/TerminalServer;->provider:Lcom/nomone/vr_desktop/runtime/TerminalServer$Provider;
    const-string v3, "session"
    invoke-static { v15, v3 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->query(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
    invoke-interface { v0, v3 }, Lcom/nomone/vr_desktop/runtime/TerminalServer$Provider;->find(Ljava/lang/String;)Lcom/nomone/vr_desktop/runtime/TerminalServer$State;
    move-result-object v0
    if-nez v0, :L85
  .line 196
    const-string v0, "Onbekende terminalsessie"
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;
    invoke-virtual { v0, v3 }, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
    move-result-object v0
    const/16 v3, 404
    const/4 v10, 0
    invoke-static { v8, v3, v6, v0, v10 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->response(Ljava/io/OutputStream;ILjava/lang/String;[BZ)V
  :L80
  .line 228
    iget-object v0, v1, Lcom/nomone/vr_desktop/runtime/TerminalServer;->sockets:Ljava/util/Set;
    invoke-interface { v0, v2 }, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
  :L81
  .line 229
    invoke-virtual { v2 }, Ljava/net/Socket;->close()V
  :L82
    goto :L84
  :L83
    move-exception v0
  :L84
  .line 197
    return-void
  :L85
  .line 199
    const-string v0, "websocket"
    const-string v3, "upgrade"
    invoke-interface { v12, v3 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/lang/String;
    invoke-virtual { v0, v3 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :L94
    const-string v0, "13"
    const-string v3, "sec-websocket-version"
    invoke-interface { v12, v3 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v3
    invoke-virtual { v0, v3 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L94
    move-object/from16 v0, v21
    invoke-interface { v12, v0 }, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :L94
  .line 200
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-interface { v12, v0 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/lang/String;
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v3, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
  .line 201
    const-string v3, "SHA-1"
    invoke-static { v3 }, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    move-result-object v3
    sget-object v4, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;
    invoke-virtual { v0, v4 }, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
    move-result-object v0
    invoke-virtual { v3, v0 }, Ljava/security/MessageDigest;->digest([B)[B
    move-result-object v0
    invoke-static { v0 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->base64([B)Ljava/lang/String;
    move-result-object v0
  .line 202
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct { v3 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "HTTP/1.1 101 Switching Protocols\r\nUpgrade: websocket\r\nConnection: Upgrade\r\nSec-WebSocket-Accept: "
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    invoke-virtual { v3, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v3, "\r\n\r\n"
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;
    invoke-virtual { v0, v3 }, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
    move-result-object v0
    invoke-virtual { v8, v0 }, Ljava/io/OutputStream;->write([B)V
  .line 203
    invoke-virtual { v8 }, Ljava/io/OutputStream;->flush()V
  :L86
  .line 204
    nop
  .line 205
    const/4 v10, 0
  :L87
    invoke-virtual { v2, v10 }, Ljava/net/Socket;->setSoTimeout(I)V
  .line 206
    new-instance v0, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;
    move-object v3, v5
    move-object v4, v8
    move-object v5, v15
    invoke-direct/range { v0 .. v5 }, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;-><init>(Lcom/nomone/vr_desktop/runtime/TerminalServer;Ljava/net/Socket;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/net/URI;)V
    invoke-static { v0 }, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;->access$000(Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;)V
  :L88
  .line 228
    iget-object v0, v1, Lcom/nomone/vr_desktop/runtime/TerminalServer;->sockets:Ljava/util/Set;
    invoke-interface { v0, v2 }, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
  :L89
  .line 229
    invoke-virtual { v2 }, Ljava/net/Socket;->close()V
  :L90
    goto :L92
  :L91
    move-exception v0
  :L92
  .line 207
    return-void
  :L93
  .line 222
    move-exception v0
    move/from16 v12, v16
    goto/16 :L128
  :L94
  .line 199
    new-instance v0, Ljava/io/IOException;
    const-string v3, "Invalid WebSocket handshake"
    invoke-direct { v0, v3 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw v0
  :L95
  .line 209
    move-object v4, v8
    move-object v5, v15
    invoke-virtual { v5 }, Ljava/net/URI;->getPath()Ljava/lang/String;
    move-result-object v0
    const-string v8, "/health"
    invoke-virtual { v0, v8 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L101
  .line 210
    iget-object v0, v1, Lcom/nomone/vr_desktop/runtime/TerminalServer;->provider:Lcom/nomone/vr_desktop/runtime/TerminalServer$Provider;
    invoke-interface { v0 }, Lcom/nomone/vr_desktop/runtime/TerminalServer$Provider;->current()Lcom/nomone/vr_desktop/runtime/TerminalServer$State;
    move-result-object v0
    invoke-static { v0 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->stateJson(Lcom/nomone/vr_desktop/runtime/TerminalServer$State;)Ljava/lang/String;
    move-result-object v0
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;
    invoke-virtual { v0, v3 }, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
    move-result-object v0
    const/16 v17, 0
    aget-object v3, v20, v17
    invoke-virtual { v3, v14 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    const/16 v5, 200
    invoke-static { v4, v5, v7, v0, v3 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->response(Ljava/io/OutputStream;ILjava/lang/String;[BZ)V
  :L96
  .line 228
    iget-object v0, v1, Lcom/nomone/vr_desktop/runtime/TerminalServer;->sockets:Ljava/util/Set;
    invoke-interface { v0, v2 }, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
  :L97
  .line 229
    invoke-virtual { v2 }, Ljava/net/Socket;->close()V
  :L98
    goto :L100
  :L99
    move-exception v0
  :L100
  .line 211
    return-void
  :L101
  .line 213
    invoke-virtual { v5 }, Ljava/net/URI;->getPath()Ljava/lang/String;
    move-result-object v0
  .line 214
    const-string v5, "/"
    invoke-virtual { v0, v5 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v5
  :L102
    const-string v7, "/terminal/"
    if-nez v5, :L104
  :L103
    const-string v5, "/terminal"
    invoke-virtual { v0, v5 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v5
    if-nez v5, :L104
    invoke-virtual { v0, v7 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v5
    if-eqz v5, :L105
  :L104
    const-string v0, "/terminal/index.html"
  :L105
  .line 215
    invoke-virtual { v0, v7 }, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v5
    if-eqz v5, :L106
    invoke-virtual { v0, v3 }, Ljava/lang/String;->substring(I)Ljava/lang/String;
    move-result-object v0
    goto :L107
  :L106
    const-string v0, ""
  :L107
  .line 216
    const-string v23, "index.html"
    const-string v24, "app.js"
    const-string v25, "style.css"
    const-string v26, "xterm.js"
    const-string v27, "xterm.css"
    const-string v28, "addon-fit.js"
    const-string v29, "files.js"
    const-string v30, "control.js"
    filled-new-array/range { v23 .. v30 }, [Ljava/lang/String;
    move-result-object v3
    invoke-static { v3 }, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    move-result-object v3
    invoke-interface { v3, v0 }, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    move-result v3
    if-nez v3, :L113
  .line 217
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;
    invoke-virtual { v11, v0 }, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
    move-result-object v0
    const/16 v17, 0
    aget-object v3, v20, v17
    invoke-virtual { v3, v14 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    const/16 v5, 404
    invoke-static { v4, v5, v6, v0, v3 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->response(Ljava/io/OutputStream;ILjava/lang/String;[BZ)V
  :L108
  .line 228
    iget-object v0, v1, Lcom/nomone/vr_desktop/runtime/TerminalServer;->sockets:Ljava/util/Set;
    invoke-interface { v0, v2 }, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
  :L109
  .line 229
    invoke-virtual { v2 }, Ljava/net/Socket;->close()V
  :L110
    goto :L112
  :L111
    move-exception v0
  :L112
  .line 218
    return-void
  :L113
  .line 220
    const-string v3, ".js"
    invoke-virtual { v0, v3 }, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v3
    if-eqz v3, :L114
    const-string v3, "text/javascript"
    goto :L116
  :L114
    const-string v3, ".css"
    invoke-virtual { v0, v3 }, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v3
    if-eqz v3, :L115
    const-string v3, "text/css"
    goto :L116
  :L115
    const-string v3, "text/html"
  :L116
  .line 221
    iget-object v5, v1, Lcom/nomone/vr_desktop/runtime/TerminalServer;->assets:Lcom/nomone/vr_desktop/runtime/TerminalServer$Assets;
    new-instance v7, Ljava/lang/StringBuilder;
    invoke-direct { v7 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v8, "terminal/"
    invoke-virtual { v7, v8 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v7
    invoke-virtual { v7, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-interface { v5, v0 }, Lcom/nomone/vr_desktop/runtime/TerminalServer$Assets;->read(Ljava/lang/String;)[B
    move-result-object v0
    const/16 v17, 0
    aget-object v5, v20, v17
    invoke-virtual { v5, v14 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v5
    const/16 v7, 200
    invoke-static { v4, v7, v3, v0, v5 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->response(Ljava/io/OutputStream;ILjava/lang/String;[BZ)V
  :L117
  .line 228
    iget-object v0, v1, Lcom/nomone/vr_desktop/runtime/TerminalServer;->sockets:Ljava/util/Set;
    invoke-interface { v0, v2 }, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    goto :L141
  :L118
  .line 121
    move-object v4, v8
  :L119
  .line 122
    const-string v0, "GET required"
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;
    invoke-virtual { v0, v3 }, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
    move-result-object v0
    const/16 v3, 405
    const/4 v10, 0
    invoke-static { v4, v3, v6, v0, v10 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->response(Ljava/io/OutputStream;ILjava/lang/String;[BZ)V
  :L120
  .line 228
    iget-object v0, v1, Lcom/nomone/vr_desktop/runtime/TerminalServer;->sockets:Ljava/util/Set;
    invoke-interface { v0, v2 }, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
  :L121
  .line 229
    invoke-virtual { v2 }, Ljava/net/Socket;->close()V
  :L122
    goto :L124
  :L123
    move-exception v0
  :L124
  .line 123
    return-void
  :L125
  .line 228
    move-exception v0
    move-object v3, v0
    goto :L135
  :L126
  .line 222
    move-exception v0
  :L127
    const/4 v12, 0
  :L128
  .line 223
    if-nez v12, :L140
  :L129
    iget-boolean v3, v1, Lcom/nomone/vr_desktop/runtime/TerminalServer;->closed:Z
    if-nez v3, :L140
    instance-of v3, v0, Ljava/io/EOFException;
    if-nez v3, :L140
    instance-of v3, v0, Ljava/net/SocketException;
  :L130
    if-nez v3, :L140
  :L131
  .line 224
    invoke-virtual { v2 }, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;
    move-result-object v3
    invoke-virtual { v0 }, Ljava/lang/Exception;->toString()Ljava/lang/String;
    move-result-object v0
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;
    invoke-virtual { v0, v4 }, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
    move-result-object v0
    const/16 v4, 500
    const/4 v10, 0
    invoke-static { v3, v4, v6, v0, v10 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->response(Ljava/io/OutputStream;ILjava/lang/String;[BZ)V
  :L132
    goto :L134
  :L133
  .line 225
    move-exception v0
  :L134
    goto :L140
  :L135
  .line 228
    iget-object v0, v1, Lcom/nomone/vr_desktop/runtime/TerminalServer;->sockets:Ljava/util/Set;
    invoke-interface { v0, v2 }, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
  :L136
  .line 229
    invoke-virtual { v2 }, Ljava/net/Socket;->close()V
  :L137
    goto :L139
  :L138
    move-exception v0
  :L139
  .line 230
    throw v3
  :L140
  .line 228
    iget-object v0, v1, Lcom/nomone/vr_desktop/runtime/TerminalServer;->sockets:Ljava/util/Set;
    invoke-interface { v0, v2 }, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
  :L141
  .line 229
    invoke-virtual { v2 }, Ljava/net/Socket;->close()V
  :L142
    goto :L144
  :L143
    move-exception v0
  .line 230
    nop
  :L144
  .line 231
    return-void
.end method

.method private static stateJson(Lcom/nomone/vr_desktop/runtime/TerminalServer$State;)Ljava/lang/String;
  .registers 6
  .line 286
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v1, "{\"type\":\"state\",\"session\":"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget-object v1, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$State;->id:Ljava/lang/String;
    invoke-static { v1 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->quote(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ",\"running\":"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget-object v1, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$State;->session:Lcom/nomone/vr_desktop/runtime/PtySession;
    const/4 v2, 1
    const/4 v3, 0
    if-eqz v1, :L0
    iget-object v1, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$State;->session:Lcom/nomone/vr_desktop/runtime/PtySession;
    invoke-virtual { v1 }, Lcom/nomone/vr_desktop/runtime/PtySession;->running()Z
    move-result v1
    if-eqz v1, :L0
    move v1, v2
    goto :L1
  :L0
    move v1, v3
  :L1
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ",\"pid\":"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
  .line 287
    iget-object v1, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$State;->session:Lcom/nomone/vr_desktop/runtime/PtySession;
    const/4 v4, -1
    if-nez v1, :L2
    move v1, v4
    goto :L3
  :L2
    iget-object v1, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$State;->session:Lcom/nomone/vr_desktop/runtime/PtySession;
    invoke-virtual { v1 }, Lcom/nomone/vr_desktop/runtime/PtySession;->pid()I
    move-result v1
  :L3
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ",\"exit\":"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget-object v1, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$State;->session:Lcom/nomone/vr_desktop/runtime/PtySession;
    if-nez v1, :L4
    goto :L5
  :L4
    iget-object v1, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$State;->session:Lcom/nomone/vr_desktop/runtime/PtySession;
    invoke-virtual { v1 }, Lcom/nomone/vr_desktop/runtime/PtySession;->exitStatus()I
    move-result v4
  :L5
    invoke-virtual { v0, v4 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v1, ",\"error\":"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget-object v4, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$State;->error:Ljava/lang/String;
    invoke-static { v4 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->quote(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v4
    invoke-virtual { v0, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v4, ",\"ssh\":{\"port\":8022,\"running\":"
    invoke-virtual { v0, v4 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget-object v4, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$State;->ssh:Lcom/nomone/vr_desktop/runtime/PtySession;
    if-eqz v4, :L6
    iget-object v4, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$State;->ssh:Lcom/nomone/vr_desktop/runtime/PtySession;
  .line 288
    invoke-virtual { v4 }, Lcom/nomone/vr_desktop/runtime/PtySession;->running()Z
    move-result v4
    if-eqz v4, :L6
    goto :L7
  :L6
    move v2, v3
  :L7
    invoke-virtual { v0, v2 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    iget-object p0, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer$State;->sshError:Ljava/lang/String;
    invoke-static { p0 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->quote(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p0
    invoke-virtual { v0, p0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object p0
    const-string v0, "}}"
    invoke-virtual { p0, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object p0
    invoke-virtual { p0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p0
  .line 286
    return-object p0
.end method

.method public close()V
  .catch Ljava/io/IOException; { :L0 .. :L1 } :L2
  .catch Ljava/io/IOException; { :L5 .. :L6 } :L7
  .registers 3
  .line 417
    const/4 v0, 1
    iput-boolean v0, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer;->closed:Z
  :L0
  .line 418
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer;->listener:Ljava/net/ServerSocket;
    invoke-virtual { v0 }, Ljava/net/ServerSocket;->close()V
  :L1
    goto :L3
  :L2
    move-exception v0
  :L3
  .line 419
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer;->sockets:Ljava/util/Set;
    invoke-interface { v0 }, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L4
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L8
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/net/Socket;
  :L5
    invoke-virtual { v1 }, Ljava/net/Socket;->close()V
  :L6
    goto :L4
  :L7
    move-exception v1
    goto :L4
  :L8
  .line 420
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer;->clients:Ljava/util/concurrent/ExecutorService;
    invoke-interface { v0 }, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
  .line 421
    return-void
.end method

.method synthetic lambda$accept$1$com-nomone-vr_desktop-runtime-TerminalServer(Ljava/net/Socket;)V
  .registers 2
  .line 106
    invoke-direct { p0, p1 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->serve(Ljava/net/Socket;)V
    return-void
.end method

.method public port()I
  .registers 2
  .line 97
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer;->listener:Ljava/net/ServerSocket;
    invoke-virtual { v0 }, Ljava/net/ServerSocket;->getLocalPort()I
    move-result v0
    return v0
.end method
