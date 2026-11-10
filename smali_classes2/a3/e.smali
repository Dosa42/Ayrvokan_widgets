.class public abstract La3/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La3/i;


# instance fields
.field public final a:Z

.field public final b:Ljava/util/ArrayList;

.field public c:I


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, La3/e;->a:Z

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, La3/e;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(La3/g0;)V
    .locals 2

    .line 1
    iget-object v0, p0, La3/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, p0, La3/e;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, La3/e;->c:I

    :cond_0
    return-void
.end method

.method public final e(I)V
    .locals 6

    .line 1
    sget v0, Lb3/n;->a:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget v1, p0, La3/e;->c:I

    .line 5
    .line 6
    if-ge v0, v1, :cond_1

    .line 7
    .line 8
    iget-object v1, p0, La3/e;->b:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, La3/g0;

    .line 15
    .line 16
    iget-boolean v2, p0, La3/e;->a:Z

    .line 17
    .line 18
    check-cast v1, La3/o;

    .line 19
    .line 20
    monitor-enter v1

    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    :goto_1
    monitor-exit v1

    .line 24
    goto :goto_2

    .line 25
    :cond_0
    :try_start_0
    iget-wide v2, v1, La3/o;->h:J

    .line 26
    .line 27
    int-to-long v4, p1

    .line 28
    add-long/2addr v2, v4

    .line 29
    iput-wide v2, v1, La3/o;->h:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    monitor-exit v1

    .line 37
    throw p1

    .line 38
    :cond_1
    return-void
.end method

.method public final f()V
    .locals 13

    .line 1
    sget v0, Lb3/n;->a:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    move v1, v0

    .line 5
    :goto_0
    iget v2, p0, La3/e;->c:I

    .line 6
    .line 7
    if-ge v1, v2, :cond_5

    .line 8
    .line 9
    iget-object v2, p0, La3/e;->b:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, La3/g0;

    .line 16
    .line 17
    iget-boolean v3, p0, La3/e;->a:Z

    .line 18
    .line 19
    check-cast v2, La3/o;

    .line 20
    .line 21
    monitor-enter v2

    .line 22
    if-nez v3, :cond_0

    .line 23
    .line 24
    goto :goto_2

    .line 25
    :cond_0
    :try_start_0
    iget v3, v2, La3/o;->f:I

    .line 26
    .line 27
    const/4 v10, 0x1

    .line 28
    if-lez v3, :cond_1

    .line 29
    .line 30
    move v3, v10

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move v3, v0

    .line 33
    :goto_1
    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/i0;->m(Z)V

    .line 34
    .line 35
    .line 36
    iget-object v3, v2, La3/o;->e:Lb3/a;

    .line 37
    .line 38
    check-cast v3, Ly0/i;

    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 44
    .line 45
    .line 46
    move-result-wide v11

    .line 47
    iget-wide v3, v2, La3/o;->g:J

    .line 48
    .line 49
    sub-long v3, v11, v3

    .line 50
    .line 51
    long-to-int v5, v3

    .line 52
    iget-wide v3, v2, La3/o;->j:J

    .line 53
    .line 54
    int-to-long v6, v5

    .line 55
    add-long/2addr v3, v6

    .line 56
    iput-wide v3, v2, La3/o;->j:J

    .line 57
    .line 58
    iget-wide v3, v2, La3/o;->k:J

    .line 59
    .line 60
    iget-wide v6, v2, La3/o;->h:J

    .line 61
    .line 62
    add-long/2addr v3, v6

    .line 63
    iput-wide v3, v2, La3/o;->k:J

    .line 64
    .line 65
    if-lez v5, :cond_4

    .line 66
    .line 67
    long-to-float v3, v6

    .line 68
    const/high16 v4, 0x45fa0000    # 8000.0f

    .line 69
    .line 70
    mul-float/2addr v3, v4

    .line 71
    int-to-float v4, v5

    .line 72
    div-float/2addr v3, v4

    .line 73
    iget-object v4, v2, La3/o;->d:Lb3/k;

    .line 74
    .line 75
    long-to-double v6, v6

    .line 76
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    .line 77
    .line 78
    .line 79
    move-result-wide v6

    .line 80
    double-to-int v6, v6

    .line 81
    invoke-virtual {v4, v3, v6}, Lb3/k;->a(FI)V

    .line 82
    .line 83
    .line 84
    iget-wide v3, v2, La3/o;->j:J

    .line 85
    .line 86
    const-wide/16 v6, 0x7d0

    .line 87
    .line 88
    cmp-long v3, v3, v6

    .line 89
    .line 90
    if-gez v3, :cond_2

    .line 91
    .line 92
    iget-wide v3, v2, La3/o;->k:J

    .line 93
    .line 94
    const-wide/32 v6, 0x80000

    .line 95
    .line 96
    .line 97
    cmp-long v3, v3, v6

    .line 98
    .line 99
    if-ltz v3, :cond_3

    .line 100
    .line 101
    :cond_2
    iget-object v3, v2, La3/o;->d:Lb3/k;

    .line 102
    .line 103
    invoke-virtual {v3}, Lb3/k;->b()F

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    float-to-long v3, v3

    .line 108
    iput-wide v3, v2, La3/o;->l:J

    .line 109
    .line 110
    :cond_3
    iget-wide v6, v2, La3/o;->h:J

    .line 111
    .line 112
    iget-wide v8, v2, La3/o;->l:J

    .line 113
    .line 114
    move-object v4, v2

    .line 115
    invoke-virtual/range {v4 .. v9}, La3/o;->b(IJJ)V

    .line 116
    .line 117
    .line 118
    iput-wide v11, v2, La3/o;->g:J

    .line 119
    .line 120
    const-wide/16 v3, 0x0

    .line 121
    .line 122
    iput-wide v3, v2, La3/o;->h:J

    .line 123
    .line 124
    :cond_4
    iget v3, v2, La3/o;->f:I

    .line 125
    .line 126
    sub-int/2addr v3, v10

    .line 127
    iput v3, v2, La3/o;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    .line 129
    :goto_2
    monitor-exit v2

    .line 130
    add-int/lit8 v1, v1, 0x1

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :catchall_0
    move-exception v0

    .line 134
    monitor-exit v2

    .line 135
    throw v0

    .line 136
    :cond_5
    return-void
.end method

.method public final g()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, La3/e;->c:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, La3/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La3/g0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final h(La3/l;)V
    .locals 3

    .line 1
    const/4 p1, 0x0

    .line 2
    :goto_0
    iget v0, p0, La3/e;->c:I

    .line 3
    .line 4
    if-ge p1, v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, La3/e;->b:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, La3/g0;

    .line 13
    .line 14
    iget-boolean v1, p0, La3/e;->a:Z

    .line 15
    .line 16
    check-cast v0, La3/o;

    .line 17
    .line 18
    monitor-enter v0

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :try_start_0
    iget v1, v0, La3/o;->f:I

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    iget-object v1, v0, La3/o;->e:Lb3/a;

    .line 27
    .line 28
    check-cast v1, Ly0/i;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 34
    .line 35
    .line 36
    move-result-wide v1

    .line 37
    iput-wide v1, v0, La3/o;->g:J

    .line 38
    .line 39
    :cond_1
    iget v1, v0, La3/o;->f:I

    .line 40
    .line 41
    add-int/lit8 v1, v1, 0x1

    .line 42
    .line 43
    iput v1, v0, La3/o;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    :goto_1
    monitor-exit v0

    .line 46
    add-int/lit8 p1, p1, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    monitor-exit v0

    .line 51
    throw p1

    .line 52
    :cond_2
    return-void
.end method
