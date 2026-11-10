.class public final La3/h0;
.super La3/e;
.source "SourceFile"


# instance fields
.field public final d:I

.field public final e:[B

.field public final f:Ljava/net/DatagramPacket;

.field public g:Landroid/net/Uri;

.field public h:Ljava/net/DatagramSocket;

.field public i:Ljava/net/MulticastSocket;

.field public j:Ljava/net/InetAddress;

.field public k:Ljava/net/InetSocketAddress;

.field public l:Z

.field public m:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, La3/e;-><init>(Z)V

    .line 3
    .line 4
    .line 5
    const/16 v0, 0x1f40

    .line 6
    .line 7
    iput v0, p0, La3/h0;->d:I

    .line 8
    .line 9
    const/16 v0, 0x7d0

    .line 10
    .line 11
    new-array v1, v0, [B

    .line 12
    .line 13
    iput-object v1, p0, La3/h0;->e:[B

    .line 14
    .line 15
    new-instance v2, Ljava/net/DatagramPacket;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-direct {v2, v1, v3, v0}, Ljava/net/DatagramPacket;-><init>([BII)V

    .line 19
    .line 20
    .line 21
    iput-object v2, p0, La3/h0;->f:Ljava/net/DatagramPacket;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final b(La3/l;)J
    .locals 3

    .line 1
    iget-object v0, p1, La3/l;->a:Landroid/net/Uri;

    iput-object v0, p0, La3/h0;->g:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, La3/h0;->g:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPort()I

    move-result v1

    invoke-virtual {p0}, La3/e;->g()V

    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, La3/h0;->j:Ljava/net/InetAddress;

    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v2, p0, La3/h0;->j:Ljava/net/InetAddress;

    invoke-direct {v0, v2, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v0, p0, La3/h0;->k:Ljava/net/InetSocketAddress;

    iget-object v0, p0, La3/h0;->j:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/net/MulticastSocket;

    iget-object v1, p0, La3/h0;->k:Ljava/net/InetSocketAddress;

    invoke-direct {v0, v1}, Ljava/net/MulticastSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v0, p0, La3/h0;->i:Ljava/net/MulticastSocket;

    iget-object v1, p0, La3/h0;->j:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/InetAddress;)V

    iget-object v0, p0, La3/h0;->i:Ljava/net/MulticastSocket;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/net/DatagramSocket;

    iget-object v1, p0, La3/h0;->k:Ljava/net/InetSocketAddress;

    invoke-direct {v0, v1}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    :goto_0
    iput-object v0, p0, La3/h0;->h:Ljava/net/DatagramSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget v1, p0, La3/h0;->d:I

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    iput-boolean v0, p0, La3/h0;->l:Z

    invoke-virtual {p0, p1}, La3/e;->h(La3/l;)V

    const-wide/16 v0, -0x1

    return-wide v0

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/play_billing/c0;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/play_billing/c0;-><init>(Ljava/io/IOException;)V

    throw v0

    :catch_1
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/play_billing/c0;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/play_billing/c0;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public final close()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    iput-object v0, p0, La3/h0;->g:Landroid/net/Uri;

    iget-object v1, p0, La3/h0;->i:Ljava/net/MulticastSocket;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v2, p0, La3/h0;->j:Ljava/net/InetAddress;

    invoke-virtual {v1, v2}, Ljava/net/MulticastSocket;->leaveGroup(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iput-object v0, p0, La3/h0;->i:Ljava/net/MulticastSocket;

    :cond_0
    iget-object v1, p0, La3/h0;->h:Ljava/net/DatagramSocket;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    iput-object v0, p0, La3/h0;->h:Ljava/net/DatagramSocket;

    :cond_1
    iput-object v0, p0, La3/h0;->j:Ljava/net/InetAddress;

    iput-object v0, p0, La3/h0;->k:Ljava/net/InetSocketAddress;

    const/4 v0, 0x0

    iput v0, p0, La3/h0;->m:I

    iget-boolean v1, p0, La3/h0;->l:Z

    if-eqz v1, :cond_2

    iput-boolean v0, p0, La3/h0;->l:Z

    invoke-virtual {p0}, La3/e;->f()V

    :cond_2
    return-void
.end method

.method public final d([BII)I
    .locals 2

    .line 1
    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget v0, p0, La3/h0;->m:I

    iget-object v1, p0, La3/h0;->f:Ljava/net/DatagramPacket;

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, La3/h0;->h:Ljava/net/DatagramSocket;

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    iput v0, p0, La3/h0;->m:I

    invoke-virtual {p0, v0}, La3/e;->e(I)V

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/play_billing/c0;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/play_billing/c0;-><init>(Ljava/io/IOException;)V

    throw p2

    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    iget v1, p0, La3/h0;->m:I

    sub-int/2addr v0, v1

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v1, p0, La3/h0;->e:[B

    invoke-static {v1, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, La3/h0;->m:I

    sub-int/2addr p1, p3

    iput p1, p0, La3/h0;->m:I

    return p3
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, La3/h0;->g:Landroid/net/Uri;

    return-object v0
.end method
