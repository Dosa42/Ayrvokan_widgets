.class public final Lw2/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lw2/g;

.field public final b:La3/i;

.field public final c:La3/i;

.field public final d:Lh/a;

.field public final e:[Landroid/net/Uri;

.field public final f:[Lf2/t;

.field public final g:Lx2/l;

.field public final h:Lt2/w;

.field public final i:Ljava/util/List;

.field public final j:Lh/a;

.field public k:Z

.field public l:[B

.field public m:Lcom/google/android/gms/internal/play_billing/c0;

.field public n:Landroid/net/Uri;

.field public o:Z

.field public p:Lz2/p;

.field public q:J

.field public r:Z


# direct methods
.method public constructor <init>(Lw2/g;Lx2/l;[Landroid/net/Uri;[Lf2/t;Lw2/b;La3/g0;Lh/a;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw2/f;->a:Lw2/g;

    iput-object p2, p0, Lw2/f;->g:Lx2/l;

    iput-object p3, p0, Lw2/f;->e:[Landroid/net/Uri;

    iput-object p4, p0, Lw2/f;->f:[Lf2/t;

    iput-object p7, p0, Lw2/f;->d:Lh/a;

    iput-object p8, p0, Lw2/f;->i:Ljava/util/List;

    new-instance p1, Lh/a;

    const/4 p2, 0x4

    const/16 p7, 0x13

    invoke-direct {p1, p2, p7}, Lh/a;-><init>(II)V

    iput-object p1, p0, Lw2/f;->j:Lh/a;

    sget-object p1, Lb3/n;->e:[B

    iput-object p1, p0, Lw2/f;->l:[B

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lw2/f;->q:J

    .line 1
    iget-object p1, p5, Lw2/b;->a:La3/h;

    .line 2
    invoke-interface {p1}, La3/h;->a()La3/i;

    move-result-object p1

    .line 3
    iput-object p1, p0, Lw2/f;->b:La3/i;

    if-eqz p6, :cond_0

    invoke-interface {p1, p6}, La3/i;->a(La3/g0;)V

    .line 4
    :cond_0
    iget-object p1, p5, Lw2/b;->a:La3/h;

    invoke-interface {p1}, La3/h;->a()La3/i;

    move-result-object p1

    .line 5
    iput-object p1, p0, Lw2/f;->c:La3/i;

    new-instance p1, Lt2/w;

    invoke-direct {p1, p4}, Lt2/w;-><init>([Lf2/t;)V

    iput-object p1, p0, Lw2/f;->h:Lt2/w;

    array-length p1, p3

    new-array p1, p1, [I

    const/4 p2, 0x0

    :goto_0
    array-length p4, p3

    if-ge p2, p4, :cond_1

    aput p2, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    new-instance p2, Lw2/e;

    iget-object p3, p0, Lw2/f;->h:Lt2/w;

    invoke-direct {p2, p3, p1}, Lw2/e;-><init>(Lt2/w;[I)V

    iput-object p2, p0, Lw2/f;->p:Lz2/p;

    return-void
.end method


# virtual methods
.method public final a(Lw2/h;J)[Lv2/c;
    .locals 16

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-object/from16 v9, p1

    .line 4
    .line 5
    if-nez v9, :cond_0

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, v8, Lw2/f;->h:Lt2/w;

    .line 10
    .line 11
    iget-object v1, v9, Lv2/a;->c:Lf2/t;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lt2/w;->a(Lf2/t;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    :goto_0
    move v10, v0

    .line 18
    iget-object v0, v8, Lw2/f;->p:Lz2/p;

    .line 19
    .line 20
    check-cast v0, Lz2/d;

    .line 21
    .line 22
    iget-object v0, v0, Lz2/d;->c:[I

    .line 23
    .line 24
    array-length v11, v0

    .line 25
    new-array v12, v11, [Lv2/c;

    .line 26
    .line 27
    const/4 v13, 0x0

    .line 28
    move v14, v13

    .line 29
    :goto_1
    if-ge v14, v11, :cond_4

    .line 30
    .line 31
    iget-object v0, v8, Lw2/f;->p:Lz2/p;

    .line 32
    .line 33
    check-cast v0, Lz2/d;

    .line 34
    .line 35
    iget-object v0, v0, Lz2/d;->c:[I

    .line 36
    .line 37
    aget v0, v0, v14

    .line 38
    .line 39
    iget-object v1, v8, Lw2/f;->e:[Landroid/net/Uri;

    .line 40
    .line 41
    aget-object v1, v1, v0

    .line 42
    .line 43
    iget-object v2, v8, Lw2/f;->g:Lx2/l;

    .line 44
    .line 45
    check-cast v2, Lx2/b;

    .line 46
    .line 47
    invoke-virtual {v2, v1}, Lx2/b;->f(Landroid/net/Uri;)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    sget-object v15, Lv2/c;->d:Lc/a;

    .line 52
    .line 53
    if-nez v3, :cond_1

    .line 54
    .line 55
    aput-object v15, v12, v14

    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_1
    invoke-virtual {v2, v1, v13}, Lx2/b;->e(Landroid/net/Uri;Z)Lx2/g;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    iget-wide v1, v2, Lx2/b;->t:J

    .line 66
    .line 67
    iget-wide v3, v6, Lx2/g;->f:J

    .line 68
    .line 69
    sub-long v4, v3, v1

    .line 70
    .line 71
    if-eq v0, v10, :cond_2

    .line 72
    .line 73
    const/4 v0, 0x1

    .line 74
    move v2, v0

    .line 75
    goto :goto_2

    .line 76
    :cond_2
    move v2, v13

    .line 77
    :goto_2
    move-object/from16 v0, p0

    .line 78
    .line 79
    move-object/from16 v1, p1

    .line 80
    .line 81
    move-object v3, v6

    .line 82
    move-object v13, v6

    .line 83
    move-wide/from16 v6, p2

    .line 84
    .line 85
    invoke-virtual/range {v0 .. v7}, Lw2/f;->b(Lw2/h;ZLx2/g;JJ)J

    .line 86
    .line 87
    .line 88
    move-result-wide v0

    .line 89
    iget-wide v2, v13, Lx2/g;->i:J

    .line 90
    .line 91
    cmp-long v4, v0, v2

    .line 92
    .line 93
    if-gez v4, :cond_3

    .line 94
    .line 95
    aput-object v15, v12, v14

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_3
    sub-long/2addr v0, v2

    .line 99
    long-to-int v0, v0

    .line 100
    new-instance v1, Ly0/i;

    .line 101
    .line 102
    invoke-direct {v1, v13, v0}, Ly0/i;-><init>(Lx2/g;I)V

    .line 103
    .line 104
    .line 105
    aput-object v1, v12, v14

    .line 106
    .line 107
    :goto_3
    add-int/lit8 v14, v14, 0x1

    .line 108
    .line 109
    const/4 v13, 0x0

    .line 110
    goto :goto_1

    .line 111
    :cond_4
    return-object v12
.end method

.method public final b(Lw2/h;ZLx2/g;JJ)J
    .locals 4

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-wide p1, p1, Lv2/b;->i:J

    .line 7
    .line 8
    const-wide/16 p3, -0x1

    .line 9
    .line 10
    cmp-long p5, p1, p3

    .line 11
    .line 12
    if-eqz p5, :cond_1

    .line 13
    .line 14
    const-wide/16 p3, 0x1

    .line 15
    .line 16
    add-long/2addr p3, p1

    .line 17
    :cond_1
    return-wide p3

    .line 18
    :cond_2
    :goto_0
    iget-wide v0, p3, Lx2/g;->p:J

    .line 19
    .line 20
    add-long/2addr v0, p4

    .line 21
    if-eqz p1, :cond_4

    .line 22
    .line 23
    iget-boolean p2, p0, Lw2/f;->o:Z

    .line 24
    .line 25
    if-eqz p2, :cond_3

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_3
    iget-wide p6, p1, Lv2/a;->f:J

    .line 29
    .line 30
    :cond_4
    :goto_1
    iget-boolean p2, p3, Lx2/g;->l:Z

    .line 31
    .line 32
    iget-wide v2, p3, Lx2/g;->i:J

    .line 33
    .line 34
    iget-object p3, p3, Lx2/g;->o:Ljava/util/List;

    .line 35
    .line 36
    if-nez p2, :cond_5

    .line 37
    .line 38
    cmp-long p2, p6, v0

    .line 39
    .line 40
    if-ltz p2, :cond_5

    .line 41
    .line 42
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    int-to-long p1, p1

    .line 47
    add-long/2addr v2, p1

    .line 48
    return-wide v2

    .line 49
    :cond_5
    sub-long/2addr p6, p4

    .line 50
    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    iget-object p4, p0, Lw2/f;->g:Lx2/l;

    .line 55
    .line 56
    check-cast p4, Lx2/b;

    .line 57
    .line 58
    iget-boolean p4, p4, Lx2/b;->s:Z

    .line 59
    .line 60
    const/4 p5, 0x1

    .line 61
    const/4 p6, 0x0

    .line 62
    if-eqz p4, :cond_7

    .line 63
    .line 64
    if-nez p1, :cond_6

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_6
    move p1, p6

    .line 68
    goto :goto_3

    .line 69
    :cond_7
    :goto_2
    move p1, p5

    .line 70
    :goto_3
    sget p4, Lb3/n;->a:I

    .line 71
    .line 72
    invoke-static {p3, p2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    .line 73
    .line 74
    .line 75
    move-result p4

    .line 76
    if-gez p4, :cond_8

    .line 77
    .line 78
    add-int/lit8 p4, p4, 0x2

    .line 79
    .line 80
    neg-int p2, p4

    .line 81
    goto :goto_5

    .line 82
    :cond_8
    :goto_4
    add-int/lit8 p4, p4, -0x1

    .line 83
    .line 84
    if-ltz p4, :cond_9

    .line 85
    .line 86
    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p7

    .line 90
    check-cast p7, Ljava/lang/Comparable;

    .line 91
    .line 92
    invoke-interface {p7, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 93
    .line 94
    .line 95
    move-result p7

    .line 96
    if-nez p7, :cond_9

    .line 97
    .line 98
    goto :goto_4

    .line 99
    :cond_9
    add-int/lit8 p2, p4, 0x1

    .line 100
    .line 101
    :goto_5
    if-eqz p1, :cond_a

    .line 102
    .line 103
    invoke-static {p6, p2}, Ljava/lang/Math;->max(II)I

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    :cond_a
    int-to-long p1, p2

    .line 108
    add-long/2addr p1, v2

    .line 109
    return-wide p1
.end method

.method public final c(Landroid/net/Uri;I)Lw2/d;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    iget-object v1, p0, Lw2/f;->j:Lh/a;

    .line 6
    .line 7
    iget-object v2, v1, Lh/a;->g:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Ljava/util/LinkedHashMap;

    .line 10
    .line 11
    invoke-virtual {v2, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, [B

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    iget-object p2, v1, Lh/a;->g:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p2, Ljava/util/LinkedHashMap;

    .line 22
    .line 23
    invoke-virtual {p2, p1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, [B

    .line 28
    .line 29
    return-object v0

    .line 30
    :cond_1
    new-instance v3, La3/l;

    .line 31
    .line 32
    invoke-direct {v3, p1}, La3/l;-><init>(Landroid/net/Uri;)V

    .line 33
    .line 34
    .line 35
    new-instance p1, Lw2/d;

    .line 36
    .line 37
    iget-object v2, p0, Lw2/f;->c:La3/i;

    .line 38
    .line 39
    iget-object v0, p0, Lw2/f;->f:[Lf2/t;

    .line 40
    .line 41
    aget-object v4, v0, p2

    .line 42
    .line 43
    iget-object p2, p0, Lw2/f;->p:Lz2/p;

    .line 44
    .line 45
    invoke-interface {p2}, Lz2/p;->a()I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    iget-object p2, p0, Lw2/f;->p:Lz2/p;

    .line 50
    .line 51
    invoke-interface {p2}, Lz2/p;->f()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    iget-object v7, p0, Lw2/f;->l:[B

    .line 56
    .line 57
    move-object v1, p1

    .line 58
    invoke-direct/range {v1 .. v7}, Lw2/d;-><init>(La3/i;La3/l;Lf2/t;ILjava/lang/Object;[B)V

    .line 59
    .line 60
    .line 61
    return-object p1
.end method
