.class public final Ln2/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln2/u;


# instance fields
.field public final f:Lb3/g;

.field public final g:Landroid/util/SparseArray;

.field public final h:Landroid/util/SparseIntArray;

.field public final synthetic i:Ln2/c0;


# direct methods
.method public constructor <init>(Ln2/c0;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln2/b0;->i:Ln2/c0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lb3/g;

    const/4 p2, 0x5

    new-array p2, p2, [B

    invoke-direct {p1, p2}, Lb3/g;-><init>([B)V

    iput-object p1, p0, Ln2/b0;->f:Lb3/g;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Ln2/b0;->g:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Ln2/b0;->h:Landroid/util/SparseIntArray;

    return-void
.end method


# virtual methods
.method public final a(Lb3/l;Lk2/i;Ln2/e0;)V
    .locals 0

    .line 1
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
    invoke-virtual/range {p1 .. p1}, Lb3/h;->h()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x2

    .line 10
    if-eq v2, v3, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v2, v0, Ln2/b0;->i:Ln2/c0;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iget-object v4, v2, Ln2/c0;->a:Ljava/util/List;

    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    check-cast v4, Lb3/l;

    .line 26
    .line 27
    invoke-virtual {v1, v3}, Lb3/h;->r(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual/range {p1 .. p1}, Lb3/h;->m()I

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    const/4 v7, 0x3

    .line 35
    invoke-virtual {v1, v7}, Lb3/h;->r(I)V

    .line 36
    .line 37
    .line 38
    iget-object v8, v0, Ln2/b0;->f:Lb3/g;

    .line 39
    .line 40
    iget-object v9, v8, Lb3/g;->b:[B

    .line 41
    .line 42
    invoke-virtual {v1, v9, v5, v3}, Lb3/h;->a([BII)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v8, v5}, Lb3/g;->i(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v8, v7}, Lb3/g;->l(I)V

    .line 49
    .line 50
    .line 51
    const/16 v9, 0xd

    .line 52
    .line 53
    invoke-virtual {v8, v9}, Lb3/g;->e(I)I

    .line 54
    .line 55
    .line 56
    move-result v10

    .line 57
    iput v10, v2, Ln2/c0;->n:I

    .line 58
    .line 59
    iget-object v10, v8, Lb3/g;->b:[B

    .line 60
    .line 61
    invoke-virtual {v1, v10, v5, v3}, Lb3/h;->a([BII)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v8, v5}, Lb3/g;->i(I)V

    .line 65
    .line 66
    .line 67
    const/4 v3, 0x4

    .line 68
    invoke-virtual {v8, v3}, Lb3/g;->l(I)V

    .line 69
    .line 70
    .line 71
    const/16 v10, 0xc

    .line 72
    .line 73
    invoke-virtual {v8, v10}, Lb3/g;->e(I)I

    .line 74
    .line 75
    .line 76
    move-result v11

    .line 77
    invoke-virtual {v1, v11}, Lb3/h;->r(I)V

    .line 78
    .line 79
    .line 80
    iget-object v11, v2, Ln2/c0;->l:Ln2/f0;

    .line 81
    .line 82
    const/16 v12, 0x15

    .line 83
    .line 84
    const/4 v13, 0x0

    .line 85
    const/16 v14, 0x2000

    .line 86
    .line 87
    iget-object v15, v2, Ln2/c0;->c:Ln2/g;

    .line 88
    .line 89
    if-nez v11, :cond_1

    .line 90
    .line 91
    new-instance v11, Ln2/y;

    .line 92
    .line 93
    sget-object v10, Lb3/n;->e:[B

    .line 94
    .line 95
    invoke-direct {v11, v12, v13, v13, v10}, Ln2/y;-><init>(ILjava/lang/String;Ljava/util/ArrayList;[B)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v15, v12, v11}, Ln2/g;->a(ILn2/y;)Ln2/f0;

    .line 99
    .line 100
    .line 101
    move-result-object v10

    .line 102
    iput-object v10, v2, Ln2/c0;->l:Ln2/f0;

    .line 103
    .line 104
    iget-object v11, v2, Ln2/c0;->i:Lk2/i;

    .line 105
    .line 106
    new-instance v13, Ln2/e0;

    .line 107
    .line 108
    invoke-direct {v13, v6, v12, v14}, Ln2/e0;-><init>(III)V

    .line 109
    .line 110
    .line 111
    invoke-interface {v10, v4, v11, v13}, Ln2/f0;->a(Lb3/l;Lk2/i;Ln2/e0;)V

    .line 112
    .line 113
    .line 114
    :cond_1
    iget-object v10, v0, Ln2/b0;->g:Landroid/util/SparseArray;

    .line 115
    .line 116
    invoke-virtual {v10}, Landroid/util/SparseArray;->clear()V

    .line 117
    .line 118
    .line 119
    iget-object v11, v0, Ln2/b0;->h:Landroid/util/SparseIntArray;

    .line 120
    .line 121
    invoke-virtual {v11}, Landroid/util/SparseIntArray;->clear()V

    .line 122
    .line 123
    .line 124
    iget v13, v1, Lb3/h;->b:I

    .line 125
    .line 126
    iget v14, v1, Lb3/h;->a:I

    .line 127
    .line 128
    sub-int/2addr v13, v14

    .line 129
    :goto_0
    iget-object v14, v2, Ln2/c0;->e:Landroid/util/SparseBooleanArray;

    .line 130
    .line 131
    if-lez v13, :cond_12

    .line 132
    .line 133
    iget-object v12, v8, Lb3/g;->b:[B

    .line 134
    .line 135
    const/4 v3, 0x5

    .line 136
    invoke-virtual {v1, v12, v5, v3}, Lb3/h;->a([BII)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v8, v5}, Lb3/g;->i(I)V

    .line 140
    .line 141
    .line 142
    const/16 v12, 0x8

    .line 143
    .line 144
    invoke-virtual {v8, v12}, Lb3/g;->e(I)I

    .line 145
    .line 146
    .line 147
    move-result v12

    .line 148
    invoke-virtual {v8, v7}, Lb3/g;->l(I)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v8, v9}, Lb3/g;->e(I)I

    .line 152
    .line 153
    .line 154
    move-result v5

    .line 155
    const/4 v9, 0x4

    .line 156
    invoke-virtual {v8, v9}, Lb3/g;->l(I)V

    .line 157
    .line 158
    .line 159
    const/16 v9, 0xc

    .line 160
    .line 161
    invoke-virtual {v8, v9}, Lb3/g;->e(I)I

    .line 162
    .line 163
    .line 164
    move-result v16

    .line 165
    iget v9, v1, Lb3/h;->a:I

    .line 166
    .line 167
    add-int v7, v16, v9

    .line 168
    .line 169
    const/16 v19, -0x1

    .line 170
    .line 171
    move/from16 v20, v19

    .line 172
    .line 173
    const/16 v21, 0x0

    .line 174
    .line 175
    const/16 v22, 0x0

    .line 176
    .line 177
    :goto_1
    iget v3, v1, Lb3/h;->a:I

    .line 178
    .line 179
    if-ge v3, v7, :cond_d

    .line 180
    .line 181
    invoke-virtual/range {p1 .. p1}, Lb3/h;->h()I

    .line 182
    .line 183
    .line 184
    move-result v3

    .line 185
    invoke-virtual/range {p1 .. p1}, Lb3/h;->h()I

    .line 186
    .line 187
    .line 188
    move-result v23

    .line 189
    iget v0, v1, Lb3/h;->a:I

    .line 190
    .line 191
    add-int v0, v0, v23

    .line 192
    .line 193
    move-object/from16 v23, v8

    .line 194
    .line 195
    const/4 v8, 0x5

    .line 196
    if-ne v3, v8, :cond_5

    .line 197
    .line 198
    invoke-virtual/range {p1 .. p1}, Lb3/h;->i()J

    .line 199
    .line 200
    .line 201
    move-result-wide v24

    .line 202
    const-wide/32 v26, 0x41432d33

    .line 203
    .line 204
    .line 205
    cmp-long v3, v24, v26

    .line 206
    .line 207
    if-nez v3, :cond_2

    .line 208
    .line 209
    goto :goto_2

    .line 210
    :cond_2
    const-wide/32 v26, 0x45414333

    .line 211
    .line 212
    .line 213
    cmp-long v3, v24, v26

    .line 214
    .line 215
    if-nez v3, :cond_3

    .line 216
    .line 217
    goto :goto_4

    .line 218
    :cond_3
    const-wide/32 v26, 0x41432d34

    .line 219
    .line 220
    .line 221
    cmp-long v3, v24, v26

    .line 222
    .line 223
    if-nez v3, :cond_4

    .line 224
    .line 225
    goto :goto_5

    .line 226
    :cond_4
    const-wide/32 v26, 0x48455643

    .line 227
    .line 228
    .line 229
    cmp-long v3, v24, v26

    .line 230
    .line 231
    if-nez v3, :cond_8

    .line 232
    .line 233
    const/16 v3, 0x24

    .line 234
    .line 235
    goto :goto_3

    .line 236
    :cond_5
    const/16 v8, 0x6a

    .line 237
    .line 238
    if-ne v3, v8, :cond_6

    .line 239
    .line 240
    :goto_2
    const/16 v3, 0x81

    .line 241
    .line 242
    :goto_3
    move/from16 v20, v3

    .line 243
    .line 244
    goto :goto_6

    .line 245
    :cond_6
    const/16 v8, 0x7a

    .line 246
    .line 247
    if-ne v3, v8, :cond_7

    .line 248
    .line 249
    :goto_4
    const/16 v3, 0x87

    .line 250
    .line 251
    goto :goto_3

    .line 252
    :cond_7
    const/16 v8, 0x7f

    .line 253
    .line 254
    if-ne v3, v8, :cond_9

    .line 255
    .line 256
    invoke-virtual/range {p1 .. p1}, Lb3/h;->h()I

    .line 257
    .line 258
    .line 259
    move-result v3

    .line 260
    const/16 v8, 0x15

    .line 261
    .line 262
    if-ne v3, v8, :cond_8

    .line 263
    .line 264
    :goto_5
    const/16 v3, 0xac

    .line 265
    .line 266
    goto :goto_3

    .line 267
    :cond_8
    :goto_6
    move-object/from16 v18, v4

    .line 268
    .line 269
    move/from16 v17, v6

    .line 270
    .line 271
    move-object/from16 v26, v10

    .line 272
    .line 273
    const/4 v10, 0x0

    .line 274
    goto :goto_8

    .line 275
    :cond_9
    const/16 v8, 0x7b

    .line 276
    .line 277
    if-ne v3, v8, :cond_a

    .line 278
    .line 279
    const/16 v3, 0x8a

    .line 280
    .line 281
    goto :goto_3

    .line 282
    :cond_a
    const/16 v8, 0xa

    .line 283
    .line 284
    if-ne v3, v8, :cond_b

    .line 285
    .line 286
    const/4 v8, 0x3

    .line 287
    invoke-virtual {v1, v8}, Lb3/h;->f(I)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v3

    .line 291
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v21

    .line 295
    goto :goto_6

    .line 296
    :cond_b
    const/16 v8, 0x59

    .line 297
    .line 298
    if-ne v3, v8, :cond_8

    .line 299
    .line 300
    new-instance v3, Ljava/util/ArrayList;

    .line 301
    .line 302
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 303
    .line 304
    .line 305
    :goto_7
    iget v8, v1, Lb3/h;->a:I

    .line 306
    .line 307
    if-ge v8, v0, :cond_c

    .line 308
    .line 309
    const/4 v8, 0x3

    .line 310
    invoke-virtual {v1, v8}, Lb3/h;->f(I)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v18

    .line 314
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v8

    .line 318
    invoke-virtual/range {p1 .. p1}, Lb3/h;->h()I

    .line 319
    .line 320
    .line 321
    move-object/from16 v18, v4

    .line 322
    .line 323
    move/from16 v17, v6

    .line 324
    .line 325
    const/4 v4, 0x4

    .line 326
    new-array v6, v4, [B

    .line 327
    .line 328
    move-object/from16 v26, v10

    .line 329
    .line 330
    const/4 v10, 0x0

    .line 331
    invoke-virtual {v1, v6, v10, v4}, Lb3/h;->a([BII)V

    .line 332
    .line 333
    .line 334
    new-instance v4, Ln2/d0;

    .line 335
    .line 336
    invoke-direct {v4, v8, v6}, Ln2/d0;-><init>(Ljava/lang/String;[B)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    move/from16 v6, v17

    .line 343
    .line 344
    move-object/from16 v4, v18

    .line 345
    .line 346
    move-object/from16 v10, v26

    .line 347
    .line 348
    goto :goto_7

    .line 349
    :cond_c
    move-object/from16 v18, v4

    .line 350
    .line 351
    move/from16 v17, v6

    .line 352
    .line 353
    move-object/from16 v26, v10

    .line 354
    .line 355
    const/4 v10, 0x0

    .line 356
    move-object/from16 v22, v3

    .line 357
    .line 358
    const/16 v20, 0x59

    .line 359
    .line 360
    :goto_8
    iget v3, v1, Lb3/h;->a:I

    .line 361
    .line 362
    sub-int/2addr v0, v3

    .line 363
    invoke-virtual {v1, v0}, Lb3/h;->r(I)V

    .line 364
    .line 365
    .line 366
    move-object/from16 v0, p0

    .line 367
    .line 368
    move/from16 v6, v17

    .line 369
    .line 370
    move-object/from16 v4, v18

    .line 371
    .line 372
    move-object/from16 v8, v23

    .line 373
    .line 374
    move-object/from16 v10, v26

    .line 375
    .line 376
    goto/16 :goto_1

    .line 377
    .line 378
    :cond_d
    move-object/from16 v18, v4

    .line 379
    .line 380
    move/from16 v17, v6

    .line 381
    .line 382
    move-object/from16 v23, v8

    .line 383
    .line 384
    move-object/from16 v26, v10

    .line 385
    .line 386
    const/4 v10, 0x0

    .line 387
    invoke-virtual {v1, v7}, Lb3/h;->q(I)V

    .line 388
    .line 389
    .line 390
    new-instance v0, Ln2/y;

    .line 391
    .line 392
    iget-object v3, v1, Lb3/h;->c:Ljava/io/Serializable;

    .line 393
    .line 394
    check-cast v3, [B

    .line 395
    .line 396
    invoke-static {v3, v9, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 397
    .line 398
    .line 399
    move-result-object v3

    .line 400
    move/from16 v4, v20

    .line 401
    .line 402
    move-object/from16 v6, v21

    .line 403
    .line 404
    move-object/from16 v7, v22

    .line 405
    .line 406
    invoke-direct {v0, v4, v6, v7, v3}, Ln2/y;-><init>(ILjava/lang/String;Ljava/util/ArrayList;[B)V

    .line 407
    .line 408
    .line 409
    const/4 v3, 0x6

    .line 410
    if-ne v12, v3, :cond_e

    .line 411
    .line 412
    move v12, v4

    .line 413
    :cond_e
    add-int/lit8 v16, v16, 0x5

    .line 414
    .line 415
    sub-int v13, v13, v16

    .line 416
    .line 417
    invoke-virtual {v14, v12}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 418
    .line 419
    .line 420
    move-result v3

    .line 421
    if-eqz v3, :cond_f

    .line 422
    .line 423
    move-object/from16 v4, v26

    .line 424
    .line 425
    const/16 v3, 0x15

    .line 426
    .line 427
    goto :goto_a

    .line 428
    :cond_f
    const/16 v3, 0x15

    .line 429
    .line 430
    if-ne v12, v3, :cond_10

    .line 431
    .line 432
    iget-object v0, v2, Ln2/c0;->l:Ln2/f0;

    .line 433
    .line 434
    goto :goto_9

    .line 435
    :cond_10
    invoke-virtual {v15, v12, v0}, Ln2/g;->a(ILn2/y;)Ln2/f0;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    :goto_9
    const/16 v4, 0x2000

    .line 440
    .line 441
    invoke-virtual {v11, v12, v4}, Landroid/util/SparseIntArray;->get(II)I

    .line 442
    .line 443
    .line 444
    move-result v6

    .line 445
    if-ge v5, v6, :cond_11

    .line 446
    .line 447
    invoke-virtual {v11, v12, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 448
    .line 449
    .line 450
    move-object/from16 v4, v26

    .line 451
    .line 452
    invoke-virtual {v4, v12, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 453
    .line 454
    .line 455
    goto :goto_a

    .line 456
    :cond_11
    move-object/from16 v4, v26

    .line 457
    .line 458
    :goto_a
    move-object/from16 v0, p0

    .line 459
    .line 460
    move v12, v3

    .line 461
    move v5, v10

    .line 462
    move/from16 v6, v17

    .line 463
    .line 464
    move-object/from16 v8, v23

    .line 465
    .line 466
    const/4 v3, 0x4

    .line 467
    const/4 v7, 0x3

    .line 468
    const/16 v9, 0xd

    .line 469
    .line 470
    move-object v10, v4

    .line 471
    move-object/from16 v4, v18

    .line 472
    .line 473
    goto/16 :goto_0

    .line 474
    .line 475
    :cond_12
    move-object/from16 v18, v4

    .line 476
    .line 477
    move/from16 v17, v6

    .line 478
    .line 479
    move-object v4, v10

    .line 480
    move v10, v5

    .line 481
    invoke-virtual {v11}, Landroid/util/SparseIntArray;->size()I

    .line 482
    .line 483
    .line 484
    move-result v0

    .line 485
    :goto_b
    const/4 v1, 0x1

    .line 486
    if-ge v5, v0, :cond_15

    .line 487
    .line 488
    invoke-virtual {v11, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 489
    .line 490
    .line 491
    move-result v3

    .line 492
    invoke-virtual {v11, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 493
    .line 494
    .line 495
    move-result v6

    .line 496
    invoke-virtual {v14, v3, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 497
    .line 498
    .line 499
    iget-object v7, v2, Ln2/c0;->f:Landroid/util/SparseBooleanArray;

    .line 500
    .line 501
    invoke-virtual {v7, v6, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 502
    .line 503
    .line 504
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    move-result-object v1

    .line 508
    check-cast v1, Ln2/f0;

    .line 509
    .line 510
    if-eqz v1, :cond_14

    .line 511
    .line 512
    iget-object v7, v2, Ln2/c0;->l:Ln2/f0;

    .line 513
    .line 514
    if-eq v1, v7, :cond_13

    .line 515
    .line 516
    iget-object v7, v2, Ln2/c0;->i:Lk2/i;

    .line 517
    .line 518
    new-instance v8, Ln2/e0;

    .line 519
    .line 520
    move/from16 v9, v17

    .line 521
    .line 522
    const/16 v10, 0x2000

    .line 523
    .line 524
    invoke-direct {v8, v9, v3, v10}, Ln2/e0;-><init>(III)V

    .line 525
    .line 526
    .line 527
    move-object/from16 v3, v18

    .line 528
    .line 529
    invoke-interface {v1, v3, v7, v8}, Ln2/f0;->a(Lb3/l;Lk2/i;Ln2/e0;)V

    .line 530
    .line 531
    .line 532
    goto :goto_c

    .line 533
    :cond_13
    move/from16 v9, v17

    .line 534
    .line 535
    move-object/from16 v3, v18

    .line 536
    .line 537
    const/16 v10, 0x2000

    .line 538
    .line 539
    :goto_c
    iget-object v7, v2, Ln2/c0;->d:Landroid/util/SparseArray;

    .line 540
    .line 541
    invoke-virtual {v7, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 542
    .line 543
    .line 544
    goto :goto_d

    .line 545
    :cond_14
    move/from16 v9, v17

    .line 546
    .line 547
    move-object/from16 v3, v18

    .line 548
    .line 549
    const/16 v10, 0x2000

    .line 550
    .line 551
    :goto_d
    add-int/lit8 v5, v5, 0x1

    .line 552
    .line 553
    move-object/from16 v18, v3

    .line 554
    .line 555
    move/from16 v17, v9

    .line 556
    .line 557
    goto :goto_b

    .line 558
    :cond_15
    iget-boolean v0, v2, Ln2/c0;->j:Z

    .line 559
    .line 560
    if-nez v0, :cond_16

    .line 561
    .line 562
    iget-object v0, v2, Ln2/c0;->i:Lk2/i;

    .line 563
    .line 564
    check-cast v0, Lw2/p;

    .line 565
    .line 566
    invoke-virtual {v0}, Lw2/p;->j()V

    .line 567
    .line 568
    .line 569
    iput-boolean v1, v2, Ln2/c0;->j:Z

    .line 570
    .line 571
    :cond_16
    return-void
.end method
