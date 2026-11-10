.class public final Lw2/h;
.super Lv2/b;
.source "SourceFile"


# static fields
.field public static final H:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public A:Lk2/h;

.field public B:Z

.field public C:Lw2/p;

.field public D:I

.field public E:Z

.field public volatile F:Z

.field public G:Z

.field public final j:I

.field public final k:I

.field public final l:Landroid/net/Uri;

.field public final m:La3/i;

.field public final n:La3/l;

.field public final o:Lk2/h;

.field public final p:Z

.field public final q:Z

.field public final r:Lb3/l;

.field public final s:Z

.field public final t:Lw2/g;

.field public final u:Ljava/util/List;

.field public final v:Lj2/b;

.field public final w:Lr2/i;

.field public final x:Lb3/h;

.field public final y:Z

.field public final z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ly0/i;

    invoke-direct {v0}, Ly0/i;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lw2/h;->H:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lw2/g;La3/i;La3/l;Lf2/t;ZLa3/i;La3/l;ZLandroid/net/Uri;Ljava/util/List;ILjava/lang/Object;JJJIZZLb3/l;Lj2/b;Lk2/h;Lr2/i;Lb3/h;Z)V
    .locals 14

    .line 1
    move-object v12, p0

    move-object/from16 v13, p7

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p11

    move-object/from16 v5, p12

    move-wide/from16 v6, p13

    move-wide/from16 v8, p15

    move-wide/from16 v10, p17

    invoke-direct/range {v0 .. v11}, Lv2/b;-><init>(La3/i;La3/l;Lf2/t;ILjava/lang/Object;JJJ)V

    move/from16 v0, p5

    iput-boolean v0, v12, Lw2/h;->y:Z

    move/from16 v0, p19

    iput v0, v12, Lw2/h;->k:I

    iput-object v13, v12, Lw2/h;->n:La3/l;

    move-object/from16 v0, p6

    iput-object v0, v12, Lw2/h;->m:La3/i;

    if-eqz v13, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v12, Lw2/h;->E:Z

    move/from16 v0, p8

    iput-boolean v0, v12, Lw2/h;->z:Z

    move-object/from16 v0, p9

    iput-object v0, v12, Lw2/h;->l:Landroid/net/Uri;

    move/from16 v0, p21

    iput-boolean v0, v12, Lw2/h;->p:Z

    move-object/from16 v0, p22

    iput-object v0, v12, Lw2/h;->r:Lb3/l;

    move/from16 v0, p20

    iput-boolean v0, v12, Lw2/h;->q:Z

    move-object v0, p1

    iput-object v0, v12, Lw2/h;->t:Lw2/g;

    move-object/from16 v0, p10

    iput-object v0, v12, Lw2/h;->u:Ljava/util/List;

    move-object/from16 v0, p23

    iput-object v0, v12, Lw2/h;->v:Lj2/b;

    move-object/from16 v0, p24

    iput-object v0, v12, Lw2/h;->o:Lk2/h;

    move-object/from16 v0, p25

    iput-object v0, v12, Lw2/h;->w:Lr2/i;

    move-object/from16 v0, p26

    iput-object v0, v12, Lw2/h;->x:Lb3/h;

    move/from16 v0, p27

    iput-boolean v0, v12, Lw2/h;->s:Z

    sget-object v0, Lw2/h;->H:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, v12, Lw2/h;->j:I

    return-void
.end method

.method public static d(Ljava/lang/String;)[B
    .locals 4

    .line 1
    invoke-static {p0}, Lb3/n;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    new-array v0, v1, [B

    array-length v2, p0

    if-le v2, v1, :cond_1

    array-length v2, p0

    sub-int/2addr v2, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    sub-int/2addr v1, v3

    add-int/2addr v1, v2

    array-length v3, p0

    sub-int/2addr v3, v2

    invoke-static {p0, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    iget-object v0, p0, Lw2/h;->C:Lw2/p;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lw2/h;->A:Lk2/h;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lw2/h;->o:Lk2/h;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iput-object v0, p0, Lw2/h;->A:Lk2/h;

    .line 17
    .line 18
    iput-boolean v1, p0, Lw2/h;->B:Z

    .line 19
    .line 20
    iput-boolean v2, p0, Lw2/h;->E:Z

    .line 21
    .line 22
    :cond_0
    iget-boolean v0, p0, Lw2/h;->E:Z

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object v0, p0, Lw2/h;->m:La3/i;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    iget-object v3, p0, Lw2/h;->n:La3/l;

    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    iget-boolean v4, p0, Lw2/h;->z:Z

    .line 38
    .line 39
    invoke-virtual {p0, v0, v3, v4}, Lw2/h;->c(La3/i;La3/l;Z)V

    .line 40
    .line 41
    .line 42
    iput v2, p0, Lw2/h;->D:I

    .line 43
    .line 44
    iput-boolean v2, p0, Lw2/h;->E:Z

    .line 45
    .line 46
    :goto_0
    iget-boolean v0, p0, Lw2/h;->F:Z

    .line 47
    .line 48
    if-nez v0, :cond_6

    .line 49
    .line 50
    iget-boolean v0, p0, Lw2/h;->q:Z

    .line 51
    .line 52
    if-nez v0, :cond_5

    .line 53
    .line 54
    iget-boolean v0, p0, Lw2/h;->p:Z

    .line 55
    .line 56
    if-nez v0, :cond_3

    .line 57
    .line 58
    iget-object v0, p0, Lw2/h;->r:Lb3/l;

    .line 59
    .line 60
    monitor-enter v0

    .line 61
    :goto_1
    :try_start_0
    iget-wide v2, v0, Lb3/l;->c:J

    .line 62
    .line 63
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    cmp-long v2, v2, v4

    .line 69
    .line 70
    if-nez v2, :cond_2

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    monitor-exit v0

    .line 77
    goto :goto_2

    .line 78
    :catchall_0
    move-exception v1

    .line 79
    monitor-exit v0

    .line 80
    throw v1

    .line 81
    :cond_3
    iget-object v0, p0, Lw2/h;->r:Lb3/l;

    .line 82
    .line 83
    iget-wide v2, v0, Lb3/l;->a:J

    .line 84
    .line 85
    const-wide v4, 0x7fffffffffffffffL

    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    cmp-long v2, v2, v4

    .line 91
    .line 92
    if-nez v2, :cond_4

    .line 93
    .line 94
    iget-wide v2, p0, Lv2/a;->f:J

    .line 95
    .line 96
    invoke-virtual {v0, v2, v3}, Lb3/l;->d(J)V

    .line 97
    .line 98
    .line 99
    :cond_4
    :goto_2
    iget-object v0, p0, Lv2/a;->h:La3/f0;

    .line 100
    .line 101
    iget-object v2, p0, Lv2/a;->a:La3/l;

    .line 102
    .line 103
    iget-boolean v3, p0, Lw2/h;->y:Z

    .line 104
    .line 105
    invoke-virtual {p0, v0, v2, v3}, Lw2/h;->c(La3/i;La3/l;Z)V

    .line 106
    .line 107
    .line 108
    :cond_5
    iput-boolean v1, p0, Lw2/h;->G:Z

    .line 109
    .line 110
    :cond_6
    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lw2/h;->F:Z

    return-void
.end method

.method public final c(La3/i;La3/l;Z)V
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    iget v0, v1, Lw2/h;->D:I

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-eqz p3, :cond_1

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v0, v4

    .line 17
    :goto_0
    move v5, v0

    .line 18
    move-object v0, v3

    .line 19
    goto :goto_3

    .line 20
    :cond_1
    int-to-long v5, v0

    .line 21
    iget-wide v7, v3, La3/l;->g:J

    .line 22
    .line 23
    const-wide/16 v9, -0x1

    .line 24
    .line 25
    cmp-long v0, v7, v9

    .line 26
    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_2
    sub-long v9, v7, v5

    .line 31
    .line 32
    :goto_1
    move-wide/from16 v19, v9

    .line 33
    .line 34
    const-wide/16 v9, 0x0

    .line 35
    .line 36
    cmp-long v0, v5, v9

    .line 37
    .line 38
    if-nez v0, :cond_3

    .line 39
    .line 40
    cmp-long v0, v7, v19

    .line 41
    .line 42
    if-nez v0, :cond_3

    .line 43
    .line 44
    move-object v0, v3

    .line 45
    goto :goto_2

    .line 46
    :cond_3
    new-instance v0, La3/l;

    .line 47
    .line 48
    iget-object v12, v3, La3/l;->a:Landroid/net/Uri;

    .line 49
    .line 50
    iget v13, v3, La3/l;->b:I

    .line 51
    .line 52
    iget-object v14, v3, La3/l;->c:[B

    .line 53
    .line 54
    iget-wide v7, v3, La3/l;->e:J

    .line 55
    .line 56
    add-long v15, v7, v5

    .line 57
    .line 58
    iget-wide v7, v3, La3/l;->f:J

    .line 59
    .line 60
    add-long v17, v7, v5

    .line 61
    .line 62
    iget-object v5, v3, La3/l;->h:Ljava/lang/String;

    .line 63
    .line 64
    iget v6, v3, La3/l;->i:I

    .line 65
    .line 66
    iget-object v7, v3, La3/l;->d:Ljava/util/Map;

    .line 67
    .line 68
    move-object v11, v0

    .line 69
    move-object/from16 v21, v5

    .line 70
    .line 71
    move/from16 v22, v6

    .line 72
    .line 73
    move-object/from16 v23, v7

    .line 74
    .line 75
    invoke-direct/range {v11 .. v23}, La3/l;-><init>(Landroid/net/Uri;I[BJJJLjava/lang/String;ILjava/util/Map;)V

    .line 76
    .line 77
    .line 78
    :goto_2
    move v5, v4

    .line 79
    :goto_3
    :try_start_0
    invoke-virtual {v1, v2, v0}, Lw2/h;->e(La3/i;La3/l;)Lk2/f;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    if-eqz v5, :cond_4

    .line 84
    .line 85
    iget v0, v1, Lw2/h;->D:I

    .line 86
    .line 87
    invoke-virtual {v6, v0}, Lk2/f;->f(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 88
    .line 89
    .line 90
    :cond_4
    :goto_4
    if-nez v4, :cond_5

    .line 91
    .line 92
    :try_start_1
    iget-boolean v0, v1, Lw2/h;->F:Z

    .line 93
    .line 94
    if-nez v0, :cond_5

    .line 95
    .line 96
    iget-object v0, v1, Lw2/h;->A:Lk2/h;

    .line 97
    .line 98
    invoke-interface {v0, v6}, Lk2/h;->a(Lk2/f;)I

    .line 99
    .line 100
    .line 101
    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    goto :goto_4

    .line 103
    :catchall_0
    move-exception v0

    .line 104
    :try_start_2
    iget-wide v4, v6, Lk2/f;->d:J

    .line 105
    .line 106
    iget-wide v6, v3, La3/l;->e:J

    .line 107
    .line 108
    sub-long/2addr v4, v6

    .line 109
    long-to-int v3, v4

    .line 110
    iput v3, v1, Lw2/h;->D:I

    .line 111
    .line 112
    throw v0

    .line 113
    :cond_5
    iget-wide v4, v6, Lk2/f;->d:J

    .line 114
    .line 115
    iget-wide v6, v3, La3/l;->e:J

    .line 116
    .line 117
    sub-long/2addr v4, v6

    .line 118
    long-to-int v0, v4

    .line 119
    iput v0, v1, Lw2/h;->D:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 120
    .line 121
    :try_start_3
    invoke-interface/range {p1 .. p1}, La3/i;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 122
    .line 123
    .line 124
    :catch_0
    return-void

    .line 125
    :catchall_1
    move-exception v0

    .line 126
    if-eqz v2, :cond_6

    .line 127
    .line 128
    :try_start_4
    invoke-interface/range {p1 .. p1}, La3/i;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 129
    .line 130
    .line 131
    :catch_1
    :cond_6
    throw v0
.end method

.method public final e(La3/i;La3/l;)Lk2/f;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-interface/range {p1 .. p2}, La3/i;->b(La3/l;)J

    .line 6
    .line 7
    .line 8
    move-result-wide v6

    .line 9
    new-instance v8, Lk2/f;

    .line 10
    .line 11
    iget-wide v4, v1, La3/l;->e:J

    .line 12
    .line 13
    move-object v2, v8

    .line 14
    move-object/from16 v3, p1

    .line 15
    .line 16
    invoke-direct/range {v2 .. v7}, Lk2/f;-><init>(La3/i;JJ)V

    .line 17
    .line 18
    .line 19
    iget-object v2, v0, Lw2/h;->A:Lk2/h;

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    if-nez v2, :cond_26

    .line 23
    .line 24
    iget-object v2, v0, Lw2/h;->x:Lb3/h;

    .line 25
    .line 26
    iput v4, v8, Lk2/f;->f:I

    .line 27
    .line 28
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    :try_start_0
    iget-object v7, v2, Lb3/h;->c:Ljava/io/Serializable;

    .line 34
    .line 35
    check-cast v7, [B

    .line 36
    .line 37
    const/16 v9, 0xa

    .line 38
    .line 39
    invoke-virtual {v8, v7, v4, v9, v4}, Lk2/f;->b([BIIZ)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v9}, Lb3/h;->n(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Lb3/h;->j()I

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    const v10, 0x494433

    .line 50
    .line 51
    .line 52
    if-eq v7, v10, :cond_0

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_0
    const/4 v7, 0x3

    .line 56
    invoke-virtual {v2, v7}, Lb3/h;->r(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Lb3/h;->g()I

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    add-int/lit8 v10, v7, 0xa

    .line 64
    .line 65
    iget-object v11, v2, Lb3/h;->c:Ljava/io/Serializable;

    .line 66
    .line 67
    check-cast v11, [B

    .line 68
    .line 69
    array-length v12, v11

    .line 70
    if-le v10, v12, :cond_1

    .line 71
    .line 72
    invoke-virtual {v2, v10}, Lb3/h;->n(I)V

    .line 73
    .line 74
    .line 75
    iget-object v10, v2, Lb3/h;->c:Ljava/io/Serializable;

    .line 76
    .line 77
    check-cast v10, [B

    .line 78
    .line 79
    invoke-static {v11, v4, v10, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    .line 81
    .line 82
    :cond_1
    iget-object v10, v2, Lb3/h;->c:Ljava/io/Serializable;

    .line 83
    .line 84
    check-cast v10, [B

    .line 85
    .line 86
    invoke-virtual {v8, v10, v9, v7, v4}, Lk2/f;->b([BIIZ)Z

    .line 87
    .line 88
    .line 89
    iget-object v9, v2, Lb3/h;->c:Ljava/io/Serializable;

    .line 90
    .line 91
    check-cast v9, [B

    .line 92
    .line 93
    iget-object v10, v0, Lw2/h;->w:Lr2/i;

    .line 94
    .line 95
    invoke-virtual {v10, v9, v7}, Lr2/i;->a([BI)Lp2/b;

    .line 96
    .line 97
    .line 98
    move-result-object v7

    .line 99
    if-nez v7, :cond_2

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_2
    iget-object v7, v7, Lp2/b;->a:[Lp2/a;

    .line 103
    .line 104
    array-length v9, v7

    .line 105
    move v10, v4

    .line 106
    :goto_0
    if-ge v10, v9, :cond_4

    .line 107
    .line 108
    aget-object v11, v7, v10

    .line 109
    .line 110
    instance-of v12, v11, Lr2/m;

    .line 111
    .line 112
    if-eqz v12, :cond_3

    .line 113
    .line 114
    check-cast v11, Lr2/m;

    .line 115
    .line 116
    iget-object v12, v11, Lr2/m;->b:Ljava/lang/String;

    .line 117
    .line 118
    const-string v13, "com.apple.streaming.transportStreamTimestamp"

    .line 119
    .line 120
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v12

    .line 124
    if-eqz v12, :cond_3

    .line 125
    .line 126
    iget-object v7, v2, Lb3/h;->c:Ljava/io/Serializable;

    .line 127
    .line 128
    check-cast v7, [B

    .line 129
    .line 130
    iget-object v9, v11, Lr2/m;->c:[B

    .line 131
    .line 132
    const/16 v10, 0x8

    .line 133
    .line 134
    invoke-static {v9, v4, v7, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2, v10}, Lb3/h;->n(I)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2}, Lb3/h;->d()J

    .line 141
    .line 142
    .line 143
    move-result-wide v9

    .line 144
    const-wide v11, 0x1ffffffffL

    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    and-long/2addr v9, v11

    .line 150
    goto :goto_2

    .line 151
    :cond_3
    add-int/lit8 v10, v10, 0x1

    .line 152
    .line 153
    goto :goto_0

    .line 154
    :catch_0
    :cond_4
    :goto_1
    move-wide v9, v5

    .line 155
    :goto_2
    iput v4, v8, Lk2/f;->f:I

    .line 156
    .line 157
    invoke-interface/range {p1 .. p1}, La3/i;->c()Ljava/util/Map;

    .line 158
    .line 159
    .line 160
    iget-object v2, v0, Lw2/h;->t:Lw2/g;

    .line 161
    .line 162
    check-cast v2, Ly0/i;

    .line 163
    .line 164
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    .line 166
    .line 167
    const-wide/16 v11, 0x0

    .line 168
    .line 169
    iget-object v2, v0, Lw2/h;->r:Lb3/l;

    .line 170
    .line 171
    iget-object v7, v0, Lw2/h;->o:Lk2/h;

    .line 172
    .line 173
    iget-object v13, v0, Lv2/a;->c:Lf2/t;

    .line 174
    .line 175
    if-eqz v7, :cond_e

    .line 176
    .line 177
    instance-of v14, v7, Ln2/c0;

    .line 178
    .line 179
    if-nez v14, :cond_6

    .line 180
    .line 181
    instance-of v14, v7, Lm2/g;

    .line 182
    .line 183
    if-eqz v14, :cond_5

    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_5
    move v14, v4

    .line 187
    goto :goto_4

    .line 188
    :cond_6
    :goto_3
    const/4 v14, 0x1

    .line 189
    :goto_4
    if-eqz v14, :cond_7

    .line 190
    .line 191
    invoke-static {v7}, Ly0/i;->c(Lk2/h;)Lu1/d;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    goto/16 :goto_e

    .line 196
    .line 197
    :cond_7
    instance-of v14, v7, Lw2/s;

    .line 198
    .line 199
    if-eqz v14, :cond_8

    .line 200
    .line 201
    new-instance v14, Lw2/s;

    .line 202
    .line 203
    iget-object v15, v13, Lf2/t;->A:Ljava/lang/String;

    .line 204
    .line 205
    invoke-direct {v14, v15, v2}, Lw2/s;-><init>(Ljava/lang/String;Lb3/l;)V

    .line 206
    .line 207
    .line 208
    goto :goto_5

    .line 209
    :cond_8
    instance-of v14, v7, Ln2/e;

    .line 210
    .line 211
    if-eqz v14, :cond_9

    .line 212
    .line 213
    new-instance v14, Ln2/e;

    .line 214
    .line 215
    invoke-direct {v14}, Ln2/e;-><init>()V

    .line 216
    .line 217
    .line 218
    goto :goto_5

    .line 219
    :cond_9
    instance-of v14, v7, Ln2/a;

    .line 220
    .line 221
    if-eqz v14, :cond_a

    .line 222
    .line 223
    new-instance v14, Ln2/a;

    .line 224
    .line 225
    invoke-direct {v14}, Ln2/a;-><init>()V

    .line 226
    .line 227
    .line 228
    goto :goto_5

    .line 229
    :cond_a
    instance-of v14, v7, Ln2/c;

    .line 230
    .line 231
    if-eqz v14, :cond_b

    .line 232
    .line 233
    new-instance v14, Ln2/c;

    .line 234
    .line 235
    invoke-direct {v14}, Ln2/c;-><init>()V

    .line 236
    .line 237
    .line 238
    goto :goto_5

    .line 239
    :cond_b
    instance-of v14, v7, Ll2/c;

    .line 240
    .line 241
    if-eqz v14, :cond_c

    .line 242
    .line 243
    new-instance v14, Ll2/c;

    .line 244
    .line 245
    invoke-direct {v14, v5, v6}, Ll2/c;-><init>(J)V

    .line 246
    .line 247
    .line 248
    :goto_5
    invoke-static {v14}, Ly0/i;->c(Lk2/h;)Lu1/d;

    .line 249
    .line 250
    .line 251
    move-result-object v14

    .line 252
    goto :goto_6

    .line 253
    :cond_c
    const/4 v14, 0x0

    .line 254
    :goto_6
    if-eqz v14, :cond_d

    .line 255
    .line 256
    goto :goto_7

    .line 257
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 258
    .line 259
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    const-string v3, "Unexpected previousExtractor type: "

    .line 268
    .line 269
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    throw v1

    .line 277
    :cond_e
    :goto_7
    iget-object v1, v1, La3/l;->a:Landroid/net/Uri;

    .line 278
    .line 279
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    if-nez v1, :cond_f

    .line 284
    .line 285
    const-string v1, ""

    .line 286
    .line 287
    :cond_f
    iget-object v7, v13, Lf2/t;->i:Ljava/lang/String;

    .line 288
    .line 289
    const-string v14, "text/vtt"

    .line 290
    .line 291
    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    move-result v7

    .line 295
    iget-object v14, v0, Lw2/h;->u:Ljava/util/List;

    .line 296
    .line 297
    iget-object v15, v13, Lf2/t;->A:Ljava/lang/String;

    .line 298
    .line 299
    if-nez v7, :cond_18

    .line 300
    .line 301
    const-string v7, ".webvtt"

    .line 302
    .line 303
    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 304
    .line 305
    .line 306
    move-result v7

    .line 307
    if-nez v7, :cond_18

    .line 308
    .line 309
    const-string v7, ".vtt"

    .line 310
    .line 311
    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 312
    .line 313
    .line 314
    move-result v7

    .line 315
    if-eqz v7, :cond_10

    .line 316
    .line 317
    goto/16 :goto_a

    .line 318
    .line 319
    :cond_10
    const-string v7, ".aac"

    .line 320
    .line 321
    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 322
    .line 323
    .line 324
    move-result v7

    .line 325
    if-eqz v7, :cond_11

    .line 326
    .line 327
    new-instance v1, Ln2/e;

    .line 328
    .line 329
    invoke-direct {v1}, Ln2/e;-><init>()V

    .line 330
    .line 331
    .line 332
    goto/16 :goto_b

    .line 333
    .line 334
    :cond_11
    const-string v7, ".ac3"

    .line 335
    .line 336
    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 337
    .line 338
    .line 339
    move-result v7

    .line 340
    if-nez v7, :cond_17

    .line 341
    .line 342
    const-string v7, ".ec3"

    .line 343
    .line 344
    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 345
    .line 346
    .line 347
    move-result v7

    .line 348
    if-eqz v7, :cond_12

    .line 349
    .line 350
    goto :goto_9

    .line 351
    :cond_12
    const-string v7, ".ac4"

    .line 352
    .line 353
    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 354
    .line 355
    .line 356
    move-result v7

    .line 357
    if-eqz v7, :cond_13

    .line 358
    .line 359
    new-instance v1, Ln2/c;

    .line 360
    .line 361
    invoke-direct {v1}, Ln2/c;-><init>()V

    .line 362
    .line 363
    .line 364
    goto :goto_b

    .line 365
    :cond_13
    const-string v7, ".mp3"

    .line 366
    .line 367
    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 368
    .line 369
    .line 370
    move-result v7

    .line 371
    if-eqz v7, :cond_14

    .line 372
    .line 373
    new-instance v1, Ll2/c;

    .line 374
    .line 375
    invoke-direct {v1, v11, v12}, Ll2/c;-><init>(J)V

    .line 376
    .line 377
    .line 378
    goto :goto_b

    .line 379
    :cond_14
    const-string v7, ".mp4"

    .line 380
    .line 381
    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 382
    .line 383
    .line 384
    move-result v16

    .line 385
    if-nez v16, :cond_16

    .line 386
    .line 387
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 388
    .line 389
    .line 390
    move-result v16

    .line 391
    add-int/lit8 v3, v16, -0x4

    .line 392
    .line 393
    const-string v5, ".m4"

    .line 394
    .line 395
    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 396
    .line 397
    .line 398
    move-result v3

    .line 399
    if-nez v3, :cond_16

    .line 400
    .line 401
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 402
    .line 403
    .line 404
    move-result v3

    .line 405
    add-int/lit8 v3, v3, -0x5

    .line 406
    .line 407
    invoke-virtual {v1, v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 408
    .line 409
    .line 410
    move-result v3

    .line 411
    if-nez v3, :cond_16

    .line 412
    .line 413
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 414
    .line 415
    .line 416
    move-result v3

    .line 417
    add-int/lit8 v3, v3, -0x5

    .line 418
    .line 419
    const-string v5, ".cmf"

    .line 420
    .line 421
    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 422
    .line 423
    .line 424
    move-result v1

    .line 425
    if-eqz v1, :cond_15

    .line 426
    .line 427
    goto :goto_8

    .line 428
    :cond_15
    invoke-static {v13, v14, v2}, Ly0/i;->g(Lf2/t;Ljava/util/List;Lb3/l;)Ln2/c0;

    .line 429
    .line 430
    .line 431
    move-result-object v1

    .line 432
    goto :goto_b

    .line 433
    :cond_16
    :goto_8
    invoke-static {v2, v13, v14}, Ly0/i;->e(Lb3/l;Lf2/t;Ljava/util/List;)Lm2/g;

    .line 434
    .line 435
    .line 436
    move-result-object v1

    .line 437
    goto :goto_b

    .line 438
    :cond_17
    :goto_9
    new-instance v1, Ln2/a;

    .line 439
    .line 440
    invoke-direct {v1}, Ln2/a;-><init>()V

    .line 441
    .line 442
    .line 443
    goto :goto_b

    .line 444
    :cond_18
    :goto_a
    new-instance v1, Lw2/s;

    .line 445
    .line 446
    invoke-direct {v1, v15, v2}, Lw2/s;-><init>(Ljava/lang/String;Lb3/l;)V

    .line 447
    .line 448
    .line 449
    :goto_b
    iput v4, v8, Lk2/f;->f:I

    .line 450
    .line 451
    invoke-static {v1, v8}, Ly0/i;->h(Lk2/h;Lk2/f;)Z

    .line 452
    .line 453
    .line 454
    move-result v3

    .line 455
    if-eqz v3, :cond_19

    .line 456
    .line 457
    goto/16 :goto_d

    .line 458
    .line 459
    :cond_19
    instance-of v3, v1, Lw2/s;

    .line 460
    .line 461
    if-nez v3, :cond_1a

    .line 462
    .line 463
    new-instance v3, Lw2/s;

    .line 464
    .line 465
    invoke-direct {v3, v15, v2}, Lw2/s;-><init>(Ljava/lang/String;Lb3/l;)V

    .line 466
    .line 467
    .line 468
    invoke-static {v3, v8}, Ly0/i;->h(Lk2/h;Lk2/f;)Z

    .line 469
    .line 470
    .line 471
    move-result v5

    .line 472
    if-eqz v5, :cond_1a

    .line 473
    .line 474
    goto :goto_c

    .line 475
    :cond_1a
    instance-of v3, v1, Ln2/e;

    .line 476
    .line 477
    if-nez v3, :cond_1b

    .line 478
    .line 479
    new-instance v3, Ln2/e;

    .line 480
    .line 481
    invoke-direct {v3}, Ln2/e;-><init>()V

    .line 482
    .line 483
    .line 484
    invoke-static {v3, v8}, Ly0/i;->h(Lk2/h;Lk2/f;)Z

    .line 485
    .line 486
    .line 487
    move-result v5

    .line 488
    if-eqz v5, :cond_1b

    .line 489
    .line 490
    goto :goto_c

    .line 491
    :cond_1b
    instance-of v3, v1, Ln2/a;

    .line 492
    .line 493
    if-nez v3, :cond_1c

    .line 494
    .line 495
    new-instance v3, Ln2/a;

    .line 496
    .line 497
    invoke-direct {v3}, Ln2/a;-><init>()V

    .line 498
    .line 499
    .line 500
    invoke-static {v3, v8}, Ly0/i;->h(Lk2/h;Lk2/f;)Z

    .line 501
    .line 502
    .line 503
    move-result v5

    .line 504
    if-eqz v5, :cond_1c

    .line 505
    .line 506
    goto :goto_c

    .line 507
    :cond_1c
    instance-of v3, v1, Ln2/c;

    .line 508
    .line 509
    if-nez v3, :cond_1d

    .line 510
    .line 511
    new-instance v3, Ln2/c;

    .line 512
    .line 513
    invoke-direct {v3}, Ln2/c;-><init>()V

    .line 514
    .line 515
    .line 516
    invoke-static {v3, v8}, Ly0/i;->h(Lk2/h;Lk2/f;)Z

    .line 517
    .line 518
    .line 519
    move-result v5

    .line 520
    if-eqz v5, :cond_1d

    .line 521
    .line 522
    goto :goto_c

    .line 523
    :cond_1d
    instance-of v3, v1, Ll2/c;

    .line 524
    .line 525
    if-nez v3, :cond_1e

    .line 526
    .line 527
    new-instance v3, Ll2/c;

    .line 528
    .line 529
    invoke-direct {v3, v11, v12}, Ll2/c;-><init>(J)V

    .line 530
    .line 531
    .line 532
    invoke-static {v3, v8}, Ly0/i;->h(Lk2/h;Lk2/f;)Z

    .line 533
    .line 534
    .line 535
    move-result v5

    .line 536
    if-eqz v5, :cond_1e

    .line 537
    .line 538
    goto :goto_c

    .line 539
    :cond_1e
    instance-of v3, v1, Lm2/g;

    .line 540
    .line 541
    if-nez v3, :cond_1f

    .line 542
    .line 543
    invoke-static {v2, v13, v14}, Ly0/i;->e(Lb3/l;Lf2/t;Ljava/util/List;)Lm2/g;

    .line 544
    .line 545
    .line 546
    move-result-object v3

    .line 547
    invoke-static {v3, v8}, Ly0/i;->h(Lk2/h;Lk2/f;)Z

    .line 548
    .line 549
    .line 550
    move-result v5

    .line 551
    if-eqz v5, :cond_1f

    .line 552
    .line 553
    goto :goto_c

    .line 554
    :cond_1f
    instance-of v3, v1, Ln2/c0;

    .line 555
    .line 556
    if-nez v3, :cond_20

    .line 557
    .line 558
    invoke-static {v13, v14, v2}, Ly0/i;->g(Lf2/t;Ljava/util/List;Lb3/l;)Ln2/c0;

    .line 559
    .line 560
    .line 561
    move-result-object v3

    .line 562
    invoke-static {v3, v8}, Ly0/i;->h(Lk2/h;Lk2/f;)Z

    .line 563
    .line 564
    .line 565
    move-result v5

    .line 566
    if-eqz v5, :cond_20

    .line 567
    .line 568
    :goto_c
    invoke-static {v3}, Ly0/i;->c(Lk2/h;)Lu1/d;

    .line 569
    .line 570
    .line 571
    move-result-object v1

    .line 572
    goto :goto_e

    .line 573
    :cond_20
    :goto_d
    invoke-static {v1}, Ly0/i;->c(Lk2/h;)Lu1/d;

    .line 574
    .line 575
    .line 576
    move-result-object v1

    .line 577
    :goto_e
    iget-object v3, v1, Lu1/d;->c:Ljava/lang/Object;

    .line 578
    .line 579
    check-cast v3, Lk2/h;

    .line 580
    .line 581
    iput-object v3, v0, Lw2/h;->A:Lk2/h;

    .line 582
    .line 583
    iget-boolean v3, v1, Lu1/d;->b:Z

    .line 584
    .line 585
    iput-boolean v3, v0, Lw2/h;->B:Z

    .line 586
    .line 587
    iget-boolean v1, v1, Lu1/d;->a:Z

    .line 588
    .line 589
    if-eqz v1, :cond_23

    .line 590
    .line 591
    iget-object v1, v0, Lw2/h;->C:Lw2/p;

    .line 592
    .line 593
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    cmp-long v3, v9, v5

    .line 599
    .line 600
    if-eqz v3, :cond_21

    .line 601
    .line 602
    invoke-virtual {v2, v9, v10}, Lb3/l;->b(J)J

    .line 603
    .line 604
    .line 605
    move-result-wide v2

    .line 606
    goto :goto_f

    .line 607
    :cond_21
    iget-wide v2, v0, Lv2/a;->f:J

    .line 608
    .line 609
    :goto_f
    iget-wide v5, v1, Lw2/p;->X:J

    .line 610
    .line 611
    cmp-long v5, v5, v2

    .line 612
    .line 613
    if-eqz v5, :cond_25

    .line 614
    .line 615
    iput-wide v2, v1, Lw2/p;->X:J

    .line 616
    .line 617
    iget-object v1, v1, Lw2/p;->x:[Lw2/o;

    .line 618
    .line 619
    array-length v5, v1

    .line 620
    move v6, v4

    .line 621
    :goto_10
    if-ge v6, v5, :cond_25

    .line 622
    .line 623
    aget-object v7, v1, v6

    .line 624
    .line 625
    iget-wide v9, v7, Lw2/o;->C:J

    .line 626
    .line 627
    cmp-long v9, v9, v2

    .line 628
    .line 629
    if-eqz v9, :cond_22

    .line 630
    .line 631
    iput-wide v2, v7, Lw2/o;->C:J

    .line 632
    .line 633
    const/4 v9, 0x1

    .line 634
    iput-boolean v9, v7, Lw2/o;->A:Z

    .line 635
    .line 636
    :cond_22
    add-int/lit8 v6, v6, 0x1

    .line 637
    .line 638
    goto :goto_10

    .line 639
    :cond_23
    iget-object v1, v0, Lw2/h;->C:Lw2/p;

    .line 640
    .line 641
    iget-wide v2, v1, Lw2/p;->X:J

    .line 642
    .line 643
    cmp-long v2, v2, v11

    .line 644
    .line 645
    if-eqz v2, :cond_25

    .line 646
    .line 647
    iput-wide v11, v1, Lw2/p;->X:J

    .line 648
    .line 649
    iget-object v1, v1, Lw2/p;->x:[Lw2/o;

    .line 650
    .line 651
    array-length v2, v1

    .line 652
    move v3, v4

    .line 653
    :goto_11
    if-ge v3, v2, :cond_25

    .line 654
    .line 655
    aget-object v5, v1, v3

    .line 656
    .line 657
    iget-wide v6, v5, Lw2/o;->C:J

    .line 658
    .line 659
    cmp-long v6, v6, v11

    .line 660
    .line 661
    if-eqz v6, :cond_24

    .line 662
    .line 663
    iput-wide v11, v5, Lw2/o;->C:J

    .line 664
    .line 665
    const/4 v6, 0x1

    .line 666
    iput-boolean v6, v5, Lw2/o;->A:Z

    .line 667
    .line 668
    :cond_24
    add-int/lit8 v3, v3, 0x1

    .line 669
    .line 670
    goto :goto_11

    .line 671
    :cond_25
    iget-object v1, v0, Lw2/h;->C:Lw2/p;

    .line 672
    .line 673
    iget-object v1, v1, Lw2/p;->z:Ljava/util/HashSet;

    .line 674
    .line 675
    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 676
    .line 677
    .line 678
    iget-object v1, v0, Lw2/h;->A:Lk2/h;

    .line 679
    .line 680
    iget-object v2, v0, Lw2/h;->C:Lw2/p;

    .line 681
    .line 682
    invoke-interface {v1, v2}, Lk2/h;->b(Lw2/p;)V

    .line 683
    .line 684
    .line 685
    :cond_26
    iget-object v1, v0, Lw2/h;->C:Lw2/p;

    .line 686
    .line 687
    iget-object v2, v1, Lw2/p;->Y:Lj2/b;

    .line 688
    .line 689
    iget-object v3, v0, Lw2/h;->v:Lj2/b;

    .line 690
    .line 691
    invoke-static {v2, v3}, Lb3/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 692
    .line 693
    .line 694
    move-result v2

    .line 695
    if-nez v2, :cond_28

    .line 696
    .line 697
    iput-object v3, v1, Lw2/p;->Y:Lj2/b;

    .line 698
    .line 699
    :goto_12
    iget-object v2, v1, Lw2/p;->x:[Lw2/o;

    .line 700
    .line 701
    array-length v5, v2

    .line 702
    if-ge v4, v5, :cond_28

    .line 703
    .line 704
    iget-object v5, v1, Lw2/p;->Q:[Z

    .line 705
    .line 706
    aget-boolean v5, v5, v4

    .line 707
    .line 708
    if-eqz v5, :cond_27

    .line 709
    .line 710
    aget-object v2, v2, v4

    .line 711
    .line 712
    iput-object v3, v2, Lw2/o;->F:Lj2/b;

    .line 713
    .line 714
    const/4 v5, 0x1

    .line 715
    iput-boolean v5, v2, Lw2/o;->A:Z

    .line 716
    .line 717
    goto :goto_13

    .line 718
    :cond_27
    const/4 v5, 0x1

    .line 719
    :goto_13
    add-int/lit8 v4, v4, 0x1

    .line 720
    .line 721
    goto :goto_12

    .line 722
    :cond_28
    return-object v8
.end method
