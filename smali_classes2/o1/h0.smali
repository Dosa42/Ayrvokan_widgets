.class public final Lo1/h0;
.super Lo1/e0;
.source "SourceFile"


# instance fields
.field public A:Ljava/io/PrintWriter;

.field public final B:I

.field public x:Ljava/net/ServerSocket;

.field public y:Ljava/net/Socket;

.field public z:Ljava/io/BufferedReader;


# direct methods
.method public constructor <init>(Lq1/c;Ljava/lang/ThreadGroup;Lu1/f;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lo1/e0;-><init>(Lq1/c;Ljava/lang/ThreadGroup;Lu1/f;)V

    iput p4, p0, Lo1/h0;->B:I

    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lo1/h0;->y:Ljava/net/Socket;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lo1/h0;->x:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final e()I
    .locals 6

    .line 1
    const/4 v0, 0x0

    iput-object v0, p0, Lo1/h0;->x:Ljava/net/ServerSocket;

    iput-object v0, p0, Lo1/h0;->y:Ljava/net/Socket;

    iput-object v0, p0, Lo1/h0;->z:Ljava/io/BufferedReader;

    iput-object v0, p0, Lo1/h0;->A:Ljava/io/PrintWriter;

    const/4 v1, 0x1

    const/4 v2, 0x2

    :try_start_0
    new-instance v3, Ljava/net/ServerSocket;

    invoke-direct {v3}, Ljava/net/ServerSocket;-><init>()V

    iput-object v3, p0, Lo1/h0;->x:Ljava/net/ServerSocket;

    invoke-virtual {v3, v1}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    iget-object v3, p0, Lo1/h0;->x:Ljava/net/ServerSocket;

    new-instance v4, Ljava/net/InetSocketAddress;

    iget v5, p0, Lo1/h0;->B:I

    invoke-direct {v4, v5}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    invoke-virtual {p0}, Lo1/h0;->l()I

    move-result v3
    :try_end_0
    .catch Ljava/net/BindException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, p0, Lo1/h0;->x:Ljava/net/ServerSocket;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/net/ServerSocket;->close()V

    :cond_0
    iput-object v0, p0, Lo1/h0;->x:Ljava/net/ServerSocket;
    :try_end_1
    .catch Ljava/net/BindException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v3, v1, :cond_2

    invoke-virtual {p0}, Lo1/h0;->j()V

    goto :goto_2

    :catchall_0
    move-exception v0

    move v2, v3

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :goto_0
    if-eq v2, v1, :cond_1

    invoke-virtual {p0}, Lo1/h0;->j()V

    :cond_1
    throw v0

    :catch_1
    const/4 v2, 0x4

    :goto_1
    invoke-virtual {p0}, Lo1/h0;->j()V

    move v3, v2

    :cond_2
    :goto_2
    return v3
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lo1/h0;->z:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final j()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lo1/h0;->z:Ljava/io/BufferedReader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lo1/h0;->A:Ljava/io/PrintWriter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lo1/h0;->y:Ljava/net/Socket;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    const/4 v0, 0x0

    iput-object v0, p0, Lo1/h0;->z:Ljava/io/BufferedReader;

    iput-object v0, p0, Lo1/h0;->A:Ljava/io/PrintWriter;

    iput-object v0, p0, Lo1/h0;->y:Ljava/net/Socket;

    iget-object v1, p0, Lo1/h0;->x:Ljava/net/ServerSocket;

    if-eqz v1, :cond_3

    :try_start_3
    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    iput-object v0, p0, Lo1/h0;->x:Ljava/net/ServerSocket;

    :cond_3
    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo1/h0;->A:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lo1/h0;->A:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public final l()I
    .locals 6

    .line 1
    iget-object v0, p0, Lo1/h0;->x:Ljava/net/ServerSocket;

    const/4 v1, 0x1

    const/4 v2, 0x2

    :try_start_0
    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v3

    iput-object v3, p0, Lo1/h0;->y:Ljava/net/Socket;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    iget-object v5, p0, Lo1/h0;->y:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v3, p0, Lo1/h0;->z:Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/PrintWriter;

    iget-object v4, p0, Lo1/h0;->y:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v3, p0, Lo1/h0;->A:Ljava/io/PrintWriter;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v3, "sdf"

    const-string v4, "Client connected"

    invoke-static {v3, v4}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move v2, v1

    goto :goto_4

    :catch_0
    move-exception v3

    move v4, v1

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catch_2
    move-exception v3

    move v4, v2

    :goto_0
    :try_start_3
    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v0, :cond_0

    const/4 v2, 0x3

    goto :goto_1

    :cond_0
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_1
    if-eq v2, v1, :cond_1

    :goto_2
    invoke-virtual {p0}, Lo1/h0;->j()V

    :cond_1
    move v1, v2

    :goto_3
    return v1

    :catchall_2
    move-exception v0

    move v2, v4

    :goto_4
    if-eq v2, v1, :cond_2

    invoke-virtual {p0}, Lo1/h0;->j()V

    :cond_2
    throw v0
.end method
