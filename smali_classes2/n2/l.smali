.class public final Ln2/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln2/j;


# static fields
.field public static final q:[D


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lk2/o;

.field public c:Z

.field public d:J

.field public final e:Ln2/w;

.field public final f:Lb3/h;

.field public final g:[Z

.field public final h:Ln2/k;

.field public final i:Lo1/n;

.field public j:J

.field public k:Z

.field public l:J

.field public m:J

.field public n:J

.field public o:Z

.field public p:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x8

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Ln2/l;->q:[D

    return-void

    :array_0
    .array-data 8
        0x4037f9dcb5112287L    # 23.976023976023978
        0x4038000000000000L    # 24.0
        0x4039000000000000L    # 25.0
        0x403df853e2556b28L    # 29.97002997002997
        0x403e000000000000L    # 30.0
        0x4049000000000000L    # 50.0
        0x404df853e2556b28L    # 59.94005994005994
        0x404e000000000000L    # 60.0
    .end array-data
.end method

.method public constructor <init>(Ln2/w;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln2/l;->e:Ln2/w;

    const/4 p1, 0x4

    new-array p1, p1, [Z

    iput-object p1, p0, Ln2/l;->g:[Z

    new-instance p1, Ln2/k;

    invoke-direct {p1}, Ln2/k;-><init>()V

    iput-object p1, p0, Ln2/l;->h:Ln2/k;

    new-instance p1, Lo1/n;

    const/16 v0, 0xb2

    invoke-direct {p1, v0}, Lo1/n;-><init>(I)V

    iput-object p1, p0, Ln2/l;->i:Lo1/n;

    new-instance p1, Lb3/h;

    invoke-direct {p1}, Lb3/h;-><init>()V

    iput-object p1, p0, Ln2/l;->f:Lb3/h;

    return-void
.end method


# virtual methods
.method public final b(Lb3/h;)V
    .locals 26

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
    iget-wide v5, v0, Ln2/l;->j:J

    .line 14
    .line 15
    sub-int v7, v3, v2

    .line 16
    .line 17
    int-to-long v8, v7

    .line 18
    add-long/2addr v5, v8

    .line 19
    iput-wide v5, v0, Ln2/l;->j:J

    .line 20
    .line 21
    iget-object v5, v0, Ln2/l;->b:Lk2/o;

    .line 22
    .line 23
    invoke-interface {v5, v7, v1}, Lk2/o;->d(ILb3/h;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    iget-object v5, v0, Ln2/l;->g:[Z

    .line 27
    .line 28
    invoke-static {v4, v2, v3, v5}, Lb3/f;->b([BII[Z)I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    iget-object v6, v0, Ln2/l;->e:Ln2/w;

    .line 33
    .line 34
    iget-object v7, v0, Ln2/l;->h:Ln2/k;

    .line 35
    .line 36
    iget-object v8, v0, Ln2/l;->i:Lo1/n;

    .line 37
    .line 38
    if-ne v5, v3, :cond_2

    .line 39
    .line 40
    iget-boolean v1, v0, Ln2/l;->c:Z

    .line 41
    .line 42
    if-nez v1, :cond_0

    .line 43
    .line 44
    invoke-virtual {v7, v4, v2, v3}, Ln2/k;->a([BII)V

    .line 45
    .line 46
    .line 47
    :cond_0
    if-eqz v6, :cond_1

    .line 48
    .line 49
    invoke-virtual {v8, v4, v2, v3}, Lo1/n;->a([BII)V

    .line 50
    .line 51
    .line 52
    :cond_1
    return-void

    .line 53
    :cond_2
    iget-object v9, v1, Lb3/h;->c:Ljava/io/Serializable;

    .line 54
    .line 55
    check-cast v9, [B

    .line 56
    .line 57
    add-int/lit8 v10, v5, 0x3

    .line 58
    .line 59
    aget-byte v9, v9, v10

    .line 60
    .line 61
    and-int/lit16 v9, v9, 0xff

    .line 62
    .line 63
    sub-int v11, v5, v2

    .line 64
    .line 65
    iget-boolean v12, v0, Ln2/l;->c:Z

    .line 66
    .line 67
    const/4 v13, 0x0

    .line 68
    if-nez v12, :cond_d

    .line 69
    .line 70
    if-lez v11, :cond_3

    .line 71
    .line 72
    invoke-virtual {v7, v4, v2, v5}, Ln2/k;->a([BII)V

    .line 73
    .line 74
    .line 75
    :cond_3
    if-gez v11, :cond_4

    .line 76
    .line 77
    neg-int v12, v11

    .line 78
    goto :goto_1

    .line 79
    :cond_4
    move v12, v13

    .line 80
    :goto_1
    iget-boolean v14, v7, Ln2/k;->a:Z

    .line 81
    .line 82
    const/4 v15, 0x3

    .line 83
    if-eqz v14, :cond_6

    .line 84
    .line 85
    iget v14, v7, Ln2/k;->b:I

    .line 86
    .line 87
    sub-int/2addr v14, v12

    .line 88
    iput v14, v7, Ln2/k;->b:I

    .line 89
    .line 90
    iget v12, v7, Ln2/k;->c:I

    .line 91
    .line 92
    if-nez v12, :cond_5

    .line 93
    .line 94
    const/16 v12, 0xb5

    .line 95
    .line 96
    if-ne v9, v12, :cond_5

    .line 97
    .line 98
    iput v14, v7, Ln2/k;->c:I

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_5
    iput-boolean v13, v7, Ln2/k;->a:Z

    .line 102
    .line 103
    const/4 v12, 0x1

    .line 104
    goto :goto_3

    .line 105
    :cond_6
    const/16 v12, 0xb3

    .line 106
    .line 107
    if-ne v9, v12, :cond_7

    .line 108
    .line 109
    const/4 v12, 0x1

    .line 110
    iput-boolean v12, v7, Ln2/k;->a:Z

    .line 111
    .line 112
    :cond_7
    :goto_2
    sget-object v12, Ln2/k;->e:[B

    .line 113
    .line 114
    invoke-virtual {v7, v12, v13, v15}, Ln2/k;->a([BII)V

    .line 115
    .line 116
    .line 117
    move v12, v13

    .line 118
    :goto_3
    if-eqz v12, :cond_d

    .line 119
    .line 120
    iget-object v12, v0, Ln2/l;->a:Ljava/lang/String;

    .line 121
    .line 122
    iget-object v14, v7, Ln2/k;->d:[B

    .line 123
    .line 124
    iget v13, v7, Ln2/k;->b:I

    .line 125
    .line 126
    invoke-static {v14, v13}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 127
    .line 128
    .line 129
    move-result-object v13

    .line 130
    const/4 v14, 0x4

    .line 131
    aget-byte v15, v13, v14

    .line 132
    .line 133
    and-int/lit16 v15, v15, 0xff

    .line 134
    .line 135
    const/16 v24, 0x5

    .line 136
    .line 137
    aget-byte v14, v13, v24

    .line 138
    .line 139
    and-int/lit16 v14, v14, 0xff

    .line 140
    .line 141
    const/16 v19, 0x6

    .line 142
    .line 143
    move/from16 v25, v10

    .line 144
    .line 145
    aget-byte v10, v13, v19

    .line 146
    .line 147
    and-int/lit16 v10, v10, 0xff

    .line 148
    .line 149
    const/16 v18, 0x4

    .line 150
    .line 151
    shl-int/lit8 v15, v15, 0x4

    .line 152
    .line 153
    shr-int/lit8 v19, v14, 0x4

    .line 154
    .line 155
    or-int v20, v15, v19

    .line 156
    .line 157
    and-int/lit8 v14, v14, 0xf

    .line 158
    .line 159
    const/16 v15, 0x8

    .line 160
    .line 161
    shl-int/2addr v14, v15

    .line 162
    or-int v21, v14, v10

    .line 163
    .line 164
    const/4 v10, 0x7

    .line 165
    aget-byte v14, v13, v10

    .line 166
    .line 167
    and-int/lit16 v14, v14, 0xf0

    .line 168
    .line 169
    const/4 v15, 0x4

    .line 170
    shr-int/2addr v14, v15

    .line 171
    const/4 v10, 0x2

    .line 172
    if-eq v14, v10, :cond_a

    .line 173
    .line 174
    const/4 v10, 0x3

    .line 175
    if-eq v14, v10, :cond_9

    .line 176
    .line 177
    if-eq v14, v15, :cond_8

    .line 178
    .line 179
    const/high16 v10, 0x3f800000    # 1.0f

    .line 180
    .line 181
    goto :goto_5

    .line 182
    :cond_8
    mul-int/lit8 v10, v21, 0x79

    .line 183
    .line 184
    int-to-float v10, v10

    .line 185
    mul-int/lit8 v14, v20, 0x64

    .line 186
    .line 187
    goto :goto_4

    .line 188
    :cond_9
    mul-int/lit8 v10, v21, 0x10

    .line 189
    .line 190
    int-to-float v10, v10

    .line 191
    mul-int/lit8 v14, v20, 0x9

    .line 192
    .line 193
    goto :goto_4

    .line 194
    :cond_a
    mul-int/lit8 v10, v21, 0x4

    .line 195
    .line 196
    int-to-float v10, v10

    .line 197
    mul-int/lit8 v14, v20, 0x3

    .line 198
    .line 199
    :goto_4
    int-to-float v14, v14

    .line 200
    div-float/2addr v10, v14

    .line 201
    :goto_5
    move/from16 v23, v10

    .line 202
    .line 203
    const-string v18, "video/mpeg2"

    .line 204
    .line 205
    const/16 v19, 0x0

    .line 206
    .line 207
    invoke-static {v13}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 208
    .line 209
    .line 210
    move-result-object v22

    .line 211
    move-object/from16 v17, v12

    .line 212
    .line 213
    invoke-static/range {v17 .. v23}, Lf2/t;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;F)Lf2/t;

    .line 214
    .line 215
    .line 216
    move-result-object v10

    .line 217
    const/4 v12, 0x7

    .line 218
    aget-byte v12, v13, v12

    .line 219
    .line 220
    and-int/lit8 v12, v12, 0xf

    .line 221
    .line 222
    add-int/lit8 v12, v12, -0x1

    .line 223
    .line 224
    if-ltz v12, :cond_c

    .line 225
    .line 226
    const/16 v14, 0x8

    .line 227
    .line 228
    if-ge v12, v14, :cond_c

    .line 229
    .line 230
    sget-object v14, Ln2/l;->q:[D

    .line 231
    .line 232
    aget-wide v17, v14, v12

    .line 233
    .line 234
    iget v7, v7, Ln2/k;->c:I

    .line 235
    .line 236
    add-int/lit8 v7, v7, 0x9

    .line 237
    .line 238
    aget-byte v7, v13, v7

    .line 239
    .line 240
    and-int/lit8 v12, v7, 0x60

    .line 241
    .line 242
    shr-int/lit8 v12, v12, 0x5

    .line 243
    .line 244
    and-int/lit8 v7, v7, 0x1f

    .line 245
    .line 246
    if-eq v12, v7, :cond_b

    .line 247
    .line 248
    int-to-double v12, v12

    .line 249
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    .line 250
    .line 251
    add-double/2addr v12, v14

    .line 252
    add-int/lit8 v7, v7, 0x1

    .line 253
    .line 254
    int-to-double v14, v7

    .line 255
    div-double/2addr v12, v14

    .line 256
    mul-double v17, v17, v12

    .line 257
    .line 258
    :cond_b
    const-wide v12, 0x412e848000000000L    # 1000000.0

    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    div-double v12, v12, v17

    .line 264
    .line 265
    double-to-long v12, v12

    .line 266
    goto :goto_6

    .line 267
    :cond_c
    const-wide/16 v12, 0x0

    .line 268
    .line 269
    :goto_6
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 270
    .line 271
    .line 272
    move-result-object v7

    .line 273
    invoke-static {v10, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 274
    .line 275
    .line 276
    move-result-object v7

    .line 277
    iget-object v10, v0, Ln2/l;->b:Lk2/o;

    .line 278
    .line 279
    iget-object v12, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 280
    .line 281
    check-cast v12, Lf2/t;

    .line 282
    .line 283
    invoke-interface {v10, v12}, Lk2/o;->c(Lf2/t;)V

    .line 284
    .line 285
    .line 286
    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 287
    .line 288
    check-cast v7, Ljava/lang/Long;

    .line 289
    .line 290
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 291
    .line 292
    .line 293
    move-result-wide v12

    .line 294
    iput-wide v12, v0, Ln2/l;->d:J

    .line 295
    .line 296
    const/4 v7, 0x1

    .line 297
    iput-boolean v7, v0, Ln2/l;->c:Z

    .line 298
    .line 299
    goto :goto_7

    .line 300
    :cond_d
    move/from16 v25, v10

    .line 301
    .line 302
    :goto_7
    if-eqz v6, :cond_10

    .line 303
    .line 304
    if-lez v11, :cond_e

    .line 305
    .line 306
    invoke-virtual {v8, v4, v2, v5}, Lo1/n;->a([BII)V

    .line 307
    .line 308
    .line 309
    const/4 v2, 0x0

    .line 310
    goto :goto_8

    .line 311
    :cond_e
    neg-int v2, v11

    .line 312
    :goto_8
    invoke-virtual {v8, v2}, Lo1/n;->b(I)Z

    .line 313
    .line 314
    .line 315
    move-result v2

    .line 316
    if-eqz v2, :cond_f

    .line 317
    .line 318
    iget-object v2, v8, Lo1/n;->e:Ljava/lang/Object;

    .line 319
    .line 320
    check-cast v2, [B

    .line 321
    .line 322
    iget v7, v8, Lo1/n;->d:I

    .line 323
    .line 324
    invoke-static {v2, v7}, Lb3/f;->e([BI)I

    .line 325
    .line 326
    .line 327
    move-result v2

    .line 328
    iget-object v7, v8, Lo1/n;->e:Ljava/lang/Object;

    .line 329
    .line 330
    check-cast v7, [B

    .line 331
    .line 332
    iget-object v10, v0, Ln2/l;->f:Lb3/h;

    .line 333
    .line 334
    invoke-virtual {v10, v7, v2}, Lb3/h;->o([BI)V

    .line 335
    .line 336
    .line 337
    iget-wide v11, v0, Ln2/l;->n:J

    .line 338
    .line 339
    invoke-virtual {v6, v11, v12, v10}, Ln2/w;->a(JLb3/h;)V

    .line 340
    .line 341
    .line 342
    :cond_f
    const/16 v2, 0xb2

    .line 343
    .line 344
    if-ne v9, v2, :cond_10

    .line 345
    .line 346
    iget-object v2, v1, Lb3/h;->c:Ljava/io/Serializable;

    .line 347
    .line 348
    check-cast v2, [B

    .line 349
    .line 350
    add-int/lit8 v6, v5, 0x2

    .line 351
    .line 352
    aget-byte v2, v2, v6

    .line 353
    .line 354
    const/4 v6, 0x1

    .line 355
    if-ne v2, v6, :cond_10

    .line 356
    .line 357
    invoke-virtual {v8, v9}, Lo1/n;->d(I)V

    .line 358
    .line 359
    .line 360
    :cond_10
    if-eqz v9, :cond_12

    .line 361
    .line 362
    const/16 v2, 0xb3

    .line 363
    .line 364
    if-ne v9, v2, :cond_11

    .line 365
    .line 366
    goto :goto_9

    .line 367
    :cond_11
    const/16 v2, 0xb8

    .line 368
    .line 369
    if-ne v9, v2, :cond_19

    .line 370
    .line 371
    const/4 v2, 0x1

    .line 372
    iput-boolean v2, v0, Ln2/l;->o:Z

    .line 373
    .line 374
    goto/16 :goto_e

    .line 375
    .line 376
    :cond_12
    :goto_9
    sub-int v2, v3, v5

    .line 377
    .line 378
    iget-boolean v5, v0, Ln2/l;->k:Z

    .line 379
    .line 380
    if-eqz v5, :cond_13

    .line 381
    .line 382
    iget-boolean v5, v0, Ln2/l;->p:Z

    .line 383
    .line 384
    if-eqz v5, :cond_13

    .line 385
    .line 386
    iget-boolean v5, v0, Ln2/l;->c:Z

    .line 387
    .line 388
    if-eqz v5, :cond_13

    .line 389
    .line 390
    iget-boolean v5, v0, Ln2/l;->o:Z

    .line 391
    .line 392
    iget-wide v6, v0, Ln2/l;->j:J

    .line 393
    .line 394
    iget-wide v10, v0, Ln2/l;->m:J

    .line 395
    .line 396
    sub-long/2addr v6, v10

    .line 397
    long-to-int v6, v6

    .line 398
    sub-int v20, v6, v2

    .line 399
    .line 400
    iget-object v6, v0, Ln2/l;->b:Lk2/o;

    .line 401
    .line 402
    iget-wide v7, v0, Ln2/l;->n:J

    .line 403
    .line 404
    const/16 v22, 0x0

    .line 405
    .line 406
    move-object/from16 v16, v6

    .line 407
    .line 408
    move-wide/from16 v17, v7

    .line 409
    .line 410
    move/from16 v19, v5

    .line 411
    .line 412
    move/from16 v21, v2

    .line 413
    .line 414
    invoke-interface/range {v16 .. v22}, Lk2/o;->b(JIIILk2/n;)V

    .line 415
    .line 416
    .line 417
    :cond_13
    iget-boolean v5, v0, Ln2/l;->k:Z

    .line 418
    .line 419
    if-eqz v5, :cond_15

    .line 420
    .line 421
    iget-boolean v6, v0, Ln2/l;->p:Z

    .line 422
    .line 423
    if-eqz v6, :cond_14

    .line 424
    .line 425
    goto :goto_a

    .line 426
    :cond_14
    const/4 v2, 0x0

    .line 427
    const/4 v5, 0x1

    .line 428
    goto :goto_c

    .line 429
    :cond_15
    :goto_a
    iget-wide v6, v0, Ln2/l;->j:J

    .line 430
    .line 431
    int-to-long v10, v2

    .line 432
    sub-long/2addr v6, v10

    .line 433
    iput-wide v6, v0, Ln2/l;->m:J

    .line 434
    .line 435
    iget-wide v6, v0, Ln2/l;->l:J

    .line 436
    .line 437
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    cmp-long v2, v6, v10

    .line 443
    .line 444
    if-eqz v2, :cond_16

    .line 445
    .line 446
    move-wide v13, v6

    .line 447
    goto :goto_b

    .line 448
    :cond_16
    if-eqz v5, :cond_17

    .line 449
    .line 450
    iget-wide v5, v0, Ln2/l;->n:J

    .line 451
    .line 452
    iget-wide v7, v0, Ln2/l;->d:J

    .line 453
    .line 454
    add-long v13, v5, v7

    .line 455
    .line 456
    goto :goto_b

    .line 457
    :cond_17
    const-wide/16 v13, 0x0

    .line 458
    .line 459
    :goto_b
    iput-wide v13, v0, Ln2/l;->n:J

    .line 460
    .line 461
    const/4 v2, 0x0

    .line 462
    iput-boolean v2, v0, Ln2/l;->o:Z

    .line 463
    .line 464
    iput-wide v10, v0, Ln2/l;->l:J

    .line 465
    .line 466
    const/4 v5, 0x1

    .line 467
    iput-boolean v5, v0, Ln2/l;->k:Z

    .line 468
    .line 469
    :goto_c
    if-nez v9, :cond_18

    .line 470
    .line 471
    move v13, v5

    .line 472
    goto :goto_d

    .line 473
    :cond_18
    move v13, v2

    .line 474
    :goto_d
    iput-boolean v13, v0, Ln2/l;->p:Z

    .line 475
    .line 476
    :cond_19
    :goto_e
    move/from16 v2, v25

    .line 477
    .line 478
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
    iput-wide p1, p0, Ln2/l;->l:J

    return-void
.end method

.method public final e(Lk2/i;Ln2/e0;)V
    .locals 2

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
    iput-object v0, p0, Ln2/l;->a:Ljava/lang/String;

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
    iput-object v0, p0, Ln2/l;->b:Lk2/o;

    .line 24
    .line 25
    iget-object v0, p0, Ln2/l;->e:Ln2/w;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0, p1, p2}, Ln2/w;->b(Lk2/i;Ln2/e0;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method
