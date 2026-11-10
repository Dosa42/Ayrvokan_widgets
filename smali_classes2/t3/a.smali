.class public abstract Lt3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/nio/charset/CharsetDecoder;

.field public static final b:Lk3/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sput-object v0, Lt3/a;->a:Ljava/nio/charset/CharsetDecoder;

    new-instance v0, Lk3/a;

    invoke-direct {v0}, Lk3/a;-><init>()V

    sput-object v0, Lt3/a;->b:Lk3/a;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lt3/a;->b:Lk3/a;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x0

    .line 13
    move v4, v3

    .line 14
    :goto_0
    if-ge v4, v2, :cond_1a

    .line 15
    .line 16
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    iget-object v6, v1, Lk3/a;->c:[Z

    .line 21
    .line 22
    array-length v7, v6

    .line 23
    if-ge v5, v7, :cond_1

    .line 24
    .line 25
    aget-boolean v5, v6, v5

    .line 26
    .line 27
    if-nez v5, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    sget-object v5, Lk3/c;->a:Lk3/b;

    .line 38
    .line 39
    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    check-cast v5, [C

    .line 44
    .line 45
    move v7, v3

    .line 46
    move v8, v7

    .line 47
    :goto_2
    if-ge v4, v2, :cond_16

    .line 48
    .line 49
    if-ge v4, v2, :cond_15

    .line 50
    .line 51
    add-int/lit8 v9, v4, 0x1

    .line 52
    .line 53
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 54
    .line 55
    .line 56
    move-result v10

    .line 57
    const v11, 0xd800

    .line 58
    .line 59
    .line 60
    if-lt v10, v11, :cond_6

    .line 61
    .line 62
    const v11, 0xdfff

    .line 63
    .line 64
    .line 65
    if-le v10, v11, :cond_2

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_2
    const v11, 0xdbff

    .line 69
    .line 70
    .line 71
    const-string v12, " at index "

    .line 72
    .line 73
    const-string v13, "\' with value "

    .line 74
    .line 75
    if-gt v10, v11, :cond_5

    .line 76
    .line 77
    if-ne v9, v2, :cond_3

    .line 78
    .line 79
    neg-int v10, v10

    .line 80
    goto :goto_3

    .line 81
    :cond_3
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    .line 82
    .line 83
    .line 84
    move-result v11

    .line 85
    invoke-static {v11}, Ljava/lang/Character;->isLowSurrogate(C)Z

    .line 86
    .line 87
    .line 88
    move-result v14

    .line 89
    if-eqz v14, :cond_4

    .line 90
    .line 91
    invoke-static {v10, v11}, Ljava/lang/Character;->toCodePoint(CC)I

    .line 92
    .line 93
    .line 94
    move-result v10

    .line 95
    goto :goto_3

    .line 96
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 97
    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string v2, "Expected low surrogate but got char \'"

    .line 101
    .line 102
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw v0

    .line 128
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 129
    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    const-string v2, "Unexpected low surrogate character \'"

    .line 133
    .line 134
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    add-int/lit8 v9, v9, -0x1

    .line 150
    .line 151
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    throw v0

    .line 162
    :cond_6
    :goto_3
    if-ltz v10, :cond_14

    .line 163
    .line 164
    array-length v9, v6

    .line 165
    const/16 v11, 0x20

    .line 166
    .line 167
    const/4 v12, 0x2

    .line 168
    const/4 v13, 0x1

    .line 169
    if-ge v10, v9, :cond_7

    .line 170
    .line 171
    aget-boolean v9, v6, v10

    .line 172
    .line 173
    if-eqz v9, :cond_7

    .line 174
    .line 175
    const/4 v9, 0x0

    .line 176
    goto :goto_4

    .line 177
    :cond_7
    if-ne v10, v11, :cond_8

    .line 178
    .line 179
    iget-boolean v9, v1, Lk3/a;->b:Z

    .line 180
    .line 181
    if-eqz v9, :cond_8

    .line 182
    .line 183
    sget-object v9, Lk3/a;->d:[C

    .line 184
    .line 185
    goto :goto_4

    .line 186
    :cond_8
    sget-object v9, Lk3/a;->e:[C

    .line 187
    .line 188
    const/4 v11, 0x3

    .line 189
    const/16 v14, 0x7f

    .line 190
    .line 191
    const/16 v15, 0x25

    .line 192
    .line 193
    if-gt v10, v14, :cond_9

    .line 194
    .line 195
    new-array v11, v11, [C

    .line 196
    .line 197
    aput-char v15, v11, v3

    .line 198
    .line 199
    and-int/lit8 v14, v10, 0xf

    .line 200
    .line 201
    aget-char v14, v9, v14

    .line 202
    .line 203
    aput-char v14, v11, v12

    .line 204
    .line 205
    ushr-int/lit8 v14, v10, 0x4

    .line 206
    .line 207
    aget-char v9, v9, v14

    .line 208
    .line 209
    aput-char v9, v11, v13

    .line 210
    .line 211
    move-object v9, v11

    .line 212
    :goto_4
    move v11, v13

    .line 213
    move v13, v12

    .line 214
    goto :goto_5

    .line 215
    :cond_9
    const/4 v14, 0x4

    .line 216
    const/16 v13, 0x7ff

    .line 217
    .line 218
    const/16 v16, 0x5

    .line 219
    .line 220
    const/4 v12, 0x6

    .line 221
    if-gt v10, v13, :cond_a

    .line 222
    .line 223
    new-array v12, v12, [C

    .line 224
    .line 225
    aput-char v15, v12, v3

    .line 226
    .line 227
    aput-char v15, v12, v11

    .line 228
    .line 229
    and-int/lit8 v11, v10, 0xf

    .line 230
    .line 231
    aget-char v11, v9, v11

    .line 232
    .line 233
    aput-char v11, v12, v16

    .line 234
    .line 235
    ushr-int/lit8 v11, v10, 0x4

    .line 236
    .line 237
    and-int/lit8 v13, v11, 0x3

    .line 238
    .line 239
    or-int/lit8 v13, v13, 0x8

    .line 240
    .line 241
    aget-char v13, v9, v13

    .line 242
    .line 243
    aput-char v13, v12, v14

    .line 244
    .line 245
    const/4 v13, 0x2

    .line 246
    ushr-int/2addr v11, v13

    .line 247
    and-int/lit8 v14, v11, 0xf

    .line 248
    .line 249
    aget-char v14, v9, v14

    .line 250
    .line 251
    aput-char v14, v12, v13

    .line 252
    .line 253
    ushr-int/lit8 v11, v11, 0x4

    .line 254
    .line 255
    or-int/lit8 v11, v11, 0xc

    .line 256
    .line 257
    aget-char v9, v9, v11

    .line 258
    .line 259
    const/4 v11, 0x1

    .line 260
    aput-char v9, v12, v11

    .line 261
    .line 262
    goto :goto_6

    .line 263
    :goto_5
    move v12, v13

    .line 264
    goto/16 :goto_7

    .line 265
    .line 266
    :cond_a
    const/4 v13, 0x1

    .line 267
    const/16 v17, 0x7

    .line 268
    .line 269
    const v14, 0xffff

    .line 270
    .line 271
    .line 272
    const/16 v12, 0x9

    .line 273
    .line 274
    if-gt v10, v14, :cond_b

    .line 275
    .line 276
    new-array v12, v12, [C

    .line 277
    .line 278
    aput-char v15, v12, v3

    .line 279
    .line 280
    const/16 v14, 0x45

    .line 281
    .line 282
    aput-char v14, v12, v13

    .line 283
    .line 284
    aput-char v15, v12, v11

    .line 285
    .line 286
    const/4 v11, 0x6

    .line 287
    aput-char v15, v12, v11

    .line 288
    .line 289
    and-int/lit8 v11, v10, 0xf

    .line 290
    .line 291
    aget-char v11, v9, v11

    .line 292
    .line 293
    const/16 v13, 0x8

    .line 294
    .line 295
    aput-char v11, v12, v13

    .line 296
    .line 297
    ushr-int/lit8 v11, v10, 0x4

    .line 298
    .line 299
    and-int/lit8 v13, v11, 0x3

    .line 300
    .line 301
    or-int/lit8 v13, v13, 0x8

    .line 302
    .line 303
    aget-char v13, v9, v13

    .line 304
    .line 305
    aput-char v13, v12, v17

    .line 306
    .line 307
    const/4 v13, 0x2

    .line 308
    ushr-int/2addr v11, v13

    .line 309
    and-int/lit8 v14, v11, 0xf

    .line 310
    .line 311
    aget-char v14, v9, v14

    .line 312
    .line 313
    aput-char v14, v12, v16

    .line 314
    .line 315
    ushr-int/lit8 v11, v11, 0x4

    .line 316
    .line 317
    and-int/lit8 v14, v11, 0x3

    .line 318
    .line 319
    or-int/lit8 v14, v14, 0x8

    .line 320
    .line 321
    aget-char v14, v9, v14

    .line 322
    .line 323
    const/4 v15, 0x4

    .line 324
    aput-char v14, v12, v15

    .line 325
    .line 326
    ushr-int/2addr v11, v13

    .line 327
    aget-char v9, v9, v11

    .line 328
    .line 329
    aput-char v9, v12, v13

    .line 330
    .line 331
    const/4 v11, 0x1

    .line 332
    :goto_6
    move-object v9, v12

    .line 333
    goto :goto_5

    .line 334
    :cond_b
    const v13, 0x10ffff

    .line 335
    .line 336
    .line 337
    if-gt v10, v13, :cond_13

    .line 338
    .line 339
    const/16 v13, 0xc

    .line 340
    .line 341
    new-array v13, v13, [C

    .line 342
    .line 343
    aput-char v15, v13, v3

    .line 344
    .line 345
    const/16 v14, 0x46

    .line 346
    .line 347
    const/16 v18, 0x1

    .line 348
    .line 349
    aput-char v14, v13, v18

    .line 350
    .line 351
    aput-char v15, v13, v11

    .line 352
    .line 353
    const/4 v11, 0x6

    .line 354
    aput-char v15, v13, v11

    .line 355
    .line 356
    aput-char v15, v13, v12

    .line 357
    .line 358
    and-int/lit8 v11, v10, 0xf

    .line 359
    .line 360
    aget-char v11, v9, v11

    .line 361
    .line 362
    const/16 v12, 0xb

    .line 363
    .line 364
    aput-char v11, v13, v12

    .line 365
    .line 366
    ushr-int/lit8 v11, v10, 0x4

    .line 367
    .line 368
    and-int/lit8 v12, v11, 0x3

    .line 369
    .line 370
    or-int/lit8 v12, v12, 0x8

    .line 371
    .line 372
    aget-char v12, v9, v12

    .line 373
    .line 374
    const/16 v14, 0xa

    .line 375
    .line 376
    aput-char v12, v13, v14

    .line 377
    .line 378
    const/4 v12, 0x2

    .line 379
    ushr-int/2addr v11, v12

    .line 380
    and-int/lit8 v14, v11, 0xf

    .line 381
    .line 382
    aget-char v14, v9, v14

    .line 383
    .line 384
    const/16 v15, 0x8

    .line 385
    .line 386
    aput-char v14, v13, v15

    .line 387
    .line 388
    ushr-int/lit8 v11, v11, 0x4

    .line 389
    .line 390
    and-int/lit8 v14, v11, 0x3

    .line 391
    .line 392
    or-int/lit8 v14, v14, 0x8

    .line 393
    .line 394
    aget-char v14, v9, v14

    .line 395
    .line 396
    aput-char v14, v13, v17

    .line 397
    .line 398
    ushr-int/2addr v11, v12

    .line 399
    and-int/lit8 v14, v11, 0xf

    .line 400
    .line 401
    aget-char v14, v9, v14

    .line 402
    .line 403
    aput-char v14, v13, v16

    .line 404
    .line 405
    ushr-int/lit8 v11, v11, 0x4

    .line 406
    .line 407
    and-int/lit8 v14, v11, 0x3

    .line 408
    .line 409
    or-int/lit8 v14, v14, 0x8

    .line 410
    .line 411
    aget-char v14, v9, v14

    .line 412
    .line 413
    const/4 v15, 0x4

    .line 414
    aput-char v14, v13, v15

    .line 415
    .line 416
    ushr-int/2addr v11, v12

    .line 417
    and-int/lit8 v11, v11, 0x7

    .line 418
    .line 419
    aget-char v9, v9, v11

    .line 420
    .line 421
    aput-char v9, v13, v12

    .line 422
    .line 423
    move-object v9, v13

    .line 424
    move/from16 v11, v18

    .line 425
    .line 426
    :goto_7
    if-eqz v9, :cond_f

    .line 427
    .line 428
    sub-int v13, v4, v7

    .line 429
    .line 430
    add-int v14, v8, v13

    .line 431
    .line 432
    array-length v15, v9

    .line 433
    add-int/2addr v15, v14

    .line 434
    array-length v3, v5

    .line 435
    if-ge v3, v15, :cond_d

    .line 436
    .line 437
    sub-int v3, v2, v4

    .line 438
    .line 439
    add-int/2addr v3, v15

    .line 440
    add-int/lit8 v3, v3, 0x20

    .line 441
    .line 442
    new-array v3, v3, [C

    .line 443
    .line 444
    if-lez v8, :cond_c

    .line 445
    .line 446
    const/4 v15, 0x0

    .line 447
    invoke-static {v5, v15, v3, v15, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 448
    .line 449
    .line 450
    :cond_c
    move-object v5, v3

    .line 451
    :cond_d
    if-lez v13, :cond_e

    .line 452
    .line 453
    invoke-virtual {v0, v7, v4, v5, v8}, Ljava/lang/String;->getChars(II[CI)V

    .line 454
    .line 455
    .line 456
    move v8, v14

    .line 457
    :cond_e
    array-length v3, v9

    .line 458
    if-lez v3, :cond_f

    .line 459
    .line 460
    array-length v3, v9

    .line 461
    const/4 v7, 0x0

    .line 462
    invoke-static {v9, v7, v5, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 463
    .line 464
    .line 465
    array-length v3, v9

    .line 466
    add-int/2addr v8, v3

    .line 467
    :cond_f
    invoke-static {v10}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    .line 468
    .line 469
    .line 470
    move-result v3

    .line 471
    if-eqz v3, :cond_10

    .line 472
    .line 473
    move v11, v12

    .line 474
    :cond_10
    add-int v7, v4, v11

    .line 475
    .line 476
    move v4, v7

    .line 477
    :goto_8
    if-ge v4, v2, :cond_12

    .line 478
    .line 479
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 480
    .line 481
    .line 482
    move-result v3

    .line 483
    array-length v9, v6

    .line 484
    if-ge v3, v9, :cond_12

    .line 485
    .line 486
    aget-boolean v3, v6, v3

    .line 487
    .line 488
    if-nez v3, :cond_11

    .line 489
    .line 490
    goto :goto_9

    .line 491
    :cond_11
    add-int/lit8 v4, v4, 0x1

    .line 492
    .line 493
    goto :goto_8

    .line 494
    :cond_12
    :goto_9
    const/4 v3, 0x0

    .line 495
    goto/16 :goto_2

    .line 496
    .line 497
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 498
    .line 499
    const-string v1, "Invalid unicode character value "

    .line 500
    .line 501
    invoke-static {v1, v10}, La1/b;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v1

    .line 505
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 506
    .line 507
    .line 508
    throw v0

    .line 509
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 510
    .line 511
    const-string v1, "Trailing high surrogate at end of input"

    .line 512
    .line 513
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    throw v0

    .line 517
    :cond_15
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 518
    .line 519
    const-string v1, "Index exceeds specified range"

    .line 520
    .line 521
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 522
    .line 523
    .line 524
    throw v0

    .line 525
    :cond_16
    sub-int v1, v2, v7

    .line 526
    .line 527
    if-lez v1, :cond_19

    .line 528
    .line 529
    add-int/2addr v1, v8

    .line 530
    array-length v3, v5

    .line 531
    if-ge v3, v1, :cond_18

    .line 532
    .line 533
    new-array v3, v1, [C

    .line 534
    .line 535
    const/4 v4, 0x0

    .line 536
    if-lez v8, :cond_17

    .line 537
    .line 538
    invoke-static {v5, v4, v3, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 539
    .line 540
    .line 541
    :cond_17
    move-object v5, v3

    .line 542
    goto :goto_a

    .line 543
    :cond_18
    const/4 v4, 0x0

    .line 544
    :goto_a
    invoke-virtual {v0, v7, v2, v5, v8}, Ljava/lang/String;->getChars(II[CI)V

    .line 545
    .line 546
    .line 547
    move v8, v1

    .line 548
    goto :goto_b

    .line 549
    :cond_19
    const/4 v4, 0x0

    .line 550
    :goto_b
    new-instance v0, Ljava/lang/String;

    .line 551
    .line 552
    invoke-direct {v0, v5, v4, v8}, Ljava/lang/String;-><init>([CII)V

    .line 553
    .line 554
    .line 555
    :cond_1a
    return-object v0
.end method
