.class public final La3/c;
.super La3/e;
.source "SourceFile"


# instance fields
.field public final d:Landroid/content/res/AssetManager;

.field public e:Landroid/net/Uri;

.field public f:Ljava/io/InputStream;

.field public g:J

.field public h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, La3/e;-><init>(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    iput-object p1, p0, La3/c;->d:Landroid/content/res/AssetManager;

    return-void
.end method


# virtual methods
.method public final b(La3/l;)J
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p1, La3/l;->a:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    iget-wide v1, p1, La3/l;->f:J

    .line 4
    .line 5
    :try_start_1
    iput-object v0, p0, La3/c;->e:Landroid/net/Uri;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const-string v3, "/android_asset/"

    .line 15
    .line 16
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    const/4 v4, 0x1

    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    const/16 v3, 0xf

    .line 24
    .line 25
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-string v3, "/"

    .line 31
    .line 32
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    :cond_1
    :goto_0
    invoke-virtual {p0}, La3/e;->g()V

    .line 43
    .line 44
    .line 45
    iget-object v3, p0, La3/c;->d:Landroid/content/res/AssetManager;

    .line 46
    .line 47
    invoke-virtual {v3, v0, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, La3/c;->f:Ljava/io/InputStream;

    .line 52
    .line 53
    invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    .line 54
    .line 55
    .line 56
    move-result-wide v5

    .line 57
    cmp-long v0, v5, v1

    .line 58
    .line 59
    if-ltz v0, :cond_4

    .line 60
    .line 61
    iget-wide v0, p1, La3/l;->g:J

    .line 62
    .line 63
    const-wide/16 v2, -0x1

    .line 64
    .line 65
    cmp-long v5, v0, v2

    .line 66
    .line 67
    if-eqz v5, :cond_2

    .line 68
    .line 69
    iput-wide v0, p0, La3/c;->g:J

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    iget-object v0, p0, La3/c;->f:Ljava/io/InputStream;

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    int-to-long v0, v0

    .line 79
    iput-wide v0, p0, La3/c;->g:J

    .line 80
    .line 81
    const-wide/32 v5, 0x7fffffff

    .line 82
    .line 83
    .line 84
    cmp-long v0, v0, v5

    .line 85
    .line 86
    if-nez v0, :cond_3

    .line 87
    .line 88
    iput-wide v2, p0, La3/c;->g:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 89
    .line 90
    :cond_3
    :goto_1
    iput-boolean v4, p0, La3/c;->h:Z

    .line 91
    .line 92
    invoke-virtual {p0, p1}, La3/e;->h(La3/l;)V

    .line 93
    .line 94
    .line 95
    iget-wide v0, p0, La3/c;->g:J

    .line 96
    .line 97
    return-wide v0

    .line 98
    :cond_4
    :try_start_2
    new-instance p1, Ljava/io/EOFException;

    .line 99
    .line 100
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 101
    .line 102
    .line 103
    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 104
    :catch_0
    move-exception p1

    .line 105
    new-instance v0, Lcom/google/android/gms/internal/play_billing/c0;

    .line 106
    .line 107
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/play_billing/c0;-><init>(Ljava/io/IOException;)V

    .line 108
    .line 109
    .line 110
    throw v0
.end method

.method public final close()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    iput-object v0, p0, La3/c;->e:Landroid/net/Uri;

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, La3/c;->f:Ljava/io/InputStream;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iput-object v0, p0, La3/c;->f:Ljava/io/InputStream;

    iget-boolean v0, p0, La3/c;->h:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, La3/c;->h:Z

    invoke-virtual {p0}, La3/e;->f()V

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_1
    new-instance v3, Lcom/google/android/gms/internal/play_billing/c0;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/play_billing/c0;-><init>(Ljava/io/IOException;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iput-object v0, p0, La3/c;->f:Ljava/io/InputStream;

    iget-boolean v0, p0, La3/c;->h:Z

    if-eqz v0, :cond_2

    iput-boolean v1, p0, La3/c;->h:Z

    invoke-virtual {p0}, La3/e;->f()V

    :cond_2
    throw v2
.end method

.method public final d([BII)I
    .locals 8

    .line 1
    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-wide v0, p0, La3/c;->g:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, -0x1

    if-nez v2, :cond_1

    return v3

    :cond_1
    const-wide/16 v4, -0x1

    cmp-long v2, v0, v4

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    int-to-long v6, p3

    :try_start_0
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    :goto_0
    iget-object v0, p0, La3/c;->f:Ljava/io/InputStream;

    sget v1, Lb3/n;->a:I

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, v3, :cond_4

    iget-wide p1, p0, La3/c;->g:J

    cmp-long p1, p1, v4

    if-nez p1, :cond_3

    return v3

    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/play_billing/c0;

    new-instance p2, Ljava/io/EOFException;

    invoke-direct {p2}, Ljava/io/EOFException;-><init>()V

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/play_billing/c0;-><init>(Ljava/io/IOException;)V

    throw p1

    :cond_4
    iget-wide p2, p0, La3/c;->g:J

    cmp-long v0, p2, v4

    if-eqz v0, :cond_5

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, La3/c;->g:J

    :cond_5
    invoke-virtual {p0, p1}, La3/e;->e(I)V

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/play_billing/c0;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/play_billing/c0;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, La3/c;->e:Landroid/net/Uri;

    return-object v0
.end method
