.class public final Lz2/c;
.super Lz2/d;
.source "SourceFile"


# instance fields
.field public final g:Lz2/a;

.field public final h:J

.field public final i:J

.field public final j:F

.field public final k:Lb3/a;

.field public l:F

.field public m:I

.field public n:I


# direct methods
.method public constructor <init>(Lt2/w;[ILz2/a;JJFLb3/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lz2/d;-><init>(Lt2/w;[I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lz2/c;->g:Lz2/a;

    .line 5
    .line 6
    const-wide/16 p1, 0x3e8

    .line 7
    .line 8
    mul-long/2addr p4, p1

    .line 9
    iput-wide p4, p0, Lz2/c;->h:J

    .line 10
    .line 11
    mul-long/2addr p6, p1

    .line 12
    iput-wide p6, p0, Lz2/c;->i:J

    .line 13
    .line 14
    iput p8, p0, Lz2/c;->j:F

    .line 15
    .line 16
    iput-object p9, p0, Lz2/c;->k:Lb3/a;

    .line 17
    .line 18
    const/high16 p1, 0x3f800000    # 1.0f

    .line 19
    .line 20
    iput p1, p0, Lz2/c;->l:F

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lz2/c;->n:I

    .line 24
    .line 25
    return-void
.end method

.method public static k([[[JI[[J[I)V
    .locals 8

    .line 1
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_0

    aget-object v4, p0, v3

    aget-object v4, v4, p1

    aget-object v5, p2, v3

    aget v6, p3, v3

    aget-wide v6, v5, v6

    const/4 v5, 0x1

    aput-wide v6, v4, v5

    add-long/2addr v0, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    array-length p2, p0

    move p3, v2

    :goto_1
    if-ge p3, p2, :cond_1

    aget-object v3, p0, p3

    aget-object v3, v3, p1

    aput-wide v0, v3, v2

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Lz2/c;->n:I

    return v0
.end method

.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Lz2/c;->m:I

    return v0
.end method

.method public final c(JJ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lz2/c;->k:Lb3/a;

    .line 2
    .line 3
    check-cast v0, Ly0/i;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iget v2, p0, Lz2/c;->n:I

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    iput v3, p0, Lz2/c;->n:I

    .line 18
    .line 19
    invoke-virtual {p0, v0, v1}, Lz2/c;->j(J)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iput p1, p0, Lz2/c;->m:I

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget v2, p0, Lz2/c;->m:I

    .line 27
    .line 28
    invoke-virtual {p0, v0, v1}, Lz2/c;->j(J)I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    iput v4, p0, Lz2/c;->m:I

    .line 33
    .line 34
    if-ne v4, v2, :cond_1

    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    invoke-virtual {p0, v0, v1, v2}, Lz2/d;->i(JI)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_5

    .line 42
    .line 43
    iget-object v0, p0, Lz2/d;->d:[Lf2/t;

    .line 44
    .line 45
    aget-object v1, v0, v2

    .line 46
    .line 47
    iget v4, p0, Lz2/c;->m:I

    .line 48
    .line 49
    aget-object v0, v0, v4

    .line 50
    .line 51
    iget v0, v0, Lf2/t;->e:I

    .line 52
    .line 53
    iget v1, v1, Lf2/t;->e:I

    .line 54
    .line 55
    if-le v0, v1, :cond_4

    .line 56
    .line 57
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    cmp-long v4, p3, v4

    .line 63
    .line 64
    iget-wide v5, p0, Lz2/c;->h:J

    .line 65
    .line 66
    if-eqz v4, :cond_2

    .line 67
    .line 68
    cmp-long v4, p3, v5

    .line 69
    .line 70
    if-gtz v4, :cond_2

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    const/4 v3, 0x0

    .line 74
    :goto_0
    if-eqz v3, :cond_3

    .line 75
    .line 76
    long-to-float p3, p3

    .line 77
    iget p4, p0, Lz2/c;->j:F

    .line 78
    .line 79
    mul-float/2addr p3, p4

    .line 80
    float-to-long v5, p3

    .line 81
    :cond_3
    cmp-long p3, p1, v5

    .line 82
    .line 83
    if-gez p3, :cond_4

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_4
    if-ge v0, v1, :cond_5

    .line 87
    .line 88
    iget-wide p3, p0, Lz2/c;->i:J

    .line 89
    .line 90
    cmp-long p1, p1, p3

    .line 91
    .line 92
    if-ltz p1, :cond_5

    .line 93
    .line 94
    :goto_1
    iput v2, p0, Lz2/c;->m:I

    .line 95
    .line 96
    :cond_5
    iget p1, p0, Lz2/c;->m:I

    .line 97
    .line 98
    if-eq p1, v2, :cond_6

    .line 99
    .line 100
    const/4 p1, 0x3

    .line 101
    iput p1, p0, Lz2/c;->n:I

    .line 102
    .line 103
    :cond_6
    return-void
.end method

.method public final d()V
    .locals 0

    .line 1
    return-void
.end method

.method public final e(F)V
    .locals 0

    .line 1
    iput p1, p0, Lz2/c;->l:F

    return-void
.end method

.method public final f()Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final j(J)I
    .locals 10

    .line 1
    iget-object v0, p0, Lz2/c;->g:Lz2/a;

    .line 2
    .line 3
    iget-object v1, v0, Lz2/a;->a:La3/d;

    .line 4
    .line 5
    check-cast v1, La3/o;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-wide v2, v1, La3/o;->l:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    monitor-exit v1

    .line 11
    long-to-float v1, v2

    .line 12
    iget v2, v0, Lz2/a;->b:F

    .line 13
    .line 14
    mul-float/2addr v1, v2

    .line 15
    float-to-long v1, v1

    .line 16
    iget-wide v3, v0, Lz2/a;->c:J

    .line 17
    .line 18
    sub-long/2addr v1, v3

    .line 19
    const-wide/16 v3, 0x0

    .line 20
    .line 21
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 22
    .line 23
    .line 24
    move-result-wide v1

    .line 25
    iget-object v3, v0, Lz2/a;->d:[[J

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    const/4 v5, 0x1

    .line 29
    if-nez v3, :cond_0

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    move v3, v5

    .line 33
    :goto_0
    iget-object v6, v0, Lz2/a;->d:[[J

    .line 34
    .line 35
    array-length v7, v6

    .line 36
    sub-int/2addr v7, v5

    .line 37
    if-ge v3, v7, :cond_1

    .line 38
    .line 39
    aget-object v7, v6, v3

    .line 40
    .line 41
    aget-wide v8, v7, v4

    .line 42
    .line 43
    cmp-long v7, v8, v1

    .line 44
    .line 45
    if-gez v7, :cond_1

    .line 46
    .line 47
    add-int/lit8 v3, v3, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    add-int/lit8 v0, v3, -0x1

    .line 51
    .line 52
    aget-object v0, v6, v0

    .line 53
    .line 54
    aget-object v3, v6, v3

    .line 55
    .line 56
    aget-wide v6, v0, v4

    .line 57
    .line 58
    sub-long/2addr v1, v6

    .line 59
    long-to-float v1, v1

    .line 60
    aget-wide v8, v3, v4

    .line 61
    .line 62
    sub-long/2addr v8, v6

    .line 63
    long-to-float v2, v8

    .line 64
    div-float/2addr v1, v2

    .line 65
    aget-wide v6, v0, v5

    .line 66
    .line 67
    aget-wide v2, v3, v5

    .line 68
    .line 69
    sub-long/2addr v2, v6

    .line 70
    long-to-float v0, v2

    .line 71
    mul-float/2addr v1, v0

    .line 72
    float-to-long v0, v1

    .line 73
    add-long v1, v6, v0

    .line 74
    .line 75
    :goto_1
    move v0, v4

    .line 76
    move v3, v0

    .line 77
    :goto_2
    iget v6, p0, Lz2/d;->b:I

    .line 78
    .line 79
    if-ge v0, v6, :cond_6

    .line 80
    .line 81
    const-wide/high16 v6, -0x8000000000000000L

    .line 82
    .line 83
    cmp-long v6, p1, v6

    .line 84
    .line 85
    if-eqz v6, :cond_2

    .line 86
    .line 87
    invoke-virtual {p0, p1, p2, v0}, Lz2/d;->i(JI)Z

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    if-nez v6, :cond_5

    .line 92
    .line 93
    :cond_2
    iget-object v3, p0, Lz2/d;->d:[Lf2/t;

    .line 94
    .line 95
    aget-object v3, v3, v0

    .line 96
    .line 97
    iget v3, v3, Lf2/t;->e:I

    .line 98
    .line 99
    iget v6, p0, Lz2/c;->l:F

    .line 100
    .line 101
    int-to-float v3, v3

    .line 102
    mul-float/2addr v3, v6

    .line 103
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    int-to-long v6, v3

    .line 108
    cmp-long v3, v6, v1

    .line 109
    .line 110
    if-gtz v3, :cond_3

    .line 111
    .line 112
    move v3, v5

    .line 113
    goto :goto_3

    .line 114
    :cond_3
    move v3, v4

    .line 115
    :goto_3
    if-eqz v3, :cond_4

    .line 116
    .line 117
    return v0

    .line 118
    :cond_4
    move v3, v0

    .line 119
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_6
    return v3

    .line 123
    :catchall_0
    move-exception p1

    .line 124
    monitor-exit v1

    .line 125
    throw p1
.end method
