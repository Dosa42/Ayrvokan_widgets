.class public final Ln2/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln2/f0;


# instance fields
.field public final a:Ln2/j;

.field public final b:Lb3/g;

.field public c:I

.field public d:I

.field public e:Lb3/l;

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:I

.field public j:I

.field public k:Z

.field public l:J


# direct methods
.method public constructor <init>(Ln2/j;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln2/t;->a:Ln2/j;

    new-instance p1, Lb3/g;

    const/16 v0, 0xa

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Lb3/g;-><init>([B)V

    iput-object p1, p0, Ln2/t;->b:Lb3/g;

    const/4 p1, 0x0

    iput p1, p0, Ln2/t;->c:I

    return-void
.end method


# virtual methods
.method public final a(Lb3/l;Lk2/i;Ln2/e0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln2/t;->e:Lb3/l;

    iget-object p1, p0, Ln2/t;->a:Ln2/j;

    invoke-interface {p1, p2, p3}, Ln2/j;->e(Lk2/i;Ln2/e0;)V

    return-void
.end method

.method public final b(ILb3/h;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    and-int/lit8 v2, p1, 0x1

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x1

    .line 9
    iget-object v5, v0, Ln2/t;->a:Ln2/j;

    .line 10
    .line 11
    const/4 v6, 0x3

    .line 12
    const/4 v7, 0x2

    .line 13
    if-eqz v2, :cond_2

    .line 14
    .line 15
    iget v2, v0, Ln2/t;->c:I

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    if-eq v2, v4, :cond_1

    .line 20
    .line 21
    if-eq v2, v7, :cond_1

    .line 22
    .line 23
    if-ne v2, v6, :cond_0

    .line 24
    .line 25
    invoke-interface {v5}, Ln2/j;->c()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 32
    .line 33
    .line 34
    throw v1

    .line 35
    :cond_1
    :goto_0
    iput v4, v0, Ln2/t;->c:I

    .line 36
    .line 37
    iput v3, v0, Ln2/t;->d:I

    .line 38
    .line 39
    :cond_2
    move/from16 v2, p1

    .line 40
    .line 41
    :goto_1
    iget v8, v1, Lb3/h;->b:I

    .line 42
    .line 43
    iget v9, v1, Lb3/h;->a:I

    .line 44
    .line 45
    sub-int/2addr v8, v9

    .line 46
    if-lez v8, :cond_10

    .line 47
    .line 48
    iget v10, v0, Ln2/t;->c:I

    .line 49
    .line 50
    if-eqz v10, :cond_f

    .line 51
    .line 52
    const/4 v11, -0x1

    .line 53
    iget-object v12, v0, Ln2/t;->b:Lb3/g;

    .line 54
    .line 55
    if-eq v10, v4, :cond_a

    .line 56
    .line 57
    if-eq v10, v7, :cond_6

    .line 58
    .line 59
    if-ne v10, v6, :cond_5

    .line 60
    .line 61
    iget v10, v0, Ln2/t;->j:I

    .line 62
    .line 63
    if-ne v10, v11, :cond_3

    .line 64
    .line 65
    move v10, v3

    .line 66
    goto :goto_2

    .line 67
    :cond_3
    sub-int v10, v8, v10

    .line 68
    .line 69
    :goto_2
    if-lez v10, :cond_4

    .line 70
    .line 71
    sub-int/2addr v8, v10

    .line 72
    add-int/2addr v9, v8

    .line 73
    invoke-virtual {v1, v9}, Lb3/h;->p(I)V

    .line 74
    .line 75
    .line 76
    :cond_4
    invoke-interface {v5, v1}, Ln2/j;->b(Lb3/h;)V

    .line 77
    .line 78
    .line 79
    iget v9, v0, Ln2/t;->j:I

    .line 80
    .line 81
    if-eq v9, v11, :cond_e

    .line 82
    .line 83
    sub-int/2addr v9, v8

    .line 84
    iput v9, v0, Ln2/t;->j:I

    .line 85
    .line 86
    if-nez v9, :cond_e

    .line 87
    .line 88
    invoke-interface {v5}, Ln2/j;->c()V

    .line 89
    .line 90
    .line 91
    iput v4, v0, Ln2/t;->c:I

    .line 92
    .line 93
    iput v3, v0, Ln2/t;->d:I

    .line 94
    .line 95
    goto/16 :goto_7

    .line 96
    .line 97
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 98
    .line 99
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 100
    .line 101
    .line 102
    throw v1

    .line 103
    :cond_6
    const/16 v8, 0xa

    .line 104
    .line 105
    iget v9, v0, Ln2/t;->i:I

    .line 106
    .line 107
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    .line 108
    .line 109
    .line 110
    move-result v8

    .line 111
    iget-object v9, v12, Lb3/g;->b:[B

    .line 112
    .line 113
    invoke-virtual {v0, v1, v9, v8}, Ln2/t;->c(Lb3/h;[BI)Z

    .line 114
    .line 115
    .line 116
    move-result v8

    .line 117
    if-eqz v8, :cond_e

    .line 118
    .line 119
    const/4 v8, 0x0

    .line 120
    iget v9, v0, Ln2/t;->i:I

    .line 121
    .line 122
    invoke-virtual {v0, v1, v8, v9}, Ln2/t;->c(Lb3/h;[BI)Z

    .line 123
    .line 124
    .line 125
    move-result v8

    .line 126
    if-eqz v8, :cond_e

    .line 127
    .line 128
    invoke-virtual {v12, v3}, Lb3/g;->i(I)V

    .line 129
    .line 130
    .line 131
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    iput-wide v8, v0, Ln2/t;->l:J

    .line 137
    .line 138
    iget-boolean v8, v0, Ln2/t;->f:Z

    .line 139
    .line 140
    const/4 v9, 0x4

    .line 141
    if-eqz v8, :cond_8

    .line 142
    .line 143
    invoke-virtual {v12, v9}, Lb3/g;->l(I)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v12, v6}, Lb3/g;->e(I)I

    .line 147
    .line 148
    .line 149
    move-result v8

    .line 150
    int-to-long v10, v8

    .line 151
    const/16 v8, 0x1e

    .line 152
    .line 153
    shl-long/2addr v10, v8

    .line 154
    invoke-virtual {v12, v4}, Lb3/g;->l(I)V

    .line 155
    .line 156
    .line 157
    const/16 v13, 0xf

    .line 158
    .line 159
    invoke-virtual {v12, v13}, Lb3/g;->e(I)I

    .line 160
    .line 161
    .line 162
    move-result v14

    .line 163
    shl-int/2addr v14, v13

    .line 164
    int-to-long v14, v14

    .line 165
    or-long/2addr v10, v14

    .line 166
    invoke-virtual {v12, v4}, Lb3/g;->l(I)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v12, v13}, Lb3/g;->e(I)I

    .line 170
    .line 171
    .line 172
    move-result v14

    .line 173
    int-to-long v14, v14

    .line 174
    or-long/2addr v10, v14

    .line 175
    invoke-virtual {v12, v4}, Lb3/g;->l(I)V

    .line 176
    .line 177
    .line 178
    iget-boolean v14, v0, Ln2/t;->h:Z

    .line 179
    .line 180
    if-nez v14, :cond_7

    .line 181
    .line 182
    iget-boolean v14, v0, Ln2/t;->g:Z

    .line 183
    .line 184
    if-eqz v14, :cond_7

    .line 185
    .line 186
    invoke-virtual {v12, v9}, Lb3/g;->l(I)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v12, v6}, Lb3/g;->e(I)I

    .line 190
    .line 191
    .line 192
    move-result v14

    .line 193
    int-to-long v14, v14

    .line 194
    shl-long/2addr v14, v8

    .line 195
    invoke-virtual {v12, v4}, Lb3/g;->l(I)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v12, v13}, Lb3/g;->e(I)I

    .line 199
    .line 200
    .line 201
    move-result v8

    .line 202
    shl-int/2addr v8, v13

    .line 203
    int-to-long v7, v8

    .line 204
    or-long/2addr v7, v14

    .line 205
    invoke-virtual {v12, v4}, Lb3/g;->l(I)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v12, v13}, Lb3/g;->e(I)I

    .line 209
    .line 210
    .line 211
    move-result v13

    .line 212
    int-to-long v13, v13

    .line 213
    or-long/2addr v7, v13

    .line 214
    invoke-virtual {v12, v4}, Lb3/g;->l(I)V

    .line 215
    .line 216
    .line 217
    iget-object v12, v0, Ln2/t;->e:Lb3/l;

    .line 218
    .line 219
    invoke-virtual {v12, v7, v8}, Lb3/l;->b(J)J

    .line 220
    .line 221
    .line 222
    iput-boolean v4, v0, Ln2/t;->h:Z

    .line 223
    .line 224
    :cond_7
    iget-object v7, v0, Ln2/t;->e:Lb3/l;

    .line 225
    .line 226
    invoke-virtual {v7, v10, v11}, Lb3/l;->b(J)J

    .line 227
    .line 228
    .line 229
    move-result-wide v7

    .line 230
    iput-wide v7, v0, Ln2/t;->l:J

    .line 231
    .line 232
    :cond_8
    iget-boolean v7, v0, Ln2/t;->k:Z

    .line 233
    .line 234
    if-eqz v7, :cond_9

    .line 235
    .line 236
    goto :goto_3

    .line 237
    :cond_9
    move v9, v3

    .line 238
    :goto_3
    or-int/2addr v2, v9

    .line 239
    iget-wide v7, v0, Ln2/t;->l:J

    .line 240
    .line 241
    invoke-interface {v5, v7, v8, v2}, Ln2/j;->d(JI)V

    .line 242
    .line 243
    .line 244
    iput v6, v0, Ln2/t;->c:I

    .line 245
    .line 246
    iput v3, v0, Ln2/t;->d:I

    .line 247
    .line 248
    const/4 v7, 0x2

    .line 249
    goto/16 :goto_1

    .line 250
    .line 251
    :cond_a
    iget-object v7, v12, Lb3/g;->b:[B

    .line 252
    .line 253
    const/16 v8, 0x9

    .line 254
    .line 255
    invoke-virtual {v0, v1, v7, v8}, Ln2/t;->c(Lb3/h;[BI)Z

    .line 256
    .line 257
    .line 258
    move-result v7

    .line 259
    if-eqz v7, :cond_e

    .line 260
    .line 261
    invoke-virtual {v12, v3}, Lb3/g;->i(I)V

    .line 262
    .line 263
    .line 264
    const/16 v7, 0x18

    .line 265
    .line 266
    invoke-virtual {v12, v7}, Lb3/g;->e(I)I

    .line 267
    .line 268
    .line 269
    move-result v7

    .line 270
    if-eq v7, v4, :cond_b

    .line 271
    .line 272
    iput v11, v0, Ln2/t;->j:I

    .line 273
    .line 274
    move v7, v3

    .line 275
    const/4 v9, 0x2

    .line 276
    goto :goto_5

    .line 277
    :cond_b
    const/16 v7, 0x8

    .line 278
    .line 279
    invoke-virtual {v12, v7}, Lb3/g;->l(I)V

    .line 280
    .line 281
    .line 282
    const/16 v8, 0x10

    .line 283
    .line 284
    invoke-virtual {v12, v8}, Lb3/g;->e(I)I

    .line 285
    .line 286
    .line 287
    move-result v8

    .line 288
    const/4 v9, 0x5

    .line 289
    invoke-virtual {v12, v9}, Lb3/g;->l(I)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v12}, Lb3/g;->d()Z

    .line 293
    .line 294
    .line 295
    move-result v9

    .line 296
    iput-boolean v9, v0, Ln2/t;->k:Z

    .line 297
    .line 298
    const/4 v9, 0x2

    .line 299
    invoke-virtual {v12, v9}, Lb3/g;->l(I)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v12}, Lb3/g;->d()Z

    .line 303
    .line 304
    .line 305
    move-result v10

    .line 306
    iput-boolean v10, v0, Ln2/t;->f:Z

    .line 307
    .line 308
    invoke-virtual {v12}, Lb3/g;->d()Z

    .line 309
    .line 310
    .line 311
    move-result v10

    .line 312
    iput-boolean v10, v0, Ln2/t;->g:Z

    .line 313
    .line 314
    const/4 v10, 0x6

    .line 315
    invoke-virtual {v12, v10}, Lb3/g;->l(I)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v12, v7}, Lb3/g;->e(I)I

    .line 319
    .line 320
    .line 321
    move-result v7

    .line 322
    iput v7, v0, Ln2/t;->i:I

    .line 323
    .line 324
    if-nez v8, :cond_c

    .line 325
    .line 326
    iput v11, v0, Ln2/t;->j:I

    .line 327
    .line 328
    goto :goto_4

    .line 329
    :cond_c
    add-int/lit8 v8, v8, 0x6

    .line 330
    .line 331
    add-int/lit8 v8, v8, -0x9

    .line 332
    .line 333
    sub-int/2addr v8, v7

    .line 334
    iput v8, v0, Ln2/t;->j:I

    .line 335
    .line 336
    :goto_4
    move v7, v4

    .line 337
    :goto_5
    if-eqz v7, :cond_d

    .line 338
    .line 339
    move v7, v9

    .line 340
    goto :goto_6

    .line 341
    :cond_d
    move v7, v3

    .line 342
    :goto_6
    iput v7, v0, Ln2/t;->c:I

    .line 343
    .line 344
    iput v3, v0, Ln2/t;->d:I

    .line 345
    .line 346
    goto :goto_8

    .line 347
    :cond_e
    :goto_7
    const/4 v9, 0x2

    .line 348
    goto :goto_8

    .line 349
    :cond_f
    move v9, v7

    .line 350
    invoke-virtual {v1, v8}, Lb3/h;->r(I)V

    .line 351
    .line 352
    .line 353
    :goto_8
    move v7, v9

    .line 354
    goto/16 :goto_1

    .line 355
    .line 356
    :cond_10
    return-void
.end method

.method public final c(Lb3/h;[BI)Z
    .locals 3

    .line 1
    iget v0, p1, Lb3/h;->b:I

    .line 2
    .line 3
    iget v1, p1, Lb3/h;->a:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    iget v1, p0, Ln2/t;->d:I

    .line 7
    .line 8
    sub-int v1, p3, v1

    .line 9
    .line 10
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    if-gtz v0, :cond_0

    .line 16
    .line 17
    return v1

    .line 18
    :cond_0
    if-nez p2, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lb3/h;->r(I)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget v2, p0, Ln2/t;->d:I

    .line 25
    .line 26
    invoke-virtual {p1, p2, v2, v0}, Lb3/h;->a([BII)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget p1, p0, Ln2/t;->d:I

    .line 30
    .line 31
    add-int/2addr p1, v0

    .line 32
    iput p1, p0, Ln2/t;->d:I

    .line 33
    .line 34
    if-ne p1, p3, :cond_2

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    const/4 v1, 0x0

    .line 38
    :goto_1
    return v1
.end method
