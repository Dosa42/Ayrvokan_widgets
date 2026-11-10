.class public final synthetic Lorg/mozilla/gecko/media/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/mozilla/gecko/media/a;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/mozilla/gecko/media/a;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/mozilla/gecko/media/a;->a:I

    .line 4
    .line 5
    iget-object v2, v0, Lorg/mozilla/gecko/media/a;->b:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :pswitch_0
    check-cast v2, Lorg/mozilla/gecko/media/GeckoHlsPlayer;

    .line 12
    .line 13
    invoke-static {v2}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->i(Lorg/mozilla/gecko/media/GeckoHlsPlayer;)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    return-object v1

    .line 18
    :pswitch_1
    check-cast v2, Lorg/mozilla/gecko/media/GeckoHlsPlayer;

    .line 19
    .line 20
    invoke-static {v2}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->h(Lorg/mozilla/gecko/media/GeckoHlsPlayer;)Ljava/lang/Long;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    return-object v1

    .line 25
    :goto_0
    move-object v1, v2

    .line 26
    check-cast v1, Ld3/r0;

    .line 27
    .line 28
    iget-object v11, v1, Ld3/r0;->g:Lj0/j;

    .line 29
    .line 30
    iget-object v2, v11, Lj0/j;->e:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v2, Ld3/o0;

    .line 33
    .line 34
    invoke-virtual {v2}, Ld3/o0;->a()V

    .line 35
    .line 36
    .line 37
    iget-object v2, v11, Lj0/j;->g:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v2, Ld3/v0;

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    iget-object v2, v1, Ld3/r0;->i:Ld3/q0;

    .line 45
    .line 46
    check-cast v2, Ld3/o0;

    .line 47
    .line 48
    invoke-virtual {v2}, Ld3/o0;->c()V

    .line 49
    .line 50
    .line 51
    iget-object v2, v1, Ld3/r0;->h:Ln2/a0;

    .line 52
    .line 53
    invoke-virtual {v2}, Ln2/a0;->e()V

    .line 54
    .line 55
    .line 56
    iget v13, v1, Ld3/r0;->a:I

    .line 57
    .line 58
    iget v14, v1, Ld3/r0;->b:I

    .line 59
    .line 60
    add-int/lit8 v2, v13, 0x7

    .line 61
    .line 62
    div-int/lit8 v2, v2, 0x8

    .line 63
    .line 64
    mul-int/lit8 v15, v2, 0x8

    .line 65
    .line 66
    add-int/lit8 v2, v14, 0x1

    .line 67
    .line 68
    div-int/lit8 v12, v2, 0x2

    .line 69
    .line 70
    add-int v6, v14, v12

    .line 71
    .line 72
    mul-int v2, v15, v6

    .line 73
    .line 74
    invoke-static {v2}, Lorg/webrtc/JniCommon;->nativeAllocateByteBuffer(I)Ljava/nio/ByteBuffer;

    .line 75
    .line 76
    .line 77
    move-result-object v10

    .line 78
    div-int/lit8 v9, v15, 0x4

    .line 79
    .line 80
    new-instance v8, Landroid/graphics/Matrix;

    .line 81
    .line 82
    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 83
    .line 84
    .line 85
    const/high16 v2, 0x3f000000    # 0.5f

    .line 86
    .line 87
    invoke-virtual {v8, v2, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 88
    .line 89
    .line 90
    const/high16 v2, -0x40800000    # -1.0f

    .line 91
    .line 92
    const/high16 v3, 0x3f800000    # 1.0f

    .line 93
    .line 94
    invoke-virtual {v8, v3, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 95
    .line 96
    .line 97
    const/high16 v2, -0x41000000    # -0.5f

    .line 98
    .line 99
    invoke-virtual {v8, v2, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 100
    .line 101
    .line 102
    iget-object v2, v11, Lj0/j;->f:Ljava/lang/Object;

    .line 103
    .line 104
    move-object v7, v2

    .line 105
    check-cast v7, Lh2/a;

    .line 106
    .line 107
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    if-lez v9, :cond_6

    .line 111
    .line 112
    if-lez v6, :cond_6

    .line 113
    .line 114
    iget v2, v7, Lh2/a;->d:I

    .line 115
    .line 116
    const v3, 0x8d40

    .line 117
    .line 118
    .line 119
    const/4 v4, 0x0

    .line 120
    const/4 v5, 0x1

    .line 121
    if-ne v9, v2, :cond_0

    .line 122
    .line 123
    iget v2, v7, Lh2/a;->e:I

    .line 124
    .line 125
    if-ne v6, v2, :cond_0

    .line 126
    .line 127
    move-object/from16 v16, v8

    .line 128
    .line 129
    move/from16 v19, v9

    .line 130
    .line 131
    move-object/from16 v24, v10

    .line 132
    .line 133
    move v10, v4

    .line 134
    goto/16 :goto_1

    .line 135
    .line 136
    :cond_0
    iput v9, v7, Lh2/a;->d:I

    .line 137
    .line 138
    iput v6, v7, Lh2/a;->e:I

    .line 139
    .line 140
    iget v2, v7, Lh2/a;->c:I

    .line 141
    .line 142
    const/16 v3, 0xde1

    .line 143
    .line 144
    if-nez v2, :cond_1

    .line 145
    .line 146
    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/i0;->G(I)I

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    iput v2, v7, Lh2/a;->c:I

    .line 151
    .line 152
    :cond_1
    iget v2, v7, Lh2/a;->b:I

    .line 153
    .line 154
    if-nez v2, :cond_2

    .line 155
    .line 156
    new-array v2, v5, [I

    .line 157
    .line 158
    invoke-static {v5, v2, v4}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 159
    .line 160
    .line 161
    aget v2, v2, v4

    .line 162
    .line 163
    iput v2, v7, Lh2/a;->b:I

    .line 164
    .line 165
    :cond_2
    const v2, 0x84c0

    .line 166
    .line 167
    .line 168
    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 169
    .line 170
    .line 171
    iget v2, v7, Lh2/a;->c:I

    .line 172
    .line 173
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 174
    .line 175
    .line 176
    const/16 v2, 0xde1

    .line 177
    .line 178
    const/4 v3, 0x0

    .line 179
    iget v5, v7, Lh2/a;->a:I

    .line 180
    .line 181
    const/16 v16, 0x0

    .line 182
    .line 183
    const/16 v17, 0x1401

    .line 184
    .line 185
    const/16 v18, 0x0

    .line 186
    .line 187
    move v4, v5

    .line 188
    move/from16 v19, v5

    .line 189
    .line 190
    move v5, v9

    .line 191
    move-object/from16 v23, v7

    .line 192
    .line 193
    move/from16 v7, v16

    .line 194
    .line 195
    move-object/from16 v16, v8

    .line 196
    .line 197
    move/from16 v8, v19

    .line 198
    .line 199
    move/from16 v19, v9

    .line 200
    .line 201
    move/from16 v9, v17

    .line 202
    .line 203
    move-object/from16 v24, v10

    .line 204
    .line 205
    move-object/from16 v10, v18

    .line 206
    .line 207
    invoke-static/range {v2 .. v10}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 208
    .line 209
    .line 210
    const/4 v4, 0x0

    .line 211
    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 212
    .line 213
    .line 214
    const-string v3, "GlTextureFrameBuffer setSize"

    .line 215
    .line 216
    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/i0;->j(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    move-object/from16 v3, v23

    .line 220
    .line 221
    iget v5, v3, Lh2/a;->b:I

    .line 222
    .line 223
    const v6, 0x8d40

    .line 224
    .line 225
    .line 226
    invoke-static {v6, v5}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 227
    .line 228
    .line 229
    const v5, 0x8ce0

    .line 230
    .line 231
    .line 232
    iget v3, v3, Lh2/a;->c:I

    .line 233
    .line 234
    invoke-static {v6, v5, v2, v3, v4}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 235
    .line 236
    .line 237
    invoke-static {v6}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    .line 238
    .line 239
    .line 240
    move-result v2

    .line 241
    const v3, 0x8cd5

    .line 242
    .line 243
    .line 244
    if-ne v2, v3, :cond_5

    .line 245
    .line 246
    invoke-static {v6, v4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 247
    .line 248
    .line 249
    move v10, v4

    .line 250
    move v3, v6

    .line 251
    :goto_1
    iget-object v2, v11, Lj0/j;->f:Ljava/lang/Object;

    .line 252
    .line 253
    check-cast v2, Lh2/a;

    .line 254
    .line 255
    iget v2, v2, Lh2/a;->b:I

    .line 256
    .line 257
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 258
    .line 259
    .line 260
    const-string v2, "glBindFramebuffer"

    .line 261
    .line 262
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/i0;->j(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    iget-object v2, v11, Lj0/j;->i:Ljava/lang/Object;

    .line 266
    .line 267
    check-cast v2, Ld3/x0;

    .line 268
    .line 269
    sget-object v3, Ld3/x0;->e:[F

    .line 270
    .line 271
    iput-object v3, v2, Ld3/x0;->c:[F

    .line 272
    .line 273
    const/high16 v3, 0x3f800000    # 1.0f

    .line 274
    .line 275
    iput v3, v2, Ld3/x0;->d:F

    .line 276
    .line 277
    iget-object v2, v11, Lj0/j;->h:Ljava/lang/Object;

    .line 278
    .line 279
    check-cast v2, Ld3/j0;

    .line 280
    .line 281
    const/16 v17, 0x0

    .line 282
    .line 283
    const/4 v8, 0x0

    .line 284
    const/4 v7, 0x0

    .line 285
    move-object v3, v1

    .line 286
    move-object/from16 v4, v16

    .line 287
    .line 288
    move v5, v13

    .line 289
    move v6, v14

    .line 290
    move/from16 v9, v19

    .line 291
    .line 292
    move v0, v10

    .line 293
    move v10, v14

    .line 294
    invoke-static/range {v2 .. v10}, Ld3/v0;->a(Ld3/j0;Ld3/r0;Landroid/graphics/Matrix;IIIIII)V

    .line 295
    .line 296
    .line 297
    iget-object v2, v11, Lj0/j;->i:Ljava/lang/Object;

    .line 298
    .line 299
    check-cast v2, Ld3/x0;

    .line 300
    .line 301
    sget-object v3, Ld3/x0;->f:[F

    .line 302
    .line 303
    iput-object v3, v2, Ld3/x0;->c:[F

    .line 304
    .line 305
    const/high16 v10, 0x40000000    # 2.0f

    .line 306
    .line 307
    iput v10, v2, Ld3/x0;->d:F

    .line 308
    .line 309
    iget-object v2, v11, Lj0/j;->h:Ljava/lang/Object;

    .line 310
    .line 311
    check-cast v2, Ld3/j0;

    .line 312
    .line 313
    move/from16 v3, v19

    .line 314
    .line 315
    div-int/lit8 v18, v3, 0x2

    .line 316
    .line 317
    move-object v3, v1

    .line 318
    move/from16 v7, v17

    .line 319
    .line 320
    move v8, v14

    .line 321
    move/from16 v9, v18

    .line 322
    .line 323
    move/from16 v23, v15

    .line 324
    .line 325
    move v15, v10

    .line 326
    move v10, v12

    .line 327
    invoke-static/range {v2 .. v10}, Ld3/v0;->a(Ld3/j0;Ld3/r0;Landroid/graphics/Matrix;IIIIII)V

    .line 328
    .line 329
    .line 330
    iget-object v2, v11, Lj0/j;->i:Ljava/lang/Object;

    .line 331
    .line 332
    check-cast v2, Ld3/x0;

    .line 333
    .line 334
    sget-object v3, Ld3/x0;->g:[F

    .line 335
    .line 336
    iput-object v3, v2, Ld3/x0;->c:[F

    .line 337
    .line 338
    iput v15, v2, Ld3/x0;->d:F

    .line 339
    .line 340
    iget-object v2, v11, Lj0/j;->h:Ljava/lang/Object;

    .line 341
    .line 342
    check-cast v2, Ld3/j0;

    .line 343
    .line 344
    move-object v3, v1

    .line 345
    move/from16 v7, v18

    .line 346
    .line 347
    invoke-static/range {v2 .. v10}, Ld3/v0;->a(Ld3/j0;Ld3/r0;Landroid/graphics/Matrix;IIIIII)V

    .line 348
    .line 349
    .line 350
    const/16 v16, 0x0

    .line 351
    .line 352
    iget-object v2, v11, Lj0/j;->f:Ljava/lang/Object;

    .line 353
    .line 354
    check-cast v2, Lh2/a;

    .line 355
    .line 356
    iget v3, v2, Lh2/a;->d:I

    .line 357
    .line 358
    iget v2, v2, Lh2/a;->e:I

    .line 359
    .line 360
    const/16 v20, 0x1908

    .line 361
    .line 362
    const/16 v21, 0x1401

    .line 363
    .line 364
    move/from16 v18, v3

    .line 365
    .line 366
    move/from16 v19, v2

    .line 367
    .line 368
    move-object/from16 v22, v24

    .line 369
    .line 370
    invoke-static/range {v16 .. v22}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 371
    .line 372
    .line 373
    const-string v2, "YuvConverter.convert"

    .line 374
    .line 375
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/i0;->j(Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    const v2, 0x8d40

    .line 379
    .line 380
    .line 381
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 382
    .line 383
    .line 384
    mul-int v15, v23, v14

    .line 385
    .line 386
    add-int/2addr v15, v0

    .line 387
    div-int/lit8 v2, v23, 0x2

    .line 388
    .line 389
    add-int v3, v15, v2

    .line 390
    .line 391
    move-object/from16 v4, v24

    .line 392
    .line 393
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 394
    .line 395
    .line 396
    invoke-virtual {v4, v15}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 397
    .line 398
    .line 399
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    invoke-virtual {v4, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 404
    .line 405
    .line 406
    add-int/lit8 v5, v12, -0x1

    .line 407
    .line 408
    mul-int v5, v5, v23

    .line 409
    .line 410
    add-int/2addr v5, v2

    .line 411
    add-int/2addr v15, v5

    .line 412
    invoke-virtual {v4, v15}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 413
    .line 414
    .line 415
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 416
    .line 417
    .line 418
    move-result-object v2

    .line 419
    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 420
    .line 421
    .line 422
    add-int/2addr v3, v5

    .line 423
    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 424
    .line 425
    .line 426
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 427
    .line 428
    .line 429
    move-result-object v3

    .line 430
    invoke-virtual {v1}, Ld3/r0;->release()V

    .line 431
    .line 432
    .line 433
    new-instance v1, Ld3/k0;

    .line 434
    .line 435
    const/4 v5, 0x1

    .line 436
    invoke-direct {v1, v4, v5}, Ld3/k0;-><init>(Ljava/nio/ByteBuffer;I)V

    .line 437
    .line 438
    .line 439
    if-eqz v0, :cond_4

    .line 440
    .line 441
    if-eqz v2, :cond_4

    .line 442
    .line 443
    if-eqz v3, :cond_4

    .line 444
    .line 445
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    .line 446
    .line 447
    .line 448
    move-result v4

    .line 449
    if-eqz v4, :cond_3

    .line 450
    .line 451
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->isDirect()Z

    .line 452
    .line 453
    .line 454
    move-result v4

    .line 455
    if-eqz v4, :cond_3

    .line 456
    .line 457
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->isDirect()Z

    .line 458
    .line 459
    .line 460
    move-result v4

    .line 461
    if-eqz v4, :cond_3

    .line 462
    .line 463
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 464
    .line 465
    .line 466
    move-result-object v15

    .line 467
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 468
    .line 469
    .line 470
    move-result-object v0

    .line 471
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 472
    .line 473
    .line 474
    move-result-object v2

    .line 475
    add-int/lit8 v3, v13, 0x1

    .line 476
    .line 477
    div-int/lit8 v3, v3, 0x2

    .line 478
    .line 479
    move/from16 v4, v23

    .line 480
    .line 481
    invoke-static {v13, v15, v14, v4}, Lorg/webrtc/JavaI420Buffer;->b(ILjava/nio/ByteBuffer;II)V

    .line 482
    .line 483
    .line 484
    invoke-static {v3, v0, v12, v4}, Lorg/webrtc/JavaI420Buffer;->b(ILjava/nio/ByteBuffer;II)V

    .line 485
    .line 486
    .line 487
    invoke-static {v3, v2, v12, v4}, Lorg/webrtc/JavaI420Buffer;->b(ILjava/nio/ByteBuffer;II)V

    .line 488
    .line 489
    .line 490
    new-instance v3, Lorg/webrtc/JavaI420Buffer;

    .line 491
    .line 492
    move-object v12, v3

    .line 493
    move/from16 v16, v4

    .line 494
    .line 495
    move-object/from16 v17, v0

    .line 496
    .line 497
    move/from16 v18, v4

    .line 498
    .line 499
    move-object/from16 v19, v2

    .line 500
    .line 501
    move/from16 v20, v4

    .line 502
    .line 503
    move-object/from16 v21, v1

    .line 504
    .line 505
    invoke-direct/range {v12 .. v21}, Lorg/webrtc/JavaI420Buffer;-><init>(IILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILd3/k0;)V

    .line 506
    .line 507
    .line 508
    return-object v3

    .line 509
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 510
    .line 511
    const-string v1, "Data buffers must be direct byte buffers."

    .line 512
    .line 513
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    throw v0

    .line 517
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 518
    .line 519
    const-string v1, "Data buffers cannot be null."

    .line 520
    .line 521
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 522
    .line 523
    .line 524
    throw v0

    .line 525
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 526
    .line 527
    const-string v1, "Framebuffer not complete, status: "

    .line 528
    .line 529
    invoke-static {v1, v2}, La1/b;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object v1

    .line 533
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 534
    .line 535
    .line 536
    throw v0

    .line 537
    :cond_6
    move v3, v9

    .line 538
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 539
    .line 540
    new-instance v1, Ljava/lang/StringBuilder;

    .line 541
    .line 542
    const-string v2, "Invalid size: "

    .line 543
    .line 544
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 545
    .line 546
    .line 547
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    const-string v2, "x"

    .line 551
    .line 552
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    .line 554
    .line 555
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 556
    .line 557
    .line 558
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object v1

    .line 562
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 563
    .line 564
    .line 565
    throw v0

    .line 566
    nop

    .line 567
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
