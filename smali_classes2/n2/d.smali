.class public final Ln2/d;
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

.field public i:Z

.field public j:J

.field public k:Lf2/t;

.field public l:I

.field public m:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb3/g;

    const/16 v1, 0x10

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lb3/g;-><init>([B)V

    iput-object v0, p0, Ln2/d;->a:Lb3/g;

    new-instance v1, Lb3/h;

    iget-object v0, v0, Lb3/g;->b:[B

    invoke-direct {v1, v0}, Lb3/h;-><init>([B)V

    iput-object v1, p0, Ln2/d;->b:Lb3/h;

    const/4 v0, 0x0

    iput v0, p0, Ln2/d;->f:I

    iput v0, p0, Ln2/d;->g:I

    iput-boolean v0, p0, Ln2/d;->h:Z

    iput-boolean v0, p0, Ln2/d;->i:Z

    iput-object p1, p0, Ln2/d;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
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
    sub-int/2addr v2, v3

    .line 10
    if-lez v2, :cond_1b

    .line 11
    .line 12
    iget v3, v0, Ln2/d;->f:I

    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    const/4 v5, 0x2

    .line 16
    iget-object v6, v0, Ln2/d;->b:Lb3/h;

    .line 17
    .line 18
    const/4 v7, 0x0

    .line 19
    if-eqz v3, :cond_13

    .line 20
    .line 21
    if-eq v3, v4, :cond_2

    .line 22
    .line 23
    if-eq v3, v5, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget v3, v0, Ln2/d;->l:I

    .line 27
    .line 28
    iget v4, v0, Ln2/d;->g:I

    .line 29
    .line 30
    sub-int/2addr v3, v4

    .line 31
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    iget-object v3, v0, Ln2/d;->e:Lk2/o;

    .line 36
    .line 37
    invoke-interface {v3, v2, v1}, Lk2/o;->d(ILb3/h;)V

    .line 38
    .line 39
    .line 40
    iget v3, v0, Ln2/d;->g:I

    .line 41
    .line 42
    add-int/2addr v3, v2

    .line 43
    iput v3, v0, Ln2/d;->g:I

    .line 44
    .line 45
    iget v12, v0, Ln2/d;->l:I

    .line 46
    .line 47
    if-ne v3, v12, :cond_0

    .line 48
    .line 49
    iget-object v8, v0, Ln2/d;->e:Lk2/o;

    .line 50
    .line 51
    iget-wide v9, v0, Ln2/d;->m:J

    .line 52
    .line 53
    const/4 v11, 0x1

    .line 54
    const/4 v13, 0x0

    .line 55
    const/4 v14, 0x0

    .line 56
    invoke-interface/range {v8 .. v14}, Lk2/o;->b(JIIILk2/n;)V

    .line 57
    .line 58
    .line 59
    iget-wide v2, v0, Ln2/d;->m:J

    .line 60
    .line 61
    iget-wide v4, v0, Ln2/d;->j:J

    .line 62
    .line 63
    add-long/2addr v2, v4

    .line 64
    iput-wide v2, v0, Ln2/d;->m:J

    .line 65
    .line 66
    iput v7, v0, Ln2/d;->f:I

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    iget-object v3, v6, Lb3/h;->c:Ljava/io/Serializable;

    .line 70
    .line 71
    check-cast v3, [B

    .line 72
    .line 73
    iget v8, v0, Ln2/d;->g:I

    .line 74
    .line 75
    const/16 v9, 0x10

    .line 76
    .line 77
    rsub-int/lit8 v8, v8, 0x10

    .line 78
    .line 79
    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    iget v8, v0, Ln2/d;->g:I

    .line 84
    .line 85
    invoke-virtual {v1, v3, v8, v2}, Lb3/h;->a([BII)V

    .line 86
    .line 87
    .line 88
    iget v3, v0, Ln2/d;->g:I

    .line 89
    .line 90
    add-int/2addr v3, v2

    .line 91
    iput v3, v0, Ln2/d;->g:I

    .line 92
    .line 93
    if-ne v3, v9, :cond_3

    .line 94
    .line 95
    move v2, v4

    .line 96
    goto :goto_1

    .line 97
    :cond_3
    move v2, v7

    .line 98
    :goto_1
    if-eqz v2, :cond_0

    .line 99
    .line 100
    iget-object v2, v0, Ln2/d;->a:Lb3/g;

    .line 101
    .line 102
    invoke-virtual {v2, v7}, Lb3/g;->i(I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2, v9}, Lb3/g;->e(I)I

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    invoke-virtual {v2, v9}, Lb3/g;->e(I)I

    .line 110
    .line 111
    .line 112
    move-result v8

    .line 113
    const v10, 0xffff

    .line 114
    .line 115
    .line 116
    const/4 v11, 0x4

    .line 117
    if-ne v8, v10, :cond_4

    .line 118
    .line 119
    const/16 v8, 0x18

    .line 120
    .line 121
    invoke-virtual {v2, v8}, Lb3/g;->e(I)I

    .line 122
    .line 123
    .line 124
    move-result v8

    .line 125
    const/4 v10, 0x7

    .line 126
    goto :goto_2

    .line 127
    :cond_4
    move v10, v11

    .line 128
    :goto_2
    add-int/2addr v8, v10

    .line 129
    const v10, 0xac41

    .line 130
    .line 131
    .line 132
    if-ne v3, v10, :cond_5

    .line 133
    .line 134
    add-int/lit8 v8, v8, 0x2

    .line 135
    .line 136
    :cond_5
    invoke-virtual {v2, v5}, Lb3/g;->e(I)I

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    const/4 v10, 0x3

    .line 141
    if-ne v3, v10, :cond_7

    .line 142
    .line 143
    :cond_6
    invoke-virtual {v2, v5}, Lb3/g;->e(I)I

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2}, Lb3/g;->d()Z

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    if-nez v3, :cond_6

    .line 151
    .line 152
    :cond_7
    const/16 v3, 0xa

    .line 153
    .line 154
    invoke-virtual {v2, v3}, Lb3/g;->e(I)I

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    invoke-virtual {v2}, Lb3/g;->d()Z

    .line 159
    .line 160
    .line 161
    move-result v12

    .line 162
    if-eqz v12, :cond_8

    .line 163
    .line 164
    invoke-virtual {v2, v10}, Lb3/g;->e(I)I

    .line 165
    .line 166
    .line 167
    move-result v12

    .line 168
    if-lez v12, :cond_8

    .line 169
    .line 170
    invoke-virtual {v2, v5}, Lb3/g;->l(I)V

    .line 171
    .line 172
    .line 173
    :cond_8
    invoke-virtual {v2}, Lb3/g;->d()Z

    .line 174
    .line 175
    .line 176
    move-result v12

    .line 177
    const v13, 0xbb80

    .line 178
    .line 179
    .line 180
    const v14, 0xac44

    .line 181
    .line 182
    .line 183
    if-eqz v12, :cond_9

    .line 184
    .line 185
    move v12, v13

    .line 186
    goto :goto_3

    .line 187
    :cond_9
    move v12, v14

    .line 188
    :goto_3
    invoke-virtual {v2, v11}, Lb3/g;->e(I)I

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    sget-object v15, Lcom/google/android/gms/internal/play_billing/i0;->f:[I

    .line 193
    .line 194
    if-ne v12, v14, :cond_a

    .line 195
    .line 196
    const/16 v14, 0xd

    .line 197
    .line 198
    if-ne v2, v14, :cond_a

    .line 199
    .line 200
    aget v2, v15, v2

    .line 201
    .line 202
    goto :goto_6

    .line 203
    :cond_a
    if-ne v12, v13, :cond_10

    .line 204
    .line 205
    const/16 v13, 0xe

    .line 206
    .line 207
    if-ge v2, v13, :cond_10

    .line 208
    .line 209
    aget v13, v15, v2

    .line 210
    .line 211
    rem-int/lit8 v3, v3, 0x5

    .line 212
    .line 213
    const/16 v14, 0x8

    .line 214
    .line 215
    if-eq v3, v4, :cond_d

    .line 216
    .line 217
    const/16 v4, 0xb

    .line 218
    .line 219
    if-eq v3, v5, :cond_c

    .line 220
    .line 221
    if-eq v3, v10, :cond_d

    .line 222
    .line 223
    if-eq v3, v11, :cond_b

    .line 224
    .line 225
    goto :goto_5

    .line 226
    :cond_b
    if-eq v2, v10, :cond_e

    .line 227
    .line 228
    if-eq v2, v14, :cond_e

    .line 229
    .line 230
    if-ne v2, v4, :cond_f

    .line 231
    .line 232
    goto :goto_4

    .line 233
    :cond_c
    if-eq v2, v14, :cond_e

    .line 234
    .line 235
    if-ne v2, v4, :cond_f

    .line 236
    .line 237
    goto :goto_4

    .line 238
    :cond_d
    if-eq v2, v10, :cond_e

    .line 239
    .line 240
    if-ne v2, v14, :cond_f

    .line 241
    .line 242
    :cond_e
    :goto_4
    add-int/lit8 v13, v13, 0x1

    .line 243
    .line 244
    :cond_f
    :goto_5
    move v2, v13

    .line 245
    goto :goto_6

    .line 246
    :cond_10
    move v2, v7

    .line 247
    :goto_6
    iget-object v3, v0, Ln2/d;->k:Lf2/t;

    .line 248
    .line 249
    if-eqz v3, :cond_11

    .line 250
    .line 251
    iget v4, v3, Lf2/t;->v:I

    .line 252
    .line 253
    if-ne v5, v4, :cond_11

    .line 254
    .line 255
    iget v4, v3, Lf2/t;->w:I

    .line 256
    .line 257
    if-ne v12, v4, :cond_11

    .line 258
    .line 259
    const-string v4, "audio/ac4"

    .line 260
    .line 261
    iget-object v3, v3, Lf2/t;->i:Ljava/lang/String;

    .line 262
    .line 263
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result v3

    .line 267
    if-nez v3, :cond_12

    .line 268
    .line 269
    :cond_11
    iget-object v15, v0, Ln2/d;->d:Ljava/lang/String;

    .line 270
    .line 271
    const-string v16, "audio/ac4"

    .line 272
    .line 273
    const/16 v17, -0x1

    .line 274
    .line 275
    const/16 v18, -0x1

    .line 276
    .line 277
    const/16 v21, 0x0

    .line 278
    .line 279
    const/16 v22, 0x0

    .line 280
    .line 281
    iget-object v3, v0, Ln2/d;->c:Ljava/lang/String;

    .line 282
    .line 283
    const/16 v19, 0x2

    .line 284
    .line 285
    move/from16 v20, v12

    .line 286
    .line 287
    move-object/from16 v23, v3

    .line 288
    .line 289
    invoke-static/range {v15 .. v23}, Lf2/t;->g(Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lj2/b;Ljava/lang/String;)Lf2/t;

    .line 290
    .line 291
    .line 292
    move-result-object v3

    .line 293
    iput-object v3, v0, Ln2/d;->k:Lf2/t;

    .line 294
    .line 295
    iget-object v4, v0, Ln2/d;->e:Lk2/o;

    .line 296
    .line 297
    invoke-interface {v4, v3}, Lk2/o;->c(Lf2/t;)V

    .line 298
    .line 299
    .line 300
    :cond_12
    iput v8, v0, Ln2/d;->l:I

    .line 301
    .line 302
    const-wide/32 v3, 0xf4240

    .line 303
    .line 304
    .line 305
    int-to-long v10, v2

    .line 306
    mul-long/2addr v10, v3

    .line 307
    iget-object v2, v0, Ln2/d;->k:Lf2/t;

    .line 308
    .line 309
    iget v2, v2, Lf2/t;->w:I

    .line 310
    .line 311
    int-to-long v2, v2

    .line 312
    div-long/2addr v10, v2

    .line 313
    iput-wide v10, v0, Ln2/d;->j:J

    .line 314
    .line 315
    invoke-virtual {v6, v7}, Lb3/h;->q(I)V

    .line 316
    .line 317
    .line 318
    iget-object v2, v0, Ln2/d;->e:Lk2/o;

    .line 319
    .line 320
    invoke-interface {v2, v9, v6}, Lk2/o;->d(ILb3/h;)V

    .line 321
    .line 322
    .line 323
    iput v5, v0, Ln2/d;->f:I

    .line 324
    .line 325
    goto/16 :goto_0

    .line 326
    .line 327
    :cond_13
    :goto_7
    iget v2, v1, Lb3/h;->b:I

    .line 328
    .line 329
    iget v3, v1, Lb3/h;->a:I

    .line 330
    .line 331
    sub-int/2addr v2, v3

    .line 332
    const/16 v3, 0x41

    .line 333
    .line 334
    const/16 v8, 0x40

    .line 335
    .line 336
    if-lez v2, :cond_19

    .line 337
    .line 338
    iget-boolean v2, v0, Ln2/d;->h:Z

    .line 339
    .line 340
    const/16 v9, 0xac

    .line 341
    .line 342
    if-nez v2, :cond_15

    .line 343
    .line 344
    invoke-virtual/range {p1 .. p1}, Lb3/h;->h()I

    .line 345
    .line 346
    .line 347
    move-result v2

    .line 348
    if-ne v2, v9, :cond_14

    .line 349
    .line 350
    move v2, v4

    .line 351
    goto :goto_8

    .line 352
    :cond_14
    move v2, v7

    .line 353
    :goto_8
    iput-boolean v2, v0, Ln2/d;->h:Z

    .line 354
    .line 355
    goto :goto_7

    .line 356
    :cond_15
    invoke-virtual/range {p1 .. p1}, Lb3/h;->h()I

    .line 357
    .line 358
    .line 359
    move-result v2

    .line 360
    if-ne v2, v9, :cond_16

    .line 361
    .line 362
    move v9, v4

    .line 363
    goto :goto_9

    .line 364
    :cond_16
    move v9, v7

    .line 365
    :goto_9
    iput-boolean v9, v0, Ln2/d;->h:Z

    .line 366
    .line 367
    if-eq v2, v8, :cond_17

    .line 368
    .line 369
    if-ne v2, v3, :cond_13

    .line 370
    .line 371
    :cond_17
    if-ne v2, v3, :cond_18

    .line 372
    .line 373
    move v2, v4

    .line 374
    goto :goto_a

    .line 375
    :cond_18
    move v2, v7

    .line 376
    :goto_a
    iput-boolean v2, v0, Ln2/d;->i:Z

    .line 377
    .line 378
    move v2, v4

    .line 379
    goto :goto_b

    .line 380
    :cond_19
    move v2, v7

    .line 381
    :goto_b
    if-eqz v2, :cond_0

    .line 382
    .line 383
    iput v4, v0, Ln2/d;->f:I

    .line 384
    .line 385
    iget-object v2, v6, Lb3/h;->c:Ljava/io/Serializable;

    .line 386
    .line 387
    check-cast v2, [B

    .line 388
    .line 389
    const/16 v6, -0x54

    .line 390
    .line 391
    aput-byte v6, v2, v7

    .line 392
    .line 393
    iget-boolean v6, v0, Ln2/d;->i:Z

    .line 394
    .line 395
    if-eqz v6, :cond_1a

    .line 396
    .line 397
    goto :goto_c

    .line 398
    :cond_1a
    move v3, v8

    .line 399
    :goto_c
    int-to-byte v3, v3

    .line 400
    aput-byte v3, v2, v4

    .line 401
    .line 402
    iput v5, v0, Ln2/d;->g:I

    .line 403
    .line 404
    goto/16 :goto_0

    .line 405
    .line 406
    :cond_1b
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
    iput-wide p1, p0, Ln2/d;->m:J

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
    iput-object v0, p0, Ln2/d;->d:Ljava/lang/String;

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
    iput-object p1, p0, Ln2/d;->e:Lk2/o;

    .line 24
    .line 25
    return-void
.end method
