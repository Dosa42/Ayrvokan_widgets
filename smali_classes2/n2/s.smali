.class public final Ln2/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln2/j;


# instance fields
.field public final a:Lb3/h;

.field public final b:Lk2/l;

.field public final c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Lk2/o;

.field public f:I

.field public g:I

.field public h:Z

.field public i:Z

.field public j:J

.field public k:I

.field public l:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ln2/s;->f:I

    new-instance v1, Lb3/h;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lb3/h;-><init>(I)V

    iput-object v1, p0, Ln2/s;->a:Lb3/h;

    iget-object v1, v1, Lb3/h;->c:Ljava/io/Serializable;

    check-cast v1, [B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    new-instance v0, Lk2/l;

    invoke-direct {v0}, Lk2/l;-><init>()V

    iput-object v0, p0, Ln2/s;->b:Lk2/l;

    iput-object p1, p0, Ln2/s;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final b(Lb3/h;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    :goto_0
    iget v2, v1, Lb3/h;->b:I

    .line 6
    .line 7
    iget v3, v1, Lb3/h;->a:I

    .line 8
    .line 9
    sub-int v4, v2, v3

    .line 10
    .line 11
    if-lez v4, :cond_b

    .line 12
    .line 13
    iget v5, v0, Ln2/s;->f:I

    .line 14
    .line 15
    const/4 v6, 0x1

    .line 16
    iget-object v7, v0, Ln2/s;->a:Lb3/h;

    .line 17
    .line 18
    const/4 v8, 0x0

    .line 19
    const/4 v9, 0x2

    .line 20
    if-eqz v5, :cond_6

    .line 21
    .line 22
    if-eq v5, v6, :cond_2

    .line 23
    .line 24
    if-ne v5, v9, :cond_1

    .line 25
    .line 26
    iget v2, v0, Ln2/s;->k:I

    .line 27
    .line 28
    iget v3, v0, Ln2/s;->g:I

    .line 29
    .line 30
    sub-int/2addr v2, v3

    .line 31
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    iget-object v3, v0, Ln2/s;->e:Lk2/o;

    .line 36
    .line 37
    invoke-interface {v3, v2, v1}, Lk2/o;->d(ILb3/h;)V

    .line 38
    .line 39
    .line 40
    iget v3, v0, Ln2/s;->g:I

    .line 41
    .line 42
    add-int/2addr v3, v2

    .line 43
    iput v3, v0, Ln2/s;->g:I

    .line 44
    .line 45
    iget v13, v0, Ln2/s;->k:I

    .line 46
    .line 47
    if-ge v3, v13, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iget-object v9, v0, Ln2/s;->e:Lk2/o;

    .line 51
    .line 52
    iget-wide v10, v0, Ln2/s;->l:J

    .line 53
    .line 54
    const/4 v12, 0x1

    .line 55
    const/4 v14, 0x0

    .line 56
    const/4 v15, 0x0

    .line 57
    invoke-interface/range {v9 .. v15}, Lk2/o;->b(JIIILk2/n;)V

    .line 58
    .line 59
    .line 60
    iget-wide v2, v0, Ln2/s;->l:J

    .line 61
    .line 62
    iget-wide v4, v0, Ln2/s;->j:J

    .line 63
    .line 64
    add-long/2addr v2, v4

    .line 65
    iput-wide v2, v0, Ln2/s;->l:J

    .line 66
    .line 67
    iput v8, v0, Ln2/s;->g:I

    .line 68
    .line 69
    iput v8, v0, Ln2/s;->f:I

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 73
    .line 74
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 75
    .line 76
    .line 77
    throw v1

    .line 78
    :cond_2
    iget v2, v0, Ln2/s;->g:I

    .line 79
    .line 80
    const/4 v3, 0x4

    .line 81
    rsub-int/lit8 v2, v2, 0x4

    .line 82
    .line 83
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    iget-object v4, v7, Lb3/h;->c:Ljava/io/Serializable;

    .line 88
    .line 89
    check-cast v4, [B

    .line 90
    .line 91
    iget v5, v0, Ln2/s;->g:I

    .line 92
    .line 93
    invoke-virtual {v1, v4, v5, v2}, Lb3/h;->a([BII)V

    .line 94
    .line 95
    .line 96
    iget v4, v0, Ln2/s;->g:I

    .line 97
    .line 98
    add-int/2addr v4, v2

    .line 99
    iput v4, v0, Ln2/s;->g:I

    .line 100
    .line 101
    if-ge v4, v3, :cond_3

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_3
    invoke-virtual {v7, v8}, Lb3/h;->q(I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v7}, Lb3/h;->b()I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    iget-object v4, v0, Ln2/s;->b:Lk2/l;

    .line 112
    .line 113
    invoke-static {v2, v4}, Lk2/l;->b(ILk2/l;)Z

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    if-nez v2, :cond_4

    .line 118
    .line 119
    iput v8, v0, Ln2/s;->g:I

    .line 120
    .line 121
    iput v6, v0, Ln2/s;->f:I

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_4
    iget v2, v4, Lk2/l;->c:I

    .line 125
    .line 126
    iput v2, v0, Ln2/s;->k:I

    .line 127
    .line 128
    iget-boolean v2, v0, Ln2/s;->h:Z

    .line 129
    .line 130
    if-nez v2, :cond_5

    .line 131
    .line 132
    iget v2, v4, Lk2/l;->g:I

    .line 133
    .line 134
    int-to-long v10, v2

    .line 135
    const-wide/32 v12, 0xf4240

    .line 136
    .line 137
    .line 138
    mul-long/2addr v10, v12

    .line 139
    iget v2, v4, Lk2/l;->d:I

    .line 140
    .line 141
    int-to-long v12, v2

    .line 142
    div-long/2addr v10, v12

    .line 143
    iput-wide v10, v0, Ln2/s;->j:J

    .line 144
    .line 145
    iget-object v12, v0, Ln2/s;->d:Ljava/lang/String;

    .line 146
    .line 147
    iget-object v13, v4, Lk2/l;->b:Ljava/lang/String;

    .line 148
    .line 149
    const/4 v14, -0x1

    .line 150
    const/16 v15, 0x1000

    .line 151
    .line 152
    iget v4, v4, Lk2/l;->e:I

    .line 153
    .line 154
    const/16 v18, 0x0

    .line 155
    .line 156
    const/16 v19, 0x0

    .line 157
    .line 158
    iget-object v5, v0, Ln2/s;->c:Ljava/lang/String;

    .line 159
    .line 160
    move/from16 v16, v4

    .line 161
    .line 162
    move/from16 v17, v2

    .line 163
    .line 164
    move-object/from16 v20, v5

    .line 165
    .line 166
    invoke-static/range {v12 .. v20}, Lf2/t;->g(Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lj2/b;Ljava/lang/String;)Lf2/t;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    iget-object v4, v0, Ln2/s;->e:Lk2/o;

    .line 171
    .line 172
    invoke-interface {v4, v2}, Lk2/o;->c(Lf2/t;)V

    .line 173
    .line 174
    .line 175
    iput-boolean v6, v0, Ln2/s;->h:Z

    .line 176
    .line 177
    :cond_5
    invoke-virtual {v7, v8}, Lb3/h;->q(I)V

    .line 178
    .line 179
    .line 180
    iget-object v2, v0, Ln2/s;->e:Lk2/o;

    .line 181
    .line 182
    invoke-interface {v2, v3, v7}, Lk2/o;->d(ILb3/h;)V

    .line 183
    .line 184
    .line 185
    iput v9, v0, Ln2/s;->f:I

    .line 186
    .line 187
    goto/16 :goto_0

    .line 188
    .line 189
    :cond_6
    iget-object v4, v1, Lb3/h;->c:Ljava/io/Serializable;

    .line 190
    .line 191
    check-cast v4, [B

    .line 192
    .line 193
    :goto_1
    if-ge v3, v2, :cond_a

    .line 194
    .line 195
    aget-byte v5, v4, v3

    .line 196
    .line 197
    and-int/lit16 v10, v5, 0xff

    .line 198
    .line 199
    const/16 v11, 0xff

    .line 200
    .line 201
    if-ne v10, v11, :cond_7

    .line 202
    .line 203
    move v10, v6

    .line 204
    goto :goto_2

    .line 205
    :cond_7
    move v10, v8

    .line 206
    :goto_2
    iget-boolean v11, v0, Ln2/s;->i:Z

    .line 207
    .line 208
    if-eqz v11, :cond_8

    .line 209
    .line 210
    and-int/lit16 v5, v5, 0xe0

    .line 211
    .line 212
    const/16 v11, 0xe0

    .line 213
    .line 214
    if-ne v5, v11, :cond_8

    .line 215
    .line 216
    move v5, v6

    .line 217
    goto :goto_3

    .line 218
    :cond_8
    move v5, v8

    .line 219
    :goto_3
    iput-boolean v10, v0, Ln2/s;->i:Z

    .line 220
    .line 221
    if-eqz v5, :cond_9

    .line 222
    .line 223
    add-int/lit8 v2, v3, 0x1

    .line 224
    .line 225
    invoke-virtual {v1, v2}, Lb3/h;->q(I)V

    .line 226
    .line 227
    .line 228
    iput-boolean v8, v0, Ln2/s;->i:Z

    .line 229
    .line 230
    iget-object v2, v7, Lb3/h;->c:Ljava/io/Serializable;

    .line 231
    .line 232
    check-cast v2, [B

    .line 233
    .line 234
    aget-byte v3, v4, v3

    .line 235
    .line 236
    aput-byte v3, v2, v6

    .line 237
    .line 238
    iput v9, v0, Ln2/s;->g:I

    .line 239
    .line 240
    iput v6, v0, Ln2/s;->f:I

    .line 241
    .line 242
    goto/16 :goto_0

    .line 243
    .line 244
    :cond_9
    add-int/lit8 v3, v3, 0x1

    .line 245
    .line 246
    goto :goto_1

    .line 247
    :cond_a
    invoke-virtual {v1, v2}, Lb3/h;->q(I)V

    .line 248
    .line 249
    .line 250
    goto/16 :goto_0

    .line 251
    .line 252
    :cond_b
    return-void
.end method

.method public final c()V
    .locals 0

    .line 1
    return-void
.end method

.method public final d(JI)V
    .locals 0

    .line 1
    iput-wide p1, p0, Ln2/s;->l:J

    return-void
.end method

.method public final e(Lk2/i;Ln2/e0;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ln2/e0;->a()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ln2/e0;->b()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p2, Ln2/e0;->e:Ljava/lang/String;

    .line 8
    .line 9
    iput-object v0, p0, Ln2/s;->d:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p2}, Ln2/e0;->b()V

    .line 12
    .line 13
    .line 14
    iget p2, p2, Ln2/e0;->d:I

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    check-cast p1, Lw2/p;

    .line 18
    .line 19
    invoke-virtual {p1, p2, v0}, Lw2/p;->C(II)Lk2/o;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Ln2/s;->e:Lk2/o;

    .line 24
    .line 25
    return-void
.end method
