.class public final Ln2/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln2/j;


# instance fields
.field public final a:Lb3/h;

.field public final b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lk2/o;

.field public e:I

.field public f:I

.field public g:I

.field public h:J

.field public i:Lf2/t;

.field public j:I

.field public k:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb3/h;

    const/16 v1, 0x12

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lb3/h;-><init>([B)V

    iput-object v0, p0, Ln2/h;->a:Lb3/h;

    const/4 v0, 0x0

    iput v0, p0, Ln2/h;->e:I

    iput-object p1, p0, Ln2/h;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final b(Lb3/h;)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    :cond_0
    :goto_0
    iget v2, v1, Lb3/h;->b:I

    .line 6
    .line 7
    iget v3, v1, Lb3/h;->a:I

    .line 8
    .line 9
    sub-int/2addr v2, v3

    .line 10
    if-lez v2, :cond_18

    .line 11
    .line 12
    iget v3, v0, Ln2/h;->e:I

    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    const/16 v6, 0x8

    .line 16
    .line 17
    const/4 v7, 0x2

    .line 18
    const/4 v8, 0x0

    .line 19
    iget-object v10, v0, Ln2/h;->a:Lb3/h;

    .line 20
    .line 21
    if-eqz v3, :cond_14

    .line 22
    .line 23
    if-eq v3, v4, :cond_2

    .line 24
    .line 25
    if-ne v3, v7, :cond_1

    .line 26
    .line 27
    iget v3, v0, Ln2/h;->j:I

    .line 28
    .line 29
    iget v4, v0, Ln2/h;->f:I

    .line 30
    .line 31
    sub-int/2addr v3, v4

    .line 32
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    iget-object v3, v0, Ln2/h;->d:Lk2/o;

    .line 37
    .line 38
    invoke-interface {v3, v2, v1}, Lk2/o;->d(ILb3/h;)V

    .line 39
    .line 40
    .line 41
    iget v3, v0, Ln2/h;->f:I

    .line 42
    .line 43
    add-int/2addr v3, v2

    .line 44
    iput v3, v0, Ln2/h;->f:I

    .line 45
    .line 46
    iget v13, v0, Ln2/h;->j:I

    .line 47
    .line 48
    if-ne v3, v13, :cond_0

    .line 49
    .line 50
    iget-object v9, v0, Ln2/h;->d:Lk2/o;

    .line 51
    .line 52
    iget-wide v10, v0, Ln2/h;->k:J

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
    iget-wide v2, v0, Ln2/h;->k:J

    .line 61
    .line 62
    iget-wide v4, v0, Ln2/h;->h:J

    .line 63
    .line 64
    add-long/2addr v2, v4

    .line 65
    iput-wide v2, v0, Ln2/h;->k:J

    .line 66
    .line 67
    iput v8, v0, Ln2/h;->e:I

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 71
    .line 72
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 73
    .line 74
    .line 75
    throw v1

    .line 76
    :cond_2
    iget-object v3, v10, Lb3/h;->c:Ljava/io/Serializable;

    .line 77
    .line 78
    check-cast v3, [B

    .line 79
    .line 80
    iget v11, v0, Ln2/h;->f:I

    .line 81
    .line 82
    const/16 v12, 0x12

    .line 83
    .line 84
    rsub-int/lit8 v11, v11, 0x12

    .line 85
    .line 86
    invoke-static {v2, v11}, Ljava/lang/Math;->min(II)I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    iget v11, v0, Ln2/h;->f:I

    .line 91
    .line 92
    invoke-virtual {v1, v3, v11, v2}, Lb3/h;->a([BII)V

    .line 93
    .line 94
    .line 95
    iget v3, v0, Ln2/h;->f:I

    .line 96
    .line 97
    add-int/2addr v3, v2

    .line 98
    iput v3, v0, Ln2/h;->f:I

    .line 99
    .line 100
    if-ne v3, v12, :cond_3

    .line 101
    .line 102
    move v2, v4

    .line 103
    goto :goto_1

    .line 104
    :cond_3
    move v2, v8

    .line 105
    :goto_1
    if-eqz v2, :cond_0

    .line 106
    .line 107
    iget-object v2, v10, Lb3/h;->c:Ljava/io/Serializable;

    .line 108
    .line 109
    check-cast v2, [B

    .line 110
    .line 111
    iget-object v3, v0, Ln2/h;->i:Lf2/t;

    .line 112
    .line 113
    const/16 v13, 0x1f

    .line 114
    .line 115
    const/4 v14, -0x2

    .line 116
    const/16 v15, 0xe

    .line 117
    .line 118
    const/4 v5, -0x1

    .line 119
    if-nez v3, :cond_c

    .line 120
    .line 121
    iget-object v3, v0, Ln2/h;->c:Ljava/lang/String;

    .line 122
    .line 123
    iget-object v9, v0, Ln2/h;->b:Ljava/lang/String;

    .line 124
    .line 125
    const/16 v23, 0x0

    .line 126
    .line 127
    aget-byte v12, v2, v8

    .line 128
    .line 129
    const/16 v11, 0x7f

    .line 130
    .line 131
    if-ne v12, v11, :cond_4

    .line 132
    .line 133
    new-instance v11, Lb3/g;

    .line 134
    .line 135
    invoke-direct {v11, v2}, Lb3/g;-><init>([B)V

    .line 136
    .line 137
    .line 138
    goto/16 :goto_7

    .line 139
    .line 140
    :cond_4
    array-length v11, v2

    .line 141
    invoke-static {v2, v11}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 142
    .line 143
    .line 144
    move-result-object v11

    .line 145
    aget-byte v12, v11, v8

    .line 146
    .line 147
    if-eq v12, v14, :cond_6

    .line 148
    .line 149
    if-ne v12, v5, :cond_5

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_5
    move v12, v8

    .line 153
    goto :goto_3

    .line 154
    :cond_6
    :goto_2
    move v12, v4

    .line 155
    :goto_3
    if-eqz v12, :cond_7

    .line 156
    .line 157
    move v12, v8

    .line 158
    :goto_4
    array-length v14, v11

    .line 159
    sub-int/2addr v14, v4

    .line 160
    if-ge v12, v14, :cond_7

    .line 161
    .line 162
    aget-byte v14, v11, v12

    .line 163
    .line 164
    add-int/lit8 v16, v12, 0x1

    .line 165
    .line 166
    aget-byte v17, v11, v16

    .line 167
    .line 168
    aput-byte v17, v11, v12

    .line 169
    .line 170
    aput-byte v14, v11, v16

    .line 171
    .line 172
    add-int/lit8 v12, v12, 0x2

    .line 173
    .line 174
    goto :goto_4

    .line 175
    :cond_7
    new-instance v12, Lb3/g;

    .line 176
    .line 177
    invoke-direct {v12, v11}, Lb3/g;-><init>([B)V

    .line 178
    .line 179
    .line 180
    aget-byte v14, v11, v8

    .line 181
    .line 182
    if-ne v14, v13, :cond_9

    .line 183
    .line 184
    new-instance v14, Lb3/g;

    .line 185
    .line 186
    invoke-direct {v14, v11}, Lb3/g;-><init>([B)V

    .line 187
    .line 188
    .line 189
    :goto_5
    iget v13, v14, Lb3/g;->e:I

    .line 190
    .line 191
    iget v8, v14, Lb3/g;->c:I

    .line 192
    .line 193
    sub-int/2addr v13, v8

    .line 194
    mul-int/2addr v13, v6

    .line 195
    iget v8, v14, Lb3/g;->d:I

    .line 196
    .line 197
    sub-int/2addr v13, v8

    .line 198
    const/16 v8, 0x10

    .line 199
    .line 200
    if-lt v13, v8, :cond_9

    .line 201
    .line 202
    invoke-virtual {v14, v7}, Lb3/g;->l(I)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v14, v15}, Lb3/g;->e(I)I

    .line 206
    .line 207
    .line 208
    move-result v8

    .line 209
    and-int/lit16 v8, v8, 0x3fff

    .line 210
    .line 211
    iget v13, v12, Lb3/g;->d:I

    .line 212
    .line 213
    rsub-int/lit8 v13, v13, 0x8

    .line 214
    .line 215
    invoke-static {v13, v15}, Ljava/lang/Math;->min(II)I

    .line 216
    .line 217
    .line 218
    move-result v13

    .line 219
    iget v7, v12, Lb3/g;->d:I

    .line 220
    .line 221
    rsub-int/lit8 v16, v7, 0x8

    .line 222
    .line 223
    sub-int v16, v16, v13

    .line 224
    .line 225
    const v17, 0xff00

    .line 226
    .line 227
    .line 228
    shr-int v7, v17, v7

    .line 229
    .line 230
    shl-int v17, v4, v16

    .line 231
    .line 232
    add-int/lit8 v17, v17, -0x1

    .line 233
    .line 234
    or-int v7, v7, v17

    .line 235
    .line 236
    iget-object v5, v12, Lb3/g;->b:[B

    .line 237
    .line 238
    iget v6, v12, Lb3/g;->c:I

    .line 239
    .line 240
    aget-byte v17, v5, v6

    .line 241
    .line 242
    and-int v7, v7, v17

    .line 243
    .line 244
    int-to-byte v7, v7

    .line 245
    aput-byte v7, v5, v6

    .line 246
    .line 247
    rsub-int/lit8 v13, v13, 0xe

    .line 248
    .line 249
    ushr-int v17, v8, v13

    .line 250
    .line 251
    shl-int v16, v17, v16

    .line 252
    .line 253
    or-int v7, v7, v16

    .line 254
    .line 255
    int-to-byte v7, v7

    .line 256
    aput-byte v7, v5, v6

    .line 257
    .line 258
    add-int/2addr v6, v4

    .line 259
    const/16 v5, 0x8

    .line 260
    .line 261
    :goto_6
    if-le v13, v5, :cond_8

    .line 262
    .line 263
    iget-object v5, v12, Lb3/g;->b:[B

    .line 264
    .line 265
    add-int/lit8 v7, v6, 0x1

    .line 266
    .line 267
    add-int/lit8 v13, v13, -0x8

    .line 268
    .line 269
    ushr-int v15, v8, v13

    .line 270
    .line 271
    int-to-byte v15, v15

    .line 272
    aput-byte v15, v5, v6

    .line 273
    .line 274
    move v6, v7

    .line 275
    const/16 v5, 0x8

    .line 276
    .line 277
    const/16 v15, 0xe

    .line 278
    .line 279
    goto :goto_6

    .line 280
    :cond_8
    rsub-int/lit8 v5, v13, 0x8

    .line 281
    .line 282
    iget-object v7, v12, Lb3/g;->b:[B

    .line 283
    .line 284
    aget-byte v15, v7, v6

    .line 285
    .line 286
    shl-int v16, v4, v5

    .line 287
    .line 288
    const/16 v17, -0x1

    .line 289
    .line 290
    add-int/lit8 v16, v16, -0x1

    .line 291
    .line 292
    and-int v15, v15, v16

    .line 293
    .line 294
    int-to-byte v15, v15

    .line 295
    aput-byte v15, v7, v6

    .line 296
    .line 297
    shl-int v13, v4, v13

    .line 298
    .line 299
    sub-int/2addr v13, v4

    .line 300
    and-int/2addr v8, v13

    .line 301
    shl-int v5, v8, v5

    .line 302
    .line 303
    or-int/2addr v5, v15

    .line 304
    int-to-byte v5, v5

    .line 305
    aput-byte v5, v7, v6

    .line 306
    .line 307
    const/16 v5, 0xe

    .line 308
    .line 309
    invoke-virtual {v12, v5}, Lb3/g;->l(I)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v12}, Lb3/g;->a()V

    .line 313
    .line 314
    .line 315
    const/4 v5, -0x1

    .line 316
    const/16 v6, 0x8

    .line 317
    .line 318
    const/4 v7, 0x2

    .line 319
    const/4 v8, 0x0

    .line 320
    const/16 v13, 0x1f

    .line 321
    .line 322
    const/16 v15, 0xe

    .line 323
    .line 324
    goto/16 :goto_5

    .line 325
    .line 326
    :cond_9
    array-length v5, v11

    .line 327
    iput-object v11, v12, Lb3/g;->b:[B

    .line 328
    .line 329
    const/4 v6, 0x0

    .line 330
    iput v6, v12, Lb3/g;->c:I

    .line 331
    .line 332
    iput v6, v12, Lb3/g;->d:I

    .line 333
    .line 334
    iput v5, v12, Lb3/g;->e:I

    .line 335
    .line 336
    move-object v11, v12

    .line 337
    :goto_7
    const/16 v5, 0x3c

    .line 338
    .line 339
    invoke-virtual {v11, v5}, Lb3/g;->l(I)V

    .line 340
    .line 341
    .line 342
    const/4 v5, 0x6

    .line 343
    invoke-virtual {v11, v5}, Lb3/g;->e(I)I

    .line 344
    .line 345
    .line 346
    move-result v6

    .line 347
    sget-object v5, Lc1/b;->p:[I

    .line 348
    .line 349
    aget v5, v5, v6

    .line 350
    .line 351
    const/4 v6, 0x4

    .line 352
    invoke-virtual {v11, v6}, Lb3/g;->e(I)I

    .line 353
    .line 354
    .line 355
    move-result v7

    .line 356
    sget-object v6, Lc1/b;->q:[I

    .line 357
    .line 358
    aget v21, v6, v7

    .line 359
    .line 360
    const/4 v6, 0x5

    .line 361
    invoke-virtual {v11, v6}, Lb3/g;->e(I)I

    .line 362
    .line 363
    .line 364
    move-result v7

    .line 365
    const/16 v6, 0x1d

    .line 366
    .line 367
    if-lt v7, v6, :cond_a

    .line 368
    .line 369
    const/4 v7, 0x2

    .line 370
    const/16 v18, -0x1

    .line 371
    .line 372
    goto :goto_8

    .line 373
    :cond_a
    sget-object v6, Lc1/b;->r:[I

    .line 374
    .line 375
    aget v6, v6, v7

    .line 376
    .line 377
    mul-int/lit16 v6, v6, 0x3e8

    .line 378
    .line 379
    const/4 v7, 0x2

    .line 380
    div-int/2addr v6, v7

    .line 381
    move/from16 v18, v6

    .line 382
    .line 383
    :goto_8
    const/16 v6, 0xa

    .line 384
    .line 385
    invoke-virtual {v11, v6}, Lb3/g;->l(I)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v11, v7}, Lb3/g;->e(I)I

    .line 389
    .line 390
    .line 391
    move-result v6

    .line 392
    if-lez v6, :cond_b

    .line 393
    .line 394
    move v6, v4

    .line 395
    goto :goto_9

    .line 396
    :cond_b
    const/4 v6, 0x0

    .line 397
    :goto_9
    add-int v20, v5, v6

    .line 398
    .line 399
    const-string v17, "audio/vnd.dts"

    .line 400
    .line 401
    const/16 v19, -0x1

    .line 402
    .line 403
    const/16 v22, 0x0

    .line 404
    .line 405
    move-object/from16 v16, v3

    .line 406
    .line 407
    move-object/from16 v24, v9

    .line 408
    .line 409
    invoke-static/range {v16 .. v24}, Lf2/t;->g(Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lj2/b;Ljava/lang/String;)Lf2/t;

    .line 410
    .line 411
    .line 412
    move-result-object v3

    .line 413
    iput-object v3, v0, Ln2/h;->i:Lf2/t;

    .line 414
    .line 415
    iget-object v5, v0, Ln2/h;->d:Lk2/o;

    .line 416
    .line 417
    invoke-interface {v5, v3}, Lk2/o;->c(Lf2/t;)V

    .line 418
    .line 419
    .line 420
    const/4 v3, 0x0

    .line 421
    goto :goto_a

    .line 422
    :cond_c
    move v3, v8

    .line 423
    :goto_a
    aget-byte v5, v2, v3

    .line 424
    .line 425
    const/4 v3, 0x7

    .line 426
    const/4 v6, -0x2

    .line 427
    if-eq v5, v6, :cond_f

    .line 428
    .line 429
    const/4 v6, -0x1

    .line 430
    if-eq v5, v6, :cond_e

    .line 431
    .line 432
    const/16 v6, 0x1f

    .line 433
    .line 434
    if-eq v5, v6, :cond_d

    .line 435
    .line 436
    const/4 v6, 0x5

    .line 437
    aget-byte v7, v2, v6

    .line 438
    .line 439
    const/4 v6, 0x3

    .line 440
    and-int/2addr v6, v7

    .line 441
    shl-int/lit8 v6, v6, 0xc

    .line 442
    .line 443
    const/4 v7, 0x6

    .line 444
    aget-byte v8, v2, v7

    .line 445
    .line 446
    and-int/lit16 v8, v8, 0xff

    .line 447
    .line 448
    const/4 v9, 0x4

    .line 449
    shl-int/2addr v8, v9

    .line 450
    or-int/2addr v6, v8

    .line 451
    aget-byte v8, v2, v3

    .line 452
    .line 453
    goto :goto_c

    .line 454
    :cond_d
    const/4 v6, 0x3

    .line 455
    const/4 v7, 0x6

    .line 456
    const/4 v9, 0x4

    .line 457
    aget-byte v8, v2, v7

    .line 458
    .line 459
    and-int/2addr v6, v8

    .line 460
    shl-int/lit8 v6, v6, 0xc

    .line 461
    .line 462
    aget-byte v7, v2, v3

    .line 463
    .line 464
    and-int/lit16 v7, v7, 0xff

    .line 465
    .line 466
    shl-int/2addr v7, v9

    .line 467
    or-int/2addr v6, v7

    .line 468
    const/16 v7, 0x8

    .line 469
    .line 470
    aget-byte v7, v2, v7

    .line 471
    .line 472
    goto :goto_b

    .line 473
    :cond_e
    const/4 v6, 0x3

    .line 474
    const/4 v9, 0x4

    .line 475
    aget-byte v7, v2, v3

    .line 476
    .line 477
    and-int/2addr v6, v7

    .line 478
    shl-int/lit8 v6, v6, 0xc

    .line 479
    .line 480
    const/4 v7, 0x6

    .line 481
    aget-byte v8, v2, v7

    .line 482
    .line 483
    and-int/lit16 v7, v8, 0xff

    .line 484
    .line 485
    shl-int/2addr v7, v9

    .line 486
    or-int/2addr v6, v7

    .line 487
    const/16 v7, 0x9

    .line 488
    .line 489
    aget-byte v7, v2, v7

    .line 490
    .line 491
    :goto_b
    const/16 v8, 0x3c

    .line 492
    .line 493
    and-int/2addr v7, v8

    .line 494
    const/4 v8, 0x2

    .line 495
    shr-int/2addr v7, v8

    .line 496
    or-int/2addr v6, v7

    .line 497
    add-int/2addr v6, v4

    .line 498
    move v7, v4

    .line 499
    goto :goto_d

    .line 500
    :cond_f
    const/4 v9, 0x4

    .line 501
    aget-byte v6, v2, v9

    .line 502
    .line 503
    const/4 v7, 0x3

    .line 504
    and-int/2addr v6, v7

    .line 505
    shl-int/lit8 v6, v6, 0xc

    .line 506
    .line 507
    aget-byte v7, v2, v3

    .line 508
    .line 509
    and-int/lit16 v7, v7, 0xff

    .line 510
    .line 511
    shl-int/2addr v7, v9

    .line 512
    or-int/2addr v6, v7

    .line 513
    const/4 v7, 0x6

    .line 514
    aget-byte v8, v2, v7

    .line 515
    .line 516
    :goto_c
    and-int/lit16 v7, v8, 0xf0

    .line 517
    .line 518
    shr-int/2addr v7, v9

    .line 519
    or-int/2addr v6, v7

    .line 520
    add-int/2addr v6, v4

    .line 521
    const/4 v7, 0x0

    .line 522
    :goto_d
    if-eqz v7, :cond_10

    .line 523
    .line 524
    mul-int/lit8 v6, v6, 0x10

    .line 525
    .line 526
    const/16 v7, 0xe

    .line 527
    .line 528
    div-int/2addr v6, v7

    .line 529
    :cond_10
    iput v6, v0, Ln2/h;->j:I

    .line 530
    .line 531
    const/4 v6, -0x2

    .line 532
    if-eq v5, v6, :cond_13

    .line 533
    .line 534
    const/4 v6, -0x1

    .line 535
    if-eq v5, v6, :cond_12

    .line 536
    .line 537
    const/16 v6, 0x1f

    .line 538
    .line 539
    if-eq v5, v6, :cond_11

    .line 540
    .line 541
    const/4 v5, 0x4

    .line 542
    aget-byte v3, v2, v5

    .line 543
    .line 544
    and-int/2addr v3, v4

    .line 545
    const/4 v6, 0x6

    .line 546
    shl-int/2addr v3, v6

    .line 547
    const/4 v7, 0x5

    .line 548
    aget-byte v2, v2, v7

    .line 549
    .line 550
    goto :goto_f

    .line 551
    :cond_11
    const/4 v5, 0x4

    .line 552
    const/4 v6, 0x6

    .line 553
    const/4 v7, 0x5

    .line 554
    aget-byte v7, v2, v7

    .line 555
    .line 556
    and-int/2addr v3, v7

    .line 557
    shl-int/2addr v3, v5

    .line 558
    aget-byte v2, v2, v6

    .line 559
    .line 560
    goto :goto_e

    .line 561
    :cond_12
    const/4 v5, 0x4

    .line 562
    aget-byte v6, v2, v5

    .line 563
    .line 564
    and-int/2addr v6, v3

    .line 565
    shl-int/lit8 v5, v6, 0x4

    .line 566
    .line 567
    aget-byte v2, v2, v3

    .line 568
    .line 569
    move v3, v5

    .line 570
    :goto_e
    const/16 v5, 0x3c

    .line 571
    .line 572
    and-int/2addr v2, v5

    .line 573
    goto :goto_10

    .line 574
    :cond_13
    const/4 v3, 0x5

    .line 575
    const/4 v5, 0x4

    .line 576
    const/4 v6, 0x6

    .line 577
    aget-byte v3, v2, v3

    .line 578
    .line 579
    and-int/2addr v3, v4

    .line 580
    shl-int/2addr v3, v6

    .line 581
    aget-byte v2, v2, v5

    .line 582
    .line 583
    :goto_f
    and-int/lit16 v2, v2, 0xfc

    .line 584
    .line 585
    :goto_10
    const/4 v5, 0x2

    .line 586
    shr-int/2addr v2, v5

    .line 587
    or-int/2addr v2, v3

    .line 588
    add-int/2addr v2, v4

    .line 589
    mul-int/lit8 v2, v2, 0x20

    .line 590
    .line 591
    int-to-long v2, v2

    .line 592
    const-wide/32 v4, 0xf4240

    .line 593
    .line 594
    .line 595
    mul-long/2addr v2, v4

    .line 596
    iget-object v4, v0, Ln2/h;->i:Lf2/t;

    .line 597
    .line 598
    iget v4, v4, Lf2/t;->w:I

    .line 599
    .line 600
    int-to-long v4, v4

    .line 601
    div-long/2addr v2, v4

    .line 602
    long-to-int v2, v2

    .line 603
    int-to-long v2, v2

    .line 604
    iput-wide v2, v0, Ln2/h;->h:J

    .line 605
    .line 606
    const/4 v2, 0x0

    .line 607
    invoke-virtual {v10, v2}, Lb3/h;->q(I)V

    .line 608
    .line 609
    .line 610
    iget-object v2, v0, Ln2/h;->d:Lk2/o;

    .line 611
    .line 612
    const/16 v3, 0x12

    .line 613
    .line 614
    invoke-interface {v2, v3, v10}, Lk2/o;->d(ILb3/h;)V

    .line 615
    .line 616
    .line 617
    const/4 v2, 0x2

    .line 618
    iput v2, v0, Ln2/h;->e:I

    .line 619
    .line 620
    goto/16 :goto_0

    .line 621
    .line 622
    :cond_14
    iget v2, v1, Lb3/h;->b:I

    .line 623
    .line 624
    iget v3, v1, Lb3/h;->a:I

    .line 625
    .line 626
    sub-int/2addr v2, v3

    .line 627
    if-lez v2, :cond_17

    .line 628
    .line 629
    iget v2, v0, Ln2/h;->g:I

    .line 630
    .line 631
    const/16 v3, 0x8

    .line 632
    .line 633
    shl-int/2addr v2, v3

    .line 634
    iput v2, v0, Ln2/h;->g:I

    .line 635
    .line 636
    invoke-virtual/range {p1 .. p1}, Lb3/h;->h()I

    .line 637
    .line 638
    .line 639
    move-result v5

    .line 640
    or-int/2addr v2, v5

    .line 641
    iput v2, v0, Ln2/h;->g:I

    .line 642
    .line 643
    const v5, 0x7ffe8001

    .line 644
    .line 645
    .line 646
    if-eq v2, v5, :cond_16

    .line 647
    .line 648
    const v5, -0x180fe80

    .line 649
    .line 650
    .line 651
    if-eq v2, v5, :cond_16

    .line 652
    .line 653
    const v5, 0x1fffe800

    .line 654
    .line 655
    .line 656
    if-eq v2, v5, :cond_16

    .line 657
    .line 658
    const v5, -0xe0ff18

    .line 659
    .line 660
    .line 661
    if-ne v2, v5, :cond_15

    .line 662
    .line 663
    goto :goto_11

    .line 664
    :cond_15
    const/4 v5, 0x0

    .line 665
    goto :goto_12

    .line 666
    :cond_16
    :goto_11
    move v5, v4

    .line 667
    :goto_12
    if-eqz v5, :cond_14

    .line 668
    .line 669
    iget-object v3, v10, Lb3/h;->c:Ljava/io/Serializable;

    .line 670
    .line 671
    check-cast v3, [B

    .line 672
    .line 673
    shr-int/lit8 v5, v2, 0x18

    .line 674
    .line 675
    and-int/lit16 v5, v5, 0xff

    .line 676
    .line 677
    int-to-byte v5, v5

    .line 678
    const/4 v6, 0x0

    .line 679
    aput-byte v5, v3, v6

    .line 680
    .line 681
    shr-int/lit8 v5, v2, 0x10

    .line 682
    .line 683
    and-int/lit16 v5, v5, 0xff

    .line 684
    .line 685
    int-to-byte v5, v5

    .line 686
    aput-byte v5, v3, v4

    .line 687
    .line 688
    shr-int/lit8 v5, v2, 0x8

    .line 689
    .line 690
    and-int/lit16 v5, v5, 0xff

    .line 691
    .line 692
    int-to-byte v5, v5

    .line 693
    const/4 v6, 0x2

    .line 694
    aput-byte v5, v3, v6

    .line 695
    .line 696
    and-int/lit16 v2, v2, 0xff

    .line 697
    .line 698
    int-to-byte v2, v2

    .line 699
    const/4 v5, 0x3

    .line 700
    aput-byte v2, v3, v5

    .line 701
    .line 702
    const/4 v2, 0x4

    .line 703
    iput v2, v0, Ln2/h;->f:I

    .line 704
    .line 705
    const/4 v7, 0x0

    .line 706
    iput v7, v0, Ln2/h;->g:I

    .line 707
    .line 708
    move v8, v4

    .line 709
    goto :goto_13

    .line 710
    :cond_17
    const/4 v7, 0x0

    .line 711
    move v8, v7

    .line 712
    :goto_13
    if-eqz v8, :cond_0

    .line 713
    .line 714
    iput v4, v0, Ln2/h;->e:I

    .line 715
    .line 716
    goto/16 :goto_0

    .line 717
    .line 718
    :cond_18
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
    iput-wide p1, p0, Ln2/h;->k:J

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
    iput-object v0, p0, Ln2/h;->c:Ljava/lang/String;

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
    iput-object p1, p0, Ln2/h;->d:Lk2/o;

    .line 24
    .line 25
    return-void
.end method
