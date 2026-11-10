.class public final Lu1/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lo1/j0;

.field public final b:Lo/a;

.field public final c:Lz1/a;

.field public final d:Lz1/a;

.field public final e:Lu1/w;

.field public f:I

.field public g:I

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:I

.field public final l:Ljava/lang/Object;

.field public final m:Lu1/u;

.field public final n:Lu1/t;


# direct methods
.method public constructor <init>(Lq1/c;Lo/a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lz1/a;

    .line 5
    .line 6
    invoke-direct {v0}, Lz1/a;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lu1/v;->c:Lz1/a;

    .line 10
    .line 11
    new-instance v1, Lz1/a;

    .line 12
    .line 13
    invoke-direct {v1}, Lz1/a;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lu1/v;->d:Lz1/a;

    .line 17
    .line 18
    new-instance v1, Lu1/w;

    .line 19
    .line 20
    invoke-direct {v1, v0}, Lu1/w;-><init>(Lz1/b;)V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lu1/v;->e:Lu1/w;

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    iput v0, p0, Lu1/v;->f:I

    .line 27
    .line 28
    iput v0, p0, Lu1/v;->g:I

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lu1/v;->i:Z

    .line 32
    .line 33
    new-instance v0, Ljava/lang/Object;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lu1/v;->l:Ljava/lang/Object;

    .line 39
    .line 40
    new-instance v0, Lu1/u;

    .line 41
    .line 42
    invoke-direct {v0, p0}, Lu1/u;-><init>(Lu1/v;)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lu1/v;->m:Lu1/u;

    .line 46
    .line 47
    new-instance v0, Lu1/t;

    .line 48
    .line 49
    invoke-direct {v0, p0}, Lu1/t;-><init>(Lu1/v;)V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lu1/v;->n:Lu1/t;

    .line 53
    .line 54
    iput-object p1, p0, Lu1/v;->a:Lo1/j0;

    .line 55
    .line 56
    iput-object p2, p0, Lu1/v;->b:Lo/a;

    .line 57
    .line 58
    new-instance v0, Lu1/s;

    .line 59
    .line 60
    invoke-direct {v0, p0, p2}, Lu1/s;-><init>(Lu1/v;Lo/a;)V

    .line 61
    .line 62
    .line 63
    const-string p2, "VirtualCursor move cursor to screen center"

    .line 64
    .line 65
    invoke-virtual {p1, p2, v0}, Lo1/j0;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 1
    iget-object v0, p0, Lu1/v;->b:Lo/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lu1/v;->f:I

    .line 7
    .line 8
    iget-object v2, p0, Lu1/v;->e:Lu1/w;

    .line 9
    .line 10
    const/4 v3, 0x4

    .line 11
    iput v3, v2, Lu1/w;->a:I

    .line 12
    .line 13
    iput v1, v2, Lu1/w;->f:I

    .line 14
    .line 15
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 16
    .line 17
    .line 18
    move-result-wide v3

    .line 19
    const-wide/32 v5, 0xf4240

    .line 20
    .line 21
    .line 22
    div-long/2addr v3, v5

    .line 23
    sput-wide v3, Lu1/w;->j:J

    .line 24
    .line 25
    iput-wide v3, v2, Lu1/w;->h:J

    .line 26
    .line 27
    iput-wide v3, v2, Lu1/w;->g:J

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Lo/a;->d(Lu1/w;)V

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lu1/v;->i:Z

    .line 34
    .line 35
    return-void
.end method

.method public final b()V
    .locals 6

    .line 1
    iget-object v0, p0, Lu1/v;->m:Lu1/u;

    .line 2
    .line 3
    iget-boolean v1, v0, Lu1/u;->f:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lu1/u;->b()Z

    .line 8
    .line 9
    .line 10
    :cond_0
    iget v0, p0, Lu1/v;->f:I

    .line 11
    .line 12
    iget-object v1, p0, Lu1/v;->e:Lu1/w;

    .line 13
    .line 14
    const/4 v2, 0x5

    .line 15
    iput v2, v1, Lu1/w;->a:I

    .line 16
    .line 17
    iput v0, v1, Lu1/w;->f:I

    .line 18
    .line 19
    sget-wide v2, Lu1/w;->j:J

    .line 20
    .line 21
    iput-wide v2, v1, Lu1/w;->g:J

    .line 22
    .line 23
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    const-wide/32 v4, 0xf4240

    .line 28
    .line 29
    .line 30
    div-long/2addr v2, v4

    .line 31
    iput-wide v2, v1, Lu1/w;->h:J

    .line 32
    .line 33
    iget-object v0, p0, Lu1/v;->b:Lo/a;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lo/a;->d(Lu1/w;)V

    .line 36
    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lu1/v;->i:Z

    .line 40
    .line 41
    iget v0, p0, Lu1/v;->g:I

    .line 42
    .line 43
    iput v0, p0, Lu1/v;->f:I

    .line 44
    .line 45
    return-void
.end method

.method public final c(FFZ)V
    .locals 8

    .line 1
    iget-object v0, p0, Lu1/v;->l:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lu1/v;->k:I

    .line 5
    .line 6
    add-int/lit8 v2, v1, -0x1

    .line 7
    .line 8
    iput v2, p0, Lu1/v;->k:I

    .line 9
    .line 10
    if-lez v1, :cond_0

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    goto/16 :goto_3

    .line 16
    .line 17
    :cond_0
    iget-object v1, p0, Lu1/v;->b:Lo/a;

    .line 18
    .line 19
    iget-object v1, v1, Lo/a;->g:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Lu1/i;

    .line 22
    .line 23
    iget-object v1, v1, Lu1/i;->a:Lq1/f;

    .line 24
    .line 25
    invoke-virtual {v1}, Lq1/f;->a()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    add-int/lit8 v1, v1, -0x1

    .line 30
    .line 31
    iget-object v2, p0, Lu1/v;->b:Lo/a;

    .line 32
    .line 33
    iget-object v3, v2, Lo/a;->g:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v3, Lu1/i;

    .line 36
    .line 37
    iget-object v3, v3, Lu1/i;->a:Lq1/f;

    .line 38
    .line 39
    iget v3, v3, Lq1/f;->z:I

    .line 40
    .line 41
    add-int/lit8 v3, v3, -0x1

    .line 42
    .line 43
    if-nez v1, :cond_1

    .line 44
    .line 45
    monitor-exit v0

    .line 46
    return-void

    .line 47
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    iget-object v4, v2, Lo/a;->g:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v4, Lu1/i;

    .line 53
    .line 54
    iget v4, v4, Lu1/i;->M:I

    .line 55
    .line 56
    invoke-static {v4}, Lk0/c;->b(I)I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    const/high16 v5, 0x3f800000    # 1.0f

    .line 61
    .line 62
    if-eqz v4, :cond_3

    .line 63
    .line 64
    const/4 v6, 0x3

    .line 65
    if-eq v4, v6, :cond_4

    .line 66
    .line 67
    iget-object v2, v2, Lo/a;->g:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v2, Lu1/i;

    .line 70
    .line 71
    :cond_2
    iget v2, v2, Lu1/i;->g:F

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    iget-object v2, v2, Lo/a;->g:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v2, Lu1/i;

    .line 77
    .line 78
    iget-object v4, v2, Lu1/i;->m:Lo1/v0;

    .line 79
    .line 80
    iget-boolean v4, v4, Lo1/v0;->k:Z

    .line 81
    .line 82
    if-eqz v4, :cond_2

    .line 83
    .line 84
    :cond_4
    move v2, v5

    .line 85
    :goto_0
    mul-float v4, p1, p1

    .line 86
    .line 87
    mul-float v6, p2, p2

    .line 88
    .line 89
    add-float/2addr v6, v4

    .line 90
    float-to-double v6, v6

    .line 91
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    .line 92
    .line 93
    .line 94
    move-result-wide v6

    .line 95
    double-to-float v4, v6

    .line 96
    sub-float/2addr v4, v5

    .line 97
    const/high16 v6, 0x41700000    # 15.0f

    .line 98
    .line 99
    div-float/2addr v4, v6

    .line 100
    cmpl-float v6, v4, v5

    .line 101
    .line 102
    if-lez v6, :cond_5

    .line 103
    .line 104
    move v4, v5

    .line 105
    :cond_5
    const/4 v6, 0x0

    .line 106
    cmpg-float v7, v4, v6

    .line 107
    .line 108
    if-gtz v7, :cond_6

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_6
    cmpl-float v7, v4, v5

    .line 112
    .line 113
    if-ltz v7, :cond_7

    .line 114
    .line 115
    move v5, v2

    .line 116
    goto :goto_1

    .line 117
    :cond_7
    sub-float/2addr v2, v5

    .line 118
    mul-float/2addr v2, v4

    .line 119
    add-float/2addr v5, v2

    .line 120
    :goto_1
    mul-float/2addr p1, v5

    .line 121
    sub-float p1, v6, p1

    .line 122
    .line 123
    mul-float/2addr v5, p2

    .line 124
    iget-object p2, p0, Lu1/v;->e:Lu1/w;

    .line 125
    .line 126
    iput p1, p2, Lu1/w;->c:F

    .line 127
    .line 128
    iput v5, p2, Lu1/w;->d:F

    .line 129
    .line 130
    iget-object p2, p0, Lu1/v;->c:Lz1/a;

    .line 131
    .line 132
    iget v2, p2, Lz1/a;->a:F

    .line 133
    .line 134
    iget v4, p2, Lz1/a;->b:F

    .line 135
    .line 136
    add-float/2addr v2, p1

    .line 137
    add-float/2addr v4, v5

    .line 138
    int-to-float v1, v1

    .line 139
    cmpl-float v7, v2, v1

    .line 140
    .line 141
    if-lez v7, :cond_8

    .line 142
    .line 143
    move v2, v1

    .line 144
    :cond_8
    const/4 v1, 0x0

    .line 145
    int-to-float v1, v1

    .line 146
    cmpg-float v7, v2, v1

    .line 147
    .line 148
    if-gez v7, :cond_9

    .line 149
    .line 150
    move v2, v1

    .line 151
    :cond_9
    int-to-float v3, v3

    .line 152
    cmpl-float v7, v4, v3

    .line 153
    .line 154
    if-lez v7, :cond_a

    .line 155
    .line 156
    move v4, v3

    .line 157
    :cond_a
    cmpg-float v3, v4, v1

    .line 158
    .line 159
    if-gez v3, :cond_b

    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_b
    move v1, v4

    .line 163
    :goto_2
    iput v2, p2, Lz1/a;->a:F

    .line 164
    .line 165
    iput v1, p2, Lz1/a;->b:F

    .line 166
    .line 167
    cmpl-float p1, p1, v6

    .line 168
    .line 169
    if-nez p1, :cond_c

    .line 170
    .line 171
    cmpl-float p1, v5, v6

    .line 172
    .line 173
    if-nez p1, :cond_c

    .line 174
    .line 175
    iget-object p1, p0, Lu1/v;->d:Lz1/a;

    .line 176
    .line 177
    iget p2, p1, Lz1/a;->a:F

    .line 178
    .line 179
    sub-float/2addr p2, v2

    .line 180
    iget p1, p1, Lz1/a;->b:F

    .line 181
    .line 182
    sub-float/2addr p1, v1

    .line 183
    mul-float/2addr p2, p2

    .line 184
    mul-float/2addr p1, p1

    .line 185
    add-float/2addr p1, p2

    .line 186
    float-to-double p1, p1

    .line 187
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    .line 188
    .line 189
    .line 190
    move-result-wide p1

    .line 191
    double-to-float p1, p1

    .line 192
    const/high16 p2, 0x3f000000    # 0.5f

    .line 193
    .line 194
    cmpl-float p1, p1, p2

    .line 195
    .line 196
    if-lez p1, :cond_d

    .line 197
    .line 198
    :cond_c
    iget-object p1, p0, Lu1/v;->n:Lu1/t;

    .line 199
    .line 200
    invoke-virtual {p1}, Lu1/t;->run()V

    .line 201
    .line 202
    .line 203
    iget-object p1, p0, Lu1/v;->d:Lz1/a;

    .line 204
    .line 205
    iget-object p2, p0, Lu1/v;->c:Lz1/a;

    .line 206
    .line 207
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    .line 209
    .line 210
    iget v3, p2, Lz1/a;->a:F

    .line 211
    .line 212
    iget p2, p2, Lz1/a;->b:F

    .line 213
    .line 214
    iput v3, p1, Lz1/a;->a:F

    .line 215
    .line 216
    iput p2, p1, Lz1/a;->b:F

    .line 217
    .line 218
    iget-object p1, p0, Lu1/v;->b:Lo/a;

    .line 219
    .line 220
    invoke-virtual {p1, v2, v1}, Lo/a;->e(FF)V

    .line 221
    .line 222
    .line 223
    :cond_d
    if-eqz p3, :cond_e

    .line 224
    .line 225
    iget-object p1, p0, Lu1/v;->b:Lo/a;

    .line 226
    .line 227
    iget-boolean p2, p0, Lu1/v;->j:Z

    .line 228
    .line 229
    xor-int/lit8 p2, p2, 0x1

    .line 230
    .line 231
    invoke-virtual {p1, p2}, Lo/a;->f(Z)V

    .line 232
    .line 233
    .line 234
    :cond_e
    iput-boolean p3, p0, Lu1/v;->j:Z

    .line 235
    .line 236
    monitor-exit v0

    .line 237
    return-void

    .line 238
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    throw p1
.end method

.method public final d(FFZZZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lu1/v;->l:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lu1/v;->c:Lz1/a;

    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget p1, v1, Lz1/a;->a:F

    .line 10
    .line 11
    :goto_0
    if-eqz p4, :cond_1

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_1
    iget p2, v1, Lz1/a;->b:F

    .line 15
    .line 16
    :goto_1
    iput p1, v1, Lz1/a;->a:F

    .line 17
    .line 18
    iput p2, v1, Lz1/a;->b:F

    .line 19
    .line 20
    if-eqz p6, :cond_2

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    invoke-virtual {p0, p1, p1, p5}, Lu1/v;->c(FFZ)V

    .line 24
    .line 25
    .line 26
    :cond_2
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p1
.end method
