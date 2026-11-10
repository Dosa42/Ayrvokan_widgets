.class public final Ln2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln2/j;


# instance fields
.field public final a:Lb3/g;

.field public final b:Lb3/h;

.field public final c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Lk2/o;

.field public f:I

.field public g:I

.field public h:Z

.field public i:J

.field public j:Lf2/t;

.field public k:I

.field public l:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb3/g;

    const/16 v1, 0x80

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lb3/g;-><init>([B)V

    iput-object v0, p0, Ln2/b;->a:Lb3/g;

    new-instance v1, Lb3/h;

    iget-object v0, v0, Lb3/g;->b:[B

    invoke-direct {v1, v0}, Lb3/h;-><init>([B)V

    iput-object v1, p0, Ln2/b;->b:Lb3/h;

    const/4 v0, 0x0

    iput v0, p0, Ln2/b;->f:I

    iput-object p1, p0, Ln2/b;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final b(Lb3/h;)V
    .locals 28

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
    if-lez v2, :cond_3e

    .line 11
    .line 12
    iget v3, v0, Ln2/b;->f:I

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x2

    .line 16
    const/4 v6, 0x1

    .line 17
    const/16 v7, 0xb

    .line 18
    .line 19
    iget-object v8, v0, Ln2/b;->b:Lb3/h;

    .line 20
    .line 21
    if-eqz v3, :cond_39

    .line 22
    .line 23
    if-eq v3, v6, :cond_2

    .line 24
    .line 25
    if-eq v3, v5, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget v3, v0, Ln2/b;->k:I

    .line 29
    .line 30
    iget v5, v0, Ln2/b;->g:I

    .line 31
    .line 32
    sub-int/2addr v3, v5

    .line 33
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    iget-object v3, v0, Ln2/b;->e:Lk2/o;

    .line 38
    .line 39
    invoke-interface {v3, v2, v1}, Lk2/o;->d(ILb3/h;)V

    .line 40
    .line 41
    .line 42
    iget v3, v0, Ln2/b;->g:I

    .line 43
    .line 44
    add-int/2addr v3, v2

    .line 45
    iput v3, v0, Ln2/b;->g:I

    .line 46
    .line 47
    iget v9, v0, Ln2/b;->k:I

    .line 48
    .line 49
    if-ne v3, v9, :cond_0

    .line 50
    .line 51
    iget-object v5, v0, Ln2/b;->e:Lk2/o;

    .line 52
    .line 53
    iget-wide v6, v0, Ln2/b;->l:J

    .line 54
    .line 55
    const/4 v8, 0x1

    .line 56
    const/4 v10, 0x0

    .line 57
    const/4 v11, 0x0

    .line 58
    invoke-interface/range {v5 .. v11}, Lk2/o;->b(JIIILk2/n;)V

    .line 59
    .line 60
    .line 61
    iget-wide v2, v0, Ln2/b;->l:J

    .line 62
    .line 63
    iget-wide v5, v0, Ln2/b;->i:J

    .line 64
    .line 65
    add-long/2addr v2, v5

    .line 66
    iput-wide v2, v0, Ln2/b;->l:J

    .line 67
    .line 68
    iput v4, v0, Ln2/b;->f:I

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    iget-object v3, v8, Lb3/h;->c:Ljava/io/Serializable;

    .line 72
    .line 73
    check-cast v3, [B

    .line 74
    .line 75
    iget v9, v0, Ln2/b;->g:I

    .line 76
    .line 77
    const/16 v10, 0x80

    .line 78
    .line 79
    rsub-int v9, v9, 0x80

    .line 80
    .line 81
    invoke-static {v2, v9}, Ljava/lang/Math;->min(II)I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    iget v9, v0, Ln2/b;->g:I

    .line 86
    .line 87
    invoke-virtual {v1, v3, v9, v2}, Lb3/h;->a([BII)V

    .line 88
    .line 89
    .line 90
    iget v3, v0, Ln2/b;->g:I

    .line 91
    .line 92
    add-int/2addr v3, v2

    .line 93
    iput v3, v0, Ln2/b;->g:I

    .line 94
    .line 95
    if-ne v3, v10, :cond_3

    .line 96
    .line 97
    move v2, v6

    .line 98
    goto :goto_1

    .line 99
    :cond_3
    move v2, v4

    .line 100
    :goto_1
    if-eqz v2, :cond_0

    .line 101
    .line 102
    iget-object v2, v0, Ln2/b;->a:Lb3/g;

    .line 103
    .line 104
    invoke-virtual {v2, v4}, Lb3/g;->i(I)V

    .line 105
    .line 106
    .line 107
    iget v3, v2, Lb3/g;->c:I

    .line 108
    .line 109
    const/16 v9, 0x8

    .line 110
    .line 111
    mul-int/2addr v3, v9

    .line 112
    iget v11, v2, Lb3/g;->d:I

    .line 113
    .line 114
    add-int/2addr v3, v11

    .line 115
    const/16 v11, 0x28

    .line 116
    .line 117
    invoke-virtual {v2, v11}, Lb3/g;->l(I)V

    .line 118
    .line 119
    .line 120
    const/4 v11, 0x5

    .line 121
    invoke-virtual {v2, v11}, Lb3/g;->e(I)I

    .line 122
    .line 123
    .line 124
    move-result v12

    .line 125
    const/16 v13, 0xa

    .line 126
    .line 127
    if-le v12, v13, :cond_4

    .line 128
    .line 129
    move v12, v6

    .line 130
    goto :goto_2

    .line 131
    :cond_4
    move v12, v4

    .line 132
    :goto_2
    invoke-virtual {v2, v3}, Lb3/g;->i(I)V

    .line 133
    .line 134
    .line 135
    sget-object v3, Lc1/b;->m:[I

    .line 136
    .line 137
    sget-object v14, Lc1/b;->k:[I

    .line 138
    .line 139
    const/4 v15, 0x3

    .line 140
    const/16 v16, -0x1

    .line 141
    .line 142
    if-eqz v12, :cond_31

    .line 143
    .line 144
    const/16 v12, 0x10

    .line 145
    .line 146
    invoke-virtual {v2, v12}, Lb3/g;->l(I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2, v5}, Lb3/g;->e(I)I

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    if-eqz v4, :cond_7

    .line 154
    .line 155
    if-eq v4, v6, :cond_6

    .line 156
    .line 157
    if-eq v4, v5, :cond_5

    .line 158
    .line 159
    move/from16 v4, v16

    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_5
    move v4, v5

    .line 163
    goto :goto_3

    .line 164
    :cond_6
    move v4, v6

    .line 165
    goto :goto_3

    .line 166
    :cond_7
    const/4 v4, 0x0

    .line 167
    :goto_3
    invoke-virtual {v2, v15}, Lb3/g;->l(I)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v2, v7}, Lb3/g;->e(I)I

    .line 171
    .line 172
    .line 173
    move-result v7

    .line 174
    add-int/2addr v7, v6

    .line 175
    mul-int/2addr v7, v5

    .line 176
    invoke-virtual {v2, v5}, Lb3/g;->e(I)I

    .line 177
    .line 178
    .line 179
    move-result v10

    .line 180
    if-ne v10, v15, :cond_8

    .line 181
    .line 182
    sget-object v14, Lc1/b;->l:[I

    .line 183
    .line 184
    invoke-virtual {v2, v5}, Lb3/g;->e(I)I

    .line 185
    .line 186
    .line 187
    move-result v16

    .line 188
    aget v14, v14, v16

    .line 189
    .line 190
    move/from16 v19, v15

    .line 191
    .line 192
    const/4 v5, 0x6

    .line 193
    goto :goto_4

    .line 194
    :cond_8
    invoke-virtual {v2, v5}, Lb3/g;->e(I)I

    .line 195
    .line 196
    .line 197
    move-result v16

    .line 198
    sget-object v18, Lc1/b;->j:[I

    .line 199
    .line 200
    aget v18, v18, v16

    .line 201
    .line 202
    aget v14, v14, v10

    .line 203
    .line 204
    move/from16 v19, v16

    .line 205
    .line 206
    move/from16 v5, v18

    .line 207
    .line 208
    :goto_4
    mul-int/lit16 v12, v5, 0x100

    .line 209
    .line 210
    invoke-virtual {v2, v15}, Lb3/g;->e(I)I

    .line 211
    .line 212
    .line 213
    move-result v6

    .line 214
    invoke-virtual {v2}, Lb3/g;->d()Z

    .line 215
    .line 216
    .line 217
    move-result v16

    .line 218
    aget v3, v3, v6

    .line 219
    .line 220
    add-int v3, v3, v16

    .line 221
    .line 222
    invoke-virtual {v2, v13}, Lb3/g;->l(I)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v2}, Lb3/g;->d()Z

    .line 226
    .line 227
    .line 228
    move-result v13

    .line 229
    if-eqz v13, :cond_9

    .line 230
    .line 231
    invoke-virtual {v2, v9}, Lb3/g;->l(I)V

    .line 232
    .line 233
    .line 234
    :cond_9
    if-nez v6, :cond_a

    .line 235
    .line 236
    invoke-virtual {v2, v11}, Lb3/g;->l(I)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v2}, Lb3/g;->d()Z

    .line 240
    .line 241
    .line 242
    move-result v13

    .line 243
    if-eqz v13, :cond_a

    .line 244
    .line 245
    invoke-virtual {v2, v9}, Lb3/g;->l(I)V

    .line 246
    .line 247
    .line 248
    :cond_a
    const/4 v13, 0x1

    .line 249
    if-ne v4, v13, :cond_b

    .line 250
    .line 251
    invoke-virtual {v2}, Lb3/g;->d()Z

    .line 252
    .line 253
    .line 254
    move-result v13

    .line 255
    if-eqz v13, :cond_b

    .line 256
    .line 257
    const/16 v13, 0x10

    .line 258
    .line 259
    invoke-virtual {v2, v13}, Lb3/g;->l(I)V

    .line 260
    .line 261
    .line 262
    :cond_b
    invoke-virtual {v2}, Lb3/g;->d()Z

    .line 263
    .line 264
    .line 265
    move-result v13

    .line 266
    if-eqz v13, :cond_25

    .line 267
    .line 268
    const/4 v13, 0x2

    .line 269
    if-le v6, v13, :cond_c

    .line 270
    .line 271
    invoke-virtual {v2, v13}, Lb3/g;->l(I)V

    .line 272
    .line 273
    .line 274
    :cond_c
    and-int/lit8 v18, v6, 0x1

    .line 275
    .line 276
    if-eqz v18, :cond_d

    .line 277
    .line 278
    if-le v6, v13, :cond_d

    .line 279
    .line 280
    const/4 v13, 0x6

    .line 281
    invoke-virtual {v2, v13}, Lb3/g;->l(I)V

    .line 282
    .line 283
    .line 284
    goto :goto_5

    .line 285
    :cond_d
    const/4 v13, 0x6

    .line 286
    :goto_5
    and-int/lit8 v17, v6, 0x4

    .line 287
    .line 288
    if-eqz v17, :cond_e

    .line 289
    .line 290
    invoke-virtual {v2, v13}, Lb3/g;->l(I)V

    .line 291
    .line 292
    .line 293
    :cond_e
    if-eqz v16, :cond_f

    .line 294
    .line 295
    invoke-virtual {v2}, Lb3/g;->d()Z

    .line 296
    .line 297
    .line 298
    move-result v13

    .line 299
    if-eqz v13, :cond_f

    .line 300
    .line 301
    invoke-virtual {v2, v11}, Lb3/g;->l(I)V

    .line 302
    .line 303
    .line 304
    :cond_f
    if-nez v4, :cond_25

    .line 305
    .line 306
    invoke-virtual {v2}, Lb3/g;->d()Z

    .line 307
    .line 308
    .line 309
    move-result v13

    .line 310
    if-eqz v13, :cond_10

    .line 311
    .line 312
    const/4 v13, 0x6

    .line 313
    invoke-virtual {v2, v13}, Lb3/g;->l(I)V

    .line 314
    .line 315
    .line 316
    goto :goto_6

    .line 317
    :cond_10
    const/4 v13, 0x6

    .line 318
    :goto_6
    if-nez v6, :cond_11

    .line 319
    .line 320
    invoke-virtual {v2}, Lb3/g;->d()Z

    .line 321
    .line 322
    .line 323
    move-result v16

    .line 324
    if-eqz v16, :cond_11

    .line 325
    .line 326
    invoke-virtual {v2, v13}, Lb3/g;->l(I)V

    .line 327
    .line 328
    .line 329
    :cond_11
    invoke-virtual {v2}, Lb3/g;->d()Z

    .line 330
    .line 331
    .line 332
    move-result v16

    .line 333
    if-eqz v16, :cond_12

    .line 334
    .line 335
    invoke-virtual {v2, v13}, Lb3/g;->l(I)V

    .line 336
    .line 337
    .line 338
    :cond_12
    const/4 v13, 0x2

    .line 339
    invoke-virtual {v2, v13}, Lb3/g;->e(I)I

    .line 340
    .line 341
    .line 342
    move-result v9

    .line 343
    const/4 v15, 0x1

    .line 344
    if-ne v9, v15, :cond_13

    .line 345
    .line 346
    invoke-virtual {v2, v11}, Lb3/g;->l(I)V

    .line 347
    .line 348
    .line 349
    move v9, v13

    .line 350
    goto/16 :goto_a

    .line 351
    .line 352
    :cond_13
    if-ne v9, v13, :cond_14

    .line 353
    .line 354
    const/16 v9, 0xc

    .line 355
    .line 356
    invoke-virtual {v2, v9}, Lb3/g;->l(I)V

    .line 357
    .line 358
    .line 359
    goto/16 :goto_9

    .line 360
    .line 361
    :cond_14
    const/4 v13, 0x3

    .line 362
    if-ne v9, v13, :cond_20

    .line 363
    .line 364
    invoke-virtual {v2, v11}, Lb3/g;->e(I)I

    .line 365
    .line 366
    .line 367
    move-result v9

    .line 368
    invoke-virtual {v2}, Lb3/g;->d()Z

    .line 369
    .line 370
    .line 371
    move-result v13

    .line 372
    if-eqz v13, :cond_1d

    .line 373
    .line 374
    invoke-virtual {v2, v11}, Lb3/g;->l(I)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v2}, Lb3/g;->d()Z

    .line 378
    .line 379
    .line 380
    move-result v13

    .line 381
    if-eqz v13, :cond_15

    .line 382
    .line 383
    const/4 v13, 0x4

    .line 384
    invoke-virtual {v2, v13}, Lb3/g;->l(I)V

    .line 385
    .line 386
    .line 387
    goto :goto_7

    .line 388
    :cond_15
    const/4 v13, 0x4

    .line 389
    :goto_7
    invoke-virtual {v2}, Lb3/g;->d()Z

    .line 390
    .line 391
    .line 392
    move-result v15

    .line 393
    if-eqz v15, :cond_16

    .line 394
    .line 395
    invoke-virtual {v2, v13}, Lb3/g;->l(I)V

    .line 396
    .line 397
    .line 398
    :cond_16
    invoke-virtual {v2}, Lb3/g;->d()Z

    .line 399
    .line 400
    .line 401
    move-result v15

    .line 402
    if-eqz v15, :cond_17

    .line 403
    .line 404
    invoke-virtual {v2, v13}, Lb3/g;->l(I)V

    .line 405
    .line 406
    .line 407
    :cond_17
    invoke-virtual {v2}, Lb3/g;->d()Z

    .line 408
    .line 409
    .line 410
    move-result v15

    .line 411
    if-eqz v15, :cond_18

    .line 412
    .line 413
    invoke-virtual {v2, v13}, Lb3/g;->l(I)V

    .line 414
    .line 415
    .line 416
    :cond_18
    invoke-virtual {v2}, Lb3/g;->d()Z

    .line 417
    .line 418
    .line 419
    move-result v15

    .line 420
    if-eqz v15, :cond_19

    .line 421
    .line 422
    invoke-virtual {v2, v13}, Lb3/g;->l(I)V

    .line 423
    .line 424
    .line 425
    :cond_19
    invoke-virtual {v2}, Lb3/g;->d()Z

    .line 426
    .line 427
    .line 428
    move-result v15

    .line 429
    if-eqz v15, :cond_1a

    .line 430
    .line 431
    invoke-virtual {v2, v13}, Lb3/g;->l(I)V

    .line 432
    .line 433
    .line 434
    :cond_1a
    invoke-virtual {v2}, Lb3/g;->d()Z

    .line 435
    .line 436
    .line 437
    move-result v15

    .line 438
    if-eqz v15, :cond_1b

    .line 439
    .line 440
    invoke-virtual {v2, v13}, Lb3/g;->l(I)V

    .line 441
    .line 442
    .line 443
    :cond_1b
    invoke-virtual {v2}, Lb3/g;->d()Z

    .line 444
    .line 445
    .line 446
    move-result v15

    .line 447
    if-eqz v15, :cond_1d

    .line 448
    .line 449
    invoke-virtual {v2}, Lb3/g;->d()Z

    .line 450
    .line 451
    .line 452
    move-result v15

    .line 453
    if-eqz v15, :cond_1c

    .line 454
    .line 455
    invoke-virtual {v2, v13}, Lb3/g;->l(I)V

    .line 456
    .line 457
    .line 458
    :cond_1c
    invoke-virtual {v2}, Lb3/g;->d()Z

    .line 459
    .line 460
    .line 461
    move-result v15

    .line 462
    if-eqz v15, :cond_1d

    .line 463
    .line 464
    invoke-virtual {v2, v13}, Lb3/g;->l(I)V

    .line 465
    .line 466
    .line 467
    :cond_1d
    invoke-virtual {v2}, Lb3/g;->d()Z

    .line 468
    .line 469
    .line 470
    move-result v13

    .line 471
    if-eqz v13, :cond_1e

    .line 472
    .line 473
    invoke-virtual {v2, v11}, Lb3/g;->l(I)V

    .line 474
    .line 475
    .line 476
    invoke-virtual {v2}, Lb3/g;->d()Z

    .line 477
    .line 478
    .line 479
    move-result v13

    .line 480
    if-eqz v13, :cond_1e

    .line 481
    .line 482
    const/4 v13, 0x7

    .line 483
    invoke-virtual {v2, v13}, Lb3/g;->l(I)V

    .line 484
    .line 485
    .line 486
    invoke-virtual {v2}, Lb3/g;->d()Z

    .line 487
    .line 488
    .line 489
    move-result v13

    .line 490
    if-eqz v13, :cond_1e

    .line 491
    .line 492
    const/16 v13, 0x8

    .line 493
    .line 494
    invoke-virtual {v2, v13}, Lb3/g;->l(I)V

    .line 495
    .line 496
    .line 497
    goto :goto_8

    .line 498
    :cond_1e
    const/16 v13, 0x8

    .line 499
    .line 500
    :goto_8
    const/4 v15, 0x2

    .line 501
    add-int/2addr v9, v15

    .line 502
    mul-int/2addr v9, v13

    .line 503
    invoke-virtual {v2, v9}, Lb3/g;->l(I)V

    .line 504
    .line 505
    .line 506
    iget v9, v2, Lb3/g;->d:I

    .line 507
    .line 508
    if-nez v9, :cond_1f

    .line 509
    .line 510
    goto :goto_9

    .line 511
    :cond_1f
    const/4 v9, 0x0

    .line 512
    iput v9, v2, Lb3/g;->d:I

    .line 513
    .line 514
    iget v9, v2, Lb3/g;->c:I

    .line 515
    .line 516
    const/4 v13, 0x1

    .line 517
    add-int/2addr v9, v13

    .line 518
    iput v9, v2, Lb3/g;->c:I

    .line 519
    .line 520
    invoke-virtual {v2}, Lb3/g;->a()V

    .line 521
    .line 522
    .line 523
    :cond_20
    :goto_9
    const/4 v9, 0x2

    .line 524
    :goto_a
    if-ge v6, v9, :cond_22

    .line 525
    .line 526
    invoke-virtual {v2}, Lb3/g;->d()Z

    .line 527
    .line 528
    .line 529
    move-result v9

    .line 530
    const/16 v13, 0xe

    .line 531
    .line 532
    if-eqz v9, :cond_21

    .line 533
    .line 534
    invoke-virtual {v2, v13}, Lb3/g;->l(I)V

    .line 535
    .line 536
    .line 537
    :cond_21
    if-nez v6, :cond_22

    .line 538
    .line 539
    invoke-virtual {v2}, Lb3/g;->d()Z

    .line 540
    .line 541
    .line 542
    move-result v9

    .line 543
    if-eqz v9, :cond_22

    .line 544
    .line 545
    invoke-virtual {v2, v13}, Lb3/g;->l(I)V

    .line 546
    .line 547
    .line 548
    :cond_22
    invoke-virtual {v2}, Lb3/g;->d()Z

    .line 549
    .line 550
    .line 551
    move-result v9

    .line 552
    if-eqz v9, :cond_25

    .line 553
    .line 554
    move/from16 v15, v19

    .line 555
    .line 556
    if-nez v15, :cond_23

    .line 557
    .line 558
    invoke-virtual {v2, v11}, Lb3/g;->l(I)V

    .line 559
    .line 560
    .line 561
    goto :goto_c

    .line 562
    :cond_23
    const/4 v9, 0x0

    .line 563
    :goto_b
    if-ge v9, v5, :cond_26

    .line 564
    .line 565
    invoke-virtual {v2}, Lb3/g;->d()Z

    .line 566
    .line 567
    .line 568
    move-result v13

    .line 569
    if-eqz v13, :cond_24

    .line 570
    .line 571
    invoke-virtual {v2, v11}, Lb3/g;->l(I)V

    .line 572
    .line 573
    .line 574
    :cond_24
    add-int/lit8 v9, v9, 0x1

    .line 575
    .line 576
    goto :goto_b

    .line 577
    :cond_25
    move/from16 v15, v19

    .line 578
    .line 579
    :cond_26
    :goto_c
    invoke-virtual {v2}, Lb3/g;->d()Z

    .line 580
    .line 581
    .line 582
    move-result v5

    .line 583
    if-eqz v5, :cond_2b

    .line 584
    .line 585
    invoke-virtual {v2, v11}, Lb3/g;->l(I)V

    .line 586
    .line 587
    .line 588
    const/4 v5, 0x2

    .line 589
    if-ne v6, v5, :cond_27

    .line 590
    .line 591
    const/4 v9, 0x4

    .line 592
    invoke-virtual {v2, v9}, Lb3/g;->l(I)V

    .line 593
    .line 594
    .line 595
    :cond_27
    const/4 v9, 0x6

    .line 596
    if-lt v6, v9, :cond_28

    .line 597
    .line 598
    invoke-virtual {v2, v5}, Lb3/g;->l(I)V

    .line 599
    .line 600
    .line 601
    :cond_28
    invoke-virtual {v2}, Lb3/g;->d()Z

    .line 602
    .line 603
    .line 604
    move-result v5

    .line 605
    if-eqz v5, :cond_29

    .line 606
    .line 607
    const/16 v5, 0x8

    .line 608
    .line 609
    invoke-virtual {v2, v5}, Lb3/g;->l(I)V

    .line 610
    .line 611
    .line 612
    goto :goto_d

    .line 613
    :cond_29
    const/16 v5, 0x8

    .line 614
    .line 615
    :goto_d
    if-nez v6, :cond_2a

    .line 616
    .line 617
    invoke-virtual {v2}, Lb3/g;->d()Z

    .line 618
    .line 619
    .line 620
    move-result v6

    .line 621
    if-eqz v6, :cond_2a

    .line 622
    .line 623
    invoke-virtual {v2, v5}, Lb3/g;->l(I)V

    .line 624
    .line 625
    .line 626
    :cond_2a
    const/4 v5, 0x3

    .line 627
    if-ge v10, v5, :cond_2c

    .line 628
    .line 629
    invoke-virtual {v2}, Lb3/g;->k()V

    .line 630
    .line 631
    .line 632
    goto :goto_e

    .line 633
    :cond_2b
    const/4 v5, 0x3

    .line 634
    :cond_2c
    :goto_e
    if-nez v4, :cond_2d

    .line 635
    .line 636
    if-eq v15, v5, :cond_2d

    .line 637
    .line 638
    invoke-virtual {v2}, Lb3/g;->k()V

    .line 639
    .line 640
    .line 641
    :cond_2d
    const/4 v6, 0x2

    .line 642
    if-ne v4, v6, :cond_2f

    .line 643
    .line 644
    if-eq v15, v5, :cond_2e

    .line 645
    .line 646
    invoke-virtual {v2}, Lb3/g;->d()Z

    .line 647
    .line 648
    .line 649
    move-result v4

    .line 650
    if-eqz v4, :cond_2f

    .line 651
    .line 652
    :cond_2e
    const/4 v4, 0x6

    .line 653
    invoke-virtual {v2, v4}, Lb3/g;->l(I)V

    .line 654
    .line 655
    .line 656
    goto :goto_f

    .line 657
    :cond_2f
    const/4 v4, 0x6

    .line 658
    :goto_f
    invoke-virtual {v2}, Lb3/g;->d()Z

    .line 659
    .line 660
    .line 661
    move-result v5

    .line 662
    if-eqz v5, :cond_30

    .line 663
    .line 664
    invoke-virtual {v2, v4}, Lb3/g;->e(I)I

    .line 665
    .line 666
    .line 667
    move-result v4

    .line 668
    const/4 v5, 0x1

    .line 669
    if-ne v4, v5, :cond_30

    .line 670
    .line 671
    const/16 v4, 0x8

    .line 672
    .line 673
    invoke-virtual {v2, v4}, Lb3/g;->e(I)I

    .line 674
    .line 675
    .line 676
    move-result v2

    .line 677
    if-ne v2, v5, :cond_30

    .line 678
    .line 679
    const-string v2, "audio/eac3-joc"

    .line 680
    .line 681
    goto :goto_12

    .line 682
    :cond_30
    const-string v2, "audio/eac3"

    .line 683
    .line 684
    goto :goto_12

    .line 685
    :cond_31
    const/16 v4, 0x20

    .line 686
    .line 687
    invoke-virtual {v2, v4}, Lb3/g;->l(I)V

    .line 688
    .line 689
    .line 690
    const/4 v4, 0x2

    .line 691
    invoke-virtual {v2, v4}, Lb3/g;->e(I)I

    .line 692
    .line 693
    .line 694
    move-result v5

    .line 695
    const/4 v4, 0x3

    .line 696
    if-ne v5, v4, :cond_32

    .line 697
    .line 698
    const/4 v6, 0x0

    .line 699
    goto :goto_10

    .line 700
    :cond_32
    const-string v6, "audio/ac3"

    .line 701
    .line 702
    :goto_10
    const/4 v7, 0x6

    .line 703
    invoke-virtual {v2, v7}, Lb3/g;->e(I)I

    .line 704
    .line 705
    .line 706
    move-result v7

    .line 707
    invoke-static {v5, v7}, Lc1/b;->h(II)I

    .line 708
    .line 709
    .line 710
    move-result v7

    .line 711
    const/16 v9, 0x8

    .line 712
    .line 713
    invoke-virtual {v2, v9}, Lb3/g;->l(I)V

    .line 714
    .line 715
    .line 716
    invoke-virtual {v2, v4}, Lb3/g;->e(I)I

    .line 717
    .line 718
    .line 719
    move-result v9

    .line 720
    and-int/lit8 v4, v9, 0x1

    .line 721
    .line 722
    if-eqz v4, :cond_33

    .line 723
    .line 724
    const/4 v4, 0x1

    .line 725
    if-eq v9, v4, :cond_33

    .line 726
    .line 727
    const/4 v4, 0x2

    .line 728
    invoke-virtual {v2, v4}, Lb3/g;->l(I)V

    .line 729
    .line 730
    .line 731
    goto :goto_11

    .line 732
    :cond_33
    const/4 v4, 0x2

    .line 733
    :goto_11
    and-int/lit8 v10, v9, 0x4

    .line 734
    .line 735
    if-eqz v10, :cond_34

    .line 736
    .line 737
    invoke-virtual {v2, v4}, Lb3/g;->l(I)V

    .line 738
    .line 739
    .line 740
    :cond_34
    if-ne v9, v4, :cond_35

    .line 741
    .line 742
    invoke-virtual {v2, v4}, Lb3/g;->l(I)V

    .line 743
    .line 744
    .line 745
    :cond_35
    const/4 v4, 0x3

    .line 746
    if-ge v5, v4, :cond_36

    .line 747
    .line 748
    aget v16, v14, v5

    .line 749
    .line 750
    :cond_36
    invoke-virtual {v2}, Lb3/g;->d()Z

    .line 751
    .line 752
    .line 753
    move-result v2

    .line 754
    aget v3, v3, v9

    .line 755
    .line 756
    add-int/2addr v3, v2

    .line 757
    const/16 v12, 0x600

    .line 758
    .line 759
    move-object v2, v6

    .line 760
    move/from16 v14, v16

    .line 761
    .line 762
    :goto_12
    iget-object v4, v0, Ln2/b;->j:Lf2/t;

    .line 763
    .line 764
    if-eqz v4, :cond_37

    .line 765
    .line 766
    iget v5, v4, Lf2/t;->v:I

    .line 767
    .line 768
    if-ne v3, v5, :cond_37

    .line 769
    .line 770
    iget v5, v4, Lf2/t;->w:I

    .line 771
    .line 772
    if-ne v14, v5, :cond_37

    .line 773
    .line 774
    iget-object v4, v4, Lf2/t;->i:Ljava/lang/String;

    .line 775
    .line 776
    if-eq v2, v4, :cond_38

    .line 777
    .line 778
    :cond_37
    iget-object v4, v0, Ln2/b;->d:Ljava/lang/String;

    .line 779
    .line 780
    const/16 v21, -0x1

    .line 781
    .line 782
    const/16 v22, -0x1

    .line 783
    .line 784
    const/16 v25, 0x0

    .line 785
    .line 786
    const/16 v26, 0x0

    .line 787
    .line 788
    iget-object v5, v0, Ln2/b;->c:Ljava/lang/String;

    .line 789
    .line 790
    move-object/from16 v19, v4

    .line 791
    .line 792
    move-object/from16 v20, v2

    .line 793
    .line 794
    move/from16 v23, v3

    .line 795
    .line 796
    move/from16 v24, v14

    .line 797
    .line 798
    move-object/from16 v27, v5

    .line 799
    .line 800
    invoke-static/range {v19 .. v27}, Lf2/t;->g(Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lj2/b;Ljava/lang/String;)Lf2/t;

    .line 801
    .line 802
    .line 803
    move-result-object v2

    .line 804
    iput-object v2, v0, Ln2/b;->j:Lf2/t;

    .line 805
    .line 806
    iget-object v3, v0, Ln2/b;->e:Lk2/o;

    .line 807
    .line 808
    invoke-interface {v3, v2}, Lk2/o;->c(Lf2/t;)V

    .line 809
    .line 810
    .line 811
    :cond_38
    iput v7, v0, Ln2/b;->k:I

    .line 812
    .line 813
    const-wide/32 v2, 0xf4240

    .line 814
    .line 815
    .line 816
    int-to-long v4, v12

    .line 817
    mul-long/2addr v4, v2

    .line 818
    iget-object v2, v0, Ln2/b;->j:Lf2/t;

    .line 819
    .line 820
    iget v2, v2, Lf2/t;->w:I

    .line 821
    .line 822
    int-to-long v2, v2

    .line 823
    div-long/2addr v4, v2

    .line 824
    iput-wide v4, v0, Ln2/b;->i:J

    .line 825
    .line 826
    const/4 v2, 0x0

    .line 827
    invoke-virtual {v8, v2}, Lb3/h;->q(I)V

    .line 828
    .line 829
    .line 830
    iget-object v2, v0, Ln2/b;->e:Lk2/o;

    .line 831
    .line 832
    const/16 v3, 0x80

    .line 833
    .line 834
    invoke-interface {v2, v3, v8}, Lk2/o;->d(ILb3/h;)V

    .line 835
    .line 836
    .line 837
    const/4 v2, 0x2

    .line 838
    iput v2, v0, Ln2/b;->f:I

    .line 839
    .line 840
    goto/16 :goto_0

    .line 841
    .line 842
    :cond_39
    :goto_13
    iget v2, v1, Lb3/h;->b:I

    .line 843
    .line 844
    iget v3, v1, Lb3/h;->a:I

    .line 845
    .line 846
    sub-int/2addr v2, v3

    .line 847
    const/16 v3, 0x77

    .line 848
    .line 849
    if-lez v2, :cond_3d

    .line 850
    .line 851
    iget-boolean v2, v0, Ln2/b;->h:Z

    .line 852
    .line 853
    if-nez v2, :cond_3a

    .line 854
    .line 855
    invoke-virtual/range {p1 .. p1}, Lb3/h;->h()I

    .line 856
    .line 857
    .line 858
    move-result v2

    .line 859
    if-ne v2, v7, :cond_3c

    .line 860
    .line 861
    goto :goto_14

    .line 862
    :cond_3a
    invoke-virtual/range {p1 .. p1}, Lb3/h;->h()I

    .line 863
    .line 864
    .line 865
    move-result v2

    .line 866
    if-ne v2, v3, :cond_3b

    .line 867
    .line 868
    const/4 v4, 0x0

    .line 869
    iput-boolean v4, v0, Ln2/b;->h:Z

    .line 870
    .line 871
    const/4 v13, 0x1

    .line 872
    goto :goto_16

    .line 873
    :cond_3b
    if-ne v2, v7, :cond_3c

    .line 874
    .line 875
    :goto_14
    const/4 v13, 0x1

    .line 876
    goto :goto_15

    .line 877
    :cond_3c
    const/4 v13, 0x0

    .line 878
    :goto_15
    iput-boolean v13, v0, Ln2/b;->h:Z

    .line 879
    .line 880
    goto :goto_13

    .line 881
    :cond_3d
    const/4 v13, 0x0

    .line 882
    :goto_16
    if-eqz v13, :cond_0

    .line 883
    .line 884
    const/4 v2, 0x1

    .line 885
    iput v2, v0, Ln2/b;->f:I

    .line 886
    .line 887
    iget-object v4, v8, Lb3/h;->c:Ljava/io/Serializable;

    .line 888
    .line 889
    check-cast v4, [B

    .line 890
    .line 891
    const/4 v5, 0x0

    .line 892
    aput-byte v7, v4, v5

    .line 893
    .line 894
    aput-byte v3, v4, v2

    .line 895
    .line 896
    const/4 v2, 0x2

    .line 897
    iput v2, v0, Ln2/b;->g:I

    .line 898
    .line 899
    goto/16 :goto_0

    .line 900
    .line 901
    :cond_3e
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
    iput-wide p1, p0, Ln2/b;->l:J

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
    iput-object v0, p0, Ln2/b;->d:Ljava/lang/String;

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
    iput-object p1, p0, Ln2/b;->e:Lk2/o;

    .line 24
    .line 25
    return-void
.end method
