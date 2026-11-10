.class public final Lt2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt2/s;


# instance fields
.field public final f:Lt2/s;

.field public g:Z

.field public final synthetic h:Lt2/c;


# direct methods
.method public constructor <init>(Lt2/c;Lt2/s;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lt2/b;->h:Lt2/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lt2/b;->f:Lt2/s;

    return-void
.end method


# virtual methods
.method public final A(J)I
    .locals 1

    .line 1
    iget-object v0, p0, Lt2/b;->h:Lt2/c;

    invoke-virtual {v0}, Lt2/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x3

    return p1

    :cond_0
    iget-object v0, p0, Lt2/b;->f:Lt2/s;

    invoke-interface {v0, p1, p2}, Lt2/s;->A(J)I

    move-result p1

    return p1
.end method

.method public final B(Lf2/u;Li2/c;Z)I
    .locals 44

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v0, Lt2/b;->h:Lt2/c;

    .line 8
    .line 9
    invoke-virtual {v3}, Lt2/c;->c()Z

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    const/4 v5, -0x3

    .line 14
    if-eqz v4, :cond_0

    .line 15
    .line 16
    return v5

    .line 17
    :cond_0
    iget-boolean v4, v0, Lt2/b;->g:Z

    .line 18
    .line 19
    const/4 v6, 0x4

    .line 20
    const/4 v7, -0x4

    .line 21
    if-eqz v4, :cond_1

    .line 22
    .line 23
    iput v6, v2, Li2/a;->b:I

    .line 24
    .line 25
    return v7

    .line 26
    :cond_1
    iget-object v4, v0, Lt2/b;->f:Lt2/s;

    .line 27
    .line 28
    move/from16 v8, p3

    .line 29
    .line 30
    invoke-interface {v4, v1, v2, v8}, Lt2/s;->B(Lf2/u;Li2/c;Z)I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    iget-wide v8, v3, Lt2/c;->j:J

    .line 35
    .line 36
    const/4 v10, -0x5

    .line 37
    const-wide/high16 v11, -0x8000000000000000L

    .line 38
    .line 39
    if-ne v4, v10, :cond_5

    .line 40
    .line 41
    iget-object v2, v1, Lf2/u;->a:Lf2/t;

    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    iget v3, v2, Lf2/t;->y:I

    .line 47
    .line 48
    iget v4, v2, Lf2/t;->z:I

    .line 49
    .line 50
    if-nez v3, :cond_2

    .line 51
    .line 52
    if-eqz v4, :cond_4

    .line 53
    .line 54
    :cond_2
    cmp-long v5, v8, v11

    .line 55
    .line 56
    if-eqz v5, :cond_3

    .line 57
    .line 58
    const/4 v4, 0x0

    .line 59
    :cond_3
    move/from16 v40, v4

    .line 60
    .line 61
    new-instance v4, Lf2/t;

    .line 62
    .line 63
    move-object v13, v4

    .line 64
    iget-object v14, v2, Lf2/t;->a:Ljava/lang/String;

    .line 65
    .line 66
    iget-object v15, v2, Lf2/t;->b:Ljava/lang/String;

    .line 67
    .line 68
    iget v5, v2, Lf2/t;->c:I

    .line 69
    .line 70
    move/from16 v16, v5

    .line 71
    .line 72
    iget v5, v2, Lf2/t;->d:I

    .line 73
    .line 74
    move/from16 v17, v5

    .line 75
    .line 76
    iget v5, v2, Lf2/t;->e:I

    .line 77
    .line 78
    move/from16 v18, v5

    .line 79
    .line 80
    iget-object v5, v2, Lf2/t;->f:Ljava/lang/String;

    .line 81
    .line 82
    move-object/from16 v19, v5

    .line 83
    .line 84
    iget-object v5, v2, Lf2/t;->g:Lp2/b;

    .line 85
    .line 86
    move-object/from16 v20, v5

    .line 87
    .line 88
    iget-object v5, v2, Lf2/t;->h:Ljava/lang/String;

    .line 89
    .line 90
    move-object/from16 v21, v5

    .line 91
    .line 92
    iget-object v5, v2, Lf2/t;->i:Ljava/lang/String;

    .line 93
    .line 94
    move-object/from16 v22, v5

    .line 95
    .line 96
    iget v5, v2, Lf2/t;->j:I

    .line 97
    .line 98
    move/from16 v23, v5

    .line 99
    .line 100
    iget-object v5, v2, Lf2/t;->k:Ljava/util/List;

    .line 101
    .line 102
    move-object/from16 v24, v5

    .line 103
    .line 104
    iget-object v5, v2, Lf2/t;->l:Lj2/b;

    .line 105
    .line 106
    move-object/from16 v25, v5

    .line 107
    .line 108
    iget-wide v5, v2, Lf2/t;->m:J

    .line 109
    .line 110
    move-wide/from16 v26, v5

    .line 111
    .line 112
    iget v5, v2, Lf2/t;->n:I

    .line 113
    .line 114
    move/from16 v28, v5

    .line 115
    .line 116
    iget v5, v2, Lf2/t;->o:I

    .line 117
    .line 118
    move/from16 v29, v5

    .line 119
    .line 120
    iget v5, v2, Lf2/t;->p:F

    .line 121
    .line 122
    move/from16 v30, v5

    .line 123
    .line 124
    iget v5, v2, Lf2/t;->q:I

    .line 125
    .line 126
    move/from16 v31, v5

    .line 127
    .line 128
    iget v5, v2, Lf2/t;->r:F

    .line 129
    .line 130
    move/from16 v32, v5

    .line 131
    .line 132
    iget-object v5, v2, Lf2/t;->t:[B

    .line 133
    .line 134
    move-object/from16 v33, v5

    .line 135
    .line 136
    iget v5, v2, Lf2/t;->s:I

    .line 137
    .line 138
    move/from16 v34, v5

    .line 139
    .line 140
    iget-object v5, v2, Lf2/t;->u:Lc3/a;

    .line 141
    .line 142
    move-object/from16 v35, v5

    .line 143
    .line 144
    iget v5, v2, Lf2/t;->v:I

    .line 145
    .line 146
    move/from16 v36, v5

    .line 147
    .line 148
    iget v5, v2, Lf2/t;->w:I

    .line 149
    .line 150
    move/from16 v37, v5

    .line 151
    .line 152
    iget v5, v2, Lf2/t;->x:I

    .line 153
    .line 154
    move/from16 v38, v5

    .line 155
    .line 156
    iget-object v5, v2, Lf2/t;->A:Ljava/lang/String;

    .line 157
    .line 158
    move-object/from16 v41, v5

    .line 159
    .line 160
    iget v5, v2, Lf2/t;->B:I

    .line 161
    .line 162
    move/from16 v42, v5

    .line 163
    .line 164
    iget-object v2, v2, Lf2/t;->C:Ljava/lang/Class;

    .line 165
    .line 166
    move-object/from16 v43, v2

    .line 167
    .line 168
    move/from16 v39, v3

    .line 169
    .line 170
    invoke-direct/range {v13 .. v43}, Lf2/t;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lp2/b;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lj2/b;JIIFIF[BILc3/a;IIIIILjava/lang/String;ILjava/lang/Class;)V

    .line 171
    .line 172
    .line 173
    iput-object v4, v1, Lf2/u;->a:Lf2/t;

    .line 174
    .line 175
    :cond_4
    return v10

    .line 176
    :cond_5
    cmp-long v1, v8, v11

    .line 177
    .line 178
    if-eqz v1, :cond_8

    .line 179
    .line 180
    if-ne v4, v7, :cond_6

    .line 181
    .line 182
    iget-wide v13, v2, Li2/c;->f:J

    .line 183
    .line 184
    cmp-long v1, v13, v8

    .line 185
    .line 186
    if-gez v1, :cond_7

    .line 187
    .line 188
    :cond_6
    if-ne v4, v5, :cond_8

    .line 189
    .line 190
    invoke-virtual {v3}, Lt2/c;->m()J

    .line 191
    .line 192
    .line 193
    move-result-wide v8

    .line 194
    cmp-long v1, v8, v11

    .line 195
    .line 196
    if-nez v1, :cond_8

    .line 197
    .line 198
    iget-boolean v1, v2, Li2/c;->e:Z

    .line 199
    .line 200
    if-nez v1, :cond_8

    .line 201
    .line 202
    :cond_7
    invoke-virtual/range {p2 .. p2}, Li2/c;->c()V

    .line 203
    .line 204
    .line 205
    iput v6, v2, Li2/a;->b:I

    .line 206
    .line 207
    const/4 v1, 0x1

    .line 208
    iput-boolean v1, v0, Lt2/b;->g:Z

    .line 209
    .line 210
    return v7

    .line 211
    :cond_8
    return v4
.end method

.method public final isReady()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lt2/b;->h:Lt2/c;

    invoke-virtual {v0}, Lt2/c;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lt2/b;->f:Lt2/s;

    invoke-interface {v0}, Lt2/s;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final y()V
    .locals 1

    .line 1
    iget-object v0, p0, Lt2/b;->f:Lt2/s;

    invoke-interface {v0}, Lt2/s;->y()V

    return-void
.end method
