.class public interface abstract La2/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lz1/e;

.field public static final b:Lz1/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lz1/e;

    invoke-direct {v0}, Lz1/e;-><init>()V

    sput-object v0, La2/r;->a:Lz1/e;

    new-instance v0, Lz1/a;

    invoke-direct {v0}, Lz1/a;-><init>()V

    sput-object v0, La2/r;->b:Lz1/a;

    return-void
.end method

.method public static w(La2/r;Z)V
    .locals 2

    .line 1
    :goto_0
    invoke-interface {p0}, La2/r;->getParent()La2/c0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    instance-of v1, v0, La2/b0;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    move-object p0, v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    if-nez v0, :cond_1

    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    check-cast v0, La2/b0;

    .line 17
    .line 18
    invoke-virtual {v0, p0}, La2/e0;->x(La2/r;)V

    .line 19
    .line 20
    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    invoke-virtual {v0, p0, p1}, La2/e0;->A(La2/r;Z)V

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    const/4 p1, 0x0

    .line 29
    invoke-virtual {v0, p0, p1}, La2/e0;->A(La2/r;Z)V

    .line 30
    .line 31
    .line 32
    :goto_1
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public b(Lu1/x;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public abstract c(II)V
.end method

.method public d()Lz1/g;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract e(Lr1/o;)V
.end method

.method public abstract f()V
.end method

.method public abstract getParent()La2/c0;
.end method

.method public h(La2/x;)Z
    .locals 8

    .line 1
    invoke-interface {p0}, La2/r;->d()Lz1/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lz1/f;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    invoke-interface {p0}, La2/r;->d()Lz1/g;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lz1/f;

    .line 16
    .line 17
    sget-object v2, La2/r;->b:Lz1/a;

    .line 18
    .line 19
    iget v3, v0, Lz1/f;->j:I

    .line 20
    .line 21
    int-to-float v3, v3

    .line 22
    const/high16 v4, 0x3f000000    # 0.5f

    .line 23
    .line 24
    mul-float/2addr v3, v4

    .line 25
    iget v4, v0, Lz1/f;->k:I

    .line 26
    .line 27
    int-to-float v4, v4

    .line 28
    iput v3, v2, Lz1/a;->a:F

    .line 29
    .line 30
    iput v4, v2, Lz1/a;->b:F

    .line 31
    .line 32
    sget-object v3, Lz1/f;->w:Ljava/lang/Object;

    .line 33
    .line 34
    monitor-enter v3

    .line 35
    :try_start_0
    sget v4, Lz1/f;->x:F

    .line 36
    .line 37
    sget v5, Lz1/f;->y:F

    .line 38
    .line 39
    const/4 v6, 0x0

    .line 40
    sput v6, Lz1/f;->x:F

    .line 41
    .line 42
    sput v6, Lz1/f;->y:F

    .line 43
    .line 44
    sget-object v7, La2/r;->a:Lz1/e;

    .line 45
    .line 46
    invoke-virtual {v0, v2, v7}, Lz1/f;->d(Lz1/b;Lz1/b;)V

    .line 47
    .line 48
    .line 49
    sput v4, Lz1/f;->x:F

    .line 50
    .line 51
    sput v5, Lz1/f;->y:F

    .line 52
    .line 53
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    iget v2, v7, Lz1/e;->b:F

    .line 55
    .line 56
    iget v3, v7, Lz1/e;->a:F

    .line 57
    .line 58
    invoke-static {v6}, Lz1/f;->p(F)F

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    iget p1, p1, La2/x;->s:F

    .line 63
    .line 64
    sub-float v5, v4, p1

    .line 65
    .line 66
    neg-float v4, v4

    .line 67
    sub-float/2addr v4, p1

    .line 68
    cmpl-float p1, v2, v5

    .line 69
    .line 70
    const/4 v6, 0x1

    .line 71
    if-lez p1, :cond_1

    .line 72
    .line 73
    iget p1, v0, Lz1/f;->f:F

    .line 74
    .line 75
    sub-float/2addr v2, v5

    .line 76
    sub-float/2addr p1, v2

    .line 77
    invoke-virtual {v0, v3, p1}, Lz1/f;->q(FF)V

    .line 78
    .line 79
    .line 80
    return v6

    .line 81
    :cond_1
    cmpg-float p1, v2, v4

    .line 82
    .line 83
    if-gez p1, :cond_2

    .line 84
    .line 85
    iget p1, v0, Lz1/f;->f:F

    .line 86
    .line 87
    sub-float/2addr v4, v2

    .line 88
    add-float/2addr v4, p1

    .line 89
    invoke-virtual {v0, v3, v4}, Lz1/f;->q(FF)V

    .line 90
    .line 91
    .line 92
    return v6

    .line 93
    :cond_2
    return v1

    .line 94
    :catchall_0
    move-exception p1

    .line 95
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    throw p1
.end method

.method public abstract i(Lo1/q;)Z
.end method

.method public abstract j()I
.end method

.method public abstract o(Z)V
.end method

.method public abstract p()Z
.end method

.method public q()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-static {p0, v0}, La2/r;->w(La2/r;Z)V

    return-void
.end method

.method public abstract r()V
.end method

.method public abstract s()Z
.end method

.method public abstract t(Lo1/q;)Z
.end method

.method public abstract u(Lu1/w;)Z
.end method

.method public abstract v(La2/c0;)V
.end method

.method public abstract y()V
.end method
