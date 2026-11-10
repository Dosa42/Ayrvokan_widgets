.class public final Ln2/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk2/h;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Lb3/h;

.field public final c:Ln2/g;

.field public final d:Landroid/util/SparseArray;

.field public final e:Landroid/util/SparseBooleanArray;

.field public final f:Landroid/util/SparseBooleanArray;

.field public final g:Ln2/z;

.field public h:Ln2/y;

.field public i:Lk2/i;

.field public j:Z

.field public k:Z

.field public l:Ln2/f0;

.field public m:I

.field public n:I


# direct methods
.method public constructor <init>(Lb3/l;Ln2/g;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Ln2/c0;->c:Ln2/g;

    .line 5
    .line 6
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Ln2/c0;->a:Ljava/util/List;

    .line 11
    .line 12
    new-instance p1, Lb3/h;

    .line 13
    .line 14
    const/16 p2, 0x24b8

    .line 15
    .line 16
    new-array p2, p2, [B

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-direct {p1, p2, v0}, Lb3/h;-><init>([BI)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Ln2/c0;->b:Lb3/h;

    .line 23
    .line 24
    new-instance p1, Landroid/util/SparseBooleanArray;

    .line 25
    .line 26
    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Ln2/c0;->e:Landroid/util/SparseBooleanArray;

    .line 30
    .line 31
    new-instance p2, Landroid/util/SparseBooleanArray;

    .line 32
    .line 33
    invoke-direct {p2}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object p2, p0, Ln2/c0;->f:Landroid/util/SparseBooleanArray;

    .line 37
    .line 38
    new-instance p2, Landroid/util/SparseArray;

    .line 39
    .line 40
    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object p2, p0, Ln2/c0;->d:Landroid/util/SparseArray;

    .line 44
    .line 45
    new-instance v1, Landroid/util/SparseIntArray;

    .line 46
    .line 47
    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 48
    .line 49
    .line 50
    new-instance v1, Ln2/z;

    .line 51
    .line 52
    invoke-direct {v1}, Ln2/z;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v1, p0, Ln2/c0;->g:Ln2/z;

    .line 56
    .line 57
    const/4 v1, -0x1

    .line 58
    iput v1, p0, Ln2/c0;->n:I

    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    .line 64
    .line 65
    .line 66
    new-instance p1, Landroid/util/SparseArray;

    .line 67
    .line 68
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    move v2, v0

    .line 76
    :goto_0
    if-ge v2, v1, :cond_0

    .line 77
    .line 78
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-virtual {p2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    add-int/lit8 v2, v2, 0x1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_0
    new-instance p1, Ln2/v;

    .line 93
    .line 94
    new-instance v1, Ln2/a0;

    .line 95
    .line 96
    invoke-direct {v1, p0}, Ln2/a0;-><init>(Ln2/c0;)V

    .line 97
    .line 98
    .line 99
    invoke-direct {p1, v1}, Ln2/v;-><init>(Ln2/u;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    const/4 p1, 0x0

    .line 106
    iput-object p1, p0, Ln2/c0;->l:Ln2/f0;

    .line 107
    .line 108
    return-void
.end method


# virtual methods
.method public final a(Lk2/f;)I
    .locals 50

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    sget-object v2, Lw2/h;->H:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    .line 7
    iget-wide v7, v1, Lk2/f;->c:J

    .line 8
    .line 9
    iget-boolean v2, v0, Ln2/c0;->j:Z

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    const/4 v6, 0x0

    .line 13
    if-eqz v2, :cond_1a

    .line 14
    .line 15
    iget-boolean v2, v0, Ln2/c0;->k:Z

    .line 16
    .line 17
    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    iput-boolean v5, v0, Ln2/c0;->k:Z

    .line 25
    .line 26
    iget-object v2, v0, Ln2/c0;->g:Ln2/z;

    .line 27
    .line 28
    iget-wide v3, v2, Ln2/z;->b:J

    .line 29
    .line 30
    cmp-long v18, v3, v16

    .line 31
    .line 32
    if-eqz v18, :cond_0

    .line 33
    .line 34
    new-instance v15, Ln2/y;

    .line 35
    .line 36
    iget-object v2, v2, Ln2/z;->a:Lb3/l;

    .line 37
    .line 38
    iget v9, v0, Ln2/c0;->n:I

    .line 39
    .line 40
    move-wide/from16 v19, v3

    .line 41
    .line 42
    move-object v3, v15

    .line 43
    move-object v4, v2

    .line 44
    move v2, v5

    .line 45
    move v10, v6

    .line 46
    move-wide/from16 v5, v19

    .line 47
    .line 48
    const/16 v2, 0xbc

    .line 49
    .line 50
    invoke-direct/range {v3 .. v9}, Ln2/y;-><init>(Lb3/l;JJI)V

    .line 51
    .line 52
    .line 53
    iput-object v15, v0, Ln2/c0;->h:Ln2/y;

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    move v10, v6

    .line 57
    const/16 v2, 0xbc

    .line 58
    .line 59
    :goto_0
    iget-object v3, v0, Ln2/c0;->i:Lk2/i;

    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    move v10, v6

    .line 66
    const/16 v2, 0xbc

    .line 67
    .line 68
    :goto_1
    iget-object v3, v0, Ln2/c0;->h:Ln2/y;

    .line 69
    .line 70
    if-eqz v3, :cond_1a

    .line 71
    .line 72
    iget-object v4, v3, Ln2/y;->d:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v4, Lk2/b;

    .line 75
    .line 76
    if-eqz v4, :cond_2

    .line 77
    .line 78
    const/4 v5, 0x1

    .line 79
    goto :goto_2

    .line 80
    :cond_2
    move v5, v10

    .line 81
    :goto_2
    if-eqz v5, :cond_1a

    .line 82
    .line 83
    iget-object v4, v3, Ln2/y;->c:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v4, Ln2/x;

    .line 86
    .line 87
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    :goto_3
    iget-object v5, v3, Ln2/y;->d:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v5, Lk2/b;

    .line 93
    .line 94
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    iget-wide v6, v5, Lk2/b;->c:J

    .line 98
    .line 99
    iget-wide v8, v5, Lk2/b;->d:J

    .line 100
    .line 101
    iget-wide v11, v5, Lk2/b;->e:J

    .line 102
    .line 103
    sub-long/2addr v8, v6

    .line 104
    iget v15, v3, Ln2/y;->a:I

    .line 105
    .line 106
    int-to-long v13, v15

    .line 107
    cmp-long v8, v8, v13

    .line 108
    .line 109
    if-gtz v8, :cond_3

    .line 110
    .line 111
    invoke-virtual {v3}, Ln2/y;->a()V

    .line 112
    .line 113
    .line 114
    invoke-static {v1, v6, v7}, Ln2/y;->b(Lk2/f;J)I

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    goto/16 :goto_10

    .line 119
    .line 120
    :cond_3
    iget-wide v6, v1, Lk2/f;->d:J

    .line 121
    .line 122
    sub-long v6, v11, v6

    .line 123
    .line 124
    const-wide/16 v8, 0x0

    .line 125
    .line 126
    cmp-long v13, v6, v8

    .line 127
    .line 128
    const-wide/32 v22, 0x40000

    .line 129
    .line 130
    .line 131
    if-ltz v13, :cond_4

    .line 132
    .line 133
    cmp-long v13, v6, v22

    .line 134
    .line 135
    if-gtz v13, :cond_4

    .line 136
    .line 137
    long-to-int v6, v6

    .line 138
    invoke-virtual {v1, v6}, Lk2/f;->f(I)V

    .line 139
    .line 140
    .line 141
    const/4 v6, 0x1

    .line 142
    goto :goto_4

    .line 143
    :cond_4
    move v6, v10

    .line 144
    :goto_4
    if-nez v6, :cond_6

    .line 145
    .line 146
    :cond_5
    :goto_5
    invoke-static {v1, v11, v12}, Ln2/y;->b(Lk2/f;J)I

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    goto/16 :goto_10

    .line 151
    .line 152
    :cond_6
    iput v10, v1, Lk2/f;->f:I

    .line 153
    .line 154
    iget-wide v6, v1, Lk2/f;->d:J

    .line 155
    .line 156
    iget-wide v13, v1, Lk2/f;->c:J

    .line 157
    .line 158
    sub-long/2addr v13, v6

    .line 159
    const-wide/32 v8, 0x1b8a0

    .line 160
    .line 161
    .line 162
    invoke-static {v8, v9, v13, v14}, Ljava/lang/Math;->min(JJ)J

    .line 163
    .line 164
    .line 165
    move-result-wide v8

    .line 166
    long-to-int v8, v8

    .line 167
    iget-object v9, v4, Ln2/x;->b:Lb3/h;

    .line 168
    .line 169
    invoke-virtual {v9, v8}, Lb3/h;->n(I)V

    .line 170
    .line 171
    .line 172
    iget-object v13, v9, Lb3/h;->c:Ljava/io/Serializable;

    .line 173
    .line 174
    check-cast v13, [B

    .line 175
    .line 176
    invoke-virtual {v1, v13, v10, v8, v10}, Lk2/f;->b([BIIZ)Z

    .line 177
    .line 178
    .line 179
    iget v8, v9, Lb3/h;->b:I

    .line 180
    .line 181
    const-wide/16 v13, -0x1

    .line 182
    .line 183
    move-wide/from16 v24, v13

    .line 184
    .line 185
    move-wide/from16 v32, v16

    .line 186
    .line 187
    :goto_6
    iget v15, v9, Lb3/h;->b:I

    .line 188
    .line 189
    iget v10, v9, Lb3/h;->a:I

    .line 190
    .line 191
    sub-int/2addr v15, v10

    .line 192
    if-lt v15, v2, :cond_14

    .line 193
    .line 194
    iget-object v15, v9, Lb3/h;->c:Ljava/io/Serializable;

    .line 195
    .line 196
    check-cast v15, [B

    .line 197
    .line 198
    :goto_7
    if-ge v10, v8, :cond_7

    .line 199
    .line 200
    aget-byte v2, v15, v10

    .line 201
    .line 202
    move-object/from16 v26, v15

    .line 203
    .line 204
    const/16 v15, 0x47

    .line 205
    .line 206
    if-eq v2, v15, :cond_7

    .line 207
    .line 208
    add-int/lit8 v10, v10, 0x1

    .line 209
    .line 210
    move-object/from16 v15, v26

    .line 211
    .line 212
    const/16 v2, 0xbc

    .line 213
    .line 214
    goto :goto_7

    .line 215
    :cond_7
    add-int/lit16 v2, v10, 0xbc

    .line 216
    .line 217
    if-le v2, v8, :cond_8

    .line 218
    .line 219
    goto/16 :goto_d

    .line 220
    .line 221
    :cond_8
    invoke-virtual {v9, v10}, Lb3/h;->q(I)V

    .line 222
    .line 223
    .line 224
    iget v13, v9, Lb3/h;->b:I

    .line 225
    .line 226
    iget v14, v9, Lb3/h;->a:I

    .line 227
    .line 228
    sub-int/2addr v13, v14

    .line 229
    const/4 v14, 0x5

    .line 230
    if-ge v13, v14, :cond_9

    .line 231
    .line 232
    :goto_8
    move/from16 v29, v8

    .line 233
    .line 234
    move-wide/from16 v36, v11

    .line 235
    .line 236
    move-wide/from16 v11, v16

    .line 237
    .line 238
    const/4 v8, 0x2

    .line 239
    goto/16 :goto_b

    .line 240
    .line 241
    :cond_9
    invoke-virtual {v9}, Lb3/h;->b()I

    .line 242
    .line 243
    .line 244
    move-result v13

    .line 245
    const/high16 v14, 0x800000

    .line 246
    .line 247
    and-int v15, v13, v14

    .line 248
    .line 249
    if-eqz v15, :cond_a

    .line 250
    .line 251
    goto :goto_8

    .line 252
    :cond_a
    const v14, 0x1fff00

    .line 253
    .line 254
    .line 255
    and-int v15, v13, v14

    .line 256
    .line 257
    shr-int/lit8 v14, v15, 0x8

    .line 258
    .line 259
    iget v15, v4, Ln2/x;->c:I

    .line 260
    .line 261
    if-eq v14, v15, :cond_b

    .line 262
    .line 263
    goto :goto_8

    .line 264
    :cond_b
    and-int/lit8 v13, v13, 0x20

    .line 265
    .line 266
    if-eqz v13, :cond_c

    .line 267
    .line 268
    const/4 v13, 0x1

    .line 269
    goto :goto_9

    .line 270
    :cond_c
    const/4 v13, 0x0

    .line 271
    :goto_9
    if-nez v13, :cond_d

    .line 272
    .line 273
    goto :goto_8

    .line 274
    :cond_d
    invoke-virtual {v9}, Lb3/h;->h()I

    .line 275
    .line 276
    .line 277
    move-result v13

    .line 278
    const/4 v14, 0x7

    .line 279
    if-lt v13, v14, :cond_f

    .line 280
    .line 281
    iget v13, v9, Lb3/h;->b:I

    .line 282
    .line 283
    iget v15, v9, Lb3/h;->a:I

    .line 284
    .line 285
    sub-int/2addr v13, v15

    .line 286
    if-lt v13, v14, :cond_f

    .line 287
    .line 288
    invoke-virtual {v9}, Lb3/h;->h()I

    .line 289
    .line 290
    .line 291
    move-result v13

    .line 292
    const/16 v15, 0x10

    .line 293
    .line 294
    and-int/2addr v13, v15

    .line 295
    if-ne v13, v15, :cond_e

    .line 296
    .line 297
    const/4 v13, 0x1

    .line 298
    goto :goto_a

    .line 299
    :cond_e
    const/4 v13, 0x0

    .line 300
    :goto_a
    if-eqz v13, :cond_f

    .line 301
    .line 302
    const/4 v13, 0x6

    .line 303
    new-array v15, v13, [B

    .line 304
    .line 305
    const/4 v14, 0x0

    .line 306
    invoke-virtual {v9, v15, v14, v13}, Lb3/h;->a([BII)V

    .line 307
    .line 308
    .line 309
    aget-byte v13, v15, v14

    .line 310
    .line 311
    int-to-long v13, v13

    .line 312
    const-wide/16 v27, 0xff

    .line 313
    .line 314
    and-long v13, v13, v27

    .line 315
    .line 316
    const/16 v29, 0x19

    .line 317
    .line 318
    shl-long v13, v13, v29

    .line 319
    .line 320
    move/from16 v29, v8

    .line 321
    .line 322
    const/16 v19, 0x1

    .line 323
    .line 324
    aget-byte v8, v15, v19

    .line 325
    .line 326
    move-wide/from16 v36, v11

    .line 327
    .line 328
    int-to-long v11, v8

    .line 329
    and-long v11, v11, v27

    .line 330
    .line 331
    const/16 v8, 0x11

    .line 332
    .line 333
    shl-long/2addr v11, v8

    .line 334
    or-long/2addr v11, v13

    .line 335
    const/4 v8, 0x2

    .line 336
    aget-byte v13, v15, v8

    .line 337
    .line 338
    int-to-long v13, v13

    .line 339
    and-long v13, v13, v27

    .line 340
    .line 341
    const/16 v21, 0x9

    .line 342
    .line 343
    shl-long v13, v13, v21

    .line 344
    .line 345
    or-long/2addr v11, v13

    .line 346
    const/4 v13, 0x3

    .line 347
    aget-byte v13, v15, v13

    .line 348
    .line 349
    int-to-long v13, v13

    .line 350
    and-long v13, v13, v27

    .line 351
    .line 352
    const/16 v19, 0x1

    .line 353
    .line 354
    shl-long v13, v13, v19

    .line 355
    .line 356
    or-long/2addr v11, v13

    .line 357
    const/4 v13, 0x4

    .line 358
    aget-byte v13, v15, v13

    .line 359
    .line 360
    int-to-long v13, v13

    .line 361
    and-long v13, v13, v27

    .line 362
    .line 363
    const/4 v15, 0x7

    .line 364
    shr-long/2addr v13, v15

    .line 365
    or-long/2addr v11, v13

    .line 366
    goto :goto_b

    .line 367
    :cond_f
    move/from16 v29, v8

    .line 368
    .line 369
    move-wide/from16 v36, v11

    .line 370
    .line 371
    const/4 v8, 0x2

    .line 372
    move-wide/from16 v11, v16

    .line 373
    .line 374
    :goto_b
    cmp-long v13, v11, v16

    .line 375
    .line 376
    if-eqz v13, :cond_13

    .line 377
    .line 378
    iget-object v13, v4, Ln2/x;->a:Lb3/l;

    .line 379
    .line 380
    invoke-virtual {v13, v11, v12}, Lb3/l;->b(J)J

    .line 381
    .line 382
    .line 383
    move-result-wide v26

    .line 384
    const-wide/16 v11, 0x0

    .line 385
    .line 386
    cmp-long v13, v26, v11

    .line 387
    .line 388
    if-lez v13, :cond_11

    .line 389
    .line 390
    cmp-long v2, v32, v16

    .line 391
    .line 392
    if-nez v2, :cond_10

    .line 393
    .line 394
    new-instance v2, Lk2/c;

    .line 395
    .line 396
    const/16 v25, -0x1

    .line 397
    .line 398
    move-object/from16 v24, v2

    .line 399
    .line 400
    move-wide/from16 v28, v6

    .line 401
    .line 402
    invoke-direct/range {v24 .. v29}, Lk2/c;-><init>(IJJ)V

    .line 403
    .line 404
    .line 405
    goto :goto_e

    .line 406
    :cond_10
    add-long v6, v6, v24

    .line 407
    .line 408
    goto :goto_c

    .line 409
    :cond_11
    const-wide/32 v11, 0x186a0

    .line 410
    .line 411
    .line 412
    add-long v11, v26, v11

    .line 413
    .line 414
    const-wide/16 v13, 0x0

    .line 415
    .line 416
    cmp-long v11, v11, v13

    .line 417
    .line 418
    if-lez v11, :cond_12

    .line 419
    .line 420
    int-to-long v9, v10

    .line 421
    add-long/2addr v6, v9

    .line 422
    :goto_c
    move-wide v13, v6

    .line 423
    new-instance v2, Lk2/c;

    .line 424
    .line 425
    const/4 v10, 0x0

    .line 426
    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    move-object v9, v2

    .line 432
    invoke-direct/range {v9 .. v14}, Lk2/c;-><init>(IJJ)V

    .line 433
    .line 434
    .line 435
    goto :goto_e

    .line 436
    :cond_12
    int-to-long v10, v10

    .line 437
    move-wide/from16 v24, v10

    .line 438
    .line 439
    move-wide/from16 v32, v26

    .line 440
    .line 441
    :cond_13
    invoke-virtual {v9, v2}, Lb3/h;->q(I)V

    .line 442
    .line 443
    .line 444
    int-to-long v13, v2

    .line 445
    move/from16 v8, v29

    .line 446
    .line 447
    move-wide/from16 v11, v36

    .line 448
    .line 449
    const/16 v2, 0xbc

    .line 450
    .line 451
    const/4 v10, 0x0

    .line 452
    goto/16 :goto_6

    .line 453
    .line 454
    :cond_14
    :goto_d
    move-wide/from16 v36, v11

    .line 455
    .line 456
    const/4 v8, 0x2

    .line 457
    cmp-long v2, v32, v16

    .line 458
    .line 459
    if-eqz v2, :cond_15

    .line 460
    .line 461
    add-long v34, v6, v13

    .line 462
    .line 463
    new-instance v2, Lk2/c;

    .line 464
    .line 465
    const/16 v31, -0x2

    .line 466
    .line 467
    move-object/from16 v30, v2

    .line 468
    .line 469
    invoke-direct/range {v30 .. v35}, Lk2/c;-><init>(IJJ)V

    .line 470
    .line 471
    .line 472
    goto :goto_e

    .line 473
    :cond_15
    sget-object v2, Lk2/c;->d:Lk2/c;

    .line 474
    .line 475
    :goto_e
    const/4 v6, -0x3

    .line 476
    iget v7, v2, Lk2/c;->a:I

    .line 477
    .line 478
    if-eq v7, v6, :cond_19

    .line 479
    .line 480
    iget-wide v9, v2, Lk2/c;->b:J

    .line 481
    .line 482
    iget-wide v11, v2, Lk2/c;->c:J

    .line 483
    .line 484
    const/4 v2, -0x2

    .line 485
    if-eq v7, v2, :cond_18

    .line 486
    .line 487
    const/4 v2, -0x1

    .line 488
    if-eq v7, v2, :cond_17

    .line 489
    .line 490
    if-nez v7, :cond_16

    .line 491
    .line 492
    invoke-virtual {v3}, Ln2/y;->a()V

    .line 493
    .line 494
    .line 495
    iget-wide v2, v1, Lk2/f;->d:J

    .line 496
    .line 497
    sub-long v2, v11, v2

    .line 498
    .line 499
    const-wide/16 v4, 0x0

    .line 500
    .line 501
    cmp-long v4, v2, v4

    .line 502
    .line 503
    if-ltz v4, :cond_5

    .line 504
    .line 505
    cmp-long v4, v2, v22

    .line 506
    .line 507
    if-gtz v4, :cond_5

    .line 508
    .line 509
    long-to-int v2, v2

    .line 510
    invoke-virtual {v1, v2}, Lk2/f;->f(I)V

    .line 511
    .line 512
    .line 513
    goto/16 :goto_5

    .line 514
    .line 515
    :cond_16
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 516
    .line 517
    const-string v2, "Invalid case"

    .line 518
    .line 519
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 520
    .line 521
    .line 522
    throw v1

    .line 523
    :cond_17
    iput-wide v9, v5, Lk2/b;->b:J

    .line 524
    .line 525
    iput-wide v11, v5, Lk2/b;->d:J

    .line 526
    .line 527
    const-wide/16 v38, 0x0

    .line 528
    .line 529
    iget-wide v6, v5, Lk2/b;->a:J

    .line 530
    .line 531
    iget-wide v13, v5, Lk2/b;->c:J

    .line 532
    .line 533
    const-wide/16 v48, 0x0

    .line 534
    .line 535
    move-wide/from16 v40, v6

    .line 536
    .line 537
    move-wide/from16 v42, v9

    .line 538
    .line 539
    move-wide/from16 v44, v13

    .line 540
    .line 541
    move-wide/from16 v46, v11

    .line 542
    .line 543
    invoke-static/range {v38 .. v49}, Lk2/b;->a(JJJJJJ)J

    .line 544
    .line 545
    .line 546
    move-result-wide v6

    .line 547
    iput-wide v6, v5, Lk2/b;->e:J

    .line 548
    .line 549
    goto :goto_f

    .line 550
    :cond_18
    iput-wide v9, v5, Lk2/b;->a:J

    .line 551
    .line 552
    iput-wide v11, v5, Lk2/b;->c:J

    .line 553
    .line 554
    const-wide/16 v38, 0x0

    .line 555
    .line 556
    iget-wide v6, v5, Lk2/b;->b:J

    .line 557
    .line 558
    iget-wide v13, v5, Lk2/b;->d:J

    .line 559
    .line 560
    const-wide/16 v48, 0x0

    .line 561
    .line 562
    move-wide/from16 v40, v9

    .line 563
    .line 564
    move-wide/from16 v42, v6

    .line 565
    .line 566
    move-wide/from16 v44, v11

    .line 567
    .line 568
    move-wide/from16 v46, v13

    .line 569
    .line 570
    invoke-static/range {v38 .. v49}, Lk2/b;->a(JJJJJJ)J

    .line 571
    .line 572
    .line 573
    move-result-wide v6

    .line 574
    iput-wide v6, v5, Lk2/b;->e:J

    .line 575
    .line 576
    :goto_f
    const/16 v2, 0xbc

    .line 577
    .line 578
    const/4 v10, 0x0

    .line 579
    goto/16 :goto_3

    .line 580
    .line 581
    :cond_19
    invoke-virtual {v3}, Ln2/y;->a()V

    .line 582
    .line 583
    .line 584
    move-wide/from16 v2, v36

    .line 585
    .line 586
    invoke-static {v1, v2, v3}, Ln2/y;->b(Lk2/f;J)I

    .line 587
    .line 588
    .line 589
    move-result v1

    .line 590
    :goto_10
    return v1

    .line 591
    :cond_1a
    const/4 v8, 0x2

    .line 592
    iget-object v2, v0, Ln2/c0;->b:Lb3/h;

    .line 593
    .line 594
    iget-object v3, v2, Lb3/h;->c:Ljava/io/Serializable;

    .line 595
    .line 596
    check-cast v3, [B

    .line 597
    .line 598
    iget v4, v2, Lb3/h;->a:I

    .line 599
    .line 600
    rsub-int v5, v4, 0x24b8

    .line 601
    .line 602
    const/16 v6, 0xbc

    .line 603
    .line 604
    if-ge v5, v6, :cond_1c

    .line 605
    .line 606
    iget v5, v2, Lb3/h;->b:I

    .line 607
    .line 608
    sub-int/2addr v5, v4

    .line 609
    if-lez v5, :cond_1b

    .line 610
    .line 611
    const/4 v6, 0x0

    .line 612
    invoke-static {v3, v4, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 613
    .line 614
    .line 615
    :cond_1b
    invoke-virtual {v2, v3, v5}, Lb3/h;->o([BI)V

    .line 616
    .line 617
    .line 618
    :cond_1c
    :goto_11
    iget v4, v2, Lb3/h;->b:I

    .line 619
    .line 620
    iget v5, v2, Lb3/h;->a:I

    .line 621
    .line 622
    sub-int v5, v4, v5

    .line 623
    .line 624
    const/16 v6, 0xbc

    .line 625
    .line 626
    if-ge v5, v6, :cond_1e

    .line 627
    .line 628
    rsub-int v5, v4, 0x24b8

    .line 629
    .line 630
    invoke-virtual {v1, v3, v4, v5}, Lk2/f;->c([BII)I

    .line 631
    .line 632
    .line 633
    move-result v5

    .line 634
    const/4 v7, -0x1

    .line 635
    if-ne v5, v7, :cond_1d

    .line 636
    .line 637
    const/4 v5, 0x0

    .line 638
    goto :goto_12

    .line 639
    :cond_1d
    add-int/2addr v4, v5

    .line 640
    invoke-virtual {v2, v4}, Lb3/h;->p(I)V

    .line 641
    .line 642
    .line 643
    goto :goto_11

    .line 644
    :cond_1e
    const/4 v7, -0x1

    .line 645
    const/4 v5, 0x1

    .line 646
    :goto_12
    if-nez v5, :cond_1f

    .line 647
    .line 648
    return v7

    .line 649
    :cond_1f
    iget v1, v2, Lb3/h;->a:I

    .line 650
    .line 651
    iget v3, v2, Lb3/h;->b:I

    .line 652
    .line 653
    iget-object v4, v2, Lb3/h;->c:Ljava/io/Serializable;

    .line 654
    .line 655
    check-cast v4, [B

    .line 656
    .line 657
    move v5, v1

    .line 658
    :goto_13
    if-ge v5, v3, :cond_20

    .line 659
    .line 660
    aget-byte v6, v4, v5

    .line 661
    .line 662
    const/16 v7, 0x47

    .line 663
    .line 664
    if-eq v6, v7, :cond_20

    .line 665
    .line 666
    add-int/lit8 v5, v5, 0x1

    .line 667
    .line 668
    goto :goto_13

    .line 669
    :cond_20
    invoke-virtual {v2, v5}, Lb3/h;->q(I)V

    .line 670
    .line 671
    .line 672
    add-int/lit16 v4, v5, 0xbc

    .line 673
    .line 674
    if-le v4, v3, :cond_22

    .line 675
    .line 676
    iget v3, v0, Ln2/c0;->m:I

    .line 677
    .line 678
    sub-int/2addr v5, v1

    .line 679
    add-int/2addr v5, v3

    .line 680
    iput v5, v0, Ln2/c0;->m:I

    .line 681
    .line 682
    const/16 v1, 0x178

    .line 683
    .line 684
    if-gt v5, v1, :cond_21

    .line 685
    .line 686
    const/4 v1, 0x0

    .line 687
    goto :goto_14

    .line 688
    :cond_21
    new-instance v1, Lf2/z;

    .line 689
    .line 690
    const-string v2, "Cannot find sync byte. Most likely not a Transport Stream."

    .line 691
    .line 692
    invoke-direct {v1, v2}, Lf2/z;-><init>(Ljava/lang/String;)V

    .line 693
    .line 694
    .line 695
    throw v1

    .line 696
    :cond_22
    const/4 v1, 0x0

    .line 697
    iput v1, v0, Ln2/c0;->m:I

    .line 698
    .line 699
    :goto_14
    iget v3, v2, Lb3/h;->b:I

    .line 700
    .line 701
    if-le v4, v3, :cond_23

    .line 702
    .line 703
    return v1

    .line 704
    :cond_23
    invoke-virtual {v2}, Lb3/h;->b()I

    .line 705
    .line 706
    .line 707
    move-result v5

    .line 708
    const/high16 v6, 0x800000

    .line 709
    .line 710
    and-int/2addr v6, v5

    .line 711
    if-eqz v6, :cond_24

    .line 712
    .line 713
    invoke-virtual {v2, v4}, Lb3/h;->q(I)V

    .line 714
    .line 715
    .line 716
    return v1

    .line 717
    :cond_24
    const/high16 v6, 0x400000

    .line 718
    .line 719
    and-int/2addr v6, v5

    .line 720
    if-eqz v6, :cond_25

    .line 721
    .line 722
    const/4 v6, 0x1

    .line 723
    goto :goto_15

    .line 724
    :cond_25
    move v6, v1

    .line 725
    :goto_15
    or-int/2addr v6, v1

    .line 726
    const v1, 0x1fff00

    .line 727
    .line 728
    .line 729
    and-int/2addr v1, v5

    .line 730
    shr-int/lit8 v1, v1, 0x8

    .line 731
    .line 732
    and-int/lit8 v7, v5, 0x20

    .line 733
    .line 734
    if-eqz v7, :cond_26

    .line 735
    .line 736
    const/4 v7, 0x1

    .line 737
    goto :goto_16

    .line 738
    :cond_26
    const/4 v7, 0x0

    .line 739
    :goto_16
    const/16 v9, 0x10

    .line 740
    .line 741
    and-int/2addr v5, v9

    .line 742
    if-eqz v5, :cond_27

    .line 743
    .line 744
    const/4 v5, 0x1

    .line 745
    goto :goto_17

    .line 746
    :cond_27
    const/4 v5, 0x0

    .line 747
    :goto_17
    if-eqz v5, :cond_28

    .line 748
    .line 749
    iget-object v5, v0, Ln2/c0;->d:Landroid/util/SparseArray;

    .line 750
    .line 751
    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 752
    .line 753
    .line 754
    move-result-object v1

    .line 755
    check-cast v1, Ln2/f0;

    .line 756
    .line 757
    goto :goto_18

    .line 758
    :cond_28
    const/4 v1, 0x0

    .line 759
    :goto_18
    if-nez v1, :cond_29

    .line 760
    .line 761
    goto :goto_1a

    .line 762
    :cond_29
    if-eqz v7, :cond_2b

    .line 763
    .line 764
    invoke-virtual {v2}, Lb3/h;->h()I

    .line 765
    .line 766
    .line 767
    move-result v5

    .line 768
    invoke-virtual {v2}, Lb3/h;->h()I

    .line 769
    .line 770
    .line 771
    move-result v7

    .line 772
    and-int/lit8 v7, v7, 0x40

    .line 773
    .line 774
    if-eqz v7, :cond_2a

    .line 775
    .line 776
    move v10, v8

    .line 777
    goto :goto_19

    .line 778
    :cond_2a
    const/4 v10, 0x0

    .line 779
    :goto_19
    or-int/2addr v6, v10

    .line 780
    const/4 v7, 0x1

    .line 781
    sub-int/2addr v5, v7

    .line 782
    invoke-virtual {v2, v5}, Lb3/h;->r(I)V

    .line 783
    .line 784
    .line 785
    :cond_2b
    invoke-virtual {v2, v4}, Lb3/h;->p(I)V

    .line 786
    .line 787
    .line 788
    invoke-interface {v1, v6, v2}, Ln2/f0;->b(ILb3/h;)V

    .line 789
    .line 790
    .line 791
    invoke-virtual {v2, v3}, Lb3/h;->p(I)V

    .line 792
    .line 793
    .line 794
    :goto_1a
    invoke-virtual {v2, v4}, Lb3/h;->q(I)V

    .line 795
    .line 796
    .line 797
    const/4 v1, 0x0

    .line 798
    return v1
.end method

.method public final b(Lw2/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln2/c0;->i:Lk2/i;

    return-void
.end method

.method public final c(Lk2/f;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Ln2/c0;->b:Lb3/h;

    .line 2
    .line 3
    iget-object v0, v0, Lb3/h;->c:Ljava/io/Serializable;

    .line 4
    .line 5
    check-cast v0, [B

    .line 6
    .line 7
    const/16 v1, 0x3ac

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {p1, v0, v2, v1, v2}, Lk2/f;->b([BIIZ)Z

    .line 11
    .line 12
    .line 13
    move v1, v2

    .line 14
    :goto_0
    const/16 v3, 0xbc

    .line 15
    .line 16
    if-ge v1, v3, :cond_3

    .line 17
    .line 18
    move v3, v2

    .line 19
    :goto_1
    const/4 v4, 0x5

    .line 20
    const/4 v5, 0x1

    .line 21
    if-ge v3, v4, :cond_1

    .line 22
    .line 23
    mul-int/lit16 v4, v3, 0xbc

    .line 24
    .line 25
    add-int/2addr v4, v1

    .line 26
    aget-byte v4, v0, v4

    .line 27
    .line 28
    const/16 v6, 0x47

    .line 29
    .line 30
    if-eq v4, v6, :cond_0

    .line 31
    .line 32
    move v3, v2

    .line 33
    goto :goto_2

    .line 34
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move v3, v5

    .line 38
    :goto_2
    if-eqz v3, :cond_2

    .line 39
    .line 40
    invoke-virtual {p1, v1}, Lk2/f;->f(I)V

    .line 41
    .line 42
    .line 43
    return v5

    .line 44
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    return v2
.end method
