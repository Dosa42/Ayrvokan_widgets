.class public final Ll2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk2/h;


# instance fields
.field public final a:J

.field public final b:Lb3/h;

.field public final c:Lk2/l;

.field public final d:Lk2/j;

.field public final e:Lk2/k;

.field public f:Lk2/i;

.field public g:Lk2/o;

.field public h:I

.field public i:Lp2/b;

.field public j:Ll2/d;

.field public k:J

.field public l:J

.field public m:J

.field public n:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lh0/c;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lh0/c;-><init>(I)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ll2/c;->a:J

    new-instance p1, Lb3/h;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Lb3/h;-><init>(I)V

    iput-object p1, p0, Ll2/c;->b:Lb3/h;

    new-instance p1, Lk2/l;

    invoke-direct {p1}, Lk2/l;-><init>()V

    iput-object p1, p0, Ll2/c;->c:Lk2/l;

    new-instance p1, Lk2/j;

    invoke-direct {p1}, Lk2/j;-><init>()V

    iput-object p1, p0, Ll2/c;->d:Lk2/j;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Ll2/c;->k:J

    new-instance p1, Lk2/k;

    invoke-direct {p1}, Lk2/k;-><init>()V

    iput-object p1, p0, Ll2/c;->e:Lk2/k;

    return-void
.end method


# virtual methods
.method public final a(Lk2/f;)I
    .locals 37

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Ll2/c;->h:I

    .line 6
    .line 7
    const/4 v3, -0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {v0, v1, v4}, Ll2/c;->f(Lk2/f;Z)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    return v3

    .line 16
    :cond_0
    :goto_0
    iget-object v2, v0, Ll2/c;->j:Ll2/d;

    .line 17
    .line 18
    const-wide/32 v5, 0xf4240

    .line 19
    .line 20
    .line 21
    const/4 v9, 0x1

    .line 22
    iget-object v10, v0, Ll2/c;->b:Lb3/h;

    .line 23
    .line 24
    iget-object v11, v0, Ll2/c;->c:Lk2/l;

    .line 25
    .line 26
    if-nez v2, :cond_20

    .line 27
    .line 28
    new-instance v2, Lb3/h;

    .line 29
    .line 30
    iget v12, v11, Lk2/l;->c:I

    .line 31
    .line 32
    invoke-direct {v2, v12}, Lb3/h;-><init>(I)V

    .line 33
    .line 34
    .line 35
    iget-object v12, v2, Lb3/h;->c:Ljava/io/Serializable;

    .line 36
    .line 37
    check-cast v12, [B

    .line 38
    .line 39
    iget v13, v11, Lk2/l;->c:I

    .line 40
    .line 41
    invoke-virtual {v1, v12, v4, v13, v4}, Lk2/f;->b([BIIZ)Z

    .line 42
    .line 43
    .line 44
    iget v12, v11, Lk2/l;->a:I

    .line 45
    .line 46
    and-int/2addr v12, v9

    .line 47
    const/16 v13, 0x24

    .line 48
    .line 49
    if-eqz v12, :cond_1

    .line 50
    .line 51
    iget v12, v11, Lk2/l;->e:I

    .line 52
    .line 53
    if-eq v12, v9, :cond_2

    .line 54
    .line 55
    move v12, v13

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    iget v12, v11, Lk2/l;->e:I

    .line 58
    .line 59
    if-eq v12, v9, :cond_3

    .line 60
    .line 61
    :cond_2
    const/16 v12, 0x15

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_3
    const/16 v12, 0xd

    .line 65
    .line 66
    :goto_1
    iget v14, v2, Lb3/h;->b:I

    .line 67
    .line 68
    add-int/lit8 v15, v12, 0x4

    .line 69
    .line 70
    const v7, 0x496e666f

    .line 71
    .line 72
    .line 73
    const v8, 0x56425249

    .line 74
    .line 75
    .line 76
    const v3, 0x58696e67

    .line 77
    .line 78
    .line 79
    if-lt v14, v15, :cond_4

    .line 80
    .line 81
    invoke-virtual {v2, v12}, Lb3/h;->q(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2}, Lb3/h;->b()I

    .line 85
    .line 86
    .line 87
    move-result v14

    .line 88
    if-eq v14, v3, :cond_6

    .line 89
    .line 90
    if-ne v14, v7, :cond_4

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_4
    iget v14, v2, Lb3/h;->b:I

    .line 94
    .line 95
    const/16 v15, 0x28

    .line 96
    .line 97
    if-lt v14, v15, :cond_5

    .line 98
    .line 99
    invoke-virtual {v2, v13}, Lb3/h;->q(I)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2}, Lb3/h;->b()I

    .line 103
    .line 104
    .line 105
    move-result v13

    .line 106
    if-ne v13, v8, :cond_5

    .line 107
    .line 108
    move v14, v8

    .line 109
    goto :goto_2

    .line 110
    :cond_5
    move v14, v4

    .line 111
    :cond_6
    :goto_2
    iget-object v15, v0, Ll2/c;->d:Lk2/j;

    .line 112
    .line 113
    const/16 v16, 0x0

    .line 114
    .line 115
    if-eq v14, v3, :cond_10

    .line 116
    .line 117
    if-ne v14, v7, :cond_7

    .line 118
    .line 119
    goto/16 :goto_a

    .line 120
    .line 121
    :cond_7
    if-ne v14, v8, :cond_f

    .line 122
    .line 123
    iget-wide v7, v1, Lk2/f;->d:J

    .line 124
    .line 125
    const/16 v3, 0xa

    .line 126
    .line 127
    invoke-virtual {v2, v3}, Lb3/h;->r(I)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2}, Lb3/h;->b()I

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    if-gtz v3, :cond_8

    .line 135
    .line 136
    move-object/from16 v23, v10

    .line 137
    .line 138
    move-object/from16 v21, v11

    .line 139
    .line 140
    goto :goto_5

    .line 141
    :cond_8
    iget v12, v11, Lk2/l;->d:I

    .line 142
    .line 143
    int-to-long v13, v3

    .line 144
    const/16 v3, 0x7d00

    .line 145
    .line 146
    if-lt v12, v3, :cond_9

    .line 147
    .line 148
    const/16 v3, 0x480

    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_9
    const/16 v3, 0x240

    .line 152
    .line 153
    :goto_3
    move-object/from16 v23, v10

    .line 154
    .line 155
    int-to-long v9, v3

    .line 156
    mul-long v19, v9, v5

    .line 157
    .line 158
    int-to-long v9, v12

    .line 159
    move-wide/from16 v17, v13

    .line 160
    .line 161
    move-wide/from16 v21, v9

    .line 162
    .line 163
    invoke-static/range {v17 .. v22}, Lb3/n;->h(JJJ)J

    .line 164
    .line 165
    .line 166
    move-result-wide v9

    .line 167
    invoke-virtual {v2}, Lb3/h;->m()I

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    invoke-virtual {v2}, Lb3/h;->m()I

    .line 172
    .line 173
    .line 174
    move-result v12

    .line 175
    invoke-virtual {v2}, Lb3/h;->m()I

    .line 176
    .line 177
    .line 178
    move-result v13

    .line 179
    const/4 v14, 0x2

    .line 180
    invoke-virtual {v2, v14}, Lb3/h;->r(I)V

    .line 181
    .line 182
    .line 183
    iget v5, v11, Lk2/l;->c:I

    .line 184
    .line 185
    int-to-long v5, v5

    .line 186
    add-long/2addr v5, v7

    .line 187
    new-array v4, v3, [J

    .line 188
    .line 189
    new-array v14, v3, [J

    .line 190
    .line 191
    const/4 v0, 0x0

    .line 192
    :goto_4
    move-object/from16 v21, v11

    .line 193
    .line 194
    if-ge v0, v3, :cond_e

    .line 195
    .line 196
    move/from16 v22, v12

    .line 197
    .line 198
    int-to-long v11, v0

    .line 199
    mul-long/2addr v11, v9

    .line 200
    move-wide/from16 v24, v9

    .line 201
    .line 202
    int-to-long v9, v3

    .line 203
    div-long/2addr v11, v9

    .line 204
    aput-wide v11, v4, v0

    .line 205
    .line 206
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 207
    .line 208
    .line 209
    move-result-wide v9

    .line 210
    aput-wide v9, v14, v0

    .line 211
    .line 212
    const/4 v9, 0x1

    .line 213
    if-eq v13, v9, :cond_d

    .line 214
    .line 215
    const/4 v9, 0x2

    .line 216
    if-eq v13, v9, :cond_c

    .line 217
    .line 218
    const/4 v10, 0x3

    .line 219
    if-eq v13, v10, :cond_b

    .line 220
    .line 221
    const/4 v10, 0x4

    .line 222
    if-eq v13, v10, :cond_a

    .line 223
    .line 224
    :goto_5
    move-object/from16 v0, v16

    .line 225
    .line 226
    :goto_6
    move-object/from16 v3, v21

    .line 227
    .line 228
    goto :goto_8

    .line 229
    :cond_a
    invoke-virtual {v2}, Lb3/h;->k()I

    .line 230
    .line 231
    .line 232
    move-result v10

    .line 233
    goto :goto_7

    .line 234
    :cond_b
    invoke-virtual {v2}, Lb3/h;->j()I

    .line 235
    .line 236
    .line 237
    move-result v10

    .line 238
    goto :goto_7

    .line 239
    :cond_c
    invoke-virtual {v2}, Lb3/h;->m()I

    .line 240
    .line 241
    .line 242
    move-result v10

    .line 243
    goto :goto_7

    .line 244
    :cond_d
    const/4 v9, 0x2

    .line 245
    invoke-virtual {v2}, Lb3/h;->h()I

    .line 246
    .line 247
    .line 248
    move-result v10

    .line 249
    :goto_7
    mul-int v10, v10, v22

    .line 250
    .line 251
    int-to-long v10, v10

    .line 252
    add-long/2addr v7, v10

    .line 253
    add-int/lit8 v0, v0, 0x1

    .line 254
    .line 255
    move-object/from16 v11, v21

    .line 256
    .line 257
    move/from16 v12, v22

    .line 258
    .line 259
    move-wide/from16 v9, v24

    .line 260
    .line 261
    goto :goto_4

    .line 262
    :cond_e
    new-instance v0, Ll2/e;

    .line 263
    .line 264
    invoke-direct {v0, v4, v14, v7, v8}, Ll2/e;-><init>([J[JJ)V

    .line 265
    .line 266
    .line 267
    goto :goto_6

    .line 268
    :goto_8
    iget v2, v3, Lk2/l;->c:I

    .line 269
    .line 270
    invoke-virtual {v1, v2}, Lk2/f;->f(I)V

    .line 271
    .line 272
    .line 273
    goto :goto_9

    .line 274
    :cond_f
    move v0, v4

    .line 275
    move-object/from16 v23, v10

    .line 276
    .line 277
    move-object v3, v11

    .line 278
    iput v0, v1, Lk2/f;->f:I

    .line 279
    .line 280
    move-object/from16 v0, v16

    .line 281
    .line 282
    :goto_9
    move-object/from16 v2, p0

    .line 283
    .line 284
    move-object/from16 v4, v23

    .line 285
    .line 286
    goto/16 :goto_10

    .line 287
    .line 288
    :cond_10
    :goto_a
    move-object/from16 v23, v10

    .line 289
    .line 290
    move-object v3, v11

    .line 291
    iget-wide v4, v1, Lk2/f;->d:J

    .line 292
    .line 293
    iget v0, v3, Lk2/l;->g:I

    .line 294
    .line 295
    iget v6, v3, Lk2/l;->d:I

    .line 296
    .line 297
    invoke-virtual {v2}, Lb3/h;->b()I

    .line 298
    .line 299
    .line 300
    move-result v8

    .line 301
    and-int/lit8 v9, v8, 0x1

    .line 302
    .line 303
    const/4 v10, 0x1

    .line 304
    if-ne v9, v10, :cond_14

    .line 305
    .line 306
    invoke-virtual {v2}, Lb3/h;->k()I

    .line 307
    .line 308
    .line 309
    move-result v9

    .line 310
    if-nez v9, :cond_11

    .line 311
    .line 312
    goto :goto_c

    .line 313
    :cond_11
    int-to-long v9, v9

    .line 314
    move v13, v8

    .line 315
    int-to-long v7, v0

    .line 316
    const-wide/32 v17, 0xf4240

    .line 317
    .line 318
    .line 319
    mul-long v26, v7, v17

    .line 320
    .line 321
    int-to-long v6, v6

    .line 322
    move-wide/from16 v24, v9

    .line 323
    .line 324
    move-wide/from16 v28, v6

    .line 325
    .line 326
    invoke-static/range {v24 .. v29}, Lb3/n;->h(JJJ)J

    .line 327
    .line 328
    .line 329
    move-result-wide v28

    .line 330
    const/4 v0, 0x6

    .line 331
    and-int/lit8 v6, v13, 0x6

    .line 332
    .line 333
    if-eq v6, v0, :cond_12

    .line 334
    .line 335
    new-instance v0, Ll2/f;

    .line 336
    .line 337
    iget v2, v3, Lk2/l;->c:I

    .line 338
    .line 339
    const-wide/16 v30, -0x1

    .line 340
    .line 341
    const/16 v32, 0x0

    .line 342
    .line 343
    move-object/from16 v24, v0

    .line 344
    .line 345
    move-wide/from16 v25, v4

    .line 346
    .line 347
    move/from16 v27, v2

    .line 348
    .line 349
    invoke-direct/range {v24 .. v32}, Ll2/f;-><init>(JIJJ[J)V

    .line 350
    .line 351
    .line 352
    move v13, v12

    .line 353
    goto :goto_d

    .line 354
    :cond_12
    invoke-virtual {v2}, Lb3/h;->k()I

    .line 355
    .line 356
    .line 357
    move-result v0

    .line 358
    int-to-long v6, v0

    .line 359
    const/16 v0, 0x64

    .line 360
    .line 361
    new-array v8, v0, [J

    .line 362
    .line 363
    const/4 v9, 0x0

    .line 364
    :goto_b
    if-ge v9, v0, :cond_13

    .line 365
    .line 366
    invoke-virtual {v2}, Lb3/h;->h()I

    .line 367
    .line 368
    .line 369
    move-result v10

    .line 370
    move v13, v12

    .line 371
    int-to-long v11, v10

    .line 372
    aput-wide v11, v8, v9

    .line 373
    .line 374
    add-int/lit8 v9, v9, 0x1

    .line 375
    .line 376
    move v12, v13

    .line 377
    goto :goto_b

    .line 378
    :cond_13
    move v13, v12

    .line 379
    new-instance v0, Ll2/f;

    .line 380
    .line 381
    iget v2, v3, Lk2/l;->c:I

    .line 382
    .line 383
    move-object/from16 v24, v0

    .line 384
    .line 385
    move-wide/from16 v25, v4

    .line 386
    .line 387
    move/from16 v27, v2

    .line 388
    .line 389
    move-wide/from16 v30, v6

    .line 390
    .line 391
    move-object/from16 v32, v8

    .line 392
    .line 393
    invoke-direct/range {v24 .. v32}, Ll2/f;-><init>(JIJJ[J)V

    .line 394
    .line 395
    .line 396
    goto :goto_d

    .line 397
    :cond_14
    :goto_c
    move v13, v12

    .line 398
    move-object/from16 v0, v16

    .line 399
    .line 400
    :goto_d
    if-eqz v0, :cond_17

    .line 401
    .line 402
    iget v2, v15, Lk2/j;->a:I

    .line 403
    .line 404
    const/4 v4, -0x1

    .line 405
    if-eq v2, v4, :cond_15

    .line 406
    .line 407
    iget v2, v15, Lk2/j;->b:I

    .line 408
    .line 409
    if-eq v2, v4, :cond_15

    .line 410
    .line 411
    const/4 v2, 0x1

    .line 412
    goto :goto_e

    .line 413
    :cond_15
    const/4 v2, 0x0

    .line 414
    :goto_e
    if-nez v2, :cond_17

    .line 415
    .line 416
    const/4 v2, 0x0

    .line 417
    iput v2, v1, Lk2/f;->f:I

    .line 418
    .line 419
    add-int/lit16 v12, v13, 0x8d

    .line 420
    .line 421
    invoke-virtual {v1, v12, v2}, Lk2/f;->a(IZ)Z

    .line 422
    .line 423
    .line 424
    move-object/from16 v4, v23

    .line 425
    .line 426
    iget-object v5, v4, Lb3/h;->c:Ljava/io/Serializable;

    .line 427
    .line 428
    check-cast v5, [B

    .line 429
    .line 430
    const/4 v6, 0x3

    .line 431
    invoke-virtual {v1, v5, v2, v6, v2}, Lk2/f;->b([BIIZ)Z

    .line 432
    .line 433
    .line 434
    invoke-virtual {v4, v2}, Lb3/h;->q(I)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v4}, Lb3/h;->j()I

    .line 438
    .line 439
    .line 440
    move-result v2

    .line 441
    shr-int/lit8 v5, v2, 0xc

    .line 442
    .line 443
    and-int/lit16 v2, v2, 0xfff

    .line 444
    .line 445
    if-gtz v5, :cond_16

    .line 446
    .line 447
    if-lez v2, :cond_18

    .line 448
    .line 449
    :cond_16
    iput v5, v15, Lk2/j;->a:I

    .line 450
    .line 451
    iput v2, v15, Lk2/j;->b:I

    .line 452
    .line 453
    goto :goto_f

    .line 454
    :cond_17
    move-object/from16 v4, v23

    .line 455
    .line 456
    :cond_18
    :goto_f
    iget v2, v3, Lk2/l;->c:I

    .line 457
    .line 458
    invoke-virtual {v1, v2}, Lk2/f;->f(I)V

    .line 459
    .line 460
    .line 461
    if-eqz v0, :cond_19

    .line 462
    .line 463
    invoke-virtual {v0}, Ll2/f;->a()Z

    .line 464
    .line 465
    .line 466
    move-result v2

    .line 467
    if-nez v2, :cond_19

    .line 468
    .line 469
    const v2, 0x496e666f

    .line 470
    .line 471
    .line 472
    if-ne v14, v2, :cond_19

    .line 473
    .line 474
    invoke-virtual/range {p0 .. p1}, Ll2/c;->d(Lk2/f;)Ll2/a;

    .line 475
    .line 476
    .line 477
    move-result-object v0

    .line 478
    :cond_19
    move-object/from16 v2, p0

    .line 479
    .line 480
    :goto_10
    iget-object v5, v2, Ll2/c;->i:Lp2/b;

    .line 481
    .line 482
    iget-wide v6, v1, Lk2/f;->d:J

    .line 483
    .line 484
    if-eqz v5, :cond_1c

    .line 485
    .line 486
    iget-object v5, v5, Lp2/b;->a:[Lp2/a;

    .line 487
    .line 488
    array-length v8, v5

    .line 489
    const/4 v9, 0x0

    .line 490
    :goto_11
    if-ge v9, v8, :cond_1c

    .line 491
    .line 492
    aget-object v10, v5, v9

    .line 493
    .line 494
    instance-of v11, v10, Lr2/l;

    .line 495
    .line 496
    if-eqz v11, :cond_1b

    .line 497
    .line 498
    check-cast v10, Lr2/l;

    .line 499
    .line 500
    iget-object v5, v10, Lr2/l;->e:[I

    .line 501
    .line 502
    array-length v5, v5

    .line 503
    add-int/lit8 v8, v5, 0x1

    .line 504
    .line 505
    new-array v9, v8, [J

    .line 506
    .line 507
    new-array v8, v8, [J

    .line 508
    .line 509
    const/4 v11, 0x0

    .line 510
    aput-wide v6, v9, v11

    .line 511
    .line 512
    const-wide/16 v12, 0x0

    .line 513
    .line 514
    aput-wide v12, v8, v11

    .line 515
    .line 516
    const/4 v11, 0x1

    .line 517
    const-wide/16 v12, 0x0

    .line 518
    .line 519
    :goto_12
    if-gt v11, v5, :cond_1a

    .line 520
    .line 521
    add-int/lit8 v14, v11, -0x1

    .line 522
    .line 523
    move/from16 v16, v5

    .line 524
    .line 525
    iget-object v5, v10, Lr2/l;->e:[I

    .line 526
    .line 527
    aget v5, v5, v14

    .line 528
    .line 529
    move-object/from16 v23, v4

    .line 530
    .line 531
    iget v4, v10, Lr2/l;->c:I

    .line 532
    .line 533
    add-int/2addr v4, v5

    .line 534
    int-to-long v4, v4

    .line 535
    add-long/2addr v6, v4

    .line 536
    iget-object v4, v10, Lr2/l;->f:[I

    .line 537
    .line 538
    aget v4, v4, v14

    .line 539
    .line 540
    iget v5, v10, Lr2/l;->d:I

    .line 541
    .line 542
    add-int/2addr v5, v4

    .line 543
    int-to-long v4, v5

    .line 544
    add-long/2addr v12, v4

    .line 545
    aput-wide v6, v9, v11

    .line 546
    .line 547
    aput-wide v12, v8, v11

    .line 548
    .line 549
    add-int/lit8 v11, v11, 0x1

    .line 550
    .line 551
    move/from16 v5, v16

    .line 552
    .line 553
    move-object/from16 v4, v23

    .line 554
    .line 555
    goto :goto_12

    .line 556
    :cond_1a
    move-object/from16 v23, v4

    .line 557
    .line 558
    new-instance v4, Ll2/b;

    .line 559
    .line 560
    invoke-direct {v4, v9, v8}, Ll2/b;-><init>([J[J)V

    .line 561
    .line 562
    .line 563
    goto :goto_13

    .line 564
    :cond_1b
    move-object/from16 v23, v4

    .line 565
    .line 566
    add-int/lit8 v9, v9, 0x1

    .line 567
    .line 568
    goto :goto_11

    .line 569
    :cond_1c
    move-object/from16 v23, v4

    .line 570
    .line 571
    move-object/from16 v4, v16

    .line 572
    .line 573
    :goto_13
    if-eqz v4, :cond_1d

    .line 574
    .line 575
    iput-object v4, v2, Ll2/c;->j:Ll2/d;

    .line 576
    .line 577
    goto :goto_14

    .line 578
    :cond_1d
    if-eqz v0, :cond_1e

    .line 579
    .line 580
    iput-object v0, v2, Ll2/c;->j:Ll2/d;

    .line 581
    .line 582
    :cond_1e
    :goto_14
    iget-object v0, v2, Ll2/c;->j:Ll2/d;

    .line 583
    .line 584
    if-eqz v0, :cond_1f

    .line 585
    .line 586
    invoke-interface {v0}, Lk2/m;->a()Z

    .line 587
    .line 588
    .line 589
    move-result v0

    .line 590
    goto :goto_15

    .line 591
    :cond_1f
    invoke-virtual/range {p0 .. p1}, Ll2/c;->d(Lk2/f;)Ll2/a;

    .line 592
    .line 593
    .line 594
    move-result-object v0

    .line 595
    iput-object v0, v2, Ll2/c;->j:Ll2/d;

    .line 596
    .line 597
    :goto_15
    iget-object v0, v2, Ll2/c;->f:Lk2/i;

    .line 598
    .line 599
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 600
    .line 601
    .line 602
    iget-object v0, v2, Ll2/c;->g:Lk2/o;

    .line 603
    .line 604
    const/16 v24, 0x0

    .line 605
    .line 606
    iget-object v4, v3, Lk2/l;->b:Ljava/lang/String;

    .line 607
    .line 608
    const/16 v26, -0x1

    .line 609
    .line 610
    const/16 v27, 0x1000

    .line 611
    .line 612
    iget v5, v3, Lk2/l;->e:I

    .line 613
    .line 614
    iget v6, v3, Lk2/l;->d:I

    .line 615
    .line 616
    const/16 v30, -0x1

    .line 617
    .line 618
    iget v7, v15, Lk2/j;->a:I

    .line 619
    .line 620
    iget v8, v15, Lk2/j;->b:I

    .line 621
    .line 622
    const/16 v33, 0x0

    .line 623
    .line 624
    const/16 v34, 0x0

    .line 625
    .line 626
    const/16 v35, 0x0

    .line 627
    .line 628
    iget-object v9, v2, Ll2/c;->i:Lp2/b;

    .line 629
    .line 630
    move-object/from16 v25, v4

    .line 631
    .line 632
    move/from16 v28, v5

    .line 633
    .line 634
    move/from16 v29, v6

    .line 635
    .line 636
    move/from16 v31, v7

    .line 637
    .line 638
    move/from16 v32, v8

    .line 639
    .line 640
    move-object/from16 v36, v9

    .line 641
    .line 642
    invoke-static/range {v24 .. v36}, Lf2/t;->e(Ljava/lang/String;Ljava/lang/String;IIIIIIILjava/util/List;Lj2/b;Ljava/lang/String;Lp2/b;)Lf2/t;

    .line 643
    .line 644
    .line 645
    move-result-object v4

    .line 646
    invoke-interface {v0, v4}, Lk2/o;->c(Lf2/t;)V

    .line 647
    .line 648
    .line 649
    iget-wide v4, v1, Lk2/f;->d:J

    .line 650
    .line 651
    iput-wide v4, v2, Ll2/c;->m:J

    .line 652
    .line 653
    goto :goto_16

    .line 654
    :cond_20
    move-object v2, v0

    .line 655
    move-object/from16 v23, v10

    .line 656
    .line 657
    move-object v3, v11

    .line 658
    iget-wide v4, v2, Ll2/c;->m:J

    .line 659
    .line 660
    const-wide/16 v6, 0x0

    .line 661
    .line 662
    cmp-long v0, v4, v6

    .line 663
    .line 664
    if-eqz v0, :cond_21

    .line 665
    .line 666
    iget-wide v6, v1, Lk2/f;->d:J

    .line 667
    .line 668
    cmp-long v0, v6, v4

    .line 669
    .line 670
    if-gez v0, :cond_21

    .line 671
    .line 672
    sub-long/2addr v4, v6

    .line 673
    long-to-int v0, v4

    .line 674
    invoke-virtual {v1, v0}, Lk2/f;->f(I)V

    .line 675
    .line 676
    .line 677
    :cond_21
    :goto_16
    iget v0, v2, Ll2/c;->n:I

    .line 678
    .line 679
    if-nez v0, :cond_27

    .line 680
    .line 681
    const/4 v0, 0x0

    .line 682
    iput v0, v1, Lk2/f;->f:I

    .line 683
    .line 684
    invoke-virtual/range {p0 .. p1}, Ll2/c;->e(Lk2/f;)Z

    .line 685
    .line 686
    .line 687
    move-result v4

    .line 688
    if-eqz v4, :cond_22

    .line 689
    .line 690
    const/4 v3, -0x1

    .line 691
    goto/16 :goto_1b

    .line 692
    .line 693
    :cond_22
    move-object/from16 v4, v23

    .line 694
    .line 695
    invoke-virtual {v4, v0}, Lb3/h;->q(I)V

    .line 696
    .line 697
    .line 698
    invoke-virtual {v4}, Lb3/h;->b()I

    .line 699
    .line 700
    .line 701
    move-result v0

    .line 702
    iget v4, v2, Ll2/c;->h:I

    .line 703
    .line 704
    int-to-long v4, v4

    .line 705
    const v6, -0x1f400

    .line 706
    .line 707
    .line 708
    and-int/2addr v6, v0

    .line 709
    int-to-long v6, v6

    .line 710
    const-wide/32 v8, -0x1f400

    .line 711
    .line 712
    .line 713
    and-long/2addr v4, v8

    .line 714
    cmp-long v4, v6, v4

    .line 715
    .line 716
    if-nez v4, :cond_23

    .line 717
    .line 718
    const/4 v4, 0x1

    .line 719
    goto :goto_17

    .line 720
    :cond_23
    const/4 v4, 0x0

    .line 721
    :goto_17
    if-eqz v4, :cond_26

    .line 722
    .line 723
    invoke-static {v0}, Lk2/l;->a(I)I

    .line 724
    .line 725
    .line 726
    move-result v4

    .line 727
    const/4 v5, -0x1

    .line 728
    if-ne v4, v5, :cond_24

    .line 729
    .line 730
    goto :goto_18

    .line 731
    :cond_24
    invoke-static {v0, v3}, Lk2/l;->b(ILk2/l;)Z

    .line 732
    .line 733
    .line 734
    iget-wide v4, v2, Ll2/c;->k:J

    .line 735
    .line 736
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    cmp-long v0, v4, v6

    .line 742
    .line 743
    if-nez v0, :cond_25

    .line 744
    .line 745
    iget-object v0, v2, Ll2/c;->j:Ll2/d;

    .line 746
    .line 747
    iget-wide v4, v1, Lk2/f;->d:J

    .line 748
    .line 749
    invoke-interface {v0, v4, v5}, Ll2/d;->b(J)J

    .line 750
    .line 751
    .line 752
    move-result-wide v4

    .line 753
    iput-wide v4, v2, Ll2/c;->k:J

    .line 754
    .line 755
    iget-wide v4, v2, Ll2/c;->a:J

    .line 756
    .line 757
    cmp-long v0, v4, v6

    .line 758
    .line 759
    if-eqz v0, :cond_25

    .line 760
    .line 761
    iget-object v0, v2, Ll2/c;->j:Ll2/d;

    .line 762
    .line 763
    const-wide/16 v6, 0x0

    .line 764
    .line 765
    invoke-interface {v0, v6, v7}, Ll2/d;->b(J)J

    .line 766
    .line 767
    .line 768
    move-result-wide v6

    .line 769
    iget-wide v8, v2, Ll2/c;->k:J

    .line 770
    .line 771
    sub-long/2addr v4, v6

    .line 772
    add-long/2addr v4, v8

    .line 773
    iput-wide v4, v2, Ll2/c;->k:J

    .line 774
    .line 775
    :cond_25
    iget v0, v3, Lk2/l;->c:I

    .line 776
    .line 777
    iput v0, v2, Ll2/c;->n:I

    .line 778
    .line 779
    goto :goto_19

    .line 780
    :cond_26
    :goto_18
    const/4 v0, 0x1

    .line 781
    invoke-virtual {v1, v0}, Lk2/f;->f(I)V

    .line 782
    .line 783
    .line 784
    const/4 v0, 0x0

    .line 785
    iput v0, v2, Ll2/c;->h:I

    .line 786
    .line 787
    goto :goto_1a

    .line 788
    :cond_27
    :goto_19
    const/4 v0, 0x1

    .line 789
    iget-object v4, v2, Ll2/c;->g:Lk2/o;

    .line 790
    .line 791
    iget v5, v2, Ll2/c;->n:I

    .line 792
    .line 793
    invoke-interface {v4, v1, v5, v0}, Lk2/o;->a(Lk2/f;IZ)I

    .line 794
    .line 795
    .line 796
    move-result v0

    .line 797
    const/4 v1, -0x1

    .line 798
    if-ne v0, v1, :cond_28

    .line 799
    .line 800
    move v3, v1

    .line 801
    goto :goto_1b

    .line 802
    :cond_28
    iget v1, v2, Ll2/c;->n:I

    .line 803
    .line 804
    sub-int/2addr v1, v0

    .line 805
    iput v1, v2, Ll2/c;->n:I

    .line 806
    .line 807
    if-lez v1, :cond_29

    .line 808
    .line 809
    :goto_1a
    const/4 v3, 0x0

    .line 810
    goto :goto_1b

    .line 811
    :cond_29
    iget-wide v0, v2, Ll2/c;->k:J

    .line 812
    .line 813
    iget-wide v4, v2, Ll2/c;->l:J

    .line 814
    .line 815
    const-wide/32 v6, 0xf4240

    .line 816
    .line 817
    .line 818
    mul-long/2addr v4, v6

    .line 819
    iget v6, v3, Lk2/l;->d:I

    .line 820
    .line 821
    int-to-long v6, v6

    .line 822
    div-long/2addr v4, v6

    .line 823
    add-long v7, v4, v0

    .line 824
    .line 825
    iget-object v6, v2, Ll2/c;->g:Lk2/o;

    .line 826
    .line 827
    const/4 v9, 0x1

    .line 828
    iget v10, v3, Lk2/l;->c:I

    .line 829
    .line 830
    const/4 v11, 0x0

    .line 831
    const/4 v12, 0x0

    .line 832
    invoke-interface/range {v6 .. v12}, Lk2/o;->b(JIIILk2/n;)V

    .line 833
    .line 834
    .line 835
    iget-wide v0, v2, Ll2/c;->l:J

    .line 836
    .line 837
    iget v3, v3, Lk2/l;->g:I

    .line 838
    .line 839
    int-to-long v3, v3

    .line 840
    add-long/2addr v0, v3

    .line 841
    iput-wide v0, v2, Ll2/c;->l:J

    .line 842
    .line 843
    const/4 v0, 0x0

    .line 844
    iput v0, v2, Ll2/c;->n:I

    .line 845
    .line 846
    move v3, v0

    .line 847
    :goto_1b
    return v3
.end method

.method public final b(Lw2/p;)V
    .locals 2

    .line 1
    iput-object p1, p0, Ll2/c;->f:Lk2/i;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lw2/p;->C(II)Lk2/o;

    move-result-object p1

    iput-object p1, p0, Ll2/c;->g:Lk2/o;

    iget-object p1, p0, Ll2/c;->f:Lk2/i;

    check-cast p1, Lw2/p;

    invoke-virtual {p1}, Lw2/p;->j()V

    return-void
.end method

.method public final c(Lk2/f;)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ll2/c;->f(Lk2/f;Z)Z

    move-result p1

    return p1
.end method

.method public final d(Lk2/f;)Ll2/a;
    .locals 8

    .line 1
    iget-object v0, p0, Ll2/c;->b:Lb3/h;

    .line 2
    .line 3
    iget-object v1, v0, Lb3/h;->c:Ljava/io/Serializable;

    .line 4
    .line 5
    check-cast v1, [B

    .line 6
    .line 7
    const/4 v2, 0x4

    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-virtual {p1, v1, v3, v2, v3}, Lk2/f;->b([BIIZ)Z

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v3}, Lb3/h;->q(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lb3/h;->b()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iget-object v1, p0, Ll2/c;->c:Lk2/l;

    .line 20
    .line 21
    invoke-static {v0, v1}, Lk2/l;->b(ILk2/l;)Z

    .line 22
    .line 23
    .line 24
    new-instance v0, Ll2/a;

    .line 25
    .line 26
    iget-wide v3, p1, Lk2/f;->c:J

    .line 27
    .line 28
    iget-wide v5, p1, Lk2/f;->d:J

    .line 29
    .line 30
    iget-object v7, p0, Ll2/c;->c:Lk2/l;

    .line 31
    .line 32
    move-object v2, v0

    .line 33
    invoke-direct/range {v2 .. v7}, Ll2/a;-><init>(JJLk2/l;)V

    .line 34
    .line 35
    .line 36
    return-object v0
.end method

.method public final e(Lk2/f;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Ll2/c;->j:Ll2/d;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0}, Ll2/d;->c()J

    .line 7
    .line 8
    .line 9
    move-result-wide v2

    .line 10
    const-wide/16 v4, -0x1

    .line 11
    .line 12
    cmp-long v0, v2, v4

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-wide v4, p1, Lk2/f;->d:J

    .line 17
    .line 18
    iget v0, p1, Lk2/f;->f:I

    .line 19
    .line 20
    int-to-long v6, v0

    .line 21
    add-long/2addr v4, v6

    .line 22
    const-wide/16 v6, 0x4

    .line 23
    .line 24
    sub-long/2addr v2, v6

    .line 25
    cmp-long v0, v4, v2

    .line 26
    .line 27
    if-lez v0, :cond_0

    .line 28
    .line 29
    return v1

    .line 30
    :cond_0
    :try_start_0
    iget-object v0, p0, Ll2/c;->b:Lb3/h;

    .line 31
    .line 32
    iget-object v0, v0, Lb3/h;->c:Ljava/io/Serializable;

    .line 33
    .line 34
    check-cast v0, [B

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    const/4 v3, 0x4

    .line 38
    invoke-virtual {p1, v0, v2, v3, v1}, Lk2/f;->b([BIIZ)Z

    .line 39
    .line 40
    .line 41
    move-result p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    xor-int/2addr p1, v1

    .line 43
    return p1

    .line 44
    :catch_0
    return v1
.end method

.method public final f(Lk2/f;Z)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const/16 v2, 0x4000

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/high16 v2, 0x20000

    .line 11
    .line 12
    :goto_0
    const/4 v3, 0x0

    .line 13
    iput v3, v1, Lk2/f;->f:I

    .line 14
    .line 15
    iget-wide v4, v1, Lk2/f;->d:J

    .line 16
    .line 17
    const-wide/16 v6, 0x0

    .line 18
    .line 19
    cmp-long v4, v4, v6

    .line 20
    .line 21
    if-nez v4, :cond_6

    .line 22
    .line 23
    iget-object v4, v0, Ll2/c;->e:Lk2/k;

    .line 24
    .line 25
    iget-object v4, v4, Lk2/k;->a:Lb3/h;

    .line 26
    .line 27
    const/4 v5, 0x0

    .line 28
    move v7, v3

    .line 29
    move-object v6, v5

    .line 30
    :goto_1
    :try_start_0
    iget-object v8, v4, Lb3/h;->c:Ljava/io/Serializable;

    .line 31
    .line 32
    check-cast v8, [B

    .line 33
    .line 34
    const/16 v9, 0xa

    .line 35
    .line 36
    invoke-virtual {v1, v8, v3, v9, v3}, Lk2/f;->b([BIIZ)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4, v3}, Lb3/h;->q(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4}, Lb3/h;->j()I

    .line 43
    .line 44
    .line 45
    move-result v8

    .line 46
    const v10, 0x494433

    .line 47
    .line 48
    .line 49
    if-eq v8, v10, :cond_1

    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_1
    const/4 v8, 0x3

    .line 53
    invoke-virtual {v4, v8}, Lb3/h;->r(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4}, Lb3/h;->g()I

    .line 57
    .line 58
    .line 59
    move-result v8

    .line 60
    add-int/lit8 v10, v8, 0xa

    .line 61
    .line 62
    if-nez v6, :cond_2

    .line 63
    .line 64
    new-array v6, v10, [B

    .line 65
    .line 66
    iget-object v11, v4, Lb3/h;->c:Ljava/io/Serializable;

    .line 67
    .line 68
    check-cast v11, [B

    .line 69
    .line 70
    invoke-static {v11, v3, v6, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v6, v9, v8, v3}, Lk2/f;->b([BIIZ)Z

    .line 74
    .line 75
    .line 76
    new-instance v8, Lr2/i;

    .line 77
    .line 78
    invoke-direct {v8, v5}, Lr2/i;-><init>(Lh0/c;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v8, v6, v10}, Lr2/i;->a([BI)Lp2/b;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    goto :goto_2

    .line 86
    :cond_2
    invoke-virtual {v1, v8, v3}, Lk2/f;->a(IZ)Z

    .line 87
    .line 88
    .line 89
    :goto_2
    add-int/2addr v7, v10

    .line 90
    goto :goto_1

    .line 91
    :catch_0
    :goto_3
    iput v3, v1, Lk2/f;->f:I

    .line 92
    .line 93
    invoke-virtual {v1, v7, v3}, Lk2/f;->a(IZ)Z

    .line 94
    .line 95
    .line 96
    iput-object v6, v0, Ll2/c;->i:Lp2/b;

    .line 97
    .line 98
    if-eqz v6, :cond_5

    .line 99
    .line 100
    iget-object v4, v0, Ll2/c;->d:Lk2/j;

    .line 101
    .line 102
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    move v5, v3

    .line 106
    :goto_4
    iget-object v7, v6, Lp2/b;->a:[Lp2/a;

    .line 107
    .line 108
    array-length v8, v7

    .line 109
    if-ge v5, v8, :cond_5

    .line 110
    .line 111
    aget-object v7, v7, v5

    .line 112
    .line 113
    instance-of v8, v7, Lr2/e;

    .line 114
    .line 115
    const-string v9, "iTunSMPB"

    .line 116
    .line 117
    if-eqz v8, :cond_3

    .line 118
    .line 119
    check-cast v7, Lr2/e;

    .line 120
    .line 121
    iget-object v8, v7, Lr2/e;->c:Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v8

    .line 127
    if-eqz v8, :cond_4

    .line 128
    .line 129
    iget-object v7, v7, Lr2/e;->d:Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {v4, v7}, Lk2/j;->a(Ljava/lang/String;)Z

    .line 132
    .line 133
    .line 134
    move-result v7

    .line 135
    if-eqz v7, :cond_4

    .line 136
    .line 137
    goto :goto_5

    .line 138
    :cond_3
    instance-of v8, v7, Lr2/k;

    .line 139
    .line 140
    if-eqz v8, :cond_4

    .line 141
    .line 142
    check-cast v7, Lr2/k;

    .line 143
    .line 144
    iget-object v8, v7, Lr2/k;->b:Ljava/lang/String;

    .line 145
    .line 146
    const-string v10, "com.apple.iTunes"

    .line 147
    .line 148
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v8

    .line 152
    if-eqz v8, :cond_4

    .line 153
    .line 154
    iget-object v8, v7, Lr2/k;->c:Ljava/lang/String;

    .line 155
    .line 156
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v8

    .line 160
    if-eqz v8, :cond_4

    .line 161
    .line 162
    iget-object v7, v7, Lr2/k;->d:Ljava/lang/String;

    .line 163
    .line 164
    invoke-virtual {v4, v7}, Lk2/j;->a(Ljava/lang/String;)Z

    .line 165
    .line 166
    .line 167
    move-result v7

    .line 168
    if-eqz v7, :cond_4

    .line 169
    .line 170
    goto :goto_5

    .line 171
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 172
    .line 173
    goto :goto_4

    .line 174
    :cond_5
    :goto_5
    iget-wide v4, v1, Lk2/f;->d:J

    .line 175
    .line 176
    iget v6, v1, Lk2/f;->f:I

    .line 177
    .line 178
    int-to-long v6, v6

    .line 179
    add-long/2addr v4, v6

    .line 180
    long-to-int v4, v4

    .line 181
    if-nez p2, :cond_7

    .line 182
    .line 183
    invoke-virtual {v1, v4}, Lk2/f;->f(I)V

    .line 184
    .line 185
    .line 186
    goto :goto_6

    .line 187
    :cond_6
    move v4, v3

    .line 188
    :cond_7
    :goto_6
    move v5, v3

    .line 189
    move v6, v5

    .line 190
    move v7, v6

    .line 191
    :goto_7
    invoke-virtual/range {p0 .. p1}, Ll2/c;->e(Lk2/f;)Z

    .line 192
    .line 193
    .line 194
    move-result v8

    .line 195
    const/4 v9, 0x1

    .line 196
    if-eqz v8, :cond_9

    .line 197
    .line 198
    if-lez v6, :cond_8

    .line 199
    .line 200
    goto :goto_a

    .line 201
    :cond_8
    new-instance v1, Ljava/io/EOFException;

    .line 202
    .line 203
    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    .line 204
    .line 205
    .line 206
    throw v1

    .line 207
    :cond_9
    iget-object v8, v0, Ll2/c;->b:Lb3/h;

    .line 208
    .line 209
    invoke-virtual {v8, v3}, Lb3/h;->q(I)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v8}, Lb3/h;->b()I

    .line 213
    .line 214
    .line 215
    move-result v8

    .line 216
    if-eqz v5, :cond_b

    .line 217
    .line 218
    int-to-long v10, v5

    .line 219
    const v12, -0x1f400

    .line 220
    .line 221
    .line 222
    and-int/2addr v12, v8

    .line 223
    int-to-long v12, v12

    .line 224
    const-wide/32 v14, -0x1f400

    .line 225
    .line 226
    .line 227
    and-long/2addr v10, v14

    .line 228
    cmp-long v10, v12, v10

    .line 229
    .line 230
    if-nez v10, :cond_a

    .line 231
    .line 232
    move v10, v9

    .line 233
    goto :goto_8

    .line 234
    :cond_a
    move v10, v3

    .line 235
    :goto_8
    if-eqz v10, :cond_c

    .line 236
    .line 237
    :cond_b
    invoke-static {v8}, Lk2/l;->a(I)I

    .line 238
    .line 239
    .line 240
    move-result v10

    .line 241
    const/4 v11, -0x1

    .line 242
    if-ne v10, v11, :cond_10

    .line 243
    .line 244
    :cond_c
    add-int/lit8 v5, v7, 0x1

    .line 245
    .line 246
    if-ne v7, v2, :cond_e

    .line 247
    .line 248
    if-eqz p2, :cond_d

    .line 249
    .line 250
    return v3

    .line 251
    :cond_d
    new-instance v1, Lf2/z;

    .line 252
    .line 253
    const-string v2, "Searched too many bytes."

    .line 254
    .line 255
    invoke-direct {v1, v2}, Lf2/z;-><init>(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    throw v1

    .line 259
    :cond_e
    if-eqz p2, :cond_f

    .line 260
    .line 261
    iput v3, v1, Lk2/f;->f:I

    .line 262
    .line 263
    add-int v6, v4, v5

    .line 264
    .line 265
    invoke-virtual {v1, v6, v3}, Lk2/f;->a(IZ)Z

    .line 266
    .line 267
    .line 268
    goto :goto_9

    .line 269
    :cond_f
    invoke-virtual {v1, v9}, Lk2/f;->f(I)V

    .line 270
    .line 271
    .line 272
    :goto_9
    move v6, v3

    .line 273
    move v7, v5

    .line 274
    move v5, v6

    .line 275
    goto :goto_7

    .line 276
    :cond_10
    add-int/lit8 v6, v6, 0x1

    .line 277
    .line 278
    if-ne v6, v9, :cond_11

    .line 279
    .line 280
    iget-object v5, v0, Ll2/c;->c:Lk2/l;

    .line 281
    .line 282
    invoke-static {v8, v5}, Lk2/l;->b(ILk2/l;)Z

    .line 283
    .line 284
    .line 285
    move v5, v8

    .line 286
    goto :goto_c

    .line 287
    :cond_11
    const/4 v8, 0x4

    .line 288
    if-ne v6, v8, :cond_13

    .line 289
    .line 290
    :goto_a
    if-eqz p2, :cond_12

    .line 291
    .line 292
    add-int/2addr v4, v7

    .line 293
    invoke-virtual {v1, v4}, Lk2/f;->f(I)V

    .line 294
    .line 295
    .line 296
    goto :goto_b

    .line 297
    :cond_12
    iput v3, v1, Lk2/f;->f:I

    .line 298
    .line 299
    :goto_b
    iput v5, v0, Ll2/c;->h:I

    .line 300
    .line 301
    return v9

    .line 302
    :cond_13
    :goto_c
    add-int/lit8 v10, v10, -0x4

    .line 303
    .line 304
    invoke-virtual {v1, v10, v3}, Lk2/f;->a(IZ)Z

    .line 305
    .line 306
    .line 307
    goto :goto_7
.end method
