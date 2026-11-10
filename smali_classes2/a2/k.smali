.class public La2/k;
.super La2/s;
.source "SourceFile"

# interfaces
.implements La2/l;


# instance fields
.field public h:Lv1/c;

.field public final i:Lz1/f;

.field public j:F

.field public k:F

.field public l:I

.field public m:I

.field public final n:Lz1/d;

.field public final o:Lz1/e;

.field public p:F

.field public q:F

.field public r:Z

.field public s:Z


# direct methods
.method public constructor <init>(Lq1/f;Lv1/c;)V
    .locals 7

    .line 1
    invoke-direct {p0}, La2/s;-><init>()V

    new-instance v0, Lz1/d;

    invoke-direct {v0}, Lz1/d;-><init>()V

    iput-object v0, p0, La2/k;->n:Lz1/d;

    new-instance v0, Lz1/e;

    invoke-direct {v0}, Lz1/e;-><init>()V

    iput-object v0, p0, La2/k;->o:Lz1/e;

    const/4 v0, 0x1

    iput-boolean v0, p0, La2/k;->r:Z

    iput-boolean v0, p0, La2/k;->s:Z

    iput-object p2, p0, La2/k;->h:Lv1/c;

    new-instance p2, Lz1/f;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lz1/f;-><init>(Lq1/f;FFII)V

    iput-object p2, p0, La2/k;->i:Lz1/f;

    return-void
.end method


# virtual methods
.method public A(Lo1/q;Z)Z
    .locals 4

    .line 1
    sget-object v0, Lz1/f;->w:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget v1, Lz1/f;->x:F

    .line 5
    .line 6
    sget v2, Lz1/f;->y:F

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    sput v3, Lz1/f;->y:F

    .line 10
    .line 11
    sput v3, Lz1/f;->x:F

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    iget-object v3, p0, La2/k;->i:Lz1/f;

    .line 16
    .line 17
    invoke-virtual {v3}, Lz1/f;->n()V

    .line 18
    .line 19
    .line 20
    iget-object v3, v3, Lz1/f;->q:Landroidx/fragment/app/h;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v3, p0, La2/k;->i:Lz1/f;

    .line 24
    .line 25
    invoke-virtual {v3}, Lz1/f;->n()V

    .line 26
    .line 27
    .line 28
    iget-object v3, v3, Lz1/f;->r:Landroidx/fragment/app/h;

    .line 29
    .line 30
    :goto_0
    sput v1, Lz1/f;->x:F

    .line 31
    .line 32
    sput v2, Lz1/f;->y:F

    .line 33
    .line 34
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    iget-object v0, p0, La2/k;->h:Lv1/c;

    .line 36
    .line 37
    invoke-interface {v0}, Lv1/c;->d()V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, La2/k;->i:Lz1/f;

    .line 41
    .line 42
    iget-object v1, v0, Lz1/f;->s:Lo1/p;

    .line 43
    .line 44
    if-eqz p2, :cond_1

    .line 45
    .line 46
    iget-object p2, v0, Lz1/f;->v:Lq1/f;

    .line 47
    .line 48
    iget-object p2, p2, Lq1/f;->C:Landroidx/fragment/app/h;

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    iget-object p2, v0, Lz1/f;->v:Lq1/f;

    .line 52
    .line 53
    iget-object p2, p2, Lq1/f;->D:Landroidx/fragment/app/h;

    .line 54
    .line 55
    :goto_1
    const/4 v0, 0x1

    .line 56
    invoke-static {v1, v3, p2, p1, v0}, Lo1/r;->b(Lo1/p;Landroidx/fragment/app/h;Landroidx/fragment/app/h;Lo1/q;Z)V

    .line 57
    .line 58
    .line 59
    const/4 p1, 0x0

    .line 60
    return p1

    .line 61
    :catchall_0
    move-exception p1

    .line 62
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    throw p1
.end method

.method public final B(FF)V
    .locals 5

    .line 1
    iget-object v0, p0, La2/k;->i:Lz1/f;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lz1/f;->q(FF)V

    .line 4
    .line 5
    .line 6
    iget p1, v0, Lz1/f;->e:F

    .line 7
    .line 8
    iget p2, v0, Lz1/f;->f:F

    .line 9
    .line 10
    iget-object v0, p0, La2/k;->n:Lz1/d;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput v1, v0, Lz1/d;->a:F

    .line 14
    .line 15
    iput v1, v0, Lz1/d;->b:F

    .line 16
    .line 17
    const/high16 v1, 0x3f800000    # 1.0f

    .line 18
    .line 19
    iput v1, v0, Lz1/d;->c:F

    .line 20
    .line 21
    sget-object v2, Lo1/r;->a:Ljava/util/ArrayList;

    .line 22
    .line 23
    const v2, 0x3c8efa35

    .line 24
    .line 25
    .line 26
    mul-float v3, p2, v2

    .line 27
    .line 28
    invoke-virtual {v0, v3}, Lz1/d;->c(F)V

    .line 29
    .line 30
    .line 31
    mul-float/2addr v2, p1

    .line 32
    invoke-virtual {v0, v2}, Lz1/d;->b(F)V

    .line 33
    .line 34
    .line 35
    sget v2, Lz1/f;->D:F

    .line 36
    .line 37
    iget v3, v0, Lz1/d;->c:F

    .line 38
    .line 39
    div-float/2addr v2, v3

    .line 40
    iget v3, v0, Lz1/d;->a:F

    .line 41
    .line 42
    mul-float/2addr v3, v2

    .line 43
    iget v0, v0, Lz1/d;->b:F

    .line 44
    .line 45
    mul-float/2addr v0, v2

    .line 46
    add-float/2addr v3, v1

    .line 47
    const/high16 v2, 0x40000000    # 2.0f

    .line 48
    .line 49
    div-float/2addr v3, v2

    .line 50
    add-float/2addr v0, v1

    .line 51
    div-float/2addr v0, v2

    .line 52
    iget v4, p0, La2/k;->l:I

    .line 53
    .line 54
    int-to-float v4, v4

    .line 55
    mul-float/2addr v3, v4

    .line 56
    iput v3, p0, La2/k;->j:F

    .line 57
    .line 58
    iget v3, p0, La2/k;->m:I

    .line 59
    .line 60
    int-to-float v3, v3

    .line 61
    mul-float/2addr v0, v3

    .line 62
    iput v0, p0, La2/k;->k:F

    .line 63
    .line 64
    neg-float v0, p1

    .line 65
    invoke-static {}, Lz1/f;->o()F

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    div-float/2addr v0, v3

    .line 70
    iput v0, p0, La2/k;->p:F

    .line 71
    .line 72
    invoke-static {p1}, Lz1/f;->p(F)F

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    div-float/2addr p2, p1

    .line 77
    iget p1, p0, La2/k;->p:F

    .line 78
    .line 79
    add-float/2addr p1, v1

    .line 80
    div-float/2addr p1, v2

    .line 81
    add-float/2addr p2, v1

    .line 82
    div-float/2addr p2, v2

    .line 83
    iget v0, p0, La2/k;->l:I

    .line 84
    .line 85
    int-to-float v0, v0

    .line 86
    mul-float/2addr p1, v0

    .line 87
    iput p1, p0, La2/k;->p:F

    .line 88
    .line 89
    iget p1, p0, La2/k;->m:I

    .line 90
    .line 91
    int-to-float p1, p1

    .line 92
    mul-float/2addr p2, p1

    .line 93
    iput p2, p0, La2/k;->q:F

    .line 94
    .line 95
    return-void
.end method

.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, La2/k;->h:Lv1/c;

    invoke-interface {v0}, Lv1/c;->a()V

    return-void
.end method

.method public c(II)V
    .locals 1

    .line 1
    iput p1, p0, La2/k;->l:I

    iput p2, p0, La2/k;->m:I

    iget-object v0, p0, La2/k;->i:Lz1/f;

    invoke-virtual {v0, p1, p2}, Lz1/f;->c(II)V

    return-void
.end method

.method public final i(Lo1/q;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, La2/s;->p()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v0, p0, La2/k;->h:Lv1/c;

    .line 10
    .line 11
    invoke-interface {v0}, Lv1/c;->b()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v2, p0, La2/k;->h:Lv1/c;

    .line 16
    .line 17
    invoke-interface {v2}, Lv1/c;->c()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    iget-object v3, p0, La2/k;->i:Lz1/f;

    .line 22
    .line 23
    invoke-virtual {v3, v0, v2}, Lz1/f;->l(II)V

    .line 24
    .line 25
    .line 26
    iget-boolean v0, p0, La2/k;->s:Z

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    invoke-virtual {p0, p1, v0}, La2/k;->A(Lo1/q;Z)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    return p1

    .line 36
    :cond_1
    return v1
.end method

.method public final j()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final t(Lo1/q;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, La2/s;->p()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v0, p0, La2/k;->h:Lv1/c;

    .line 10
    .line 11
    invoke-interface {v0}, Lv1/c;->b()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v2, p0, La2/k;->h:Lv1/c;

    .line 16
    .line 17
    invoke-interface {v2}, Lv1/c;->c()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    iget-object v3, p0, La2/k;->i:Lz1/f;

    .line 22
    .line 23
    invoke-virtual {v3, v0, v2}, Lz1/f;->l(II)V

    .line 24
    .line 25
    .line 26
    iget-boolean v0, p0, La2/k;->r:Z

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0, p1, v1}, La2/k;->A(Lo1/q;Z)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    return p1

    .line 35
    :cond_1
    return v1
.end method
