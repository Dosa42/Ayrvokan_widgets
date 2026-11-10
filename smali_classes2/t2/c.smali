.class public final Lt2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt2/e;
.implements Lt2/d;


# instance fields
.field public final f:Lt2/e;

.field public g:Lt2/d;

.field public h:[Lt2/b;

.field public i:J

.field public final j:J


# direct methods
.method public constructor <init>(Lw2/i;J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt2/c;->f:Lt2/e;

    const/4 p1, 0x0

    new-array p1, p1, [Lt2/b;

    iput-object p1, p0, Lt2/c;->h:[Lt2/b;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lt2/c;->i:J

    iput-wide p2, p0, Lt2/c;->j:J

    return-void
.end method


# virtual methods
.method public final a(Lt2/e;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lt2/c;->g:Lt2/d;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-interface {p1, p0}, Lt2/d;->a(Lt2/e;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final b(Lt2/u;)V
    .locals 0

    .line 1
    check-cast p1, Lt2/e;

    .line 2
    .line 3
    iget-object p1, p0, Lt2/c;->g:Lt2/d;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-interface {p1, p0}, Lt2/t;->b(Lt2/u;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final c()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lt2/c;->i:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lt2/c;->f:Lt2/e;

    invoke-interface {v0}, Lt2/u;->e()Z

    move-result v0

    return v0
.end method

.method public final f(JLf2/h0;)J
    .locals 8

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    return-wide v0

    .line 8
    :cond_0
    iget-wide v2, p3, Lf2/h0;->a:J

    .line 9
    .line 10
    sub-long v4, p1, v0

    .line 11
    .line 12
    sget v6, Lb3/n;->a:I

    .line 13
    .line 14
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    const-wide/high16 v4, -0x8000000000000000L

    .line 23
    .line 24
    iget-wide v6, p0, Lt2/c;->j:J

    .line 25
    .line 26
    cmp-long v4, v6, v4

    .line 27
    .line 28
    if-nez v4, :cond_1

    .line 29
    .line 30
    const-wide v4, 0x7fffffffffffffffL

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    sub-long v4, v6, p1

    .line 37
    .line 38
    :goto_0
    iget-wide v6, p3, Lf2/h0;->b:J

    .line 39
    .line 40
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 41
    .line 42
    .line 43
    move-result-wide v4

    .line 44
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 45
    .line 46
    .line 47
    move-result-wide v0

    .line 48
    iget-wide v4, p3, Lf2/h0;->a:J

    .line 49
    .line 50
    cmp-long v4, v2, v4

    .line 51
    .line 52
    if-nez v4, :cond_2

    .line 53
    .line 54
    cmp-long v4, v0, v6

    .line 55
    .line 56
    if-nez v4, :cond_2

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    new-instance p3, Lf2/h0;

    .line 60
    .line 61
    invoke-direct {p3, v2, v3, v0, v1}, Lf2/h0;-><init>(JJ)V

    .line 62
    .line 63
    .line 64
    :goto_1
    iget-object v0, p0, Lt2/c;->f:Lt2/e;

    .line 65
    .line 66
    invoke-interface {v0, p1, p2, p3}, Lt2/e;->f(JLf2/h0;)J

    .line 67
    .line 68
    .line 69
    move-result-wide p1

    .line 70
    return-wide p1
.end method

.method public final g()Lt2/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lt2/c;->f:Lt2/e;

    invoke-interface {v0}, Lt2/e;->g()Lt2/x;

    move-result-object v0

    return-object v0
.end method

.method public final k([Lz2/p;[Z[Lt2/s;[ZJ)J
    .locals 12

    .line 1
    move-object v0, p0

    move-object v1, p3

    array-length v2, v1

    new-array v2, v2, [Lt2/b;

    iput-object v2, v0, Lt2/c;->h:[Lt2/b;

    array-length v2, v1

    new-array v2, v2, [Lt2/s;

    const/4 v10, 0x0

    move v3, v10

    :goto_0
    array-length v4, v1

    const/4 v11, 0x0

    if-ge v3, v4, :cond_1

    iget-object v4, v0, Lt2/c;->h:[Lt2/b;

    aget-object v5, v1, v3

    check-cast v5, Lt2/b;

    aput-object v5, v4, v3

    if-eqz v5, :cond_0

    iget-object v11, v5, Lt2/b;->f:Lt2/s;

    :cond_0
    aput-object v11, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lt2/c;->f:Lt2/e;

    move-object v4, p1

    move-object v5, p2

    move-object v6, v2

    move-object/from16 v7, p4

    move-wide/from16 v8, p5

    invoke-interface/range {v3 .. v9}, Lt2/e;->k([Lz2/p;[Z[Lt2/s;[ZJ)J

    move-result-wide v3

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v5, v0, Lt2/c;->i:J

    cmp-long v5, v3, p5

    if-eqz v5, :cond_3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-ltz v5, :cond_2

    iget-wide v5, v0, Lt2/c;->j:J

    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v7, v5, v7

    if-eqz v7, :cond_3

    cmp-long v5, v3, v5

    if-gtz v5, :cond_2

    goto :goto_1

    :cond_2
    move v5, v10

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v5, 0x1

    :goto_2
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/i0;->m(Z)V

    :goto_3
    array-length v5, v1

    if-ge v10, v5, :cond_7

    aget-object v5, v2, v10

    if-nez v5, :cond_4

    iget-object v5, v0, Lt2/c;->h:[Lt2/b;

    aput-object v11, v5, v10

    goto :goto_4

    :cond_4
    iget-object v6, v0, Lt2/c;->h:[Lt2/b;

    aget-object v7, v6, v10

    if-eqz v7, :cond_5

    iget-object v7, v7, Lt2/b;->f:Lt2/s;

    if-eq v7, v5, :cond_6

    :cond_5
    new-instance v7, Lt2/b;

    invoke-direct {v7, p0, v5}, Lt2/b;-><init>(Lt2/c;Lt2/s;)V

    aput-object v7, v6, v10

    :cond_6
    :goto_4
    iget-object v5, v0, Lt2/c;->h:[Lt2/b;

    aget-object v5, v5, v10

    aput-object v5, v1, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_7
    return-wide v3
.end method

.method public final m()J
    .locals 7

    .line 1
    iget-object v0, p0, Lt2/c;->f:Lt2/e;

    invoke-interface {v0}, Lt2/u;->m()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-wide v4, p0, Lt2/c;->j:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    cmp-long v4, v0, v4

    if-ltz v4, :cond_0

    goto :goto_0

    :cond_0
    return-wide v0

    :cond_1
    :goto_0
    return-wide v2
.end method

.method public final n()V
    .locals 1

    .line 1
    iget-object v0, p0, Lt2/c;->f:Lt2/e;

    invoke-interface {v0}, Lt2/e;->n()V

    return-void
.end method

.method public final o(JZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lt2/c;->f:Lt2/e;

    invoke-interface {v0, p1, p2, p3}, Lt2/e;->o(JZ)V

    return-void
.end method

.method public final r(J)J
    .locals 5

    .line 1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    iput-wide v0, p0, Lt2/c;->i:J

    .line 7
    .line 8
    iget-object v0, p0, Lt2/c;->h:[Lt2/b;

    .line 9
    .line 10
    array-length v1, v0

    .line 11
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    :goto_0
    if-ge v3, v1, :cond_1

    .line 14
    .line 15
    aget-object v4, v0, v3

    .line 16
    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    iput-boolean v2, v4, Lt2/b;->g:Z

    .line 20
    .line 21
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object v0, p0, Lt2/c;->f:Lt2/e;

    .line 25
    .line 26
    invoke-interface {v0, p1, p2}, Lt2/e;->r(J)J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    cmp-long p1, v0, p1

    .line 31
    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    const-wide/16 p1, 0x0

    .line 35
    .line 36
    cmp-long p1, v0, p1

    .line 37
    .line 38
    if-ltz p1, :cond_3

    .line 39
    .line 40
    iget-wide p1, p0, Lt2/c;->j:J

    .line 41
    .line 42
    const-wide/high16 v3, -0x8000000000000000L

    .line 43
    .line 44
    cmp-long v3, p1, v3

    .line 45
    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    cmp-long p1, v0, p1

    .line 49
    .line 50
    if-gtz p1, :cond_3

    .line 51
    .line 52
    :cond_2
    const/4 v2, 0x1

    .line 53
    :cond_3
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/i0;->m(Z)V

    .line 54
    .line 55
    .line 56
    return-wide v0
.end method

.method public final t()J
    .locals 7

    .line 1
    iget-object v0, p0, Lt2/c;->f:Lt2/e;

    invoke-interface {v0}, Lt2/u;->t()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-wide v4, p0, Lt2/c;->j:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    cmp-long v4, v0, v4

    if-ltz v4, :cond_0

    goto :goto_0

    :cond_0
    return-wide v0

    :cond_1
    :goto_0
    return-wide v2
.end method

.method public final u()J
    .locals 9

    .line 1
    invoke-virtual {p0}, Lt2/c;->c()Z

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_1

    iget-wide v3, p0, Lt2/c;->i:J

    iput-wide v1, p0, Lt2/c;->i:J

    invoke-virtual {p0}, Lt2/c;->u()J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-eqz v0, :cond_0

    move-wide v3, v5

    :cond_0
    return-wide v3

    :cond_1
    iget-object v0, p0, Lt2/c;->f:Lt2/e;

    invoke-interface {v0}, Lt2/e;->u()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    return-wide v1

    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, v3, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/i0;->m(Z)V

    iget-wide v5, p0, Lt2/c;->j:J

    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v0, v5, v7

    if-eqz v0, :cond_5

    cmp-long v0, v3, v5

    if-gtz v0, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :cond_5
    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/i0;->m(Z)V

    return-wide v3
.end method

.method public final v(J)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lt2/c;->f:Lt2/e;

    invoke-interface {v0, p1, p2}, Lt2/u;->v(J)Z

    move-result p1

    return p1
.end method

.method public final x(Lt2/d;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lt2/c;->g:Lt2/d;

    iget-object p1, p0, Lt2/c;->f:Lt2/e;

    invoke-interface {p1, p0, p2, p3}, Lt2/e;->x(Lt2/d;J)V

    return-void
.end method

.method public final y(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lt2/c;->f:Lt2/e;

    invoke-interface {v0, p1, p2}, Lt2/u;->y(J)V

    return-void
.end method
