.class public final Ln2/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln2/j;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lb3/h;

.field public final c:Lb3/g;

.field public d:Lk2/o;

.field public e:Lf2/t;

.field public f:Ljava/lang/String;

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:J

.field public l:Z

.field public m:I

.field public n:I

.field public o:I

.field public p:Z

.field public q:J

.field public r:I

.field public s:J

.field public t:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln2/r;->a:Ljava/lang/String;

    new-instance p1, Lb3/h;

    const/16 v0, 0x400

    invoke-direct {p1, v0}, Lb3/h;-><init>(I)V

    iput-object p1, p0, Ln2/r;->b:Lb3/h;

    new-instance v0, Lb3/g;

    iget-object p1, p1, Lb3/h;->c:Ljava/io/Serializable;

    check-cast p1, [B

    invoke-direct {v0, p1}, Lb3/g;-><init>([B)V

    iput-object v0, p0, Ln2/r;->c:Lb3/g;

    return-void
.end method


# virtual methods
.method public final a(Lb3/g;)I
    .locals 3

    .line 1
    iget v0, p1, Lb3/g;->e:I

    .line 2
    .line 3
    iget v1, p1, Lb3/g;->c:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    mul-int/lit8 v0, v0, 0x8

    .line 7
    .line 8
    iget v1, p1, Lb3/g;->d:I

    .line 9
    .line 10
    sub-int/2addr v0, v1

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {p1, v1}, Lc1/b;->x(Lb3/g;Z)Landroid/util/Pair;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v2, Ljava/lang/Integer;

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    iput v2, p0, Ln2/r;->r:I

    .line 25
    .line 26
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v1, Ljava/lang/Integer;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    iput v1, p0, Ln2/r;->t:I

    .line 35
    .line 36
    iget v1, p1, Lb3/g;->e:I

    .line 37
    .line 38
    iget v2, p1, Lb3/g;->c:I

    .line 39
    .line 40
    sub-int/2addr v1, v2

    .line 41
    mul-int/lit8 v1, v1, 0x8

    .line 42
    .line 43
    iget p1, p1, Lb3/g;->d:I

    .line 44
    .line 45
    sub-int/2addr v1, p1

    .line 46
    sub-int/2addr v0, v1

    .line 47
    return v0
.end method

.method public final b(Lb3/h;)V
    .locals 23

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
    if-lez v2, :cond_1d

    .line 11
    .line 12
    iget v3, v0, Ln2/r;->g:I

    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    const/16 v5, 0x56

    .line 16
    .line 17
    if-eqz v3, :cond_1c

    .line 18
    .line 19
    const/4 v6, 0x2

    .line 20
    const/4 v7, 0x0

    .line 21
    if-eq v3, v4, :cond_19

    .line 22
    .line 23
    const/4 v5, 0x3

    .line 24
    const/16 v8, 0x8

    .line 25
    .line 26
    iget-object v9, v0, Ln2/r;->b:Lb3/h;

    .line 27
    .line 28
    iget-object v10, v0, Ln2/r;->c:Lb3/g;

    .line 29
    .line 30
    if-eq v3, v6, :cond_17

    .line 31
    .line 32
    if-ne v3, v5, :cond_16

    .line 33
    .line 34
    iget v3, v0, Ln2/r;->i:I

    .line 35
    .line 36
    iget v11, v0, Ln2/r;->h:I

    .line 37
    .line 38
    sub-int/2addr v3, v11

    .line 39
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    iget-object v3, v10, Lb3/g;->b:[B

    .line 44
    .line 45
    iget v11, v0, Ln2/r;->h:I

    .line 46
    .line 47
    invoke-virtual {v1, v3, v11, v2}, Lb3/h;->a([BII)V

    .line 48
    .line 49
    .line 50
    iget v3, v0, Ln2/r;->h:I

    .line 51
    .line 52
    add-int/2addr v3, v2

    .line 53
    iput v3, v0, Ln2/r;->h:I

    .line 54
    .line 55
    iget v2, v0, Ln2/r;->i:I

    .line 56
    .line 57
    if-ne v3, v2, :cond_0

    .line 58
    .line 59
    invoke-virtual {v10, v7}, Lb3/g;->i(I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v10}, Lb3/g;->d()Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-nez v2, :cond_f

    .line 67
    .line 68
    iput-boolean v4, v0, Ln2/r;->l:Z

    .line 69
    .line 70
    invoke-virtual {v10, v4}, Lb3/g;->e(I)I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-ne v2, v4, :cond_1

    .line 75
    .line 76
    invoke-virtual {v10, v4}, Lb3/g;->e(I)I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    goto :goto_1

    .line 81
    :cond_1
    move v3, v7

    .line 82
    :goto_1
    iput v3, v0, Ln2/r;->m:I

    .line 83
    .line 84
    if-nez v3, :cond_e

    .line 85
    .line 86
    if-ne v2, v4, :cond_2

    .line 87
    .line 88
    invoke-virtual {v10, v6}, Lb3/g;->e(I)I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    add-int/2addr v3, v4

    .line 93
    mul-int/2addr v3, v8

    .line 94
    invoke-virtual {v10, v3}, Lb3/g;->e(I)I

    .line 95
    .line 96
    .line 97
    :cond_2
    invoke-virtual {v10}, Lb3/g;->d()Z

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    if-eqz v3, :cond_d

    .line 102
    .line 103
    const/4 v3, 0x6

    .line 104
    invoke-virtual {v10, v3}, Lb3/g;->e(I)I

    .line 105
    .line 106
    .line 107
    move-result v11

    .line 108
    iput v11, v0, Ln2/r;->n:I

    .line 109
    .line 110
    const/4 v11, 0x4

    .line 111
    invoke-virtual {v10, v11}, Lb3/g;->e(I)I

    .line 112
    .line 113
    .line 114
    move-result v12

    .line 115
    invoke-virtual {v10, v5}, Lb3/g;->e(I)I

    .line 116
    .line 117
    .line 118
    move-result v13

    .line 119
    if-nez v12, :cond_c

    .line 120
    .line 121
    if-nez v13, :cond_c

    .line 122
    .line 123
    if-nez v2, :cond_3

    .line 124
    .line 125
    iget v12, v10, Lb3/g;->c:I

    .line 126
    .line 127
    mul-int/2addr v12, v8

    .line 128
    iget v13, v10, Lb3/g;->d:I

    .line 129
    .line 130
    add-int/2addr v12, v13

    .line 131
    invoke-virtual {v0, v10}, Ln2/r;->a(Lb3/g;)I

    .line 132
    .line 133
    .line 134
    move-result v13

    .line 135
    invoke-virtual {v10, v12}, Lb3/g;->i(I)V

    .line 136
    .line 137
    .line 138
    add-int/lit8 v12, v13, 0x7

    .line 139
    .line 140
    div-int/2addr v12, v8

    .line 141
    new-array v12, v12, [B

    .line 142
    .line 143
    invoke-virtual {v10, v12, v13}, Lb3/g;->f([BI)V

    .line 144
    .line 145
    .line 146
    iget-object v14, v0, Ln2/r;->f:Ljava/lang/String;

    .line 147
    .line 148
    const-string v15, "audio/mp4a-latm"

    .line 149
    .line 150
    const/16 v16, -0x1

    .line 151
    .line 152
    const/16 v17, -0x1

    .line 153
    .line 154
    iget v13, v0, Ln2/r;->t:I

    .line 155
    .line 156
    iget v7, v0, Ln2/r;->r:I

    .line 157
    .line 158
    invoke-static {v12}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 159
    .line 160
    .line 161
    move-result-object v20

    .line 162
    const/16 v21, 0x0

    .line 163
    .line 164
    iget-object v12, v0, Ln2/r;->a:Ljava/lang/String;

    .line 165
    .line 166
    move/from16 v18, v13

    .line 167
    .line 168
    move/from16 v19, v7

    .line 169
    .line 170
    move-object/from16 v22, v12

    .line 171
    .line 172
    invoke-static/range {v14 .. v22}, Lf2/t;->g(Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lj2/b;Ljava/lang/String;)Lf2/t;

    .line 173
    .line 174
    .line 175
    move-result-object v7

    .line 176
    iget-object v12, v0, Ln2/r;->e:Lf2/t;

    .line 177
    .line 178
    invoke-virtual {v7, v12}, Lf2/t;->equals(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v12

    .line 182
    if-nez v12, :cond_4

    .line 183
    .line 184
    iput-object v7, v0, Ln2/r;->e:Lf2/t;

    .line 185
    .line 186
    iget v12, v7, Lf2/t;->w:I

    .line 187
    .line 188
    int-to-long v12, v12

    .line 189
    const-wide/32 v14, 0x3d090000

    .line 190
    .line 191
    .line 192
    div-long/2addr v14, v12

    .line 193
    iput-wide v14, v0, Ln2/r;->s:J

    .line 194
    .line 195
    iget-object v12, v0, Ln2/r;->d:Lk2/o;

    .line 196
    .line 197
    invoke-interface {v12, v7}, Lk2/o;->c(Lf2/t;)V

    .line 198
    .line 199
    .line 200
    goto :goto_2

    .line 201
    :cond_3
    invoke-virtual {v10, v6}, Lb3/g;->e(I)I

    .line 202
    .line 203
    .line 204
    move-result v7

    .line 205
    add-int/2addr v7, v4

    .line 206
    mul-int/2addr v7, v8

    .line 207
    invoke-virtual {v10, v7}, Lb3/g;->e(I)I

    .line 208
    .line 209
    .line 210
    move-result v7

    .line 211
    int-to-long v12, v7

    .line 212
    long-to-int v7, v12

    .line 213
    invoke-virtual {v0, v10}, Ln2/r;->a(Lb3/g;)I

    .line 214
    .line 215
    .line 216
    move-result v12

    .line 217
    sub-int/2addr v7, v12

    .line 218
    invoke-virtual {v10, v7}, Lb3/g;->l(I)V

    .line 219
    .line 220
    .line 221
    :cond_4
    :goto_2
    invoke-virtual {v10, v5}, Lb3/g;->e(I)I

    .line 222
    .line 223
    .line 224
    move-result v7

    .line 225
    iput v7, v0, Ln2/r;->o:I

    .line 226
    .line 227
    if-eqz v7, :cond_8

    .line 228
    .line 229
    if-eq v7, v4, :cond_7

    .line 230
    .line 231
    if-eq v7, v5, :cond_9

    .line 232
    .line 233
    if-eq v7, v11, :cond_9

    .line 234
    .line 235
    const/4 v5, 0x5

    .line 236
    if-eq v7, v5, :cond_9

    .line 237
    .line 238
    if-eq v7, v3, :cond_6

    .line 239
    .line 240
    const/4 v3, 0x7

    .line 241
    if-ne v7, v3, :cond_5

    .line 242
    .line 243
    goto :goto_3

    .line 244
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 245
    .line 246
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 247
    .line 248
    .line 249
    throw v1

    .line 250
    :cond_6
    :goto_3
    invoke-virtual {v10, v4}, Lb3/g;->l(I)V

    .line 251
    .line 252
    .line 253
    goto :goto_5

    .line 254
    :cond_7
    const/16 v3, 0x9

    .line 255
    .line 256
    goto :goto_4

    .line 257
    :cond_8
    move v3, v8

    .line 258
    :cond_9
    :goto_4
    invoke-virtual {v10, v3}, Lb3/g;->l(I)V

    .line 259
    .line 260
    .line 261
    :goto_5
    invoke-virtual {v10}, Lb3/g;->d()Z

    .line 262
    .line 263
    .line 264
    move-result v3

    .line 265
    iput-boolean v3, v0, Ln2/r;->p:Z

    .line 266
    .line 267
    const-wide/16 v11, 0x0

    .line 268
    .line 269
    iput-wide v11, v0, Ln2/r;->q:J

    .line 270
    .line 271
    if-eqz v3, :cond_b

    .line 272
    .line 273
    if-ne v2, v4, :cond_a

    .line 274
    .line 275
    invoke-virtual {v10, v6}, Lb3/g;->e(I)I

    .line 276
    .line 277
    .line 278
    move-result v2

    .line 279
    add-int/2addr v2, v4

    .line 280
    mul-int/2addr v2, v8

    .line 281
    invoke-virtual {v10, v2}, Lb3/g;->e(I)I

    .line 282
    .line 283
    .line 284
    move-result v2

    .line 285
    int-to-long v2, v2

    .line 286
    iput-wide v2, v0, Ln2/r;->q:J

    .line 287
    .line 288
    goto :goto_6

    .line 289
    :cond_a
    invoke-virtual {v10}, Lb3/g;->d()Z

    .line 290
    .line 291
    .line 292
    move-result v2

    .line 293
    iget-wide v3, v0, Ln2/r;->q:J

    .line 294
    .line 295
    shl-long/2addr v3, v8

    .line 296
    invoke-virtual {v10, v8}, Lb3/g;->e(I)I

    .line 297
    .line 298
    .line 299
    move-result v5

    .line 300
    int-to-long v5, v5

    .line 301
    add-long/2addr v3, v5

    .line 302
    iput-wide v3, v0, Ln2/r;->q:J

    .line 303
    .line 304
    if-nez v2, :cond_a

    .line 305
    .line 306
    :cond_b
    :goto_6
    invoke-virtual {v10}, Lb3/g;->d()Z

    .line 307
    .line 308
    .line 309
    move-result v2

    .line 310
    if-eqz v2, :cond_10

    .line 311
    .line 312
    invoke-virtual {v10, v8}, Lb3/g;->l(I)V

    .line 313
    .line 314
    .line 315
    goto :goto_7

    .line 316
    :cond_c
    new-instance v1, Lf2/z;

    .line 317
    .line 318
    invoke-direct {v1}, Lf2/z;-><init>()V

    .line 319
    .line 320
    .line 321
    throw v1

    .line 322
    :cond_d
    new-instance v1, Lf2/z;

    .line 323
    .line 324
    invoke-direct {v1}, Lf2/z;-><init>()V

    .line 325
    .line 326
    .line 327
    throw v1

    .line 328
    :cond_e
    new-instance v1, Lf2/z;

    .line 329
    .line 330
    invoke-direct {v1}, Lf2/z;-><init>()V

    .line 331
    .line 332
    .line 333
    throw v1

    .line 334
    :cond_f
    iget-boolean v2, v0, Ln2/r;->l:Z

    .line 335
    .line 336
    if-nez v2, :cond_10

    .line 337
    .line 338
    goto/16 :goto_b

    .line 339
    .line 340
    :cond_10
    :goto_7
    iget v2, v0, Ln2/r;->m:I

    .line 341
    .line 342
    if-nez v2, :cond_15

    .line 343
    .line 344
    iget v2, v0, Ln2/r;->n:I

    .line 345
    .line 346
    if-nez v2, :cond_14

    .line 347
    .line 348
    iget v2, v0, Ln2/r;->o:I

    .line 349
    .line 350
    if-nez v2, :cond_13

    .line 351
    .line 352
    const/4 v2, 0x0

    .line 353
    :goto_8
    invoke-virtual {v10, v8}, Lb3/g;->e(I)I

    .line 354
    .line 355
    .line 356
    move-result v3

    .line 357
    add-int v15, v2, v3

    .line 358
    .line 359
    const/16 v2, 0xff

    .line 360
    .line 361
    if-eq v3, v2, :cond_12

    .line 362
    .line 363
    iget v2, v10, Lb3/g;->c:I

    .line 364
    .line 365
    mul-int/2addr v2, v8

    .line 366
    iget v3, v10, Lb3/g;->d:I

    .line 367
    .line 368
    add-int/2addr v2, v3

    .line 369
    and-int/lit8 v3, v2, 0x7

    .line 370
    .line 371
    if-nez v3, :cond_11

    .line 372
    .line 373
    shr-int/lit8 v2, v2, 0x3

    .line 374
    .line 375
    goto :goto_9

    .line 376
    :cond_11
    iget-object v2, v9, Lb3/h;->c:Ljava/io/Serializable;

    .line 377
    .line 378
    check-cast v2, [B

    .line 379
    .line 380
    mul-int/lit8 v3, v15, 0x8

    .line 381
    .line 382
    invoke-virtual {v10, v2, v3}, Lb3/g;->f([BI)V

    .line 383
    .line 384
    .line 385
    const/4 v2, 0x0

    .line 386
    :goto_9
    invoke-virtual {v9, v2}, Lb3/h;->q(I)V

    .line 387
    .line 388
    .line 389
    iget-object v2, v0, Ln2/r;->d:Lk2/o;

    .line 390
    .line 391
    invoke-interface {v2, v15, v9}, Lk2/o;->d(ILb3/h;)V

    .line 392
    .line 393
    .line 394
    iget-object v11, v0, Ln2/r;->d:Lk2/o;

    .line 395
    .line 396
    iget-wide v12, v0, Ln2/r;->k:J

    .line 397
    .line 398
    const/4 v14, 0x1

    .line 399
    const/16 v16, 0x0

    .line 400
    .line 401
    const/16 v17, 0x0

    .line 402
    .line 403
    invoke-interface/range {v11 .. v17}, Lk2/o;->b(JIIILk2/n;)V

    .line 404
    .line 405
    .line 406
    iget-wide v2, v0, Ln2/r;->k:J

    .line 407
    .line 408
    iget-wide v4, v0, Ln2/r;->s:J

    .line 409
    .line 410
    add-long/2addr v2, v4

    .line 411
    iput-wide v2, v0, Ln2/r;->k:J

    .line 412
    .line 413
    iget-boolean v2, v0, Ln2/r;->p:Z

    .line 414
    .line 415
    if-eqz v2, :cond_1b

    .line 416
    .line 417
    iget-wide v2, v0, Ln2/r;->q:J

    .line 418
    .line 419
    long-to-int v2, v2

    .line 420
    invoke-virtual {v10, v2}, Lb3/g;->l(I)V

    .line 421
    .line 422
    .line 423
    goto :goto_b

    .line 424
    :cond_12
    move v2, v15

    .line 425
    goto :goto_8

    .line 426
    :cond_13
    new-instance v1, Lf2/z;

    .line 427
    .line 428
    invoke-direct {v1}, Lf2/z;-><init>()V

    .line 429
    .line 430
    .line 431
    throw v1

    .line 432
    :cond_14
    new-instance v1, Lf2/z;

    .line 433
    .line 434
    invoke-direct {v1}, Lf2/z;-><init>()V

    .line 435
    .line 436
    .line 437
    throw v1

    .line 438
    :cond_15
    new-instance v1, Lf2/z;

    .line 439
    .line 440
    invoke-direct {v1}, Lf2/z;-><init>()V

    .line 441
    .line 442
    .line 443
    throw v1

    .line 444
    :cond_16
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 445
    .line 446
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 447
    .line 448
    .line 449
    throw v1

    .line 450
    :cond_17
    iget v2, v0, Ln2/r;->j:I

    .line 451
    .line 452
    and-int/lit16 v2, v2, -0xe1

    .line 453
    .line 454
    shl-int/2addr v2, v8

    .line 455
    invoke-virtual/range {p1 .. p1}, Lb3/h;->h()I

    .line 456
    .line 457
    .line 458
    move-result v3

    .line 459
    or-int/2addr v2, v3

    .line 460
    iput v2, v0, Ln2/r;->i:I

    .line 461
    .line 462
    iget-object v3, v9, Lb3/h;->c:Ljava/io/Serializable;

    .line 463
    .line 464
    check-cast v3, [B

    .line 465
    .line 466
    array-length v3, v3

    .line 467
    if-le v2, v3, :cond_18

    .line 468
    .line 469
    invoke-virtual {v9, v2}, Lb3/h;->n(I)V

    .line 470
    .line 471
    .line 472
    iget-object v2, v9, Lb3/h;->c:Ljava/io/Serializable;

    .line 473
    .line 474
    check-cast v2, [B

    .line 475
    .line 476
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 477
    .line 478
    .line 479
    array-length v3, v2

    .line 480
    iput-object v2, v10, Lb3/g;->b:[B

    .line 481
    .line 482
    const/4 v2, 0x0

    .line 483
    iput v2, v10, Lb3/g;->c:I

    .line 484
    .line 485
    iput v2, v10, Lb3/g;->d:I

    .line 486
    .line 487
    iput v3, v10, Lb3/g;->e:I

    .line 488
    .line 489
    goto :goto_a

    .line 490
    :cond_18
    const/4 v2, 0x0

    .line 491
    :goto_a
    iput v2, v0, Ln2/r;->h:I

    .line 492
    .line 493
    iput v5, v0, Ln2/r;->g:I

    .line 494
    .line 495
    goto/16 :goto_0

    .line 496
    .line 497
    :cond_19
    invoke-virtual/range {p1 .. p1}, Lb3/h;->h()I

    .line 498
    .line 499
    .line 500
    move-result v2

    .line 501
    and-int/lit16 v3, v2, 0xe0

    .line 502
    .line 503
    const/16 v4, 0xe0

    .line 504
    .line 505
    if-ne v3, v4, :cond_1a

    .line 506
    .line 507
    iput v2, v0, Ln2/r;->j:I

    .line 508
    .line 509
    iput v6, v0, Ln2/r;->g:I

    .line 510
    .line 511
    goto/16 :goto_0

    .line 512
    .line 513
    :cond_1a
    if-eq v2, v5, :cond_0

    .line 514
    .line 515
    :cond_1b
    :goto_b
    const/4 v2, 0x0

    .line 516
    iput v2, v0, Ln2/r;->g:I

    .line 517
    .line 518
    goto/16 :goto_0

    .line 519
    .line 520
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Lb3/h;->h()I

    .line 521
    .line 522
    .line 523
    move-result v2

    .line 524
    if-ne v2, v5, :cond_0

    .line 525
    .line 526
    iput v4, v0, Ln2/r;->g:I

    .line 527
    .line 528
    goto/16 :goto_0

    .line 529
    .line 530
    :cond_1d
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
    iput-wide p1, p0, Ln2/r;->k:J

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
    iget v0, p2, Ln2/e0;->d:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    check-cast p1, Lw2/p;

    .line 11
    .line 12
    invoke-virtual {p1, v0, v1}, Lw2/p;->C(II)Lk2/o;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Ln2/r;->d:Lk2/o;

    .line 17
    .line 18
    invoke-virtual {p2}, Ln2/e0;->b()V

    .line 19
    .line 20
    .line 21
    iget-object p1, p2, Ln2/e0;->e:Ljava/lang/String;

    .line 22
    .line 23
    iput-object p1, p0, Ln2/r;->f:Ljava/lang/String;

    .line 24
    .line 25
    return-void
.end method
