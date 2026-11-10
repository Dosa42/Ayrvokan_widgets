.class public final Lf2/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lt2/e;

.field public final b:Ljava/lang/Object;

.field public final c:[Lt2/s;

.field public d:Z

.field public e:Z

.field public f:Lf2/x;

.field public final g:[Z

.field public final h:[Lf2/f0;

.field public final i:Lz2/n;

.field public final j:Lt2/g;

.field public k:Lf2/w;

.field public l:Lt2/x;

.field public m:Landroidx/activity/result/c;

.field public n:J


# direct methods
.method public constructor <init>([Lf2/f0;JLz2/n;La3/m;Lt2/g;Lf2/x;Landroidx/activity/result/c;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p6

    .line 6
    .line 7
    move-object/from16 v3, p7

    .line 8
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, v0, Lf2/w;->h:[Lf2/f0;

    .line 13
    .line 14
    move-wide/from16 v4, p2

    .line 15
    .line 16
    iput-wide v4, v0, Lf2/w;->n:J

    .line 17
    .line 18
    move-object/from16 v4, p4

    .line 19
    .line 20
    iput-object v4, v0, Lf2/w;->i:Lz2/n;

    .line 21
    .line 22
    iput-object v2, v0, Lf2/w;->j:Lt2/g;

    .line 23
    .line 24
    iget-object v4, v3, Lf2/x;->a:Lt2/f;

    .line 25
    .line 26
    iget-object v5, v4, Lt2/f;->a:Ljava/lang/Object;

    .line 27
    .line 28
    iput-object v5, v0, Lf2/w;->b:Ljava/lang/Object;

    .line 29
    .line 30
    iput-object v3, v0, Lf2/w;->f:Lf2/x;

    .line 31
    .line 32
    sget-object v5, Lt2/x;->d:Lt2/x;

    .line 33
    .line 34
    iput-object v5, v0, Lf2/w;->l:Lt2/x;

    .line 35
    .line 36
    move-object/from16 v5, p8

    .line 37
    .line 38
    iput-object v5, v0, Lf2/w;->m:Landroidx/activity/result/c;

    .line 39
    .line 40
    array-length v5, v1

    .line 41
    new-array v5, v5, [Lt2/s;

    .line 42
    .line 43
    iput-object v5, v0, Lf2/w;->c:[Lt2/s;

    .line 44
    .line 45
    array-length v1, v1

    .line 46
    new-array v1, v1, [Z

    .line 47
    .line 48
    iput-object v1, v0, Lf2/w;->g:[Z

    .line 49
    .line 50
    move-object v1, v2

    .line 51
    check-cast v1, Lw2/k;

    .line 52
    .line 53
    new-instance v12, Lcom/google/android/gms/internal/play_billing/v;

    .line 54
    .line 55
    iget-object v2, v1, Lt2/a;->c:Lcom/google/android/gms/internal/play_billing/v;

    .line 56
    .line 57
    iget-object v2, v2, Lcom/google/android/gms/internal/play_billing/v;->d:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 60
    .line 61
    invoke-direct {v12, v2, v4}, Lcom/google/android/gms/internal/play_billing/v;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;Lt2/f;)V

    .line 62
    .line 63
    .line 64
    new-instance v2, Lw2/i;

    .line 65
    .line 66
    iget-object v6, v1, Lw2/k;->f:Lw2/g;

    .line 67
    .line 68
    iget-object v7, v1, Lw2/k;->o:Lx2/l;

    .line 69
    .line 70
    iget-object v8, v1, Lw2/k;->h:Lw2/b;

    .line 71
    .line 72
    iget-object v9, v1, Lw2/k;->q:La3/g0;

    .line 73
    .line 74
    iget-object v10, v1, Lw2/k;->j:Lj2/d;

    .line 75
    .line 76
    iget-object v11, v1, Lw2/k;->k:La3/r;

    .line 77
    .line 78
    iget-object v14, v1, Lw2/k;->i:Lc/a;

    .line 79
    .line 80
    iget-boolean v15, v1, Lw2/k;->l:Z

    .line 81
    .line 82
    iget v4, v1, Lw2/k;->m:I

    .line 83
    .line 84
    iget-boolean v1, v1, Lw2/k;->n:Z

    .line 85
    .line 86
    move-object v5, v2

    .line 87
    move-object/from16 v13, p5

    .line 88
    .line 89
    move/from16 v16, v4

    .line 90
    .line 91
    move/from16 v17, v1

    .line 92
    .line 93
    invoke-direct/range {v5 .. v17}, Lw2/i;-><init>(Lw2/g;Lx2/l;Lw2/b;La3/g0;Lj2/d;La3/r;Lcom/google/android/gms/internal/play_billing/v;La3/m;Lc/a;ZIZ)V

    .line 94
    .line 95
    .line 96
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    iget-wide v6, v3, Lf2/x;->d:J

    .line 102
    .line 103
    cmp-long v1, v6, v4

    .line 104
    .line 105
    if-eqz v1, :cond_0

    .line 106
    .line 107
    const-wide/high16 v3, -0x8000000000000000L

    .line 108
    .line 109
    cmp-long v1, v6, v3

    .line 110
    .line 111
    if-eqz v1, :cond_0

    .line 112
    .line 113
    new-instance v1, Lt2/c;

    .line 114
    .line 115
    invoke-direct {v1, v2, v6, v7}, Lt2/c;-><init>(Lw2/i;J)V

    .line 116
    .line 117
    .line 118
    move-object v2, v1

    .line 119
    :cond_0
    iput-object v2, v0, Lf2/w;->a:Lt2/e;

    .line 120
    .line 121
    return-void
.end method


# virtual methods
.method public final a(Landroidx/activity/result/c;JZ[Z)J
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    move v3, v2

    .line 7
    :goto_0
    iget v4, v1, Landroidx/activity/result/c;->a:I

    .line 8
    .line 9
    const/4 v5, 0x1

    .line 10
    if-ge v3, v4, :cond_1

    .line 11
    .line 12
    if-nez p4, :cond_0

    .line 13
    .line 14
    iget-object v4, v0, Lf2/w;->m:Landroidx/activity/result/c;

    .line 15
    .line 16
    invoke-virtual {v1, v4, v3}, Landroidx/activity/result/c;->a(Landroidx/activity/result/c;I)Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    move v5, v2

    .line 24
    :goto_1
    iget-object v4, v0, Lf2/w;->g:[Z

    .line 25
    .line 26
    aput-boolean v5, v4, v3

    .line 27
    .line 28
    add-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move v3, v2

    .line 32
    :goto_2
    iget-object v4, v0, Lf2/w;->h:[Lf2/f0;

    .line 33
    .line 34
    array-length v6, v4

    .line 35
    const/4 v7, 0x6

    .line 36
    iget-object v8, v0, Lf2/w;->c:[Lt2/s;

    .line 37
    .line 38
    if-ge v3, v6, :cond_3

    .line 39
    .line 40
    aget-object v4, v4, v3

    .line 41
    .line 42
    invoke-interface {v4}, Lf2/f0;->getTrackType()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-ne v4, v7, :cond_2

    .line 47
    .line 48
    const/4 v4, 0x0

    .line 49
    aput-object v4, v8, v3

    .line 50
    .line 51
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lf2/w;->b()V

    .line 55
    .line 56
    .line 57
    iput-object v1, v0, Lf2/w;->m:Landroidx/activity/result/c;

    .line 58
    .line 59
    invoke-virtual/range {p0 .. p0}, Lf2/w;->c()V

    .line 60
    .line 61
    .line 62
    iget-object v3, v1, Landroidx/activity/result/c;->c:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v3, Lz2/q;

    .line 65
    .line 66
    iget-object v9, v0, Lf2/w;->a:Lt2/e;

    .line 67
    .line 68
    iget-object v6, v3, Lz2/q;->b:[Lz2/p;

    .line 69
    .line 70
    invoke-virtual {v6}, [Lz2/p;->clone()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    move-object v10, v6

    .line 75
    check-cast v10, [Lz2/p;

    .line 76
    .line 77
    iget-object v11, v0, Lf2/w;->g:[Z

    .line 78
    .line 79
    iget-object v12, v0, Lf2/w;->c:[Lt2/s;

    .line 80
    .line 81
    move-object/from16 v13, p5

    .line 82
    .line 83
    move-wide/from16 v14, p2

    .line 84
    .line 85
    invoke-interface/range {v9 .. v15}, Lt2/e;->k([Lz2/p;[Z[Lt2/s;[ZJ)J

    .line 86
    .line 87
    .line 88
    move-result-wide v9

    .line 89
    move v6, v2

    .line 90
    :goto_3
    array-length v11, v4

    .line 91
    if-ge v6, v11, :cond_5

    .line 92
    .line 93
    aget-object v11, v4, v6

    .line 94
    .line 95
    invoke-interface {v11}, Lf2/f0;->getTrackType()I

    .line 96
    .line 97
    .line 98
    move-result v11

    .line 99
    if-ne v11, v7, :cond_4

    .line 100
    .line 101
    iget-object v11, v0, Lf2/w;->m:Landroidx/activity/result/c;

    .line 102
    .line 103
    invoke-virtual {v11, v6}, Landroidx/activity/result/c;->b(I)Z

    .line 104
    .line 105
    .line 106
    move-result v11

    .line 107
    if-eqz v11, :cond_4

    .line 108
    .line 109
    new-instance v11, Lc/a;

    .line 110
    .line 111
    const/16 v12, 0x12

    .line 112
    .line 113
    invoke-direct {v11, v12, v2}, Lc/a;-><init>(II)V

    .line 114
    .line 115
    .line 116
    aput-object v11, v8, v6

    .line 117
    .line 118
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_5
    iput-boolean v2, v0, Lf2/w;->e:Z

    .line 122
    .line 123
    move v6, v2

    .line 124
    :goto_4
    array-length v11, v8

    .line 125
    if-ge v6, v11, :cond_9

    .line 126
    .line 127
    aget-object v11, v8, v6

    .line 128
    .line 129
    if-eqz v11, :cond_6

    .line 130
    .line 131
    invoke-virtual {v1, v6}, Landroidx/activity/result/c;->b(I)Z

    .line 132
    .line 133
    .line 134
    move-result v11

    .line 135
    invoke-static {v11}, Lcom/google/android/gms/internal/play_billing/i0;->m(Z)V

    .line 136
    .line 137
    .line 138
    aget-object v11, v4, v6

    .line 139
    .line 140
    invoke-interface {v11}, Lf2/f0;->getTrackType()I

    .line 141
    .line 142
    .line 143
    move-result v11

    .line 144
    if-eq v11, v7, :cond_8

    .line 145
    .line 146
    iput-boolean v5, v0, Lf2/w;->e:Z

    .line 147
    .line 148
    goto :goto_6

    .line 149
    :cond_6
    iget-object v11, v3, Lz2/q;->b:[Lz2/p;

    .line 150
    .line 151
    aget-object v11, v11, v6

    .line 152
    .line 153
    if-nez v11, :cond_7

    .line 154
    .line 155
    move v11, v5

    .line 156
    goto :goto_5

    .line 157
    :cond_7
    move v11, v2

    .line 158
    :goto_5
    invoke-static {v11}, Lcom/google/android/gms/internal/play_billing/i0;->m(Z)V

    .line 159
    .line 160
    .line 161
    :cond_8
    :goto_6
    add-int/lit8 v6, v6, 0x1

    .line 162
    .line 163
    goto :goto_4

    .line 164
    :cond_9
    return-wide v9
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lf2/w;->k:Lf2/w;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v0, v1

    .line 9
    :goto_0
    if-nez v0, :cond_1

    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    :goto_1
    iget-object v0, p0, Lf2/w;->m:Landroidx/activity/result/c;

    .line 13
    .line 14
    iget v2, v0, Landroidx/activity/result/c;->a:I

    .line 15
    .line 16
    if-ge v1, v2, :cond_2

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroidx/activity/result/c;->b(I)Z

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lf2/w;->m:Landroidx/activity/result/c;

    .line 22
    .line 23
    iget-object v0, v0, Landroidx/activity/result/c;->c:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Lz2/q;

    .line 26
    .line 27
    iget-object v0, v0, Lz2/q;->b:[Lz2/p;

    .line 28
    .line 29
    aget-object v0, v0, v1

    .line 30
    .line 31
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lf2/w;->k:Lf2/w;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v0, v1

    .line 9
    :goto_0
    if-nez v0, :cond_1

    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    :goto_1
    iget-object v0, p0, Lf2/w;->m:Landroidx/activity/result/c;

    .line 13
    .line 14
    iget v2, v0, Landroidx/activity/result/c;->a:I

    .line 15
    .line 16
    if-ge v1, v2, :cond_3

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroidx/activity/result/c;->b(I)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v2, p0, Lf2/w;->m:Landroidx/activity/result/c;

    .line 23
    .line 24
    iget-object v2, v2, Landroidx/activity/result/c;->c:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v2, Lz2/q;

    .line 27
    .line 28
    iget-object v2, v2, Lz2/q;->b:[Lz2/p;

    .line 29
    .line 30
    aget-object v2, v2, v1

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    invoke-interface {v2}, Lz2/p;->d()V

    .line 37
    .line 38
    .line 39
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_3
    return-void
.end method

.method public final d()J
    .locals 5

    .line 1
    iget-boolean v0, p0, Lf2/w;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lf2/w;->f:Lf2/x;

    iget-wide v0, v0, Lf2/x;->b:J

    return-wide v0

    :cond_0
    iget-boolean v0, p0, Lf2/w;->e:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-eqz v0, :cond_1

    iget-object v0, p0, Lf2/w;->a:Lt2/e;

    invoke-interface {v0}, Lt2/u;->m()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    move-wide v3, v1

    :goto_0
    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    iget-object v0, p0, Lf2/w;->f:Lf2/x;

    iget-wide v3, v0, Lf2/x;->e:J

    :cond_2
    return-wide v3
.end method

.method public final e()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lf2/w;->b()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lf2/w;->f:Lf2/x;

    .line 5
    .line 6
    iget-wide v0, v0, Lf2/x;->d:J

    .line 7
    .line 8
    iget-object v2, p0, Lf2/w;->a:Lt2/e;

    .line 9
    .line 10
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    cmp-long v3, v0, v3

    .line 16
    .line 17
    iget-object v4, p0, Lf2/w;->j:Lt2/g;

    .line 18
    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    const-wide/high16 v5, -0x8000000000000000L

    .line 22
    .line 23
    cmp-long v0, v0, v5

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    :try_start_0
    check-cast v2, Lt2/c;

    .line 28
    .line 29
    iget-object v0, v2, Lt2/c;->f:Lt2/e;

    .line 30
    .line 31
    check-cast v4, Lw2/k;

    .line 32
    .line 33
    invoke-virtual {v4, v0}, Lw2/k;->a(Lt2/e;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    check-cast v4, Lw2/k;

    .line 38
    .line 39
    invoke-virtual {v4, v2}, Lw2/k;->a(Lt2/e;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/i0;->B(Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    return-void
.end method

.method public final f(F)Landroidx/activity/result/c;
    .locals 47

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lf2/w;->l:Lt2/x;

    .line 4
    .line 5
    iget-object v2, v0, Lf2/w;->f:Lf2/x;

    .line 6
    .line 7
    iget-object v2, v2, Lf2/x;->a:Lt2/f;

    .line 8
    .line 9
    iget-object v2, v0, Lf2/w;->i:Lz2/n;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v3, v0, Lf2/w;->h:[Lf2/f0;

    .line 15
    .line 16
    array-length v4, v3

    .line 17
    const/4 v5, 0x1

    .line 18
    add-int/2addr v4, v5

    .line 19
    new-array v4, v4, [I

    .line 20
    .line 21
    array-length v6, v3

    .line 22
    add-int/2addr v6, v5

    .line 23
    new-array v7, v6, [[Lt2/w;

    .line 24
    .line 25
    array-length v8, v3

    .line 26
    add-int/2addr v8, v5

    .line 27
    new-array v8, v8, [[[I

    .line 28
    .line 29
    const/4 v9, 0x0

    .line 30
    move v10, v9

    .line 31
    :goto_0
    if-ge v10, v6, :cond_0

    .line 32
    .line 33
    iget v11, v1, Lt2/x;->a:I

    .line 34
    .line 35
    new-array v12, v11, [Lt2/w;

    .line 36
    .line 37
    aput-object v12, v7, v10

    .line 38
    .line 39
    new-array v11, v11, [[I

    .line 40
    .line 41
    aput-object v11, v8, v10

    .line 42
    .line 43
    add-int/lit8 v10, v10, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    array-length v6, v3

    .line 47
    new-array v10, v6, [I

    .line 48
    .line 49
    move v11, v9

    .line 50
    :goto_1
    if-ge v11, v6, :cond_1

    .line 51
    .line 52
    aget-object v12, v3, v11

    .line 53
    .line 54
    invoke-interface {v12}, Lf2/f0;->supportsMixedMimeTypeAdaptation()I

    .line 55
    .line 56
    .line 57
    move-result v12

    .line 58
    aput v12, v10, v11

    .line 59
    .line 60
    add-int/lit8 v11, v11, 0x1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    move v6, v9

    .line 64
    :goto_2
    iget v11, v1, Lt2/x;->a:I

    .line 65
    .line 66
    if-ge v6, v11, :cond_a

    .line 67
    .line 68
    iget-object v11, v1, Lt2/x;->b:[Lt2/w;

    .line 69
    .line 70
    aget-object v11, v11, v6

    .line 71
    .line 72
    iget-object v12, v11, Lt2/w;->b:[Lf2/t;

    .line 73
    .line 74
    aget-object v12, v12, v9

    .line 75
    .line 76
    iget-object v12, v12, Lf2/t;->i:Ljava/lang/String;

    .line 77
    .line 78
    invoke-static {v12}, Lb3/c;->d(Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    move-result v12

    .line 82
    const/4 v13, 0x4

    .line 83
    if-ne v12, v13, :cond_2

    .line 84
    .line 85
    move v12, v5

    .line 86
    goto :goto_3

    .line 87
    :cond_2
    move v12, v9

    .line 88
    :goto_3
    array-length v13, v3

    .line 89
    move/from16 v16, v5

    .line 90
    .line 91
    move v14, v9

    .line 92
    move v15, v14

    .line 93
    :goto_4
    array-length v9, v3

    .line 94
    iget-object v5, v11, Lt2/w;->b:[Lf2/t;

    .line 95
    .line 96
    iget v0, v11, Lt2/w;->a:I

    .line 97
    .line 98
    if-ge v14, v9, :cond_7

    .line 99
    .line 100
    aget-object v9, v3, v14

    .line 101
    .line 102
    move-object/from16 v18, v1

    .line 103
    .line 104
    move-object/from16 v19, v10

    .line 105
    .line 106
    const/4 v1, 0x0

    .line 107
    const/4 v10, 0x0

    .line 108
    :goto_5
    move-object/from16 v20, v2

    .line 109
    .line 110
    if-ge v1, v0, :cond_3

    .line 111
    .line 112
    aget-object v2, v5, v1

    .line 113
    .line 114
    invoke-interface {v9, v2}, Lf2/f0;->supportsFormat(Lf2/t;)I

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    and-int/lit8 v2, v2, 0x7

    .line 119
    .line 120
    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    .line 121
    .line 122
    .line 123
    move-result v10

    .line 124
    add-int/lit8 v1, v1, 0x1

    .line 125
    .line 126
    move-object/from16 v2, v20

    .line 127
    .line 128
    goto :goto_5

    .line 129
    :cond_3
    aget v0, v4, v14

    .line 130
    .line 131
    if-nez v0, :cond_4

    .line 132
    .line 133
    const/4 v0, 0x1

    .line 134
    goto :goto_6

    .line 135
    :cond_4
    const/4 v0, 0x0

    .line 136
    :goto_6
    if-gt v10, v15, :cond_5

    .line 137
    .line 138
    if-ne v10, v15, :cond_6

    .line 139
    .line 140
    if-eqz v12, :cond_6

    .line 141
    .line 142
    if-nez v16, :cond_6

    .line 143
    .line 144
    if-eqz v0, :cond_6

    .line 145
    .line 146
    :cond_5
    move/from16 v16, v0

    .line 147
    .line 148
    move v15, v10

    .line 149
    move v13, v14

    .line 150
    :cond_6
    add-int/lit8 v14, v14, 0x1

    .line 151
    .line 152
    move-object/from16 v0, p0

    .line 153
    .line 154
    move-object/from16 v1, v18

    .line 155
    .line 156
    move-object/from16 v10, v19

    .line 157
    .line 158
    move-object/from16 v2, v20

    .line 159
    .line 160
    const/4 v5, 0x1

    .line 161
    goto :goto_4

    .line 162
    :cond_7
    move-object/from16 v18, v1

    .line 163
    .line 164
    move-object/from16 v20, v2

    .line 165
    .line 166
    move-object/from16 v19, v10

    .line 167
    .line 168
    array-length v1, v3

    .line 169
    if-ne v13, v1, :cond_8

    .line 170
    .line 171
    new-array v0, v0, [I

    .line 172
    .line 173
    goto :goto_8

    .line 174
    :cond_8
    aget-object v1, v3, v13

    .line 175
    .line 176
    new-array v2, v0, [I

    .line 177
    .line 178
    const/4 v9, 0x0

    .line 179
    :goto_7
    if-ge v9, v0, :cond_9

    .line 180
    .line 181
    aget-object v10, v5, v9

    .line 182
    .line 183
    invoke-interface {v1, v10}, Lf2/f0;->supportsFormat(Lf2/t;)I

    .line 184
    .line 185
    .line 186
    move-result v10

    .line 187
    aput v10, v2, v9

    .line 188
    .line 189
    add-int/lit8 v9, v9, 0x1

    .line 190
    .line 191
    goto :goto_7

    .line 192
    :cond_9
    move-object v0, v2

    .line 193
    :goto_8
    aget v1, v4, v13

    .line 194
    .line 195
    aget-object v2, v7, v13

    .line 196
    .line 197
    aput-object v11, v2, v1

    .line 198
    .line 199
    aget-object v2, v8, v13

    .line 200
    .line 201
    aput-object v0, v2, v1

    .line 202
    .line 203
    const/4 v0, 0x1

    .line 204
    add-int/2addr v1, v0

    .line 205
    aput v1, v4, v13

    .line 206
    .line 207
    add-int/lit8 v6, v6, 0x1

    .line 208
    .line 209
    move-object/from16 v0, p0

    .line 210
    .line 211
    move-object/from16 v1, v18

    .line 212
    .line 213
    move-object/from16 v10, v19

    .line 214
    .line 215
    move-object/from16 v2, v20

    .line 216
    .line 217
    const/4 v5, 0x1

    .line 218
    const/4 v9, 0x0

    .line 219
    goto/16 :goto_2

    .line 220
    .line 221
    :cond_a
    move-object/from16 v20, v2

    .line 222
    .line 223
    move-object/from16 v19, v10

    .line 224
    .line 225
    array-length v0, v3

    .line 226
    new-array v0, v0, [Lt2/x;

    .line 227
    .line 228
    array-length v1, v3

    .line 229
    new-array v1, v1, [I

    .line 230
    .line 231
    const/4 v2, 0x0

    .line 232
    :goto_9
    array-length v5, v3

    .line 233
    if-ge v2, v5, :cond_b

    .line 234
    .line 235
    aget v5, v4, v2

    .line 236
    .line 237
    new-instance v6, Lt2/x;

    .line 238
    .line 239
    aget-object v9, v7, v2

    .line 240
    .line 241
    invoke-static {v9, v5}, Lb3/n;->g([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v9

    .line 245
    check-cast v9, [Lt2/w;

    .line 246
    .line 247
    invoke-direct {v6, v9}, Lt2/x;-><init>([Lt2/w;)V

    .line 248
    .line 249
    .line 250
    aput-object v6, v0, v2

    .line 251
    .line 252
    aget-object v6, v8, v2

    .line 253
    .line 254
    invoke-static {v6, v5}, Lb3/n;->g([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v5

    .line 258
    check-cast v5, [[I

    .line 259
    .line 260
    aput-object v5, v8, v2

    .line 261
    .line 262
    aget-object v5, v3, v2

    .line 263
    .line 264
    invoke-interface {v5}, Lf2/f0;->getTrackType()I

    .line 265
    .line 266
    .line 267
    move-result v5

    .line 268
    aput v5, v1, v2

    .line 269
    .line 270
    add-int/lit8 v2, v2, 0x1

    .line 271
    .line 272
    goto :goto_9

    .line 273
    :cond_b
    array-length v2, v3

    .line 274
    aget v2, v4, v2

    .line 275
    .line 276
    new-instance v4, Lt2/x;

    .line 277
    .line 278
    array-length v3, v3

    .line 279
    aget-object v3, v7, v3

    .line 280
    .line 281
    invoke-static {v3, v2}, Lb3/n;->g([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v2

    .line 285
    check-cast v2, [Lt2/w;

    .line 286
    .line 287
    invoke-direct {v4, v2}, Lt2/x;-><init>([Lt2/w;)V

    .line 288
    .line 289
    .line 290
    new-instance v2, Lz2/m;

    .line 291
    .line 292
    invoke-direct {v2, v1, v0}, Lz2/m;-><init>([I[Lt2/x;)V

    .line 293
    .line 294
    .line 295
    move-object/from16 v0, v20

    .line 296
    .line 297
    check-cast v0, Lz2/k;

    .line 298
    .line 299
    iget-object v1, v0, Lz2/k;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 300
    .line 301
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    check-cast v1, Lz2/g;

    .line 306
    .line 307
    iget v3, v2, Lz2/m;->a:I

    .line 308
    .line 309
    new-array v4, v3, [Lz2/o;

    .line 310
    .line 311
    move-object v9, v1

    .line 312
    const/4 v5, 0x0

    .line 313
    const/4 v6, 0x0

    .line 314
    const/4 v7, 0x0

    .line 315
    :goto_a
    sget-object v10, Lz2/k;->d:[I

    .line 316
    .line 317
    const/4 v11, 0x2

    .line 318
    iget-object v14, v2, Lz2/m;->c:[Lt2/x;

    .line 319
    .line 320
    iget-object v15, v2, Lz2/m;->b:[I

    .line 321
    .line 322
    if-ge v5, v3, :cond_39

    .line 323
    .line 324
    aget v15, v15, v5

    .line 325
    .line 326
    if-ne v11, v15, :cond_38

    .line 327
    .line 328
    if-nez v7, :cond_36

    .line 329
    .line 330
    aget-object v7, v14, v5

    .line 331
    .line 332
    aget-object v15, v8, v5

    .line 333
    .line 334
    aget v16, v19, v5

    .line 335
    .line 336
    iget-boolean v12, v9, Lz2/g;->w:Z

    .line 337
    .line 338
    iget-boolean v13, v9, Lz2/g;->o:Z

    .line 339
    .line 340
    iget v11, v9, Lz2/g;->n:I

    .line 341
    .line 342
    move-object/from16 v21, v10

    .line 343
    .line 344
    iget v10, v9, Lz2/g;->m:I

    .line 345
    .line 346
    move-object/from16 v22, v2

    .line 347
    .line 348
    iget-boolean v2, v9, Lz2/g;->v:Z

    .line 349
    .line 350
    if-nez v12, :cond_1b

    .line 351
    .line 352
    if-nez v2, :cond_1b

    .line 353
    .line 354
    iget-boolean v12, v9, Lz2/g;->l:Z

    .line 355
    .line 356
    if-eqz v12, :cond_c

    .line 357
    .line 358
    const/16 v12, 0x18

    .line 359
    .line 360
    goto :goto_b

    .line 361
    :cond_c
    const/16 v12, 0x10

    .line 362
    .line 363
    :goto_b
    move-object/from16 v31, v0

    .line 364
    .line 365
    iget-boolean v0, v9, Lz2/g;->k:Z

    .line 366
    .line 367
    if-eqz v0, :cond_d

    .line 368
    .line 369
    and-int v0, v16, v12

    .line 370
    .line 371
    if-eqz v0, :cond_d

    .line 372
    .line 373
    const/4 v0, 0x1

    .line 374
    goto :goto_c

    .line 375
    :cond_d
    const/4 v0, 0x0

    .line 376
    :goto_c
    move/from16 v32, v3

    .line 377
    .line 378
    move-object/from16 v16, v8

    .line 379
    .line 380
    const/4 v8, 0x0

    .line 381
    :goto_d
    iget v3, v7, Lt2/x;->a:I

    .line 382
    .line 383
    if-ge v8, v3, :cond_1a

    .line 384
    .line 385
    iget-object v3, v7, Lt2/x;->b:[Lt2/w;

    .line 386
    .line 387
    aget-object v3, v3, v8

    .line 388
    .line 389
    aget-object v33, v15, v8

    .line 390
    .line 391
    move/from16 v34, v6

    .line 392
    .line 393
    iget v6, v9, Lz2/g;->f:I

    .line 394
    .line 395
    move-object/from16 v35, v14

    .line 396
    .line 397
    iget v14, v9, Lz2/g;->g:I

    .line 398
    .line 399
    move-object/from16 v36, v4

    .line 400
    .line 401
    iget v4, v9, Lz2/g;->h:I

    .line 402
    .line 403
    iget v9, v9, Lz2/g;->i:I

    .line 404
    .line 405
    move/from16 v37, v5

    .line 406
    .line 407
    iget v5, v3, Lt2/w;->a:I

    .line 408
    .line 409
    move/from16 v38, v2

    .line 410
    .line 411
    const/4 v2, 0x2

    .line 412
    if-ge v5, v2, :cond_e

    .line 413
    .line 414
    move-object/from16 v39, v1

    .line 415
    .line 416
    goto :goto_e

    .line 417
    :cond_e
    invoke-static {v3, v10, v11, v13}, Lz2/k;->d(Lt2/w;IIZ)Ljava/util/ArrayList;

    .line 418
    .line 419
    .line 420
    move-result-object v5

    .line 421
    move-object/from16 v39, v1

    .line 422
    .line 423
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 424
    .line 425
    .line 426
    move-result v1

    .line 427
    if-ge v1, v2, :cond_f

    .line 428
    .line 429
    :goto_e
    move/from16 v40, v0

    .line 430
    .line 431
    move/from16 v43, v10

    .line 432
    .line 433
    move/from16 v45, v11

    .line 434
    .line 435
    move/from16 v46, v13

    .line 436
    .line 437
    move-object/from16 v41, v15

    .line 438
    .line 439
    goto/16 :goto_14

    .line 440
    .line 441
    :cond_f
    iget-object v1, v3, Lt2/w;->b:[Lf2/t;

    .line 442
    .line 443
    if-nez v0, :cond_15

    .line 444
    .line 445
    new-instance v2, Ljava/util/HashSet;

    .line 446
    .line 447
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 448
    .line 449
    .line 450
    move/from16 v40, v0

    .line 451
    .line 452
    move/from16 v43, v10

    .line 453
    .line 454
    move-object/from16 v41, v15

    .line 455
    .line 456
    const/4 v0, 0x0

    .line 457
    const/4 v15, 0x0

    .line 458
    const/16 v42, 0x0

    .line 459
    .line 460
    :goto_f
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 461
    .line 462
    .line 463
    move-result v10

    .line 464
    if-ge v0, v10, :cond_14

    .line 465
    .line 466
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 467
    .line 468
    .line 469
    move-result-object v10

    .line 470
    check-cast v10, Ljava/lang/Integer;

    .line 471
    .line 472
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 473
    .line 474
    .line 475
    move-result v10

    .line 476
    aget-object v10, v1, v10

    .line 477
    .line 478
    iget-object v10, v10, Lf2/t;->i:Ljava/lang/String;

    .line 479
    .line 480
    invoke-virtual {v2, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 481
    .line 482
    .line 483
    move-result v23

    .line 484
    if-eqz v23, :cond_12

    .line 485
    .line 486
    move-object/from16 v44, v2

    .line 487
    .line 488
    move/from16 v45, v11

    .line 489
    .line 490
    move/from16 v46, v13

    .line 491
    .line 492
    const/4 v2, 0x0

    .line 493
    const/4 v11, 0x0

    .line 494
    :goto_10
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 495
    .line 496
    .line 497
    move-result v13

    .line 498
    if-ge v2, v13, :cond_11

    .line 499
    .line 500
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 501
    .line 502
    .line 503
    move-result-object v13

    .line 504
    check-cast v13, Ljava/lang/Integer;

    .line 505
    .line 506
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 507
    .line 508
    .line 509
    move-result v13

    .line 510
    aget-object v23, v1, v13

    .line 511
    .line 512
    aget v25, v33, v13

    .line 513
    .line 514
    move-object/from16 v24, v10

    .line 515
    .line 516
    move/from16 v26, v12

    .line 517
    .line 518
    move/from16 v27, v6

    .line 519
    .line 520
    move/from16 v28, v14

    .line 521
    .line 522
    move/from16 v29, v4

    .line 523
    .line 524
    move/from16 v30, v9

    .line 525
    .line 526
    invoke-static/range {v23 .. v30}, Lz2/k;->g(Lf2/t;Ljava/lang/String;IIIIII)Z

    .line 527
    .line 528
    .line 529
    move-result v13

    .line 530
    if-eqz v13, :cond_10

    .line 531
    .line 532
    add-int/lit8 v11, v11, 0x1

    .line 533
    .line 534
    :cond_10
    add-int/lit8 v2, v2, 0x1

    .line 535
    .line 536
    goto :goto_10

    .line 537
    :cond_11
    if-le v11, v15, :cond_13

    .line 538
    .line 539
    move-object/from16 v42, v10

    .line 540
    .line 541
    move v15, v11

    .line 542
    goto :goto_11

    .line 543
    :cond_12
    move-object/from16 v44, v2

    .line 544
    .line 545
    move/from16 v45, v11

    .line 546
    .line 547
    move/from16 v46, v13

    .line 548
    .line 549
    :cond_13
    :goto_11
    add-int/lit8 v0, v0, 0x1

    .line 550
    .line 551
    move-object/from16 v2, v44

    .line 552
    .line 553
    move/from16 v11, v45

    .line 554
    .line 555
    move/from16 v13, v46

    .line 556
    .line 557
    goto :goto_f

    .line 558
    :cond_14
    move/from16 v45, v11

    .line 559
    .line 560
    move/from16 v46, v13

    .line 561
    .line 562
    goto :goto_12

    .line 563
    :cond_15
    move/from16 v40, v0

    .line 564
    .line 565
    move/from16 v43, v10

    .line 566
    .line 567
    move/from16 v45, v11

    .line 568
    .line 569
    move/from16 v46, v13

    .line 570
    .line 571
    move-object/from16 v41, v15

    .line 572
    .line 573
    const/16 v42, 0x0

    .line 574
    .line 575
    :goto_12
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 576
    .line 577
    .line 578
    move-result v0

    .line 579
    :cond_16
    :goto_13
    const/4 v2, -0x1

    .line 580
    add-int/2addr v0, v2

    .line 581
    if-ltz v0, :cond_17

    .line 582
    .line 583
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 584
    .line 585
    .line 586
    move-result-object v2

    .line 587
    check-cast v2, Ljava/lang/Integer;

    .line 588
    .line 589
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 590
    .line 591
    .line 592
    move-result v2

    .line 593
    aget-object v23, v1, v2

    .line 594
    .line 595
    aget v25, v33, v2

    .line 596
    .line 597
    move-object/from16 v24, v42

    .line 598
    .line 599
    move/from16 v26, v12

    .line 600
    .line 601
    move/from16 v27, v6

    .line 602
    .line 603
    move/from16 v28, v14

    .line 604
    .line 605
    move/from16 v29, v4

    .line 606
    .line 607
    move/from16 v30, v9

    .line 608
    .line 609
    invoke-static/range {v23 .. v30}, Lz2/k;->g(Lf2/t;Ljava/lang/String;IIIIII)Z

    .line 610
    .line 611
    .line 612
    move-result v2

    .line 613
    if-nez v2, :cond_16

    .line 614
    .line 615
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 616
    .line 617
    .line 618
    goto :goto_13

    .line 619
    :cond_17
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 620
    .line 621
    .line 622
    move-result v0

    .line 623
    const/4 v1, 0x2

    .line 624
    if-ge v0, v1, :cond_18

    .line 625
    .line 626
    :goto_14
    move-object/from16 v0, v21

    .line 627
    .line 628
    goto :goto_15

    .line 629
    :cond_18
    invoke-static {v5}, Lb3/n;->j(Ljava/util/ArrayList;)[I

    .line 630
    .line 631
    .line 632
    move-result-object v0

    .line 633
    :goto_15
    array-length v1, v0

    .line 634
    if-lez v1, :cond_19

    .line 635
    .line 636
    new-instance v1, Lz2/o;

    .line 637
    .line 638
    invoke-direct {v1, v3, v0}, Lz2/o;-><init>(Lt2/w;[I)V

    .line 639
    .line 640
    .line 641
    goto :goto_18

    .line 642
    :cond_19
    add-int/lit8 v8, v8, 0x1

    .line 643
    .line 644
    move/from16 v6, v34

    .line 645
    .line 646
    move-object/from16 v14, v35

    .line 647
    .line 648
    move-object/from16 v4, v36

    .line 649
    .line 650
    move/from16 v5, v37

    .line 651
    .line 652
    move/from16 v2, v38

    .line 653
    .line 654
    move-object/from16 v1, v39

    .line 655
    .line 656
    move-object v9, v1

    .line 657
    move/from16 v0, v40

    .line 658
    .line 659
    move-object/from16 v15, v41

    .line 660
    .line 661
    move/from16 v10, v43

    .line 662
    .line 663
    move/from16 v11, v45

    .line 664
    .line 665
    move/from16 v13, v46

    .line 666
    .line 667
    goto/16 :goto_d

    .line 668
    .line 669
    :cond_1a
    move-object/from16 v39, v1

    .line 670
    .line 671
    move/from16 v38, v2

    .line 672
    .line 673
    move-object/from16 v36, v4

    .line 674
    .line 675
    move/from16 v37, v5

    .line 676
    .line 677
    move/from16 v34, v6

    .line 678
    .line 679
    :goto_16
    move/from16 v43, v10

    .line 680
    .line 681
    move/from16 v45, v11

    .line 682
    .line 683
    move/from16 v46, v13

    .line 684
    .line 685
    move-object/from16 v35, v14

    .line 686
    .line 687
    move-object/from16 v41, v15

    .line 688
    .line 689
    goto :goto_17

    .line 690
    :cond_1b
    move-object/from16 v31, v0

    .line 691
    .line 692
    move-object/from16 v39, v1

    .line 693
    .line 694
    move/from16 v38, v2

    .line 695
    .line 696
    move/from16 v32, v3

    .line 697
    .line 698
    move-object/from16 v36, v4

    .line 699
    .line 700
    move/from16 v37, v5

    .line 701
    .line 702
    move/from16 v34, v6

    .line 703
    .line 704
    move-object/from16 v16, v8

    .line 705
    .line 706
    goto :goto_16

    .line 707
    :goto_17
    const/4 v1, 0x0

    .line 708
    :goto_18
    if-nez v1, :cond_34

    .line 709
    .line 710
    const/4 v0, 0x0

    .line 711
    const/4 v1, 0x0

    .line 712
    const/4 v2, 0x0

    .line 713
    const/4 v3, 0x0

    .line 714
    const/4 v4, -0x1

    .line 715
    const/4 v5, -0x1

    .line 716
    :goto_19
    iget v6, v7, Lt2/x;->a:I

    .line 717
    .line 718
    if-ge v0, v6, :cond_32

    .line 719
    .line 720
    iget-object v6, v7, Lt2/x;->b:[Lt2/w;

    .line 721
    .line 722
    aget-object v6, v6, v0

    .line 723
    .line 724
    move/from16 v10, v43

    .line 725
    .line 726
    move/from16 v9, v45

    .line 727
    .line 728
    move/from16 v8, v46

    .line 729
    .line 730
    invoke-static {v6, v10, v9, v8}, Lz2/k;->d(Lt2/w;IIZ)Ljava/util/ArrayList;

    .line 731
    .line 732
    .line 733
    move-result-object v11

    .line 734
    aget-object v12, v41, v0

    .line 735
    .line 736
    const/4 v13, 0x0

    .line 737
    :goto_1a
    iget v14, v6, Lt2/w;->a:I

    .line 738
    .line 739
    if-ge v13, v14, :cond_31

    .line 740
    .line 741
    aget v14, v12, v13

    .line 742
    .line 743
    move/from16 v21, v1

    .line 744
    .line 745
    move-object/from16 v15, v39

    .line 746
    .line 747
    iget-boolean v1, v15, Lz2/g;->x:Z

    .line 748
    .line 749
    invoke-static {v14, v1}, Lz2/k;->e(IZ)Z

    .line 750
    .line 751
    .line 752
    move-result v1

    .line 753
    if-eqz v1, :cond_2f

    .line 754
    .line 755
    iget-object v1, v6, Lt2/w;->b:[Lf2/t;

    .line 756
    .line 757
    aget-object v1, v1, v13

    .line 758
    .line 759
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 760
    .line 761
    .line 762
    move-result-object v14

    .line 763
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 764
    .line 765
    .line 766
    move-result v14

    .line 767
    if-eqz v14, :cond_20

    .line 768
    .line 769
    iget v14, v1, Lf2/t;->n:I

    .line 770
    .line 771
    move-object/from16 v23, v3

    .line 772
    .line 773
    const/4 v3, -0x1

    .line 774
    if-eq v14, v3, :cond_1c

    .line 775
    .line 776
    iget v3, v15, Lz2/g;->f:I

    .line 777
    .line 778
    if-gt v14, v3, :cond_21

    .line 779
    .line 780
    :cond_1c
    iget v3, v1, Lf2/t;->o:I

    .line 781
    .line 782
    const/4 v14, -0x1

    .line 783
    if-eq v3, v14, :cond_1d

    .line 784
    .line 785
    iget v14, v15, Lz2/g;->g:I

    .line 786
    .line 787
    if-gt v3, v14, :cond_21

    .line 788
    .line 789
    :cond_1d
    const/high16 v3, -0x40800000    # -1.0f

    .line 790
    .line 791
    iget v14, v1, Lf2/t;->p:F

    .line 792
    .line 793
    cmpl-float v3, v14, v3

    .line 794
    .line 795
    if-eqz v3, :cond_1e

    .line 796
    .line 797
    iget v3, v15, Lz2/g;->h:I

    .line 798
    .line 799
    int-to-float v3, v3

    .line 800
    cmpg-float v3, v14, v3

    .line 801
    .line 802
    if-gtz v3, :cond_21

    .line 803
    .line 804
    :cond_1e
    iget v3, v1, Lf2/t;->e:I

    .line 805
    .line 806
    const/4 v14, -0x1

    .line 807
    if-eq v3, v14, :cond_1f

    .line 808
    .line 809
    iget v14, v15, Lz2/g;->i:I

    .line 810
    .line 811
    if-gt v3, v14, :cond_21

    .line 812
    .line 813
    :cond_1f
    const/4 v3, 0x1

    .line 814
    goto :goto_1b

    .line 815
    :cond_20
    move-object/from16 v23, v3

    .line 816
    .line 817
    :cond_21
    const/4 v3, 0x0

    .line 818
    :goto_1b
    if-nez v3, :cond_22

    .line 819
    .line 820
    iget-boolean v14, v15, Lz2/g;->j:Z

    .line 821
    .line 822
    if-nez v14, :cond_22

    .line 823
    .line 824
    move/from16 v26, v2

    .line 825
    .line 826
    goto/16 :goto_25

    .line 827
    .line 828
    :cond_22
    move-object/from16 v24, v6

    .line 829
    .line 830
    if-eqz v3, :cond_23

    .line 831
    .line 832
    const/4 v14, 0x2

    .line 833
    goto :goto_1c

    .line 834
    :cond_23
    const/4 v14, 0x1

    .line 835
    :goto_1c
    aget v6, v12, v13

    .line 836
    .line 837
    move-object/from16 v25, v7

    .line 838
    .line 839
    const/4 v7, 0x0

    .line 840
    invoke-static {v6, v7}, Lz2/k;->e(IZ)Z

    .line 841
    .line 842
    .line 843
    move-result v6

    .line 844
    if-eqz v6, :cond_24

    .line 845
    .line 846
    add-int/lit16 v14, v14, 0x3e8

    .line 847
    .line 848
    :cond_24
    if-le v14, v2, :cond_25

    .line 849
    .line 850
    const/4 v7, 0x1

    .line 851
    goto :goto_1d

    .line 852
    :cond_25
    const/4 v7, 0x0

    .line 853
    :goto_1d
    if-ne v14, v2, :cond_2c

    .line 854
    .line 855
    iget v7, v1, Lf2/t;->e:I

    .line 856
    .line 857
    invoke-static {v7, v4}, Lz2/k;->b(II)I

    .line 858
    .line 859
    .line 860
    move-result v7

    .line 861
    if-eqz v38, :cond_26

    .line 862
    .line 863
    if-eqz v7, :cond_26

    .line 864
    .line 865
    move/from16 v26, v2

    .line 866
    .line 867
    move/from16 v46, v8

    .line 868
    .line 869
    if-gez v7, :cond_2b

    .line 870
    .line 871
    goto :goto_21

    .line 872
    :cond_26
    iget v7, v1, Lf2/t;->n:I

    .line 873
    .line 874
    move/from16 v26, v2

    .line 875
    .line 876
    const/4 v2, -0x1

    .line 877
    move/from16 v46, v8

    .line 878
    .line 879
    if-eq v7, v2, :cond_28

    .line 880
    .line 881
    iget v8, v1, Lf2/t;->o:I

    .line 882
    .line 883
    if-ne v8, v2, :cond_27

    .line 884
    .line 885
    goto :goto_1e

    .line 886
    :cond_27
    mul-int v2, v7, v8

    .line 887
    .line 888
    goto :goto_1f

    .line 889
    :cond_28
    :goto_1e
    const/4 v2, -0x1

    .line 890
    :goto_1f
    if-eq v2, v5, :cond_29

    .line 891
    .line 892
    invoke-static {v2, v5}, Lz2/k;->b(II)I

    .line 893
    .line 894
    .line 895
    move-result v2

    .line 896
    goto :goto_20

    .line 897
    :cond_29
    iget v2, v1, Lf2/t;->e:I

    .line 898
    .line 899
    invoke-static {v2, v4}, Lz2/k;->b(II)I

    .line 900
    .line 901
    .line 902
    move-result v2

    .line 903
    :goto_20
    if-eqz v6, :cond_2a

    .line 904
    .line 905
    if-eqz v3, :cond_2a

    .line 906
    .line 907
    if-lez v2, :cond_2b

    .line 908
    .line 909
    goto :goto_21

    .line 910
    :cond_2a
    if-gez v2, :cond_2b

    .line 911
    .line 912
    :goto_21
    const/4 v7, 0x1

    .line 913
    goto :goto_22

    .line 914
    :cond_2b
    const/4 v7, 0x0

    .line 915
    goto :goto_22

    .line 916
    :cond_2c
    move/from16 v26, v2

    .line 917
    .line 918
    move/from16 v46, v8

    .line 919
    .line 920
    :goto_22
    if-eqz v7, :cond_30

    .line 921
    .line 922
    iget v2, v1, Lf2/t;->e:I

    .line 923
    .line 924
    iget v3, v1, Lf2/t;->n:I

    .line 925
    .line 926
    const/4 v4, -0x1

    .line 927
    if-eq v3, v4, :cond_2e

    .line 928
    .line 929
    iget v1, v1, Lf2/t;->o:I

    .line 930
    .line 931
    if-ne v1, v4, :cond_2d

    .line 932
    .line 933
    goto :goto_23

    .line 934
    :cond_2d
    mul-int/2addr v1, v3

    .line 935
    goto :goto_24

    .line 936
    :cond_2e
    :goto_23
    const/4 v1, -0x1

    .line 937
    :goto_24
    move v5, v1

    .line 938
    move v4, v2

    .line 939
    move v1, v13

    .line 940
    move v2, v14

    .line 941
    move-object/from16 v3, v24

    .line 942
    .line 943
    goto :goto_26

    .line 944
    :cond_2f
    move/from16 v26, v2

    .line 945
    .line 946
    move-object/from16 v23, v3

    .line 947
    .line 948
    :goto_25
    move-object/from16 v24, v6

    .line 949
    .line 950
    move-object/from16 v25, v7

    .line 951
    .line 952
    move/from16 v46, v8

    .line 953
    .line 954
    :cond_30
    move/from16 v1, v21

    .line 955
    .line 956
    move-object/from16 v3, v23

    .line 957
    .line 958
    move/from16 v2, v26

    .line 959
    .line 960
    :goto_26
    add-int/lit8 v13, v13, 0x1

    .line 961
    .line 962
    move-object/from16 v39, v15

    .line 963
    .line 964
    move-object/from16 v6, v24

    .line 965
    .line 966
    move-object/from16 v7, v25

    .line 967
    .line 968
    move/from16 v8, v46

    .line 969
    .line 970
    goto/16 :goto_1a

    .line 971
    .line 972
    :cond_31
    move/from16 v21, v1

    .line 973
    .line 974
    move/from16 v26, v2

    .line 975
    .line 976
    move-object/from16 v23, v3

    .line 977
    .line 978
    move-object/from16 v25, v7

    .line 979
    .line 980
    move/from16 v46, v8

    .line 981
    .line 982
    move-object/from16 v15, v39

    .line 983
    .line 984
    add-int/lit8 v0, v0, 0x1

    .line 985
    .line 986
    move/from16 v45, v9

    .line 987
    .line 988
    move/from16 v43, v10

    .line 989
    .line 990
    goto/16 :goto_19

    .line 991
    .line 992
    :cond_32
    move-object/from16 v15, v39

    .line 993
    .line 994
    if-nez v3, :cond_33

    .line 995
    .line 996
    const/4 v12, 0x0

    .line 997
    goto :goto_27

    .line 998
    :cond_33
    new-instance v12, Lz2/o;

    .line 999
    .line 1000
    filled-new-array {v1}, [I

    .line 1001
    .line 1002
    .line 1003
    move-result-object v0

    .line 1004
    invoke-direct {v12, v3, v0}, Lz2/o;-><init>(Lt2/w;[I)V

    .line 1005
    .line 1006
    .line 1007
    :goto_27
    move-object v1, v12

    .line 1008
    goto :goto_28

    .line 1009
    :cond_34
    move-object/from16 v15, v39

    .line 1010
    .line 1011
    :goto_28
    aput-object v1, v36, v37

    .line 1012
    .line 1013
    if-eqz v1, :cond_35

    .line 1014
    .line 1015
    const/4 v0, 0x1

    .line 1016
    goto :goto_29

    .line 1017
    :cond_35
    const/4 v0, 0x0

    .line 1018
    :goto_29
    move v7, v0

    .line 1019
    move-object v9, v15

    .line 1020
    goto :goto_2a

    .line 1021
    :cond_36
    move-object/from16 v31, v0

    .line 1022
    .line 1023
    move-object v15, v1

    .line 1024
    move-object/from16 v22, v2

    .line 1025
    .line 1026
    move/from16 v32, v3

    .line 1027
    .line 1028
    move-object/from16 v36, v4

    .line 1029
    .line 1030
    move/from16 v37, v5

    .line 1031
    .line 1032
    move/from16 v34, v6

    .line 1033
    .line 1034
    move-object/from16 v16, v8

    .line 1035
    .line 1036
    move-object/from16 v35, v14

    .line 1037
    .line 1038
    :goto_2a
    aget-object v0, v35, v37

    .line 1039
    .line 1040
    iget v0, v0, Lt2/x;->a:I

    .line 1041
    .line 1042
    if-lez v0, :cond_37

    .line 1043
    .line 1044
    const/4 v0, 0x1

    .line 1045
    goto :goto_2b

    .line 1046
    :cond_37
    const/4 v0, 0x0

    .line 1047
    :goto_2b
    or-int v0, v34, v0

    .line 1048
    .line 1049
    move v6, v0

    .line 1050
    goto :goto_2c

    .line 1051
    :cond_38
    move-object/from16 v31, v0

    .line 1052
    .line 1053
    move-object v15, v1

    .line 1054
    move-object/from16 v22, v2

    .line 1055
    .line 1056
    move/from16 v32, v3

    .line 1057
    .line 1058
    move-object/from16 v36, v4

    .line 1059
    .line 1060
    move/from16 v37, v5

    .line 1061
    .line 1062
    move/from16 v34, v6

    .line 1063
    .line 1064
    move-object/from16 v16, v8

    .line 1065
    .line 1066
    :goto_2c
    add-int/lit8 v5, v37, 0x1

    .line 1067
    .line 1068
    move-object v1, v15

    .line 1069
    move-object/from16 v8, v16

    .line 1070
    .line 1071
    move-object/from16 v2, v22

    .line 1072
    .line 1073
    move-object/from16 v0, v31

    .line 1074
    .line 1075
    move/from16 v3, v32

    .line 1076
    .line 1077
    move-object/from16 v4, v36

    .line 1078
    .line 1079
    goto/16 :goto_a

    .line 1080
    .line 1081
    :cond_39
    move-object/from16 v31, v0

    .line 1082
    .line 1083
    move-object/from16 v22, v2

    .line 1084
    .line 1085
    move-object/from16 v36, v4

    .line 1086
    .line 1087
    move/from16 v34, v6

    .line 1088
    .line 1089
    move-object/from16 v16, v8

    .line 1090
    .line 1091
    move-object/from16 v21, v10

    .line 1092
    .line 1093
    move-object/from16 v35, v14

    .line 1094
    .line 1095
    move v5, v3

    .line 1096
    const/4 v0, 0x0

    .line 1097
    const/4 v2, 0x0

    .line 1098
    const/4 v3, -0x1

    .line 1099
    const/4 v4, 0x0

    .line 1100
    :goto_2d
    if-ge v0, v5, :cond_50

    .line 1101
    .line 1102
    aget v6, v15, v0

    .line 1103
    .line 1104
    const/4 v7, 0x1

    .line 1105
    if-ne v7, v6, :cond_4f

    .line 1106
    .line 1107
    xor-int/lit8 v6, v34, 0x1

    .line 1108
    .line 1109
    aget-object v7, v35, v0

    .line 1110
    .line 1111
    aget-object v8, v16, v0

    .line 1112
    .line 1113
    aget v10, v19, v0

    .line 1114
    .line 1115
    const/4 v10, 0x0

    .line 1116
    const/4 v11, 0x0

    .line 1117
    const/4 v12, -0x1

    .line 1118
    const/4 v13, -0x1

    .line 1119
    :goto_2e
    iget v14, v7, Lt2/x;->a:I

    .line 1120
    .line 1121
    move-object/from16 v23, v4

    .line 1122
    .line 1123
    iget-object v4, v7, Lt2/x;->b:[Lt2/w;

    .line 1124
    .line 1125
    if-ge v10, v14, :cond_3f

    .line 1126
    .line 1127
    aget-object v4, v4, v10

    .line 1128
    .line 1129
    aget-object v14, v8, v10

    .line 1130
    .line 1131
    move-object/from16 v24, v7

    .line 1132
    .line 1133
    move/from16 v25, v12

    .line 1134
    .line 1135
    const/4 v7, 0x0

    .line 1136
    :goto_2f
    iget v12, v4, Lt2/w;->a:I

    .line 1137
    .line 1138
    if-ge v7, v12, :cond_3e

    .line 1139
    .line 1140
    aget v12, v14, v7

    .line 1141
    .line 1142
    move/from16 v26, v13

    .line 1143
    .line 1144
    iget-boolean v13, v9, Lz2/g;->x:Z

    .line 1145
    .line 1146
    invoke-static {v12, v13}, Lz2/k;->e(IZ)Z

    .line 1147
    .line 1148
    .line 1149
    move-result v12

    .line 1150
    if-eqz v12, :cond_3c

    .line 1151
    .line 1152
    iget-object v12, v4, Lt2/w;->b:[Lf2/t;

    .line 1153
    .line 1154
    aget-object v12, v12, v7

    .line 1155
    .line 1156
    new-instance v13, Lz2/f;

    .line 1157
    .line 1158
    move-object/from16 v27, v4

    .line 1159
    .line 1160
    aget v4, v14, v7

    .line 1161
    .line 1162
    invoke-direct {v13, v12, v9, v4}, Lz2/f;-><init>(Lf2/t;Lz2/g;I)V

    .line 1163
    .line 1164
    .line 1165
    iget-boolean v4, v13, Lz2/f;->a:Z

    .line 1166
    .line 1167
    if-nez v4, :cond_3a

    .line 1168
    .line 1169
    iget-boolean v4, v9, Lz2/g;->r:Z

    .line 1170
    .line 1171
    if-nez v4, :cond_3a

    .line 1172
    .line 1173
    goto :goto_30

    .line 1174
    :cond_3a
    if-eqz v11, :cond_3b

    .line 1175
    .line 1176
    invoke-virtual {v13, v11}, Lz2/f;->a(Lz2/f;)I

    .line 1177
    .line 1178
    .line 1179
    move-result v4

    .line 1180
    if-lez v4, :cond_3d

    .line 1181
    .line 1182
    :cond_3b
    move/from16 v25, v10

    .line 1183
    .line 1184
    move-object v11, v13

    .line 1185
    move v13, v7

    .line 1186
    goto :goto_31

    .line 1187
    :cond_3c
    move-object/from16 v27, v4

    .line 1188
    .line 1189
    :cond_3d
    :goto_30
    move/from16 v13, v26

    .line 1190
    .line 1191
    :goto_31
    add-int/lit8 v7, v7, 0x1

    .line 1192
    .line 1193
    move-object/from16 v4, v27

    .line 1194
    .line 1195
    goto :goto_2f

    .line 1196
    :cond_3e
    move/from16 v26, v13

    .line 1197
    .line 1198
    add-int/lit8 v10, v10, 0x1

    .line 1199
    .line 1200
    move-object/from16 v4, v23

    .line 1201
    .line 1202
    move-object/from16 v7, v24

    .line 1203
    .line 1204
    move/from16 v12, v25

    .line 1205
    .line 1206
    goto :goto_2e

    .line 1207
    :cond_3f
    const/4 v7, -0x1

    .line 1208
    if-ne v12, v7, :cond_40

    .line 1209
    .line 1210
    move/from16 v38, v0

    .line 1211
    .line 1212
    move-object/from16 v39, v1

    .line 1213
    .line 1214
    move-object/from16 v41, v2

    .line 1215
    .line 1216
    move/from16 v40, v3

    .line 1217
    .line 1218
    move/from16 v37, v5

    .line 1219
    .line 1220
    move-object/from16 v33, v15

    .line 1221
    .line 1222
    const/4 v0, 0x0

    .line 1223
    goto/16 :goto_36

    .line 1224
    .line 1225
    :cond_40
    aget-object v4, v4, v12

    .line 1226
    .line 1227
    iget-boolean v7, v9, Lz2/g;->w:Z

    .line 1228
    .line 1229
    if-nez v7, :cond_48

    .line 1230
    .line 1231
    iget-boolean v7, v9, Lz2/g;->v:Z

    .line 1232
    .line 1233
    if-nez v7, :cond_48

    .line 1234
    .line 1235
    if-eqz v6, :cond_48

    .line 1236
    .line 1237
    aget-object v6, v8, v12

    .line 1238
    .line 1239
    iget v7, v9, Lz2/g;->q:I

    .line 1240
    .line 1241
    iget-boolean v8, v9, Lz2/g;->s:Z

    .line 1242
    .line 1243
    iget-boolean v10, v9, Lz2/g;->t:Z

    .line 1244
    .line 1245
    iget-boolean v9, v9, Lz2/g;->u:Z

    .line 1246
    .line 1247
    new-instance v12, Ljava/util/HashSet;

    .line 1248
    .line 1249
    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 1250
    .line 1251
    .line 1252
    move-object/from16 v39, v1

    .line 1253
    .line 1254
    move-object/from16 v33, v15

    .line 1255
    .line 1256
    const/4 v1, 0x0

    .line 1257
    const/4 v14, 0x0

    .line 1258
    const/16 v32, 0x0

    .line 1259
    .line 1260
    :goto_32
    iget v15, v4, Lt2/w;->a:I

    .line 1261
    .line 1262
    move/from16 v37, v5

    .line 1263
    .line 1264
    iget-object v5, v4, Lt2/w;->b:[Lf2/t;

    .line 1265
    .line 1266
    if-ge v14, v15, :cond_44

    .line 1267
    .line 1268
    move/from16 v38, v0

    .line 1269
    .line 1270
    aget-object v0, v5, v14

    .line 1271
    .line 1272
    move/from16 v40, v3

    .line 1273
    .line 1274
    new-instance v3, Lz2/e;

    .line 1275
    .line 1276
    move-object/from16 v41, v2

    .line 1277
    .line 1278
    iget v2, v0, Lf2/t;->v:I

    .line 1279
    .line 1280
    move-object/from16 v42, v11

    .line 1281
    .line 1282
    iget v11, v0, Lf2/t;->w:I

    .line 1283
    .line 1284
    iget-object v0, v0, Lf2/t;->i:Ljava/lang/String;

    .line 1285
    .line 1286
    invoke-direct {v3, v2, v11, v0}, Lz2/e;-><init>(IILjava/lang/String;)V

    .line 1287
    .line 1288
    .line 1289
    invoke-virtual {v12, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1290
    .line 1291
    .line 1292
    move-result v0

    .line 1293
    if-eqz v0, :cond_43

    .line 1294
    .line 1295
    const/4 v0, 0x0

    .line 1296
    const/4 v2, 0x0

    .line 1297
    :goto_33
    if-ge v0, v15, :cond_42

    .line 1298
    .line 1299
    aget-object v24, v5, v0

    .line 1300
    .line 1301
    aget v25, v6, v0

    .line 1302
    .line 1303
    move-object/from16 v26, v3

    .line 1304
    .line 1305
    move/from16 v27, v7

    .line 1306
    .line 1307
    move/from16 v28, v8

    .line 1308
    .line 1309
    move/from16 v29, v10

    .line 1310
    .line 1311
    move/from16 v30, v9

    .line 1312
    .line 1313
    invoke-static/range {v24 .. v30}, Lz2/k;->f(Lf2/t;ILz2/e;IZZZ)Z

    .line 1314
    .line 1315
    .line 1316
    move-result v11

    .line 1317
    if-eqz v11, :cond_41

    .line 1318
    .line 1319
    add-int/lit8 v2, v2, 0x1

    .line 1320
    .line 1321
    :cond_41
    add-int/lit8 v0, v0, 0x1

    .line 1322
    .line 1323
    goto :goto_33

    .line 1324
    :cond_42
    if-le v2, v1, :cond_43

    .line 1325
    .line 1326
    move v1, v2

    .line 1327
    move-object/from16 v32, v3

    .line 1328
    .line 1329
    :cond_43
    add-int/lit8 v14, v14, 0x1

    .line 1330
    .line 1331
    move/from16 v5, v37

    .line 1332
    .line 1333
    move/from16 v0, v38

    .line 1334
    .line 1335
    move/from16 v3, v40

    .line 1336
    .line 1337
    move-object/from16 v2, v41

    .line 1338
    .line 1339
    move-object/from16 v11, v42

    .line 1340
    .line 1341
    goto :goto_32

    .line 1342
    :cond_44
    move/from16 v38, v0

    .line 1343
    .line 1344
    move-object/from16 v41, v2

    .line 1345
    .line 1346
    move/from16 v40, v3

    .line 1347
    .line 1348
    move-object/from16 v42, v11

    .line 1349
    .line 1350
    const/4 v0, 0x1

    .line 1351
    if-le v1, v0, :cond_46

    .line 1352
    .line 1353
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1354
    .line 1355
    .line 1356
    new-array v0, v1, [I

    .line 1357
    .line 1358
    const/4 v1, 0x0

    .line 1359
    const/4 v2, 0x0

    .line 1360
    :goto_34
    if-ge v1, v15, :cond_47

    .line 1361
    .line 1362
    aget-object v24, v5, v1

    .line 1363
    .line 1364
    aget v25, v6, v1

    .line 1365
    .line 1366
    move-object/from16 v26, v32

    .line 1367
    .line 1368
    move/from16 v27, v7

    .line 1369
    .line 1370
    move/from16 v28, v8

    .line 1371
    .line 1372
    move/from16 v29, v10

    .line 1373
    .line 1374
    move/from16 v30, v9

    .line 1375
    .line 1376
    invoke-static/range {v24 .. v30}, Lz2/k;->f(Lf2/t;ILz2/e;IZZZ)Z

    .line 1377
    .line 1378
    .line 1379
    move-result v3

    .line 1380
    if-eqz v3, :cond_45

    .line 1381
    .line 1382
    add-int/lit8 v3, v2, 0x1

    .line 1383
    .line 1384
    aput v1, v0, v2

    .line 1385
    .line 1386
    move v2, v3

    .line 1387
    :cond_45
    add-int/lit8 v1, v1, 0x1

    .line 1388
    .line 1389
    goto :goto_34

    .line 1390
    :cond_46
    move-object/from16 v0, v21

    .line 1391
    .line 1392
    :cond_47
    array-length v1, v0

    .line 1393
    if-lez v1, :cond_49

    .line 1394
    .line 1395
    new-instance v1, Lz2/o;

    .line 1396
    .line 1397
    invoke-direct {v1, v4, v0}, Lz2/o;-><init>(Lt2/w;[I)V

    .line 1398
    .line 1399
    .line 1400
    goto :goto_35

    .line 1401
    :cond_48
    move/from16 v38, v0

    .line 1402
    .line 1403
    move-object/from16 v39, v1

    .line 1404
    .line 1405
    move-object/from16 v41, v2

    .line 1406
    .line 1407
    move/from16 v40, v3

    .line 1408
    .line 1409
    move/from16 v37, v5

    .line 1410
    .line 1411
    move-object/from16 v42, v11

    .line 1412
    .line 1413
    move-object/from16 v33, v15

    .line 1414
    .line 1415
    :cond_49
    const/4 v1, 0x0

    .line 1416
    :goto_35
    if-nez v1, :cond_4a

    .line 1417
    .line 1418
    new-instance v1, Lz2/o;

    .line 1419
    .line 1420
    filled-new-array {v13}, [I

    .line 1421
    .line 1422
    .line 1423
    move-result-object v0

    .line 1424
    invoke-direct {v1, v4, v0}, Lz2/o;-><init>(Lt2/w;[I)V

    .line 1425
    .line 1426
    .line 1427
    :cond_4a
    invoke-virtual/range {v42 .. v42}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1428
    .line 1429
    .line 1430
    move-object/from16 v11, v42

    .line 1431
    .line 1432
    invoke-static {v1, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 1433
    .line 1434
    .line 1435
    move-result-object v0

    .line 1436
    :goto_36
    if-eqz v0, :cond_4e

    .line 1437
    .line 1438
    if-eqz v41, :cond_4c

    .line 1439
    .line 1440
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 1441
    .line 1442
    check-cast v1, Lz2/f;

    .line 1443
    .line 1444
    move-object/from16 v2, v41

    .line 1445
    .line 1446
    invoke-virtual {v1, v2}, Lz2/f;->a(Lz2/f;)I

    .line 1447
    .line 1448
    .line 1449
    move-result v1

    .line 1450
    if-lez v1, :cond_4b

    .line 1451
    .line 1452
    goto :goto_37

    .line 1453
    :cond_4b
    move/from16 v1, v40

    .line 1454
    .line 1455
    goto :goto_38

    .line 1456
    :cond_4c
    :goto_37
    move/from16 v1, v40

    .line 1457
    .line 1458
    const/4 v2, -0x1

    .line 1459
    if-eq v1, v2, :cond_4d

    .line 1460
    .line 1461
    const/4 v2, 0x0

    .line 1462
    aput-object v2, v36, v1

    .line 1463
    .line 1464
    :cond_4d
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1465
    .line 1466
    check-cast v1, Lz2/o;

    .line 1467
    .line 1468
    aput-object v1, v36, v38

    .line 1469
    .line 1470
    iget-object v2, v1, Lz2/o;->a:Lt2/w;

    .line 1471
    .line 1472
    iget-object v1, v1, Lz2/o;->b:[I

    .line 1473
    .line 1474
    const/4 v3, 0x0

    .line 1475
    aget v1, v1, v3

    .line 1476
    .line 1477
    iget-object v2, v2, Lt2/w;->b:[Lf2/t;

    .line 1478
    .line 1479
    aget-object v1, v2, v1

    .line 1480
    .line 1481
    iget-object v1, v1, Lf2/t;->A:Ljava/lang/String;

    .line 1482
    .line 1483
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 1484
    .line 1485
    check-cast v0, Lz2/f;

    .line 1486
    .line 1487
    move-object v2, v0

    .line 1488
    move-object v4, v1

    .line 1489
    move/from16 v3, v38

    .line 1490
    .line 1491
    goto :goto_39

    .line 1492
    :cond_4e
    move/from16 v1, v40

    .line 1493
    .line 1494
    move-object/from16 v2, v41

    .line 1495
    .line 1496
    goto :goto_38

    .line 1497
    :cond_4f
    move/from16 v38, v0

    .line 1498
    .line 1499
    move-object/from16 v39, v1

    .line 1500
    .line 1501
    move v1, v3

    .line 1502
    move-object/from16 v23, v4

    .line 1503
    .line 1504
    move/from16 v37, v5

    .line 1505
    .line 1506
    move-object/from16 v33, v15

    .line 1507
    .line 1508
    :goto_38
    move v3, v1

    .line 1509
    move-object/from16 v4, v23

    .line 1510
    .line 1511
    :goto_39
    add-int/lit8 v0, v38, 0x1

    .line 1512
    .line 1513
    move-object/from16 v15, v33

    .line 1514
    .line 1515
    move/from16 v5, v37

    .line 1516
    .line 1517
    move-object/from16 v1, v39

    .line 1518
    .line 1519
    move-object v9, v1

    .line 1520
    goto/16 :goto_2d

    .line 1521
    .line 1522
    :cond_50
    move-object/from16 v39, v1

    .line 1523
    .line 1524
    move-object/from16 v23, v4

    .line 1525
    .line 1526
    move/from16 v37, v5

    .line 1527
    .line 1528
    move-object/from16 v33, v15

    .line 1529
    .line 1530
    const/4 v0, 0x0

    .line 1531
    const/4 v1, -0x1

    .line 1532
    const/4 v2, 0x0

    .line 1533
    :goto_3a
    const/4 v3, 0x3

    .line 1534
    move/from16 v4, v37

    .line 1535
    .line 1536
    if-ge v0, v4, :cond_64

    .line 1537
    .line 1538
    aget v5, v33, v0

    .line 1539
    .line 1540
    const/4 v6, 0x1

    .line 1541
    if-eq v5, v6, :cond_62

    .line 1542
    .line 1543
    const/4 v6, 0x2

    .line 1544
    if-eq v5, v6, :cond_62

    .line 1545
    .line 1546
    if-eq v5, v3, :cond_59

    .line 1547
    .line 1548
    aget-object v3, v35, v0

    .line 1549
    .line 1550
    aget-object v5, v16, v0

    .line 1551
    .line 1552
    const/4 v6, 0x0

    .line 1553
    const/4 v7, 0x0

    .line 1554
    const/4 v8, 0x0

    .line 1555
    const/4 v9, 0x0

    .line 1556
    :goto_3b
    iget v10, v3, Lt2/x;->a:I

    .line 1557
    .line 1558
    if-ge v6, v10, :cond_57

    .line 1559
    .line 1560
    iget-object v10, v3, Lt2/x;->b:[Lt2/w;

    .line 1561
    .line 1562
    aget-object v10, v10, v6

    .line 1563
    .line 1564
    aget-object v11, v5, v6

    .line 1565
    .line 1566
    const/4 v12, 0x0

    .line 1567
    :goto_3c
    iget v13, v10, Lt2/w;->a:I

    .line 1568
    .line 1569
    if-ge v12, v13, :cond_56

    .line 1570
    .line 1571
    aget v13, v11, v12

    .line 1572
    .line 1573
    move-object/from16 v14, v39

    .line 1574
    .line 1575
    iget-boolean v15, v14, Lz2/g;->x:Z

    .line 1576
    .line 1577
    invoke-static {v13, v15}, Lz2/k;->e(IZ)Z

    .line 1578
    .line 1579
    .line 1580
    move-result v13

    .line 1581
    if-eqz v13, :cond_54

    .line 1582
    .line 1583
    iget-object v13, v10, Lt2/w;->b:[Lf2/t;

    .line 1584
    .line 1585
    aget-object v13, v13, v12

    .line 1586
    .line 1587
    iget v13, v13, Lf2/t;->c:I

    .line 1588
    .line 1589
    const/4 v15, 0x1

    .line 1590
    and-int/2addr v13, v15

    .line 1591
    if-eqz v13, :cond_51

    .line 1592
    .line 1593
    const/4 v13, 0x1

    .line 1594
    goto :goto_3d

    .line 1595
    :cond_51
    const/4 v13, 0x0

    .line 1596
    :goto_3d
    if-eqz v13, :cond_52

    .line 1597
    .line 1598
    const/4 v13, 0x2

    .line 1599
    goto :goto_3e

    .line 1600
    :cond_52
    const/4 v13, 0x1

    .line 1601
    :goto_3e
    aget v15, v11, v12

    .line 1602
    .line 1603
    move-object/from16 v19, v3

    .line 1604
    .line 1605
    const/4 v3, 0x0

    .line 1606
    invoke-static {v15, v3}, Lz2/k;->e(IZ)Z

    .line 1607
    .line 1608
    .line 1609
    move-result v15

    .line 1610
    if-eqz v15, :cond_53

    .line 1611
    .line 1612
    add-int/lit16 v13, v13, 0x3e8

    .line 1613
    .line 1614
    :cond_53
    if-le v13, v8, :cond_55

    .line 1615
    .line 1616
    move-object v9, v10

    .line 1617
    move v7, v12

    .line 1618
    move v8, v13

    .line 1619
    goto :goto_3f

    .line 1620
    :cond_54
    move-object/from16 v19, v3

    .line 1621
    .line 1622
    :cond_55
    :goto_3f
    add-int/lit8 v12, v12, 0x1

    .line 1623
    .line 1624
    move-object/from16 v39, v14

    .line 1625
    .line 1626
    move-object/from16 v3, v19

    .line 1627
    .line 1628
    goto :goto_3c

    .line 1629
    :cond_56
    move-object/from16 v19, v3

    .line 1630
    .line 1631
    move-object/from16 v14, v39

    .line 1632
    .line 1633
    add-int/lit8 v6, v6, 0x1

    .line 1634
    .line 1635
    goto :goto_3b

    .line 1636
    :cond_57
    move-object/from16 v14, v39

    .line 1637
    .line 1638
    if-nez v9, :cond_58

    .line 1639
    .line 1640
    const/4 v3, 0x0

    .line 1641
    goto :goto_40

    .line 1642
    :cond_58
    new-instance v3, Lz2/o;

    .line 1643
    .line 1644
    filled-new-array {v7}, [I

    .line 1645
    .line 1646
    .line 1647
    move-result-object v5

    .line 1648
    invoke-direct {v3, v9, v5}, Lz2/o;-><init>(Lt2/w;[I)V

    .line 1649
    .line 1650
    .line 1651
    :goto_40
    aput-object v3, v36, v0

    .line 1652
    .line 1653
    move-object/from16 v5, v23

    .line 1654
    .line 1655
    goto/16 :goto_45

    .line 1656
    .line 1657
    :cond_59
    move-object/from16 v14, v39

    .line 1658
    .line 1659
    aget-object v3, v35, v0

    .line 1660
    .line 1661
    aget-object v5, v16, v0

    .line 1662
    .line 1663
    const/4 v6, 0x0

    .line 1664
    const/4 v7, 0x0

    .line 1665
    const/4 v8, 0x0

    .line 1666
    const/4 v9, -0x1

    .line 1667
    :goto_41
    iget v10, v3, Lt2/x;->a:I

    .line 1668
    .line 1669
    if-ge v6, v10, :cond_5e

    .line 1670
    .line 1671
    iget-object v10, v3, Lt2/x;->b:[Lt2/w;

    .line 1672
    .line 1673
    aget-object v10, v10, v6

    .line 1674
    .line 1675
    aget-object v11, v5, v6

    .line 1676
    .line 1677
    const/4 v12, 0x0

    .line 1678
    :goto_42
    iget v13, v10, Lt2/w;->a:I

    .line 1679
    .line 1680
    if-ge v12, v13, :cond_5d

    .line 1681
    .line 1682
    aget v13, v11, v12

    .line 1683
    .line 1684
    iget-boolean v15, v14, Lz2/g;->x:Z

    .line 1685
    .line 1686
    invoke-static {v13, v15}, Lz2/k;->e(IZ)Z

    .line 1687
    .line 1688
    .line 1689
    move-result v13

    .line 1690
    if-eqz v13, :cond_5b

    .line 1691
    .line 1692
    iget-object v13, v10, Lt2/w;->b:[Lf2/t;

    .line 1693
    .line 1694
    aget-object v13, v13, v12

    .line 1695
    .line 1696
    new-instance v15, Lz2/j;

    .line 1697
    .line 1698
    move-object/from16 v19, v3

    .line 1699
    .line 1700
    aget v3, v11, v12

    .line 1701
    .line 1702
    move-object/from16 v21, v5

    .line 1703
    .line 1704
    move-object/from16 v5, v23

    .line 1705
    .line 1706
    invoke-direct {v15, v13, v14, v3, v5}, Lz2/j;-><init>(Lf2/t;Lz2/g;ILjava/lang/String;)V

    .line 1707
    .line 1708
    .line 1709
    iget-boolean v3, v15, Lz2/j;->a:Z

    .line 1710
    .line 1711
    if-eqz v3, :cond_5c

    .line 1712
    .line 1713
    if-eqz v8, :cond_5a

    .line 1714
    .line 1715
    invoke-virtual {v15, v8}, Lz2/j;->a(Lz2/j;)I

    .line 1716
    .line 1717
    .line 1718
    move-result v3

    .line 1719
    if-lez v3, :cond_5c

    .line 1720
    .line 1721
    :cond_5a
    move-object v7, v10

    .line 1722
    move v9, v12

    .line 1723
    move-object v8, v15

    .line 1724
    goto :goto_43

    .line 1725
    :cond_5b
    move-object/from16 v19, v3

    .line 1726
    .line 1727
    move-object/from16 v21, v5

    .line 1728
    .line 1729
    move-object/from16 v5, v23

    .line 1730
    .line 1731
    :cond_5c
    :goto_43
    add-int/lit8 v12, v12, 0x1

    .line 1732
    .line 1733
    move-object/from16 v23, v5

    .line 1734
    .line 1735
    move-object/from16 v3, v19

    .line 1736
    .line 1737
    move-object/from16 v5, v21

    .line 1738
    .line 1739
    goto :goto_42

    .line 1740
    :cond_5d
    move-object/from16 v19, v3

    .line 1741
    .line 1742
    move-object/from16 v21, v5

    .line 1743
    .line 1744
    move-object/from16 v5, v23

    .line 1745
    .line 1746
    add-int/lit8 v6, v6, 0x1

    .line 1747
    .line 1748
    move-object/from16 v5, v21

    .line 1749
    .line 1750
    goto :goto_41

    .line 1751
    :cond_5e
    move-object/from16 v5, v23

    .line 1752
    .line 1753
    if-nez v7, :cond_5f

    .line 1754
    .line 1755
    const/4 v3, 0x0

    .line 1756
    goto :goto_44

    .line 1757
    :cond_5f
    new-instance v3, Lz2/o;

    .line 1758
    .line 1759
    filled-new-array {v9}, [I

    .line 1760
    .line 1761
    .line 1762
    move-result-object v6

    .line 1763
    invoke-direct {v3, v7, v6}, Lz2/o;-><init>(Lt2/w;[I)V

    .line 1764
    .line 1765
    .line 1766
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1767
    .line 1768
    .line 1769
    invoke-static {v3, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 1770
    .line 1771
    .line 1772
    move-result-object v3

    .line 1773
    :goto_44
    if-eqz v3, :cond_63

    .line 1774
    .line 1775
    if-eqz v2, :cond_60

    .line 1776
    .line 1777
    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 1778
    .line 1779
    check-cast v6, Lz2/j;

    .line 1780
    .line 1781
    invoke-virtual {v6, v2}, Lz2/j;->a(Lz2/j;)I

    .line 1782
    .line 1783
    .line 1784
    move-result v6

    .line 1785
    if-lez v6, :cond_63

    .line 1786
    .line 1787
    :cond_60
    const/4 v2, -0x1

    .line 1788
    if-eq v1, v2, :cond_61

    .line 1789
    .line 1790
    const/4 v2, 0x0

    .line 1791
    aput-object v2, v36, v1

    .line 1792
    .line 1793
    :cond_61
    iget-object v1, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1794
    .line 1795
    check-cast v1, Lz2/o;

    .line 1796
    .line 1797
    aput-object v1, v36, v0

    .line 1798
    .line 1799
    iget-object v1, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 1800
    .line 1801
    check-cast v1, Lz2/j;

    .line 1802
    .line 1803
    move-object v2, v1

    .line 1804
    move v1, v0

    .line 1805
    goto :goto_45

    .line 1806
    :cond_62
    move-object/from16 v5, v23

    .line 1807
    .line 1808
    move-object/from16 v14, v39

    .line 1809
    .line 1810
    :cond_63
    :goto_45
    add-int/lit8 v0, v0, 0x1

    .line 1811
    .line 1812
    move/from16 v37, v4

    .line 1813
    .line 1814
    move-object/from16 v23, v5

    .line 1815
    .line 1816
    move-object/from16 v39, v14

    .line 1817
    .line 1818
    goto/16 :goto_3a

    .line 1819
    .line 1820
    :cond_64
    move-object/from16 v14, v39

    .line 1821
    .line 1822
    const/4 v0, 0x0

    .line 1823
    :goto_46
    if-ge v0, v4, :cond_6a

    .line 1824
    .line 1825
    iget-object v1, v14, Lz2/g;->A:Landroid/util/SparseBooleanArray;

    .line 1826
    .line 1827
    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 1828
    .line 1829
    .line 1830
    move-result v1

    .line 1831
    if-eqz v1, :cond_65

    .line 1832
    .line 1833
    const/4 v2, 0x0

    .line 1834
    aput-object v2, v36, v0

    .line 1835
    .line 1836
    goto :goto_4a

    .line 1837
    :cond_65
    const/4 v2, 0x0

    .line 1838
    aget-object v1, v35, v0

    .line 1839
    .line 1840
    iget-object v5, v14, Lz2/g;->z:Landroid/util/SparseArray;

    .line 1841
    .line 1842
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1843
    .line 1844
    .line 1845
    move-result-object v6

    .line 1846
    check-cast v6, Ljava/util/Map;

    .line 1847
    .line 1848
    if-eqz v6, :cond_66

    .line 1849
    .line 1850
    invoke-interface {v6, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 1851
    .line 1852
    .line 1853
    move-result v6

    .line 1854
    if-eqz v6, :cond_66

    .line 1855
    .line 1856
    const/4 v6, 0x1

    .line 1857
    goto :goto_47

    .line 1858
    :cond_66
    const/4 v6, 0x0

    .line 1859
    :goto_47
    if-eqz v6, :cond_69

    .line 1860
    .line 1861
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1862
    .line 1863
    .line 1864
    move-result-object v5

    .line 1865
    check-cast v5, Ljava/util/Map;

    .line 1866
    .line 1867
    if-eqz v5, :cond_67

    .line 1868
    .line 1869
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1870
    .line 1871
    .line 1872
    move-result-object v5

    .line 1873
    check-cast v5, Lz2/i;

    .line 1874
    .line 1875
    goto :goto_48

    .line 1876
    :cond_67
    move-object v5, v2

    .line 1877
    :goto_48
    if-nez v5, :cond_68

    .line 1878
    .line 1879
    move-object v6, v2

    .line 1880
    goto :goto_49

    .line 1881
    :cond_68
    new-instance v6, Lz2/o;

    .line 1882
    .line 1883
    iget-object v1, v1, Lt2/x;->b:[Lt2/w;

    .line 1884
    .line 1885
    iget v7, v5, Lz2/i;->a:I

    .line 1886
    .line 1887
    aget-object v1, v1, v7

    .line 1888
    .line 1889
    iget v7, v5, Lz2/i;->d:I

    .line 1890
    .line 1891
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1892
    .line 1893
    .line 1894
    move-result-object v7

    .line 1895
    iget-object v8, v5, Lz2/i;->b:[I

    .line 1896
    .line 1897
    iget v5, v5, Lz2/i;->c:I

    .line 1898
    .line 1899
    invoke-direct {v6, v1, v8, v5, v7}, Lz2/o;-><init>(Lt2/w;[IILjava/lang/Integer;)V

    .line 1900
    .line 1901
    .line 1902
    :goto_49
    aput-object v6, v36, v0

    .line 1903
    .line 1904
    :cond_69
    :goto_4a
    add-int/lit8 v0, v0, 0x1

    .line 1905
    .line 1906
    goto :goto_46

    .line 1907
    :cond_6a
    move-object/from16 v0, v31

    .line 1908
    .line 1909
    const/4 v2, 0x0

    .line 1910
    iget-object v1, v0, Lz2/n;->a:La3/d;

    .line 1911
    .line 1912
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1913
    .line 1914
    .line 1915
    iget-object v0, v0, Lz2/k;->b:Lz2/b;

    .line 1916
    .line 1917
    iget-object v0, v0, Lz2/b;->a:La3/d;

    .line 1918
    .line 1919
    if-eqz v0, :cond_6b

    .line 1920
    .line 1921
    move-object v1, v0

    .line 1922
    :cond_6b
    new-array v0, v4, [Lz2/p;

    .line 1923
    .line 1924
    const/4 v5, 0x0

    .line 1925
    const/4 v6, 0x0

    .line 1926
    :goto_4b
    if-ge v5, v4, :cond_6d

    .line 1927
    .line 1928
    aget-object v7, v36, v5

    .line 1929
    .line 1930
    if-eqz v7, :cond_6c

    .line 1931
    .line 1932
    iget-object v8, v7, Lz2/o;->b:[I

    .line 1933
    .line 1934
    array-length v9, v8

    .line 1935
    const/4 v10, 0x1

    .line 1936
    if-ne v9, v10, :cond_6c

    .line 1937
    .line 1938
    new-instance v9, Lz2/l;

    .line 1939
    .line 1940
    const/4 v10, 0x0

    .line 1941
    aget v11, v8, v10

    .line 1942
    .line 1943
    iget v12, v7, Lz2/o;->c:I

    .line 1944
    .line 1945
    iget-object v13, v7, Lz2/o;->d:Ljava/lang/Object;

    .line 1946
    .line 1947
    iget-object v7, v7, Lz2/o;->a:Lt2/w;

    .line 1948
    .line 1949
    invoke-direct {v9, v7, v11, v12, v13}, Lz2/l;-><init>(Lt2/w;IILjava/lang/Object;)V

    .line 1950
    .line 1951
    .line 1952
    aput-object v9, v0, v5

    .line 1953
    .line 1954
    aget v8, v8, v10

    .line 1955
    .line 1956
    iget-object v7, v7, Lt2/w;->b:[Lf2/t;

    .line 1957
    .line 1958
    aget-object v7, v7, v8

    .line 1959
    .line 1960
    iget v7, v7, Lf2/t;->e:I

    .line 1961
    .line 1962
    const/4 v8, -0x1

    .line 1963
    if-eq v7, v8, :cond_6c

    .line 1964
    .line 1965
    add-int/2addr v6, v7

    .line 1966
    :cond_6c
    add-int/lit8 v5, v5, 0x1

    .line 1967
    .line 1968
    goto :goto_4b

    .line 1969
    :cond_6d
    new-instance v5, Ljava/util/ArrayList;

    .line 1970
    .line 1971
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1972
    .line 1973
    .line 1974
    const/4 v7, 0x0

    .line 1975
    :goto_4c
    if-ge v7, v4, :cond_6f

    .line 1976
    .line 1977
    aget-object v8, v36, v7

    .line 1978
    .line 1979
    if-eqz v8, :cond_6e

    .line 1980
    .line 1981
    iget-object v9, v8, Lz2/o;->b:[I

    .line 1982
    .line 1983
    array-length v10, v9

    .line 1984
    const/4 v11, 0x1

    .line 1985
    if-le v10, v11, :cond_6e

    .line 1986
    .line 1987
    iget-object v8, v8, Lz2/o;->a:Lt2/w;

    .line 1988
    .line 1989
    new-instance v10, Lz2/c;

    .line 1990
    .line 1991
    new-instance v11, Lz2/a;

    .line 1992
    .line 1993
    const v12, 0x3f333333    # 0.7f

    .line 1994
    .line 1995
    .line 1996
    int-to-long v2, v6

    .line 1997
    invoke-direct {v11, v1, v12, v2, v3}, Lz2/a;-><init>(La3/d;FJ)V

    .line 1998
    .line 1999
    .line 2000
    const/16 v2, 0x2710

    .line 2001
    .line 2002
    int-to-long v2, v2

    .line 2003
    const/16 v12, 0x61a8

    .line 2004
    .line 2005
    move-object/from16 v39, v14

    .line 2006
    .line 2007
    int-to-long v13, v12

    .line 2008
    const/high16 v31, 0x3f400000    # 0.75f

    .line 2009
    .line 2010
    sget-object v32, Lb3/a;->a:Ly0/i;

    .line 2011
    .line 2012
    move-object/from16 v23, v10

    .line 2013
    .line 2014
    move-object/from16 v24, v8

    .line 2015
    .line 2016
    move-object/from16 v25, v9

    .line 2017
    .line 2018
    move-object/from16 v26, v11

    .line 2019
    .line 2020
    move-wide/from16 v27, v2

    .line 2021
    .line 2022
    move-wide/from16 v29, v13

    .line 2023
    .line 2024
    invoke-direct/range {v23 .. v32}, Lz2/c;-><init>(Lt2/w;[ILz2/a;JJFLb3/a;)V

    .line 2025
    .line 2026
    .line 2027
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2028
    .line 2029
    .line 2030
    aput-object v10, v0, v7

    .line 2031
    .line 2032
    goto :goto_4d

    .line 2033
    :cond_6e
    move-object/from16 v39, v14

    .line 2034
    .line 2035
    :goto_4d
    add-int/lit8 v7, v7, 0x1

    .line 2036
    .line 2037
    move-object/from16 v14, v39

    .line 2038
    .line 2039
    const/4 v2, 0x0

    .line 2040
    const/4 v3, 0x3

    .line 2041
    goto :goto_4c

    .line 2042
    :cond_6f
    move-object/from16 v39, v14

    .line 2043
    .line 2044
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 2045
    .line 2046
    .line 2047
    move-result v1

    .line 2048
    const/4 v2, 0x1

    .line 2049
    if-le v1, v2, :cond_80

    .line 2050
    .line 2051
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 2052
    .line 2053
    .line 2054
    move-result v1

    .line 2055
    new-array v2, v1, [[J

    .line 2056
    .line 2057
    const/4 v3, 0x0

    .line 2058
    :goto_4e
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 2059
    .line 2060
    .line 2061
    move-result v6

    .line 2062
    if-ge v3, v6, :cond_71

    .line 2063
    .line 2064
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2065
    .line 2066
    .line 2067
    move-result-object v6

    .line 2068
    check-cast v6, Lz2/c;

    .line 2069
    .line 2070
    iget-object v7, v6, Lz2/d;->c:[I

    .line 2071
    .line 2072
    array-length v7, v7

    .line 2073
    new-array v7, v7, [J

    .line 2074
    .line 2075
    aput-object v7, v2, v3

    .line 2076
    .line 2077
    const/4 v7, 0x0

    .line 2078
    :goto_4f
    iget-object v8, v6, Lz2/d;->c:[I

    .line 2079
    .line 2080
    array-length v9, v8

    .line 2081
    if-ge v7, v9, :cond_70

    .line 2082
    .line 2083
    aget-object v9, v2, v3

    .line 2084
    .line 2085
    array-length v8, v8

    .line 2086
    sub-int/2addr v8, v7

    .line 2087
    const/4 v10, 0x1

    .line 2088
    sub-int/2addr v8, v10

    .line 2089
    iget-object v10, v6, Lz2/d;->d:[Lf2/t;

    .line 2090
    .line 2091
    aget-object v8, v10, v8

    .line 2092
    .line 2093
    iget v8, v8, Lf2/t;->e:I

    .line 2094
    .line 2095
    int-to-long v10, v8

    .line 2096
    aput-wide v10, v9, v7

    .line 2097
    .line 2098
    add-int/lit8 v7, v7, 0x1

    .line 2099
    .line 2100
    goto :goto_4f

    .line 2101
    :cond_70
    add-int/lit8 v3, v3, 0x1

    .line 2102
    .line 2103
    goto :goto_4e

    .line 2104
    :cond_71
    new-array v3, v1, [[D

    .line 2105
    .line 2106
    const/4 v6, 0x0

    .line 2107
    :goto_50
    const-wide/16 v7, 0x0

    .line 2108
    .line 2109
    if-ge v6, v1, :cond_74

    .line 2110
    .line 2111
    aget-object v9, v2, v6

    .line 2112
    .line 2113
    array-length v9, v9

    .line 2114
    new-array v9, v9, [D

    .line 2115
    .line 2116
    aput-object v9, v3, v6

    .line 2117
    .line 2118
    const/4 v9, 0x0

    .line 2119
    :goto_51
    aget-object v10, v2, v6

    .line 2120
    .line 2121
    array-length v11, v10

    .line 2122
    if-ge v9, v11, :cond_73

    .line 2123
    .line 2124
    aget-object v11, v3, v6

    .line 2125
    .line 2126
    aget-wide v12, v10, v9

    .line 2127
    .line 2128
    const-wide/16 v23, -0x1

    .line 2129
    .line 2130
    cmp-long v10, v12, v23

    .line 2131
    .line 2132
    if-nez v10, :cond_72

    .line 2133
    .line 2134
    move-wide v12, v7

    .line 2135
    goto :goto_52

    .line 2136
    :cond_72
    long-to-double v12, v12

    .line 2137
    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    .line 2138
    .line 2139
    .line 2140
    move-result-wide v12

    .line 2141
    :goto_52
    aput-wide v12, v11, v9

    .line 2142
    .line 2143
    add-int/lit8 v9, v9, 0x1

    .line 2144
    .line 2145
    goto :goto_51

    .line 2146
    :cond_73
    add-int/lit8 v6, v6, 0x1

    .line 2147
    .line 2148
    goto :goto_50

    .line 2149
    :cond_74
    new-array v6, v1, [[D

    .line 2150
    .line 2151
    const/4 v9, 0x0

    .line 2152
    :goto_53
    if-ge v9, v1, :cond_78

    .line 2153
    .line 2154
    aget-object v10, v3, v9

    .line 2155
    .line 2156
    array-length v10, v10

    .line 2157
    const/4 v11, -0x1

    .line 2158
    add-int/2addr v10, v11

    .line 2159
    new-array v12, v10, [D

    .line 2160
    .line 2161
    aput-object v12, v6, v9

    .line 2162
    .line 2163
    if-nez v10, :cond_75

    .line 2164
    .line 2165
    goto :goto_56

    .line 2166
    :cond_75
    aget-object v10, v3, v9

    .line 2167
    .line 2168
    array-length v12, v10

    .line 2169
    add-int/2addr v12, v11

    .line 2170
    aget-wide v12, v10, v12

    .line 2171
    .line 2172
    const/4 v14, 0x0

    .line 2173
    aget-wide v19, v10, v14

    .line 2174
    .line 2175
    sub-double v12, v12, v19

    .line 2176
    .line 2177
    const/4 v10, 0x0

    .line 2178
    :goto_54
    aget-object v14, v3, v9

    .line 2179
    .line 2180
    array-length v15, v14

    .line 2181
    add-int/2addr v15, v11

    .line 2182
    if-ge v10, v15, :cond_77

    .line 2183
    .line 2184
    aget-wide v23, v14, v10

    .line 2185
    .line 2186
    add-int/lit8 v11, v10, 0x1

    .line 2187
    .line 2188
    aget-wide v25, v14, v11

    .line 2189
    .line 2190
    add-double v23, v23, v25

    .line 2191
    .line 2192
    const-wide/high16 v25, 0x3fe0000000000000L    # 0.5

    .line 2193
    .line 2194
    mul-double v23, v23, v25

    .line 2195
    .line 2196
    aget-object v15, v6, v9

    .line 2197
    .line 2198
    cmpl-double v21, v12, v7

    .line 2199
    .line 2200
    if-nez v21, :cond_76

    .line 2201
    .line 2202
    const-wide/high16 v23, 0x3ff0000000000000L    # 1.0

    .line 2203
    .line 2204
    goto :goto_55

    .line 2205
    :cond_76
    const/16 v17, 0x0

    .line 2206
    .line 2207
    aget-wide v25, v14, v17

    .line 2208
    .line 2209
    sub-double v23, v23, v25

    .line 2210
    .line 2211
    div-double v23, v23, v12

    .line 2212
    .line 2213
    :goto_55
    aput-wide v23, v15, v10

    .line 2214
    .line 2215
    move v10, v11

    .line 2216
    const/4 v11, -0x1

    .line 2217
    goto :goto_54

    .line 2218
    :cond_77
    :goto_56
    add-int/lit8 v9, v9, 0x1

    .line 2219
    .line 2220
    goto :goto_53

    .line 2221
    :cond_78
    const/4 v7, 0x0

    .line 2222
    const/4 v8, 0x0

    .line 2223
    :goto_57
    if-ge v7, v1, :cond_79

    .line 2224
    .line 2225
    aget-object v9, v6, v7

    .line 2226
    .line 2227
    array-length v9, v9

    .line 2228
    add-int/2addr v8, v9

    .line 2229
    add-int/lit8 v7, v7, 0x1

    .line 2230
    .line 2231
    goto :goto_57

    .line 2232
    :cond_79
    const/4 v7, 0x3

    .line 2233
    add-int/2addr v8, v7

    .line 2234
    const/4 v7, 0x2

    .line 2235
    filled-new-array {v1, v8, v7}, [I

    .line 2236
    .line 2237
    .line 2238
    move-result-object v9

    .line 2239
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 2240
    .line 2241
    invoke-static {v7, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 2242
    .line 2243
    .line 2244
    move-result-object v7

    .line 2245
    check-cast v7, [[[J

    .line 2246
    .line 2247
    new-array v9, v1, [I

    .line 2248
    .line 2249
    const/4 v10, 0x1

    .line 2250
    invoke-static {v7, v10, v2, v9}, Lz2/c;->k([[[JI[[J[I)V

    .line 2251
    .line 2252
    .line 2253
    const/4 v10, 0x2

    .line 2254
    :goto_58
    add-int/lit8 v11, v8, -0x1

    .line 2255
    .line 2256
    if-ge v10, v11, :cond_7d

    .line 2257
    .line 2258
    const-wide v11, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 2259
    .line 2260
    .line 2261
    .line 2262
    .line 2263
    move-wide v13, v11

    .line 2264
    const/4 v11, 0x0

    .line 2265
    const/4 v12, 0x0

    .line 2266
    :goto_59
    if-ge v11, v1, :cond_7c

    .line 2267
    .line 2268
    aget v15, v9, v11

    .line 2269
    .line 2270
    move/from16 v19, v1

    .line 2271
    .line 2272
    add-int/lit8 v1, v15, 0x1

    .line 2273
    .line 2274
    move-object/from16 v21, v0

    .line 2275
    .line 2276
    aget-object v0, v3, v11

    .line 2277
    .line 2278
    array-length v0, v0

    .line 2279
    if-ne v1, v0, :cond_7a

    .line 2280
    .line 2281
    goto :goto_5a

    .line 2282
    :cond_7a
    aget-object v0, v6, v11

    .line 2283
    .line 2284
    aget-wide v23, v0, v15

    .line 2285
    .line 2286
    cmpg-double v0, v23, v13

    .line 2287
    .line 2288
    if-gez v0, :cond_7b

    .line 2289
    .line 2290
    move v12, v11

    .line 2291
    move-wide/from16 v13, v23

    .line 2292
    .line 2293
    :cond_7b
    :goto_5a
    add-int/lit8 v11, v11, 0x1

    .line 2294
    .line 2295
    move/from16 v1, v19

    .line 2296
    .line 2297
    move-object/from16 v0, v21

    .line 2298
    .line 2299
    goto :goto_59

    .line 2300
    :cond_7c
    move-object/from16 v21, v0

    .line 2301
    .line 2302
    move/from16 v19, v1

    .line 2303
    .line 2304
    aget v0, v9, v12

    .line 2305
    .line 2306
    const/4 v1, 0x1

    .line 2307
    add-int/2addr v0, v1

    .line 2308
    aput v0, v9, v12

    .line 2309
    .line 2310
    invoke-static {v7, v10, v2, v9}, Lz2/c;->k([[[JI[[J[I)V

    .line 2311
    .line 2312
    .line 2313
    add-int/lit8 v10, v10, 0x1

    .line 2314
    .line 2315
    move/from16 v1, v19

    .line 2316
    .line 2317
    move-object/from16 v0, v21

    .line 2318
    .line 2319
    goto :goto_58

    .line 2320
    :cond_7d
    move-object/from16 v21, v0

    .line 2321
    .line 2322
    array-length v0, v7

    .line 2323
    const/4 v1, 0x0

    .line 2324
    :goto_5b
    if-ge v1, v0, :cond_7e

    .line 2325
    .line 2326
    aget-object v2, v7, v1

    .line 2327
    .line 2328
    aget-object v3, v2, v11

    .line 2329
    .line 2330
    add-int/lit8 v6, v8, -0x2

    .line 2331
    .line 2332
    aget-object v2, v2, v6

    .line 2333
    .line 2334
    const/4 v6, 0x0

    .line 2335
    aget-wide v9, v2, v6

    .line 2336
    .line 2337
    const-wide/16 v12, 0x2

    .line 2338
    .line 2339
    mul-long/2addr v9, v12

    .line 2340
    aput-wide v9, v3, v6

    .line 2341
    .line 2342
    const/4 v9, 0x1

    .line 2343
    aget-wide v14, v2, v9

    .line 2344
    .line 2345
    mul-long/2addr v14, v12

    .line 2346
    aput-wide v14, v3, v9

    .line 2347
    .line 2348
    add-int/lit8 v1, v1, 0x1

    .line 2349
    .line 2350
    goto :goto_5b

    .line 2351
    :cond_7e
    const/4 v6, 0x0

    .line 2352
    move v0, v6

    .line 2353
    :goto_5c
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 2354
    .line 2355
    .line 2356
    move-result v1

    .line 2357
    if-ge v0, v1, :cond_81

    .line 2358
    .line 2359
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2360
    .line 2361
    .line 2362
    move-result-object v1

    .line 2363
    check-cast v1, Lz2/c;

    .line 2364
    .line 2365
    aget-object v2, v7, v0

    .line 2366
    .line 2367
    iget-object v1, v1, Lz2/c;->g:Lz2/a;

    .line 2368
    .line 2369
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2370
    .line 2371
    .line 2372
    array-length v3, v2

    .line 2373
    const/4 v8, 0x2

    .line 2374
    if-lt v3, v8, :cond_7f

    .line 2375
    .line 2376
    const/4 v3, 0x1

    .line 2377
    goto :goto_5d

    .line 2378
    :cond_7f
    move v3, v6

    .line 2379
    :goto_5d
    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/i0;->g(Z)V

    .line 2380
    .line 2381
    .line 2382
    iput-object v2, v1, Lz2/a;->d:[[J

    .line 2383
    .line 2384
    add-int/lit8 v0, v0, 0x1

    .line 2385
    .line 2386
    goto :goto_5c

    .line 2387
    :cond_80
    move-object/from16 v21, v0

    .line 2388
    .line 2389
    const/4 v6, 0x0

    .line 2390
    :cond_81
    new-array v0, v4, [Lf2/g0;

    .line 2391
    .line 2392
    move v7, v6

    .line 2393
    :goto_5e
    move-object/from16 v1, v39

    .line 2394
    .line 2395
    if-ge v7, v4, :cond_85

    .line 2396
    .line 2397
    iget-object v2, v1, Lz2/g;->A:Landroid/util/SparseBooleanArray;

    .line 2398
    .line 2399
    invoke-virtual {v2, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 2400
    .line 2401
    .line 2402
    move-result v2

    .line 2403
    if-nez v2, :cond_83

    .line 2404
    .line 2405
    aget v2, v33, v7

    .line 2406
    .line 2407
    const/4 v3, 0x6

    .line 2408
    if-eq v2, v3, :cond_82

    .line 2409
    .line 2410
    aget-object v2, v21, v7

    .line 2411
    .line 2412
    if-eqz v2, :cond_83

    .line 2413
    .line 2414
    :cond_82
    const/4 v2, 0x1

    .line 2415
    goto :goto_5f

    .line 2416
    :cond_83
    move v2, v6

    .line 2417
    :goto_5f
    if-eqz v2, :cond_84

    .line 2418
    .line 2419
    sget-object v2, Lf2/g0;->b:Lf2/g0;

    .line 2420
    .line 2421
    goto :goto_60

    .line 2422
    :cond_84
    const/4 v2, 0x0

    .line 2423
    :goto_60
    aput-object v2, v0, v7

    .line 2424
    .line 2425
    add-int/lit8 v7, v7, 0x1

    .line 2426
    .line 2427
    move-object/from16 v39, v1

    .line 2428
    .line 2429
    goto :goto_5e

    .line 2430
    :cond_85
    iget v1, v1, Lz2/g;->y:I

    .line 2431
    .line 2432
    if-nez v1, :cond_87

    .line 2433
    .line 2434
    :cond_86
    :goto_61
    move-object/from16 v1, v21

    .line 2435
    .line 2436
    goto/16 :goto_6a

    .line 2437
    .line 2438
    :cond_87
    move v7, v6

    .line 2439
    const/4 v2, -0x1

    .line 2440
    const/4 v3, -0x1

    .line 2441
    :goto_62
    if-ge v7, v4, :cond_8f

    .line 2442
    .line 2443
    aget v5, v33, v7

    .line 2444
    .line 2445
    aget-object v8, v21, v7

    .line 2446
    .line 2447
    const/4 v9, 0x1

    .line 2448
    if-eq v5, v9, :cond_89

    .line 2449
    .line 2450
    const/4 v9, 0x2

    .line 2451
    if-ne v5, v9, :cond_88

    .line 2452
    .line 2453
    goto :goto_63

    .line 2454
    :cond_88
    const/4 v5, -0x1

    .line 2455
    const/4 v8, 0x1

    .line 2456
    goto :goto_67

    .line 2457
    :cond_89
    const/4 v9, 0x2

    .line 2458
    :goto_63
    if-eqz v8, :cond_88

    .line 2459
    .line 2460
    aget-object v10, v16, v7

    .line 2461
    .line 2462
    aget-object v11, v35, v7

    .line 2463
    .line 2464
    check-cast v8, Lz2/d;

    .line 2465
    .line 2466
    iget-object v12, v8, Lz2/d;->a:Lt2/w;

    .line 2467
    .line 2468
    invoke-virtual {v11, v12}, Lt2/x;->a(Lt2/w;)I

    .line 2469
    .line 2470
    .line 2471
    move-result v11

    .line 2472
    move v12, v6

    .line 2473
    :goto_64
    iget-object v13, v8, Lz2/d;->c:[I

    .line 2474
    .line 2475
    array-length v14, v13

    .line 2476
    if-ge v12, v14, :cond_8b

    .line 2477
    .line 2478
    aget-object v14, v10, v11

    .line 2479
    .line 2480
    aget v13, v13, v12

    .line 2481
    .line 2482
    aget v13, v14, v13

    .line 2483
    .line 2484
    const/16 v14, 0x20

    .line 2485
    .line 2486
    and-int/2addr v13, v14

    .line 2487
    if-eq v13, v14, :cond_8a

    .line 2488
    .line 2489
    move v8, v6

    .line 2490
    goto :goto_65

    .line 2491
    :cond_8a
    add-int/lit8 v12, v12, 0x1

    .line 2492
    .line 2493
    goto :goto_64

    .line 2494
    :cond_8b
    const/4 v8, 0x1

    .line 2495
    :goto_65
    if-eqz v8, :cond_88

    .line 2496
    .line 2497
    const/4 v8, 0x1

    .line 2498
    if-ne v5, v8, :cond_8d

    .line 2499
    .line 2500
    const/4 v5, -0x1

    .line 2501
    if-eq v3, v5, :cond_8c

    .line 2502
    .line 2503
    goto :goto_66

    .line 2504
    :cond_8c
    move v3, v7

    .line 2505
    goto :goto_67

    .line 2506
    :cond_8d
    const/4 v5, -0x1

    .line 2507
    if-eq v2, v5, :cond_8e

    .line 2508
    .line 2509
    :goto_66
    move v4, v6

    .line 2510
    goto :goto_68

    .line 2511
    :cond_8e
    move v2, v7

    .line 2512
    :goto_67
    add-int/lit8 v7, v7, 0x1

    .line 2513
    .line 2514
    goto :goto_62

    .line 2515
    :cond_8f
    const/4 v5, -0x1

    .line 2516
    const/4 v8, 0x1

    .line 2517
    move v4, v8

    .line 2518
    :goto_68
    if-eq v3, v5, :cond_90

    .line 2519
    .line 2520
    if-eq v2, v5, :cond_90

    .line 2521
    .line 2522
    move v5, v8

    .line 2523
    goto :goto_69

    .line 2524
    :cond_90
    move v5, v6

    .line 2525
    :goto_69
    and-int/2addr v4, v5

    .line 2526
    if-eqz v4, :cond_86

    .line 2527
    .line 2528
    new-instance v4, Lf2/g0;

    .line 2529
    .line 2530
    invoke-direct {v4, v1}, Lf2/g0;-><init>(I)V

    .line 2531
    .line 2532
    .line 2533
    aput-object v4, v0, v3

    .line 2534
    .line 2535
    aput-object v4, v0, v2

    .line 2536
    .line 2537
    goto :goto_61

    .line 2538
    :goto_6a
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 2539
    .line 2540
    .line 2541
    move-result-object v0

    .line 2542
    new-instance v1, Landroidx/activity/result/c;

    .line 2543
    .line 2544
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2545
    .line 2546
    check-cast v2, [Lf2/g0;

    .line 2547
    .line 2548
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 2549
    .line 2550
    check-cast v0, [Lz2/p;

    .line 2551
    .line 2552
    move-object/from16 v3, v22

    .line 2553
    .line 2554
    invoke-direct {v1, v2, v0, v3}, Landroidx/activity/result/c;-><init>([Lf2/g0;[Lz2/p;Lz2/m;)V

    .line 2555
    .line 2556
    .line 2557
    iget-object v0, v1, Landroidx/activity/result/c;->c:Ljava/lang/Object;

    .line 2558
    .line 2559
    check-cast v0, Lz2/q;

    .line 2560
    .line 2561
    iget-object v0, v0, Lz2/q;->b:[Lz2/p;

    .line 2562
    .line 2563
    invoke-virtual {v0}, [Lz2/p;->clone()Ljava/lang/Object;

    .line 2564
    .line 2565
    .line 2566
    move-result-object v0

    .line 2567
    check-cast v0, [Lz2/p;

    .line 2568
    .line 2569
    array-length v2, v0

    .line 2570
    move v9, v6

    .line 2571
    :goto_6b
    if-ge v9, v2, :cond_92

    .line 2572
    .line 2573
    aget-object v3, v0, v9

    .line 2574
    .line 2575
    move/from16 v4, p1

    .line 2576
    .line 2577
    if-eqz v3, :cond_91

    .line 2578
    .line 2579
    invoke-interface {v3, v4}, Lz2/p;->e(F)V

    .line 2580
    .line 2581
    .line 2582
    :cond_91
    add-int/lit8 v9, v9, 0x1

    .line 2583
    .line 2584
    goto :goto_6b

    .line 2585
    :cond_92
    return-object v1
.end method
