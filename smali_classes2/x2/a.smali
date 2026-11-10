.class public final Lx2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La3/w;
.implements Ljava/lang/Runnable;


# instance fields
.field public final f:Landroid/net/Uri;

.field public final g:La3/c0;

.field public final h:La3/e0;

.field public i:Lx2/g;

.field public j:J

.field public k:J

.field public l:J

.field public m:J

.field public n:Z

.field public o:Ljava/io/IOException;

.field public final synthetic p:Lx2/b;


# direct methods
.method public constructor <init>(Lx2/b;Landroid/net/Uri;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lx2/a;->p:Lx2/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lx2/a;->f:Landroid/net/Uri;

    .line 7
    .line 8
    new-instance v0, La3/c0;

    .line 9
    .line 10
    const-string v1, "DefaultHlsPlaylistTracker:MediaPlaylist"

    .line 11
    .line 12
    invoke-direct {v0, v1}, La3/c0;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lx2/a;->g:La3/c0;

    .line 16
    .line 17
    new-instance v0, La3/e0;

    .line 18
    .line 19
    iget-object v1, p1, Lx2/b;->f:Lw2/b;

    .line 20
    .line 21
    iget-object v1, v1, Lw2/b;->a:La3/h;

    .line 22
    .line 23
    invoke-interface {v1}, La3/h;->a()La3/i;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iget-object p1, p1, Lx2/b;->k:La3/d0;

    .line 28
    .line 29
    invoke-direct {v0, v1, p2, p1}, La3/e0;-><init>(La3/i;Landroid/net/Uri;La3/d0;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lx2/a;->h:La3/e0;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final a(La3/z;JJ)V
    .locals 9

    .line 1
    check-cast p1, La3/e0;

    .line 2
    .line 3
    iget-object v0, p1, La3/e0;->e:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lx2/h;

    .line 6
    .line 7
    instance-of v1, v0, Lx2/g;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    check-cast v0, Lx2/g;

    .line 12
    .line 13
    invoke-virtual {p0, v0, p4, p5}, Lx2/a;->f(Lx2/g;J)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lx2/a;->p:Lx2/b;

    .line 17
    .line 18
    iget-object v1, v0, Lx2/b;->l:Lcom/google/android/gms/internal/play_billing/v;

    .line 19
    .line 20
    iget-object p1, p1, La3/e0;->c:La3/f0;

    .line 21
    .line 22
    iget-object v2, p1, La3/f0;->c:Landroid/net/Uri;

    .line 23
    .line 24
    iget-wide v7, p1, La3/f0;->b:J

    .line 25
    .line 26
    move-wide v3, p2

    .line 27
    move-wide v5, p4

    .line 28
    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gms/internal/play_billing/v;->e(Landroid/net/Uri;JJJ)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance p1, Lf2/z;

    .line 33
    .line 34
    const-string p2, "Loaded playlist has unexpected type."

    .line 35
    .line 36
    invoke-direct {p1, p2}, Lf2/z;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lx2/a;->o:Ljava/io/IOException;

    .line 40
    .line 41
    :goto_0
    return-void
.end method

.method public final b(La3/z;JJZ)V
    .locals 8

    .line 1
    check-cast p1, La3/e0;

    .line 2
    .line 3
    iget-object p6, p0, Lx2/a;->p:Lx2/b;

    .line 4
    .line 5
    iget-object v0, p6, Lx2/b;->l:Lcom/google/android/gms/internal/play_billing/v;

    .line 6
    .line 7
    iget-object p6, p1, La3/e0;->a:La3/l;

    .line 8
    .line 9
    iget-object p1, p1, La3/e0;->c:La3/f0;

    .line 10
    .line 11
    iget-object v1, p1, La3/f0;->c:Landroid/net/Uri;

    .line 12
    .line 13
    iget-wide v6, p1, La3/f0;->b:J

    .line 14
    .line 15
    move-wide v2, p2

    .line 16
    move-wide v4, p4

    .line 17
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/play_billing/v;->c(Landroid/net/Uri;JJJ)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final c(La3/z;JJLjava/io/IOException;I)La3/x;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, La3/e0;

    .line 6
    .line 7
    iget-object v2, v0, Lx2/a;->p:Lx2/b;

    .line 8
    .line 9
    iget-object v3, v2, Lx2/b;->h:La3/r;

    .line 10
    .line 11
    iget v4, v1, La3/e0;->b:I

    .line 12
    .line 13
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static/range {p6 .. p6}, La3/r;->c(Ljava/io/IOException;)J

    .line 17
    .line 18
    .line 19
    move-result-wide v3

    .line 20
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    cmp-long v7, v3, v5

    .line 26
    .line 27
    const/4 v8, 0x1

    .line 28
    const/4 v9, 0x0

    .line 29
    if-eqz v7, :cond_0

    .line 30
    .line 31
    move v7, v8

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move v7, v9

    .line 34
    :goto_0
    iget-object v10, v0, Lx2/a;->f:Landroid/net/Uri;

    .line 35
    .line 36
    invoke-static {v2, v10, v3, v4}, Lx2/b;->d(Lx2/b;Landroid/net/Uri;J)Z

    .line 37
    .line 38
    .line 39
    move-result v10

    .line 40
    if-nez v10, :cond_2

    .line 41
    .line 42
    if-nez v7, :cond_1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    move v10, v9

    .line 46
    goto :goto_2

    .line 47
    :cond_2
    :goto_1
    move v10, v8

    .line 48
    :goto_2
    if-eqz v7, :cond_3

    .line 49
    .line 50
    invoke-virtual {v0, v3, v4}, Lx2/a;->d(J)Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    or-int/2addr v10, v3

    .line 55
    :cond_3
    if-eqz v10, :cond_5

    .line 56
    .line 57
    iget-object v3, v2, Lx2/b;->h:La3/r;

    .line 58
    .line 59
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    invoke-static/range {p6 .. p7}, La3/r;->d(Ljava/io/IOException;I)J

    .line 63
    .line 64
    .line 65
    move-result-wide v3

    .line 66
    cmp-long v5, v3, v5

    .line 67
    .line 68
    if-eqz v5, :cond_4

    .line 69
    .line 70
    new-instance v5, La3/x;

    .line 71
    .line 72
    invoke-direct {v5, v9, v3, v4}, La3/x;-><init>(IJ)V

    .line 73
    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_4
    sget-object v5, La3/c0;->e:La3/x;

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_5
    sget-object v5, La3/c0;->d:La3/x;

    .line 80
    .line 81
    :goto_3
    iget-object v10, v2, Lx2/b;->l:Lcom/google/android/gms/internal/play_billing/v;

    .line 82
    .line 83
    iget-object v1, v1, La3/e0;->c:La3/f0;

    .line 84
    .line 85
    iget-object v11, v1, La3/f0;->c:Landroid/net/Uri;

    .line 86
    .line 87
    iget-wide v1, v1, La3/f0;->b:J

    .line 88
    .line 89
    iget v3, v5, La3/x;->a:I

    .line 90
    .line 91
    if-eqz v3, :cond_6

    .line 92
    .line 93
    if-ne v3, v8, :cond_7

    .line 94
    .line 95
    :cond_6
    move v9, v8

    .line 96
    :cond_7
    xor-int/lit8 v19, v9, 0x1

    .line 97
    .line 98
    move-wide/from16 v12, p2

    .line 99
    .line 100
    move-wide/from16 v14, p4

    .line 101
    .line 102
    move-wide/from16 v16, v1

    .line 103
    .line 104
    move-object/from16 v18, p6

    .line 105
    .line 106
    invoke-virtual/range {v10 .. v19}, Lcom/google/android/gms/internal/play_billing/v;->g(Landroid/net/Uri;JJJLjava/io/IOException;Z)V

    .line 107
    .line 108
    .line 109
    return-object v5
.end method

.method public final d(J)Z
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    add-long/2addr v0, p1

    .line 6
    iput-wide v0, p0, Lx2/a;->m:J

    .line 7
    .line 8
    iget-object p1, p0, Lx2/a;->p:Lx2/b;

    .line 9
    .line 10
    iget-object p2, p1, Lx2/b;->q:Landroid/net/Uri;

    .line 11
    .line 12
    iget-object v0, p0, Lx2/a;->f:Landroid/net/Uri;

    .line 13
    .line 14
    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    const/4 v0, 0x0

    .line 19
    if-eqz p2, :cond_2

    .line 20
    .line 21
    iget-object p2, p1, Lx2/b;->p:Lx2/e;

    .line 22
    .line 23
    iget-object p2, p2, Lx2/e;->e:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    move v4, v0

    .line 34
    :goto_0
    const/4 v5, 0x1

    .line 35
    if-ge v4, v1, :cond_1

    .line 36
    .line 37
    iget-object v6, p1, Lx2/b;->i:Ljava/util/HashMap;

    .line 38
    .line 39
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    check-cast v7, Lx2/d;

    .line 44
    .line 45
    iget-object v7, v7, Lx2/d;->a:Landroid/net/Uri;

    .line 46
    .line 47
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    check-cast v6, Lx2/a;

    .line 52
    .line 53
    iget-wide v7, v6, Lx2/a;->m:J

    .line 54
    .line 55
    cmp-long v7, v2, v7

    .line 56
    .line 57
    if-lez v7, :cond_0

    .line 58
    .line 59
    iget-object p2, v6, Lx2/a;->f:Landroid/net/Uri;

    .line 60
    .line 61
    iput-object p2, p1, Lx2/b;->q:Landroid/net/Uri;

    .line 62
    .line 63
    invoke-virtual {v6}, Lx2/a;->e()V

    .line 64
    .line 65
    .line 66
    move p1, v5

    .line 67
    goto :goto_1

    .line 68
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    move p1, v0

    .line 72
    :goto_1
    if-nez p1, :cond_2

    .line 73
    .line 74
    move v0, v5

    .line 75
    :cond_2
    return v0
.end method

.method public final e()V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    iput-wide v1, v0, Lx2/a;->m:J

    .line 6
    .line 7
    iget-boolean v1, v0, Lx2/a;->n:Z

    .line 8
    .line 9
    if-nez v1, :cond_6

    .line 10
    .line 11
    iget-object v1, v0, Lx2/a;->g:La3/c0;

    .line 12
    .line 13
    iget-object v2, v1, La3/c0;->b:La3/y;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x1

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    move v2, v4

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v2, v3

    .line 22
    :goto_0
    if-nez v2, :cond_6

    .line 23
    .line 24
    iget-object v2, v1, La3/c0;->c:Ljava/io/IOException;

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    move v3, v4

    .line 29
    :cond_1
    if-eqz v3, :cond_2

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 33
    .line 34
    .line 35
    move-result-wide v2

    .line 36
    iget-wide v5, v0, Lx2/a;->l:J

    .line 37
    .line 38
    cmp-long v7, v2, v5

    .line 39
    .line 40
    iget-object v8, v0, Lx2/a;->p:Lx2/b;

    .line 41
    .line 42
    if-gez v7, :cond_3

    .line 43
    .line 44
    iput-boolean v4, v0, Lx2/a;->n:Z

    .line 45
    .line 46
    iget-object v1, v8, Lx2/b;->n:Landroid/os/Handler;

    .line 47
    .line 48
    sub-long/2addr v5, v2

    .line 49
    invoke-virtual {v1, v0, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 50
    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_3
    iget-object v2, v8, Lx2/b;->h:La3/r;

    .line 54
    .line 55
    iget-object v3, v0, Lx2/a;->h:La3/e0;

    .line 56
    .line 57
    iget v4, v3, La3/e0;->b:I

    .line 58
    .line 59
    iget v2, v2, La3/r;->a:I

    .line 60
    .line 61
    const/4 v5, -0x1

    .line 62
    if-ne v2, v5, :cond_5

    .line 63
    .line 64
    const/4 v2, 0x7

    .line 65
    if-ne v4, v2, :cond_4

    .line 66
    .line 67
    const/4 v2, 0x6

    .line 68
    goto :goto_1

    .line 69
    :cond_4
    const/4 v2, 0x3

    .line 70
    :cond_5
    :goto_1
    invoke-virtual {v1, v3, v0, v2}, La3/c0;->c(La3/z;La3/w;I)J

    .line 71
    .line 72
    .line 73
    move-result-wide v19

    .line 74
    iget-object v9, v8, Lx2/b;->l:Lcom/google/android/gms/internal/play_billing/v;

    .line 75
    .line 76
    iget-object v10, v3, La3/e0;->a:La3/l;

    .line 77
    .line 78
    iget v11, v3, La3/e0;->b:I

    .line 79
    .line 80
    const/4 v12, -0x1

    .line 81
    const/4 v13, 0x0

    .line 82
    const/4 v14, 0x0

    .line 83
    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    invoke-virtual/range {v9 .. v20}, Lcom/google/android/gms/internal/play_billing/v;->h(La3/l;IIILjava/lang/Object;JJJ)V

    .line 94
    .line 95
    .line 96
    :cond_6
    :goto_2
    return-void
.end method

.method public final f(Lx2/g;J)V
    .locals 38

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lx2/a;->i:Lx2/g;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 8
    .line 9
    .line 10
    move-result-wide v3

    .line 11
    iput-wide v3, v0, Lx2/a;->j:J

    .line 12
    .line 13
    iget-object v5, v0, Lx2/a;->p:Lx2/b;

    .line 14
    .line 15
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    if-eqz v2, :cond_3

    .line 19
    .line 20
    iget-wide v8, v1, Lx2/g;->i:J

    .line 21
    .line 22
    iget-wide v10, v2, Lx2/g;->i:J

    .line 23
    .line 24
    cmp-long v8, v8, v10

    .line 25
    .line 26
    if-lez v8, :cond_0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    if-gez v8, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object v8, v1, Lx2/g;->o:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 35
    .line 36
    .line 37
    move-result v8

    .line 38
    iget-object v9, v2, Lx2/g;->o:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result v9

    .line 44
    if-gt v8, v9, :cond_4

    .line 45
    .line 46
    if-ne v8, v9, :cond_2

    .line 47
    .line 48
    iget-boolean v8, v1, Lx2/g;->l:Z

    .line 49
    .line 50
    if-eqz v8, :cond_2

    .line 51
    .line 52
    iget-boolean v8, v2, Lx2/g;->l:Z

    .line 53
    .line 54
    if-nez v8, :cond_2

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    :goto_0
    const/4 v8, 0x0

    .line 58
    goto :goto_2

    .line 59
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    :cond_4
    :goto_1
    const/4 v8, 0x1

    .line 63
    :goto_2
    const/4 v9, 0x0

    .line 64
    if-nez v8, :cond_7

    .line 65
    .line 66
    iget-boolean v8, v1, Lx2/g;->l:Z

    .line 67
    .line 68
    if-eqz v8, :cond_6

    .line 69
    .line 70
    iget-boolean v8, v2, Lx2/g;->l:Z

    .line 71
    .line 72
    if-eqz v8, :cond_5

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_5
    new-instance v8, Lx2/g;

    .line 76
    .line 77
    move-object v12, v8

    .line 78
    iget v13, v2, Lx2/g;->d:I

    .line 79
    .line 80
    iget-object v14, v2, Lx2/h;->a:Ljava/lang/String;

    .line 81
    .line 82
    iget-object v15, v2, Lx2/h;->b:Ljava/util/List;

    .line 83
    .line 84
    iget-wide v10, v2, Lx2/g;->e:J

    .line 85
    .line 86
    move-wide/from16 v16, v10

    .line 87
    .line 88
    iget-wide v10, v2, Lx2/g;->f:J

    .line 89
    .line 90
    move-wide/from16 v18, v10

    .line 91
    .line 92
    iget-boolean v10, v2, Lx2/g;->g:Z

    .line 93
    .line 94
    move/from16 v20, v10

    .line 95
    .line 96
    iget v10, v2, Lx2/g;->h:I

    .line 97
    .line 98
    move/from16 v21, v10

    .line 99
    .line 100
    iget-wide v10, v2, Lx2/g;->i:J

    .line 101
    .line 102
    move-wide/from16 v22, v10

    .line 103
    .line 104
    iget v10, v2, Lx2/g;->j:I

    .line 105
    .line 106
    move/from16 v24, v10

    .line 107
    .line 108
    iget-wide v10, v2, Lx2/g;->k:J

    .line 109
    .line 110
    move-wide/from16 v25, v10

    .line 111
    .line 112
    iget-boolean v10, v2, Lx2/h;->c:Z

    .line 113
    .line 114
    move/from16 v27, v10

    .line 115
    .line 116
    const/16 v28, 0x1

    .line 117
    .line 118
    iget-boolean v10, v2, Lx2/g;->m:Z

    .line 119
    .line 120
    move/from16 v29, v10

    .line 121
    .line 122
    iget-object v10, v2, Lx2/g;->n:Lj2/b;

    .line 123
    .line 124
    move-object/from16 v30, v10

    .line 125
    .line 126
    iget-object v10, v2, Lx2/g;->o:Ljava/util/List;

    .line 127
    .line 128
    move-object/from16 v31, v10

    .line 129
    .line 130
    invoke-direct/range {v12 .. v31}, Lx2/g;-><init>(ILjava/lang/String;Ljava/util/List;JJZIJIJZZZLj2/b;Ljava/util/List;)V

    .line 131
    .line 132
    .line 133
    goto/16 :goto_e

    .line 134
    .line 135
    :cond_6
    :goto_3
    move-object v8, v2

    .line 136
    goto/16 :goto_e

    .line 137
    .line 138
    :cond_7
    iget-boolean v8, v1, Lx2/g;->m:Z

    .line 139
    .line 140
    iget-wide v10, v1, Lx2/g;->i:J

    .line 141
    .line 142
    if-eqz v8, :cond_8

    .line 143
    .line 144
    iget-wide v12, v1, Lx2/g;->f:J

    .line 145
    .line 146
    :goto_4
    move-wide/from16 v23, v12

    .line 147
    .line 148
    goto :goto_9

    .line 149
    :cond_8
    iget-object v8, v5, Lx2/b;->r:Lx2/g;

    .line 150
    .line 151
    if-eqz v8, :cond_9

    .line 152
    .line 153
    iget-wide v12, v8, Lx2/g;->f:J

    .line 154
    .line 155
    goto :goto_5

    .line 156
    :cond_9
    const-wide/16 v12, 0x0

    .line 157
    .line 158
    :goto_5
    if-nez v2, :cond_a

    .line 159
    .line 160
    move-wide/from16 v17, v12

    .line 161
    .line 162
    goto :goto_8

    .line 163
    :cond_a
    iget-object v8, v2, Lx2/g;->o:Ljava/util/List;

    .line 164
    .line 165
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 166
    .line 167
    .line 168
    move-result v14

    .line 169
    iget-wide v6, v2, Lx2/g;->i:J

    .line 170
    .line 171
    move-wide/from16 v17, v12

    .line 172
    .line 173
    sub-long v12, v10, v6

    .line 174
    .line 175
    long-to-int v12, v12

    .line 176
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 177
    .line 178
    .line 179
    move-result v13

    .line 180
    if-ge v12, v13, :cond_b

    .line 181
    .line 182
    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v8

    .line 186
    check-cast v8, Lx2/f;

    .line 187
    .line 188
    goto :goto_6

    .line 189
    :cond_b
    move-object v8, v9

    .line 190
    :goto_6
    if-eqz v8, :cond_c

    .line 191
    .line 192
    iget-wide v6, v8, Lx2/f;->e:J

    .line 193
    .line 194
    goto :goto_7

    .line 195
    :cond_c
    int-to-long v12, v14

    .line 196
    sub-long v6, v10, v6

    .line 197
    .line 198
    cmp-long v6, v12, v6

    .line 199
    .line 200
    if-nez v6, :cond_d

    .line 201
    .line 202
    iget-wide v6, v2, Lx2/g;->p:J

    .line 203
    .line 204
    :goto_7
    iget-wide v12, v2, Lx2/g;->f:J

    .line 205
    .line 206
    add-long/2addr v12, v6

    .line 207
    goto :goto_4

    .line 208
    :cond_d
    :goto_8
    move-wide/from16 v23, v17

    .line 209
    .line 210
    :goto_9
    iget-boolean v6, v1, Lx2/g;->g:Z

    .line 211
    .line 212
    if-eqz v6, :cond_f

    .line 213
    .line 214
    iget v6, v1, Lx2/g;->h:I

    .line 215
    .line 216
    :cond_e
    :goto_a
    move/from16 v26, v6

    .line 217
    .line 218
    goto :goto_d

    .line 219
    :cond_f
    iget-object v6, v5, Lx2/b;->r:Lx2/g;

    .line 220
    .line 221
    if-eqz v6, :cond_10

    .line 222
    .line 223
    iget v6, v6, Lx2/g;->h:I

    .line 224
    .line 225
    goto :goto_b

    .line 226
    :cond_10
    const/4 v6, 0x0

    .line 227
    :goto_b
    if-nez v2, :cond_11

    .line 228
    .line 229
    goto :goto_a

    .line 230
    :cond_11
    iget-wide v7, v2, Lx2/g;->i:J

    .line 231
    .line 232
    sub-long/2addr v10, v7

    .line 233
    long-to-int v7, v10

    .line 234
    iget-object v8, v2, Lx2/g;->o:Ljava/util/List;

    .line 235
    .line 236
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 237
    .line 238
    .line 239
    move-result v10

    .line 240
    if-ge v7, v10, :cond_12

    .line 241
    .line 242
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v7

    .line 246
    check-cast v7, Lx2/f;

    .line 247
    .line 248
    goto :goto_c

    .line 249
    :cond_12
    move-object v7, v9

    .line 250
    :goto_c
    if-eqz v7, :cond_e

    .line 251
    .line 252
    iget v6, v2, Lx2/g;->h:I

    .line 253
    .line 254
    iget v7, v7, Lx2/f;->d:I

    .line 255
    .line 256
    add-int/2addr v6, v7

    .line 257
    iget-object v7, v1, Lx2/g;->o:Ljava/util/List;

    .line 258
    .line 259
    const/4 v8, 0x0

    .line 260
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v7

    .line 264
    check-cast v7, Lx2/f;

    .line 265
    .line 266
    iget v7, v7, Lx2/f;->d:I

    .line 267
    .line 268
    sub-int/2addr v6, v7

    .line 269
    goto :goto_a

    .line 270
    :goto_d
    new-instance v8, Lx2/g;

    .line 271
    .line 272
    move-object/from16 v17, v8

    .line 273
    .line 274
    iget v6, v1, Lx2/g;->d:I

    .line 275
    .line 276
    move/from16 v18, v6

    .line 277
    .line 278
    iget-object v6, v1, Lx2/h;->a:Ljava/lang/String;

    .line 279
    .line 280
    move-object/from16 v19, v6

    .line 281
    .line 282
    iget-object v6, v1, Lx2/h;->b:Ljava/util/List;

    .line 283
    .line 284
    move-object/from16 v20, v6

    .line 285
    .line 286
    iget-wide v6, v1, Lx2/g;->e:J

    .line 287
    .line 288
    move-wide/from16 v21, v6

    .line 289
    .line 290
    iget-wide v6, v1, Lx2/g;->i:J

    .line 291
    .line 292
    move-wide/from16 v27, v6

    .line 293
    .line 294
    iget v6, v1, Lx2/g;->j:I

    .line 295
    .line 296
    move/from16 v29, v6

    .line 297
    .line 298
    iget-wide v6, v1, Lx2/g;->k:J

    .line 299
    .line 300
    move-wide/from16 v30, v6

    .line 301
    .line 302
    iget-boolean v6, v1, Lx2/h;->c:Z

    .line 303
    .line 304
    move/from16 v32, v6

    .line 305
    .line 306
    iget-boolean v6, v1, Lx2/g;->l:Z

    .line 307
    .line 308
    move/from16 v33, v6

    .line 309
    .line 310
    iget-boolean v6, v1, Lx2/g;->m:Z

    .line 311
    .line 312
    move/from16 v34, v6

    .line 313
    .line 314
    iget-object v6, v1, Lx2/g;->n:Lj2/b;

    .line 315
    .line 316
    move-object/from16 v35, v6

    .line 317
    .line 318
    iget-object v6, v1, Lx2/g;->o:Ljava/util/List;

    .line 319
    .line 320
    move-object/from16 v36, v6

    .line 321
    .line 322
    const/16 v25, 0x1

    .line 323
    .line 324
    invoke-direct/range {v17 .. v36}, Lx2/g;-><init>(ILjava/lang/String;Ljava/util/List;JJZIJIJZZZLj2/b;Ljava/util/List;)V

    .line 325
    .line 326
    .line 327
    :goto_e
    iput-object v8, v0, Lx2/a;->i:Lx2/g;

    .line 328
    .line 329
    iget-object v12, v0, Lx2/a;->f:Landroid/net/Uri;

    .line 330
    .line 331
    if-eq v8, v2, :cond_1f

    .line 332
    .line 333
    iput-object v9, v0, Lx2/a;->o:Ljava/io/IOException;

    .line 334
    .line 335
    iput-wide v3, v0, Lx2/a;->k:J

    .line 336
    .line 337
    iget-object v1, v5, Lx2/b;->q:Landroid/net/Uri;

    .line 338
    .line 339
    invoke-virtual {v12, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    move-result v1

    .line 343
    if-eqz v1, :cond_1d

    .line 344
    .line 345
    iget-object v1, v5, Lx2/b;->r:Lx2/g;

    .line 346
    .line 347
    if-nez v1, :cond_13

    .line 348
    .line 349
    iget-boolean v1, v8, Lx2/g;->l:Z

    .line 350
    .line 351
    const/4 v9, 0x1

    .line 352
    xor-int/2addr v1, v9

    .line 353
    iput-boolean v1, v5, Lx2/b;->s:Z

    .line 354
    .line 355
    iget-wide v13, v8, Lx2/g;->f:J

    .line 356
    .line 357
    iput-wide v13, v5, Lx2/b;->t:J

    .line 358
    .line 359
    :cond_13
    iput-object v8, v5, Lx2/b;->r:Lx2/g;

    .line 360
    .line 361
    iget-object v1, v5, Lx2/b;->o:Lx2/k;

    .line 362
    .line 363
    check-cast v1, Lw2/k;

    .line 364
    .line 365
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 366
    .line 367
    .line 368
    iget-boolean v9, v8, Lx2/g;->m:Z

    .line 369
    .line 370
    iget-wide v13, v8, Lx2/g;->f:J

    .line 371
    .line 372
    if-eqz v9, :cond_14

    .line 373
    .line 374
    invoke-static {v13, v14}, Lf2/d;->b(J)J

    .line 375
    .line 376
    .line 377
    move-result-wide v17

    .line 378
    move-wide/from16 v22, v17

    .line 379
    .line 380
    goto :goto_f

    .line 381
    :cond_14
    const-wide v22, -0x7fffffffffffffffL    # -4.9E-324

    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    :goto_f
    const/4 v9, 0x2

    .line 387
    iget v15, v8, Lx2/g;->d:I

    .line 388
    .line 389
    if-eq v15, v9, :cond_16

    .line 390
    .line 391
    const/4 v9, 0x1

    .line 392
    if-ne v15, v9, :cond_15

    .line 393
    .line 394
    goto :goto_10

    .line 395
    :cond_15
    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    goto :goto_11

    .line 401
    :cond_16
    :goto_10
    move-wide/from16 v20, v22

    .line 402
    .line 403
    :goto_11
    new-instance v9, Ln2/a0;

    .line 404
    .line 405
    iget-object v15, v1, Lw2/k;->o:Lx2/l;

    .line 406
    .line 407
    check-cast v15, Lx2/b;

    .line 408
    .line 409
    iget-object v6, v15, Lx2/b;->p:Lx2/e;

    .line 410
    .line 411
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 412
    .line 413
    .line 414
    const/4 v7, 0x3

    .line 415
    invoke-direct {v9, v7, v6, v8}, Ln2/a0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 416
    .line 417
    .line 418
    iget-boolean v6, v15, Lx2/b;->s:Z

    .line 419
    .line 420
    iget-wide v10, v8, Lx2/g;->e:J

    .line 421
    .line 422
    if-eqz v6, :cond_1b

    .line 423
    .line 424
    move-object v6, v2

    .line 425
    move-wide/from16 v36, v3

    .line 426
    .line 427
    iget-wide v2, v15, Lx2/b;->t:J

    .line 428
    .line 429
    sub-long v28, v13, v2

    .line 430
    .line 431
    iget-wide v2, v8, Lx2/g;->p:J

    .line 432
    .line 433
    iget-boolean v4, v8, Lx2/g;->l:Z

    .line 434
    .line 435
    if-eqz v4, :cond_17

    .line 436
    .line 437
    add-long v13, v28, v2

    .line 438
    .line 439
    move-wide/from16 v24, v13

    .line 440
    .line 441
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    goto :goto_12

    .line 447
    :cond_17
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    const-wide v24, -0x7fffffffffffffffL    # -4.9E-324

    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    :goto_12
    cmp-long v13, v10, v13

    .line 458
    .line 459
    if-nez v13, :cond_1a

    .line 460
    .line 461
    iget-object v10, v8, Lx2/g;->o:Ljava/util/List;

    .line 462
    .line 463
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    .line 464
    .line 465
    .line 466
    move-result v11

    .line 467
    if-nez v11, :cond_19

    .line 468
    .line 469
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 470
    .line 471
    .line 472
    move-result v11

    .line 473
    sub-int/2addr v11, v7

    .line 474
    const/4 v7, 0x0

    .line 475
    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    .line 476
    .line 477
    .line 478
    move-result v11

    .line 479
    iget-wide v13, v8, Lx2/g;->k:J

    .line 480
    .line 481
    const-wide/16 v15, 0x2

    .line 482
    .line 483
    mul-long/2addr v13, v15

    .line 484
    sub-long/2addr v2, v13

    .line 485
    :goto_13
    if-lez v11, :cond_18

    .line 486
    .line 487
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    move-result-object v13

    .line 491
    check-cast v13, Lx2/f;

    .line 492
    .line 493
    iget-wide v13, v13, Lx2/f;->e:J

    .line 494
    .line 495
    cmp-long v13, v13, v2

    .line 496
    .line 497
    if-lez v13, :cond_18

    .line 498
    .line 499
    add-int/lit8 v11, v11, -0x1

    .line 500
    .line 501
    goto :goto_13

    .line 502
    :cond_18
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 503
    .line 504
    .line 505
    move-result-object v2

    .line 506
    check-cast v2, Lx2/f;

    .line 507
    .line 508
    iget-wide v10, v2, Lx2/f;->e:J

    .line 509
    .line 510
    goto :goto_14

    .line 511
    :cond_19
    const/4 v7, 0x0

    .line 512
    const-wide/16 v30, 0x0

    .line 513
    .line 514
    goto :goto_15

    .line 515
    :cond_1a
    const/4 v7, 0x0

    .line 516
    :goto_14
    move-wide/from16 v30, v10

    .line 517
    .line 518
    :goto_15
    new-instance v2, Lt2/v;

    .line 519
    .line 520
    move-object/from16 v19, v2

    .line 521
    .line 522
    iget-wide v10, v8, Lx2/g;->p:J

    .line 523
    .line 524
    move-wide/from16 v26, v10

    .line 525
    .line 526
    const/4 v3, 0x1

    .line 527
    xor-int/lit8 v32, v4, 0x1

    .line 528
    .line 529
    const/16 v33, 0x1

    .line 530
    .line 531
    iget-object v3, v1, Lw2/k;->p:Ljava/lang/Object;

    .line 532
    .line 533
    move-object/from16 v35, v3

    .line 534
    .line 535
    move-object/from16 v34, v9

    .line 536
    .line 537
    invoke-direct/range {v19 .. v35}, Lt2/v;-><init>(JJJJJJZZLn2/a0;Ljava/lang/Object;)V

    .line 538
    .line 539
    .line 540
    goto :goto_17

    .line 541
    :cond_1b
    move-object v6, v2

    .line 542
    move-wide/from16 v36, v3

    .line 543
    .line 544
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    const/4 v7, 0x0

    .line 550
    cmp-long v2, v10, v2

    .line 551
    .line 552
    if-nez v2, :cond_1c

    .line 553
    .line 554
    const-wide/16 v30, 0x0

    .line 555
    .line 556
    goto :goto_16

    .line 557
    :cond_1c
    move-wide/from16 v30, v10

    .line 558
    .line 559
    :goto_16
    new-instance v2, Lt2/v;

    .line 560
    .line 561
    move-object/from16 v19, v2

    .line 562
    .line 563
    iget-wide v3, v8, Lx2/g;->p:J

    .line 564
    .line 565
    move-wide/from16 v24, v3

    .line 566
    .line 567
    move-wide/from16 v26, v3

    .line 568
    .line 569
    const-wide/16 v28, 0x0

    .line 570
    .line 571
    const/16 v32, 0x0

    .line 572
    .line 573
    const/16 v33, 0x0

    .line 574
    .line 575
    iget-object v3, v1, Lw2/k;->p:Ljava/lang/Object;

    .line 576
    .line 577
    move-object/from16 v35, v3

    .line 578
    .line 579
    move-object/from16 v34, v9

    .line 580
    .line 581
    invoke-direct/range {v19 .. v35}, Lt2/v;-><init>(JJJJJJZZLn2/a0;Ljava/lang/Object;)V

    .line 582
    .line 583
    .line 584
    :goto_17
    iput-object v2, v1, Lt2/a;->e:Lf2/l0;

    .line 585
    .line 586
    iget-object v3, v1, Lt2/a;->a:Ljava/util/ArrayList;

    .line 587
    .line 588
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 589
    .line 590
    .line 591
    move-result-object v3

    .line 592
    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 593
    .line 594
    .line 595
    move-result v4

    .line 596
    if-eqz v4, :cond_1e

    .line 597
    .line 598
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 599
    .line 600
    .line 601
    move-result-object v4

    .line 602
    check-cast v4, Lf2/r;

    .line 603
    .line 604
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 605
    .line 606
    .line 607
    new-instance v8, Lf2/o;

    .line 608
    .line 609
    invoke-direct {v8, v1, v2}, Lf2/o;-><init>(Lt2/g;Lf2/l0;)V

    .line 610
    .line 611
    .line 612
    iget-object v4, v4, Lf2/r;->l:Lh/a;

    .line 613
    .line 614
    iget-object v4, v4, Lh/a;->g:Ljava/lang/Object;

    .line 615
    .line 616
    check-cast v4, Landroid/os/Handler;

    .line 617
    .line 618
    const/16 v9, 0x8

    .line 619
    .line 620
    invoke-virtual {v4, v9, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 621
    .line 622
    .line 623
    move-result-object v4

    .line 624
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 625
    .line 626
    .line 627
    goto :goto_18

    .line 628
    :cond_1d
    move-object v6, v2

    .line 629
    move-wide/from16 v36, v3

    .line 630
    .line 631
    const/4 v7, 0x0

    .line 632
    :cond_1e
    iget-object v1, v5, Lx2/b;->j:Ljava/util/ArrayList;

    .line 633
    .line 634
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 635
    .line 636
    .line 637
    move-result v2

    .line 638
    :goto_19
    if-ge v7, v2, :cond_21

    .line 639
    .line 640
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 641
    .line 642
    .line 643
    move-result-object v3

    .line 644
    check-cast v3, Lw2/i;

    .line 645
    .line 646
    iget-object v4, v3, Lw2/i;->t:Lt2/d;

    .line 647
    .line 648
    invoke-interface {v4, v3}, Lt2/t;->b(Lt2/u;)V

    .line 649
    .line 650
    .line 651
    add-int/lit8 v7, v7, 0x1

    .line 652
    .line 653
    goto :goto_19

    .line 654
    :cond_1f
    move-object v6, v2

    .line 655
    move-wide/from16 v36, v3

    .line 656
    .line 657
    iget-boolean v2, v8, Lx2/g;->l:Z

    .line 658
    .line 659
    if-nez v2, :cond_21

    .line 660
    .line 661
    iget-object v2, v1, Lx2/g;->o:Ljava/util/List;

    .line 662
    .line 663
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 664
    .line 665
    .line 666
    move-result v2

    .line 667
    int-to-long v2, v2

    .line 668
    iget-wide v7, v1, Lx2/g;->i:J

    .line 669
    .line 670
    add-long/2addr v7, v2

    .line 671
    iget-object v1, v0, Lx2/a;->i:Lx2/g;

    .line 672
    .line 673
    iget-wide v2, v1, Lx2/g;->i:J

    .line 674
    .line 675
    cmp-long v2, v7, v2

    .line 676
    .line 677
    if-gez v2, :cond_20

    .line 678
    .line 679
    new-instance v1, La3/j;

    .line 680
    .line 681
    invoke-direct {v1}, La3/j;-><init>()V

    .line 682
    .line 683
    .line 684
    iput-object v1, v0, Lx2/a;->o:Ljava/io/IOException;

    .line 685
    .line 686
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    invoke-static {v5, v12, v1, v2}, Lx2/b;->d(Lx2/b;Landroid/net/Uri;J)Z

    .line 692
    .line 693
    .line 694
    goto :goto_1a

    .line 695
    :cond_20
    iget-wide v2, v0, Lx2/a;->k:J

    .line 696
    .line 697
    sub-long v3, v36, v2

    .line 698
    .line 699
    long-to-double v2, v3

    .line 700
    iget-wide v7, v1, Lx2/g;->k:J

    .line 701
    .line 702
    invoke-static {v7, v8}, Lf2/d;->b(J)J

    .line 703
    .line 704
    .line 705
    move-result-wide v7

    .line 706
    long-to-double v7, v7

    .line 707
    const-wide/high16 v9, 0x400c000000000000L    # 3.5

    .line 708
    .line 709
    mul-double/2addr v7, v9

    .line 710
    cmpl-double v1, v2, v7

    .line 711
    .line 712
    if-lez v1, :cond_21

    .line 713
    .line 714
    new-instance v1, La3/j;

    .line 715
    .line 716
    invoke-direct {v1}, La3/j;-><init>()V

    .line 717
    .line 718
    .line 719
    iput-object v1, v0, Lx2/a;->o:Ljava/io/IOException;

    .line 720
    .line 721
    iget-object v2, v5, Lx2/b;->h:La3/r;

    .line 722
    .line 723
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 724
    .line 725
    .line 726
    invoke-static {v1}, La3/r;->c(Ljava/io/IOException;)J

    .line 727
    .line 728
    .line 729
    move-result-wide v1

    .line 730
    invoke-static {v5, v12, v1, v2}, Lx2/b;->d(Lx2/b;Landroid/net/Uri;J)Z

    .line 731
    .line 732
    .line 733
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    cmp-long v3, v1, v3

    .line 739
    .line 740
    if-eqz v3, :cond_21

    .line 741
    .line 742
    invoke-virtual {v0, v1, v2}, Lx2/a;->d(J)Z

    .line 743
    .line 744
    .line 745
    :cond_21
    :goto_1a
    iget-object v1, v0, Lx2/a;->i:Lx2/g;

    .line 746
    .line 747
    if-eq v1, v6, :cond_22

    .line 748
    .line 749
    iget-wide v1, v1, Lx2/g;->k:J

    .line 750
    .line 751
    goto :goto_1b

    .line 752
    :cond_22
    iget-wide v1, v1, Lx2/g;->k:J

    .line 753
    .line 754
    const-wide/16 v3, 0x2

    .line 755
    .line 756
    div-long/2addr v1, v3

    .line 757
    :goto_1b
    invoke-static {v1, v2}, Lf2/d;->b(J)J

    .line 758
    .line 759
    .line 760
    move-result-wide v1

    .line 761
    add-long v1, v1, v36

    .line 762
    .line 763
    iput-wide v1, v0, Lx2/a;->l:J

    .line 764
    .line 765
    iget-object v1, v5, Lx2/b;->q:Landroid/net/Uri;

    .line 766
    .line 767
    invoke-virtual {v12, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 768
    .line 769
    .line 770
    move-result v1

    .line 771
    if-eqz v1, :cond_23

    .line 772
    .line 773
    iget-object v1, v0, Lx2/a;->i:Lx2/g;

    .line 774
    .line 775
    iget-boolean v1, v1, Lx2/g;->l:Z

    .line 776
    .line 777
    if-nez v1, :cond_23

    .line 778
    .line 779
    invoke-virtual/range {p0 .. p0}, Lx2/a;->e()V

    .line 780
    .line 781
    .line 782
    :cond_23
    return-void
.end method

.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Lx2/a;->n:Z

    .line 5
    .line 6
    iget-object v1, v0, Lx2/a;->p:Lx2/b;

    .line 7
    .line 8
    iget-object v2, v1, Lx2/b;->h:La3/r;

    .line 9
    .line 10
    iget-object v3, v0, Lx2/a;->h:La3/e0;

    .line 11
    .line 12
    iget v4, v3, La3/e0;->b:I

    .line 13
    .line 14
    iget v2, v2, La3/r;->a:I

    .line 15
    .line 16
    const/4 v5, -0x1

    .line 17
    if-ne v2, v5, :cond_1

    .line 18
    .line 19
    const/4 v2, 0x7

    .line 20
    if-ne v4, v2, :cond_0

    .line 21
    .line 22
    const/4 v2, 0x6

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v2, 0x3

    .line 25
    :cond_1
    :goto_0
    iget-object v4, v0, Lx2/a;->g:La3/c0;

    .line 26
    .line 27
    invoke-virtual {v4, v3, v0, v2}, La3/c0;->c(La3/z;La3/w;I)J

    .line 28
    .line 29
    .line 30
    move-result-wide v15

    .line 31
    iget-object v5, v1, Lx2/b;->l:Lcom/google/android/gms/internal/play_billing/v;

    .line 32
    .line 33
    iget-object v6, v3, La3/e0;->a:La3/l;

    .line 34
    .line 35
    iget v7, v3, La3/e0;->b:I

    .line 36
    .line 37
    const/4 v8, -0x1

    .line 38
    const/4 v9, 0x0

    .line 39
    const/4 v10, 0x0

    .line 40
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    invoke-virtual/range {v5 .. v16}, Lcom/google/android/gms/internal/play_billing/v;->h(La3/l;IIILjava/lang/Object;JJJ)V

    .line 51
    .line 52
    .line 53
    return-void
.end method
