.class public Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr1/c;


# instance fields
.field public a:Lq1/f;

.field public b:Lz1/f;

.field public c:La2/b;

.field public d:La2/p;

.field public e:La2/a;

.field public f:Z

.field public g:I

.field public h:I

.field public i:F

.field public j:F


# direct methods
.method public constructor <init>(Lr1/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->c(Lr1/q;)V

    return-void
.end method


# virtual methods
.method public final a()La2/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->c:La2/b;

    return-object v0
.end method

.method public final declared-synchronized b()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->c:La2/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    iget-object v1, v0, La2/b;->d:La2/c0;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-interface {v1, v0}, La2/c0;->x(La2/r;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->c:La2/b;

    .line 16
    .line 17
    invoke-virtual {v0}, La2/b;->y()V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->c:La2/b;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->a:Lq1/f;

    .line 24
    .line 25
    new-instance v1, Lo0/n;

    .line 26
    .line 27
    const/4 v2, 0x5

    .line 28
    invoke-direct {v1, p0, v2}, Lo0/n;-><init>(Ljava/lang/Object;I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lq1/f;->c(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    .line 33
    .line 34
    monitor-exit p0

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    monitor-exit p0

    .line 38
    throw v0
.end method

.method public final c(Lr1/q;)V
    .locals 10

    .line 1
    iget-object v0, p1, Lr1/q;->a:La2/a;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->e:La2/a;

    .line 4
    .line 5
    iget-boolean v0, p1, Lr1/q;->g:Z

    .line 6
    .line 7
    iget-object v1, p1, Lr1/q;->l:Lc/a;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget v0, p1, Lr1/q;->e:I

    .line 12
    .line 13
    iget v2, p1, Lr1/q;->i:F

    .line 14
    .line 15
    invoke-interface {v1, v2}, Ly1/a;->u(F)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    iget v3, p1, Lr1/q;->i:F

    .line 20
    .line 21
    invoke-interface {v1, v3}, Ly1/a;->g(F)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    add-int/2addr v3, v2

    .line 26
    add-int/2addr v3, v0

    .line 27
    iput v3, p1, Lr1/q;->e:I

    .line 28
    .line 29
    iget v0, p1, Lr1/q;->f:I

    .line 30
    .line 31
    iget v2, p1, Lr1/q;->i:F

    .line 32
    .line 33
    iget v3, p1, Lr1/q;->h:F

    .line 34
    .line 35
    invoke-interface {v1, v2, v3}, Ly1/a;->w(FF)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    iget v3, p1, Lr1/q;->i:F

    .line 40
    .line 41
    invoke-interface {v1, v3}, Ly1/a;->l(F)I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    add-int/2addr v3, v2

    .line 46
    add-int/2addr v3, v0

    .line 47
    iput v3, p1, Lr1/q;->f:I

    .line 48
    .line 49
    :cond_0
    new-instance v0, Lz1/f;

    .line 50
    .line 51
    iget-object v5, p1, Lr1/q;->k:Lq1/f;

    .line 52
    .line 53
    iget v6, p1, Lr1/q;->c:F

    .line 54
    .line 55
    iget v7, p1, Lr1/q;->d:F

    .line 56
    .line 57
    iget v8, p1, Lr1/q;->e:I

    .line 58
    .line 59
    iget v9, p1, Lr1/q;->f:I

    .line 60
    .line 61
    move-object v4, v0

    .line 62
    invoke-direct/range {v4 .. v9}, Lz1/f;-><init>(Lq1/f;FFII)V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->b:Lz1/f;

    .line 66
    .line 67
    new-instance v2, La2/b;

    .line 68
    .line 69
    iget-object v3, p1, Lr1/q;->k:Lq1/f;

    .line 70
    .line 71
    iget-object v4, v3, Lq1/f;->q:Lo1/q;

    .line 72
    .line 73
    invoke-direct {v2, v3, v0, v4}, La2/b;-><init>(Lq1/f;Lz1/f;Lo1/q;)V

    .line 74
    .line 75
    .line 76
    iput-object v2, p0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->c:La2/b;

    .line 77
    .line 78
    const/4 v0, 0x1

    .line 79
    iput-boolean v0, v2, La2/b;->i:Z

    .line 80
    .line 81
    iput-object v3, p0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->a:Lq1/f;

    .line 82
    .line 83
    new-instance v0, La2/p;

    .line 84
    .line 85
    new-instance v2, Lz1/c;

    .line 86
    .line 87
    iget v4, p1, Lr1/q;->e:I

    .line 88
    .line 89
    iget v5, p1, Lr1/q;->f:I

    .line 90
    .line 91
    invoke-direct {v2, v4, v5}, Lz1/c;-><init>(II)V

    .line 92
    .line 93
    .line 94
    new-instance v4, Lr1/m;

    .line 95
    .line 96
    invoke-direct {v4, p0, p1}, Lr1/m;-><init>(Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;Lr1/q;)V

    .line 97
    .line 98
    .line 99
    invoke-direct {v0, v3, v2, v1, v4}, La2/p;-><init>(Lq1/f;Lz1/c;Ly1/a;Lc1/b;)V

    .line 100
    .line 101
    .line 102
    iput-object v0, p0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->d:La2/p;

    .line 103
    .line 104
    iget-object v1, p0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->b:Lz1/f;

    .line 105
    .line 106
    iput-object v1, v0, La2/p;->P:Lz1/g;

    .line 107
    .line 108
    iget-boolean v1, p1, Lr1/q;->j:Z

    .line 109
    .line 110
    iput-boolean v1, v0, La2/p;->T:Z

    .line 111
    .line 112
    iget v1, p1, Lr1/q;->i:F

    .line 113
    .line 114
    iget-object v0, v0, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Lcom/nomone/GeckoView/MyGeckoView;->setScale(F)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->e:La2/a;

    .line 120
    .line 121
    instance-of v1, v0, La2/i;

    .line 122
    .line 123
    if-eqz v1, :cond_1

    .line 124
    .line 125
    check-cast v0, La2/i;

    .line 126
    .line 127
    iget-object v0, v0, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 128
    .line 129
    iget v1, p1, Lr1/q;->i:F

    .line 130
    .line 131
    invoke-virtual {v0, v1}, Lcom/nomone/GeckoView/MyGeckoView;->setScale(F)V

    .line 132
    .line 133
    .line 134
    :cond_1
    iget-object v0, p0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->c:La2/b;

    .line 135
    .line 136
    iget-object v1, p0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->d:La2/p;

    .line 137
    .line 138
    invoke-virtual {v0, v1}, La2/b;->z(La2/r;)V

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->c:La2/b;

    .line 142
    .line 143
    iget-object v1, p0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->e:La2/a;

    .line 144
    .line 145
    invoke-virtual {v0, v1}, La2/b;->z(La2/r;)V

    .line 146
    .line 147
    .line 148
    iget v0, p1, Lr1/q;->h:F

    .line 149
    .line 150
    iget-boolean v1, p1, Lr1/q;->m:Z

    .line 151
    .line 152
    iget-boolean p1, p1, Lr1/q;->n:Z

    .line 153
    .line 154
    iget-object v2, p0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->d:La2/p;

    .line 155
    .line 156
    iget-object v2, v2, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 157
    .line 158
    new-instance v3, Lr1/l;

    .line 159
    .line 160
    invoke-direct {v3, p0, v0, v1, p1}, Lr1/l;-><init>(Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;FZZ)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2, v3}, Lcom/nomone/GeckoView/MyGeckoView;->a(Ln1/m;)V

    .line 164
    .line 165
    .line 166
    new-instance p1, Lr1/n;

    .line 167
    .line 168
    invoke-direct {p1, p0}, Lr1/n;-><init>(Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;)V

    .line 169
    .line 170
    .line 171
    iget-object v0, p0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->a:Lq1/f;

    .line 172
    .line 173
    iget-object v0, v0, Lq1/f;->k:Ljava/util/List;

    .line 174
    .line 175
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    iget-object v0, p0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->e:La2/a;

    .line 179
    .line 180
    new-instance v1, Lr1/o;

    .line 181
    .line 182
    invoke-direct {v1, p0, p1}, Lr1/o;-><init>(Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;Lr1/n;)V

    .line 183
    .line 184
    .line 185
    invoke-interface {v0, v1}, La2/r;->e(Lr1/o;)V

    .line 186
    .line 187
    .line 188
    return-void
.end method

.method public final d()Lz1/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->b:Lz1/f;

    return-object v0
.end method

.method public final e()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->d:La2/p;

    .line 2
    .line 3
    iget-object v1, v0, La2/p;->P:Lz1/g;

    .line 4
    .line 5
    check-cast v1, Lz1/f;

    .line 6
    .line 7
    iget-boolean v2, p0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->f:Z

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    iget v2, v1, Lz1/f;->j:I

    .line 12
    .line 13
    iput v2, p0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->g:I

    .line 14
    .line 15
    iget v2, v1, Lz1/f;->k:I

    .line 16
    .line 17
    iput v2, p0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->h:I

    .line 18
    .line 19
    iget v2, v1, Lz1/f;->e:F

    .line 20
    .line 21
    iput v2, p0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->i:F

    .line 22
    .line 23
    iget v2, v1, Lz1/f;->f:F

    .line 24
    .line 25
    iput v2, p0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->j:F

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    iput-boolean v2, p0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->f:Z

    .line 29
    .line 30
    :cond_0
    iget-object v2, v0, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/nomone/GeckoView/MyGeckoView;->getScale()F

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    iget-object v3, p0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->d:La2/p;

    .line 37
    .line 38
    iget-object v4, p0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->a:Lq1/f;

    .line 39
    .line 40
    invoke-virtual {v4}, Lq1/f;->a()I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    iget-object v0, v0, La2/p;->K:Ly1/a;

    .line 45
    .line 46
    invoke-interface {v0, v2}, Ly1/a;->u(F)I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    add-int/2addr v5, v4

    .line 51
    invoke-interface {v0, v2}, Ly1/a;->g(F)I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    add-int/2addr v4, v5

    .line 56
    iget-object v5, p0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->a:Lq1/f;

    .line 57
    .line 58
    iget v5, v5, Lq1/f;->z:I

    .line 59
    .line 60
    invoke-interface {v0}, Ly1/a;->C()I

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    invoke-interface {v0}, Ly1/a;->D()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    add-int/2addr v0, v6

    .line 69
    int-to-float v0, v0

    .line 70
    mul-float/2addr v2, v0

    .line 71
    float-to-int v0, v2

    .line 72
    add-int/2addr v5, v0

    .line 73
    add-int/lit8 v5, v5, 0x10

    .line 74
    .line 75
    invoke-virtual {v3, v4, v5}, La2/p;->L(II)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->c:La2/b;

    .line 79
    .line 80
    :goto_0
    if-eqz v0, :cond_1

    .line 81
    .line 82
    instance-of v2, v0, La2/x;

    .line 83
    .line 84
    if-nez v2, :cond_1

    .line 85
    .line 86
    invoke-interface {v0}, La2/r;->getParent()La2/c0;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    goto :goto_0

    .line 91
    :cond_1
    check-cast v0, La2/x;

    .line 92
    .line 93
    if-eqz v0, :cond_2

    .line 94
    .line 95
    iget v2, v0, La2/x;->r:F

    .line 96
    .line 97
    neg-float v2, v2

    .line 98
    iget v0, v0, La2/x;->s:F

    .line 99
    .line 100
    neg-float v0, v0

    .line 101
    invoke-virtual {v1, v2, v0}, Lz1/f;->q(FF)V

    .line 102
    .line 103
    .line 104
    :cond_2
    return-void
.end method

.method public final f()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->f:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->d:La2/p;

    .line 7
    .line 8
    iget v1, p0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->g:I

    .line 9
    .line 10
    iget v2, p0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->h:I

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, La2/p;->L(II)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->d:La2/p;

    .line 16
    .line 17
    iget-object v0, v0, La2/p;->P:Lz1/g;

    .line 18
    .line 19
    check-cast v0, Lz1/f;

    .line 20
    .line 21
    iget v1, p0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->i:F

    .line 22
    .line 23
    iget v2, p0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->j:F

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Lz1/f;->q(FF)V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->f:Z

    .line 30
    .line 31
    return-void
.end method

.method public g(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->d:La2/p;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, p1, v1, v2}, La2/p;->N(ZZZ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
