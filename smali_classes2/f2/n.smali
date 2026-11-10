.class public final Lf2/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf2/j;
.implements Lf2/d0;


# instance fields
.field public final a:Lf2/k0;

.field public final b:Landroidx/activity/result/c;

.field public final c:Lz2/n;

.field public final d:Le1/d;

.field public final e:Lf2/r;

.field public final f:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final g:Lf2/j0;

.field public final h:Ljava/util/ArrayDeque;

.field public i:Z

.field public j:I

.field public k:I

.field public l:Z

.field public m:Z

.field public n:I

.field public o:Lf2/b0;

.field public p:Lf2/a0;

.field public q:I

.field public r:I

.field public s:J


# direct methods
.method public constructor <init>([Lf2/e0;Lz2/n;Lf2/e;La3/d;Lb3/a;Landroid/os/Looper;)V
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    move-object v2, p1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lf2/k0;

    .line 7
    .line 8
    invoke-direct {v1}, Lf2/k0;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v1, v0, Lf2/n;->a:Lf2/k0;

    .line 12
    .line 13
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    sget v1, Lb3/n;->a:I

    .line 21
    .line 22
    array-length v1, v2

    .line 23
    const/4 v3, 0x0

    .line 24
    if-lez v1, :cond_0

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v1, v3

    .line 29
    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/i0;->m(Z)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    move-object v4, p2

    .line 36
    iput-object v4, v0, Lf2/n;->c:Lz2/n;

    .line 37
    .line 38
    iput-boolean v3, v0, Lf2/n;->i:Z

    .line 39
    .line 40
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 41
    .line 42
    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v1, v0, Lf2/n;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 46
    .line 47
    new-instance v5, Landroidx/activity/result/c;

    .line 48
    .line 49
    array-length v1, v2

    .line 50
    new-array v1, v1, [Lf2/g0;

    .line 51
    .line 52
    array-length v6, v2

    .line 53
    new-array v6, v6, [Lz2/p;

    .line 54
    .line 55
    const/4 v7, 0x0

    .line 56
    invoke-direct {v5, v1, v6, v7}, Landroidx/activity/result/c;-><init>([Lf2/g0;[Lz2/p;Lz2/m;)V

    .line 57
    .line 58
    .line 59
    iput-object v5, v0, Lf2/n;->b:Landroidx/activity/result/c;

    .line 60
    .line 61
    new-instance v1, Lf2/j0;

    .line 62
    .line 63
    invoke-direct {v1}, Lf2/j0;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object v1, v0, Lf2/n;->g:Lf2/j0;

    .line 67
    .line 68
    sget-object v1, Lf2/b0;->d:Lf2/b0;

    .line 69
    .line 70
    iput-object v1, v0, Lf2/n;->o:Lf2/b0;

    .line 71
    .line 72
    sget-object v1, Lf2/h0;->c:Lf2/h0;

    .line 73
    .line 74
    iput v3, v0, Lf2/n;->j:I

    .line 75
    .line 76
    new-instance v8, Le1/d;

    .line 77
    .line 78
    move-object/from16 v1, p6

    .line 79
    .line 80
    invoke-direct {v8, p0, v1}, Le1/d;-><init>(Lf2/n;Landroid/os/Looper;)V

    .line 81
    .line 82
    .line 83
    iput-object v8, v0, Lf2/n;->d:Le1/d;

    .line 84
    .line 85
    const-wide/16 v6, 0x0

    .line 86
    .line 87
    invoke-static {v6, v7, v5}, Lf2/a0;->d(JLandroidx/activity/result/c;)Lf2/a0;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    iput-object v1, v0, Lf2/n;->p:Lf2/a0;

    .line 92
    .line 93
    new-instance v1, Ljava/util/ArrayDeque;

    .line 94
    .line 95
    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 96
    .line 97
    .line 98
    iput-object v1, v0, Lf2/n;->h:Ljava/util/ArrayDeque;

    .line 99
    .line 100
    new-instance v10, Lf2/r;

    .line 101
    .line 102
    iget-boolean v7, v0, Lf2/n;->i:Z

    .line 103
    .line 104
    move-object v1, v10

    .line 105
    move-object v2, p1

    .line 106
    move-object v3, p2

    .line 107
    move-object v4, v5

    .line 108
    move-object v5, p3

    .line 109
    move-object v6, p4

    .line 110
    move-object/from16 v9, p5

    .line 111
    .line 112
    invoke-direct/range {v1 .. v9}, Lf2/r;-><init>([Lf2/e0;Lz2/n;Landroidx/activity/result/c;Lf2/e;La3/d;ZLe1/d;Lb3/a;)V

    .line 113
    .line 114
    .line 115
    iput-object v10, v0, Lf2/n;->e:Lf2/r;

    .line 116
    .line 117
    new-instance v1, Landroid/os/Handler;

    .line 118
    .line 119
    iget-object v2, v10, Lf2/r;->m:Landroid/os/HandlerThread;

    .line 120
    .line 121
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 126
    .line 127
    .line 128
    return-void
.end method

.method public static e(Ljava/util/concurrent/CopyOnWriteArrayList;Lf2/b;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lf2/a;

    .line 16
    .line 17
    iget-boolean v1, v0, Lf2/a;->b:Z

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    iget-object v0, v0, Lf2/a;->a:Lf2/c0;

    .line 22
    .line 23
    invoke-interface {p1, v0}, Lf2/b;->b(Lf2/c0;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 5

    .line 1
    invoke-virtual {p0}, Lf2/n;->l()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-wide v0, p0, Lf2/n;->s:J

    .line 8
    .line 9
    return-wide v0

    .line 10
    :cond_0
    iget-object v0, p0, Lf2/n;->p:Lf2/a0;

    .line 11
    .line 12
    iget-object v0, v0, Lf2/a0;->b:Lt2/f;

    .line 13
    .line 14
    invoke-virtual {v0}, Lt2/f;->a()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lf2/n;->p:Lf2/a0;

    .line 21
    .line 22
    iget-wide v0, v0, Lf2/a0;->m:J

    .line 23
    .line 24
    invoke-static {v0, v1}, Lf2/d;->b(J)J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    return-wide v0

    .line 29
    :cond_1
    iget-object v0, p0, Lf2/n;->p:Lf2/a0;

    .line 30
    .line 31
    iget-object v1, v0, Lf2/a0;->b:Lt2/f;

    .line 32
    .line 33
    iget-wide v2, v0, Lf2/a0;->m:J

    .line 34
    .line 35
    invoke-static {v2, v3}, Lf2/d;->b(J)J

    .line 36
    .line 37
    .line 38
    move-result-wide v2

    .line 39
    iget-object v0, p0, Lf2/n;->p:Lf2/a0;

    .line 40
    .line 41
    iget-object v0, v0, Lf2/a0;->a:Lf2/l0;

    .line 42
    .line 43
    iget-object v1, v1, Lt2/f;->a:Ljava/lang/Object;

    .line 44
    .line 45
    iget-object v4, p0, Lf2/n;->g:Lf2/j0;

    .line 46
    .line 47
    invoke-virtual {v0, v1, v4}, Lf2/l0;->d(Ljava/lang/Object;Lf2/j0;)Lf2/j0;

    .line 48
    .line 49
    .line 50
    iget-wide v0, v4, Lf2/j0;->d:J

    .line 51
    .line 52
    invoke-static {v0, v1}, Lf2/d;->b(J)J

    .line 53
    .line 54
    .line 55
    move-result-wide v0

    .line 56
    add-long/2addr v0, v2

    .line 57
    return-wide v0
.end method

.method public final b()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lf2/n;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lf2/n;->q:I

    return v0

    :cond_0
    iget-object v0, p0, Lf2/n;->p:Lf2/a0;

    iget-object v1, v0, Lf2/a0;->a:Lf2/l0;

    iget-object v0, v0, Lf2/a0;->b:Lt2/f;

    iget-object v0, v0, Lt2/f;->a:Ljava/lang/Object;

    iget-object v2, p0, Lf2/n;->g:Lf2/j0;

    invoke-virtual {v1, v0, v2}, Lf2/l0;->d(Ljava/lang/Object;Lf2/j0;)Lf2/j0;

    move-result-object v0

    iget v0, v0, Lf2/j0;->b:I

    return v0
.end method

.method public final c()J
    .locals 6

    .line 1
    invoke-virtual {p0}, Lf2/n;->g()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lf2/n;->p:Lf2/a0;

    .line 13
    .line 14
    iget-object v3, v0, Lf2/a0;->b:Lt2/f;

    .line 15
    .line 16
    iget-object v4, v3, Lt2/f;->a:Ljava/lang/Object;

    .line 17
    .line 18
    iget-object v0, v0, Lf2/a0;->a:Lf2/l0;

    .line 19
    .line 20
    iget-object v5, p0, Lf2/n;->g:Lf2/j0;

    .line 21
    .line 22
    invoke-virtual {v0, v4, v5}, Lf2/l0;->d(Ljava/lang/Object;Lf2/j0;)Lf2/j0;

    .line 23
    .line 24
    .line 25
    iget-object v0, v5, Lf2/j0;->e:Lu2/b;

    .line 26
    .line 27
    iget-object v0, v0, Lu2/b;->c:[Lu2/a;

    .line 28
    .line 29
    iget v3, v3, Lt2/f;->b:I

    .line 30
    .line 31
    aget-object v0, v0, v3

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-static {v1, v2}, Lf2/d;->b(J)J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    return-wide v0

    .line 41
    :cond_0
    iget-object v0, p0, Lf2/n;->p:Lf2/a0;

    .line 42
    .line 43
    iget-object v0, v0, Lf2/a0;->a:Lf2/l0;

    .line 44
    .line 45
    invoke-virtual {v0}, Lf2/l0;->k()Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {p0}, Lf2/n;->b()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    iget-object v2, p0, Lf2/n;->a:Lf2/k0;

    .line 57
    .line 58
    invoke-virtual {v0, v1, v2}, Lf2/l0;->h(ILf2/k0;)Lf2/k0;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-wide v0, v0, Lf2/k0;->h:J

    .line 63
    .line 64
    invoke-static {v0, v1}, Lf2/d;->b(J)J

    .line 65
    .line 66
    .line 67
    move-result-wide v1

    .line 68
    :goto_0
    return-wide v1
.end method

.method public final d(ZZZI)Lf2/a0;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iput v3, v0, Lf2/n;->q:I

    .line 9
    .line 10
    iput v3, v0, Lf2/n;->r:I

    .line 11
    .line 12
    iput-wide v1, v0, Lf2/n;->s:J

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lf2/n;->b()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    iput v4, v0, Lf2/n;->q:I

    .line 20
    .line 21
    invoke-virtual/range {p0 .. p0}, Lf2/n;->l()Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_1

    .line 26
    .line 27
    iget v4, v0, Lf2/n;->r:I

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object v4, v0, Lf2/n;->p:Lf2/a0;

    .line 31
    .line 32
    iget-object v5, v4, Lf2/a0;->a:Lf2/l0;

    .line 33
    .line 34
    iget-object v4, v4, Lf2/a0;->b:Lt2/f;

    .line 35
    .line 36
    iget-object v4, v4, Lt2/f;->a:Ljava/lang/Object;

    .line 37
    .line 38
    invoke-virtual {v5, v4}, Lf2/l0;->a(Ljava/lang/Object;)I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    :goto_0
    iput v4, v0, Lf2/n;->r:I

    .line 43
    .line 44
    invoke-virtual/range {p0 .. p0}, Lf2/n;->a()J

    .line 45
    .line 46
    .line 47
    move-result-wide v4

    .line 48
    iput-wide v4, v0, Lf2/n;->s:J

    .line 49
    .line 50
    :goto_1
    if-nez p1, :cond_3

    .line 51
    .line 52
    if-eqz p2, :cond_2

    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_2
    move v4, v3

    .line 56
    goto :goto_3

    .line 57
    :cond_3
    :goto_2
    const/4 v4, 0x1

    .line 58
    :goto_3
    if-eqz v4, :cond_4

    .line 59
    .line 60
    iget-object v5, v0, Lf2/n;->p:Lf2/a0;

    .line 61
    .line 62
    iget-object v6, v0, Lf2/n;->a:Lf2/k0;

    .line 63
    .line 64
    iget-object v7, v0, Lf2/n;->g:Lf2/j0;

    .line 65
    .line 66
    invoke-virtual {v5, v3, v6, v7}, Lf2/a0;->e(ZLf2/k0;Lf2/j0;)Lt2/f;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    goto :goto_4

    .line 71
    :cond_4
    iget-object v3, v0, Lf2/n;->p:Lf2/a0;

    .line 72
    .line 73
    iget-object v3, v3, Lf2/a0;->b:Lt2/f;

    .line 74
    .line 75
    :goto_4
    move-object/from16 v17, v3

    .line 76
    .line 77
    if-eqz v4, :cond_5

    .line 78
    .line 79
    goto :goto_5

    .line 80
    :cond_5
    iget-object v1, v0, Lf2/n;->p:Lf2/a0;

    .line 81
    .line 82
    iget-wide v1, v1, Lf2/a0;->m:J

    .line 83
    .line 84
    :goto_5
    move-wide/from16 v22, v1

    .line 85
    .line 86
    if-eqz v4, :cond_6

    .line 87
    .line 88
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    goto :goto_6

    .line 94
    :cond_6
    iget-object v1, v0, Lf2/n;->p:Lf2/a0;

    .line 95
    .line 96
    iget-wide v1, v1, Lf2/a0;->d:J

    .line 97
    .line 98
    :goto_6
    move-wide v10, v1

    .line 99
    new-instance v1, Lf2/a0;

    .line 100
    .line 101
    if-eqz p2, :cond_7

    .line 102
    .line 103
    sget-object v2, Lf2/l0;->a:Lf2/i0;

    .line 104
    .line 105
    goto :goto_7

    .line 106
    :cond_7
    iget-object v2, v0, Lf2/n;->p:Lf2/a0;

    .line 107
    .line 108
    iget-object v2, v2, Lf2/a0;->a:Lf2/l0;

    .line 109
    .line 110
    :goto_7
    move-object v6, v2

    .line 111
    if-eqz p3, :cond_8

    .line 112
    .line 113
    const/4 v2, 0x0

    .line 114
    goto :goto_8

    .line 115
    :cond_8
    iget-object v2, v0, Lf2/n;->p:Lf2/a0;

    .line 116
    .line 117
    iget-object v2, v2, Lf2/a0;->f:Lf2/h;

    .line 118
    .line 119
    :goto_8
    move-object v13, v2

    .line 120
    const/4 v14, 0x0

    .line 121
    if-eqz p2, :cond_9

    .line 122
    .line 123
    sget-object v2, Lt2/x;->d:Lt2/x;

    .line 124
    .line 125
    goto :goto_9

    .line 126
    :cond_9
    iget-object v2, v0, Lf2/n;->p:Lf2/a0;

    .line 127
    .line 128
    iget-object v2, v2, Lf2/a0;->h:Lt2/x;

    .line 129
    .line 130
    :goto_9
    move-object v15, v2

    .line 131
    if-eqz p2, :cond_a

    .line 132
    .line 133
    iget-object v2, v0, Lf2/n;->b:Landroidx/activity/result/c;

    .line 134
    .line 135
    goto :goto_a

    .line 136
    :cond_a
    iget-object v2, v0, Lf2/n;->p:Lf2/a0;

    .line 137
    .line 138
    iget-object v2, v2, Lf2/a0;->i:Landroidx/activity/result/c;

    .line 139
    .line 140
    :goto_a
    move-object/from16 v16, v2

    .line 141
    .line 142
    const-wide/16 v20, 0x0

    .line 143
    .line 144
    move-object v5, v1

    .line 145
    move-object/from16 v7, v17

    .line 146
    .line 147
    move-wide/from16 v8, v22

    .line 148
    .line 149
    move/from16 v12, p4

    .line 150
    .line 151
    move-wide/from16 v18, v22

    .line 152
    .line 153
    invoke-direct/range {v5 .. v23}, Lf2/a0;-><init>(Lf2/l0;Lt2/f;JJILf2/h;ZLt2/x;Landroidx/activity/result/c;Lt2/f;JJJ)V

    .line 154
    .line 155
    .line 156
    return-object v1
.end method

.method public final f()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lf2/n;->p:Lf2/a0;

    .line 2
    .line 3
    iget v0, v0, Lf2/a0;->e:I

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-boolean v0, p0, Lf2/n;->i:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget v0, p0, Lf2/n;->j:I

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    return v0
.end method

.method public final g()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf2/n;->l()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lf2/n;->p:Lf2/a0;

    iget-object v0, v0, Lf2/a0;->b:Lt2/f;

    invoke-virtual {v0}, Lt2/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final h(Lf2/b;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lf2/n;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lo0/e;

    const/16 v2, 0xa

    invoke-direct {v1, v2, v0, p1}, Lo0/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lf2/n;->i(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final i(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf2/n;->h:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    if-eqz v1, :cond_0

    return-void

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final j(J)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lf2/n;->b()I

    .line 2
    .line 3
    .line 4
    move-result v8

    .line 5
    iget-object v0, p0, Lf2/n;->p:Lf2/a0;

    .line 6
    .line 7
    iget-object v9, v0, Lf2/a0;->a:Lf2/l0;

    .line 8
    .line 9
    if-ltz v8, :cond_5

    .line 10
    .line 11
    invoke-virtual {v9}, Lf2/l0;->k()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v9}, Lf2/l0;->j()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-ge v8, v0, :cond_5

    .line 22
    .line 23
    :cond_0
    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lf2/n;->m:Z

    .line 25
    .line 26
    iget v1, p0, Lf2/n;->k:I

    .line 27
    .line 28
    add-int/2addr v1, v0

    .line 29
    iput v1, p0, Lf2/n;->k:I

    .line 30
    .line 31
    invoke-virtual {p0}, Lf2/n;->g()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    const/4 v2, 0x0

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    iget-object p1, p0, Lf2/n;->d:Le1/d;

    .line 39
    .line 40
    const/4 p2, -0x1

    .line 41
    iget-object v1, p0, Lf2/n;->p:Lf2/a0;

    .line 42
    .line 43
    invoke-virtual {p1, v2, v0, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 48
    .line 49
    .line 50
    goto/16 :goto_3

    .line 51
    .line 52
    :cond_1
    iput v8, p0, Lf2/n;->q:I

    .line 53
    .line 54
    invoke-virtual {v9}, Lf2/l0;->k()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    cmp-long v0, p1, v3

    .line 66
    .line 67
    if-nez v0, :cond_2

    .line 68
    .line 69
    const-wide/16 v0, 0x0

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    move-wide v0, p1

    .line 73
    :goto_0
    iput-wide v0, p0, Lf2/n;->s:J

    .line 74
    .line 75
    iput v2, p0, Lf2/n;->r:I

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_3
    cmp-long v0, p1, v3

    .line 79
    .line 80
    if-nez v0, :cond_4

    .line 81
    .line 82
    iget-object v0, p0, Lf2/n;->a:Lf2/k0;

    .line 83
    .line 84
    invoke-virtual {v9, v8, v0}, Lf2/l0;->h(ILf2/k0;)Lf2/k0;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iget-wide v0, v0, Lf2/k0;->g:J

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_4
    invoke-static {p1, p2}, Lf2/d;->a(J)J

    .line 92
    .line 93
    .line 94
    move-result-wide v0

    .line 95
    :goto_1
    move-wide v10, v0

    .line 96
    iget-object v1, p0, Lf2/n;->a:Lf2/k0;

    .line 97
    .line 98
    iget-object v2, p0, Lf2/n;->g:Lf2/j0;

    .line 99
    .line 100
    const-wide/16 v6, 0x0

    .line 101
    .line 102
    move-object v0, v9

    .line 103
    move v3, v8

    .line 104
    move-wide v4, v10

    .line 105
    invoke-virtual/range {v0 .. v7}, Lf2/l0;->f(Lf2/k0;Lf2/j0;IJJ)Landroid/util/Pair;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    invoke-static {v10, v11}, Lf2/d;->b(J)J

    .line 113
    .line 114
    .line 115
    move-result-wide v1

    .line 116
    iput-wide v1, p0, Lf2/n;->s:J

    .line 117
    .line 118
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 119
    .line 120
    invoke-virtual {v9, v0}, Lf2/l0;->a(Ljava/lang/Object;)I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    iput v0, p0, Lf2/n;->r:I

    .line 125
    .line 126
    :goto_2
    invoke-static {p1, p2}, Lf2/d;->a(J)J

    .line 127
    .line 128
    .line 129
    move-result-wide p1

    .line 130
    iget-object v0, p0, Lf2/n;->e:Lf2/r;

    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    new-instance v1, Lf2/q;

    .line 136
    .line 137
    invoke-direct {v1, v9, v8, p1, p2}, Lf2/q;-><init>(Lf2/l0;IJ)V

    .line 138
    .line 139
    .line 140
    iget-object p1, v0, Lf2/r;->l:Lh/a;

    .line 141
    .line 142
    iget-object p1, p1, Lh/a;->g:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast p1, Landroid/os/Handler;

    .line 145
    .line 146
    const/4 p2, 0x3

    .line 147
    invoke-virtual {p1, p2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 152
    .line 153
    .line 154
    new-instance p1, Lh0/c;

    .line 155
    .line 156
    const/16 p2, 0xd

    .line 157
    .line 158
    invoke-direct {p1, p2}, Lh0/c;-><init>(I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0, p1}, Lf2/n;->h(Lf2/b;)V

    .line 162
    .line 163
    .line 164
    :goto_3
    return-void

    .line 165
    :cond_5
    new-instance p1, Lf2/v;

    .line 166
    .line 167
    invoke-direct {p1}, Lf2/v;-><init>()V

    .line 168
    .line 169
    .line 170
    throw p1
.end method

.method public final k(Z)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lf2/n;->f()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-boolean v1, p0, Lf2/n;->i:Z

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget v1, p0, Lf2/n;->j:I

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    move v1, v3

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v1, v2

    .line 18
    :goto_0
    if-eq v1, p1, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Lf2/n;->e:Lf2/r;

    .line 21
    .line 22
    iget-object v1, v1, Lf2/r;->l:Lh/a;

    .line 23
    .line 24
    iget-object v1, v1, Lh/a;->g:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, Landroid/os/Handler;

    .line 27
    .line 28
    invoke-virtual {v1, v3, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 33
    .line 34
    .line 35
    :cond_1
    iget-boolean v1, p0, Lf2/n;->i:Z

    .line 36
    .line 37
    if-eq v1, p1, :cond_2

    .line 38
    .line 39
    move v5, v3

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    move v5, v2

    .line 42
    :goto_1
    iget v1, p0, Lf2/n;->j:I

    .line 43
    .line 44
    if-eqz v1, :cond_3

    .line 45
    .line 46
    move v8, v3

    .line 47
    goto :goto_2

    .line 48
    :cond_3
    move v8, v2

    .line 49
    :goto_2
    iput-boolean p1, p0, Lf2/n;->i:Z

    .line 50
    .line 51
    iput v2, p0, Lf2/n;->j:I

    .line 52
    .line 53
    invoke-virtual {p0}, Lf2/n;->f()Z

    .line 54
    .line 55
    .line 56
    move-result v10

    .line 57
    if-eq v0, v10, :cond_4

    .line 58
    .line 59
    move v9, v3

    .line 60
    goto :goto_3

    .line 61
    :cond_4
    move v9, v2

    .line 62
    :goto_3
    if-nez v5, :cond_5

    .line 63
    .line 64
    if-nez v8, :cond_5

    .line 65
    .line 66
    if-eqz v9, :cond_6

    .line 67
    .line 68
    :cond_5
    iget-object v0, p0, Lf2/n;->p:Lf2/a0;

    .line 69
    .line 70
    iget v7, v0, Lf2/a0;->e:I

    .line 71
    .line 72
    new-instance v0, Lf2/k;

    .line 73
    .line 74
    move-object v4, v0

    .line 75
    move v6, p1

    .line 76
    invoke-direct/range {v4 .. v10}, Lf2/k;-><init>(ZZIZZZ)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v0}, Lf2/n;->h(Lf2/b;)V

    .line 80
    .line 81
    .line 82
    :cond_6
    return-void
.end method

.method public final l()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf2/n;->p:Lf2/a0;

    iget-object v0, v0, Lf2/a0;->a:Lf2/l0;

    invoke-virtual {v0}, Lf2/l0;->k()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lf2/n;->k:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final m(Lf2/a0;ZIIZ)V
    .locals 14

    .line 1
    move-object v0, p0

    invoke-virtual {p0}, Lf2/n;->f()Z

    move-result v1

    iget-object v4, v0, Lf2/n;->p:Lf2/a0;

    move-object v3, p1

    iput-object v3, v0, Lf2/n;->p:Lf2/a0;

    invoke-virtual {p0}, Lf2/n;->f()Z

    move-result v2

    new-instance v13, Lf2/m;

    iget-object v5, v0, Lf2/n;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v6, v0, Lf2/n;->c:Lz2/n;

    iget-boolean v11, v0, Lf2/n;->i:Z

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v12, v1

    move-object v2, v13

    move-object v3, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    invoke-direct/range {v2 .. v12}, Lf2/m;-><init>(Lf2/a0;Lf2/a0;Ljava/util/concurrent/CopyOnWriteArrayList;Lz2/n;ZIIZZZ)V

    invoke-virtual {p0, v13}, Lf2/n;->i(Ljava/lang/Runnable;)V

    return-void
.end method
