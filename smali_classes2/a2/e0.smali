.class public abstract La2/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La2/c0;


# instance fields
.field public c:La2/c0;

.field public d:La2/q;

.field public final e:Ljava/util/List;

.field public final f:Lq1/f;

.field public g:I

.field public h:La2/r;

.field public i:La2/r;

.field public final j:Lu1/w;

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:I

.field public o:I


# direct methods
.method public constructor <init>(Lq1/f;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, La2/e0;->e:Ljava/util/List;

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, La2/e0;->k:Z

    .line 17
    .line 18
    iput-boolean v0, p0, La2/e0;->l:Z

    .line 19
    .line 20
    iput-boolean v0, p0, La2/e0;->m:Z

    .line 21
    .line 22
    iput v0, p0, La2/e0;->n:I

    .line 23
    .line 24
    iput v0, p0, La2/e0;->o:I

    .line 25
    .line 26
    iput-object p1, p0, La2/e0;->f:Lq1/f;

    .line 27
    .line 28
    new-instance p1, Lu1/w;

    .line 29
    .line 30
    new-instance v1, Lz1/a;

    .line 31
    .line 32
    const v2, 0x461c4000    # 10000.0f

    .line 33
    .line 34
    .line 35
    invoke-direct {v1, v2, v2}, Lz1/a;-><init>(FF)V

    .line 36
    .line 37
    .line 38
    invoke-direct {p1, v1}, Lu1/w;-><init>(Lz1/b;)V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, La2/e0;->j:Lu1/w;

    .line 42
    .line 43
    const/16 v1, 0x8

    .line 44
    .line 45
    iput v1, p1, Lu1/w;->a:I

    .line 46
    .line 47
    iput v0, p1, Lu1/w;->f:I

    .line 48
    .line 49
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 50
    .line 51
    .line 52
    move-result-wide v0

    .line 53
    const-wide/32 v2, 0xf4240

    .line 54
    .line 55
    .line 56
    div-long/2addr v0, v2

    .line 57
    iput-wide v0, p1, Lu1/w;->h:J

    .line 58
    .line 59
    iput-wide v0, p1, Lu1/w;->g:J

    .line 60
    .line 61
    return-void
.end method

.method private C()V
    .locals 4

    .line 1
    invoke-virtual {p0}, La2/e0;->p()Z

    move-result v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, La2/e0;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    :try_start_0
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La2/r;

    invoke-interface {v2, v0}, La2/r;->o(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final A(La2/r;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, La2/e0;->e:Ljava/util/List;

    if-eqz p2, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_0
    invoke-interface {p1, p0}, La2/r;->v(La2/c0;)V

    iget p2, p0, La2/e0;->n:I

    iget v0, p0, La2/e0;->o:I

    invoke-interface {p1, p2, v0}, La2/r;->c(II)V

    iget-object p1, p0, La2/e0;->f:Lq1/f;

    invoke-virtual {p1}, Lq1/f;->d()V

    return-void
.end method

.method public final B(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, La2/e0;->p()Z

    move-result v0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean p1, p0, La2/e0;->k:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, La2/e0;->C()V

    :cond_1
    return-void
.end method

.method public final a()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, La2/e0;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La2/r;

    invoke-interface {v1}, La2/r;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Lu1/x;)Z
    .locals 4

    .line 1
    iget-object v0, p0, La2/e0;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    const/4 v3, -0x1

    if-le v1, v3, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La2/r;

    invoke-interface {v3, p1}, La2/r;->b(Lu1/x;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final c(II)V
    .locals 4

    .line 1
    iput p1, p0, La2/e0;->n:I

    iput p2, p0, La2/e0;->o:I

    iget-object v0, p0, La2/e0;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La2/r;

    invoke-interface {v3, p1, p2}, La2/r;->c(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final e(Lr1/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, La2/e0;->d:La2/q;

    return-void
.end method

.method public final f()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, La2/e0;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La2/r;

    invoke-interface {v1}, La2/r;->f()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getParent()La2/c0;
    .locals 1

    .line 1
    iget-object v0, p0, La2/e0;->c:La2/c0;

    return-object v0
.end method

.method public final j()I
    .locals 1

    .line 1
    iget-object v0, p0, La2/e0;->i:La2/r;

    invoke-interface {v0}, La2/r;->j()I

    move-result v0

    return v0
.end method

.method public final m()La2/r;
    .locals 1

    .line 1
    iget-object v0, p0, La2/e0;->h:La2/r;

    return-object v0
.end method

.method public final n()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, La2/e0;->e:Ljava/util/List;

    return-object v0
.end method

.method public final o(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, La2/e0;->p()Z

    move-result v0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean p1, p0, La2/e0;->l:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, La2/e0;->C()V

    :cond_1
    return-void
.end method

.method public final p()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, La2/e0;->l:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, La2/e0;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final r()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, La2/e0;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La2/r;

    invoke-interface {v1}, La2/r;->r()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final s()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, La2/e0;->m:Z

    return v0
.end method

.method public u(Lu1/w;)Z
    .locals 10

    .line 1
    iget-boolean v0, p0, La2/e0;->m:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget v0, p1, Lu1/w;->e:I

    .line 8
    .line 9
    const/4 v2, -0x1

    .line 10
    if-ne v0, v2, :cond_1

    .line 11
    .line 12
    return v1

    .line 13
    :cond_1
    if-eqz v0, :cond_4

    .line 14
    .line 15
    iget v3, p0, La2/e0;->g:I

    .line 16
    .line 17
    if-ne v0, v3, :cond_4

    .line 18
    .line 19
    iget v0, p1, Lu1/w;->a:I

    .line 20
    .line 21
    const/4 v2, 0x5

    .line 22
    if-eq v0, v2, :cond_2

    .line 23
    .line 24
    const/4 v2, 0x7

    .line 25
    if-ne v0, v2, :cond_3

    .line 26
    .line 27
    :cond_2
    iput v1, p0, La2/e0;->g:I

    .line 28
    .line 29
    :cond_3
    iget-object v0, p0, La2/e0;->h:La2/r;

    .line 30
    .line 31
    invoke-interface {v0, p1}, La2/r;->u(Lu1/w;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    return p1

    .line 36
    :cond_4
    iget-object v3, p0, La2/e0;->e:Ljava/util/List;

    .line 37
    .line 38
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    const/4 v5, 0x1

    .line 43
    sub-int/2addr v4, v5

    .line 44
    :goto_0
    const/4 v6, 0x0

    .line 45
    iget-object v7, p0, La2/e0;->j:Lu1/w;

    .line 46
    .line 47
    if-le v4, v2, :cond_b

    .line 48
    .line 49
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    check-cast v8, La2/r;

    .line 54
    .line 55
    if-eqz v8, :cond_a

    .line 56
    .line 57
    invoke-interface {v8, p1}, La2/r;->u(Lu1/w;)Z

    .line 58
    .line 59
    .line 60
    move-result v9

    .line 61
    if-eqz v9, :cond_a

    .line 62
    .line 63
    iget-object p1, p0, La2/e0;->h:La2/r;

    .line 64
    .line 65
    if-eq p1, v8, :cond_6

    .line 66
    .line 67
    iget-object p1, p0, La2/e0;->i:La2/r;

    .line 68
    .line 69
    if-nez p1, :cond_5

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_5
    invoke-interface {p1, v7}, La2/r;->u(Lu1/w;)Z

    .line 73
    .line 74
    .line 75
    iput-object v6, p0, La2/e0;->i:La2/r;

    .line 76
    .line 77
    :cond_6
    :goto_1
    if-nez v0, :cond_7

    .line 78
    .line 79
    iget p1, p0, La2/e0;->g:I

    .line 80
    .line 81
    if-nez p1, :cond_9

    .line 82
    .line 83
    :cond_7
    iput v0, p0, La2/e0;->g:I

    .line 84
    .line 85
    iput-object v8, p0, La2/e0;->h:La2/r;

    .line 86
    .line 87
    iput-object v8, p0, La2/e0;->i:La2/r;

    .line 88
    .line 89
    :goto_2
    iget-object p1, p0, La2/e0;->i:La2/r;

    .line 90
    .line 91
    instance-of v0, p1, La2/c0;

    .line 92
    .line 93
    if-eqz v0, :cond_8

    .line 94
    .line 95
    check-cast p1, La2/c0;

    .line 96
    .line 97
    invoke-interface {p1}, La2/c0;->m()La2/r;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    iput-object p1, p0, La2/e0;->i:La2/r;

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_8
    iget-object v0, p0, La2/e0;->f:Lq1/f;

    .line 105
    .line 106
    iget-object v0, v0, Lq1/f;->F:Lu1/i;

    .line 107
    .line 108
    invoke-interface {p1}, La2/r;->j()I

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    iget-object v0, v0, Lu1/i;->r:Lu1/v;

    .line 113
    .line 114
    iput p1, v0, Lu1/v;->g:I

    .line 115
    .line 116
    :cond_9
    return v5

    .line 117
    :cond_a
    add-int/lit8 v4, v4, -0x1

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_b
    iget-object p1, p0, La2/e0;->i:La2/r;

    .line 121
    .line 122
    if-nez p1, :cond_c

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_c
    invoke-interface {p1, v7}, La2/r;->u(Lu1/w;)Z

    .line 126
    .line 127
    .line 128
    iput-object v6, p0, La2/e0;->i:La2/r;

    .line 129
    .line 130
    :goto_3
    return v1
.end method

.method public final v(La2/c0;)V
    .locals 0

    .line 1
    iput-object p1, p0, La2/e0;->c:La2/c0;

    return-void
.end method

.method public final x(La2/r;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    invoke-interface {p1, v0}, La2/r;->v(La2/c0;)V

    new-instance v0, La2/d0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, La2/d0;-><init>(La2/e0;La2/r;I)V

    iget-object p1, p0, La2/e0;->f:Lq1/f;

    invoke-virtual {p1, v0}, Lq1/f;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final y()V
    .locals 2

    .line 1
    iget-object v0, p0, La2/e0;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v1, p0, La2/e0;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La2/r;

    invoke-interface {v1}, La2/r;->y()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, La2/e0;->f:Lq1/f;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, La2/e0;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, La2/e0;->d:La2/q;

    if-eqz v0, :cond_1

    invoke-interface {v0}, La2/q;->s()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final z(La2/r;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, La2/e0;->A(La2/r;Z)V

    return-void
.end method
