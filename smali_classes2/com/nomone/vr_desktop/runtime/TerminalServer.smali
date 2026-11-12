.class public final Lcom/nomone/vr_desktop/runtime/TerminalServer;
.super Ljava/lang/Object;
.implements Ljava/io/Closeable;
.source "TerminalServer.java"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcom/nomone/vr_desktop/runtime/TerminalServer$State;,
    Lcom/nomone/vr_desktop/runtime/TerminalServer$Provider;,
    Lcom/nomone/vr_desktop/runtime/TerminalServer$Assets;,
    Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;
  }
.end annotation

.field private final assets:Lcom/nomone/vr_desktop/runtime/TerminalServer$Assets;

.field private final clients:Ljava/util/concurrent/ExecutorService;

.field private volatile closed:Z

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
  .line 76
    const/4 v0, 0
    invoke-direct { p0, p1, p2, p3, v0 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;-><init>(ILcom/nomone/vr_desktop/runtime/TerminalServer$Assets;Lcom/nomone/vr_desktop/runtime/TerminalServer$Provider;Lcom/nomone/vr_desktop/runtime/FileWorkspace;)V
  .line 77
    return-void
.end method

.method public constructor <init>(ILcom/nomone/vr_desktop/runtime/TerminalServer$Assets;Lcom/nomone/vr_desktop/runtime/TerminalServer$Provider;Lcom/nomone/vr_desktop/runtime/FileWorkspace;)V
  .annotation system Ldalvik/annotation/Throws;
    value = {
      Ljava/io/IOException;
    }
  .end annotation
  .catch Ljava/io/IOException; { :L0 .. :L1 } :L2
  .registers 6
  .line 79
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 67
    invoke-static { }, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;
    move-result-object v0
    iput-object v0, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer;->sockets:Ljava/util/Set;
  .line 68
    new-instance v0, Lcom/nomone/vr_desktop/runtime/TerminalServer$0;
    invoke-direct { v0 }, Lcom/nomone/vr_desktop/runtime/TerminalServer$0;-><init>()V
    invoke-static { v0 }, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;
    move-result-object v0
    iput-object v0, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer;->clients:Ljava/util/concurrent/ExecutorService;
  .line 80
    iput-object p4, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer;->files:Lcom/nomone/vr_desktop/runtime/FileWorkspace;
  .line 81
    iput-object p2, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer;->assets:Lcom/nomone/vr_desktop/runtime/TerminalServer$Assets;
  .line 82
    iput-object p3, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer;->provider:Lcom/nomone/vr_desktop/runtime/TerminalServer$Provider;
  .line 83
    new-instance p2, Ljava/net/ServerSocket;
    invoke-direct { p2 }, Ljava/net/ServerSocket;-><init>()V
    iput-object p2, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer;->listener:Ljava/net/ServerSocket;
  .line 84
    iget-object p2, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer;->listener:Ljava/net/ServerSocket;
    const/4 p3, 1
    invoke-virtual { p2, p3 }, Ljava/net/ServerSocket;->setReuseAddress(Z)V
  :L0
  .line 85
    iget-object p2, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer;->listener:Ljava/net/ServerSocket;
    new-instance p3, Ljava/net/InetSocketAddress;
    const-string p4, "0.0.0.0"
    invoke-direct { p3, p4, p1 }, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V
    invoke-virtual { p2, p3 }, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V
  :L1
  .line 86
    nop
  .line 87
    iget-object p1, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer;->clients:Ljava/util/concurrent/ExecutorService;
    new-instance p2, Lcom/nomone/vr_desktop/runtime/TerminalServer$1;
    invoke-direct { p2, p0 }, Lcom/nomone/vr_desktop/runtime/TerminalServer$1;-><init>(Lcom/nomone/vr_desktop/runtime/TerminalServer;)V
    invoke-interface { p1, p2 }, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
  .line 88
    return-void
  :L2
  .line 86
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
  .line 93
    nop
  :L0
    iget-boolean v0, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer;->closed:Z
    if-nez v0, :L5
  :L1
  .line 95
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer;->listener:Ljava/net/ServerSocket;
    invoke-virtual { v0 }, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;
    move-result-object v0
  .line 96
    const/4 v1, 1
    invoke-virtual { v0, v1 }, Ljava/net/Socket;->setTcpNoDelay(Z)V
  .line 97
    const/16 v1, 10000
    invoke-virtual { v0, v1 }, Ljava/net/Socket;->setSoTimeout(I)V
  .line 98
    iget-object v1, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer;->sockets:Ljava/util/Set;
    invoke-interface { v1, v0 }, Ljava/util/Set;->add(Ljava/lang/Object;)Z
  .line 99
    iget-object v1, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer;->clients:Ljava/util/concurrent/ExecutorService;
    new-instance v2, Lcom/nomone/vr_desktop/runtime/TerminalServer$2;
    invoke-direct { v2, p0, v0 }, Lcom/nomone/vr_desktop/runtime/TerminalServer$2;-><init>(Lcom/nomone/vr_desktop/runtime/TerminalServer;Ljava/net/Socket;)V
    invoke-interface { v1, v2 }, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
  :L2
    goto :L4
  :L3
  .line 100
    move-exception v0
  .line 101
    iget-boolean v0, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer;->closed:Z
    if-nez v0, :L4
    invoke-virtual { p0 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->close()V
  :L4
  .line 102
    goto :L0
  :L5
  .line 104
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
  .line 252
    nop
  .line 253
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
  .line 254
    const/4 v1, 0
  :L0
    array-length v2, p0
    if-ge v1, v2, :L6
  .line 255
    aget-byte v2, p0, v1
    and-int/lit16 v2, v2, 255
    shl-int/lit8 v2, v2, 16
  .line 256
    add-int/lit8 v3, v1, 1
    array-length v4, p0
    if-ge v3, v4, :L1
    aget-byte v4, p0, v3
    and-int/lit16 v4, v4, 255
    shl-int/lit8 v4, v4, 8
    or-int/2addr v2, v4
  :L1
  .line 257
    add-int/lit8 v4, v1, 2
    array-length v5, p0
    if-ge v4, v5, :L2
    aget-byte v5, p0, v4
    and-int/lit16 v5, v5, 255
    or-int/2addr v2, v5
  :L2
  .line 258
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
  .line 259
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
  .line 260
    array-length v3, p0
    if-ge v4, v3, :L5
    and-int/lit8 v2, v2, 63
    invoke-virtual { v6, v2 }, Ljava/lang/String;->charAt(I)C
    move-result v7
  :L5
    invoke-virtual { v0, v7 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
  .line 254
    add-int/lit8 v1, v1, 3
    goto :L0
  :L6
  .line 262
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
  .line 222
    new-instance v0, Ljava/io/ByteArrayOutputStream;
    invoke-direct { v0 }, Ljava/io/ByteArrayOutputStream;-><init>()V
  .line 223
    nop
  .line 224
    const/4 v1, 4
    new-array v2, v1, [B
    fill-array-data v2, :L7
    const/4 v3, 0
    move v4, v3
  :L0
  .line 225
    invoke-virtual { v0 }, Ljava/io/ByteArrayOutputStream;->size()I
    move-result v5
    const/16 v6, 16384
    if-ge v5, v6, :L6
  .line 226
    invoke-virtual { p0 }, Ljava/io/InputStream;->read()I
    move-result v5
  .line 227
    if-ltz v5, :L5
  .line 228
    invoke-virtual { v0, v5 }, Ljava/io/ByteArrayOutputStream;->write(I)V
  .line 229
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
  .line 230
    if-ne v4, v1, :L4
    new-instance p0, Ljava/lang/String;
    invoke-virtual { v0 }, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    move-result-object v0
    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;
    invoke-direct { p0, v0, v1 }, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    return-object p0
  :L4
  .line 231
    goto :L0
  :L5
  .line 227
    new-instance p0, Ljava/io/EOFException;
    invoke-direct { p0 }, Ljava/io/EOFException;-><init>()V
    throw p0
  :L6
  .line 232
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
  .line 69
    new-instance v0, Ljava/lang/Thread;
    const-string v1, "Ubuntu-web-terminal"
    invoke-direct { v0, p0, v1 }, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V
  .line 70
    const/4 p0, 1
    invoke-virtual { v0, p0 }, Ljava/lang/Thread;->setDaemon(Z)V
  .line 71
    return-object v0
.end method

.method private static query(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
  .annotation system Ldalvik/annotation/Throws;
    value = {
      Ljava/io/IOException;
    }
  .end annotation
  .registers 8
  .line 214
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
  .line 215
    const-string v4, "="
    const/4 v5, 2
    invoke-virtual { v3, v4, v5 }, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;
    move-result-object v3
  .line 216
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
  .line 214
    add-int/lit8 v2, v2, 1
    goto :L0
  :L2
  .line 218
    const-string p0, ""
    return-object p0
.end method

.method static quote(Ljava/lang/String;)Ljava/lang/String;
  .registers 7
  .line 242
    new-instance v0, Ljava/lang/StringBuilder;
    const-string v1, "\""
    invoke-direct { v0, v1 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
  .line 243
    invoke-virtual { p0 }, Ljava/lang/String;->toCharArray()[C
    move-result-object p0
    array-length v1, p0
    const/4 v2, 0
  :L0
    const/16 v3, 34
    if-ge v2, v1, :L5
    aget-char v4, p0, v2
  .line 244
    const/16 v5, 92
    if-eq v4, v3, :L3
    if-ne v4, v5, :L1
    goto :L3
  :L1
  .line 245
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
  .line 246
    invoke-virtual { v0, v4 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    goto :L4
  :L3
  .line 244
    invoke-virtual { v0, v5 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    move-result-object v3
    invoke-virtual { v3, v4 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
  :L4
  .line 243
    add-int/lit8 v2, v2, 1
    goto :L0
  :L5
  .line 248
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
  .line 236
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
  .line 237
    if-nez p4, :L3
    invoke-virtual { p0, p3 }, Ljava/io/OutputStream;->write([B)V
  :L3
  .line 238
    invoke-virtual { p0 }, Ljava/io/OutputStream;->flush()V
  .line 239
    return-void
.end method

.method private serve(Ljava/net/Socket;)V
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L109
  .catchall { :L0 .. :L1 } :L108
  .catch Ljava/lang/Exception; { :L2 .. :L3 } :L4
  .catchall { :L2 .. :L3 } :L108
  .catch Ljava/lang/Exception; { :L6 .. :L11 } :L109
  .catchall { :L6 .. :L11 } :L108
  .catch Ljava/lang/Exception; { :L12 .. :L23 } :L109
  .catchall { :L12 .. :L23 } :L108
  .catch Ljava/io/IOException; { :L24 .. :L25 } :L26
  .catch Ljava/lang/Exception; { :L28 .. :L29 } :L109
  .catchall { :L28 .. :L29 } :L108
  .catch Ljava/io/IOException; { :L30 .. :L31 } :L32
  .catch Ljava/lang/Exception; { :L36 .. :L37 } :L109
  .catchall { :L36 .. :L37 } :L108
  .catch Ljava/lang/Exception; { :L38 .. :L40 } :L109
  .catchall { :L38 .. :L40 } :L108
  .catch Ljava/io/IOException; { :L41 .. :L42 } :L43
  .catch Ljava/lang/Exception; { :L45 .. :L47 } :L109
  .catchall { :L45 .. :L47 } :L108
  .catch Ljava/io/IOException; { :L49 .. :L50 } :L51
  .catch Ljava/lang/Exception; { :L53 .. :L57 } :L109
  .catchall { :L53 .. :L57 } :L108
  .catch Ljava/io/IOException; { :L58 .. :L59 } :L60
  .catch Ljava/lang/Exception; { :L62 .. :L63 } :L109
  .catchall { :L62 .. :L63 } :L108
  .catch Ljava/io/IOException; { :L64 .. :L65 } :L66
  .catch Ljava/lang/Exception; { :L68 .. :L69 } :L109
  .catchall { :L68 .. :L69 } :L108
  .catch Ljava/lang/Exception; { :L70 .. :L71 } :L76
  .catchall { :L70 .. :L71 } :L108
  .catch Ljava/io/IOException; { :L72 .. :L73 } :L74
  .catch Ljava/lang/Exception; { :L77 .. :L79 } :L109
  .catchall { :L77 .. :L79 } :L108
  .catch Ljava/io/IOException; { :L80 .. :L81 } :L82
  .catch Ljava/lang/Exception; { :L84 .. :L85 } :L109
  .catchall { :L84 .. :L85 } :L108
  .catch Ljava/lang/Exception; { :L86 .. :L91 } :L109
  .catchall { :L86 .. :L91 } :L108
  .catch Ljava/io/IOException; { :L92 .. :L93 } :L94
  .catch Ljava/lang/Exception; { :L96 .. :L100 } :L109
  .catchall { :L96 .. :L100 } :L108
  .catch Ljava/lang/Exception; { :L102 .. :L103 } :L109
  .catchall { :L102 .. :L103 } :L108
  .catch Ljava/io/IOException; { :L104 .. :L105 } :L106
  .catchall { :L111 .. :L112 } :L108
  .catch Ljava/io/IOException; { :L113 .. :L114 } :L115
  .catchall { :L113 .. :L114 } :L108
  .catch Ljava/io/IOException; { :L118 .. :L119 } :L120
  .catch Ljava/io/IOException; { :L123 .. :L124 } :L125
  .registers 30
  .line 107
    move-object/from16 v1, p0
    move-object/from16 v2, p1
    const-string v0, "UTF-8"
    const-string v3, "sec-websocket-key"
    const-string v4, "/files/jobs"
    const-string v6, "text/plain"
  .line 109
    const/4 v7, 0
  :L0
    new-instance v5, Ljava/io/BufferedInputStream;
    invoke-virtual { v2 }, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;
    move-result-object v8
    const/16 v9, 16384
    invoke-direct { v5, v8, v9 }, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
  .line 110
    invoke-virtual { v2 }, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;
    move-result-object v8
  .line 111
    invoke-static { v5 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->header(Ljava/io/InputStream;)Ljava/lang/String;
    move-result-object v10
  .line 112
    const-string v11, "\r\n"
    invoke-virtual { v10, v11 }, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object v10
  .line 113
    aget-object v11, v10, v7
    const-string v12, " "
    invoke-virtual { v11, v12 }, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object v11
  .line 114
    array-length v12, v11
    const/4 v13, 3
    if-ne v12, v13, :L101
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
    move-object v0, v8
    goto/16 :L102
  :L4
  .line 202
    move-exception v0
    move v12, v7
    goto/16 :L110
  :L5
  .line 118
    const/4 v12, 1
  :L6
    aget-object v15, v11, v12
    invoke-static { v15 }, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;
    move-result-object v15
  .line 119
    move/from16 v16, v12
    new-instance v12, Ljava/util/HashMap;
    invoke-direct { v12 }, Ljava/util/HashMap;-><init>()V
  .line 120
    move/from16 v9, v16
  :L7
    array-length v7, v10
    if-ge v9, v7, :L10
  .line 121
    aget-object v7, v10, v9
    move/from16 v18, v9
    const/16 v9, 58
    invoke-virtual { v7, v9 }, Ljava/lang/String;->indexOf(I)I
    move-result v7
  .line 122
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
  .line 120
    add-int/lit8 v9, v18, 1
    move-object/from16 v10, v19
    const/4 v7, 0
    goto :L7
  :L10
  .line 124
    iget-object v7, v1, Lcom/nomone/vr_desktop/runtime/TerminalServer;->files:Lcom/nomone/vr_desktop/runtime/FileWorkspace;
  :L11
    const-string v10, "Not found"
    const-string v9, "application/json"
    if-eqz v7, :L34
  :L12
    invoke-virtual { v15 }, Ljava/net/URI;->getPath()Ljava/lang/String;
    move-result-object v7
    move-object/from16 v20, v11
    const-string v11, "/files/"
    invoke-virtual { v7, v11 }, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v7
    if-eqz v7, :L35
  .line 126
    nop
  .line 127
    invoke-virtual { v15 }, Ljava/net/URI;->getPath()Ljava/lang/String;
    move-result-object v3
    const-string v7, "/files/list"
    invoke-virtual { v3, v7 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :L13
    const/16 v17, 0
    aget-object v3, v20, v17
    invoke-virtual { v3, v13 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-nez v3, :L13
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
    goto/16 :L22
  :L13
  .line 128
    invoke-virtual { v15 }, Ljava/net/URI;->getPath()Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v3, v4 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :L21
    const/16 v17, 0
    aget-object v3, v20, v17
    invoke-virtual { v3, v13 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :L21
  .line 129
    const-string v3, "content-length"
    const-string v4, "0"
    invoke-interface { v12, v3, v4 }, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/lang/String;
    invoke-static { v3 }, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    move-result-wide v3
  .line 130
    new-instance v7, Ljava/io/ByteArrayOutputStream;
    invoke-direct { v7 }, Ljava/io/ByteArrayOutputStream;-><init>()V
  .line 131
    const/16 v10, 16384
    new-array v10, v10, [B
  :L14
  .line 132
    const-wide/16 v11, 0
    cmp-long v11, v3, v11
    if-lez v11, :L16
  .line 133
    const-wide/16 v11, 16384
    invoke-static { v11, v12, v3, v4 }, Ljava/lang/Math;->min(JJ)J
    move-result-wide v11
    long-to-int v11, v11
    const/4 v12, 0
    invoke-virtual { v5, v10, v12, v11 }, Ljava/io/InputStream;->read([BII)I
    move-result v11
  .line 134
    if-ltz v11, :L15
  .line 135
    invoke-virtual { v7, v10, v12, v11 }, Ljava/io/ByteArrayOutputStream;->write([BII)V
    int-to-long v11, v11
    sub-long/2addr v3, v11
  .line 136
    goto :L14
  :L15
  .line 134
    new-instance v0, Ljava/io/EOFException;
    invoke-direct { v0 }, Ljava/io/EOFException;-><init>()V
    throw v0
  :L16
  .line 137
    new-instance v3, Ljava/util/HashMap;
    invoke-direct { v3 }, Ljava/util/HashMap;-><init>()V
  .line 138
    new-instance v4, Ljava/lang/String;
    invoke-virtual { v7 }, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    move-result-object v5
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;
    invoke-direct { v4, v5, v7 }, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    const-string v5, "&"
    invoke-virtual { v4, v5 }, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    move-result-object v4
    array-length v5, v4
    const/4 v7, 0
  :L17
    if-ge v7, v5, :L20
    aget-object v10, v4, v7
  .line 139
    const-string v11, "="
    const/4 v12, 2
    invoke-virtual { v10, v11, v12 }, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;
    move-result-object v10
  .line 140
    array-length v11, v10
    if-ne v11, v12, :L19
  .line 141
    const/16 v17, 0
    aget-object v11, v10, v17
    invoke-static { v11, v0 }, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v11
  .line 142
    invoke-interface { v3, v11 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v12
    check-cast v12, Ljava/util/List;
  .line 143
    if-nez v12, :L18
    new-instance v12, Ljava/util/ArrayList;
    invoke-direct { v12 }, Ljava/util/ArrayList;-><init>()V
    invoke-interface { v3, v11, v12 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  :L18
  .line 144
    aget-object v10, v10, v16
    invoke-static { v10, v0 }, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v10
    invoke-interface { v12, v10 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
  :L19
  .line 138
    add-int/lit8 v7, v7, 1
    goto :L17
  :L20
  .line 147
    iget-object v0, v1, Lcom/nomone/vr_desktop/runtime/TerminalServer;->files:Lcom/nomone/vr_desktop/runtime/FileWorkspace;
    invoke-virtual { v0, v3 }, Lcom/nomone/vr_desktop/runtime/FileWorkspace;->submit(Ljava/util/Map;)Ljava/lang/String;
    move-result-object v0
  .line 148
    const/16 v3, 201
    goto :L22
  :L21
    invoke-virtual { v15 }, Ljava/net/URI;->getPath()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v0, v4 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L28
    iget-object v0, v1, Lcom/nomone/vr_desktop/runtime/TerminalServer;->files:Lcom/nomone/vr_desktop/runtime/FileWorkspace;
    invoke-virtual { v0 }, Lcom/nomone/vr_desktop/runtime/FileWorkspace;->jobs()Ljava/lang/String;
    move-result-object v0
    const/16 v3, 200
  :L22
  .line 150
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;
    invoke-virtual { v0, v4 }, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
    move-result-object v0
    const/16 v17, 0
    aget-object v4, v20, v17
    invoke-virtual { v4, v14 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v4
    invoke-static { v8, v3, v9, v0, v4 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->response(Ljava/io/OutputStream;ILjava/lang/String;[BZ)V
  :L23
  .line 208
    iget-object v0, v1, Lcom/nomone/vr_desktop/runtime/TerminalServer;->sockets:Ljava/util/Set;
    invoke-interface { v0, v2 }, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
  :L24
  .line 209
    invoke-virtual { v2 }, Ljava/net/Socket;->close()V
  :L25
    goto :L27
  :L26
    move-exception v0
  :L27
  .line 151
    return-void
  :L28
  .line 149
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;
    invoke-virtual { v10, v0 }, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
    move-result-object v0
    const/16 v3, 404
    const/4 v10, 0
    invoke-static { v8, v3, v6, v0, v10 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->response(Ljava/io/OutputStream;ILjava/lang/String;[BZ)V
  :L29
  .line 208
    iget-object v0, v1, Lcom/nomone/vr_desktop/runtime/TerminalServer;->sockets:Ljava/util/Set;
    invoke-interface { v0, v2 }, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
  :L30
  .line 209
    invoke-virtual { v2 }, Ljava/net/Socket;->close()V
  :L31
    goto :L33
  :L32
    move-exception v0
  :L33
  .line 149
    return-void
  :L34
  .line 124
    move-object/from16 v20, v11
  :L35
  .line 153
    const/16 v17, 0
  :L36
    aget-object v0, v20, v17
    invoke-virtual { v0, v13 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
  :L37
    const/16 v4, 10
    const-string v7, "/sessions"
    if-eqz v0, :L53
  :L38
  .line 154
    invoke-virtual { v15 }, Ljava/net/URI;->getPath()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v0, v7 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L39
  .line 155
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
    invoke-static { v8, v3, v9, v0, v10 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->response(Ljava/io/OutputStream;ILjava/lang/String;[BZ)V
    goto :L48
  :L39
  .line 156
    invoke-virtual { v15 }, Ljava/net/URI;->getPath()Ljava/lang/String;
    move-result-object v0
    const-string v3, "/sessions/"
    invoke-virtual { v0, v3 }, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :L46
    invoke-virtual { v15 }, Ljava/net/URI;->getPath()Ljava/lang/String;
    move-result-object v0
    const-string v3, "/close"
    invoke-virtual { v0, v3 }, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :L46
  .line 157
    invoke-virtual { v15 }, Ljava/net/URI;->getPath()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v15 }, Ljava/net/URI;->getPath()Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v3 }, Ljava/lang/String;->length()I
    move-result v3
    add-int/lit8 v3, v3, -6
    invoke-virtual { v0, v4, v3 }, Ljava/lang/String;->substring(II)Ljava/lang/String;
    move-result-object v0
  .line 158
    iget-object v3, v1, Lcom/nomone/vr_desktop/runtime/TerminalServer;->provider:Lcom/nomone/vr_desktop/runtime/TerminalServer$Provider;
    invoke-interface { v3, v0 }, Lcom/nomone/vr_desktop/runtime/TerminalServer$Provider;->find(Ljava/lang/String;)Lcom/nomone/vr_desktop/runtime/TerminalServer$State;
    move-result-object v3
  .line 159
    if-nez v3, :L45
    const-string v0, "{}"
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;
    invoke-virtual { v0, v3 }, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
    move-result-object v0
    const/16 v3, 404
    const/4 v10, 0
    invoke-static { v8, v3, v9, v0, v10 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->response(Ljava/io/OutputStream;ILjava/lang/String;[BZ)V
  :L40
  .line 208
    iget-object v0, v1, Lcom/nomone/vr_desktop/runtime/TerminalServer;->sockets:Ljava/util/Set;
    invoke-interface { v0, v2 }, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
  :L41
  .line 209
    invoke-virtual { v2 }, Ljava/net/Socket;->close()V
  :L42
    goto :L44
  :L43
    move-exception v0
  :L44
  .line 159
    return-void
  :L45
  .line 160
    iget-object v4, v1, Lcom/nomone/vr_desktop/runtime/TerminalServer;->provider:Lcom/nomone/vr_desktop/runtime/TerminalServer$Provider;
    invoke-interface { v4, v0 }, Lcom/nomone/vr_desktop/runtime/TerminalServer$Provider;->stop(Ljava/lang/String;)V
  .line 161
    invoke-static { v3 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->stateJson(Lcom/nomone/vr_desktop/runtime/TerminalServer$State;)Ljava/lang/String;
    move-result-object v0
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;
    invoke-virtual { v0, v3 }, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
    move-result-object v0
    const/16 v3, 200
    const/4 v10, 0
    invoke-static { v8, v3, v9, v0, v10 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->response(Ljava/io/OutputStream;ILjava/lang/String;[BZ)V
    goto :L47
  :L46
  .line 162
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;
    invoke-virtual { v10, v0 }, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
    move-result-object v0
    const/16 v3, 404
    const/4 v10, 0
    invoke-static { v8, v3, v6, v0, v10 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->response(Ljava/io/OutputStream;ILjava/lang/String;[BZ)V
  :L47
    nop
  :L48
  .line 208
    iget-object v0, v1, Lcom/nomone/vr_desktop/runtime/TerminalServer;->sockets:Ljava/util/Set;
    invoke-interface { v0, v2 }, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
  :L49
  .line 209
    invoke-virtual { v2 }, Ljava/net/Socket;->close()V
  :L50
    goto :L52
  :L51
    move-exception v0
  :L52
  .line 163
    return-void
  :L53
  .line 165
    invoke-virtual { v15 }, Ljava/net/URI;->getPath()Ljava/lang/String;
    move-result-object v0
    invoke-virtual { v0, v7 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L62
  .line 166
    new-instance v0, Ljava/lang/StringBuilder;
    const-string v3, "{\"sessions\":["
    invoke-direct { v0, v3 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
  .line 167
    iget-object v3, v1, Lcom/nomone/vr_desktop/runtime/TerminalServer;->provider:Lcom/nomone/vr_desktop/runtime/TerminalServer$Provider;
    invoke-interface { v3 }, Lcom/nomone/vr_desktop/runtime/TerminalServer$Provider;->list()[Lcom/nomone/vr_desktop/runtime/TerminalServer$State;
    move-result-object v3
    array-length v4, v3
    const/4 v5, 0
  :L54
    if-ge v5, v4, :L56
    aget-object v7, v3, v5
  .line 168
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->length()I
    move-result v10
    const/16 v11, 13
    if-le v10, v11, :L55
    const/16 v10, 44
    invoke-virtual { v0, v10 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
  :L55
  .line 169
    invoke-static { v7 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->stateJson(Lcom/nomone/vr_desktop/runtime/TerminalServer$State;)Ljava/lang/String;
    move-result-object v7
    invoke-virtual { v0, v7 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 167
    add-int/lit8 v5, v5, 1
    goto :L54
  :L56
  .line 171
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
    invoke-static { v8, v4, v9, v0, v3 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->response(Ljava/io/OutputStream;ILjava/lang/String;[BZ)V
  :L57
  .line 208
    iget-object v0, v1, Lcom/nomone/vr_desktop/runtime/TerminalServer;->sockets:Ljava/util/Set;
    invoke-interface { v0, v2 }, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
  :L58
  .line 209
    invoke-virtual { v2 }, Ljava/net/Socket;->close()V
  :L59
    goto :L61
  :L60
    move-exception v0
  :L61
  .line 172
    return-void
  :L62
  .line 174
    invoke-virtual { v15 }, Ljava/net/URI;->getPath()Ljava/lang/String;
    move-result-object v0
    const-string v7, "/ws"
    invoke-virtual { v0, v7 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L78
  .line 175
    iget-object v0, v1, Lcom/nomone/vr_desktop/runtime/TerminalServer;->provider:Lcom/nomone/vr_desktop/runtime/TerminalServer$Provider;
    const-string v4, "session"
    invoke-static { v15, v4 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->query(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v4
    invoke-interface { v0, v4 }, Lcom/nomone/vr_desktop/runtime/TerminalServer$Provider;->find(Ljava/lang/String;)Lcom/nomone/vr_desktop/runtime/TerminalServer$State;
    move-result-object v0
    if-nez v0, :L68
  .line 176
    const-string v0, "Onbekende terminalsessie"
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;
    invoke-virtual { v0, v3 }, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
    move-result-object v0
    const/16 v3, 404
    const/4 v10, 0
    invoke-static { v8, v3, v6, v0, v10 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->response(Ljava/io/OutputStream;ILjava/lang/String;[BZ)V
  :L63
  .line 208
    iget-object v0, v1, Lcom/nomone/vr_desktop/runtime/TerminalServer;->sockets:Ljava/util/Set;
    invoke-interface { v0, v2 }, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
  :L64
  .line 209
    invoke-virtual { v2 }, Ljava/net/Socket;->close()V
  :L65
    goto :L67
  :L66
    move-exception v0
  :L67
  .line 177
    return-void
  :L68
  .line 179
    const-string v0, "websocket"
    const-string v4, "upgrade"
    invoke-interface { v12, v4 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Ljava/lang/String;
    invoke-virtual { v0, v4 }, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :L77
    const-string v0, "13"
    const-string v4, "sec-websocket-version"
    invoke-interface { v12, v4 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v4
    invoke-virtual { v0, v4 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L77
    invoke-interface { v12, v3 }, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L77
  .line 180
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-interface { v12, v3 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/lang/String;
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    const-string v3, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
  .line 181
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
  .line 182
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
  .line 183
    invoke-virtual { v8 }, Ljava/io/OutputStream;->flush()V
  :L69
  .line 184
    nop
  .line 185
    const/4 v10, 0
  :L70
    invoke-virtual { v2, v10 }, Ljava/net/Socket;->setSoTimeout(I)V
  .line 186
    new-instance v0, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;
    move-object v3, v5
    move-object v4, v8
    move-object v5, v15
    invoke-direct/range { v0 .. v5 }, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;-><init>(Lcom/nomone/vr_desktop/runtime/TerminalServer;Ljava/net/Socket;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/net/URI;)V
    invoke-static { v0 }, Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;->access$000(Lcom/nomone/vr_desktop/runtime/TerminalServer$Connection;)V
  :L71
  .line 208
    iget-object v0, v1, Lcom/nomone/vr_desktop/runtime/TerminalServer;->sockets:Ljava/util/Set;
    invoke-interface { v0, v2 }, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
  :L72
  .line 209
    invoke-virtual { v2 }, Ljava/net/Socket;->close()V
  :L73
    goto :L75
  :L74
    move-exception v0
  :L75
  .line 187
    return-void
  :L76
  .line 202
    move-exception v0
    move/from16 v12, v16
    goto/16 :L110
  :L77
  .line 179
    new-instance v0, Ljava/io/IOException;
    const-string v3, "Invalid WebSocket handshake"
    invoke-direct { v0, v3 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw v0
  :L78
  .line 189
    move-object v0, v8
    move-object v5, v15
    invoke-virtual { v5 }, Ljava/net/URI;->getPath()Ljava/lang/String;
    move-result-object v3
    const-string v7, "/health"
    invoke-virtual { v3, v7 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :L84
  .line 190
    iget-object v3, v1, Lcom/nomone/vr_desktop/runtime/TerminalServer;->provider:Lcom/nomone/vr_desktop/runtime/TerminalServer$Provider;
    invoke-interface { v3 }, Lcom/nomone/vr_desktop/runtime/TerminalServer$Provider;->current()Lcom/nomone/vr_desktop/runtime/TerminalServer$State;
    move-result-object v3
    invoke-static { v3 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->stateJson(Lcom/nomone/vr_desktop/runtime/TerminalServer$State;)Ljava/lang/String;
    move-result-object v3
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;
    invoke-virtual { v3, v4 }, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
    move-result-object v3
    const/16 v17, 0
    aget-object v4, v20, v17
    invoke-virtual { v4, v14 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v4
    const/16 v5, 200
    invoke-static { v0, v5, v9, v3, v4 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->response(Ljava/io/OutputStream;ILjava/lang/String;[BZ)V
  :L79
  .line 208
    iget-object v0, v1, Lcom/nomone/vr_desktop/runtime/TerminalServer;->sockets:Ljava/util/Set;
    invoke-interface { v0, v2 }, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
  :L80
  .line 209
    invoke-virtual { v2 }, Ljava/net/Socket;->close()V
  :L81
    goto :L83
  :L82
    move-exception v0
  :L83
  .line 191
    return-void
  :L84
  .line 193
    invoke-virtual { v5 }, Ljava/net/URI;->getPath()Ljava/lang/String;
    move-result-object v3
  .line 194
    const-string v5, "/"
    invoke-virtual { v3, v5 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v5
  :L85
    const-string v7, "/terminal/"
    if-nez v5, :L87
  :L86
    const-string v5, "/terminal"
    invoke-virtual { v3, v5 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v5
    if-nez v5, :L87
    invoke-virtual { v3, v7 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v5
    if-eqz v5, :L88
  :L87
    const-string v3, "/terminal/index.html"
  :L88
  .line 195
    invoke-virtual { v3, v7 }, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v5
    if-eqz v5, :L89
    invoke-virtual { v3, v4 }, Ljava/lang/String;->substring(I)Ljava/lang/String;
    move-result-object v3
    goto :L90
  :L89
    const-string v3, ""
  :L90
  .line 196
    const-string v21, "index.html"
    const-string v22, "app.js"
    const-string v23, "style.css"
    const-string v24, "xterm.js"
    const-string v25, "xterm.css"
    const-string v26, "addon-fit.js"
    const-string v27, "files.js"
    filled-new-array/range { v21 .. v27 }, [Ljava/lang/String;
    move-result-object v4
    invoke-static { v4 }, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    move-result-object v4
    invoke-interface { v4, v3 }, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    move-result v4
    if-nez v4, :L96
  .line 197
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;
    invoke-virtual { v10, v3 }, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
    move-result-object v3
    const/16 v17, 0
    aget-object v4, v20, v17
    invoke-virtual { v4, v14 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v4
    const/16 v5, 404
    invoke-static { v0, v5, v6, v3, v4 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->response(Ljava/io/OutputStream;ILjava/lang/String;[BZ)V
  :L91
  .line 208
    iget-object v0, v1, Lcom/nomone/vr_desktop/runtime/TerminalServer;->sockets:Ljava/util/Set;
    invoke-interface { v0, v2 }, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
  :L92
  .line 209
    invoke-virtual { v2 }, Ljava/net/Socket;->close()V
  :L93
    goto :L95
  :L94
    move-exception v0
  :L95
  .line 198
    return-void
  :L96
  .line 200
    const-string v4, ".js"
    invoke-virtual { v3, v4 }, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v4
    if-eqz v4, :L97
    const-string v4, "text/javascript"
    goto :L99
  :L97
    const-string v4, ".css"
    invoke-virtual { v3, v4 }, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v4
    if-eqz v4, :L98
    const-string v4, "text/css"
    goto :L99
  :L98
    const-string v4, "text/html"
  :L99
  .line 201
    iget-object v5, v1, Lcom/nomone/vr_desktop/runtime/TerminalServer;->assets:Lcom/nomone/vr_desktop/runtime/TerminalServer$Assets;
    new-instance v7, Ljava/lang/StringBuilder;
    invoke-direct { v7 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v8, "terminal/"
    invoke-virtual { v7, v8 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v7
    invoke-virtual { v7, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    invoke-virtual { v3 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    invoke-interface { v5, v3 }, Lcom/nomone/vr_desktop/runtime/TerminalServer$Assets;->read(Ljava/lang/String;)[B
    move-result-object v3
    const/16 v17, 0
    aget-object v5, v20, v17
    invoke-virtual { v5, v14 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v5
    const/16 v7, 200
    invoke-static { v0, v7, v4, v3, v5 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->response(Ljava/io/OutputStream;ILjava/lang/String;[BZ)V
  :L100
  .line 208
    iget-object v0, v1, Lcom/nomone/vr_desktop/runtime/TerminalServer;->sockets:Ljava/util/Set;
    invoke-interface { v0, v2 }, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    goto :L123
  :L101
  .line 114
    move-object v0, v8
  :L102
  .line 115
    const-string v3, "GET required"
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;
    invoke-virtual { v3, v4 }, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
    move-result-object v3
    const/16 v4, 405
    const/4 v10, 0
    invoke-static { v0, v4, v6, v3, v10 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->response(Ljava/io/OutputStream;ILjava/lang/String;[BZ)V
  :L103
  .line 208
    iget-object v0, v1, Lcom/nomone/vr_desktop/runtime/TerminalServer;->sockets:Ljava/util/Set;
    invoke-interface { v0, v2 }, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
  :L104
  .line 209
    invoke-virtual { v2 }, Ljava/net/Socket;->close()V
  :L105
    goto :L107
  :L106
    move-exception v0
  :L107
  .line 116
    return-void
  :L108
  .line 208
    move-exception v0
    move-object v3, v0
    goto :L117
  :L109
  .line 202
    move-exception v0
    const/4 v12, 0
  :L110
  .line 203
    if-nez v12, :L122
  :L111
    iget-boolean v3, v1, Lcom/nomone/vr_desktop/runtime/TerminalServer;->closed:Z
    if-nez v3, :L122
    instance-of v3, v0, Ljava/io/EOFException;
    if-nez v3, :L122
    instance-of v3, v0, Ljava/net/SocketException;
  :L112
    if-nez v3, :L122
  :L113
  .line 204
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
  :L114
    goto :L116
  :L115
  .line 205
    move-exception v0
  :L116
    goto :L122
  :L117
  .line 208
    iget-object v0, v1, Lcom/nomone/vr_desktop/runtime/TerminalServer;->sockets:Ljava/util/Set;
    invoke-interface { v0, v2 }, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
  :L118
  .line 209
    invoke-virtual { v2 }, Ljava/net/Socket;->close()V
  :L119
    goto :L121
  :L120
    move-exception v0
  :L121
  .line 210
    throw v3
  :L122
  .line 208
    iget-object v0, v1, Lcom/nomone/vr_desktop/runtime/TerminalServer;->sockets:Ljava/util/Set;
    invoke-interface { v0, v2 }, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
  :L123
  .line 209
    invoke-virtual { v2 }, Ljava/net/Socket;->close()V
  :L124
    goto :L126
  :L125
    move-exception v0
  .line 210
    nop
  :L126
  .line 211
    return-void
.end method

.method private static stateJson(Lcom/nomone/vr_desktop/runtime/TerminalServer$State;)Ljava/lang/String;
  .registers 6
  .line 266
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
  .line 267
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
  .line 268
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
  .line 266
    return-object p0
.end method

.method public close()V
  .catch Ljava/io/IOException; { :L0 .. :L1 } :L2
  .catch Ljava/io/IOException; { :L5 .. :L6 } :L7
  .registers 3
  .line 397
    const/4 v0, 1
    iput-boolean v0, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer;->closed:Z
  :L0
  .line 398
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer;->listener:Ljava/net/ServerSocket;
    invoke-virtual { v0 }, Ljava/net/ServerSocket;->close()V
  :L1
    goto :L3
  :L2
    move-exception v0
  :L3
  .line 399
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
  .line 400
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer;->clients:Ljava/util/concurrent/ExecutorService;
    invoke-interface { v0 }, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
  .line 401
    return-void
.end method

.method synthetic lambda$accept$1$com-nomone-vr_desktop-runtime-TerminalServer(Ljava/net/Socket;)V
  .registers 2
  .line 99
    invoke-direct { p0, p1 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->serve(Ljava/net/Socket;)V
    return-void
.end method

.method public port()I
  .registers 2
  .line 90
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/TerminalServer;->listener:Ljava/net/ServerSocket;
    invoke-virtual { v0 }, Ljava/net/ServerSocket;->getLocalPort()I
    move-result v0
    return v0
.end method
