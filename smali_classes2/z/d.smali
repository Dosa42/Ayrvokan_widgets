.class public final Lz/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/graphics/Bitmap;

.field public final b:Ljava/util/ArrayList;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz/d;->b:Ljava/util/ArrayList;

    const/16 v1, 0x10

    iput v1, p0, Lz/d;->c:I

    const/16 v1, 0x3100

    iput v1, p0, Lz/d;->d:I

    const/4 v1, -0x1

    iput v1, p0, Lz/d;->e:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lz/d;->f:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lz/f;->f:Lz/c;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Lz/d;->a:Landroid/graphics/Bitmap;

    sget-object p1, Lz/g;->d:Lz/g;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p1, Lz/g;->e:Lz/g;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p1, Lz/g;->f:Lz/g;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p1, Lz/g;->g:Lz/g;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p1, Lz/g;->h:Lz/g;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p1, Lz/g;->i:Lz/g;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bitmap is not valid"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()Lz/f;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lz/d;->a:Landroid/graphics/Bitmap;

    .line 4
    .line 5
    if-eqz v1, :cond_14

    .line 6
    .line 7
    iget v2, v0, Lz/d;->d:I

    .line 8
    .line 9
    if-lez v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    mul-int/2addr v4, v3

    .line 20
    if-le v4, v2, :cond_1

    .line 21
    .line 22
    int-to-double v2, v2

    .line 23
    int-to-double v4, v4

    .line 24
    div-double/2addr v2, v4

    .line 25
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 26
    .line 27
    .line 28
    move-result-wide v2

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget v2, v0, Lz/d;->e:I

    .line 31
    .line 32
    if-lez v2, :cond_1

    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-le v3, v2, :cond_1

    .line 47
    .line 48
    int-to-double v4, v2

    .line 49
    int-to-double v2, v3

    .line 50
    div-double v2, v4, v2

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 54
    .line 55
    :goto_0
    const-wide/16 v4, 0x0

    .line 56
    .line 57
    cmpg-double v4, v2, v4

    .line 58
    .line 59
    const/4 v5, 0x0

    .line 60
    if-gtz v4, :cond_2

    .line 61
    .line 62
    move-object v2, v1

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    int-to-double v6, v4

    .line 69
    mul-double/2addr v6, v2

    .line 70
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    .line 71
    .line 72
    .line 73
    move-result-wide v6

    .line 74
    double-to-int v4, v6

    .line 75
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    int-to-double v6, v6

    .line 80
    mul-double/2addr v6, v2

    .line 81
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    .line 82
    .line 83
    .line 84
    move-result-wide v2

    .line 85
    double-to-int v2, v2

    .line 86
    invoke-static {v1, v4, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    :goto_1
    new-instance v3, Lz/b;

    .line 91
    .line 92
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 93
    .line 94
    .line 95
    move-result v12

    .line 96
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 97
    .line 98
    .line 99
    move-result v13

    .line 100
    mul-int v4, v12, v13

    .line 101
    .line 102
    new-array v4, v4, [I

    .line 103
    .line 104
    const/4 v8, 0x0

    .line 105
    const/4 v10, 0x0

    .line 106
    const/4 v11, 0x0

    .line 107
    move-object v6, v2

    .line 108
    move-object v7, v4

    .line 109
    move v9, v12

    .line 110
    invoke-virtual/range {v6 .. v13}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 111
    .line 112
    .line 113
    iget-object v6, v0, Lz/d;->f:Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 116
    .line 117
    .line 118
    move-result v7

    .line 119
    if-eqz v7, :cond_3

    .line 120
    .line 121
    const/4 v6, 0x0

    .line 122
    goto :goto_2

    .line 123
    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 124
    .line 125
    .line 126
    move-result v7

    .line 127
    new-array v7, v7, [Lz/c;

    .line 128
    .line 129
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    check-cast v6, [Lz/c;

    .line 134
    .line 135
    :goto_2
    iget v7, v0, Lz/d;->c:I

    .line 136
    .line 137
    invoke-direct {v3, v4, v7, v6}, Lz/b;-><init>([II[Lz/c;)V

    .line 138
    .line 139
    .line 140
    if-eq v2, v1, :cond_4

    .line 141
    .line 142
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 143
    .line 144
    .line 145
    :cond_4
    iget-object v1, v3, Lz/b;->c:Ljava/util/ArrayList;

    .line 146
    .line 147
    new-instance v2, Lz/f;

    .line 148
    .line 149
    iget-object v3, v0, Lz/d;->b:Ljava/util/ArrayList;

    .line 150
    .line 151
    invoke-direct {v2, v1, v3}, Lz/f;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    move v4, v5

    .line 159
    :goto_3
    iget-object v6, v2, Lz/f;->d:Landroid/util/SparseBooleanArray;

    .line 160
    .line 161
    if-ge v4, v1, :cond_13

    .line 162
    .line 163
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v7

    .line 167
    check-cast v7, Lz/g;

    .line 168
    .line 169
    iget-object v9, v7, Lz/g;->c:[F

    .line 170
    .line 171
    array-length v10, v9

    .line 172
    const/4 v11, 0x0

    .line 173
    move v12, v5

    .line 174
    move v13, v11

    .line 175
    :goto_4
    if-ge v12, v10, :cond_6

    .line 176
    .line 177
    aget v14, v9, v12

    .line 178
    .line 179
    cmpl-float v15, v14, v11

    .line 180
    .line 181
    if-lez v15, :cond_5

    .line 182
    .line 183
    add-float/2addr v13, v14

    .line 184
    :cond_5
    add-int/lit8 v12, v12, 0x1

    .line 185
    .line 186
    goto :goto_4

    .line 187
    :cond_6
    cmpl-float v10, v13, v11

    .line 188
    .line 189
    if-eqz v10, :cond_8

    .line 190
    .line 191
    array-length v10, v9

    .line 192
    move v12, v5

    .line 193
    :goto_5
    if-ge v12, v10, :cond_8

    .line 194
    .line 195
    aget v14, v9, v12

    .line 196
    .line 197
    cmpl-float v15, v14, v11

    .line 198
    .line 199
    if-lez v15, :cond_7

    .line 200
    .line 201
    div-float/2addr v14, v13

    .line 202
    aput v14, v9, v12

    .line 203
    .line 204
    :cond_7
    add-int/lit8 v12, v12, 0x1

    .line 205
    .line 206
    goto :goto_5

    .line 207
    :cond_8
    iget-object v9, v2, Lz/f;->a:Ljava/util/List;

    .line 208
    .line 209
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 210
    .line 211
    .line 212
    move-result v10

    .line 213
    move v12, v5

    .line 214
    move v14, v11

    .line 215
    const/4 v13, 0x0

    .line 216
    :goto_6
    const/4 v15, 0x1

    .line 217
    if-ge v12, v10, :cond_11

    .line 218
    .line 219
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v16

    .line 223
    move-object/from16 v8, v16

    .line 224
    .line 225
    check-cast v8, Lz/e;

    .line 226
    .line 227
    invoke-virtual {v8}, Lz/e;->b()[F

    .line 228
    .line 229
    .line 230
    move-result-object v16

    .line 231
    aget v17, v16, v15

    .line 232
    .line 233
    iget-object v15, v7, Lz/g;->a:[F

    .line 234
    .line 235
    aget v19, v15, v5

    .line 236
    .line 237
    cmpl-float v19, v17, v19

    .line 238
    .line 239
    iget-object v11, v7, Lz/g;->b:[F

    .line 240
    .line 241
    const/16 v21, 0x2

    .line 242
    .line 243
    if-ltz v19, :cond_9

    .line 244
    .line 245
    aget v19, v15, v21

    .line 246
    .line 247
    cmpg-float v17, v17, v19

    .line 248
    .line 249
    if-gtz v17, :cond_9

    .line 250
    .line 251
    aget v16, v16, v21

    .line 252
    .line 253
    aget v17, v11, v5

    .line 254
    .line 255
    cmpl-float v17, v16, v17

    .line 256
    .line 257
    if-ltz v17, :cond_9

    .line 258
    .line 259
    aget v17, v11, v21

    .line 260
    .line 261
    cmpg-float v16, v16, v17

    .line 262
    .line 263
    if-gtz v16, :cond_9

    .line 264
    .line 265
    iget v5, v8, Lz/e;->d:I

    .line 266
    .line 267
    invoke-virtual {v6, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 268
    .line 269
    .line 270
    move-result v5

    .line 271
    if-nez v5, :cond_9

    .line 272
    .line 273
    const/4 v5, 0x1

    .line 274
    goto :goto_7

    .line 275
    :cond_9
    const/4 v5, 0x0

    .line 276
    :goto_7
    if-eqz v5, :cond_f

    .line 277
    .line 278
    invoke-virtual {v8}, Lz/e;->b()[F

    .line 279
    .line 280
    .line 281
    move-result-object v5

    .line 282
    iget-object v0, v2, Lz/f;->e:Lz/e;

    .line 283
    .line 284
    if-eqz v0, :cond_a

    .line 285
    .line 286
    iget v0, v0, Lz/e;->e:I

    .line 287
    .line 288
    move/from16 v17, v1

    .line 289
    .line 290
    goto :goto_8

    .line 291
    :cond_a
    move/from16 v17, v1

    .line 292
    .line 293
    const/4 v0, 0x1

    .line 294
    :goto_8
    iget-object v1, v7, Lz/g;->c:[F

    .line 295
    .line 296
    const/16 v16, 0x0

    .line 297
    .line 298
    aget v19, v1, v16

    .line 299
    .line 300
    const/16 v20, 0x0

    .line 301
    .line 302
    cmpl-float v22, v19, v20

    .line 303
    .line 304
    const/high16 v23, 0x3f800000    # 1.0f

    .line 305
    .line 306
    if-lez v22, :cond_b

    .line 307
    .line 308
    const/16 v18, 0x1

    .line 309
    .line 310
    aget v22, v5, v18

    .line 311
    .line 312
    aget v15, v15, v18

    .line 313
    .line 314
    sub-float v22, v22, v15

    .line 315
    .line 316
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    .line 317
    .line 318
    .line 319
    move-result v15

    .line 320
    sub-float v15, v23, v15

    .line 321
    .line 322
    mul-float v15, v15, v19

    .line 323
    .line 324
    goto :goto_9

    .line 325
    :cond_b
    const/16 v18, 0x1

    .line 326
    .line 327
    const/4 v15, 0x0

    .line 328
    :goto_9
    aget v19, v1, v18

    .line 329
    .line 330
    const/16 v20, 0x0

    .line 331
    .line 332
    cmpl-float v22, v19, v20

    .line 333
    .line 334
    if-lez v22, :cond_c

    .line 335
    .line 336
    aget v5, v5, v21

    .line 337
    .line 338
    aget v11, v11, v18

    .line 339
    .line 340
    sub-float/2addr v5, v11

    .line 341
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 342
    .line 343
    .line 344
    move-result v5

    .line 345
    sub-float v23, v23, v5

    .line 346
    .line 347
    mul-float v5, v23, v19

    .line 348
    .line 349
    goto :goto_a

    .line 350
    :cond_c
    move/from16 v5, v20

    .line 351
    .line 352
    :goto_a
    aget v1, v1, v21

    .line 353
    .line 354
    cmpl-float v11, v1, v20

    .line 355
    .line 356
    if-lez v11, :cond_d

    .line 357
    .line 358
    iget v11, v8, Lz/e;->e:I

    .line 359
    .line 360
    int-to-float v11, v11

    .line 361
    int-to-float v0, v0

    .line 362
    div-float/2addr v11, v0

    .line 363
    mul-float v0, v11, v1

    .line 364
    .line 365
    goto :goto_b

    .line 366
    :cond_d
    move/from16 v0, v20

    .line 367
    .line 368
    :goto_b
    add-float/2addr v15, v5

    .line 369
    add-float/2addr v15, v0

    .line 370
    if-eqz v13, :cond_e

    .line 371
    .line 372
    cmpl-float v0, v15, v14

    .line 373
    .line 374
    if-lez v0, :cond_10

    .line 375
    .line 376
    :cond_e
    move-object v13, v8

    .line 377
    move v14, v15

    .line 378
    goto :goto_c

    .line 379
    :cond_f
    move/from16 v17, v1

    .line 380
    .line 381
    const/16 v16, 0x0

    .line 382
    .line 383
    const/16 v20, 0x0

    .line 384
    .line 385
    :cond_10
    :goto_c
    add-int/lit8 v12, v12, 0x1

    .line 386
    .line 387
    move-object/from16 v0, p0

    .line 388
    .line 389
    move/from16 v5, v16

    .line 390
    .line 391
    move/from16 v1, v17

    .line 392
    .line 393
    move/from16 v11, v20

    .line 394
    .line 395
    goto/16 :goto_6

    .line 396
    .line 397
    :cond_11
    move/from16 v17, v1

    .line 398
    .line 399
    move/from16 v16, v5

    .line 400
    .line 401
    if-eqz v13, :cond_12

    .line 402
    .line 403
    iget v0, v13, Lz/e;->d:I

    .line 404
    .line 405
    const/4 v1, 0x1

    .line 406
    invoke-virtual {v6, v0, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 407
    .line 408
    .line 409
    :cond_12
    iget-object v0, v2, Lz/f;->c:Lf/b;

    .line 410
    .line 411
    invoke-virtual {v0, v7, v13}, Lf/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    add-int/lit8 v4, v4, 0x1

    .line 415
    .line 416
    move-object/from16 v0, p0

    .line 417
    .line 418
    move/from16 v5, v16

    .line 419
    .line 420
    move/from16 v1, v17

    .line 421
    .line 422
    goto/16 :goto_3

    .line 423
    .line 424
    :cond_13
    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->clear()V

    .line 425
    .line 426
    .line 427
    return-object v2

    .line 428
    :cond_14
    new-instance v0, Ljava/lang/AssertionError;

    .line 429
    .line 430
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .line 431
    .line 432
    .line 433
    throw v0
.end method
