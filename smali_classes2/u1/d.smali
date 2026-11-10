.class public final Lu1/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lk2/h;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu1/d;->c:Ljava/lang/Object;

    iput-boolean p2, p0, Lu1/d;->a:Z

    iput-boolean p3, p0, Lu1/d;->b:Z

    return-void
.end method

.method public constructor <init>(Lu1/i;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lu1/d;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lu1/d;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lu1/i;

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    invoke-static {v0, v1}, Lu1/i;->d(Lu1/i;I)V

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    if-ne p1, v2, :cond_0

    .line 12
    .line 13
    move v4, v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v4, v3

    .line 16
    :goto_0
    invoke-static {v0, v4}, Lu1/i;->a(Lu1/i;Z)V

    .line 17
    .line 18
    .line 19
    if-ne p1, v2, :cond_1

    .line 20
    .line 21
    iput-boolean v2, p0, Lu1/d;->a:Z

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    if-ne p1, v1, :cond_2

    .line 25
    .line 26
    iput-boolean v2, p0, Lu1/d;->b:Z

    .line 27
    .line 28
    :goto_1
    move v2, v3

    .line 29
    :cond_2
    if-nez v2, :cond_3

    .line 30
    .line 31
    iget-boolean p1, p0, Lu1/d;->a:Z

    .line 32
    .line 33
    if-eqz p1, :cond_3

    .line 34
    .line 35
    iget-boolean p1, p0, Lu1/d;->b:Z

    .line 36
    .line 37
    if-eqz p1, :cond_3

    .line 38
    .line 39
    iget-object p1, v0, Lu1/i;->t:Lu1/w;

    .line 40
    .line 41
    const/16 v2, 0xb

    .line 42
    .line 43
    iput v2, p1, Lu1/w;->a:I

    .line 44
    .line 45
    iput v1, p1, Lu1/w;->f:I

    .line 46
    .line 47
    sget-wide v1, Lu1/w;->j:J

    .line 48
    .line 49
    iput-wide v1, p1, Lu1/w;->g:J

    .line 50
    .line 51
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 52
    .line 53
    .line 54
    move-result-wide v1

    .line 55
    const-wide/32 v3, 0xf4240

    .line 56
    .line 57
    .line 58
    div-long/2addr v1, v3

    .line 59
    iput-wide v1, p1, Lu1/w;->h:J

    .line 60
    .line 61
    iget-object p1, v0, Lu1/i;->a:Lq1/f;

    .line 62
    .line 63
    iget-object p1, p1, Lq1/f;->e:La2/c0;

    .line 64
    .line 65
    iget-object v0, v0, Lu1/i;->t:Lu1/w;

    .line 66
    .line 67
    invoke-interface {p1, v0}, La2/r;->u(Lu1/w;)Z

    .line 68
    .line 69
    .line 70
    :cond_3
    return-void
.end method

.method public final b(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lu1/d;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lu1/i;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-ne p1, v1, :cond_0

    .line 8
    .line 9
    move v3, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v3, v2

    .line 12
    :goto_0
    invoke-static {v0, v3}, Lu1/i;->b(Lu1/i;Z)V

    .line 13
    .line 14
    .line 15
    const/4 v3, 0x2

    .line 16
    if-ne p1, v1, :cond_1

    .line 17
    .line 18
    iput-boolean v2, p0, Lu1/d;->a:Z

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    if-ne p1, v3, :cond_2

    .line 22
    .line 23
    iput-boolean v2, p0, Lu1/d;->b:Z

    .line 24
    .line 25
    :goto_1
    move v1, v2

    .line 26
    :cond_2
    if-nez v1, :cond_4

    .line 27
    .line 28
    iget-boolean p1, p0, Lu1/d;->a:Z

    .line 29
    .line 30
    if-nez p1, :cond_3

    .line 31
    .line 32
    iget-boolean p1, p0, Lu1/d;->b:Z

    .line 33
    .line 34
    if-eqz p1, :cond_4

    .line 35
    .line 36
    :cond_3
    iget-object p1, v0, Lu1/i;->t:Lu1/w;

    .line 37
    .line 38
    const/16 v1, 0xc

    .line 39
    .line 40
    iput v1, p1, Lu1/w;->a:I

    .line 41
    .line 42
    iput v3, p1, Lu1/w;->f:I

    .line 43
    .line 44
    sget-wide v1, Lu1/w;->j:J

    .line 45
    .line 46
    iput-wide v1, p1, Lu1/w;->g:J

    .line 47
    .line 48
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 49
    .line 50
    .line 51
    move-result-wide v1

    .line 52
    const-wide/32 v3, 0xf4240

    .line 53
    .line 54
    .line 55
    div-long/2addr v1, v3

    .line 56
    iput-wide v1, p1, Lu1/w;->h:J

    .line 57
    .line 58
    iget-object p1, v0, Lu1/i;->a:Lq1/f;

    .line 59
    .line 60
    iget-object p1, p1, Lq1/f;->e:La2/c0;

    .line 61
    .line 62
    iget-object v0, v0, Lu1/i;->t:Lu1/w;

    .line 63
    .line 64
    invoke-interface {p1, v0}, La2/r;->u(Lu1/w;)Z

    .line 65
    .line 66
    .line 67
    :cond_4
    return-void
.end method

.method public final c(FFZ)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lu1/d;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Lu1/i;

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    invoke-static {v1, v2}, Lu1/i;->d(Lu1/i;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lu1/i;->m()V

    .line 12
    .line 13
    .line 14
    const/high16 v2, -0x40800000    # -1.0f

    .line 15
    .line 16
    cmpl-float v3, p1, v2

    .line 17
    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    iget-object v4, v1, Lu1/i;->u:La2/l;

    .line 21
    .line 22
    check-cast v4, La2/k;

    .line 23
    .line 24
    iget v4, v4, La2/k;->j:F

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move/from16 v4, p1

    .line 28
    .line 29
    :goto_0
    cmpl-float v2, p2, v2

    .line 30
    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    iget-object v5, v1, Lu1/i;->u:La2/l;

    .line 34
    .line 35
    check-cast v5, La2/k;

    .line 36
    .line 37
    iget v5, v5, La2/k;->k:F

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    move/from16 v5, p2

    .line 41
    .line 42
    :goto_1
    iget-object v6, v1, Lu1/i;->r:Lu1/v;

    .line 43
    .line 44
    iget-object v6, v6, Lu1/v;->b:Lo/a;

    .line 45
    .line 46
    iget-object v6, v6, Lo/a;->g:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v6, Lu1/i;

    .line 49
    .line 50
    iget-object v6, v6, Lu1/i;->a:Lq1/f;

    .line 51
    .line 52
    invoke-virtual {v6}, Lq1/f;->a()I

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    iget-object v7, v1, Lu1/i;->r:Lu1/v;

    .line 57
    .line 58
    iget-object v7, v7, Lu1/v;->b:Lo/a;

    .line 59
    .line 60
    iget-object v7, v7, Lo/a;->g:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v7, Lu1/i;

    .line 63
    .line 64
    iget-object v7, v7, Lu1/i;->a:Lq1/f;

    .line 65
    .line 66
    iget v7, v7, Lq1/f;->z:I

    .line 67
    .line 68
    int-to-float v8, v7

    .line 69
    sub-float v5, v8, v5

    .line 70
    .line 71
    const/4 v9, 0x1

    .line 72
    if-eqz p3, :cond_5

    .line 73
    .line 74
    int-to-float v10, v6

    .line 75
    const/high16 v11, 0x3f000000    # 0.5f

    .line 76
    .line 77
    mul-float v12, v10, v11

    .line 78
    .line 79
    mul-float/2addr v11, v8

    .line 80
    sub-float/2addr v4, v12

    .line 81
    const/high16 v13, 0x3fa00000    # 1.25f

    .line 82
    .line 83
    mul-float/2addr v4, v13

    .line 84
    add-float/2addr v4, v12

    .line 85
    sub-float/2addr v5, v11

    .line 86
    mul-float/2addr v5, v13

    .line 87
    add-float/2addr v5, v11

    .line 88
    const/4 v11, 0x0

    .line 89
    cmpg-float v12, v4, v11

    .line 90
    .line 91
    if-gez v12, :cond_2

    .line 92
    .line 93
    move v4, v11

    .line 94
    :cond_2
    cmpg-float v12, v5, v11

    .line 95
    .line 96
    if-gez v12, :cond_3

    .line 97
    .line 98
    move v5, v11

    .line 99
    :cond_3
    cmpl-float v10, v4, v10

    .line 100
    .line 101
    if-ltz v10, :cond_4

    .line 102
    .line 103
    sub-int/2addr v6, v9

    .line 104
    int-to-float v4, v6

    .line 105
    :cond_4
    cmpl-float v6, v5, v8

    .line 106
    .line 107
    if-ltz v6, :cond_5

    .line 108
    .line 109
    sub-int/2addr v7, v9

    .line 110
    int-to-float v5, v7

    .line 111
    :cond_5
    iget-object v6, v1, Lu1/i;->u:La2/l;

    .line 112
    .line 113
    if-nez v3, :cond_6

    .line 114
    .line 115
    move-object v4, v6

    .line 116
    check-cast v4, La2/k;

    .line 117
    .line 118
    iget v4, v4, La2/k;->j:F

    .line 119
    .line 120
    :cond_6
    if-nez v2, :cond_7

    .line 121
    .line 122
    move-object v5, v6

    .line 123
    check-cast v5, La2/k;

    .line 124
    .line 125
    iget v5, v5, La2/k;->k:F

    .line 126
    .line 127
    :cond_7
    check-cast v6, La2/k;

    .line 128
    .line 129
    iput v4, v6, La2/k;->j:F

    .line 130
    .line 131
    iput v5, v6, La2/k;->k:F

    .line 132
    .line 133
    const/high16 v7, 0x40000000    # 2.0f

    .line 134
    .line 135
    mul-float/2addr v4, v7

    .line 136
    iget v8, v6, La2/k;->l:I

    .line 137
    .line 138
    int-to-float v8, v8

    .line 139
    div-float/2addr v4, v8

    .line 140
    const/high16 v8, 0x3f800000    # 1.0f

    .line 141
    .line 142
    sub-float/2addr v4, v8

    .line 143
    iget-object v10, v6, La2/k;->n:Lz1/d;

    .line 144
    .line 145
    iput v4, v10, Lz1/d;->a:F

    .line 146
    .line 147
    mul-float/2addr v5, v7

    .line 148
    iget v4, v6, La2/k;->m:I

    .line 149
    .line 150
    int-to-float v4, v4

    .line 151
    div-float/2addr v5, v4

    .line 152
    sub-float/2addr v5, v8

    .line 153
    iput v5, v10, Lz1/d;->b:F

    .line 154
    .line 155
    sget v4, Lz1/f;->D:F

    .line 156
    .line 157
    iput v4, v10, Lz1/d;->c:F

    .line 158
    .line 159
    iget-object v4, v6, La2/k;->o:Lz1/e;

    .line 160
    .line 161
    invoke-virtual {v10, v4}, Lz1/d;->a(Lz1/e;)V

    .line 162
    .line 163
    .line 164
    iget v5, v4, Lz1/e;->a:F

    .line 165
    .line 166
    const/high16 v10, 0x43340000    # 180.0f

    .line 167
    .line 168
    sub-float/2addr v5, v10

    .line 169
    iget v4, v4, Lz1/e;->b:F

    .line 170
    .line 171
    neg-float v4, v4

    .line 172
    const/high16 v10, 0x42b40000    # 90.0f

    .line 173
    .line 174
    add-float/2addr v4, v10

    .line 175
    neg-float v10, v5

    .line 176
    invoke-static {}, Lz1/f;->o()F

    .line 177
    .line 178
    .line 179
    move-result v11

    .line 180
    div-float/2addr v10, v11

    .line 181
    iput v10, v6, La2/k;->p:F

    .line 182
    .line 183
    invoke-static {v5}, Lz1/f;->p(F)F

    .line 184
    .line 185
    .line 186
    move-result v5

    .line 187
    div-float/2addr v4, v5

    .line 188
    iget v5, v6, La2/k;->p:F

    .line 189
    .line 190
    add-float/2addr v5, v8

    .line 191
    div-float/2addr v5, v7

    .line 192
    add-float/2addr v4, v8

    .line 193
    div-float/2addr v4, v7

    .line 194
    iget v7, v6, La2/k;->l:I

    .line 195
    .line 196
    int-to-float v7, v7

    .line 197
    mul-float/2addr v5, v7

    .line 198
    iput v5, v6, La2/k;->p:F

    .line 199
    .line 200
    iget v5, v6, La2/k;->m:I

    .line 201
    .line 202
    int-to-float v5, v5

    .line 203
    mul-float/2addr v4, v5

    .line 204
    iput v4, v6, La2/k;->q:F

    .line 205
    .line 206
    iget-object v10, v1, Lu1/i;->r:Lu1/v;

    .line 207
    .line 208
    iget-object v1, v1, Lu1/i;->u:La2/l;

    .line 209
    .line 210
    move-object v4, v1

    .line 211
    check-cast v4, La2/k;

    .line 212
    .line 213
    iget v11, v4, La2/k;->p:F

    .line 214
    .line 215
    check-cast v1, La2/k;

    .line 216
    .line 217
    iget v12, v1, La2/k;->q:F

    .line 218
    .line 219
    const/4 v1, 0x0

    .line 220
    if-eqz v3, :cond_8

    .line 221
    .line 222
    move v13, v9

    .line 223
    goto :goto_2

    .line 224
    :cond_8
    move v13, v1

    .line 225
    :goto_2
    if-eqz v2, :cond_9

    .line 226
    .line 227
    move v14, v9

    .line 228
    goto :goto_3

    .line 229
    :cond_9
    move v14, v1

    .line 230
    :goto_3
    const/4 v15, 0x0

    .line 231
    const/16 v16, 0x0

    .line 232
    .line 233
    invoke-virtual/range {v10 .. v16}, Lu1/v;->d(FFZZZZ)V

    .line 234
    .line 235
    .line 236
    return-void
.end method
