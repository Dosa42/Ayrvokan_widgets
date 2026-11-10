.class public final Ln2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln2/j;


# static fields
.field public static final v:[B


# instance fields
.field public final a:Z

.field public final b:Lb3/g;

.field public final c:Lb3/h;

.field public final d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Lk2/o;

.field public g:Lk2/o;

.field public h:I

.field public i:I

.field public j:I

.field public k:Z

.field public l:Z

.field public m:I

.field public n:I

.field public o:I

.field public p:Z

.field public q:J

.field public r:I

.field public s:J

.field public t:Lk2/o;

.field public u:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Ln2/f;->v:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x49t
        0x44t
        0x33t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lb3/g;

    .line 5
    .line 6
    const/4 v1, 0x7

    .line 7
    new-array v1, v1, [B

    .line 8
    .line 9
    invoke-direct {v0, v1}, Lb3/g;-><init>([B)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Ln2/f;->b:Lb3/g;

    .line 13
    .line 14
    new-instance v0, Lb3/h;

    .line 15
    .line 16
    sget-object v1, Ln2/f;->v:[B

    .line 17
    .line 18
    const/16 v2, 0xa

    .line 19
    .line 20
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, v1}, Lb3/h;-><init>([B)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Ln2/f;->c:Lb3/h;

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    iput v0, p0, Ln2/f;->h:I

    .line 31
    .line 32
    iput v0, p0, Ln2/f;->i:I

    .line 33
    .line 34
    const/16 v0, 0x100

    .line 35
    .line 36
    iput v0, p0, Ln2/f;->j:I

    .line 37
    .line 38
    const/4 v0, -0x1

    .line 39
    iput v0, p0, Ln2/f;->m:I

    .line 40
    .line 41
    iput v0, p0, Ln2/f;->n:I

    .line 42
    .line 43
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    iput-wide v0, p0, Ln2/f;->q:J

    .line 49
    .line 50
    iput-boolean p2, p0, Ln2/f;->a:Z

    .line 51
    .line 52
    iput-object p1, p0, Ln2/f;->d:Ljava/lang/String;

    .line 53
    .line 54
    return-void
.end method


# virtual methods
.method public final a(Lb3/h;[BI)Z
    .locals 2

    .line 1
    iget v0, p1, Lb3/h;->b:I

    .line 2
    .line 3
    iget v1, p1, Lb3/h;->a:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    iget v1, p0, Ln2/f;->i:I

    .line 7
    .line 8
    sub-int v1, p3, v1

    .line 9
    .line 10
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget v1, p0, Ln2/f;->i:I

    .line 15
    .line 16
    invoke-virtual {p1, p2, v1, v0}, Lb3/h;->a([BII)V

    .line 17
    .line 18
    .line 19
    iget p1, p0, Ln2/f;->i:I

    .line 20
    .line 21
    add-int/2addr p1, v0

    .line 22
    iput p1, p0, Ln2/f;->i:I

    .line 23
    .line 24
    if-ne p1, p3, :cond_0

    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p1, 0x0

    .line 29
    :goto_0
    return p1
.end method

.method public final b(Lb3/h;)V
    .locals 24

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
    sub-int v4, v2, v3

    .line 10
    .line 11
    if-lez v4, :cond_2c

    .line 12
    .line 13
    iget v5, v0, Ln2/f;->h:I

    .line 14
    .line 15
    const/16 v7, 0xd

    .line 16
    .line 17
    const/16 v8, 0x100

    .line 18
    .line 19
    const/4 v9, 0x7

    .line 20
    const/4 v10, 0x4

    .line 21
    const/4 v11, 0x2

    .line 22
    const/4 v12, 0x3

    .line 23
    const/4 v13, 0x1

    .line 24
    const/4 v14, 0x0

    .line 25
    iget-object v15, v0, Ln2/f;->c:Lb3/h;

    .line 26
    .line 27
    iget-object v6, v0, Ln2/f;->b:Lb3/g;

    .line 28
    .line 29
    if-eqz v5, :cond_c

    .line 30
    .line 31
    if-eq v5, v13, :cond_8

    .line 32
    .line 33
    const/16 v2, 0xa

    .line 34
    .line 35
    if-eq v5, v11, :cond_7

    .line 36
    .line 37
    if-eq v5, v12, :cond_2

    .line 38
    .line 39
    if-ne v5, v10, :cond_1

    .line 40
    .line 41
    iget v2, v0, Ln2/f;->r:I

    .line 42
    .line 43
    iget v3, v0, Ln2/f;->i:I

    .line 44
    .line 45
    sub-int/2addr v2, v3

    .line 46
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    iget-object v3, v0, Ln2/f;->t:Lk2/o;

    .line 51
    .line 52
    invoke-interface {v3, v2, v1}, Lk2/o;->d(ILb3/h;)V

    .line 53
    .line 54
    .line 55
    iget v3, v0, Ln2/f;->i:I

    .line 56
    .line 57
    add-int/2addr v3, v2

    .line 58
    iput v3, v0, Ln2/f;->i:I

    .line 59
    .line 60
    iget v2, v0, Ln2/f;->r:I

    .line 61
    .line 62
    if-ne v3, v2, :cond_0

    .line 63
    .line 64
    iget-object v15, v0, Ln2/f;->t:Lk2/o;

    .line 65
    .line 66
    iget-wide v3, v0, Ln2/f;->s:J

    .line 67
    .line 68
    const/16 v18, 0x1

    .line 69
    .line 70
    const/16 v20, 0x0

    .line 71
    .line 72
    const/16 v21, 0x0

    .line 73
    .line 74
    move-wide/from16 v16, v3

    .line 75
    .line 76
    move/from16 v19, v2

    .line 77
    .line 78
    invoke-interface/range {v15 .. v21}, Lk2/o;->b(JIIILk2/n;)V

    .line 79
    .line 80
    .line 81
    iget-wide v2, v0, Ln2/f;->s:J

    .line 82
    .line 83
    iget-wide v4, v0, Ln2/f;->u:J

    .line 84
    .line 85
    add-long/2addr v2, v4

    .line 86
    iput-wide v2, v0, Ln2/f;->s:J

    .line 87
    .line 88
    iput v14, v0, Ln2/f;->h:I

    .line 89
    .line 90
    iput v14, v0, Ln2/f;->i:I

    .line 91
    .line 92
    iput v8, v0, Ln2/f;->j:I

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 96
    .line 97
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 98
    .line 99
    .line 100
    throw v1

    .line 101
    :cond_2
    iget-boolean v3, v0, Ln2/f;->k:Z

    .line 102
    .line 103
    const/4 v4, 0x5

    .line 104
    if-eqz v3, :cond_3

    .line 105
    .line 106
    move v3, v9

    .line 107
    goto :goto_1

    .line 108
    :cond_3
    move v3, v4

    .line 109
    :goto_1
    iget-object v5, v6, Lb3/g;->b:[B

    .line 110
    .line 111
    invoke-virtual {v0, v1, v5, v3}, Ln2/f;->a(Lb3/h;[BI)Z

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    if-eqz v3, :cond_0

    .line 116
    .line 117
    invoke-virtual {v6, v14}, Lb3/g;->i(I)V

    .line 118
    .line 119
    .line 120
    iget-boolean v3, v0, Ln2/f;->p:Z

    .line 121
    .line 122
    if-nez v3, :cond_5

    .line 123
    .line 124
    invoke-virtual {v6, v11}, Lb3/g;->e(I)I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    add-int/2addr v2, v13

    .line 129
    if-eq v2, v11, :cond_4

    .line 130
    .line 131
    move v2, v11

    .line 132
    :cond_4
    invoke-virtual {v6, v4}, Lb3/g;->l(I)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v6, v12}, Lb3/g;->e(I)I

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    iget v5, v0, Ln2/f;->n:I

    .line 140
    .line 141
    new-array v8, v11, [B

    .line 142
    .line 143
    shl-int/2addr v2, v12

    .line 144
    and-int/lit16 v2, v2, 0xf8

    .line 145
    .line 146
    shr-int/lit8 v15, v5, 0x1

    .line 147
    .line 148
    and-int/2addr v15, v9

    .line 149
    or-int/2addr v2, v15

    .line 150
    int-to-byte v2, v2

    .line 151
    aput-byte v2, v8, v14

    .line 152
    .line 153
    shl-int/lit8 v2, v5, 0x7

    .line 154
    .line 155
    and-int/lit16 v2, v2, 0x80

    .line 156
    .line 157
    shl-int/2addr v3, v12

    .line 158
    and-int/lit8 v3, v3, 0x78

    .line 159
    .line 160
    or-int/2addr v2, v3

    .line 161
    int-to-byte v2, v2

    .line 162
    aput-byte v2, v8, v13

    .line 163
    .line 164
    new-instance v2, Lb3/g;

    .line 165
    .line 166
    invoke-direct {v2, v8}, Lb3/g;-><init>([B)V

    .line 167
    .line 168
    .line 169
    invoke-static {v2, v14}, Lc1/b;->x(Lb3/g;Z)Landroid/util/Pair;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    iget-object v15, v0, Ln2/f;->e:Ljava/lang/String;

    .line 174
    .line 175
    const-string v16, "audio/mp4a-latm"

    .line 176
    .line 177
    const/16 v17, -0x1

    .line 178
    .line 179
    const/16 v18, -0x1

    .line 180
    .line 181
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 182
    .line 183
    check-cast v3, Ljava/lang/Integer;

    .line 184
    .line 185
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 186
    .line 187
    .line 188
    move-result v19

    .line 189
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 190
    .line 191
    check-cast v2, Ljava/lang/Integer;

    .line 192
    .line 193
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 194
    .line 195
    .line 196
    move-result v20

    .line 197
    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 198
    .line 199
    .line 200
    move-result-object v21

    .line 201
    const/16 v22, 0x0

    .line 202
    .line 203
    iget-object v2, v0, Ln2/f;->d:Ljava/lang/String;

    .line 204
    .line 205
    move-object/from16 v23, v2

    .line 206
    .line 207
    invoke-static/range {v15 .. v23}, Lf2/t;->g(Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lj2/b;Ljava/lang/String;)Lf2/t;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    iget v3, v2, Lf2/t;->w:I

    .line 212
    .line 213
    int-to-long v8, v3

    .line 214
    const-wide/32 v15, 0x3d090000

    .line 215
    .line 216
    .line 217
    div-long v8, v15, v8

    .line 218
    .line 219
    iput-wide v8, v0, Ln2/f;->q:J

    .line 220
    .line 221
    iget-object v3, v0, Ln2/f;->f:Lk2/o;

    .line 222
    .line 223
    invoke-interface {v3, v2}, Lk2/o;->c(Lf2/t;)V

    .line 224
    .line 225
    .line 226
    iput-boolean v13, v0, Ln2/f;->p:Z

    .line 227
    .line 228
    goto :goto_2

    .line 229
    :cond_5
    invoke-virtual {v6, v2}, Lb3/g;->l(I)V

    .line 230
    .line 231
    .line 232
    :goto_2
    invoke-virtual {v6, v10}, Lb3/g;->l(I)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v6, v7}, Lb3/g;->e(I)I

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    sub-int/2addr v2, v11

    .line 240
    sub-int/2addr v2, v4

    .line 241
    iget-boolean v3, v0, Ln2/f;->k:Z

    .line 242
    .line 243
    if-eqz v3, :cond_6

    .line 244
    .line 245
    add-int/lit8 v2, v2, -0x2

    .line 246
    .line 247
    :cond_6
    iget-object v3, v0, Ln2/f;->f:Lk2/o;

    .line 248
    .line 249
    iget-wide v4, v0, Ln2/f;->q:J

    .line 250
    .line 251
    iput v10, v0, Ln2/f;->h:I

    .line 252
    .line 253
    iput v14, v0, Ln2/f;->i:I

    .line 254
    .line 255
    iput-object v3, v0, Ln2/f;->t:Lk2/o;

    .line 256
    .line 257
    iput-wide v4, v0, Ln2/f;->u:J

    .line 258
    .line 259
    iput v2, v0, Ln2/f;->r:I

    .line 260
    .line 261
    goto/16 :goto_0

    .line 262
    .line 263
    :cond_7
    iget-object v3, v15, Lb3/h;->c:Ljava/io/Serializable;

    .line 264
    .line 265
    check-cast v3, [B

    .line 266
    .line 267
    invoke-virtual {v0, v1, v3, v2}, Ln2/f;->a(Lb3/h;[BI)Z

    .line 268
    .line 269
    .line 270
    move-result v3

    .line 271
    if-eqz v3, :cond_0

    .line 272
    .line 273
    iget-object v3, v0, Ln2/f;->g:Lk2/o;

    .line 274
    .line 275
    invoke-interface {v3, v2, v15}, Lk2/o;->d(ILb3/h;)V

    .line 276
    .line 277
    .line 278
    const/4 v3, 0x6

    .line 279
    invoke-virtual {v15, v3}, Lb3/h;->q(I)V

    .line 280
    .line 281
    .line 282
    iget-object v3, v0, Ln2/f;->g:Lk2/o;

    .line 283
    .line 284
    invoke-virtual {v15}, Lb3/h;->g()I

    .line 285
    .line 286
    .line 287
    move-result v4

    .line 288
    add-int/2addr v4, v2

    .line 289
    iput v10, v0, Ln2/f;->h:I

    .line 290
    .line 291
    iput v2, v0, Ln2/f;->i:I

    .line 292
    .line 293
    iput-object v3, v0, Ln2/f;->t:Lk2/o;

    .line 294
    .line 295
    const-wide/16 v2, 0x0

    .line 296
    .line 297
    iput-wide v2, v0, Ln2/f;->u:J

    .line 298
    .line 299
    iput v4, v0, Ln2/f;->r:I

    .line 300
    .line 301
    goto/16 :goto_0

    .line 302
    .line 303
    :cond_8
    if-nez v4, :cond_9

    .line 304
    .line 305
    goto/16 :goto_0

    .line 306
    .line 307
    :cond_9
    iget-object v2, v6, Lb3/g;->b:[B

    .line 308
    .line 309
    iget-object v4, v1, Lb3/h;->c:Ljava/io/Serializable;

    .line 310
    .line 311
    check-cast v4, [B

    .line 312
    .line 313
    aget-byte v3, v4, v3

    .line 314
    .line 315
    aput-byte v3, v2, v14

    .line 316
    .line 317
    invoke-virtual {v6, v11}, Lb3/g;->i(I)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v6, v10}, Lb3/g;->e(I)I

    .line 321
    .line 322
    .line 323
    move-result v2

    .line 324
    iget v3, v0, Ln2/f;->n:I

    .line 325
    .line 326
    const/4 v4, -0x1

    .line 327
    if-eq v3, v4, :cond_a

    .line 328
    .line 329
    if-eq v2, v3, :cond_a

    .line 330
    .line 331
    iput-boolean v14, v0, Ln2/f;->l:Z

    .line 332
    .line 333
    iput v14, v0, Ln2/f;->h:I

    .line 334
    .line 335
    iput v14, v0, Ln2/f;->i:I

    .line 336
    .line 337
    iput v8, v0, Ln2/f;->j:I

    .line 338
    .line 339
    goto/16 :goto_0

    .line 340
    .line 341
    :cond_a
    iget-boolean v3, v0, Ln2/f;->l:Z

    .line 342
    .line 343
    if-nez v3, :cond_b

    .line 344
    .line 345
    iput-boolean v13, v0, Ln2/f;->l:Z

    .line 346
    .line 347
    iget v3, v0, Ln2/f;->o:I

    .line 348
    .line 349
    iput v3, v0, Ln2/f;->m:I

    .line 350
    .line 351
    iput v2, v0, Ln2/f;->n:I

    .line 352
    .line 353
    :cond_b
    iput v12, v0, Ln2/f;->h:I

    .line 354
    .line 355
    iput v14, v0, Ln2/f;->i:I

    .line 356
    .line 357
    goto/16 :goto_0

    .line 358
    .line 359
    :cond_c
    iget-object v4, v1, Lb3/h;->c:Ljava/io/Serializable;

    .line 360
    .line 361
    check-cast v4, [B

    .line 362
    .line 363
    :goto_3
    if-ge v3, v2, :cond_2b

    .line 364
    .line 365
    add-int/lit8 v5, v3, 0x1

    .line 366
    .line 367
    aget-byte v3, v4, v3

    .line 368
    .line 369
    and-int/lit16 v3, v3, 0xff

    .line 370
    .line 371
    iget v8, v0, Ln2/f;->j:I

    .line 372
    .line 373
    const/16 v12, 0x200

    .line 374
    .line 375
    if-ne v8, v12, :cond_24

    .line 376
    .line 377
    int-to-byte v8, v3

    .line 378
    and-int/lit16 v8, v8, 0xff

    .line 379
    .line 380
    const v19, 0xff00

    .line 381
    .line 382
    .line 383
    or-int v8, v8, v19

    .line 384
    .line 385
    const v20, 0xfff6

    .line 386
    .line 387
    .line 388
    and-int v8, v8, v20

    .line 389
    .line 390
    const v12, 0xfff0

    .line 391
    .line 392
    .line 393
    if-ne v8, v12, :cond_d

    .line 394
    .line 395
    move v8, v13

    .line 396
    goto :goto_4

    .line 397
    :cond_d
    move v8, v14

    .line 398
    :goto_4
    if-eqz v8, :cond_24

    .line 399
    .line 400
    iget-boolean v8, v0, Ln2/f;->l:Z

    .line 401
    .line 402
    if-nez v8, :cond_21

    .line 403
    .line 404
    add-int/lit8 v8, v5, -0x2

    .line 405
    .line 406
    add-int/lit8 v12, v8, 0x1

    .line 407
    .line 408
    invoke-virtual {v1, v12}, Lb3/h;->q(I)V

    .line 409
    .line 410
    .line 411
    iget-object v12, v6, Lb3/g;->b:[B

    .line 412
    .line 413
    iget v9, v1, Lb3/h;->b:I

    .line 414
    .line 415
    iget v7, v1, Lb3/h;->a:I

    .line 416
    .line 417
    sub-int/2addr v9, v7

    .line 418
    if-ge v9, v13, :cond_e

    .line 419
    .line 420
    move v7, v14

    .line 421
    goto :goto_5

    .line 422
    :cond_e
    invoke-virtual {v1, v12, v14, v13}, Lb3/h;->a([BII)V

    .line 423
    .line 424
    .line 425
    move v7, v13

    .line 426
    :goto_5
    if-nez v7, :cond_f

    .line 427
    .line 428
    :goto_6
    const/4 v11, -0x1

    .line 429
    goto/16 :goto_d

    .line 430
    .line 431
    :cond_f
    invoke-virtual {v6, v10}, Lb3/g;->i(I)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v6, v13}, Lb3/g;->e(I)I

    .line 435
    .line 436
    .line 437
    move-result v7

    .line 438
    iget v9, v0, Ln2/f;->m:I

    .line 439
    .line 440
    const/4 v12, -0x1

    .line 441
    if-eq v9, v12, :cond_10

    .line 442
    .line 443
    if-eq v7, v9, :cond_10

    .line 444
    .line 445
    goto :goto_8

    .line 446
    :cond_10
    iget v9, v0, Ln2/f;->n:I

    .line 447
    .line 448
    if-eq v9, v12, :cond_14

    .line 449
    .line 450
    iget-object v9, v6, Lb3/g;->b:[B

    .line 451
    .line 452
    iget v12, v1, Lb3/h;->b:I

    .line 453
    .line 454
    iget v10, v1, Lb3/h;->a:I

    .line 455
    .line 456
    sub-int/2addr v12, v10

    .line 457
    if-ge v12, v13, :cond_11

    .line 458
    .line 459
    move v9, v14

    .line 460
    goto :goto_7

    .line 461
    :cond_11
    invoke-virtual {v1, v9, v14, v13}, Lb3/h;->a([BII)V

    .line 462
    .line 463
    .line 464
    move v9, v13

    .line 465
    :goto_7
    if-nez v9, :cond_12

    .line 466
    .line 467
    const/4 v12, 0x4

    .line 468
    goto :goto_a

    .line 469
    :cond_12
    invoke-virtual {v6, v11}, Lb3/g;->i(I)V

    .line 470
    .line 471
    .line 472
    const/4 v9, 0x4

    .line 473
    invoke-virtual {v6, v9}, Lb3/g;->e(I)I

    .line 474
    .line 475
    .line 476
    move-result v10

    .line 477
    iget v9, v0, Ln2/f;->n:I

    .line 478
    .line 479
    if-eq v10, v9, :cond_13

    .line 480
    .line 481
    :goto_8
    goto :goto_6

    .line 482
    :cond_13
    add-int/lit8 v9, v8, 0x2

    .line 483
    .line 484
    invoke-virtual {v1, v9}, Lb3/h;->q(I)V

    .line 485
    .line 486
    .line 487
    :cond_14
    iget-object v9, v6, Lb3/g;->b:[B

    .line 488
    .line 489
    iget v10, v1, Lb3/h;->b:I

    .line 490
    .line 491
    iget v12, v1, Lb3/h;->a:I

    .line 492
    .line 493
    sub-int/2addr v10, v12

    .line 494
    const/4 v12, 0x4

    .line 495
    if-ge v10, v12, :cond_15

    .line 496
    .line 497
    move v9, v14

    .line 498
    goto :goto_9

    .line 499
    :cond_15
    invoke-virtual {v1, v9, v14, v12}, Lb3/h;->a([BII)V

    .line 500
    .line 501
    .line 502
    move v9, v13

    .line 503
    :goto_9
    if-nez v9, :cond_16

    .line 504
    .line 505
    :goto_a
    const/4 v11, -0x1

    .line 506
    goto :goto_c

    .line 507
    :cond_16
    const/16 v9, 0xe

    .line 508
    .line 509
    invoke-virtual {v6, v9}, Lb3/g;->i(I)V

    .line 510
    .line 511
    .line 512
    const/16 v9, 0xd

    .line 513
    .line 514
    invoke-virtual {v6, v9}, Lb3/g;->e(I)I

    .line 515
    .line 516
    .line 517
    move-result v10

    .line 518
    const/4 v9, 0x7

    .line 519
    if-ge v10, v9, :cond_17

    .line 520
    .line 521
    goto :goto_6

    .line 522
    :cond_17
    iget-object v9, v1, Lb3/h;->c:Ljava/io/Serializable;

    .line 523
    .line 524
    check-cast v9, [B

    .line 525
    .line 526
    iget v12, v1, Lb3/h;->b:I

    .line 527
    .line 528
    add-int/2addr v8, v10

    .line 529
    if-lt v8, v12, :cond_18

    .line 530
    .line 531
    goto :goto_a

    .line 532
    :cond_18
    aget-byte v10, v9, v8

    .line 533
    .line 534
    const/4 v11, -0x1

    .line 535
    if-ne v10, v11, :cond_1b

    .line 536
    .line 537
    add-int/lit8 v8, v8, 0x1

    .line 538
    .line 539
    if-ne v8, v12, :cond_19

    .line 540
    .line 541
    goto :goto_c

    .line 542
    :cond_19
    aget-byte v8, v9, v8

    .line 543
    .line 544
    and-int/lit16 v9, v8, 0xff

    .line 545
    .line 546
    or-int v9, v9, v19

    .line 547
    .line 548
    and-int v9, v9, v20

    .line 549
    .line 550
    const v10, 0xfff0

    .line 551
    .line 552
    .line 553
    if-ne v9, v10, :cond_1a

    .line 554
    .line 555
    move v9, v13

    .line 556
    goto :goto_b

    .line 557
    :cond_1a
    move v9, v14

    .line 558
    :goto_b
    if-eqz v9, :cond_20

    .line 559
    .line 560
    and-int/lit8 v8, v8, 0x8

    .line 561
    .line 562
    const/4 v9, 0x3

    .line 563
    shr-int/2addr v8, v9

    .line 564
    if-ne v8, v7, :cond_20

    .line 565
    .line 566
    goto :goto_c

    .line 567
    :cond_1b
    const/16 v7, 0x49

    .line 568
    .line 569
    if-eq v10, v7, :cond_1c

    .line 570
    .line 571
    goto :goto_d

    .line 572
    :cond_1c
    add-int/lit8 v7, v8, 0x1

    .line 573
    .line 574
    if-ne v7, v12, :cond_1d

    .line 575
    .line 576
    goto :goto_c

    .line 577
    :cond_1d
    aget-byte v7, v9, v7

    .line 578
    .line 579
    const/16 v10, 0x44

    .line 580
    .line 581
    if-eq v7, v10, :cond_1e

    .line 582
    .line 583
    goto :goto_d

    .line 584
    :cond_1e
    add-int/lit8 v8, v8, 0x2

    .line 585
    .line 586
    if-ne v8, v12, :cond_1f

    .line 587
    .line 588
    goto :goto_c

    .line 589
    :cond_1f
    aget-byte v7, v9, v8

    .line 590
    .line 591
    const/16 v8, 0x33

    .line 592
    .line 593
    if-ne v7, v8, :cond_20

    .line 594
    .line 595
    :goto_c
    move v7, v13

    .line 596
    goto :goto_e

    .line 597
    :cond_20
    :goto_d
    move v7, v14

    .line 598
    :goto_e
    if-eqz v7, :cond_25

    .line 599
    .line 600
    :cond_21
    and-int/lit8 v2, v3, 0x8

    .line 601
    .line 602
    const/4 v4, 0x3

    .line 603
    shr-int/2addr v2, v4

    .line 604
    iput v2, v0, Ln2/f;->o:I

    .line 605
    .line 606
    and-int/lit8 v2, v3, 0x1

    .line 607
    .line 608
    if-nez v2, :cond_22

    .line 609
    .line 610
    move v2, v13

    .line 611
    goto :goto_f

    .line 612
    :cond_22
    move v2, v14

    .line 613
    :goto_f
    iput-boolean v2, v0, Ln2/f;->k:Z

    .line 614
    .line 615
    iget-boolean v2, v0, Ln2/f;->l:Z

    .line 616
    .line 617
    if-nez v2, :cond_23

    .line 618
    .line 619
    iput v13, v0, Ln2/f;->h:I

    .line 620
    .line 621
    iput v14, v0, Ln2/f;->i:I

    .line 622
    .line 623
    goto :goto_10

    .line 624
    :cond_23
    const/4 v2, 0x3

    .line 625
    iput v2, v0, Ln2/f;->h:I

    .line 626
    .line 627
    iput v14, v0, Ln2/f;->i:I

    .line 628
    .line 629
    goto :goto_10

    .line 630
    :cond_24
    const/4 v11, -0x1

    .line 631
    :cond_25
    iget v7, v0, Ln2/f;->j:I

    .line 632
    .line 633
    or-int/2addr v3, v7

    .line 634
    const/16 v8, 0x149

    .line 635
    .line 636
    if-eq v3, v8, :cond_2a

    .line 637
    .line 638
    const/16 v8, 0x1ff

    .line 639
    .line 640
    if-eq v3, v8, :cond_29

    .line 641
    .line 642
    const/16 v8, 0x344

    .line 643
    .line 644
    if-eq v3, v8, :cond_28

    .line 645
    .line 646
    const/16 v8, 0x433

    .line 647
    .line 648
    if-eq v3, v8, :cond_27

    .line 649
    .line 650
    const/16 v8, 0x100

    .line 651
    .line 652
    if-eq v7, v8, :cond_26

    .line 653
    .line 654
    iput v8, v0, Ln2/f;->j:I

    .line 655
    .line 656
    add-int/lit8 v5, v5, -0x1

    .line 657
    .line 658
    move v3, v5

    .line 659
    const/4 v7, 0x2

    .line 660
    const/4 v9, 0x3

    .line 661
    goto :goto_13

    .line 662
    :cond_26
    const/4 v7, 0x2

    .line 663
    const/4 v9, 0x3

    .line 664
    goto :goto_12

    .line 665
    :cond_27
    const/4 v7, 0x2

    .line 666
    iput v7, v0, Ln2/f;->h:I

    .line 667
    .line 668
    const/4 v9, 0x3

    .line 669
    iput v9, v0, Ln2/f;->i:I

    .line 670
    .line 671
    iput v14, v0, Ln2/f;->r:I

    .line 672
    .line 673
    invoke-virtual {v15, v14}, Lb3/h;->q(I)V

    .line 674
    .line 675
    .line 676
    :goto_10
    invoke-virtual {v1, v5}, Lb3/h;->q(I)V

    .line 677
    .line 678
    .line 679
    goto/16 :goto_0

    .line 680
    .line 681
    :cond_28
    const/4 v7, 0x2

    .line 682
    const/16 v8, 0x100

    .line 683
    .line 684
    const/4 v9, 0x3

    .line 685
    const/16 v12, 0x400

    .line 686
    .line 687
    goto :goto_11

    .line 688
    :cond_29
    const/4 v7, 0x2

    .line 689
    const/16 v8, 0x100

    .line 690
    .line 691
    const/4 v9, 0x3

    .line 692
    const/16 v12, 0x200

    .line 693
    .line 694
    goto :goto_11

    .line 695
    :cond_2a
    const/4 v7, 0x2

    .line 696
    const/16 v8, 0x100

    .line 697
    .line 698
    const/4 v9, 0x3

    .line 699
    const/16 v12, 0x300

    .line 700
    .line 701
    :goto_11
    iput v12, v0, Ln2/f;->j:I

    .line 702
    .line 703
    :goto_12
    move v3, v5

    .line 704
    :goto_13
    move v11, v7

    .line 705
    move v12, v9

    .line 706
    const/16 v7, 0xd

    .line 707
    .line 708
    const/4 v9, 0x7

    .line 709
    const/4 v10, 0x4

    .line 710
    goto/16 :goto_3

    .line 711
    .line 712
    :cond_2b
    invoke-virtual {v1, v3}, Lb3/h;->q(I)V

    .line 713
    .line 714
    .line 715
    goto/16 :goto_0

    .line 716
    .line 717
    :cond_2c
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
    iput-wide p1, p0, Ln2/f;->s:J

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
    iput-object v0, p0, Ln2/f;->e:Ljava/lang/String;

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
    const/4 v1, 0x1

    .line 19
    invoke-virtual {p1, v0, v1}, Lw2/p;->C(II)Lk2/o;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Ln2/f;->f:Lk2/o;

    .line 24
    .line 25
    iget-boolean v0, p0, Ln2/f;->a:Z

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {p2}, Ln2/e0;->a()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Ln2/e0;->b()V

    .line 33
    .line 34
    .line 35
    iget v0, p2, Ln2/e0;->d:I

    .line 36
    .line 37
    const/4 v1, 0x4

    .line 38
    invoke-virtual {p1, v0, v1}, Lw2/p;->C(II)Lk2/o;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Ln2/f;->g:Lk2/o;

    .line 43
    .line 44
    invoke-virtual {p2}, Ln2/e0;->b()V

    .line 45
    .line 46
    .line 47
    iget-object p2, p2, Ln2/e0;->e:Ljava/lang/String;

    .line 48
    .line 49
    const-string v0, "application/id3"

    .line 50
    .line 51
    invoke-static {p2, v0}, Lf2/t;->i(Ljava/lang/String;Ljava/lang/String;)Lf2/t;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-interface {p1, p2}, Lk2/o;->c(Lf2/t;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    new-instance p1, Lk2/g;

    .line 60
    .line 61
    invoke-direct {p1}, Lk2/g;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object p1, p0, Ln2/f;->g:Lk2/o;

    .line 65
    .line 66
    :goto_0
    return-void
.end method
