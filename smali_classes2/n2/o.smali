.class public final Ln2/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln2/j;


# instance fields
.field public final a:Ln2/w;

.field public final b:Z

.field public final c:Z

.field public final d:Lo1/n;

.field public final e:Lo1/n;

.field public final f:Lo1/n;

.field public g:J

.field public final h:[Z

.field public i:Ljava/lang/String;

.field public j:Lk2/o;

.field public k:Ln2/n;

.field public l:Z

.field public m:J

.field public n:Z

.field public final o:Lb3/h;


# direct methods
.method public constructor <init>(Ln2/w;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln2/o;->a:Ln2/w;

    iput-boolean p2, p0, Ln2/o;->b:Z

    iput-boolean p3, p0, Ln2/o;->c:Z

    const/4 p1, 0x3

    new-array p1, p1, [Z

    iput-object p1, p0, Ln2/o;->h:[Z

    new-instance p1, Lo1/n;

    const/4 p2, 0x7

    invoke-direct {p1, p2}, Lo1/n;-><init>(I)V

    iput-object p1, p0, Ln2/o;->d:Lo1/n;

    new-instance p1, Lo1/n;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, Lo1/n;-><init>(I)V

    iput-object p1, p0, Ln2/o;->e:Lo1/n;

    new-instance p1, Lo1/n;

    const/4 p2, 0x6

    invoke-direct {p1, p2}, Lo1/n;-><init>(I)V

    iput-object p1, p0, Ln2/o;->f:Lo1/n;

    new-instance p1, Lb3/h;

    invoke-direct {p1}, Lb3/h;-><init>()V

    iput-object p1, p0, Ln2/o;->o:Lb3/h;

    return-void
.end method


# virtual methods
.method public final a([BII)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    iget-boolean v4, v0, Ln2/o;->l:Z

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    iget-object v4, v0, Ln2/o;->k:Ln2/n;

    .line 14
    .line 15
    iget-boolean v4, v4, Ln2/n;->c:Z

    .line 16
    .line 17
    if-eqz v4, :cond_1

    .line 18
    .line 19
    :cond_0
    iget-object v4, v0, Ln2/o;->d:Lo1/n;

    .line 20
    .line 21
    invoke-virtual {v4, v1, v2, v3}, Lo1/n;->a([BII)V

    .line 22
    .line 23
    .line 24
    iget-object v4, v0, Ln2/o;->e:Lo1/n;

    .line 25
    .line 26
    invoke-virtual {v4, v1, v2, v3}, Lo1/n;->a([BII)V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object v4, v0, Ln2/o;->f:Lo1/n;

    .line 30
    .line 31
    invoke-virtual {v4, v1, v2, v3}, Lo1/n;->a([BII)V

    .line 32
    .line 33
    .line 34
    iget-object v4, v0, Ln2/o;->k:Ln2/n;

    .line 35
    .line 36
    iget-boolean v5, v4, Ln2/n;->k:Z

    .line 37
    .line 38
    if-nez v5, :cond_2

    .line 39
    .line 40
    goto/16 :goto_5

    .line 41
    .line 42
    :cond_2
    sub-int/2addr v3, v2

    .line 43
    iget-object v5, v4, Ln2/n;->g:[B

    .line 44
    .line 45
    array-length v6, v5

    .line 46
    iget v7, v4, Ln2/n;->h:I

    .line 47
    .line 48
    add-int/2addr v7, v3

    .line 49
    const/4 v8, 0x2

    .line 50
    if-ge v6, v7, :cond_3

    .line 51
    .line 52
    mul-int/2addr v7, v8

    .line 53
    invoke-static {v5, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    iput-object v5, v4, Ln2/n;->g:[B

    .line 58
    .line 59
    :cond_3
    iget-object v5, v4, Ln2/n;->g:[B

    .line 60
    .line 61
    iget v6, v4, Ln2/n;->h:I

    .line 62
    .line 63
    invoke-static {v1, v2, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    .line 65
    .line 66
    iget v1, v4, Ln2/n;->h:I

    .line 67
    .line 68
    add-int/2addr v1, v3

    .line 69
    iput v1, v4, Ln2/n;->h:I

    .line 70
    .line 71
    iget-object v2, v4, Ln2/n;->g:[B

    .line 72
    .line 73
    iget-object v3, v4, Ln2/n;->f:Lb3/g;

    .line 74
    .line 75
    iput-object v2, v3, Lb3/g;->b:[B

    .line 76
    .line 77
    const/4 v2, 0x0

    .line 78
    iput v2, v3, Lb3/g;->d:I

    .line 79
    .line 80
    iput v1, v3, Lb3/g;->c:I

    .line 81
    .line 82
    iput v2, v3, Lb3/g;->e:I

    .line 83
    .line 84
    invoke-virtual {v3}, Lb3/g;->a()V

    .line 85
    .line 86
    .line 87
    const/16 v1, 0x8

    .line 88
    .line 89
    invoke-virtual {v3, v1}, Lb3/g;->b(I)Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-nez v1, :cond_4

    .line 94
    .line 95
    goto/16 :goto_5

    .line 96
    .line 97
    :cond_4
    invoke-virtual {v3}, Lb3/g;->k()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3, v8}, Lb3/g;->e(I)I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    const/4 v5, 0x5

    .line 105
    invoke-virtual {v3, v5}, Lb3/g;->l(I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3}, Lb3/g;->c()Z

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    if-nez v6, :cond_5

    .line 113
    .line 114
    goto/16 :goto_5

    .line 115
    .line 116
    :cond_5
    invoke-virtual {v3}, Lb3/g;->g()I

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3}, Lb3/g;->c()Z

    .line 120
    .line 121
    .line 122
    move-result v6

    .line 123
    if-nez v6, :cond_6

    .line 124
    .line 125
    goto/16 :goto_5

    .line 126
    .line 127
    :cond_6
    invoke-virtual {v3}, Lb3/g;->g()I

    .line 128
    .line 129
    .line 130
    move-result v6

    .line 131
    iget-boolean v7, v4, Ln2/n;->c:Z

    .line 132
    .line 133
    const/4 v9, 0x1

    .line 134
    if-nez v7, :cond_7

    .line 135
    .line 136
    iput-boolean v2, v4, Ln2/n;->k:Z

    .line 137
    .line 138
    iget-object v1, v4, Ln2/n;->n:Ln2/m;

    .line 139
    .line 140
    iput v6, v1, Ln2/m;->e:I

    .line 141
    .line 142
    iput-boolean v9, v1, Ln2/m;->b:Z

    .line 143
    .line 144
    goto/16 :goto_5

    .line 145
    .line 146
    :cond_7
    invoke-virtual {v3}, Lb3/g;->c()Z

    .line 147
    .line 148
    .line 149
    move-result v7

    .line 150
    if-nez v7, :cond_8

    .line 151
    .line 152
    goto/16 :goto_5

    .line 153
    .line 154
    :cond_8
    invoke-virtual {v3}, Lb3/g;->g()I

    .line 155
    .line 156
    .line 157
    move-result v7

    .line 158
    iget-object v10, v4, Ln2/n;->e:Landroid/util/SparseArray;

    .line 159
    .line 160
    invoke-virtual {v10, v7}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 161
    .line 162
    .line 163
    move-result v11

    .line 164
    if-gez v11, :cond_9

    .line 165
    .line 166
    iput-boolean v2, v4, Ln2/n;->k:Z

    .line 167
    .line 168
    goto/16 :goto_5

    .line 169
    .line 170
    :cond_9
    invoke-virtual {v10, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v10

    .line 174
    check-cast v10, Lb3/d;

    .line 175
    .line 176
    iget-object v11, v4, Ln2/n;->d:Landroid/util/SparseArray;

    .line 177
    .line 178
    iget v12, v10, Lb3/d;->b:I

    .line 179
    .line 180
    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v11

    .line 184
    check-cast v11, Lb3/e;

    .line 185
    .line 186
    iget-boolean v12, v11, Lb3/e;->h:Z

    .line 187
    .line 188
    if-eqz v12, :cond_b

    .line 189
    .line 190
    invoke-virtual {v3, v8}, Lb3/g;->b(I)Z

    .line 191
    .line 192
    .line 193
    move-result v12

    .line 194
    if-nez v12, :cond_a

    .line 195
    .line 196
    goto/16 :goto_5

    .line 197
    .line 198
    :cond_a
    invoke-virtual {v3, v8}, Lb3/g;->l(I)V

    .line 199
    .line 200
    .line 201
    :cond_b
    iget v8, v11, Lb3/e;->j:I

    .line 202
    .line 203
    invoke-virtual {v3, v8}, Lb3/g;->b(I)Z

    .line 204
    .line 205
    .line 206
    move-result v12

    .line 207
    if-nez v12, :cond_c

    .line 208
    .line 209
    goto/16 :goto_5

    .line 210
    .line 211
    :cond_c
    invoke-virtual {v3, v8}, Lb3/g;->e(I)I

    .line 212
    .line 213
    .line 214
    move-result v8

    .line 215
    iget-boolean v12, v11, Lb3/e;->i:Z

    .line 216
    .line 217
    if-nez v12, :cond_f

    .line 218
    .line 219
    invoke-virtual {v3, v9}, Lb3/g;->b(I)Z

    .line 220
    .line 221
    .line 222
    move-result v12

    .line 223
    if-nez v12, :cond_d

    .line 224
    .line 225
    goto/16 :goto_5

    .line 226
    .line 227
    :cond_d
    invoke-virtual {v3}, Lb3/g;->d()Z

    .line 228
    .line 229
    .line 230
    move-result v12

    .line 231
    if-eqz v12, :cond_10

    .line 232
    .line 233
    invoke-virtual {v3, v9}, Lb3/g;->b(I)Z

    .line 234
    .line 235
    .line 236
    move-result v13

    .line 237
    if-nez v13, :cond_e

    .line 238
    .line 239
    goto/16 :goto_5

    .line 240
    .line 241
    :cond_e
    invoke-virtual {v3}, Lb3/g;->d()Z

    .line 242
    .line 243
    .line 244
    move-result v13

    .line 245
    move v14, v9

    .line 246
    goto :goto_0

    .line 247
    :cond_f
    move v12, v2

    .line 248
    :cond_10
    move v13, v2

    .line 249
    move v14, v13

    .line 250
    :goto_0
    iget v15, v4, Ln2/n;->i:I

    .line 251
    .line 252
    if-ne v15, v5, :cond_11

    .line 253
    .line 254
    move v5, v9

    .line 255
    goto :goto_1

    .line 256
    :cond_11
    move v5, v2

    .line 257
    :goto_1
    if-eqz v5, :cond_13

    .line 258
    .line 259
    invoke-virtual {v3}, Lb3/g;->c()Z

    .line 260
    .line 261
    .line 262
    move-result v15

    .line 263
    if-nez v15, :cond_12

    .line 264
    .line 265
    goto/16 :goto_5

    .line 266
    .line 267
    :cond_12
    invoke-virtual {v3}, Lb3/g;->g()I

    .line 268
    .line 269
    .line 270
    move-result v15

    .line 271
    goto :goto_2

    .line 272
    :cond_13
    move v15, v2

    .line 273
    :goto_2
    iget-boolean v10, v10, Lb3/d;->c:Z

    .line 274
    .line 275
    iget v2, v11, Lb3/e;->k:I

    .line 276
    .line 277
    if-nez v2, :cond_17

    .line 278
    .line 279
    iget v2, v11, Lb3/e;->l:I

    .line 280
    .line 281
    invoke-virtual {v3, v2}, Lb3/g;->b(I)Z

    .line 282
    .line 283
    .line 284
    move-result v16

    .line 285
    if-nez v16, :cond_14

    .line 286
    .line 287
    goto/16 :goto_5

    .line 288
    .line 289
    :cond_14
    invoke-virtual {v3, v2}, Lb3/g;->e(I)I

    .line 290
    .line 291
    .line 292
    move-result v2

    .line 293
    if-eqz v10, :cond_16

    .line 294
    .line 295
    if-nez v12, :cond_16

    .line 296
    .line 297
    invoke-virtual {v3}, Lb3/g;->c()Z

    .line 298
    .line 299
    .line 300
    move-result v10

    .line 301
    if-nez v10, :cond_15

    .line 302
    .line 303
    goto :goto_5

    .line 304
    :cond_15
    invoke-virtual {v3}, Lb3/g;->h()I

    .line 305
    .line 306
    .line 307
    move-result v3

    .line 308
    goto :goto_3

    .line 309
    :cond_16
    const/4 v3, 0x0

    .line 310
    :goto_3
    move v10, v3

    .line 311
    const/4 v3, 0x0

    .line 312
    const/4 v9, 0x0

    .line 313
    goto :goto_4

    .line 314
    :cond_17
    if-ne v2, v9, :cond_1a

    .line 315
    .line 316
    iget-boolean v2, v11, Lb3/e;->m:Z

    .line 317
    .line 318
    if-nez v2, :cond_1a

    .line 319
    .line 320
    invoke-virtual {v3}, Lb3/g;->c()Z

    .line 321
    .line 322
    .line 323
    move-result v2

    .line 324
    if-nez v2, :cond_18

    .line 325
    .line 326
    goto :goto_5

    .line 327
    :cond_18
    invoke-virtual {v3}, Lb3/g;->h()I

    .line 328
    .line 329
    .line 330
    move-result v2

    .line 331
    if-eqz v10, :cond_1b

    .line 332
    .line 333
    if-nez v12, :cond_1b

    .line 334
    .line 335
    invoke-virtual {v3}, Lb3/g;->c()Z

    .line 336
    .line 337
    .line 338
    move-result v10

    .line 339
    if-nez v10, :cond_19

    .line 340
    .line 341
    goto :goto_5

    .line 342
    :cond_19
    invoke-virtual {v3}, Lb3/g;->h()I

    .line 343
    .line 344
    .line 345
    move-result v3

    .line 346
    move v9, v3

    .line 347
    const/4 v10, 0x0

    .line 348
    move v3, v2

    .line 349
    const/4 v2, 0x0

    .line 350
    goto :goto_4

    .line 351
    :cond_1a
    const/4 v2, 0x0

    .line 352
    :cond_1b
    move v3, v2

    .line 353
    const/4 v2, 0x0

    .line 354
    const/4 v9, 0x0

    .line 355
    const/4 v10, 0x0

    .line 356
    :goto_4
    iget-object v0, v4, Ln2/n;->n:Ln2/m;

    .line 357
    .line 358
    iput-object v11, v0, Ln2/m;->c:Lb3/e;

    .line 359
    .line 360
    iput v1, v0, Ln2/m;->d:I

    .line 361
    .line 362
    iput v6, v0, Ln2/m;->e:I

    .line 363
    .line 364
    iput v8, v0, Ln2/m;->f:I

    .line 365
    .line 366
    iput v7, v0, Ln2/m;->g:I

    .line 367
    .line 368
    iput-boolean v12, v0, Ln2/m;->h:Z

    .line 369
    .line 370
    iput-boolean v14, v0, Ln2/m;->i:Z

    .line 371
    .line 372
    iput-boolean v13, v0, Ln2/m;->j:Z

    .line 373
    .line 374
    iput-boolean v5, v0, Ln2/m;->k:Z

    .line 375
    .line 376
    iput v15, v0, Ln2/m;->l:I

    .line 377
    .line 378
    iput v2, v0, Ln2/m;->m:I

    .line 379
    .line 380
    iput v10, v0, Ln2/m;->n:I

    .line 381
    .line 382
    iput v3, v0, Ln2/m;->o:I

    .line 383
    .line 384
    iput v9, v0, Ln2/m;->p:I

    .line 385
    .line 386
    const/4 v1, 0x1

    .line 387
    iput-boolean v1, v0, Ln2/m;->a:Z

    .line 388
    .line 389
    iput-boolean v1, v0, Ln2/m;->b:Z

    .line 390
    .line 391
    const/4 v0, 0x0

    .line 392
    iput-boolean v0, v4, Ln2/n;->k:Z

    .line 393
    .line 394
    :goto_5
    return-void
.end method

.method public final b(Lb3/h;)V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v1, Lb3/h;->a:I

    .line 6
    .line 7
    iget v3, v1, Lb3/h;->b:I

    .line 8
    .line 9
    iget-object v4, v1, Lb3/h;->c:Ljava/io/Serializable;

    .line 10
    .line 11
    check-cast v4, [B

    .line 12
    .line 13
    iget-wide v5, v0, Ln2/o;->g:J

    .line 14
    .line 15
    sub-int v7, v3, v2

    .line 16
    .line 17
    int-to-long v8, v7

    .line 18
    add-long/2addr v5, v8

    .line 19
    iput-wide v5, v0, Ln2/o;->g:J

    .line 20
    .line 21
    iget-object v5, v0, Ln2/o;->j:Lk2/o;

    .line 22
    .line 23
    invoke-interface {v5, v7, v1}, Lk2/o;->d(ILb3/h;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    iget-object v1, v0, Ln2/o;->h:[Z

    .line 27
    .line 28
    invoke-static {v4, v2, v3, v1}, Lb3/f;->b([BII[Z)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-ne v1, v3, :cond_0

    .line 33
    .line 34
    invoke-virtual {v0, v4, v2, v3}, Ln2/o;->a([BII)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    add-int/lit8 v5, v1, 0x3

    .line 39
    .line 40
    aget-byte v6, v4, v5

    .line 41
    .line 42
    and-int/lit8 v6, v6, 0x1f

    .line 43
    .line 44
    sub-int v7, v1, v2

    .line 45
    .line 46
    if-lez v7, :cond_1

    .line 47
    .line 48
    invoke-virtual {v0, v4, v2, v1}, Ln2/o;->a([BII)V

    .line 49
    .line 50
    .line 51
    :cond_1
    sub-int v1, v3, v1

    .line 52
    .line 53
    iget-wide v8, v0, Ln2/o;->g:J

    .line 54
    .line 55
    int-to-long v10, v1

    .line 56
    sub-long/2addr v8, v10

    .line 57
    if-gez v7, :cond_2

    .line 58
    .line 59
    neg-int v7, v7

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    const/4 v7, 0x0

    .line 62
    :goto_1
    iget-wide v10, v0, Ln2/o;->m:J

    .line 63
    .line 64
    iget-boolean v12, v0, Ln2/o;->l:Z

    .line 65
    .line 66
    iget-object v14, v0, Ln2/o;->e:Lo1/n;

    .line 67
    .line 68
    iget-object v15, v0, Ln2/o;->d:Lo1/n;

    .line 69
    .line 70
    if-eqz v12, :cond_4

    .line 71
    .line 72
    iget-object v12, v0, Ln2/o;->k:Ln2/n;

    .line 73
    .line 74
    iget-boolean v12, v12, Ln2/n;->c:Z

    .line 75
    .line 76
    if-eqz v12, :cond_3

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_3
    move/from16 v27, v1

    .line 80
    .line 81
    move/from16 v23, v3

    .line 82
    .line 83
    move-object/from16 v24, v4

    .line 84
    .line 85
    move/from16 v25, v5

    .line 86
    .line 87
    move/from16 v26, v6

    .line 88
    .line 89
    goto/16 :goto_4

    .line 90
    .line 91
    :cond_4
    :goto_2
    invoke-virtual {v15, v7}, Lo1/n;->b(I)Z

    .line 92
    .line 93
    .line 94
    invoke-virtual {v14, v7}, Lo1/n;->b(I)Z

    .line 95
    .line 96
    .line 97
    iget-boolean v12, v0, Ln2/o;->l:Z

    .line 98
    .line 99
    if-nez v12, :cond_5

    .line 100
    .line 101
    iget-boolean v12, v15, Lo1/n;->c:Z

    .line 102
    .line 103
    if-eqz v12, :cond_3

    .line 104
    .line 105
    iget-boolean v12, v14, Lo1/n;->c:Z

    .line 106
    .line 107
    if-eqz v12, :cond_3

    .line 108
    .line 109
    new-instance v12, Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .line 113
    .line 114
    iget-object v13, v15, Lo1/n;->e:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast v13, [B

    .line 117
    .line 118
    iget v2, v15, Lo1/n;->d:I

    .line 119
    .line 120
    invoke-static {v13, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    iget-object v2, v14, Lo1/n;->e:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast v2, [B

    .line 130
    .line 131
    iget v13, v14, Lo1/n;->d:I

    .line 132
    .line 133
    invoke-static {v2, v13}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    iget-object v2, v15, Lo1/n;->e:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast v2, [B

    .line 143
    .line 144
    iget v13, v15, Lo1/n;->d:I

    .line 145
    .line 146
    move/from16 v23, v3

    .line 147
    .line 148
    const/4 v3, 0x3

    .line 149
    invoke-static {v2, v3, v13}, Lb3/f;->d([BII)Lb3/e;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    iget-object v3, v14, Lo1/n;->e:Ljava/lang/Object;

    .line 154
    .line 155
    check-cast v3, [B

    .line 156
    .line 157
    iget v13, v14, Lo1/n;->d:I

    .line 158
    .line 159
    invoke-static {v3, v13}, Lb3/f;->c([BI)Lb3/d;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    iget-object v13, v0, Ln2/o;->j:Lk2/o;

    .line 164
    .line 165
    move-object/from16 v24, v4

    .line 166
    .line 167
    iget-object v4, v0, Ln2/o;->i:Ljava/lang/String;

    .line 168
    .line 169
    const-string v17, "video/avc"

    .line 170
    .line 171
    move/from16 v25, v5

    .line 172
    .line 173
    iget v5, v2, Lb3/e;->a:I

    .line 174
    .line 175
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    move/from16 v26, v6

    .line 180
    .line 181
    iget v6, v2, Lb3/e;->b:I

    .line 182
    .line 183
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 184
    .line 185
    .line 186
    move-result-object v6

    .line 187
    move/from16 v27, v1

    .line 188
    .line 189
    iget v1, v2, Lb3/e;->c:I

    .line 190
    .line 191
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    filled-new-array {v5, v6, v1}, [Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    const-string v5, "avc1.%02X%02X%02X"

    .line 200
    .line 201
    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v18

    .line 205
    iget v1, v2, Lb3/e;->e:I

    .line 206
    .line 207
    iget v5, v2, Lb3/e;->f:I

    .line 208
    .line 209
    iget v6, v2, Lb3/e;->g:F

    .line 210
    .line 211
    move-object/from16 v16, v4

    .line 212
    .line 213
    move/from16 v19, v1

    .line 214
    .line 215
    move/from16 v20, v5

    .line 216
    .line 217
    move-object/from16 v21, v12

    .line 218
    .line 219
    move/from16 v22, v6

    .line 220
    .line 221
    invoke-static/range {v16 .. v22}, Lf2/t;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;F)Lf2/t;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-interface {v13, v1}, Lk2/o;->c(Lf2/t;)V

    .line 226
    .line 227
    .line 228
    const/4 v1, 0x1

    .line 229
    iput-boolean v1, v0, Ln2/o;->l:Z

    .line 230
    .line 231
    iget-object v1, v0, Ln2/o;->k:Ln2/n;

    .line 232
    .line 233
    iget-object v1, v1, Ln2/n;->d:Landroid/util/SparseArray;

    .line 234
    .line 235
    iget v4, v2, Lb3/e;->d:I

    .line 236
    .line 237
    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    iget-object v1, v0, Ln2/o;->k:Ln2/n;

    .line 241
    .line 242
    iget-object v1, v1, Ln2/n;->e:Landroid/util/SparseArray;

    .line 243
    .line 244
    iget v2, v3, Lb3/d;->a:I

    .line 245
    .line 246
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v15}, Lo1/n;->c()V

    .line 250
    .line 251
    .line 252
    goto :goto_3

    .line 253
    :cond_5
    move/from16 v27, v1

    .line 254
    .line 255
    move/from16 v23, v3

    .line 256
    .line 257
    move-object/from16 v24, v4

    .line 258
    .line 259
    move/from16 v25, v5

    .line 260
    .line 261
    move/from16 v26, v6

    .line 262
    .line 263
    iget-boolean v1, v15, Lo1/n;->c:Z

    .line 264
    .line 265
    if-eqz v1, :cond_6

    .line 266
    .line 267
    iget-object v1, v15, Lo1/n;->e:Ljava/lang/Object;

    .line 268
    .line 269
    check-cast v1, [B

    .line 270
    .line 271
    iget v2, v15, Lo1/n;->d:I

    .line 272
    .line 273
    const/4 v3, 0x3

    .line 274
    invoke-static {v1, v3, v2}, Lb3/f;->d([BII)Lb3/e;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    iget-object v2, v0, Ln2/o;->k:Ln2/n;

    .line 279
    .line 280
    iget-object v2, v2, Ln2/n;->d:Landroid/util/SparseArray;

    .line 281
    .line 282
    iget v3, v1, Lb3/e;->d:I

    .line 283
    .line 284
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v15}, Lo1/n;->c()V

    .line 288
    .line 289
    .line 290
    goto :goto_4

    .line 291
    :cond_6
    iget-boolean v1, v14, Lo1/n;->c:Z

    .line 292
    .line 293
    if-eqz v1, :cond_7

    .line 294
    .line 295
    iget-object v1, v14, Lo1/n;->e:Ljava/lang/Object;

    .line 296
    .line 297
    check-cast v1, [B

    .line 298
    .line 299
    iget v2, v14, Lo1/n;->d:I

    .line 300
    .line 301
    invoke-static {v1, v2}, Lb3/f;->c([BI)Lb3/d;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    iget-object v2, v0, Ln2/o;->k:Ln2/n;

    .line 306
    .line 307
    iget-object v2, v2, Ln2/n;->e:Landroid/util/SparseArray;

    .line 308
    .line 309
    iget v3, v1, Lb3/d;->a:I

    .line 310
    .line 311
    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 312
    .line 313
    .line 314
    :goto_3
    invoke-virtual {v14}, Lo1/n;->c()V

    .line 315
    .line 316
    .line 317
    :cond_7
    :goto_4
    iget-object v1, v0, Ln2/o;->f:Lo1/n;

    .line 318
    .line 319
    invoke-virtual {v1, v7}, Lo1/n;->b(I)Z

    .line 320
    .line 321
    .line 322
    move-result v2

    .line 323
    if-eqz v2, :cond_8

    .line 324
    .line 325
    iget-object v2, v1, Lo1/n;->e:Ljava/lang/Object;

    .line 326
    .line 327
    check-cast v2, [B

    .line 328
    .line 329
    iget v3, v1, Lo1/n;->d:I

    .line 330
    .line 331
    invoke-static {v2, v3}, Lb3/f;->e([BI)I

    .line 332
    .line 333
    .line 334
    move-result v2

    .line 335
    iget-object v3, v1, Lo1/n;->e:Ljava/lang/Object;

    .line 336
    .line 337
    check-cast v3, [B

    .line 338
    .line 339
    iget-object v4, v0, Ln2/o;->o:Lb3/h;

    .line 340
    .line 341
    invoke-virtual {v4, v3, v2}, Lb3/h;->o([BI)V

    .line 342
    .line 343
    .line 344
    const/4 v2, 0x4

    .line 345
    invoke-virtual {v4, v2}, Lb3/h;->q(I)V

    .line 346
    .line 347
    .line 348
    iget-object v2, v0, Ln2/o;->a:Ln2/w;

    .line 349
    .line 350
    invoke-virtual {v2, v10, v11, v4}, Ln2/w;->a(JLb3/h;)V

    .line 351
    .line 352
    .line 353
    :cond_8
    iget-object v2, v0, Ln2/o;->k:Ln2/n;

    .line 354
    .line 355
    iget-boolean v3, v0, Ln2/o;->l:Z

    .line 356
    .line 357
    iget-boolean v4, v0, Ln2/o;->n:Z

    .line 358
    .line 359
    iget v5, v2, Ln2/n;->i:I

    .line 360
    .line 361
    const/16 v6, 0x9

    .line 362
    .line 363
    if-eq v5, v6, :cond_f

    .line 364
    .line 365
    iget-boolean v5, v2, Ln2/n;->c:Z

    .line 366
    .line 367
    if-eqz v5, :cond_11

    .line 368
    .line 369
    iget-object v5, v2, Ln2/n;->n:Ln2/m;

    .line 370
    .line 371
    iget-object v6, v2, Ln2/n;->m:Ln2/m;

    .line 372
    .line 373
    iget-boolean v7, v5, Ln2/m;->a:Z

    .line 374
    .line 375
    if-eqz v7, :cond_e

    .line 376
    .line 377
    iget-boolean v7, v6, Ln2/m;->a:Z

    .line 378
    .line 379
    if-eqz v7, :cond_d

    .line 380
    .line 381
    iget v7, v5, Ln2/m;->f:I

    .line 382
    .line 383
    iget v10, v6, Ln2/m;->f:I

    .line 384
    .line 385
    if-ne v7, v10, :cond_d

    .line 386
    .line 387
    iget v7, v5, Ln2/m;->g:I

    .line 388
    .line 389
    iget v10, v6, Ln2/m;->g:I

    .line 390
    .line 391
    if-ne v7, v10, :cond_d

    .line 392
    .line 393
    iget-boolean v7, v5, Ln2/m;->h:Z

    .line 394
    .line 395
    iget-boolean v10, v6, Ln2/m;->h:Z

    .line 396
    .line 397
    if-ne v7, v10, :cond_d

    .line 398
    .line 399
    iget-boolean v7, v5, Ln2/m;->i:Z

    .line 400
    .line 401
    if-eqz v7, :cond_9

    .line 402
    .line 403
    iget-boolean v7, v6, Ln2/m;->i:Z

    .line 404
    .line 405
    if-eqz v7, :cond_9

    .line 406
    .line 407
    iget-boolean v7, v5, Ln2/m;->j:Z

    .line 408
    .line 409
    iget-boolean v10, v6, Ln2/m;->j:Z

    .line 410
    .line 411
    if-ne v7, v10, :cond_d

    .line 412
    .line 413
    :cond_9
    iget v7, v5, Ln2/m;->d:I

    .line 414
    .line 415
    iget v10, v6, Ln2/m;->d:I

    .line 416
    .line 417
    if-eq v7, v10, :cond_a

    .line 418
    .line 419
    if-eqz v7, :cond_d

    .line 420
    .line 421
    if-eqz v10, :cond_d

    .line 422
    .line 423
    :cond_a
    iget-object v7, v5, Ln2/m;->c:Lb3/e;

    .line 424
    .line 425
    iget v7, v7, Lb3/e;->k:I

    .line 426
    .line 427
    if-nez v7, :cond_b

    .line 428
    .line 429
    iget-object v10, v6, Ln2/m;->c:Lb3/e;

    .line 430
    .line 431
    iget v10, v10, Lb3/e;->k:I

    .line 432
    .line 433
    if-nez v10, :cond_b

    .line 434
    .line 435
    iget v10, v5, Ln2/m;->m:I

    .line 436
    .line 437
    iget v11, v6, Ln2/m;->m:I

    .line 438
    .line 439
    if-ne v10, v11, :cond_d

    .line 440
    .line 441
    iget v10, v5, Ln2/m;->n:I

    .line 442
    .line 443
    iget v11, v6, Ln2/m;->n:I

    .line 444
    .line 445
    if-ne v10, v11, :cond_d

    .line 446
    .line 447
    :cond_b
    const/4 v10, 0x1

    .line 448
    if-ne v7, v10, :cond_c

    .line 449
    .line 450
    iget-object v7, v6, Ln2/m;->c:Lb3/e;

    .line 451
    .line 452
    iget v7, v7, Lb3/e;->k:I

    .line 453
    .line 454
    if-ne v7, v10, :cond_c

    .line 455
    .line 456
    iget v7, v5, Ln2/m;->o:I

    .line 457
    .line 458
    iget v10, v6, Ln2/m;->o:I

    .line 459
    .line 460
    if-ne v7, v10, :cond_d

    .line 461
    .line 462
    iget v7, v5, Ln2/m;->p:I

    .line 463
    .line 464
    iget v10, v6, Ln2/m;->p:I

    .line 465
    .line 466
    if-ne v7, v10, :cond_d

    .line 467
    .line 468
    :cond_c
    iget-boolean v7, v5, Ln2/m;->k:Z

    .line 469
    .line 470
    iget-boolean v10, v6, Ln2/m;->k:Z

    .line 471
    .line 472
    if-ne v7, v10, :cond_d

    .line 473
    .line 474
    if-eqz v7, :cond_e

    .line 475
    .line 476
    if-eqz v10, :cond_e

    .line 477
    .line 478
    iget v5, v5, Ln2/m;->l:I

    .line 479
    .line 480
    iget v6, v6, Ln2/m;->l:I

    .line 481
    .line 482
    if-eq v5, v6, :cond_e

    .line 483
    .line 484
    :cond_d
    const/4 v5, 0x1

    .line 485
    goto :goto_5

    .line 486
    :cond_e
    const/4 v5, 0x0

    .line 487
    :goto_5
    if-eqz v5, :cond_11

    .line 488
    .line 489
    :cond_f
    if-eqz v3, :cond_10

    .line 490
    .line 491
    iget-boolean v3, v2, Ln2/n;->o:Z

    .line 492
    .line 493
    if-eqz v3, :cond_10

    .line 494
    .line 495
    iget-wide v5, v2, Ln2/n;->j:J

    .line 496
    .line 497
    sub-long v10, v8, v5

    .line 498
    .line 499
    long-to-int v3, v10

    .line 500
    add-int v21, v27, v3

    .line 501
    .line 502
    iget-boolean v3, v2, Ln2/n;->r:Z

    .line 503
    .line 504
    iget-wide v10, v2, Ln2/n;->p:J

    .line 505
    .line 506
    sub-long/2addr v5, v10

    .line 507
    long-to-int v5, v5

    .line 508
    iget-object v6, v2, Ln2/n;->a:Lk2/o;

    .line 509
    .line 510
    iget-wide v10, v2, Ln2/n;->q:J

    .line 511
    .line 512
    const/16 v22, 0x0

    .line 513
    .line 514
    move-object/from16 v16, v6

    .line 515
    .line 516
    move-wide/from16 v17, v10

    .line 517
    .line 518
    move/from16 v19, v3

    .line 519
    .line 520
    move/from16 v20, v5

    .line 521
    .line 522
    invoke-interface/range {v16 .. v22}, Lk2/o;->b(JIIILk2/n;)V

    .line 523
    .line 524
    .line 525
    :cond_10
    iget-wide v5, v2, Ln2/n;->j:J

    .line 526
    .line 527
    iput-wide v5, v2, Ln2/n;->p:J

    .line 528
    .line 529
    iget-wide v5, v2, Ln2/n;->l:J

    .line 530
    .line 531
    iput-wide v5, v2, Ln2/n;->q:J

    .line 532
    .line 533
    const/4 v3, 0x0

    .line 534
    iput-boolean v3, v2, Ln2/n;->r:Z

    .line 535
    .line 536
    const/4 v3, 0x1

    .line 537
    iput-boolean v3, v2, Ln2/n;->o:Z

    .line 538
    .line 539
    :cond_11
    iget-boolean v3, v2, Ln2/n;->b:Z

    .line 540
    .line 541
    const/4 v5, 0x2

    .line 542
    if-eqz v3, :cond_14

    .line 543
    .line 544
    iget-object v3, v2, Ln2/n;->n:Ln2/m;

    .line 545
    .line 546
    iget-boolean v4, v3, Ln2/m;->b:Z

    .line 547
    .line 548
    if-eqz v4, :cond_13

    .line 549
    .line 550
    iget v3, v3, Ln2/m;->e:I

    .line 551
    .line 552
    const/4 v4, 0x7

    .line 553
    if-eq v3, v4, :cond_12

    .line 554
    .line 555
    if-ne v3, v5, :cond_13

    .line 556
    .line 557
    :cond_12
    const/4 v4, 0x1

    .line 558
    goto :goto_6

    .line 559
    :cond_13
    const/4 v4, 0x0

    .line 560
    :cond_14
    :goto_6
    iget-boolean v3, v2, Ln2/n;->r:Z

    .line 561
    .line 562
    iget v6, v2, Ln2/n;->i:I

    .line 563
    .line 564
    const/4 v7, 0x5

    .line 565
    if-eq v6, v7, :cond_16

    .line 566
    .line 567
    if-eqz v4, :cond_15

    .line 568
    .line 569
    const/4 v4, 0x1

    .line 570
    if-ne v6, v4, :cond_15

    .line 571
    .line 572
    goto :goto_7

    .line 573
    :cond_15
    const/4 v4, 0x0

    .line 574
    goto :goto_8

    .line 575
    :cond_16
    :goto_7
    const/4 v4, 0x1

    .line 576
    :goto_8
    or-int/2addr v3, v4

    .line 577
    iput-boolean v3, v2, Ln2/n;->r:Z

    .line 578
    .line 579
    if-eqz v3, :cond_17

    .line 580
    .line 581
    const/4 v2, 0x0

    .line 582
    iput-boolean v2, v0, Ln2/o;->n:Z

    .line 583
    .line 584
    :cond_17
    iget-wide v2, v0, Ln2/o;->m:J

    .line 585
    .line 586
    iget-boolean v4, v0, Ln2/o;->l:Z

    .line 587
    .line 588
    if-eqz v4, :cond_19

    .line 589
    .line 590
    iget-object v4, v0, Ln2/o;->k:Ln2/n;

    .line 591
    .line 592
    iget-boolean v4, v4, Ln2/n;->c:Z

    .line 593
    .line 594
    if-eqz v4, :cond_18

    .line 595
    .line 596
    goto :goto_9

    .line 597
    :cond_18
    move/from16 v4, v26

    .line 598
    .line 599
    goto :goto_a

    .line 600
    :cond_19
    :goto_9
    move/from16 v4, v26

    .line 601
    .line 602
    invoke-virtual {v15, v4}, Lo1/n;->d(I)V

    .line 603
    .line 604
    .line 605
    invoke-virtual {v14, v4}, Lo1/n;->d(I)V

    .line 606
    .line 607
    .line 608
    :goto_a
    invoke-virtual {v1, v4}, Lo1/n;->d(I)V

    .line 609
    .line 610
    .line 611
    iget-object v1, v0, Ln2/o;->k:Ln2/n;

    .line 612
    .line 613
    iput v4, v1, Ln2/n;->i:I

    .line 614
    .line 615
    iput-wide v2, v1, Ln2/n;->l:J

    .line 616
    .line 617
    iput-wide v8, v1, Ln2/n;->j:J

    .line 618
    .line 619
    iget-boolean v2, v1, Ln2/n;->b:Z

    .line 620
    .line 621
    if-eqz v2, :cond_1a

    .line 622
    .line 623
    const/4 v2, 0x1

    .line 624
    if-eq v4, v2, :cond_1b

    .line 625
    .line 626
    goto :goto_b

    .line 627
    :cond_1a
    const/4 v2, 0x1

    .line 628
    :goto_b
    iget-boolean v3, v1, Ln2/n;->c:Z

    .line 629
    .line 630
    if-eqz v3, :cond_1c

    .line 631
    .line 632
    if-eq v4, v7, :cond_1b

    .line 633
    .line 634
    if-eq v4, v2, :cond_1b

    .line 635
    .line 636
    if-ne v4, v5, :cond_1c

    .line 637
    .line 638
    :cond_1b
    iget-object v2, v1, Ln2/n;->m:Ln2/m;

    .line 639
    .line 640
    iget-object v3, v1, Ln2/n;->n:Ln2/m;

    .line 641
    .line 642
    iput-object v3, v1, Ln2/n;->m:Ln2/m;

    .line 643
    .line 644
    iput-object v2, v1, Ln2/n;->n:Ln2/m;

    .line 645
    .line 646
    const/4 v3, 0x0

    .line 647
    iput-boolean v3, v2, Ln2/m;->b:Z

    .line 648
    .line 649
    iput-boolean v3, v2, Ln2/m;->a:Z

    .line 650
    .line 651
    iput v3, v1, Ln2/n;->h:I

    .line 652
    .line 653
    const/4 v2, 0x1

    .line 654
    iput-boolean v2, v1, Ln2/n;->k:Z

    .line 655
    .line 656
    :cond_1c
    move/from16 v3, v23

    .line 657
    .line 658
    move-object/from16 v4, v24

    .line 659
    .line 660
    move/from16 v2, v25

    .line 661
    .line 662
    goto/16 :goto_0
.end method

.method public final c()V
    .locals 0

    .line 1
    return-void
.end method

.method public final d(JI)V
    .locals 0

    .line 1
    iput-wide p1, p0, Ln2/o;->m:J

    iget-boolean p1, p0, Ln2/o;->n:Z

    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    or-int/2addr p1, p2

    iput-boolean p1, p0, Ln2/o;->n:Z

    return-void
.end method

.method public final e(Lk2/i;Ln2/e0;)V
    .locals 4

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
    iput-object v0, p0, Ln2/o;->i:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p2}, Ln2/e0;->b()V

    .line 12
    .line 13
    .line 14
    iget v0, p2, Ln2/e0;->d:I

    .line 15
    .line 16
    check-cast p1, Lw2/p;

    .line 17
    .line 18
    const/4 v1, 0x2

    .line 19
    invoke-virtual {p1, v0, v1}, Lw2/p;->C(II)Lk2/o;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Ln2/o;->j:Lk2/o;

    .line 24
    .line 25
    new-instance v1, Ln2/n;

    .line 26
    .line 27
    iget-boolean v2, p0, Ln2/o;->b:Z

    .line 28
    .line 29
    iget-boolean v3, p0, Ln2/o;->c:Z

    .line 30
    .line 31
    invoke-direct {v1, v0, v2, v3}, Ln2/n;-><init>(Lk2/o;ZZ)V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Ln2/o;->k:Ln2/n;

    .line 35
    .line 36
    iget-object v0, p0, Ln2/o;->a:Ln2/w;

    .line 37
    .line 38
    invoke-virtual {v0, p1, p2}, Ln2/w;->b(Lk2/i;Ln2/e0;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
