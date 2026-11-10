.class public final Lx2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx2/l;
.implements La3/w;


# instance fields
.field public final f:Lw2/b;

.field public final g:Lx2/j;

.field public final h:La3/r;

.field public final i:Ljava/util/HashMap;

.field public final j:Ljava/util/ArrayList;

.field public k:La3/d0;

.field public l:Lcom/google/android/gms/internal/play_billing/v;

.field public m:La3/c0;

.field public n:Landroid/os/Handler;

.field public o:Lx2/k;

.field public p:Lx2/e;

.field public q:Landroid/net/Uri;

.field public r:Lx2/g;

.field public s:Z

.field public t:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lh0/c;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Lh0/c;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lw2/b;La3/r;Lx2/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx2/b;->f:Lw2/b;

    .line 5
    .line 6
    iput-object p3, p0, Lx2/b;->g:Lx2/j;

    .line 7
    .line 8
    iput-object p2, p0, Lx2/b;->h:La3/r;

    .line 9
    .line 10
    new-instance p1, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lx2/b;->j:Ljava/util/ArrayList;

    .line 16
    .line 17
    new-instance p1, Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lx2/b;->i:Ljava/util/HashMap;

    .line 23
    .line 24
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    iput-wide p1, p0, Lx2/b;->t:J

    .line 30
    .line 31
    return-void
.end method

.method public static d(Lx2/b;Landroid/net/Uri;J)Z
    .locals 18

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    move-wide/from16 v2, p2

    .line 6
    .line 7
    iget-object v1, v1, Lx2/b;->j:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v7, 0x0

    .line 15
    :goto_0
    if-ge v6, v4, :cond_7

    .line 16
    .line 17
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v8

    .line 21
    check-cast v8, Lw2/i;

    .line 22
    .line 23
    iget-object v9, v8, Lw2/i;->w:[Lw2/p;

    .line 24
    .line 25
    array-length v10, v9

    .line 26
    const/4 v12, 0x0

    .line 27
    const/4 v13, 0x1

    .line 28
    :goto_1
    if-ge v12, v10, :cond_6

    .line 29
    .line 30
    aget-object v14, v9, v12

    .line 31
    .line 32
    const/4 v15, 0x0

    .line 33
    :goto_2
    iget-object v5, v14, Lw2/p;->h:Lw2/f;

    .line 34
    .line 35
    iget-object v11, v5, Lw2/f;->e:[Landroid/net/Uri;

    .line 36
    .line 37
    move-object/from16 v16, v1

    .line 38
    .line 39
    array-length v1, v11

    .line 40
    move/from16 v17, v4

    .line 41
    .line 42
    const/4 v4, -0x1

    .line 43
    if-ge v15, v1, :cond_1

    .line 44
    .line 45
    aget-object v1, v11, v15

    .line 46
    .line 47
    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_0

    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_0
    add-int/lit8 v15, v15, 0x1

    .line 55
    .line 56
    move-object/from16 v1, v16

    .line 57
    .line 58
    move/from16 v4, v17

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_1
    move v15, v4

    .line 62
    :goto_3
    if-ne v15, v4, :cond_2

    .line 63
    .line 64
    goto :goto_4

    .line 65
    :cond_2
    iget-object v1, v5, Lw2/f;->p:Lz2/p;

    .line 66
    .line 67
    check-cast v1, Lz2/d;

    .line 68
    .line 69
    invoke-virtual {v1, v15}, Lz2/d;->h(I)I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-ne v1, v4, :cond_3

    .line 74
    .line 75
    goto :goto_4

    .line 76
    :cond_3
    iget-boolean v4, v5, Lw2/f;->r:Z

    .line 77
    .line 78
    iget-object v11, v5, Lw2/f;->n:Landroid/net/Uri;

    .line 79
    .line 80
    invoke-virtual {v0, v11}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v11

    .line 84
    or-int/2addr v4, v11

    .line 85
    iput-boolean v4, v5, Lw2/f;->r:Z

    .line 86
    .line 87
    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    cmp-long v4, v2, v14

    .line 93
    .line 94
    if-eqz v4, :cond_5

    .line 95
    .line 96
    iget-object v4, v5, Lw2/f;->p:Lz2/p;

    .line 97
    .line 98
    check-cast v4, Lz2/d;

    .line 99
    .line 100
    invoke-virtual {v4, v2, v3, v1}, Lz2/d;->g(JI)Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-eqz v1, :cond_4

    .line 105
    .line 106
    goto :goto_4

    .line 107
    :cond_4
    const/4 v1, 0x0

    .line 108
    goto :goto_5

    .line 109
    :cond_5
    :goto_4
    const/4 v1, 0x1

    .line 110
    :goto_5
    and-int/2addr v13, v1

    .line 111
    add-int/lit8 v12, v12, 0x1

    .line 112
    .line 113
    move-object/from16 v1, v16

    .line 114
    .line 115
    move/from16 v4, v17

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_6
    move-object/from16 v16, v1

    .line 119
    .line 120
    move/from16 v17, v4

    .line 121
    .line 122
    iget-object v1, v8, Lw2/i;->t:Lt2/d;

    .line 123
    .line 124
    invoke-interface {v1, v8}, Lt2/t;->b(Lt2/u;)V

    .line 125
    .line 126
    .line 127
    xor-int/lit8 v1, v13, 0x1

    .line 128
    .line 129
    or-int/2addr v7, v1

    .line 130
    add-int/lit8 v6, v6, 0x1

    .line 131
    .line 132
    move-object/from16 v1, v16

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_7
    return v7
.end method


# virtual methods
.method public final a(La3/z;JJ)V
    .locals 39

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, La3/e0;

    .line 6
    .line 7
    iget-object v2, v1, La3/e0;->e:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Lx2/h;

    .line 10
    .line 11
    instance-of v3, v2, Lx2/g;

    .line 12
    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    iget-object v4, v2, Lx2/h;->a:Ljava/lang/String;

    .line 16
    .line 17
    sget-object v5, Lx2/e;->n:Lx2/e;

    .line 18
    .line 19
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 20
    .line 21
    .line 22
    move-result-object v7

    .line 23
    const-string v9, "0"

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    const-string v16, "application/x-mpegURL"

    .line 27
    .line 28
    const/16 v17, 0x0

    .line 29
    .line 30
    const/4 v14, 0x0

    .line 31
    const/4 v13, -0x1

    .line 32
    const/4 v11, 0x0

    .line 33
    const/4 v12, 0x0

    .line 34
    const/16 v36, 0x0

    .line 35
    .line 36
    new-instance v5, Lf2/t;

    .line 37
    .line 38
    move-object v8, v5

    .line 39
    const/4 v15, 0x0

    .line 40
    const/16 v18, -0x1

    .line 41
    .line 42
    const/16 v19, 0x0

    .line 43
    .line 44
    const/16 v20, 0x0

    .line 45
    .line 46
    const-wide v21, 0x7fffffffffffffffL

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    const/16 v23, -0x1

    .line 52
    .line 53
    const/16 v24, -0x1

    .line 54
    .line 55
    const/high16 v25, -0x40800000    # -1.0f

    .line 56
    .line 57
    const/16 v26, -0x1

    .line 58
    .line 59
    const/high16 v27, -0x40800000    # -1.0f

    .line 60
    .line 61
    const/16 v28, 0x0

    .line 62
    .line 63
    const/16 v29, -0x1

    .line 64
    .line 65
    const/16 v30, 0x0

    .line 66
    .line 67
    const/16 v31, -0x1

    .line 68
    .line 69
    const/16 v32, -0x1

    .line 70
    .line 71
    const/16 v33, -0x1

    .line 72
    .line 73
    const/16 v34, -0x1

    .line 74
    .line 75
    const/16 v35, -0x1

    .line 76
    .line 77
    const/16 v37, -0x1

    .line 78
    .line 79
    const/16 v38, 0x0

    .line 80
    .line 81
    const/4 v10, 0x0

    .line 82
    invoke-direct/range {v8 .. v38}, Lf2/t;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lp2/b;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lj2/b;JIIFIF[BILc3/a;IIIIILjava/lang/String;ILjava/lang/Class;)V

    .line 83
    .line 84
    .line 85
    new-instance v13, Lx2/d;

    .line 86
    .line 87
    const/4 v9, 0x0

    .line 88
    const/4 v11, 0x0

    .line 89
    const/4 v12, 0x0

    .line 90
    move-object v6, v13

    .line 91
    move-object v10, v4

    .line 92
    invoke-direct/range {v6 .. v12}, Lx2/d;-><init>(Landroid/net/Uri;Lf2/t;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-static {v13}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object v17

    .line 99
    new-instance v4, Lx2/e;

    .line 100
    .line 101
    const-string v15, ""

    .line 102
    .line 103
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 104
    .line 105
    .line 106
    move-result-object v16

    .line 107
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 108
    .line 109
    .line 110
    move-result-object v18

    .line 111
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 112
    .line 113
    .line 114
    move-result-object v19

    .line 115
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 116
    .line 117
    .line 118
    move-result-object v20

    .line 119
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 120
    .line 121
    .line 122
    move-result-object v21

    .line 123
    const/16 v22, 0x0

    .line 124
    .line 125
    const/16 v23, 0x0

    .line 126
    .line 127
    const/16 v24, 0x0

    .line 128
    .line 129
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 130
    .line 131
    .line 132
    move-result-object v25

    .line 133
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 134
    .line 135
    .line 136
    move-result-object v26

    .line 137
    move-object v14, v4

    .line 138
    invoke-direct/range {v14 .. v26}, Lx2/e;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lf2/t;Ljava/util/List;ZLjava/util/Map;Ljava/util/List;)V

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_0
    move-object v4, v2

    .line 143
    check-cast v4, Lx2/e;

    .line 144
    .line 145
    :goto_0
    iput-object v4, v0, Lx2/b;->p:Lx2/e;

    .line 146
    .line 147
    iget-object v5, v0, Lx2/b;->g:Lx2/j;

    .line 148
    .line 149
    invoke-interface {v5, v4}, Lx2/j;->p(Lx2/e;)La3/d0;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    iput-object v5, v0, Lx2/b;->k:La3/d0;

    .line 154
    .line 155
    iget-object v5, v4, Lx2/e;->e:Ljava/util/List;

    .line 156
    .line 157
    const/4 v6, 0x0

    .line 158
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    check-cast v5, Lx2/d;

    .line 163
    .line 164
    iget-object v5, v5, Lx2/d;->a:Landroid/net/Uri;

    .line 165
    .line 166
    iput-object v5, v0, Lx2/b;->q:Landroid/net/Uri;

    .line 167
    .line 168
    iget-object v4, v4, Lx2/e;->d:Ljava/util/List;

    .line 169
    .line 170
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 171
    .line 172
    .line 173
    move-result v5

    .line 174
    :goto_1
    if-ge v6, v5, :cond_1

    .line 175
    .line 176
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v7

    .line 180
    check-cast v7, Landroid/net/Uri;

    .line 181
    .line 182
    new-instance v8, Lx2/a;

    .line 183
    .line 184
    invoke-direct {v8, v0, v7}, Lx2/a;-><init>(Lx2/b;Landroid/net/Uri;)V

    .line 185
    .line 186
    .line 187
    iget-object v9, v0, Lx2/b;->i:Ljava/util/HashMap;

    .line 188
    .line 189
    invoke-virtual {v9, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    add-int/lit8 v6, v6, 0x1

    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_1
    iget-object v4, v0, Lx2/b;->i:Ljava/util/HashMap;

    .line 196
    .line 197
    iget-object v5, v0, Lx2/b;->q:Landroid/net/Uri;

    .line 198
    .line 199
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    check-cast v4, Lx2/a;

    .line 204
    .line 205
    if-eqz v3, :cond_2

    .line 206
    .line 207
    check-cast v2, Lx2/g;

    .line 208
    .line 209
    move-wide/from16 v9, p4

    .line 210
    .line 211
    invoke-virtual {v4, v2, v9, v10}, Lx2/a;->f(Lx2/g;J)V

    .line 212
    .line 213
    .line 214
    goto :goto_2

    .line 215
    :cond_2
    move-wide/from16 v9, p4

    .line 216
    .line 217
    invoke-virtual {v4}, Lx2/a;->e()V

    .line 218
    .line 219
    .line 220
    :goto_2
    iget-object v5, v0, Lx2/b;->l:Lcom/google/android/gms/internal/play_billing/v;

    .line 221
    .line 222
    iget-object v1, v1, La3/e0;->c:La3/f0;

    .line 223
    .line 224
    iget-object v6, v1, La3/f0;->c:Landroid/net/Uri;

    .line 225
    .line 226
    iget-wide v11, v1, La3/f0;->b:J

    .line 227
    .line 228
    move-wide/from16 v7, p2

    .line 229
    .line 230
    move-wide/from16 v9, p4

    .line 231
    .line 232
    invoke-virtual/range {v5 .. v12}, Lcom/google/android/gms/internal/play_billing/v;->e(Landroid/net/Uri;JJJ)V

    .line 233
    .line 234
    .line 235
    return-void
.end method

.method public final b(La3/z;JJZ)V
    .locals 8

    .line 1
    check-cast p1, La3/e0;

    .line 2
    .line 3
    iget-object v0, p0, Lx2/b;->l:Lcom/google/android/gms/internal/play_billing/v;

    .line 4
    .line 5
    iget-object p6, p1, La3/e0;->a:La3/l;

    .line 6
    .line 7
    iget-object p1, p1, La3/e0;->c:La3/f0;

    .line 8
    .line 9
    iget-object v1, p1, La3/f0;->c:Landroid/net/Uri;

    .line 10
    .line 11
    iget-wide v6, p1, La3/f0;->b:J

    .line 12
    .line 13
    move-wide v2, p2

    .line 14
    move-wide v4, p4

    .line 15
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/play_billing/v;->c(Landroid/net/Uri;JJJ)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final c(La3/z;JJLjava/io/IOException;I)La3/x;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, La3/e0;

    .line 6
    .line 7
    iget v2, v1, La3/e0;->b:I

    .line 8
    .line 9
    iget-object v2, v0, Lx2/b;->h:La3/r;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static/range {p6 .. p7}, La3/r;->d(Ljava/io/IOException;I)J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    cmp-long v4, v2, v4

    .line 24
    .line 25
    const/4 v5, 0x0

    .line 26
    if-nez v4, :cond_0

    .line 27
    .line 28
    const/4 v4, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v4, v5

    .line 31
    :goto_0
    iget-object v6, v0, Lx2/b;->l:Lcom/google/android/gms/internal/play_billing/v;

    .line 32
    .line 33
    iget-object v1, v1, La3/e0;->c:La3/f0;

    .line 34
    .line 35
    iget-object v7, v1, La3/f0;->c:Landroid/net/Uri;

    .line 36
    .line 37
    iget-wide v12, v1, La3/f0;->b:J

    .line 38
    .line 39
    move-wide/from16 v8, p2

    .line 40
    .line 41
    move-wide/from16 v10, p4

    .line 42
    .line 43
    move-object/from16 v14, p6

    .line 44
    .line 45
    move v15, v4

    .line 46
    invoke-virtual/range {v6 .. v15}, Lcom/google/android/gms/internal/play_billing/v;->g(Landroid/net/Uri;JJJLjava/io/IOException;Z)V

    .line 47
    .line 48
    .line 49
    if-eqz v4, :cond_1

    .line 50
    .line 51
    sget-object v1, La3/c0;->e:La3/x;

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    new-instance v1, La3/x;

    .line 55
    .line 56
    invoke-direct {v1, v5, v2, v3}, La3/x;-><init>(IJ)V

    .line 57
    .line 58
    .line 59
    :goto_1
    return-object v1
.end method

.method public final e(Landroid/net/Uri;Z)Lx2/g;
    .locals 5

    .line 1
    iget-object v0, p0, Lx2/b;->i:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lx2/a;

    .line 8
    .line 9
    iget-object v1, v1, Lx2/a;->i:Lx2/g;

    .line 10
    .line 11
    if-eqz v1, :cond_3

    .line 12
    .line 13
    if-eqz p2, :cond_3

    .line 14
    .line 15
    iget-object p2, p0, Lx2/b;->q:Landroid/net/Uri;

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-nez p2, :cond_3

    .line 22
    .line 23
    iget-object p2, p0, Lx2/b;->p:Lx2/e;

    .line 24
    .line 25
    iget-object p2, p2, Lx2/e;->e:Ljava/util/List;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    move v3, v2

    .line 29
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-ge v3, v4, :cond_1

    .line 34
    .line 35
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Lx2/d;

    .line 40
    .line 41
    iget-object v4, v4, Lx2/d;->a:Landroid/net/Uri;

    .line 42
    .line 43
    invoke-virtual {p1, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_0

    .line 48
    .line 49
    const/4 v2, 0x1

    .line 50
    goto :goto_1

    .line 51
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    :goto_1
    if-eqz v2, :cond_3

    .line 55
    .line 56
    iget-object p2, p0, Lx2/b;->r:Lx2/g;

    .line 57
    .line 58
    if-eqz p2, :cond_2

    .line 59
    .line 60
    iget-boolean p2, p2, Lx2/g;->l:Z

    .line 61
    .line 62
    if-eqz p2, :cond_2

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_2
    iput-object p1, p0, Lx2/b;->q:Landroid/net/Uri;

    .line 66
    .line 67
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    check-cast p1, Lx2/a;

    .line 72
    .line 73
    invoke-virtual {p1}, Lx2/a;->e()V

    .line 74
    .line 75
    .line 76
    :cond_3
    :goto_2
    return-object v1
.end method

.method public final f(Landroid/net/Uri;)Z
    .locals 10

    .line 1
    iget-object v0, p0, Lx2/b;->i:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lx2/a;

    .line 8
    .line 9
    iget-object v0, p1, Lx2/a;->i:Lx2/g;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    iget-object v0, p1, Lx2/a;->i:Lx2/g;

    .line 20
    .line 21
    iget-wide v4, v0, Lx2/g;->p:J

    .line 22
    .line 23
    invoke-static {v4, v5}, Lf2/d;->b(J)J

    .line 24
    .line 25
    .line 26
    move-result-wide v4

    .line 27
    const-wide/16 v6, 0x7530

    .line 28
    .line 29
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 30
    .line 31
    .line 32
    move-result-wide v4

    .line 33
    iget-object v0, p1, Lx2/a;->i:Lx2/g;

    .line 34
    .line 35
    iget-boolean v6, v0, Lx2/g;->l:Z

    .line 36
    .line 37
    const/4 v7, 0x1

    .line 38
    if-nez v6, :cond_1

    .line 39
    .line 40
    const/4 v6, 0x2

    .line 41
    iget v0, v0, Lx2/g;->d:I

    .line 42
    .line 43
    if-eq v0, v6, :cond_1

    .line 44
    .line 45
    if-eq v0, v7, :cond_1

    .line 46
    .line 47
    iget-wide v8, p1, Lx2/a;->j:J

    .line 48
    .line 49
    add-long/2addr v8, v4

    .line 50
    cmp-long p1, v8, v2

    .line 51
    .line 52
    if-lez p1, :cond_2

    .line 53
    .line 54
    :cond_1
    move v1, v7

    .line 55
    :cond_2
    :goto_0
    return v1
.end method
