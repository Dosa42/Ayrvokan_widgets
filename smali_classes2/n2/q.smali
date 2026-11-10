.class public final Ln2/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln2/j;


# instance fields
.field public final a:Ln2/w;

.field public b:Ljava/lang/String;

.field public c:Lk2/o;

.field public d:Ln2/p;

.field public e:Z

.field public final f:[Z

.field public final g:Lo1/n;

.field public final h:Lo1/n;

.field public final i:Lo1/n;

.field public final j:Lo1/n;

.field public final k:Lo1/n;

.field public l:J

.field public m:J

.field public final n:Lb3/h;


# direct methods
.method public constructor <init>(Ln2/w;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln2/q;->a:Ln2/w;

    const/4 p1, 0x3

    new-array p1, p1, [Z

    iput-object p1, p0, Ln2/q;->f:[Z

    new-instance p1, Lo1/n;

    const/16 v0, 0x20

    invoke-direct {p1, v0}, Lo1/n;-><init>(I)V

    iput-object p1, p0, Ln2/q;->g:Lo1/n;

    new-instance p1, Lo1/n;

    const/16 v0, 0x21

    invoke-direct {p1, v0}, Lo1/n;-><init>(I)V

    iput-object p1, p0, Ln2/q;->h:Lo1/n;

    new-instance p1, Lo1/n;

    const/16 v0, 0x22

    invoke-direct {p1, v0}, Lo1/n;-><init>(I)V

    iput-object p1, p0, Ln2/q;->i:Lo1/n;

    new-instance p1, Lo1/n;

    const/16 v0, 0x27

    invoke-direct {p1, v0}, Lo1/n;-><init>(I)V

    iput-object p1, p0, Ln2/q;->j:Lo1/n;

    new-instance p1, Lo1/n;

    const/16 v0, 0x28

    invoke-direct {p1, v0}, Lo1/n;-><init>(I)V

    iput-object p1, p0, Ln2/q;->k:Lo1/n;

    new-instance p1, Lb3/h;

    invoke-direct {p1}, Lb3/h;-><init>()V

    iput-object p1, p0, Ln2/q;->n:Lb3/h;

    return-void
.end method


# virtual methods
.method public final a([BII)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Ln2/q;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Ln2/q;->d:Ln2/p;

    .line 6
    .line 7
    iget-boolean v1, v0, Ln2/p;->f:Z

    .line 8
    .line 9
    if-eqz v1, :cond_3

    .line 10
    .line 11
    add-int/lit8 v1, p2, 0x2

    .line 12
    .line 13
    iget v2, v0, Ln2/p;->d:I

    .line 14
    .line 15
    sub-int/2addr v1, v2

    .line 16
    if-ge v1, p3, :cond_1

    .line 17
    .line 18
    aget-byte v1, p1, v1

    .line 19
    .line 20
    and-int/lit16 v1, v1, 0x80

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v1, v2

    .line 28
    :goto_0
    iput-boolean v1, v0, Ln2/p;->g:Z

    .line 29
    .line 30
    iput-boolean v2, v0, Ln2/p;->f:Z

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    sub-int v1, p3, p2

    .line 34
    .line 35
    add-int/2addr v1, v2

    .line 36
    iput v1, v0, Ln2/p;->d:I

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    iget-object v0, p0, Ln2/q;->g:Lo1/n;

    .line 40
    .line 41
    invoke-virtual {v0, p1, p2, p3}, Lo1/n;->a([BII)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Ln2/q;->h:Lo1/n;

    .line 45
    .line 46
    invoke-virtual {v0, p1, p2, p3}, Lo1/n;->a([BII)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Ln2/q;->i:Lo1/n;

    .line 50
    .line 51
    invoke-virtual {v0, p1, p2, p3}, Lo1/n;->a([BII)V

    .line 52
    .line 53
    .line 54
    :cond_3
    :goto_1
    iget-object v0, p0, Ln2/q;->j:Lo1/n;

    .line 55
    .line 56
    invoke-virtual {v0, p1, p2, p3}, Lo1/n;->a([BII)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Ln2/q;->k:Lo1/n;

    .line 60
    .line 61
    invoke-virtual {v0, p1, p2, p3}, Lo1/n;->a([BII)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public final b(Lb3/h;)V
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    :cond_0
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v1, Lb3/h;->b:I

    .line 6
    .line 7
    iget v3, v1, Lb3/h;->a:I

    .line 8
    .line 9
    sub-int v4, v2, v3

    .line 10
    .line 11
    if-lez v4, :cond_30

    .line 12
    .line 13
    iget-object v5, v1, Lb3/h;->c:Ljava/io/Serializable;

    .line 14
    .line 15
    check-cast v5, [B

    .line 16
    .line 17
    iget-wide v6, v0, Ln2/q;->l:J

    .line 18
    .line 19
    int-to-long v8, v4

    .line 20
    add-long/2addr v6, v8

    .line 21
    iput-wide v6, v0, Ln2/q;->l:J

    .line 22
    .line 23
    iget-object v6, v0, Ln2/q;->c:Lk2/o;

    .line 24
    .line 25
    invoke-interface {v6, v4, v1}, Lk2/o;->d(ILb3/h;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    if-ge v3, v2, :cond_0

    .line 29
    .line 30
    iget-object v4, v0, Ln2/q;->f:[Z

    .line 31
    .line 32
    invoke-static {v5, v3, v2, v4}, Lb3/f;->b([BII[Z)I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-ne v4, v2, :cond_1

    .line 37
    .line 38
    invoke-virtual {v0, v5, v3, v2}, Ln2/q;->a([BII)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    add-int/lit8 v6, v4, 0x3

    .line 43
    .line 44
    aget-byte v7, v5, v6

    .line 45
    .line 46
    and-int/lit8 v7, v7, 0x7e

    .line 47
    .line 48
    const/4 v8, 0x1

    .line 49
    shr-int/2addr v7, v8

    .line 50
    sub-int v9, v4, v3

    .line 51
    .line 52
    if-lez v9, :cond_2

    .line 53
    .line 54
    invoke-virtual {v0, v5, v3, v4}, Ln2/q;->a([BII)V

    .line 55
    .line 56
    .line 57
    :cond_2
    sub-int v15, v2, v4

    .line 58
    .line 59
    iget-wide v3, v0, Ln2/q;->l:J

    .line 60
    .line 61
    int-to-long v10, v15

    .line 62
    sub-long/2addr v3, v10

    .line 63
    if-gez v9, :cond_3

    .line 64
    .line 65
    neg-int v9, v9

    .line 66
    goto :goto_1

    .line 67
    :cond_3
    const/4 v9, 0x0

    .line 68
    :goto_1
    iget-wide v10, v0, Ln2/q;->m:J

    .line 69
    .line 70
    iget-boolean v12, v0, Ln2/q;->e:Z

    .line 71
    .line 72
    iget-object v13, v0, Ln2/q;->i:Lo1/n;

    .line 73
    .line 74
    iget-object v8, v0, Ln2/q;->h:Lo1/n;

    .line 75
    .line 76
    iget-object v14, v0, Ln2/q;->g:Lo1/n;

    .line 77
    .line 78
    if-eqz v12, :cond_8

    .line 79
    .line 80
    iget-object v12, v0, Ln2/q;->d:Ln2/p;

    .line 81
    .line 82
    iget-boolean v1, v12, Ln2/p;->j:Z

    .line 83
    .line 84
    if-eqz v1, :cond_4

    .line 85
    .line 86
    iget-boolean v1, v12, Ln2/p;->g:Z

    .line 87
    .line 88
    if-eqz v1, :cond_4

    .line 89
    .line 90
    iget-boolean v1, v12, Ln2/p;->c:Z

    .line 91
    .line 92
    iput-boolean v1, v12, Ln2/p;->m:Z

    .line 93
    .line 94
    const/4 v1, 0x0

    .line 95
    iput-boolean v1, v12, Ln2/p;->j:Z

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_4
    iget-boolean v1, v12, Ln2/p;->h:Z

    .line 99
    .line 100
    if-nez v1, :cond_6

    .line 101
    .line 102
    iget-boolean v1, v12, Ln2/p;->g:Z

    .line 103
    .line 104
    if-eqz v1, :cond_5

    .line 105
    .line 106
    goto :goto_3

    .line 107
    :cond_5
    :goto_2
    move/from16 v17, v2

    .line 108
    .line 109
    move-object/from16 v18, v5

    .line 110
    .line 111
    move/from16 v19, v6

    .line 112
    .line 113
    move/from16 v27, v7

    .line 114
    .line 115
    goto/16 :goto_18

    .line 116
    .line 117
    :cond_6
    :goto_3
    iget-boolean v1, v12, Ln2/p;->i:Z

    .line 118
    .line 119
    move/from16 v17, v2

    .line 120
    .line 121
    if-eqz v1, :cond_7

    .line 122
    .line 123
    iget-wide v1, v12, Ln2/p;->b:J

    .line 124
    .line 125
    move-object/from16 v18, v5

    .line 126
    .line 127
    move/from16 v19, v6

    .line 128
    .line 129
    sub-long v5, v3, v1

    .line 130
    .line 131
    long-to-int v5, v5

    .line 132
    add-int v25, v5, v15

    .line 133
    .line 134
    iget-boolean v5, v12, Ln2/p;->m:Z

    .line 135
    .line 136
    move/from16 v27, v7

    .line 137
    .line 138
    iget-wide v6, v12, Ln2/p;->k:J

    .line 139
    .line 140
    sub-long/2addr v1, v6

    .line 141
    long-to-int v1, v1

    .line 142
    iget-object v2, v12, Ln2/p;->a:Lk2/o;

    .line 143
    .line 144
    iget-wide v6, v12, Ln2/p;->l:J

    .line 145
    .line 146
    const/16 v26, 0x0

    .line 147
    .line 148
    move-object/from16 v20, v2

    .line 149
    .line 150
    move-wide/from16 v21, v6

    .line 151
    .line 152
    move/from16 v23, v5

    .line 153
    .line 154
    move/from16 v24, v1

    .line 155
    .line 156
    invoke-interface/range {v20 .. v26}, Lk2/o;->b(JIIILk2/n;)V

    .line 157
    .line 158
    .line 159
    goto :goto_4

    .line 160
    :cond_7
    move-object/from16 v18, v5

    .line 161
    .line 162
    move/from16 v19, v6

    .line 163
    .line 164
    move/from16 v27, v7

    .line 165
    .line 166
    :goto_4
    iget-wide v1, v12, Ln2/p;->b:J

    .line 167
    .line 168
    iput-wide v1, v12, Ln2/p;->k:J

    .line 169
    .line 170
    iget-wide v1, v12, Ln2/p;->e:J

    .line 171
    .line 172
    iput-wide v1, v12, Ln2/p;->l:J

    .line 173
    .line 174
    const/4 v1, 0x1

    .line 175
    iput-boolean v1, v12, Ln2/p;->i:Z

    .line 176
    .line 177
    iget-boolean v1, v12, Ln2/p;->c:Z

    .line 178
    .line 179
    iput-boolean v1, v12, Ln2/p;->m:Z

    .line 180
    .line 181
    goto/16 :goto_18

    .line 182
    .line 183
    :cond_8
    move/from16 v17, v2

    .line 184
    .line 185
    move-object/from16 v18, v5

    .line 186
    .line 187
    move/from16 v19, v6

    .line 188
    .line 189
    move/from16 v27, v7

    .line 190
    .line 191
    invoke-virtual {v14, v9}, Lo1/n;->b(I)Z

    .line 192
    .line 193
    .line 194
    invoke-virtual {v8, v9}, Lo1/n;->b(I)Z

    .line 195
    .line 196
    .line 197
    invoke-virtual {v13, v9}, Lo1/n;->b(I)Z

    .line 198
    .line 199
    .line 200
    iget-boolean v1, v14, Lo1/n;->c:Z

    .line 201
    .line 202
    if-eqz v1, :cond_26

    .line 203
    .line 204
    iget-boolean v1, v8, Lo1/n;->c:Z

    .line 205
    .line 206
    if-eqz v1, :cond_26

    .line 207
    .line 208
    iget-boolean v1, v13, Lo1/n;->c:Z

    .line 209
    .line 210
    if-eqz v1, :cond_26

    .line 211
    .line 212
    iget-object v1, v0, Ln2/q;->c:Lk2/o;

    .line 213
    .line 214
    iget-object v2, v0, Ln2/q;->b:Ljava/lang/String;

    .line 215
    .line 216
    iget v5, v14, Lo1/n;->d:I

    .line 217
    .line 218
    iget v6, v8, Lo1/n;->d:I

    .line 219
    .line 220
    add-int/2addr v6, v5

    .line 221
    iget v7, v13, Lo1/n;->d:I

    .line 222
    .line 223
    add-int/2addr v6, v7

    .line 224
    new-array v6, v6, [B

    .line 225
    .line 226
    iget-object v7, v14, Lo1/n;->e:Ljava/lang/Object;

    .line 227
    .line 228
    check-cast v7, [B

    .line 229
    .line 230
    const/4 v12, 0x0

    .line 231
    invoke-static {v7, v12, v6, v12, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 232
    .line 233
    .line 234
    iget-object v5, v8, Lo1/n;->e:Ljava/lang/Object;

    .line 235
    .line 236
    check-cast v5, [B

    .line 237
    .line 238
    iget v7, v14, Lo1/n;->d:I

    .line 239
    .line 240
    move/from16 v28, v15

    .line 241
    .line 242
    iget v15, v8, Lo1/n;->d:I

    .line 243
    .line 244
    invoke-static {v5, v12, v6, v7, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 245
    .line 246
    .line 247
    iget-object v5, v13, Lo1/n;->e:Ljava/lang/Object;

    .line 248
    .line 249
    check-cast v5, [B

    .line 250
    .line 251
    iget v7, v14, Lo1/n;->d:I

    .line 252
    .line 253
    iget v15, v8, Lo1/n;->d:I

    .line 254
    .line 255
    add-int/2addr v7, v15

    .line 256
    iget v15, v13, Lo1/n;->d:I

    .line 257
    .line 258
    invoke-static {v5, v12, v6, v7, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 259
    .line 260
    .line 261
    new-instance v5, Lb3/g;

    .line 262
    .line 263
    iget-object v7, v8, Lo1/n;->e:Ljava/lang/Object;

    .line 264
    .line 265
    check-cast v7, [B

    .line 266
    .line 267
    iget v15, v8, Lo1/n;->d:I

    .line 268
    .line 269
    invoke-direct {v5, v7, v12, v15}, Lb3/g;-><init>([BII)V

    .line 270
    .line 271
    .line 272
    const/16 v7, 0x2c

    .line 273
    .line 274
    invoke-virtual {v5, v7}, Lb3/g;->l(I)V

    .line 275
    .line 276
    .line 277
    const/4 v7, 0x3

    .line 278
    invoke-virtual {v5, v7}, Lb3/g;->e(I)I

    .line 279
    .line 280
    .line 281
    move-result v12

    .line 282
    invoke-virtual {v5}, Lb3/g;->k()V

    .line 283
    .line 284
    .line 285
    const/16 v15, 0x58

    .line 286
    .line 287
    invoke-virtual {v5, v15}, Lb3/g;->l(I)V

    .line 288
    .line 289
    .line 290
    const/16 v15, 0x8

    .line 291
    .line 292
    invoke-virtual {v5, v15}, Lb3/g;->l(I)V

    .line 293
    .line 294
    .line 295
    const/4 v7, 0x0

    .line 296
    const/4 v15, 0x0

    .line 297
    :goto_5
    if-ge v15, v12, :cond_b

    .line 298
    .line 299
    invoke-virtual {v5}, Lb3/g;->d()Z

    .line 300
    .line 301
    .line 302
    move-result v22

    .line 303
    if-eqz v22, :cond_9

    .line 304
    .line 305
    add-int/lit8 v7, v7, 0x59

    .line 306
    .line 307
    :cond_9
    invoke-virtual {v5}, Lb3/g;->d()Z

    .line 308
    .line 309
    .line 310
    move-result v22

    .line 311
    if-eqz v22, :cond_a

    .line 312
    .line 313
    add-int/lit8 v7, v7, 0x8

    .line 314
    .line 315
    :cond_a
    add-int/lit8 v15, v15, 0x1

    .line 316
    .line 317
    goto :goto_5

    .line 318
    :cond_b
    invoke-virtual {v5, v7}, Lb3/g;->l(I)V

    .line 319
    .line 320
    .line 321
    const/4 v7, 0x2

    .line 322
    if-lez v12, :cond_c

    .line 323
    .line 324
    rsub-int/lit8 v15, v12, 0x8

    .line 325
    .line 326
    mul-int/2addr v15, v7

    .line 327
    invoke-virtual {v5, v15}, Lb3/g;->l(I)V

    .line 328
    .line 329
    .line 330
    :cond_c
    invoke-virtual {v5}, Lb3/g;->g()I

    .line 331
    .line 332
    .line 333
    invoke-virtual {v5}, Lb3/g;->g()I

    .line 334
    .line 335
    .line 336
    move-result v15

    .line 337
    const/4 v7, 0x3

    .line 338
    if-ne v15, v7, :cond_d

    .line 339
    .line 340
    invoke-virtual {v5}, Lb3/g;->k()V

    .line 341
    .line 342
    .line 343
    :cond_d
    invoke-virtual {v5}, Lb3/g;->g()I

    .line 344
    .line 345
    .line 346
    move-result v7

    .line 347
    invoke-virtual {v5}, Lb3/g;->g()I

    .line 348
    .line 349
    .line 350
    move-result v23

    .line 351
    invoke-virtual {v5}, Lb3/g;->d()Z

    .line 352
    .line 353
    .line 354
    move-result v24

    .line 355
    if-eqz v24, :cond_11

    .line 356
    .line 357
    invoke-virtual {v5}, Lb3/g;->g()I

    .line 358
    .line 359
    .line 360
    move-result v24

    .line 361
    invoke-virtual {v5}, Lb3/g;->g()I

    .line 362
    .line 363
    .line 364
    move-result v25

    .line 365
    invoke-virtual {v5}, Lb3/g;->g()I

    .line 366
    .line 367
    .line 368
    move-result v26

    .line 369
    invoke-virtual {v5}, Lb3/g;->g()I

    .line 370
    .line 371
    .line 372
    move-result v29

    .line 373
    move-object/from16 v30, v13

    .line 374
    .line 375
    const/4 v13, 0x1

    .line 376
    if-eq v15, v13, :cond_f

    .line 377
    .line 378
    const/4 v13, 0x2

    .line 379
    if-ne v15, v13, :cond_e

    .line 380
    .line 381
    goto :goto_6

    .line 382
    :cond_e
    move-object/from16 v31, v8

    .line 383
    .line 384
    const/4 v8, 0x1

    .line 385
    const/4 v13, 0x1

    .line 386
    goto :goto_7

    .line 387
    :cond_f
    :goto_6
    move-object/from16 v31, v8

    .line 388
    .line 389
    const/4 v8, 0x1

    .line 390
    const/4 v13, 0x2

    .line 391
    :goto_7
    if-ne v15, v8, :cond_10

    .line 392
    .line 393
    const/4 v8, 0x2

    .line 394
    goto :goto_8

    .line 395
    :cond_10
    const/4 v8, 0x1

    .line 396
    :goto_8
    add-int v24, v24, v25

    .line 397
    .line 398
    mul-int v24, v24, v13

    .line 399
    .line 400
    sub-int v7, v7, v24

    .line 401
    .line 402
    add-int v26, v26, v29

    .line 403
    .line 404
    mul-int v26, v26, v8

    .line 405
    .line 406
    sub-int v23, v23, v26

    .line 407
    .line 408
    goto :goto_9

    .line 409
    :cond_11
    move-object/from16 v31, v8

    .line 410
    .line 411
    move-object/from16 v30, v13

    .line 412
    .line 413
    :goto_9
    move/from16 v24, v23

    .line 414
    .line 415
    move/from16 v23, v7

    .line 416
    .line 417
    invoke-virtual {v5}, Lb3/g;->g()I

    .line 418
    .line 419
    .line 420
    invoke-virtual {v5}, Lb3/g;->g()I

    .line 421
    .line 422
    .line 423
    invoke-virtual {v5}, Lb3/g;->g()I

    .line 424
    .line 425
    .line 426
    move-result v7

    .line 427
    invoke-virtual {v5}, Lb3/g;->d()Z

    .line 428
    .line 429
    .line 430
    move-result v8

    .line 431
    if-eqz v8, :cond_12

    .line 432
    .line 433
    const/4 v8, 0x0

    .line 434
    goto :goto_a

    .line 435
    :cond_12
    move v8, v12

    .line 436
    :goto_a
    if-gt v8, v12, :cond_13

    .line 437
    .line 438
    invoke-virtual {v5}, Lb3/g;->g()I

    .line 439
    .line 440
    .line 441
    invoke-virtual {v5}, Lb3/g;->g()I

    .line 442
    .line 443
    .line 444
    invoke-virtual {v5}, Lb3/g;->g()I

    .line 445
    .line 446
    .line 447
    add-int/lit8 v8, v8, 0x1

    .line 448
    .line 449
    goto :goto_a

    .line 450
    :cond_13
    invoke-virtual {v5}, Lb3/g;->g()I

    .line 451
    .line 452
    .line 453
    invoke-virtual {v5}, Lb3/g;->g()I

    .line 454
    .line 455
    .line 456
    invoke-virtual {v5}, Lb3/g;->g()I

    .line 457
    .line 458
    .line 459
    invoke-virtual {v5}, Lb3/g;->g()I

    .line 460
    .line 461
    .line 462
    invoke-virtual {v5}, Lb3/g;->g()I

    .line 463
    .line 464
    .line 465
    invoke-virtual {v5}, Lb3/g;->g()I

    .line 466
    .line 467
    .line 468
    invoke-virtual {v5}, Lb3/g;->d()Z

    .line 469
    .line 470
    .line 471
    move-result v8

    .line 472
    const/4 v12, 0x4

    .line 473
    if-eqz v8, :cond_19

    .line 474
    .line 475
    invoke-virtual {v5}, Lb3/g;->d()Z

    .line 476
    .line 477
    .line 478
    move-result v8

    .line 479
    if-eqz v8, :cond_19

    .line 480
    .line 481
    const/4 v8, 0x0

    .line 482
    :goto_b
    if-ge v8, v12, :cond_19

    .line 483
    .line 484
    const/4 v13, 0x0

    .line 485
    :goto_c
    const/4 v15, 0x6

    .line 486
    if-ge v13, v15, :cond_18

    .line 487
    .line 488
    invoke-virtual {v5}, Lb3/g;->d()Z

    .line 489
    .line 490
    .line 491
    move-result v15

    .line 492
    if-nez v15, :cond_14

    .line 493
    .line 494
    invoke-virtual {v5}, Lb3/g;->g()I

    .line 495
    .line 496
    .line 497
    move-object/from16 v29, v14

    .line 498
    .line 499
    goto :goto_e

    .line 500
    :cond_14
    shl-int/lit8 v15, v8, 0x1

    .line 501
    .line 502
    add-int/2addr v15, v12

    .line 503
    const/4 v12, 0x1

    .line 504
    shl-int v15, v12, v15

    .line 505
    .line 506
    move-object/from16 v29, v14

    .line 507
    .line 508
    const/16 v14, 0x40

    .line 509
    .line 510
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    .line 511
    .line 512
    .line 513
    move-result v14

    .line 514
    if-le v8, v12, :cond_15

    .line 515
    .line 516
    invoke-virtual {v5}, Lb3/g;->h()I

    .line 517
    .line 518
    .line 519
    :cond_15
    const/4 v12, 0x0

    .line 520
    :goto_d
    if-ge v12, v14, :cond_16

    .line 521
    .line 522
    invoke-virtual {v5}, Lb3/g;->h()I

    .line 523
    .line 524
    .line 525
    add-int/lit8 v12, v12, 0x1

    .line 526
    .line 527
    goto :goto_d

    .line 528
    :cond_16
    :goto_e
    const/4 v12, 0x3

    .line 529
    if-ne v8, v12, :cond_17

    .line 530
    .line 531
    move v14, v12

    .line 532
    goto :goto_f

    .line 533
    :cond_17
    const/4 v14, 0x1

    .line 534
    :goto_f
    add-int/2addr v13, v14

    .line 535
    move-object/from16 v14, v29

    .line 536
    .line 537
    const/4 v12, 0x4

    .line 538
    goto :goto_c

    .line 539
    :cond_18
    move-object/from16 v29, v14

    .line 540
    .line 541
    const/4 v12, 0x3

    .line 542
    add-int/lit8 v8, v8, 0x1

    .line 543
    .line 544
    const/4 v12, 0x4

    .line 545
    goto :goto_b

    .line 546
    :cond_19
    move-object/from16 v29, v14

    .line 547
    .line 548
    const/4 v8, 0x2

    .line 549
    invoke-virtual {v5, v8}, Lb3/g;->l(I)V

    .line 550
    .line 551
    .line 552
    invoke-virtual {v5}, Lb3/g;->d()Z

    .line 553
    .line 554
    .line 555
    move-result v8

    .line 556
    if-eqz v8, :cond_1a

    .line 557
    .line 558
    const/16 v8, 0x8

    .line 559
    .line 560
    invoke-virtual {v5, v8}, Lb3/g;->l(I)V

    .line 561
    .line 562
    .line 563
    invoke-virtual {v5}, Lb3/g;->g()I

    .line 564
    .line 565
    .line 566
    invoke-virtual {v5}, Lb3/g;->g()I

    .line 567
    .line 568
    .line 569
    invoke-virtual {v5}, Lb3/g;->k()V

    .line 570
    .line 571
    .line 572
    :cond_1a
    invoke-virtual {v5}, Lb3/g;->g()I

    .line 573
    .line 574
    .line 575
    move-result v8

    .line 576
    const/4 v12, 0x0

    .line 577
    const/4 v13, 0x0

    .line 578
    const/4 v14, 0x0

    .line 579
    :goto_10
    if-ge v12, v8, :cond_21

    .line 580
    .line 581
    if-eqz v12, :cond_1b

    .line 582
    .line 583
    invoke-virtual {v5}, Lb3/g;->d()Z

    .line 584
    .line 585
    .line 586
    move-result v13

    .line 587
    :cond_1b
    if-eqz v13, :cond_1e

    .line 588
    .line 589
    invoke-virtual {v5}, Lb3/g;->k()V

    .line 590
    .line 591
    .line 592
    invoke-virtual {v5}, Lb3/g;->g()I

    .line 593
    .line 594
    .line 595
    const/4 v15, 0x0

    .line 596
    :goto_11
    if-gt v15, v14, :cond_1d

    .line 597
    .line 598
    invoke-virtual {v5}, Lb3/g;->d()Z

    .line 599
    .line 600
    .line 601
    move-result v21

    .line 602
    if-eqz v21, :cond_1c

    .line 603
    .line 604
    invoke-virtual {v5}, Lb3/g;->k()V

    .line 605
    .line 606
    .line 607
    :cond_1c
    add-int/lit8 v15, v15, 0x1

    .line 608
    .line 609
    goto :goto_11

    .line 610
    :cond_1d
    move/from16 v26, v8

    .line 611
    .line 612
    goto :goto_14

    .line 613
    :cond_1e
    invoke-virtual {v5}, Lb3/g;->g()I

    .line 614
    .line 615
    .line 616
    move-result v14

    .line 617
    invoke-virtual {v5}, Lb3/g;->g()I

    .line 618
    .line 619
    .line 620
    move-result v15

    .line 621
    add-int v21, v14, v15

    .line 622
    .line 623
    move/from16 v26, v8

    .line 624
    .line 625
    const/4 v8, 0x0

    .line 626
    :goto_12
    if-ge v8, v14, :cond_1f

    .line 627
    .line 628
    invoke-virtual {v5}, Lb3/g;->g()I

    .line 629
    .line 630
    .line 631
    invoke-virtual {v5}, Lb3/g;->k()V

    .line 632
    .line 633
    .line 634
    add-int/lit8 v8, v8, 0x1

    .line 635
    .line 636
    goto :goto_12

    .line 637
    :cond_1f
    const/4 v8, 0x0

    .line 638
    :goto_13
    if-ge v8, v15, :cond_20

    .line 639
    .line 640
    invoke-virtual {v5}, Lb3/g;->g()I

    .line 641
    .line 642
    .line 643
    invoke-virtual {v5}, Lb3/g;->k()V

    .line 644
    .line 645
    .line 646
    add-int/lit8 v8, v8, 0x1

    .line 647
    .line 648
    goto :goto_13

    .line 649
    :cond_20
    move/from16 v14, v21

    .line 650
    .line 651
    :goto_14
    add-int/lit8 v12, v12, 0x1

    .line 652
    .line 653
    move/from16 v8, v26

    .line 654
    .line 655
    goto :goto_10

    .line 656
    :cond_21
    invoke-virtual {v5}, Lb3/g;->d()Z

    .line 657
    .line 658
    .line 659
    move-result v8

    .line 660
    if-eqz v8, :cond_22

    .line 661
    .line 662
    const/4 v8, 0x0

    .line 663
    :goto_15
    invoke-virtual {v5}, Lb3/g;->g()I

    .line 664
    .line 665
    .line 666
    move-result v12

    .line 667
    if-ge v8, v12, :cond_22

    .line 668
    .line 669
    const/4 v12, 0x4

    .line 670
    add-int/lit8 v13, v7, 0x4

    .line 671
    .line 672
    const/4 v14, 0x1

    .line 673
    add-int/2addr v13, v14

    .line 674
    invoke-virtual {v5, v13}, Lb3/g;->l(I)V

    .line 675
    .line 676
    .line 677
    add-int/lit8 v8, v8, 0x1

    .line 678
    .line 679
    goto :goto_15

    .line 680
    :cond_22
    const/4 v7, 0x2

    .line 681
    invoke-virtual {v5, v7}, Lb3/g;->l(I)V

    .line 682
    .line 683
    .line 684
    invoke-virtual {v5}, Lb3/g;->d()Z

    .line 685
    .line 686
    .line 687
    move-result v7

    .line 688
    if-eqz v7, :cond_24

    .line 689
    .line 690
    invoke-virtual {v5}, Lb3/g;->d()Z

    .line 691
    .line 692
    .line 693
    move-result v7

    .line 694
    if-eqz v7, :cond_24

    .line 695
    .line 696
    const/16 v7, 0x8

    .line 697
    .line 698
    invoke-virtual {v5, v7}, Lb3/g;->e(I)I

    .line 699
    .line 700
    .line 701
    move-result v7

    .line 702
    const/16 v8, 0xff

    .line 703
    .line 704
    if-ne v7, v8, :cond_23

    .line 705
    .line 706
    const/16 v8, 0x10

    .line 707
    .line 708
    invoke-virtual {v5, v8}, Lb3/g;->e(I)I

    .line 709
    .line 710
    .line 711
    move-result v7

    .line 712
    invoke-virtual {v5, v8}, Lb3/g;->e(I)I

    .line 713
    .line 714
    .line 715
    move-result v5

    .line 716
    if-eqz v7, :cond_25

    .line 717
    .line 718
    if-eqz v5, :cond_25

    .line 719
    .line 720
    int-to-float v7, v7

    .line 721
    int-to-float v5, v5

    .line 722
    div-float/2addr v7, v5

    .line 723
    move/from16 v26, v7

    .line 724
    .line 725
    goto :goto_17

    .line 726
    :cond_23
    const/16 v8, 0x10

    .line 727
    .line 728
    sget-object v5, Lb3/f;->b:[F

    .line 729
    .line 730
    const/16 v12, 0x11

    .line 731
    .line 732
    if-ge v7, v12, :cond_25

    .line 733
    .line 734
    aget v5, v5, v7

    .line 735
    .line 736
    goto :goto_16

    .line 737
    :cond_24
    const/16 v8, 0x10

    .line 738
    .line 739
    :cond_25
    const/high16 v5, 0x3f800000    # 1.0f

    .line 740
    .line 741
    :goto_16
    move/from16 v26, v5

    .line 742
    .line 743
    :goto_17
    const-string v21, "video/hevc"

    .line 744
    .line 745
    const/16 v22, 0x0

    .line 746
    .line 747
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 748
    .line 749
    .line 750
    move-result-object v25

    .line 751
    move-object/from16 v20, v2

    .line 752
    .line 753
    invoke-static/range {v20 .. v26}, Lf2/t;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;F)Lf2/t;

    .line 754
    .line 755
    .line 756
    move-result-object v2

    .line 757
    invoke-interface {v1, v2}, Lk2/o;->c(Lf2/t;)V

    .line 758
    .line 759
    .line 760
    const/4 v1, 0x1

    .line 761
    iput-boolean v1, v0, Ln2/q;->e:Z

    .line 762
    .line 763
    goto :goto_19

    .line 764
    :cond_26
    :goto_18
    move-object/from16 v31, v8

    .line 765
    .line 766
    move-object/from16 v30, v13

    .line 767
    .line 768
    move-object/from16 v29, v14

    .line 769
    .line 770
    move/from16 v28, v15

    .line 771
    .line 772
    const/16 v8, 0x10

    .line 773
    .line 774
    :goto_19
    iget-object v1, v0, Ln2/q;->j:Lo1/n;

    .line 775
    .line 776
    invoke-virtual {v1, v9}, Lo1/n;->b(I)Z

    .line 777
    .line 778
    .line 779
    move-result v2

    .line 780
    iget-object v5, v0, Ln2/q;->a:Ln2/w;

    .line 781
    .line 782
    const/4 v6, 0x5

    .line 783
    iget-object v7, v0, Ln2/q;->n:Lb3/h;

    .line 784
    .line 785
    if-eqz v2, :cond_27

    .line 786
    .line 787
    iget-object v2, v1, Lo1/n;->e:Ljava/lang/Object;

    .line 788
    .line 789
    check-cast v2, [B

    .line 790
    .line 791
    iget v12, v1, Lo1/n;->d:I

    .line 792
    .line 793
    invoke-static {v2, v12}, Lb3/f;->e([BI)I

    .line 794
    .line 795
    .line 796
    move-result v2

    .line 797
    iget-object v12, v1, Lo1/n;->e:Ljava/lang/Object;

    .line 798
    .line 799
    check-cast v12, [B

    .line 800
    .line 801
    invoke-virtual {v7, v12, v2}, Lb3/h;->o([BI)V

    .line 802
    .line 803
    .line 804
    invoke-virtual {v7, v6}, Lb3/h;->r(I)V

    .line 805
    .line 806
    .line 807
    invoke-virtual {v5, v10, v11, v7}, Ln2/w;->a(JLb3/h;)V

    .line 808
    .line 809
    .line 810
    :cond_27
    iget-object v2, v0, Ln2/q;->k:Lo1/n;

    .line 811
    .line 812
    invoke-virtual {v2, v9}, Lo1/n;->b(I)Z

    .line 813
    .line 814
    .line 815
    move-result v9

    .line 816
    if-eqz v9, :cond_28

    .line 817
    .line 818
    iget-object v9, v2, Lo1/n;->e:Ljava/lang/Object;

    .line 819
    .line 820
    check-cast v9, [B

    .line 821
    .line 822
    iget v12, v2, Lo1/n;->d:I

    .line 823
    .line 824
    invoke-static {v9, v12}, Lb3/f;->e([BI)I

    .line 825
    .line 826
    .line 827
    move-result v9

    .line 828
    iget-object v12, v2, Lo1/n;->e:Ljava/lang/Object;

    .line 829
    .line 830
    check-cast v12, [B

    .line 831
    .line 832
    invoke-virtual {v7, v12, v9}, Lb3/h;->o([BI)V

    .line 833
    .line 834
    .line 835
    invoke-virtual {v7, v6}, Lb3/h;->r(I)V

    .line 836
    .line 837
    .line 838
    invoke-virtual {v5, v10, v11, v7}, Ln2/w;->a(JLb3/h;)V

    .line 839
    .line 840
    .line 841
    :cond_28
    iget-wide v5, v0, Ln2/q;->m:J

    .line 842
    .line 843
    iget-boolean v7, v0, Ln2/q;->e:Z

    .line 844
    .line 845
    if-eqz v7, :cond_2f

    .line 846
    .line 847
    iget-object v7, v0, Ln2/q;->d:Ln2/p;

    .line 848
    .line 849
    const/4 v9, 0x0

    .line 850
    iput-boolean v9, v7, Ln2/p;->g:Z

    .line 851
    .line 852
    iput-boolean v9, v7, Ln2/p;->h:Z

    .line 853
    .line 854
    iput-wide v5, v7, Ln2/p;->e:J

    .line 855
    .line 856
    iput v9, v7, Ln2/p;->d:I

    .line 857
    .line 858
    iput-wide v3, v7, Ln2/p;->b:J

    .line 859
    .line 860
    const/16 v5, 0x20

    .line 861
    .line 862
    move/from16 v6, v27

    .line 863
    .line 864
    if-lt v6, v5, :cond_2a

    .line 865
    .line 866
    iget-boolean v5, v7, Ln2/p;->j:Z

    .line 867
    .line 868
    if-nez v5, :cond_29

    .line 869
    .line 870
    iget-boolean v5, v7, Ln2/p;->i:Z

    .line 871
    .line 872
    if-eqz v5, :cond_29

    .line 873
    .line 874
    iget-boolean v13, v7, Ln2/p;->m:Z

    .line 875
    .line 876
    iget-wide v10, v7, Ln2/p;->k:J

    .line 877
    .line 878
    sub-long/2addr v3, v10

    .line 879
    long-to-int v14, v3

    .line 880
    iget-object v10, v7, Ln2/p;->a:Lk2/o;

    .line 881
    .line 882
    iget-wide v11, v7, Ln2/p;->l:J

    .line 883
    .line 884
    const/16 v16, 0x0

    .line 885
    .line 886
    move v3, v8

    .line 887
    move v4, v9

    .line 888
    move/from16 v15, v28

    .line 889
    .line 890
    invoke-interface/range {v10 .. v16}, Lk2/o;->b(JIIILk2/n;)V

    .line 891
    .line 892
    .line 893
    iput-boolean v4, v7, Ln2/p;->i:Z

    .line 894
    .line 895
    goto :goto_1a

    .line 896
    :cond_29
    move v3, v8

    .line 897
    move v4, v9

    .line 898
    :goto_1a
    const/16 v5, 0x22

    .line 899
    .line 900
    if-gt v6, v5, :cond_2b

    .line 901
    .line 902
    iget-boolean v5, v7, Ln2/p;->j:Z

    .line 903
    .line 904
    const/4 v8, 0x1

    .line 905
    xor-int/2addr v5, v8

    .line 906
    iput-boolean v5, v7, Ln2/p;->h:Z

    .line 907
    .line 908
    iput-boolean v8, v7, Ln2/p;->j:Z

    .line 909
    .line 910
    goto :goto_1b

    .line 911
    :cond_2a
    move v3, v8

    .line 912
    move v4, v9

    .line 913
    :cond_2b
    const/4 v8, 0x1

    .line 914
    :goto_1b
    if-lt v6, v3, :cond_2c

    .line 915
    .line 916
    const/16 v3, 0x15

    .line 917
    .line 918
    if-gt v6, v3, :cond_2c

    .line 919
    .line 920
    move v14, v8

    .line 921
    goto :goto_1c

    .line 922
    :cond_2c
    move v14, v4

    .line 923
    :goto_1c
    iput-boolean v14, v7, Ln2/p;->c:Z

    .line 924
    .line 925
    if-nez v14, :cond_2e

    .line 926
    .line 927
    const/16 v3, 0x9

    .line 928
    .line 929
    if-gt v6, v3, :cond_2d

    .line 930
    .line 931
    goto :goto_1d

    .line 932
    :cond_2d
    move v8, v4

    .line 933
    :cond_2e
    :goto_1d
    iput-boolean v8, v7, Ln2/p;->f:Z

    .line 934
    .line 935
    goto :goto_1e

    .line 936
    :cond_2f
    move/from16 v6, v27

    .line 937
    .line 938
    move-object/from16 v3, v29

    .line 939
    .line 940
    invoke-virtual {v3, v6}, Lo1/n;->d(I)V

    .line 941
    .line 942
    .line 943
    move-object/from16 v3, v31

    .line 944
    .line 945
    invoke-virtual {v3, v6}, Lo1/n;->d(I)V

    .line 946
    .line 947
    .line 948
    move-object/from16 v3, v30

    .line 949
    .line 950
    invoke-virtual {v3, v6}, Lo1/n;->d(I)V

    .line 951
    .line 952
    .line 953
    :goto_1e
    invoke-virtual {v1, v6}, Lo1/n;->d(I)V

    .line 954
    .line 955
    .line 956
    invoke-virtual {v2, v6}, Lo1/n;->d(I)V

    .line 957
    .line 958
    .line 959
    move-object/from16 v1, p1

    .line 960
    .line 961
    move/from16 v2, v17

    .line 962
    .line 963
    move-object/from16 v5, v18

    .line 964
    .line 965
    move/from16 v3, v19

    .line 966
    .line 967
    goto/16 :goto_0

    .line 968
    .line 969
    :cond_30
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
    iput-wide p1, p0, Ln2/q;->m:J

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
    iput-object v0, p0, Ln2/q;->b:Ljava/lang/String;

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
    iput-object v0, p0, Ln2/q;->c:Lk2/o;

    .line 24
    .line 25
    new-instance v1, Ln2/p;

    .line 26
    .line 27
    invoke-direct {v1, v0}, Ln2/p;-><init>(Lk2/o;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Ln2/q;->d:Ln2/p;

    .line 31
    .line 32
    iget-object v0, p0, Ln2/q;->a:Ln2/w;

    .line 33
    .line 34
    invoke-virtual {v0, p1, p2}, Ln2/w;->b(Lk2/i;Ln2/e0;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
