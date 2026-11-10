.class public final Lw2/d;
.super Lv2/a;
.source "SourceFile"


# instance fields
.field public i:[B

.field public volatile j:Z

.field public k:[B


# direct methods
.method public constructor <init>(La3/i;La3/l;Lf2/t;ILjava/lang/Object;[B)V
    .locals 11

    .line 1
    const/4 v3, 0x3

    .line 2
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 3
    .line 4
    .line 5
    .line 6
    .line 7
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    move-object v0, p0

    .line 13
    move-object v1, p1

    .line 14
    move-object v2, p2

    .line 15
    move-object v4, p3

    .line 16
    move v5, p4

    .line 17
    move-object/from16 v6, p5

    .line 18
    .line 19
    invoke-direct/range {v0 .. v10}, Lv2/a;-><init>(La3/i;La3/l;ILf2/t;ILjava/lang/Object;JJ)V

    .line 20
    .line 21
    .line 22
    move-object/from16 v1, p6

    .line 23
    .line 24
    iput-object v1, v0, Lw2/d;->i:[B

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lv2/a;->h:La3/f0;

    .line 2
    .line 3
    iget-object v1, p0, Lv2/a;->a:La3/l;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, La3/f0;->b(La3/l;)J

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    move v1, v0

    .line 10
    :cond_0
    :goto_0
    const/4 v2, -0x1

    .line 11
    if-eq v0, v2, :cond_3

    .line 12
    .line 13
    iget-boolean v0, p0, Lw2/d;->j:Z

    .line 14
    .line 15
    if-nez v0, :cond_3

    .line 16
    .line 17
    iget-object v0, p0, Lw2/d;->i:[B

    .line 18
    .line 19
    const/16 v3, 0x4000

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    new-array v0, v3, [B

    .line 24
    .line 25
    iput-object v0, p0, Lw2/d;->i:[B

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    array-length v4, v0

    .line 29
    add-int/lit16 v5, v1, 0x4000

    .line 30
    .line 31
    if-ge v4, v5, :cond_2

    .line 32
    .line 33
    array-length v4, v0

    .line 34
    add-int/2addr v4, v3

    .line 35
    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lw2/d;->i:[B

    .line 40
    .line 41
    :cond_2
    :goto_1
    iget-object v0, p0, Lv2/a;->h:La3/f0;

    .line 42
    .line 43
    iget-object v4, p0, Lw2/d;->i:[B

    .line 44
    .line 45
    invoke-virtual {v0, v4, v1, v3}, La3/f0;->d([BII)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eq v0, v2, :cond_0

    .line 50
    .line 51
    add-int/2addr v1, v0

    .line 52
    goto :goto_0

    .line 53
    :cond_3
    iget-boolean v0, p0, Lw2/d;->j:Z

    .line 54
    .line 55
    if-nez v0, :cond_4

    .line 56
    .line 57
    iget-object v0, p0, Lw2/d;->i:[B

    .line 58
    .line 59
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iput-object v0, p0, Lw2/d;->k:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .line 65
    :cond_4
    iget-object v0, p0, Lv2/a;->h:La3/f0;

    .line 66
    .line 67
    sget v1, Lb3/n;->a:I

    .line 68
    .line 69
    if-eqz v0, :cond_5

    .line 70
    .line 71
    :try_start_1
    invoke-virtual {v0}, La3/f0;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 72
    .line 73
    .line 74
    :catch_0
    :cond_5
    return-void

    .line 75
    :catchall_0
    move-exception v0

    .line 76
    iget-object v1, p0, Lv2/a;->h:La3/f0;

    .line 77
    .line 78
    sget v2, Lb3/n;->a:I

    .line 79
    .line 80
    if-eqz v1, :cond_6

    .line 81
    .line 82
    :try_start_2
    invoke-virtual {v1}, La3/f0;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 83
    .line 84
    .line 85
    :catch_1
    :cond_6
    throw v0
.end method

.method public final b()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lw2/d;->j:Z

    .line 3
    .line 4
    return-void
.end method
