.class public final Lcom/nomone/vr_desktop/runtime/FileWorkspace;
.super Ljava/lang/Object;
.implements Ljava/io/Closeable;
.source "FileWorkspace.java"

.annotation system Ldalvik/annotation/MemberClasses;
  value = {
    Lcom/nomone/vr_desktop/runtime/FileWorkspace$Runner;,
    Lcom/nomone/vr_desktop/runtime/FileWorkspace$Errors;,
    Lcom/nomone/vr_desktop/runtime/FileWorkspace$Job;
  }
.end annotation

.field private volatile closed:Z

.field private final hostRoot:Ljava/lang/String;

.field private final jobs:Ljava/util/Map;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/Map<",
      "Ljava/lang/String;",
      "Lcom/nomone/vr_desktop/runtime/FileWorkspace$Job;",
      ">;"
    }
  .end annotation
.end field

.field private final processes:Ljava/util/Set;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "Ljava/util/Set<",
      "Ljava/lang/Process;",
      ">;"
    }
  .end annotation
.end field

.field private final runner:Lcom/nomone/vr_desktop/runtime/FileWorkspace$Runner;

.field private final workers:Ljava/util/concurrent/ExecutorService;

.method public constructor <init>(Lcom/nomone/vr_desktop/runtime/FileWorkspace$Runner;Ljava/lang/String;)V
  .registers 4
  .line 31
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 26
    new-instance v0, Ljava/util/LinkedHashMap;
    invoke-direct { v0 }, Ljava/util/LinkedHashMap;-><init>()V
    invoke-static { v0 }, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;
    move-result-object v0
    iput-object v0, p0, Lcom/nomone/vr_desktop/runtime/FileWorkspace;->jobs:Ljava/util/Map;
  .line 27
    invoke-static { }, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;
    move-result-object v0
    iput-object v0, p0, Lcom/nomone/vr_desktop/runtime/FileWorkspace;->processes:Ljava/util/Set;
  .line 28
    invoke-static { }, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;
    move-result-object v0
    iput-object v0, p0, Lcom/nomone/vr_desktop/runtime/FileWorkspace;->workers:Ljava/util/concurrent/ExecutorService;
  .line 32
    iput-object p1, p0, Lcom/nomone/vr_desktop/runtime/FileWorkspace;->runner:Lcom/nomone/vr_desktop/runtime/FileWorkspace$Runner;
  .line 33
    iput-object p2, p0, Lcom/nomone/vr_desktop/runtime/FileWorkspace;->hostRoot:Ljava/lang/String;
  .line 34
    return-void
.end method

.method static synthetic access$000(Ljava/io/InputStream;)[B
  .annotation system Ldalvik/annotation/Throws;
    value = {
      Ljava/io/IOException;
    }
  .end annotation
  .registers 1
  .line 22
    invoke-static { p0 }, Lcom/nomone/vr_desktop/runtime/FileWorkspace;->read(Ljava/io/InputStream;)[B
    move-result-object p0
    return-object p0
.end method

.method static synthetic access$100(Ljava/lang/String;)Ljava/lang/String;
  .registers 1
  .line 22
    invoke-static { p0 }, Lcom/nomone/vr_desktop/runtime/FileWorkspace;->quote(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p0
    return-object p0
.end method

.method private execute(Lcom/nomone/vr_desktop/runtime/FileWorkspace$Job;)V
  .catch Ljava/lang/Exception; { :L0 .. :L2 } :L28
  .catch Ljava/lang/Exception; { :L3 .. :L9 } :L28
  .catchall { :L9 .. :L10 } :L22
  .catchall { :L10 .. :L11 } :L16
  .catchall { :L12 .. :L14 } :L22
  .catch Ljava/lang/Exception; { :L14 .. :L15 } :L28
  .catchall { :L17 .. :L18 } :L19
  .catchall { :L20 .. :L22 } :L22
  .catch Ljava/lang/Exception; { :L23 .. :L27 } :L28
  .registers 11
  .line 131
    const-string v0, "/"
    const-string v1, "running"
    iput-object v1, p1, Lcom/nomone/vr_desktop/runtime/FileWorkspace$Job;->status:Ljava/lang/String;
  :L0
  .line 133
    iget-object v1, p1, Lcom/nomone/vr_desktop/runtime/FileWorkspace$Job;->sources:Ljava/util/List;
    invoke-interface { v1 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v1
  :L1
    invoke-interface { v1 }, Ljava/util/Iterator;->hasNext()Z
    move-result v2
    if-eqz v2, :L26
    invoke-interface { v1 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/lang/String;
  .line 134
    invoke-static { }, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    move-result-object v3
    invoke-virtual { v3 }, Ljava/lang/Thread;->isInterrupted()Z
    move-result v3
    if-nez v3, :L25
  .line 135
    iput-object v2, p1, Lcom/nomone/vr_desktop/runtime/FileWorkspace$Job;->current:Ljava/lang/String;
  .line 136
    iget-object v3, p1, Lcom/nomone/vr_desktop/runtime/FileWorkspace$Job;->from:Ljava/lang/String;
    invoke-direct { p0, v3, v2 }, Lcom/nomone/vr_desktop/runtime/FileWorkspace;->location(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
  .line 137
    new-instance v4, Ljava/util/ArrayList;
    invoke-direct { v4 }, Ljava/util/ArrayList;-><init>()V
  .line 138
    iget-object v5, p1, Lcom/nomone/vr_desktop/runtime/FileWorkspace$Job;->operation:Ljava/lang/String;
    const-string v6, "remove"
    invoke-virtual { v5, v6 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v5
  :L2
    const-string v6, "--"
    if-eqz v5, :L4
  :L3
  .line 139
    const-string v2, "/bin/rm"
    const-string v5, "-rv"
    filled-new-array { v2, v5, v6, v3 }, [Ljava/lang/String;
    move-result-object v2
    invoke-static { v4, v2 }, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z
    goto :L8
  :L4
  .line 141
    const/16 v5, 47
    invoke-virtual { v2, v5 }, Ljava/lang/String;->lastIndexOf(I)I
    move-result v5
  .line 142
    add-int/lit8 v5, v5, 1
    invoke-virtual { v2, v5 }, Ljava/lang/String;->substring(I)Ljava/lang/String;
    move-result-object v2
  .line 143
    invoke-virtual { v2 }, Ljava/lang/String;->isEmpty()Z
    move-result v5
    if-nez v5, :L24
  .line 144
    new-instance v5, Ljava/lang/StringBuilder;
    invoke-direct { v5 }, Ljava/lang/StringBuilder;-><init>()V
    iget-object v7, p1, Lcom/nomone/vr_desktop/runtime/FileWorkspace$Job;->to:Ljava/lang/String;
    iget-object v8, p1, Lcom/nomone/vr_desktop/runtime/FileWorkspace$Job;->target:Ljava/lang/String;
    invoke-direct { p0, v7, v8 }, Lcom/nomone/vr_desktop/runtime/FileWorkspace;->location(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v7
    invoke-virtual { v5, v7 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v5
    iget-object v7, p1, Lcom/nomone/vr_desktop/runtime/FileWorkspace$Job;->target:Ljava/lang/String;
    invoke-virtual { v7, v0 }, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v7
    if-eqz v7, :L5
    const-string v7, ""
    goto :L6
  :L5
    move-object v7, v0
  :L6
    invoke-virtual { v5, v7 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v5
    invoke-virtual { v5, v2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v2
    invoke-virtual { v2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
  .line 145
    iget-object v5, p1, Lcom/nomone/vr_desktop/runtime/FileWorkspace$Job;->operation:Ljava/lang/String;
    const-string v7, "copy"
    invoke-virtual { v5, v7 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v5
    if-eqz v5, :L7
    const-string v5, "/bin/cp"
    const-string v7, "-RvT"
    filled-new-array { v5, v7, v6, v3, v2 }, [Ljava/lang/String;
    move-result-object v2
    invoke-static { v4, v2 }, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z
    goto :L8
  :L7
  .line 146
    const-string v5, "/bin/mv"
    const-string v7, "-vT"
    filled-new-array { v5, v7, v6, v3, v2 }, [Ljava/lang/String;
    move-result-object v2
    invoke-static { v4, v2 }, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z
  :L8
  .line 148
    const/4 v2, 0
    new-array v2, v2, [Ljava/lang/String;
    invoke-interface { v4, v2 }, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    move-result-object v2
    check-cast v2, [Ljava/lang/String;
    invoke-direct { p0, v2 }, Lcom/nomone/vr_desktop/runtime/FileWorkspace;->start([Ljava/lang/String;)Ljava/lang/Process;
    move-result-object v2
  :L9
  .line 150
    new-instance v3, Lcom/nomone/vr_desktop/runtime/FileWorkspace$Errors;
    invoke-virtual { v2 }, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;
    move-result-object v4
    invoke-direct { v3, v4 }, Lcom/nomone/vr_desktop/runtime/FileWorkspace$Errors;-><init>(Ljava/io/InputStream;)V
  .line 151
    new-instance v4, Ljava/io/BufferedReader;
    new-instance v5, Ljava/io/InputStreamReader;
    invoke-virtual { v2 }, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;
    move-result-object v6
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;
    invoke-direct { v5, v6, v7 }, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    invoke-direct { v4, v5 }, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
  :L10
  .line 153
    invoke-virtual { v4 }, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    move-result-object v5
    if-eqz v5, :L12
    iput-object v5, p1, Lcom/nomone/vr_desktop/runtime/FileWorkspace$Job;->detail:Ljava/lang/String;
  :L11
    goto :L10
  :L12
  .line 154
    invoke-virtual { v4 }, Ljava/io/BufferedReader;->close()V
  .line 155
    invoke-virtual { v2 }, Ljava/lang/Process;->waitFor()I
    move-result v4
  .line 156
    invoke-virtual { v3 }, Lcom/nomone/vr_desktop/runtime/FileWorkspace$Errors;->text()Ljava/lang/String;
    move-result-object v3
  .line 157
    if-eqz v4, :L14
    new-instance v0, Ljava/io/IOException;
    invoke-virtual { v3 }, Ljava/lang/String;->isEmpty()Z
    move-result v1
    if-eqz v1, :L13
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct { v1 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "Bestandsactie mislukt \u00b7 exit "
    invoke-virtual { v1, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1, v4 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
  :L13
    invoke-direct { v0, v3 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw v0
  :L14
  .line 158
    iget-object v3, p0, Lcom/nomone/vr_desktop/runtime/FileWorkspace;->processes:Ljava/util/Set;
    invoke-interface { v3, v2 }, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    invoke-virtual { v2 }, Ljava/lang/Process;->destroy()V
  .line 159
    iget v2, p1, Lcom/nomone/vr_desktop/runtime/FileWorkspace$Job;->completed:I
    add-int/lit8 v2, v2, 1
    iput v2, p1, Lcom/nomone/vr_desktop/runtime/FileWorkspace$Job;->completed:I
  :L15
  .line 160
    goto/16 :L1
  :L16
  .line 151
    move-exception v0
  :L17
    invoke-virtual { v4 }, Ljava/io/BufferedReader;->close()V
  :L18
    goto :L21
  :L19
    move-exception v1
  :L20
    invoke-virtual { v0, v1 }, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
  :L21
    throw v0
  :L22
  .line 158
    move-exception v0
  :L23
    iget-object v1, p0, Lcom/nomone/vr_desktop/runtime/FileWorkspace;->processes:Ljava/util/Set;
    invoke-interface { v1, v2 }, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    invoke-virtual { v2 }, Ljava/lang/Process;->destroy()V
    throw v0
  :L24
  .line 143
    new-instance v0, Ljava/io/IOException;
    const-string v1, "Selecteer een bestand of mapnaam"
    invoke-direct { v0, v1 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw v0
  :L25
  .line 134
    new-instance v0, Ljava/io/IOException;
    const-string v1, "Actie onderbroken"
    invoke-direct { v0, v1 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw v0
  :L26
  .line 161
    const-string v0, "done"
    iput-object v0, p1, Lcom/nomone/vr_desktop/runtime/FileWorkspace$Job;->status:Ljava/lang/String;
  :L27
  .line 166
    goto :L32
  :L28
  .line 162
    move-exception v0
  .line 163
    instance-of v1, v0, Ljava/lang/InterruptedException;
    if-eqz v1, :L29
    invoke-static { }, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/Thread;->interrupt()V
  :L29
  .line 164
    invoke-virtual { v0 }, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
    move-result-object v1
    if-nez v1, :L30
    invoke-virtual { v0 }, Ljava/lang/Exception;->toString()Ljava/lang/String;
    move-result-object v0
    goto :L31
  :L30
    invoke-virtual { v0 }, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
    move-result-object v0
  :L31
    iput-object v0, p1, Lcom/nomone/vr_desktop/runtime/FileWorkspace$Job;->error:Ljava/lang/String;
  .line 165
    const-string v0, "failed"
    iput-object v0, p1, Lcom/nomone/vr_desktop/runtime/FileWorkspace$Job;->status:Ljava/lang/String;
  :L32
  .line 167
    return-void
.end method

.method static synthetic lambda$list$0([Ljava/lang/String;)Ljava/lang/Boolean;
  .registers 4
  .line 87
    const/4 v0, 1
    aget-object v1, p0, v0
    const-string v2, "d"
    invoke-virtual { v1, v2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-nez v1, :L0
    const/4 v1, 2
    aget-object p0, p0, v1
    invoke-virtual { p0, v2 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p0
    if-nez p0, :L0
    goto :L1
  :L0
    const/4 v0, 0
  :L1
    invoke-static { v0 }, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    move-result-object p0
    return-object p0
.end method

.method static synthetic lambda$list$1([Ljava/lang/String;)Ljava/lang/String;
  .registers 2
  .line 87
    const/4 v0, 0
    aget-object p0, p0, v0
    return-object p0
.end method

.method private location(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  .annotation system Ldalvik/annotation/Throws;
    value = {
      Ljava/io/IOException;
    }
  .end annotation
  .registers 5
  .line 39
    const-string v0, "android"
    invoke-virtual { v0, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-nez v1, :L1
    const-string v1, "ubuntu"
    invoke-virtual { v1, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :L0
    goto :L1
  :L0
    new-instance p1, Ljava/io/IOException;
    const-string p2, "Onbekend bestandssysteem"
    invoke-direct { p1, p2 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw p1
  :L1
  .line 40
    if-eqz p2, :L3
    const-string v1, "/"
    invoke-virtual { p2, v1 }, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :L3
    const/4 v1, 0
    invoke-virtual { p2, v1 }, Ljava/lang/String;->indexOf(I)I
    move-result v1
    if-gez v1, :L3
  .line 41
    invoke-virtual { v0, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p1
    if-eqz p1, :L2
    new-instance p1, Ljava/lang/StringBuilder;
    invoke-direct { p1 }, Ljava/lang/StringBuilder;-><init>()V
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/FileWorkspace;->hostRoot:Ljava/lang/String;
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object p1
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object p1
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p2
  :L2
    return-object p2
  :L3
  .line 40
    new-instance p1, Ljava/io/IOException;
    const-string p2, "Gebruik een absoluut pad"
    invoke-direct { p1, p2 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method private static one(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/Map<",
      "Ljava/lang/String;",
      "Ljava/util/List<",
      "Ljava/lang/String;",
      ">;>;",
      "Ljava/lang/String;",
      ")",
      "Ljava/lang/String;"
    }
  .end annotation
  .annotation system Ldalvik/annotation/Throws;
    value = {
      Ljava/io/IOException;
    }
  .end annotation
  .registers 3
  .line 105
    invoke-interface { p0, p1 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object p0
    check-cast p0, Ljava/util/List;
  .line 106
    if-eqz p0, :L0
    invoke-interface { p0 }, Ljava/util/List;->isEmpty()Z
    move-result v0
    if-nez v0, :L0
  .line 107
    const/4 p1, 0
    invoke-interface { p0, p1 }, Ljava/util/List;->get(I)Ljava/lang/Object;
    move-result-object p0
    check-cast p0, Ljava/lang/String;
    return-object p0
  :L0
  .line 106
    new-instance p0, Ljava/io/IOException;
    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct { v0 }, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual { v0, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object p1
    const-string v0, " ontbreekt"
    invoke-virtual { p1, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object p1
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
    invoke-direct { p0, p1 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw p0
.end method

.method private static quote(Ljava/lang/String;)Ljava/lang/String;
  .registers 1
  .line 36
    invoke-static { p0 }, Lcom/nomone/vr_desktop/runtime/TerminalServer;->quote(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p0
    return-object p0
.end method

.method private static read(Ljava/io/InputStream;)[B
  .annotation system Ldalvik/annotation/Throws;
    value = {
      Ljava/io/IOException;
    }
  .end annotation
  .catchall { :L0 .. :L1 } :L14
  .catchall { :L2 .. :L5 } :L8
  .catchall { :L5 .. :L6 } :L14
  .catchall { :L9 .. :L10 } :L11
  .catchall { :L12 .. :L14 } :L14
  .catchall { :L15 .. :L16 } :L17
  .registers 5
  :L0
  .line 53
    new-instance v0, Ljava/io/ByteArrayOutputStream;
    invoke-direct { v0 }, Ljava/io/ByteArrayOutputStream;-><init>()V
  :L1
  .line 54
    const/16 v1, 16384
  :L2
    new-array v1, v1, [B
  :L3
  .line 56
    invoke-virtual { p0, v1 }, Ljava/io/InputStream;->read([B)I
    move-result v2
    const/4 v3, -1
    if-eq v2, v3, :L4
    const/4 v3, 0
    invoke-virtual { v0, v1, v3, v2 }, Ljava/io/ByteArrayOutputStream;->write([BII)V
    goto :L3
  :L4
  .line 57
    invoke-virtual { v0 }, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    move-result-object v1
  :L5
  .line 58
    invoke-virtual { v0 }, Ljava/io/ByteArrayOutputStream;->close()V
  :L6
    if-eqz p0, :L7
    invoke-virtual { p0 }, Ljava/io/InputStream;->close()V
  :L7
  .line 57
    return-object v1
  :L8
  .line 53
    move-exception v1
  :L9
    invoke-virtual { v0 }, Ljava/io/ByteArrayOutputStream;->close()V
  :L10
    goto :L13
  :L11
    move-exception v0
  :L12
    invoke-virtual { v1, v0 }, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
  :L13
    throw v1
  :L14
    move-exception v0
    if-eqz p0, :L18
  :L15
    invoke-virtual { p0 }, Ljava/io/InputStream;->close()V
  :L16
    goto :L18
  :L17
    move-exception p0
    invoke-virtual { v0, p0 }, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
  :L18
    throw v0
.end method

.method private varargs start([Ljava/lang/String;)Ljava/lang/Process;
  .annotation system Ldalvik/annotation/Throws;
    value = {
      Ljava/io/IOException;
    }
  .end annotation
  .registers 3
  .line 45
    iget-boolean v0, p0, Lcom/nomone/vr_desktop/runtime/FileWorkspace;->closed:Z
    if-nez v0, :L0
  .line 46
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/FileWorkspace;->runner:Lcom/nomone/vr_desktop/runtime/FileWorkspace$Runner;
    invoke-interface { v0, p1 }, Lcom/nomone/vr_desktop/runtime/FileWorkspace$Runner;->start([Ljava/lang/String;)Ljava/lang/Process;
    move-result-object p1
  .line 47
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/FileWorkspace;->processes:Ljava/util/Set;
    invoke-interface { v0, p1 }, Ljava/util/Set;->add(Ljava/lang/Object;)Z
  .line 48
    invoke-virtual { p1 }, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/io/OutputStream;->close()V
  .line 49
    return-object p1
  :L0
  .line 45
    new-instance p1, Ljava/io/IOException;
    const-string v0, "Bestandswerkruimte is gestopt"
    invoke-direct { p1, v0 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw p1
.end method

.method public close()V
  .catchall { :L0 .. :L1 } :L4
  .catchall { :L5 .. :L6 } :L4
  .registers 3
  .line 206
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/FileWorkspace;->jobs:Ljava/util/Map;
    monitor-enter v0
    const/4 v1, 1
  :L0
    iput-boolean v1, p0, Lcom/nomone/vr_desktop/runtime/FileWorkspace;->closed:Z
    iget-object v1, p0, Lcom/nomone/vr_desktop/runtime/FileWorkspace;->workers:Ljava/util/concurrent/ExecutorService;
    invoke-interface { v1 }, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    monitor-exit v0
  :L1
  .line 207
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/FileWorkspace;->processes:Ljava/util/Set;
    invoke-interface { v0 }, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L2
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L3
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/Process;
    invoke-virtual { v1 }, Ljava/lang/Process;->destroy()V
    goto :L2
  :L3
  .line 208
    return-void
  :L4
  .line 206
    move-exception v1
  :L5
    monitor-exit v0
  :L6
    throw v1
.end method

.method public jobs()Ljava/lang/String;
  .catchall { :L0 .. :L4 } :L5
  .catchall { :L6 .. :L7 } :L5
  .registers 6
  .line 170
    new-instance v0, Ljava/lang/StringBuilder;
    const-string v1, "{\"jobs\":["
    invoke-direct { v0, v1 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
  .line 171
    iget-object v1, p0, Lcom/nomone/vr_desktop/runtime/FileWorkspace;->jobs:Ljava/util/Map;
    monitor-enter v1
  .line 172
    nop
  :L0
  .line 173
    iget-object v2, p0, Lcom/nomone/vr_desktop/runtime/FileWorkspace;->jobs:Ljava/util/Map;
    invoke-interface { v2 }, Ljava/util/Map;->values()Ljava/util/Collection;
    move-result-object v2
    invoke-interface { v2 }, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    move-result-object v2
    const/4 v3, 0
  :L1
    invoke-interface { v2 }, Ljava/util/Iterator;->hasNext()Z
    move-result v4
    if-eqz v4, :L3
    invoke-interface { v2 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Lcom/nomone/vr_desktop/runtime/FileWorkspace$Job;
  .line 174
    if-eqz v3, :L2
    const/16 v3, 44
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
  :L2
  .line 175
    nop
  .line 176
    invoke-virtual { v4 }, Lcom/nomone/vr_desktop/runtime/FileWorkspace$Job;->json()Ljava/lang/String;
    move-result-object v3
    invoke-virtual { v0, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
  .line 177
    const/4 v3, 1
    goto :L1
  :L3
  .line 178
    monitor-exit v1
  :L4
  .line 179
    const-string v1, "]}"
    invoke-virtual { v0, v1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v0
    invoke-virtual { v0 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    return-object v0
  :L5
  .line 178
    move-exception v0
  :L6
    monitor-exit v1
  :L7
    throw v0
.end method

.method synthetic lambda$submit$2$com-nomone-vr_desktop-runtime-FileWorkspace(Lcom/nomone/vr_desktop/runtime/FileWorkspace$Job;)V
  .registers 2
  .line 125
    invoke-direct { p0, p1 }, Lcom/nomone/vr_desktop/runtime/FileWorkspace;->execute(Lcom/nomone/vr_desktop/runtime/FileWorkspace$Job;)V
    return-void
.end method

.method public list(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  .annotation system Ldalvik/annotation/Throws;
    value = {
      Ljava/io/IOException;
    }
  .end annotation
  .catch Ljava/lang/InterruptedException; { :L0 .. :L11 } :L13
  .catchall { :L0 .. :L11 } :L12
  .catchall { :L14 .. :L15 } :L12
  .registers 16
  .line 78
    const-string v0, "d"
    invoke-direct { p0, p1, p2 }, Lcom/nomone/vr_desktop/runtime/FileWorkspace;->location(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
    const-string v8, "-printf"
    const-string v9, "%f\\0%y\\0%Y\\0%s\\0%T@\\0"
    const-string v1, "/usr/bin/find"
    const-string v2, "-H"
    const-string v4, "-mindepth"
    const-string v5, "1"
    const-string v6, "-maxdepth"
    const-string v7, "1"
    filled-new-array/range { v1 .. v9 }, [Ljava/lang/String;
    move-result-object v1
    invoke-direct { p0, v1 }, Lcom/nomone/vr_desktop/runtime/FileWorkspace;->start([Ljava/lang/String;)Ljava/lang/Process;
    move-result-object v1
  :L0
  .line 80
    new-instance v2, Lcom/nomone/vr_desktop/runtime/FileWorkspace$Errors;
    invoke-virtual { v1 }, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;
    move-result-object v3
    invoke-direct { v2, v3 }, Lcom/nomone/vr_desktop/runtime/FileWorkspace$Errors;-><init>(Ljava/io/InputStream;)V
  .line 81
    new-instance v3, Ljava/lang/String;
    invoke-virtual { v1 }, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;
    move-result-object v4
    invoke-static { v4 }, Lcom/nomone/vr_desktop/runtime/FileWorkspace;->read(Ljava/io/InputStream;)[B
    move-result-object v4
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;
    invoke-direct { v3, v4, v5 }, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
  .line 82
    invoke-virtual { v1 }, Ljava/lang/Process;->waitFor()I
    move-result v4
  .line 83
    invoke-virtual { v2 }, Lcom/nomone/vr_desktop/runtime/FileWorkspace$Errors;->text()Ljava/lang/String;
    move-result-object v2
  .line 84
    const-string v5, "\u0000"
    const/4 v6, -1
    invoke-virtual { v3, v5, v6 }, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;
    move-result-object v3
  .line 85
    new-instance v5, Ljava/util/ArrayList;
    invoke-direct { v5 }, Ljava/util/ArrayList;-><init>()V
  .line 86
    const/4 v6, 0
    move v7, v6
  :L1
    add-int/lit8 v8, v7, 4
    array-length v9, v3
    if-ge v8, v9, :L2
    aget-object v9, v3, v7
    add-int/lit8 v10, v7, 1
    aget-object v10, v3, v10
    add-int/lit8 v11, v7, 2
    aget-object v11, v3, v11
    add-int/lit8 v12, v7, 3
    aget-object v12, v3, v12
    aget-object v8, v3, v8
    filled-new-array { v9, v10, v11, v12, v8 }, [Ljava/lang/String;
    move-result-object v8
    invoke-interface { v5, v8 }, Ljava/util/List;->add(Ljava/lang/Object;)Z
    add-int/lit8 v7, v7, 5
    goto :L1
  :L2
  .line 87
    new-instance v3, Lcom/nomone/vr_desktop/runtime/FileWorkspace$1;
    invoke-direct { v3 }, Lcom/nomone/vr_desktop/runtime/FileWorkspace$1;-><init>()V
    invoke-static { v3 }, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;
    move-result-object v3
    new-instance v7, Lcom/nomone/vr_desktop/runtime/FileWorkspace$2;
    invoke-direct { v7 }, Lcom/nomone/vr_desktop/runtime/FileWorkspace$2;-><init>()V
    sget-object v8, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;
    invoke-interface { v3, v7, v8 }, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;
    move-result-object v3
    invoke-interface { v5, v3 }, Ljava/util/List;->sort(Ljava/util/Comparator;)V
  .line 88
    new-instance v3, Ljava/lang/StringBuilder;
    const-string v7, "{\"side\":"
    invoke-direct { v3, v7 }, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-static { p1 }, Lcom/nomone/vr_desktop/runtime/FileWorkspace;->quote(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
    invoke-virtual { v3, p1 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object p1
    const-string v3, ",\"path\":"
    invoke-virtual { p1, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object p1
    invoke-static { p2 }, Lcom/nomone/vr_desktop/runtime/FileWorkspace;->quote(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p2
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object p1
    const-string p2, ",\"entries\":["
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object p1
  .line 89
    nop
  .line 90
    invoke-interface { v5 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object p2
    move v3, v6
  :L3
    invoke-interface { p2 }, Ljava/util/Iterator;->hasNext()Z
    move-result v5
    const/16 v7, 125
    if-eqz v5, :L8
    invoke-interface { p2 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v5
    check-cast v5, [Ljava/lang/String;
  .line 91
    if-eqz v3, :L4
    const/16 v3, 44
    invoke-virtual { p1, v3 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
  :L4
  .line 92
    nop
  .line 93
    const-string v3, "{\"name\":"
    invoke-virtual { p1, v3 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    aget-object v8, v5, v6
    invoke-static { v8 }, Lcom/nomone/vr_desktop/runtime/FileWorkspace;->quote(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v8
    invoke-virtual { v3, v8 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    const-string v8, ",\"directory\":"
    invoke-virtual { v3, v8 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    const/4 v8, 1
    aget-object v9, v5, v8
    invoke-virtual { v9, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v9
    if-nez v9, :L6
    const/4 v9, 2
    aget-object v9, v5, v9
    invoke-virtual { v9, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v9
    if-eqz v9, :L5
    goto :L6
  :L5
    move v9, v6
    goto :L7
  :L6
    move v9, v8
  :L7
    invoke-virtual { v3, v9 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    move-result-object v3
    const-string v9, ",\"link\":"
  .line 94
    invoke-virtual { v3, v9 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    aget-object v9, v5, v8
    const-string v10, "l"
    invoke-virtual { v9, v10 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v9
    invoke-virtual { v3, v9 }, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    move-result-object v3
    const-string v9, ",\"bytes\":"
    invoke-virtual { v3, v9 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    const/4 v9, 3
    aget-object v9, v5, v9
    invoke-static { v9 }, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    move-result-wide v9
    invoke-virtual { v3, v9, v10 }, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    move-result-object v3
    const-string v9, ",\"modified\":"
  .line 95
    invoke-virtual { v3, v9 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    const/4 v9, 4
    aget-object v5, v5, v9
    invoke-static { v5 }, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    move-result-wide v9
    invoke-virtual { v3, v9, v10 }, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
    move-result-object v3
    invoke-virtual { v3, v7 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
  .line 96
    move v3, v8
    goto :L3
  :L8
  .line 97
    const-string p2, "],\"error\":"
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object p1
    if-nez v4, :L9
    const-string v2, ""
    goto :L10
  :L9
    invoke-virtual { v2 }, Ljava/lang/String;->isEmpty()Z
    move-result p2
    if-eqz p2, :L10
    new-instance p2, Ljava/lang/StringBuilder;
    invoke-direct { p2 }, Ljava/lang/StringBuilder;-><init>()V
    const-string v0, "Map lezen mislukt \u00b7 exit "
    invoke-virtual { p2, v0 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object p2
    invoke-virtual { p2, v4 }, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object p2
    invoke-virtual { p2 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
  :L10
    invoke-static { v2 }, Lcom/nomone/vr_desktop/runtime/FileWorkspace;->quote(Ljava/lang/String;)Ljava/lang/String;
    move-result-object p2
    invoke-virtual { p1, p2 }, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object p1
    invoke-virtual { p1, v7 }, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    move-result-object p1
    invoke-virtual { p1 }, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object p1
  :L11
  .line 101
    iget-object p2, p0, Lcom/nomone/vr_desktop/runtime/FileWorkspace;->processes:Ljava/util/Set;
    invoke-interface { p2, v1 }, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    invoke-virtual { v1 }, Ljava/lang/Process;->destroy()V
  .line 97
    return-object p1
  :L12
  .line 101
    move-exception v0
    move-object p1, v0
    goto :L15
  :L13
  .line 98
    move-exception v0
    move-object p1, v0
  :L14
  .line 99
    invoke-static { }, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    move-result-object p2
    invoke-virtual { p2 }, Ljava/lang/Thread;->interrupt()V
  .line 100
    new-instance p2, Ljava/io/IOException;
    const-string v0, "Map lezen onderbroken"
    invoke-direct { p2, v0, p1 }, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    throw p2
  :L15
  .line 101
    iget-object p2, p0, Lcom/nomone/vr_desktop/runtime/FileWorkspace;->processes:Ljava/util/Set;
    invoke-interface { p2, v1 }, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    invoke-virtual { v1 }, Ljava/lang/Process;->destroy()V
    throw p1
.end method

.method public submit(Ljava/util/Map;)Ljava/lang/String;
  .annotation system Ldalvik/annotation/Signature;
    value = {
      "(",
      "Ljava/util/Map<",
      "Ljava/lang/String;",
      "Ljava/util/List<",
      "Ljava/lang/String;",
      ">;>;)",
      "Ljava/lang/String;"
    }
  .end annotation
  .annotation system Ldalvik/annotation/Throws;
    value = {
      Ljava/io/IOException;
    }
  .end annotation
  .catchall { :L9 .. :L10 } :L12
  .catchall { :L11 .. :L13 } :L12
  .registers 9
  .line 111
    const-string v0, "operation"
    invoke-static { p1, v0 }, Lcom/nomone/vr_desktop/runtime/FileWorkspace;->one(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
  .line 112
    const-string v0, "copy"
    invoke-virtual { v2, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L1
    const-string v0, "move"
    invoke-virtual { v2, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :L1
    const-string v0, "remove"
    invoke-virtual { v2, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L0
    goto :L1
  :L0
    new-instance p1, Ljava/io/IOException;
    const-string v0, "Onbekende bestandsactie"
    invoke-direct { p1, v0 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw p1
  :L1
  .line 113
    const-string v0, "from"
    invoke-static { p1, v0 }, Lcom/nomone/vr_desktop/runtime/FileWorkspace;->one(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
  .line 114
    const-string v0, "source"
    invoke-interface { p1, v0 }, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v0
    check-cast v0, Ljava/util/List;
  .line 115
    if-eqz v0, :L14
    invoke-interface { v0 }, Ljava/util/List;->isEmpty()Z
    move-result v1
    if-nez v1, :L14
  .line 116
    new-instance v6, Ljava/util/ArrayList;
    invoke-direct { v6, v0 }, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
  .line 117
    invoke-interface { v6 }, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v0
  :L2
    invoke-interface { v0 }, Ljava/util/Iterator;->hasNext()Z
    move-result v1
    if-eqz v1, :L3
    invoke-interface { v0 }, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v1
    check-cast v1, Ljava/lang/String;
    invoke-direct { p0, v3, v1 }, Lcom/nomone/vr_desktop/runtime/FileWorkspace;->location(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    goto :L2
  :L3
  .line 118
    const-string v0, "remove"
    invoke-virtual { v2, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L4
    move-object v4, v3
    goto :L5
  :L4
    const-string v0, "to"
    invoke-static { p1, v0 }, Lcom/nomone/vr_desktop/runtime/FileWorkspace;->one(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    move-object v4, v0
  :L5
  .line 119
    const-string v0, "remove"
    invoke-virtual { v2, v0 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :L6
    const-string p1, ""
    goto :L7
  :L6
    const-string v0, "target"
    invoke-static { p1, v0 }, Lcom/nomone/vr_desktop/runtime/FileWorkspace;->one(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    move-result-object p1
  :L7
    move-object v5, p1
  .line 120
    const-string p1, "remove"
    invoke-virtual { v2, p1 }, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result p1
    if-nez p1, :L8
    invoke-direct { p0, v4, v5 }, Lcom/nomone/vr_desktop/runtime/FileWorkspace;->location(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  :L8
  .line 121
    new-instance v1, Lcom/nomone/vr_desktop/runtime/FileWorkspace$Job;
    invoke-direct/range { v1 .. v6 }, Lcom/nomone/vr_desktop/runtime/FileWorkspace$Job;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
  .line 122
    iget-object p1, p0, Lcom/nomone/vr_desktop/runtime/FileWorkspace;->jobs:Ljava/util/Map;
    monitor-enter p1
  :L9
  .line 123
    iget-boolean v0, p0, Lcom/nomone/vr_desktop/runtime/FileWorkspace;->closed:Z
    if-nez v0, :L11
  .line 124
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/FileWorkspace;->jobs:Ljava/util/Map;
    iget-object v2, v1, Lcom/nomone/vr_desktop/runtime/FileWorkspace$Job;->id:Ljava/lang/String;
    invoke-interface { v0, v2, v1 }, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
  .line 125
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/FileWorkspace;->workers:Ljava/util/concurrent/ExecutorService;
    new-instance v2, Lcom/nomone/vr_desktop/runtime/FileWorkspace$0;
    invoke-direct { v2, p0, v1 }, Lcom/nomone/vr_desktop/runtime/FileWorkspace$0;-><init>(Lcom/nomone/vr_desktop/runtime/FileWorkspace;Lcom/nomone/vr_desktop/runtime/FileWorkspace$Job;)V
    invoke-interface { v0, v2 }, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
  .line 126
    monitor-exit p1
  :L10
  .line 127
    invoke-virtual { v1 }, Lcom/nomone/vr_desktop/runtime/FileWorkspace$Job;->json()Ljava/lang/String;
    move-result-object p1
    return-object p1
  :L11
  .line 123
    new-instance v0, Ljava/io/IOException;
    const-string v1, "Bestandswerkruimte is gestopt"
    invoke-direct { v0, v1 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw v0
  :L12
  .line 126
    move-exception v0
    monitor-exit p1
  :L13
    throw v0
  :L14
  .line 115
    new-instance p1, Ljava/io/IOException;
    const-string v0, "Selecteer bestanden of mappen"
    invoke-direct { p1, v0 }, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw p1
.end method
