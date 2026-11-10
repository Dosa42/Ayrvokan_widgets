.class public abstract La2/v;
.super La2/s;
.source "SourceFile"

# interfaces
.implements La2/a;


# instance fields
.field public final h:[La2/t;

.field public i:I

.field public j:La2/u;

.field public final k:Lz1/g;

.field public l:I

.field public m:I

.field public n:Z

.field public o:Z

.field public final p:Landroid/graphics/Rect;

.field public final q:Lf0/c;


# direct methods
.method public constructor <init>(Lz1/c;)V
    .locals 3

    .line 1
    invoke-direct {p0}, La2/s;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [La2/t;

    iput-object v0, p0, La2/v;->h:[La2/t;

    new-instance v0, Lz1/a;

    invoke-direct {v0}, Lz1/a;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, La2/v;->p:Landroid/graphics/Rect;

    iput-object p1, p0, La2/v;->k:Lz1/g;

    const/4 v0, 0x0

    iput-object v0, p0, La2/v;->j:La2/u;

    new-instance v0, Lf0/c;

    new-instance v1, Lh/a;

    const/16 v2, 0x10

    invoke-direct {v1, p0, v2}, Lh/a;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v1, p1}, Lf0/c;-><init>(Lq1/h;Lz1/g;)V

    iput-object v0, p0, La2/v;->q:Lf0/c;

    return-void
.end method


# virtual methods
.method public A(Lo1/q;Z)Z
    .locals 13

    .line 1
    iget-object p1, p0, La2/v;->j:La2/u;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    iget-object p1, p0, La2/v;->q:Lf0/c;

    .line 8
    .line 9
    iget-boolean v1, p1, Lf0/c;->f:Z

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-nez v1, :cond_2

    .line 13
    .line 14
    iget-object v1, p1, Lf0/c;->i:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v1, Landroid/graphics/Rect;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move v1, v0

    .line 26
    goto :goto_1

    .line 27
    :cond_2
    :goto_0
    move v1, v2

    .line 28
    :goto_1
    if-nez v1, :cond_3

    .line 29
    .line 30
    return v0

    .line 31
    :cond_3
    iget-object v1, p0, La2/v;->j:La2/u;

    .line 32
    .line 33
    invoke-interface {v1}, La2/u;->d()Lo1/q;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-nez v1, :cond_4

    .line 38
    .line 39
    return v0

    .line 40
    :cond_4
    iget v3, p0, La2/v;->i:I

    .line 41
    .line 42
    iget-object v4, p0, La2/v;->h:[La2/t;

    .line 43
    .line 44
    aget-object v5, v4, v3

    .line 45
    .line 46
    if-nez v5, :cond_6

    .line 47
    .line 48
    iget-object v5, p0, La2/v;->j:La2/u;

    .line 49
    .line 50
    if-eqz v5, :cond_5

    .line 51
    .line 52
    invoke-interface {v5}, La2/u;->b()La2/t;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    goto :goto_2

    .line 57
    :cond_5
    const/4 v5, 0x0

    .line 58
    :goto_2
    aput-object v5, v4, v3

    .line 59
    .line 60
    if-nez v5, :cond_6

    .line 61
    .line 62
    return v0

    .line 63
    :cond_6
    iget v3, v5, La2/t;->a:I

    .line 64
    .line 65
    const/16 v4, 0xde1

    .line 66
    .line 67
    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 68
    .line 69
    .line 70
    iget-object v3, p0, La2/v;->k:Lz1/g;

    .line 71
    .line 72
    invoke-interface {v3}, Lz1/g;->h()I

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    int-to-float v6, v6

    .line 77
    iget v7, v5, La2/t;->b:I

    .line 78
    .line 79
    int-to-float v7, v7

    .line 80
    div-float/2addr v6, v7

    .line 81
    invoke-interface {v3}, Lz1/g;->i()I

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    int-to-float v7, v7

    .line 86
    iget v5, v5, La2/t;->c:I

    .line 87
    .line 88
    int-to-float v5, v5

    .line 89
    div-float/2addr v7, v5

    .line 90
    const/high16 v5, 0x3f000000    # 0.5f

    .line 91
    .line 92
    add-float v8, v6, v5

    .line 93
    .line 94
    float-to-int v8, v8

    .line 95
    int-to-float v8, v8

    .line 96
    sub-float v9, v8, v6

    .line 97
    .line 98
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    .line 99
    .line 100
    .line 101
    move-result v9

    .line 102
    float-to-double v9, v9

    .line 103
    const-wide v11, 0x3f789374bc6a7efaL    # 0.006

    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    cmpg-double v9, v9, v11

    .line 109
    .line 110
    if-gez v9, :cond_7

    .line 111
    .line 112
    move v6, v8

    .line 113
    :cond_7
    add-float v8, v7, v5

    .line 114
    .line 115
    float-to-int v8, v8

    .line 116
    int-to-float v8, v8

    .line 117
    sub-float v9, v8, v7

    .line 118
    .line 119
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    .line 120
    .line 121
    .line 122
    move-result v9

    .line 123
    float-to-double v9, v9

    .line 124
    cmpg-double v9, v9, v11

    .line 125
    .line 126
    if-gez v9, :cond_8

    .line 127
    .line 128
    move v7, v8

    .line 129
    :cond_8
    float-to-int v8, v6

    .line 130
    int-to-float v8, v8

    .line 131
    cmpl-float v8, v6, v8

    .line 132
    .line 133
    if-nez v8, :cond_9

    .line 134
    .line 135
    float-to-int v8, v7

    .line 136
    int-to-float v8, v8

    .line 137
    cmpl-float v8, v7, v8

    .line 138
    .line 139
    if-eqz v8, :cond_a

    .line 140
    .line 141
    :cond_9
    cmpl-float v6, v6, v5

    .line 142
    .line 143
    if-eqz v6, :cond_a

    .line 144
    .line 145
    cmpl-float v5, v7, v5

    .line 146
    .line 147
    if-eqz v5, :cond_a

    .line 148
    .line 149
    move v0, v2

    .line 150
    :cond_a
    if-eqz v0, :cond_b

    .line 151
    .line 152
    const/16 v0, 0x2601

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_b
    const/16 v0, 0x2600

    .line 156
    .line 157
    :goto_3
    int-to-float v0, v0

    .line 158
    const/16 v5, 0x2801

    .line 159
    .line 160
    invoke-static {v4, v5, v0}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 161
    .line 162
    .line 163
    const/16 v5, 0x2800

    .line 164
    .line 165
    invoke-static {v4, v5, v0}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1}, Lo1/q;->d()V

    .line 169
    .line 170
    .line 171
    const/16 v0, 0xbe2

    .line 172
    .line 173
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 174
    .line 175
    .line 176
    if-eqz p2, :cond_c

    .line 177
    .line 178
    invoke-interface {v3}, Lz1/g;->j()Lo1/p;

    .line 179
    .line 180
    .line 181
    move-result-object p2

    .line 182
    invoke-interface {v3}, Lz1/g;->e()Landroidx/fragment/app/h;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-interface {v3}, Lz1/g;->m()Landroidx/fragment/app/h;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    goto :goto_4

    .line 191
    :cond_c
    invoke-interface {v3}, Lz1/g;->j()Lo1/p;

    .line 192
    .line 193
    .line 194
    move-result-object p2

    .line 195
    invoke-interface {v3}, Lz1/g;->f()Landroidx/fragment/app/h;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-interface {v3}, Lz1/g;->b()Landroidx/fragment/app/h;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    :goto_4
    iget-boolean v4, p0, La2/v;->n:Z

    .line 204
    .line 205
    invoke-static {p2, v0, v3, v1, v4}, Lo1/r;->b(Lo1/p;Landroidx/fragment/app/h;Landroidx/fragment/app/h;Lo1/q;Z)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1}, Lo1/q;->b()V

    .line 209
    .line 210
    .line 211
    iget-object p1, p1, Lf0/c;->i:Ljava/lang/Object;

    .line 212
    .line 213
    check-cast p1, Landroid/graphics/Rect;

    .line 214
    .line 215
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 216
    .line 217
    .line 218
    return v2
.end method

.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, La2/v;->h:[La2/t;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v0, p0, La2/v;->j:La2/u;

    if-eqz v0, :cond_0

    invoke-interface {v0}, La2/u;->a()V

    :cond_0
    return-void
.end method

.method public final c(II)V
    .locals 1

    .line 1
    iput p1, p0, La2/v;->l:I

    iput p2, p0, La2/v;->m:I

    iget-object v0, p0, La2/v;->k:Lz1/g;

    invoke-interface {v0, p1, p2}, Lz1/g;->c(II)V

    return-void
.end method

.method public final g(Landroidx/fragment/app/h;)Z
    .locals 1

    .line 1
    iget-object v0, p0, La2/v;->q:Lf0/c;

    invoke-virtual {v0, p1}, Lf0/c;->b(Landroidx/fragment/app/h;)Z

    move-result p1

    return p1
.end method

.method public final i(Lo1/q;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, La2/s;->p()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, La2/v;->A(Lo1/q;Z)Z

    move-result p1

    return p1
.end method

.method public final k()Z
    .locals 5

    .line 1
    iget-object v0, p0, La2/v;->j:La2/u;

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
    iget v2, p0, La2/v;->i:I

    .line 8
    .line 9
    iget-object v3, p0, La2/v;->h:[La2/t;

    .line 10
    .line 11
    aget-object v4, v3, v2

    .line 12
    .line 13
    if-nez v4, :cond_2

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, La2/u;->b()La2/t;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 v0, 0x0

    .line 23
    :goto_0
    aput-object v0, v3, v2

    .line 24
    .line 25
    iget v0, p0, La2/v;->i:I

    .line 26
    .line 27
    aget-object v0, v3, v0

    .line 28
    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    return v1

    .line 32
    :cond_2
    iget-object v0, p0, La2/v;->j:La2/u;

    .line 33
    .line 34
    iget v2, p0, La2/v;->i:I

    .line 35
    .line 36
    aget-object v2, v3, v2

    .line 37
    .line 38
    invoke-interface {v0, v2}, La2/u;->g(La2/t;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, La2/v;->o:Z

    .line 46
    .line 47
    iget v2, p0, La2/v;->i:I

    .line 48
    .line 49
    add-int/2addr v2, v0

    .line 50
    rem-int/2addr v2, v0

    .line 51
    iput v2, p0, La2/v;->i:I

    .line 52
    .line 53
    :cond_3
    return v1
.end method

.method public final l()Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, La2/v;->q:Lf0/c;

    .line 2
    .line 3
    iget-object v0, v0, Lf0/c;->i:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroid/graphics/Rect;

    .line 6
    .line 7
    return-object v0
.end method

.method public final t(Lo1/q;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, La2/s;->p()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1, v1}, La2/v;->A(Lo1/q;Z)Z

    move-result p1

    return p1
.end method
