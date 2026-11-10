.class public final Lb3/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:J

.field public volatile c:J


# direct methods
.method public constructor <init>(J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lb3/l;->c:J

    invoke-virtual {p0, p1, p2}, Lb3/l;->d(J)V

    return-void
.end method


# virtual methods
.method public final a(J)J
    .locals 4

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    iget-wide v2, p0, Lb3/l;->c:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_1

    iput-wide p1, p0, Lb3/l;->c:J

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lb3/l;->a:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lb3/l;->b:J

    :cond_2
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lb3/l;->c:J

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-wide v0, p0, Lb3/l;->b:J

    add-long/2addr p1, v0

    return-wide p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b(J)J
    .locals 13

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    cmp-long v2, p1, v0

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    return-wide v0

    .line 11
    :cond_0
    iget-wide v2, p0, Lb3/l;->c:J

    .line 12
    .line 13
    cmp-long v0, v2, v0

    .line 14
    .line 15
    const-wide/32 v1, 0x15f90

    .line 16
    .line 17
    .line 18
    const-wide/32 v3, 0xf4240

    .line 19
    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-wide v5, p0, Lb3/l;->c:J

    .line 24
    .line 25
    mul-long/2addr v5, v1

    .line 26
    div-long/2addr v5, v3

    .line 27
    const-wide v7, 0x100000000L

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    add-long/2addr v7, v5

    .line 33
    const-wide v9, 0x200000000L

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    div-long/2addr v7, v9

    .line 39
    const-wide/16 v11, 0x1

    .line 40
    .line 41
    sub-long v11, v7, v11

    .line 42
    .line 43
    mul-long/2addr v11, v9

    .line 44
    add-long/2addr v11, p1

    .line 45
    mul-long/2addr v7, v9

    .line 46
    add-long/2addr p1, v7

    .line 47
    sub-long v7, v11, v5

    .line 48
    .line 49
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    .line 50
    .line 51
    .line 52
    move-result-wide v7

    .line 53
    sub-long v5, p1, v5

    .line 54
    .line 55
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    .line 56
    .line 57
    .line 58
    move-result-wide v5

    .line 59
    cmp-long v0, v7, v5

    .line 60
    .line 61
    if-gez v0, :cond_1

    .line 62
    .line 63
    move-wide p1, v11

    .line 64
    :cond_1
    mul-long/2addr p1, v3

    .line 65
    div-long/2addr p1, v1

    .line 66
    invoke-virtual {p0, p1, p2}, Lb3/l;->a(J)J

    .line 67
    .line 68
    .line 69
    move-result-wide p1

    .line 70
    return-wide p1
.end method

.method public final c()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lb3/l;->a:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lb3/l;->c:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    move-wide v0, v2

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lb3/l;->b:J

    :goto_0
    return-wide v0
.end method

.method public final declared-synchronized d(J)V
    .locals 4

    .line 1
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lb3/l;->c:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/i0;->m(Z)V

    iput-wide p1, p0, Lb3/l;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
