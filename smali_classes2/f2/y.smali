.class public final Lf2/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lf2/j0;

.field public final b:Lf2/k0;

.field public c:J

.field public d:Lf2/l0;

.field public e:I

.field public f:Z

.field public g:Lf2/w;

.field public h:Lf2/w;

.field public i:Lf2/w;

.field public j:I

.field public k:Ljava/lang/Object;

.field public l:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lf2/j0;

    invoke-direct {v0}, Lf2/j0;-><init>()V

    iput-object v0, p0, Lf2/y;->a:Lf2/j0;

    new-instance v0, Lf2/k0;

    invoke-direct {v0}, Lf2/k0;-><init>()V

    iput-object v0, p0, Lf2/y;->b:Lf2/k0;

    sget-object v0, Lf2/l0;->a:Lf2/i0;

    iput-object v0, p0, Lf2/y;->d:Lf2/l0;

    return-void
.end method


# virtual methods
.method public final a()Lf2/w;
    .locals 3

    .line 1
    iget-object v0, p0, Lf2/y;->g:Lf2/w;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    iget-object v2, p0, Lf2/y;->h:Lf2/w;

    .line 8
    .line 9
    if-ne v0, v2, :cond_1

    .line 10
    .line 11
    iget-object v2, v0, Lf2/w;->k:Lf2/w;

    .line 12
    .line 13
    iput-object v2, p0, Lf2/y;->h:Lf2/w;

    .line 14
    .line 15
    :cond_1
    invoke-virtual {v0}, Lf2/w;->e()V

    .line 16
    .line 17
    .line 18
    iget v0, p0, Lf2/y;->j:I

    .line 19
    .line 20
    add-int/lit8 v0, v0, -0x1

    .line 21
    .line 22
    iput v0, p0, Lf2/y;->j:I

    .line 23
    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    iput-object v1, p0, Lf2/y;->i:Lf2/w;

    .line 27
    .line 28
    iget-object v0, p0, Lf2/y;->g:Lf2/w;

    .line 29
    .line 30
    iget-object v1, v0, Lf2/w;->b:Ljava/lang/Object;

    .line 31
    .line 32
    iput-object v1, p0, Lf2/y;->k:Ljava/lang/Object;

    .line 33
    .line 34
    iget-object v0, v0, Lf2/w;->f:Lf2/x;

    .line 35
    .line 36
    iget-object v0, v0, Lf2/x;->a:Lt2/f;

    .line 37
    .line 38
    iget-wide v0, v0, Lt2/f;->d:J

    .line 39
    .line 40
    iput-wide v0, p0, Lf2/y;->l:J

    .line 41
    .line 42
    :cond_2
    iget-object v0, p0, Lf2/y;->g:Lf2/w;

    .line 43
    .line 44
    iget-object v0, v0, Lf2/w;->k:Lf2/w;

    .line 45
    .line 46
    iput-object v0, p0, Lf2/y;->g:Lf2/w;

    .line 47
    .line 48
    return-object v0
.end method

.method public final b(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lf2/y;->g:Lf2/w;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, v0, Lf2/w;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    iput-object p1, p0, Lf2/y;->k:Ljava/lang/Object;

    iget-object p1, v0, Lf2/w;->f:Lf2/x;

    iget-object p1, p1, Lf2/x;->a:Lt2/f;

    iget-wide v2, p1, Lt2/f;->d:J

    iput-wide v2, p0, Lf2/y;->l:J

    invoke-virtual {p0, v0}, Lf2/y;->h(Lf2/w;)Z

    invoke-virtual {v0}, Lf2/w;->e()V

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    iput-object v1, p0, Lf2/y;->k:Ljava/lang/Object;

    :cond_2
    :goto_1
    iput-object v1, p0, Lf2/y;->g:Lf2/w;

    iput-object v1, p0, Lf2/y;->i:Lf2/w;

    iput-object v1, p0, Lf2/y;->h:Lf2/w;

    const/4 p1, 0x0

    iput p1, p0, Lf2/y;->j:I

    return-void
.end method

.method public final c(Lf2/w;J)Lf2/x;
    .locals 21

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-object v1, v0, Lf2/w;->f:Lf2/x;

    .line 6
    .line 7
    iget-wide v2, v0, Lf2/w;->n:J

    .line 8
    .line 9
    iget-wide v4, v1, Lf2/x;->e:J

    .line 10
    .line 11
    add-long/2addr v2, v4

    .line 12
    sub-long v2, v2, p2

    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    iget-boolean v5, v1, Lf2/x;->f:Z

    .line 16
    .line 17
    const/4 v7, -0x1

    .line 18
    const/4 v8, 0x0

    .line 19
    iget-object v9, v6, Lf2/y;->a:Lf2/j0;

    .line 20
    .line 21
    iget-object v10, v1, Lf2/x;->a:Lt2/f;

    .line 22
    .line 23
    if-eqz v5, :cond_4

    .line 24
    .line 25
    iget-object v1, v6, Lf2/y;->d:Lf2/l0;

    .line 26
    .line 27
    iget-object v5, v10, Lt2/f;->a:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-virtual {v1, v5}, Lf2/l0;->a(Ljava/lang/Object;)I

    .line 30
    .line 31
    .line 32
    move-result v12

    .line 33
    iget-object v11, v6, Lf2/y;->d:Lf2/l0;

    .line 34
    .line 35
    iget-object v13, v6, Lf2/y;->a:Lf2/j0;

    .line 36
    .line 37
    iget-object v14, v6, Lf2/y;->b:Lf2/k0;

    .line 38
    .line 39
    iget v15, v6, Lf2/y;->e:I

    .line 40
    .line 41
    iget-boolean v1, v6, Lf2/y;->f:Z

    .line 42
    .line 43
    move/from16 v16, v1

    .line 44
    .line 45
    invoke-virtual/range {v11 .. v16}, Lf2/l0;->b(ILf2/j0;Lf2/k0;IZ)I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-ne v1, v7, :cond_0

    .line 50
    .line 51
    return-object v8

    .line 52
    :cond_0
    iget-object v5, v6, Lf2/y;->d:Lf2/l0;

    .line 53
    .line 54
    invoke-virtual {v5, v1, v9, v4}, Lf2/l0;->c(ILf2/j0;Z)Lf2/j0;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    iget v14, v4, Lf2/j0;->b:I

    .line 59
    .line 60
    iget-object v4, v9, Lf2/j0;->a:Ljava/lang/Object;

    .line 61
    .line 62
    iget-object v5, v6, Lf2/y;->d:Lf2/l0;

    .line 63
    .line 64
    iget-object v7, v6, Lf2/y;->b:Lf2/k0;

    .line 65
    .line 66
    invoke-virtual {v5, v14, v7}, Lf2/l0;->h(ILf2/k0;)Lf2/k0;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    iget v5, v5, Lf2/k0;->e:I

    .line 71
    .line 72
    const-wide/16 v11, 0x0

    .line 73
    .line 74
    if-ne v5, v1, :cond_3

    .line 75
    .line 76
    iget-object v1, v6, Lf2/y;->d:Lf2/l0;

    .line 77
    .line 78
    iget-object v4, v6, Lf2/y;->b:Lf2/k0;

    .line 79
    .line 80
    iget-object v13, v6, Lf2/y;->a:Lf2/j0;

    .line 81
    .line 82
    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    invoke-static {v11, v12, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 88
    .line 89
    .line 90
    move-result-wide v17

    .line 91
    move-object v11, v1

    .line 92
    move-object v12, v4

    .line 93
    invoke-virtual/range {v11 .. v18}, Lf2/l0;->f(Lf2/k0;Lf2/j0;IJJ)Landroid/util/Pair;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    if-nez v1, :cond_1

    .line 98
    .line 99
    return-object v8

    .line 100
    :cond_1
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 101
    .line 102
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v1, Ljava/lang/Long;

    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 107
    .line 108
    .line 109
    move-result-wide v11

    .line 110
    iget-object v0, v0, Lf2/w;->k:Lf2/w;

    .line 111
    .line 112
    if-eqz v0, :cond_2

    .line 113
    .line 114
    iget-object v1, v0, Lf2/w;->b:Ljava/lang/Object;

    .line 115
    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-eqz v1, :cond_2

    .line 121
    .line 122
    iget-object v0, v0, Lf2/w;->f:Lf2/x;

    .line 123
    .line 124
    iget-object v0, v0, Lf2/x;->a:Lt2/f;

    .line 125
    .line 126
    iget-wide v0, v0, Lt2/f;->d:J

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_2
    iget-wide v0, v6, Lf2/y;->c:J

    .line 130
    .line 131
    const-wide/16 v3, 0x1

    .line 132
    .line 133
    add-long/2addr v3, v0

    .line 134
    iput-wide v3, v6, Lf2/y;->c:J

    .line 135
    .line 136
    :goto_0
    move-wide v4, v0

    .line 137
    move-object v1, v2

    .line 138
    goto :goto_1

    .line 139
    :cond_3
    iget-wide v0, v10, Lt2/f;->d:J

    .line 140
    .line 141
    move-wide/from16 v19, v0

    .line 142
    .line 143
    move-object v1, v4

    .line 144
    move-wide/from16 v4, v19

    .line 145
    .line 146
    :goto_1
    move-object/from16 v0, p0

    .line 147
    .line 148
    move-wide v2, v11

    .line 149
    invoke-virtual/range {v0 .. v5}, Lf2/y;->j(Ljava/lang/Object;JJ)Lt2/f;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {v6, v0, v11, v12}, Lf2/y;->d(Lt2/f;J)Lf2/x;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    return-object v0

    .line 158
    :cond_4
    iget-object v0, v6, Lf2/y;->d:Lf2/l0;

    .line 159
    .line 160
    iget-object v2, v10, Lt2/f;->a:Ljava/lang/Object;

    .line 161
    .line 162
    invoke-virtual {v0, v2, v9}, Lf2/l0;->d(Ljava/lang/Object;Lf2/j0;)Lf2/j0;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v10}, Lt2/f;->a()Z

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    if-eqz v0, :cond_5

    .line 170
    .line 171
    iget-object v0, v9, Lf2/j0;->e:Lu2/b;

    .line 172
    .line 173
    iget-object v0, v0, Lu2/b;->c:[Lu2/a;

    .line 174
    .line 175
    iget v1, v10, Lt2/f;->b:I

    .line 176
    .line 177
    aget-object v0, v0, v1

    .line 178
    .line 179
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    .line 181
    .line 182
    return-object v8

    .line 183
    :cond_5
    iget-wide v2, v1, Lf2/x;->d:J

    .line 184
    .line 185
    invoke-virtual {v9, v2, v3}, Lf2/j0;->b(J)I

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    if-ne v0, v7, :cond_6

    .line 190
    .line 191
    iget-object v2, v10, Lt2/f;->a:Ljava/lang/Object;

    .line 192
    .line 193
    iget-wide v3, v1, Lf2/x;->e:J

    .line 194
    .line 195
    iget-wide v7, v10, Lt2/f;->d:J

    .line 196
    .line 197
    move-object/from16 v0, p0

    .line 198
    .line 199
    move-object v1, v2

    .line 200
    move-wide v2, v3

    .line 201
    move-wide v4, v7

    .line 202
    invoke-virtual/range {v0 .. v5}, Lf2/y;->e(Ljava/lang/Object;JJ)Lf2/x;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    return-object v0

    .line 207
    :cond_6
    iget-object v1, v9, Lf2/j0;->e:Lu2/b;

    .line 208
    .line 209
    iget-object v1, v1, Lu2/b;->c:[Lu2/a;

    .line 210
    .line 211
    aget-object v1, v1, v0

    .line 212
    .line 213
    const/4 v2, 0x0

    .line 214
    :goto_2
    iget-object v3, v1, Lu2/a;->b:[I

    .line 215
    .line 216
    array-length v5, v3

    .line 217
    if-ge v2, v5, :cond_8

    .line 218
    .line 219
    aget v3, v3, v2

    .line 220
    .line 221
    if-eqz v3, :cond_8

    .line 222
    .line 223
    if-ne v3, v4, :cond_7

    .line 224
    .line 225
    goto :goto_3

    .line 226
    :cond_7
    add-int/lit8 v2, v2, 0x1

    .line 227
    .line 228
    goto :goto_2

    .line 229
    :cond_8
    :goto_3
    iget-object v1, v9, Lf2/j0;->e:Lu2/b;

    .line 230
    .line 231
    iget-object v1, v1, Lu2/b;->c:[Lu2/a;

    .line 232
    .line 233
    aget-object v0, v1, v0

    .line 234
    .line 235
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 236
    .line 237
    .line 238
    return-object v8
.end method

.method public final d(Lt2/f;J)Lf2/x;
    .locals 6

    .line 1
    iget-object v0, p0, Lf2/y;->d:Lf2/l0;

    .line 2
    .line 3
    iget-object v1, p1, Lt2/f;->a:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Lf2/y;->a:Lf2/j0;

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lf2/l0;->d(Ljava/lang/Object;Lf2/j0;)Lf2/j0;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lt2/f;->a()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object p2, v2, Lf2/j0;->e:Lu2/b;

    .line 17
    .line 18
    iget-object p2, p2, Lu2/b;->c:[Lu2/a;

    .line 19
    .line 20
    iget p1, p1, Lt2/f;->b:I

    .line 21
    .line 22
    aget-object p1, p2, p1

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    return-object p1

    .line 29
    :cond_0
    iget-object v1, p1, Lt2/f;->a:Ljava/lang/Object;

    .line 30
    .line 31
    iget-wide v4, p1, Lt2/f;->d:J

    .line 32
    .line 33
    move-object v0, p0

    .line 34
    move-wide v2, p2

    .line 35
    invoke-virtual/range {v0 .. v5}, Lf2/y;->e(Ljava/lang/Object;JJ)Lf2/x;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    return-object p1
.end method

.method public final e(Ljava/lang/Object;JJ)Lf2/x;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lf2/y;->a:Lf2/j0;

    .line 4
    .line 5
    move-wide/from16 v4, p2

    .line 6
    .line 7
    invoke-virtual {v1, v4, v5}, Lf2/j0;->a(J)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    new-instance v3, Lt2/f;

    .line 12
    .line 13
    move-object/from16 v6, p1

    .line 14
    .line 15
    move-wide/from16 v7, p4

    .line 16
    .line 17
    invoke-direct {v3, v2, v7, v8, v6}, Lt2/f;-><init>(IJLjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3}, Lt2/f;->a()Z

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    const/4 v7, -0x1

    .line 25
    if-nez v6, :cond_0

    .line 26
    .line 27
    if-ne v2, v7, :cond_0

    .line 28
    .line 29
    const/4 v6, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v6, 0x0

    .line 32
    :goto_0
    move v12, v6

    .line 33
    invoke-virtual {v0, v3, v12}, Lf2/y;->g(Lt2/f;Z)Z

    .line 34
    .line 35
    .line 36
    move-result v13

    .line 37
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    if-eq v2, v7, :cond_1

    .line 43
    .line 44
    iget-object v6, v1, Lf2/j0;->e:Lu2/b;

    .line 45
    .line 46
    iget-object v6, v6, Lu2/b;->b:[J

    .line 47
    .line 48
    aget-wide v10, v6, v2

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    move-wide v10, v8

    .line 52
    :goto_1
    cmp-long v2, v10, v8

    .line 53
    .line 54
    if-eqz v2, :cond_3

    .line 55
    .line 56
    const-wide/high16 v6, -0x8000000000000000L

    .line 57
    .line 58
    cmp-long v2, v10, v6

    .line 59
    .line 60
    if-nez v2, :cond_2

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_2
    move-wide v14, v10

    .line 64
    goto :goto_3

    .line 65
    :cond_3
    :goto_2
    iget-wide v1, v1, Lf2/j0;->c:J

    .line 66
    .line 67
    move-wide v14, v1

    .line 68
    :goto_3
    new-instance v1, Lf2/x;

    .line 69
    .line 70
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    move-object v2, v1

    .line 76
    move-wide/from16 v4, p2

    .line 77
    .line 78
    move-wide v8, v10

    .line 79
    move-wide v10, v14

    .line 80
    invoke-direct/range {v2 .. v13}, Lf2/x;-><init>(Lt2/f;JJJJZZ)V

    .line 81
    .line 82
    .line 83
    return-object v1
.end method

.method public final f(Lf2/x;)Lf2/x;
    .locals 13

    .line 1
    iget-object v1, p1, Lf2/x;->a:Lt2/f;

    .line 2
    .line 3
    invoke-virtual {v1}, Lt2/f;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget v0, v1, Lt2/f;->e:I

    .line 10
    .line 11
    const/4 v2, -0x1

    .line 12
    if-ne v0, v2, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    move v10, v0

    .line 18
    invoke-virtual {p0, v1, v10}, Lf2/y;->g(Lt2/f;Z)Z

    .line 19
    .line 20
    .line 21
    move-result v11

    .line 22
    iget-object v0, p0, Lf2/y;->d:Lf2/l0;

    .line 23
    .line 24
    iget-object v2, p1, Lf2/x;->a:Lt2/f;

    .line 25
    .line 26
    iget-object v2, v2, Lt2/f;->a:Ljava/lang/Object;

    .line 27
    .line 28
    iget-object v3, p0, Lf2/y;->a:Lf2/j0;

    .line 29
    .line 30
    invoke-virtual {v0, v2, v3}, Lf2/l0;->d(Ljava/lang/Object;Lf2/j0;)Lf2/j0;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Lt2/f;->a()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    iget-object v0, v3, Lf2/j0;->e:Lu2/b;

    .line 45
    .line 46
    iget-object v0, v0, Lu2/b;->c:[Lu2/a;

    .line 47
    .line 48
    iget v2, v1, Lt2/f;->b:I

    .line 49
    .line 50
    aget-object v0, v0, v2

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    move-wide v8, v4

    .line 56
    goto :goto_2

    .line 57
    :cond_1
    iget-wide v6, p1, Lf2/x;->d:J

    .line 58
    .line 59
    cmp-long v0, v6, v4

    .line 60
    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    const-wide/high16 v4, -0x8000000000000000L

    .line 64
    .line 65
    cmp-long v0, v6, v4

    .line 66
    .line 67
    if-nez v0, :cond_2

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    move-wide v8, v6

    .line 71
    goto :goto_2

    .line 72
    :cond_3
    :goto_1
    iget-wide v2, v3, Lf2/j0;->c:J

    .line 73
    .line 74
    move-wide v8, v2

    .line 75
    :goto_2
    new-instance v12, Lf2/x;

    .line 76
    .line 77
    iget-wide v2, p1, Lf2/x;->b:J

    .line 78
    .line 79
    iget-wide v4, p1, Lf2/x;->c:J

    .line 80
    .line 81
    iget-wide v6, p1, Lf2/x;->d:J

    .line 82
    .line 83
    move-object v0, v12

    .line 84
    invoke-direct/range {v0 .. v11}, Lf2/x;-><init>(Lt2/f;JJJJZZ)V

    .line 85
    .line 86
    .line 87
    return-object v12
.end method

.method public final g(Lt2/f;Z)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lf2/y;->d:Lf2/l0;

    .line 2
    .line 3
    iget-object p1, p1, Lt2/f;->a:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lf2/l0;->a(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    iget-object p1, p0, Lf2/y;->d:Lf2/l0;

    .line 10
    .line 11
    iget-object v0, p0, Lf2/y;->a:Lf2/j0;

    .line 12
    .line 13
    const/4 v7, 0x0

    .line 14
    invoke-virtual {p1, v2, v0, v7}, Lf2/l0;->c(ILf2/j0;Z)Lf2/j0;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget p1, p1, Lf2/j0;->b:I

    .line 19
    .line 20
    iget-object v0, p0, Lf2/y;->d:Lf2/l0;

    .line 21
    .line 22
    iget-object v1, p0, Lf2/y;->b:Lf2/k0;

    .line 23
    .line 24
    invoke-virtual {v0, p1, v1}, Lf2/l0;->h(ILf2/k0;)Lf2/k0;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget-boolean p1, p1, Lf2/k0;->d:Z

    .line 29
    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    iget-object v1, p0, Lf2/y;->d:Lf2/l0;

    .line 33
    .line 34
    iget-object v3, p0, Lf2/y;->a:Lf2/j0;

    .line 35
    .line 36
    iget-object v4, p0, Lf2/y;->b:Lf2/k0;

    .line 37
    .line 38
    iget v5, p0, Lf2/y;->e:I

    .line 39
    .line 40
    iget-boolean v6, p0, Lf2/y;->f:Z

    .line 41
    .line 42
    invoke-virtual/range {v1 .. v6}, Lf2/l0;->b(ILf2/j0;Lf2/k0;IZ)I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    const/4 v0, -0x1

    .line 47
    const/4 v1, 0x1

    .line 48
    if-ne p1, v0, :cond_0

    .line 49
    .line 50
    move p1, v1

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    move p1, v7

    .line 53
    :goto_0
    if-eqz p1, :cond_1

    .line 54
    .line 55
    if-eqz p2, :cond_1

    .line 56
    .line 57
    move v7, v1

    .line 58
    :cond_1
    return v7
.end method

.method public final h(Lf2/w;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    move v2, v1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    move v2, v0

    .line 8
    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/i0;->m(Z)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lf2/y;->i:Lf2/w;

    .line 12
    .line 13
    :goto_1
    iget-object p1, p1, Lf2/w;->k:Lf2/w;

    .line 14
    .line 15
    if-eqz p1, :cond_2

    .line 16
    .line 17
    iget-object v2, p0, Lf2/y;->h:Lf2/w;

    .line 18
    .line 19
    if-ne p1, v2, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lf2/y;->g:Lf2/w;

    .line 22
    .line 23
    iput-object v0, p0, Lf2/y;->h:Lf2/w;

    .line 24
    .line 25
    move v0, v1

    .line 26
    :cond_1
    invoke-virtual {p1}, Lf2/w;->e()V

    .line 27
    .line 28
    .line 29
    iget v2, p0, Lf2/y;->j:I

    .line 30
    .line 31
    sub-int/2addr v2, v1

    .line 32
    iput v2, p0, Lf2/y;->j:I

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    iget-object p1, p0, Lf2/y;->i:Lf2/w;

    .line 36
    .line 37
    iget-object v1, p1, Lf2/w;->k:Lf2/w;

    .line 38
    .line 39
    if-nez v1, :cond_3

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_3
    invoke-virtual {p1}, Lf2/w;->b()V

    .line 43
    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    iput-object v1, p1, Lf2/w;->k:Lf2/w;

    .line 47
    .line 48
    invoke-virtual {p1}, Lf2/w;->c()V

    .line 49
    .line 50
    .line 51
    :goto_2
    return v0
.end method

.method public final i(Ljava/lang/Object;J)Lt2/f;
    .locals 9

    .line 1
    iget-object v0, p0, Lf2/y;->d:Lf2/l0;

    .line 2
    .line 3
    iget-object v1, p0, Lf2/y;->a:Lf2/j0;

    .line 4
    .line 5
    invoke-virtual {v0, p1, v1}, Lf2/l0;->d(Ljava/lang/Object;Lf2/j0;)Lf2/j0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Lf2/j0;->b:I

    .line 10
    .line 11
    iget-object v2, p0, Lf2/y;->k:Ljava/lang/Object;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, -0x1

    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    iget-object v5, p0, Lf2/y;->d:Lf2/l0;

    .line 18
    .line 19
    invoke-virtual {v5, v2}, Lf2/l0;->a(Ljava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eq v2, v4, :cond_1

    .line 24
    .line 25
    iget-object v5, p0, Lf2/y;->d:Lf2/l0;

    .line 26
    .line 27
    invoke-virtual {v5, v2, v1, v3}, Lf2/l0;->c(ILf2/j0;Z)Lf2/j0;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    iget v2, v2, Lf2/j0;->b:I

    .line 32
    .line 33
    if-ne v2, v0, :cond_1

    .line 34
    .line 35
    iget-wide v0, p0, Lf2/y;->l:J

    .line 36
    .line 37
    :cond_0
    :goto_0
    move-wide v7, v0

    .line 38
    goto :goto_4

    .line 39
    :cond_1
    iget-object v2, p0, Lf2/y;->g:Lf2/w;

    .line 40
    .line 41
    :goto_1
    if-eqz v2, :cond_3

    .line 42
    .line 43
    iget-object v5, v2, Lf2/w;->b:Ljava/lang/Object;

    .line 44
    .line 45
    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-eqz v5, :cond_2

    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_2
    iget-object v2, v2, Lf2/w;->k:Lf2/w;

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    iget-object v2, p0, Lf2/y;->g:Lf2/w;

    .line 56
    .line 57
    :goto_2
    if-eqz v2, :cond_5

    .line 58
    .line 59
    iget-object v5, p0, Lf2/y;->d:Lf2/l0;

    .line 60
    .line 61
    iget-object v6, v2, Lf2/w;->b:Ljava/lang/Object;

    .line 62
    .line 63
    invoke-virtual {v5, v6}, Lf2/l0;->a(Ljava/lang/Object;)I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    if-eq v5, v4, :cond_4

    .line 68
    .line 69
    iget-object v6, p0, Lf2/y;->d:Lf2/l0;

    .line 70
    .line 71
    invoke-virtual {v6, v5, v1, v3}, Lf2/l0;->c(ILf2/j0;Z)Lf2/j0;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    iget v5, v5, Lf2/j0;->b:I

    .line 76
    .line 77
    if-ne v5, v0, :cond_4

    .line 78
    .line 79
    :goto_3
    iget-object v0, v2, Lf2/w;->f:Lf2/x;

    .line 80
    .line 81
    iget-object v0, v0, Lf2/x;->a:Lt2/f;

    .line 82
    .line 83
    iget-wide v0, v0, Lt2/f;->d:J

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_4
    iget-object v2, v2, Lf2/w;->k:Lf2/w;

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_5
    iget-wide v0, p0, Lf2/y;->c:J

    .line 90
    .line 91
    const-wide/16 v2, 0x1

    .line 92
    .line 93
    add-long/2addr v2, v0

    .line 94
    iput-wide v2, p0, Lf2/y;->c:J

    .line 95
    .line 96
    iget-object v2, p0, Lf2/y;->g:Lf2/w;

    .line 97
    .line 98
    if-nez v2, :cond_0

    .line 99
    .line 100
    iput-object p1, p0, Lf2/y;->k:Ljava/lang/Object;

    .line 101
    .line 102
    iput-wide v0, p0, Lf2/y;->l:J

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :goto_4
    move-object v3, p0

    .line 106
    move-object v4, p1

    .line 107
    move-wide v5, p2

    .line 108
    invoke-virtual/range {v3 .. v8}, Lf2/y;->j(Ljava/lang/Object;JJ)Lt2/f;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    return-object p1
.end method

.method public final j(Ljava/lang/Object;JJ)Lt2/f;
    .locals 8

    .line 1
    iget-object v0, p0, Lf2/y;->d:Lf2/l0;

    .line 2
    .line 3
    iget-object v1, p0, Lf2/y;->a:Lf2/j0;

    .line 4
    .line 5
    invoke-virtual {v0, p1, v1}, Lf2/l0;->d(Ljava/lang/Object;Lf2/j0;)Lf2/j0;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p2, p3}, Lf2/j0;->b(J)I

    .line 9
    .line 10
    .line 11
    move-result v4

    .line 12
    const/4 v0, -0x1

    .line 13
    if-ne v4, v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1, p2, p3}, Lf2/j0;->a(J)I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    new-instance p3, Lt2/f;

    .line 20
    .line 21
    invoke-direct {p3, p2, p4, p5, p1}, Lt2/f;-><init>(IJLjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-object p3

    .line 25
    :cond_0
    iget-object p2, v1, Lf2/j0;->e:Lu2/b;

    .line 26
    .line 27
    iget-object p2, p2, Lu2/b;->c:[Lu2/a;

    .line 28
    .line 29
    aget-object p2, p2, v4

    .line 30
    .line 31
    const/4 p3, 0x0

    .line 32
    move v5, p3

    .line 33
    :goto_0
    iget-object p3, p2, Lu2/a;->b:[I

    .line 34
    .line 35
    array-length v0, p3

    .line 36
    if-ge v5, v0, :cond_2

    .line 37
    .line 38
    aget p3, p3, v5

    .line 39
    .line 40
    if-eqz p3, :cond_2

    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    if-ne p3, v0, :cond_1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    :goto_1
    new-instance p2, Lt2/f;

    .line 50
    .line 51
    move-object v2, p2

    .line 52
    move-object v3, p1

    .line 53
    move-wide v6, p4

    .line 54
    invoke-direct/range {v2 .. v7}, Lt2/f;-><init>(Ljava/lang/Object;IIJ)V

    .line 55
    .line 56
    .line 57
    return-object p2
.end method

.method public final k()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lf2/y;->g:Lf2/w;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v2, p0, Lf2/y;->d:Lf2/l0;

    .line 8
    .line 9
    iget-object v3, v0, Lf2/w;->b:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {v2, v3}, Lf2/l0;->a(Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    move v3, v2

    .line 16
    :goto_0
    iget-object v2, p0, Lf2/y;->d:Lf2/l0;

    .line 17
    .line 18
    iget-object v4, p0, Lf2/y;->a:Lf2/j0;

    .line 19
    .line 20
    iget-object v5, p0, Lf2/y;->b:Lf2/k0;

    .line 21
    .line 22
    iget v6, p0, Lf2/y;->e:I

    .line 23
    .line 24
    iget-boolean v7, p0, Lf2/y;->f:Z

    .line 25
    .line 26
    invoke-virtual/range {v2 .. v7}, Lf2/l0;->b(ILf2/j0;Lf2/k0;IZ)I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    :goto_1
    iget-object v2, v0, Lf2/w;->k:Lf2/w;

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    iget-object v4, v0, Lf2/w;->f:Lf2/x;

    .line 35
    .line 36
    iget-boolean v4, v4, Lf2/x;->f:Z

    .line 37
    .line 38
    if-nez v4, :cond_1

    .line 39
    .line 40
    move-object v0, v2

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const/4 v4, -0x1

    .line 43
    if-eq v3, v4, :cond_4

    .line 44
    .line 45
    if-nez v2, :cond_2

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    iget-object v4, p0, Lf2/y;->d:Lf2/l0;

    .line 49
    .line 50
    iget-object v5, v2, Lf2/w;->b:Ljava/lang/Object;

    .line 51
    .line 52
    invoke-virtual {v4, v5}, Lf2/l0;->a(Ljava/lang/Object;)I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eq v4, v3, :cond_3

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_3
    move-object v0, v2

    .line 60
    goto :goto_0

    .line 61
    :cond_4
    :goto_2
    invoke-virtual {p0, v0}, Lf2/y;->h(Lf2/w;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    iget-object v3, v0, Lf2/w;->f:Lf2/x;

    .line 66
    .line 67
    invoke-virtual {p0, v3}, Lf2/y;->f(Lf2/x;)Lf2/x;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    iput-object v3, v0, Lf2/w;->f:Lf2/x;

    .line 72
    .line 73
    xor-int/lit8 v0, v2, 0x1

    .line 74
    .line 75
    return v0
.end method
