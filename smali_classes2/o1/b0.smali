.class public final synthetic Lo1/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Lo1/e0;


# direct methods
.method public synthetic constructor <init>(Lo1/e0;I)V
    .locals 0

    .line 1
    iput p2, p0, Lo1/b0;->f:I

    .line 2
    .line 3
    iput-object p1, p0, Lo1/b0;->g:Lo1/e0;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Lo1/b0;->f:I

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x1

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto/16 :goto_11

    .line 11
    .line 12
    :pswitch_0
    iget-object v0, v1, Lo1/b0;->g:Lo1/e0;

    .line 13
    .line 14
    iget-object v2, v0, Lo1/e0;->j:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v2

    .line 17
    :try_start_0
    iget-object v3, v0, Lo1/e0;->h:Lo1/b0;

    .line 18
    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v0}, Lo1/e0;->c()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    const-string v3, "KA"

    .line 29
    .line 30
    invoke-virtual {v0, v3}, Lo1/e0;->k(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 34
    .line 35
    .line 36
    move-result-wide v5

    .line 37
    iget-wide v7, v0, Lo1/e0;->k:J

    .line 38
    .line 39
    sub-long/2addr v5, v7

    .line 40
    const-wide/16 v7, 0xaf0

    .line 41
    .line 42
    cmp-long v3, v5, v7

    .line 43
    .line 44
    if-lez v3, :cond_1

    .line 45
    .line 46
    invoke-virtual {v0, v4}, Lo1/e0;->i(Z)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    iget-object v3, v0, Lo1/e0;->f:Lo1/f;

    .line 53
    .line 54
    iget-object v0, v0, Lo1/e0;->h:Lo1/b0;

    .line 55
    .line 56
    iget-object v3, v3, Lo1/f;->f:Landroid/os/Handler;

    .line 57
    .line 58
    const-wide/16 v4, 0x1f4

    .line 59
    .line 60
    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 61
    .line 62
    .line 63
    :goto_0
    monitor-exit v2

    .line 64
    return-void

    .line 65
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    throw v0

    .line 67
    :pswitch_1
    iget-object v0, v1, Lo1/b0;->g:Lo1/e0;

    .line 68
    .line 69
    iget-object v2, v0, Lo1/e0;->i:Ljava/lang/Object;

    .line 70
    .line 71
    monitor-enter v2

    .line 72
    :try_start_1
    iget-object v3, v0, Lo1/e0;->g:Lo1/b0;

    .line 73
    .line 74
    if-nez v3, :cond_2

    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_2
    invoke-virtual {v0}, Lo1/e0;->g()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    if-eqz v3, :cond_4

    .line 82
    .line 83
    const-string v4, "KA"

    .line 84
    .line 85
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    if-eqz v4, :cond_3

    .line 90
    .line 91
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 92
    .line 93
    .line 94
    move-result-wide v3

    .line 95
    iput-wide v3, v0, Lo1/e0;->k:J

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :catchall_1
    move-exception v0

    .line 99
    goto :goto_4

    .line 100
    :cond_3
    invoke-virtual {v0, v3}, Lo1/e0;->f(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    :cond_4
    :goto_2
    iget-object v3, v0, Lo1/e0;->f:Lo1/f;

    .line 104
    .line 105
    iget-object v0, v0, Lo1/e0;->g:Lo1/b0;

    .line 106
    .line 107
    iget-object v3, v3, Lo1/f;->f:Landroid/os/Handler;

    .line 108
    .line 109
    const-wide/16 v4, 0x5

    .line 110
    .line 111
    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 112
    .line 113
    .line 114
    :goto_3
    monitor-exit v2

    .line 115
    return-void

    .line 116
    :goto_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 117
    throw v0

    .line 118
    :pswitch_2
    iget-object v0, v1, Lo1/b0;->g:Lo1/e0;

    .line 119
    .line 120
    iget-boolean v2, v0, Lo1/e0;->e:Z

    .line 121
    .line 122
    if-eqz v2, :cond_5

    .line 123
    .line 124
    goto :goto_5

    .line 125
    :cond_5
    iget-object v2, v0, Lo1/e0;->v:Lo1/b0;

    .line 126
    .line 127
    const-string v3, "Dispatch remote cursor events each frame displaced"

    .line 128
    .line 129
    iget-object v4, v0, Lo1/e0;->b:Lo1/j0;

    .line 130
    .line 131
    const-wide/16 v5, 0x8

    .line 132
    .line 133
    invoke-virtual {v4, v2, v3, v5, v6}, Lo1/j0;->b(Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 134
    .line 135
    .line 136
    iget-object v0, v0, Lo1/e0;->w:Lo1/b0;

    .line 137
    .line 138
    invoke-virtual {v4, v0}, Lo1/j0;->c(Ljava/lang/Runnable;)V

    .line 139
    .line 140
    .line 141
    :goto_5
    return-void

    .line 142
    :pswitch_3
    iget-object v0, v1, Lo1/b0;->g:Lo1/e0;

    .line 143
    .line 144
    iget-object v5, v0, Lo1/e0;->s:Lo1/e;

    .line 145
    .line 146
    monitor-enter v5

    .line 147
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 148
    .line 149
    .line 150
    move-result-wide v6

    .line 151
    iget-object v8, v0, Lo1/e0;->s:Lo1/e;

    .line 152
    .line 153
    iget-object v8, v8, Lo1/e;->b:Ljava/lang/Object;

    .line 154
    .line 155
    check-cast v8, Ljava/util/LinkedList;

    .line 156
    .line 157
    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    .line 158
    .line 159
    .line 160
    move-result v8

    .line 161
    iget-object v9, v0, Lo1/e0;->s:Lo1/e;

    .line 162
    .line 163
    iget-object v10, v0, Lo1/e0;->u:Lo1/d;

    .line 164
    .line 165
    iget-object v9, v9, Lo1/e;->b:Ljava/lang/Object;

    .line 166
    .line 167
    if-nez v10, :cond_6

    .line 168
    .line 169
    check-cast v9, Ljava/util/LinkedList;

    .line 170
    .line 171
    invoke-virtual {v9, v3}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    .line 172
    .line 173
    .line 174
    move-result-object v9

    .line 175
    goto :goto_6

    .line 176
    :cond_6
    move-object v11, v9

    .line 177
    check-cast v11, Ljava/util/LinkedList;

    .line 178
    .line 179
    check-cast v9, Ljava/util/LinkedList;

    .line 180
    .line 181
    invoke-virtual {v9, v10}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    .line 182
    .line 183
    .line 184
    move-result v9

    .line 185
    invoke-virtual {v11, v9}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    .line 186
    .line 187
    .line 188
    move-result-object v9

    .line 189
    :goto_6
    const/4 v10, 0x0

    .line 190
    move v11, v3

    .line 191
    move v12, v10

    .line 192
    move v13, v12

    .line 193
    :goto_7
    const v14, 0x4141f55a

    .line 194
    .line 195
    .line 196
    if-ge v11, v8, :cond_d

    .line 197
    .line 198
    invoke-interface {v9}, Ljava/util/ListIterator;->hasNext()Z

    .line 199
    .line 200
    .line 201
    move-result v15

    .line 202
    if-nez v15, :cond_7

    .line 203
    .line 204
    iget-object v9, v0, Lo1/e0;->s:Lo1/e;

    .line 205
    .line 206
    iget-object v9, v9, Lo1/e;->b:Ljava/lang/Object;

    .line 207
    .line 208
    check-cast v9, Ljava/util/LinkedList;

    .line 209
    .line 210
    invoke-virtual {v9, v3}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    .line 211
    .line 212
    .line 213
    move-result-object v9

    .line 214
    goto :goto_9

    .line 215
    :goto_8
    move-object v2, v5

    .line 216
    goto/16 :goto_d

    .line 217
    .line 218
    :cond_7
    :goto_9
    invoke-interface {v9}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v15

    .line 222
    check-cast v15, Lo1/d;

    .line 223
    .line 224
    iput-object v15, v0, Lo1/e0;->u:Lo1/d;

    .line 225
    .line 226
    iget-object v15, v15, Lo1/d;->a:Ljava/lang/Object;

    .line 227
    .line 228
    check-cast v15, Lo1/d0;

    .line 229
    .line 230
    iget-boolean v2, v15, Lo1/d0;->a:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 231
    .line 232
    if-eqz v2, :cond_b

    .line 233
    .line 234
    move-object v2, v5

    .line 235
    :try_start_3
    iget-wide v4, v15, Lo1/d0;->c:J

    .line 236
    .line 237
    cmp-long v4, v4, v6

    .line 238
    .line 239
    if-gtz v4, :cond_c

    .line 240
    .line 241
    iget-object v4, v15, Lo1/d0;->b:Lcom/google/android/gms/internal/play_billing/i0;

    .line 242
    .line 243
    iget-object v5, v0, Lo1/e0;->l:Lo1/c0;

    .line 244
    .line 245
    if-ne v4, v5, :cond_8

    .line 246
    .line 247
    iget v4, v15, Lo1/d0;->d:F

    .line 248
    .line 249
    add-float/2addr v12, v4

    .line 250
    iget v4, v15, Lo1/d0;->e:F

    .line 251
    .line 252
    add-float/2addr v13, v4

    .line 253
    goto :goto_a

    .line 254
    :catchall_2
    move-exception v0

    .line 255
    goto/16 :goto_d

    .line 256
    .line 257
    :cond_8
    cmpl-float v4, v12, v10

    .line 258
    .line 259
    if-nez v4, :cond_9

    .line 260
    .line 261
    cmpl-float v4, v13, v10

    .line 262
    .line 263
    if-eqz v4, :cond_a

    .line 264
    .line 265
    :cond_9
    iget-object v4, v0, Lo1/e0;->a:Lu1/c;

    .line 266
    .line 267
    iget-object v4, v4, Lu1/c;->c:Lu1/i;

    .line 268
    .line 269
    invoke-virtual {v4}, Lu1/i;->i()V

    .line 270
    .line 271
    .line 272
    mul-float/2addr v12, v14

    .line 273
    neg-float v5, v13

    .line 274
    mul-float/2addr v5, v14

    .line 275
    invoke-virtual {v4}, Lu1/i;->m()V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v4, v3}, Lu1/i;->k(Z)V

    .line 279
    .line 280
    .line 281
    iget-object v13, v4, Lu1/i;->r:Lu1/v;

    .line 282
    .line 283
    const/4 v14, 0x1

    .line 284
    invoke-virtual {v13, v12, v5, v14}, Lu1/v;->c(FFZ)V

    .line 285
    .line 286
    .line 287
    const/4 v5, 0x3

    .line 288
    invoke-static {v4, v5}, Lu1/i;->d(Lu1/i;I)V

    .line 289
    .line 290
    .line 291
    move v12, v10

    .line 292
    move v13, v12

    .line 293
    :cond_a
    :goto_a
    iget-object v4, v15, Lo1/d0;->b:Lcom/google/android/gms/internal/play_billing/i0;

    .line 294
    .line 295
    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/i0;->A()V

    .line 296
    .line 297
    .line 298
    iput-boolean v3, v15, Lo1/d0;->a:Z

    .line 299
    .line 300
    iget-object v4, v0, Lo1/e0;->u:Lo1/d;

    .line 301
    .line 302
    const/4 v5, 0x1

    .line 303
    iput-boolean v5, v4, Lo1/d;->b:Z

    .line 304
    .line 305
    iget-object v4, v4, Lo1/d;->c:Lo1/e;

    .line 306
    .line 307
    iget v14, v4, Lo1/e;->a:I

    .line 308
    .line 309
    sub-int/2addr v14, v5

    .line 310
    iput v14, v4, Lo1/e;->a:I

    .line 311
    .line 312
    add-int/lit8 v11, v11, 0x1

    .line 313
    .line 314
    move-object v5, v2

    .line 315
    const/4 v4, 0x1

    .line 316
    goto :goto_7

    .line 317
    :cond_b
    move-object v2, v5

    .line 318
    :cond_c
    move v4, v3

    .line 319
    goto :goto_b

    .line 320
    :catchall_3
    move-exception v0

    .line 321
    goto :goto_8

    .line 322
    :cond_d
    move-object v2, v5

    .line 323
    const/4 v4, 0x1

    .line 324
    :goto_b
    if-eqz v4, :cond_f

    .line 325
    .line 326
    invoke-interface {v9}, Ljava/util/ListIterator;->hasNext()Z

    .line 327
    .line 328
    .line 329
    move-result v4

    .line 330
    if-eqz v4, :cond_e

    .line 331
    .line 332
    invoke-interface {v9}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object v4

    .line 336
    check-cast v4, Lo1/d;

    .line 337
    .line 338
    iput-object v4, v0, Lo1/e0;->u:Lo1/d;

    .line 339
    .line 340
    goto :goto_c

    .line 341
    :cond_e
    const/4 v4, 0x0

    .line 342
    iput-object v4, v0, Lo1/e0;->u:Lo1/d;

    .line 343
    .line 344
    :cond_f
    :goto_c
    cmpl-float v4, v12, v10

    .line 345
    .line 346
    if-nez v4, :cond_10

    .line 347
    .line 348
    cmpl-float v4, v13, v10

    .line 349
    .line 350
    if-eqz v4, :cond_11

    .line 351
    .line 352
    :cond_10
    iget-object v0, v0, Lo1/e0;->a:Lu1/c;

    .line 353
    .line 354
    iget-object v0, v0, Lu1/c;->c:Lu1/i;

    .line 355
    .line 356
    invoke-virtual {v0}, Lu1/i;->i()V

    .line 357
    .line 358
    .line 359
    mul-float/2addr v12, v14

    .line 360
    neg-float v4, v13

    .line 361
    mul-float/2addr v4, v14

    .line 362
    invoke-virtual {v0}, Lu1/i;->m()V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v0, v3}, Lu1/i;->k(Z)V

    .line 366
    .line 367
    .line 368
    iget-object v3, v0, Lu1/i;->r:Lu1/v;

    .line 369
    .line 370
    const/4 v5, 0x1

    .line 371
    invoke-virtual {v3, v12, v4, v5}, Lu1/v;->c(FFZ)V

    .line 372
    .line 373
    .line 374
    const/4 v3, 0x3

    .line 375
    invoke-static {v0, v3}, Lu1/i;->d(Lu1/i;I)V

    .line 376
    .line 377
    .line 378
    :cond_11
    monitor-exit v2

    .line 379
    return-void

    .line 380
    :goto_d
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 381
    throw v0

    .line 382
    :pswitch_4
    iget-object v0, v1, Lo1/b0;->g:Lo1/e0;

    .line 383
    .line 384
    invoke-virtual {v0}, Lo1/e0;->e()I

    .line 385
    .line 386
    .line 387
    move-result v2

    .line 388
    invoke-static {v2}, Lk0/c;->b(I)I

    .line 389
    .line 390
    .line 391
    move-result v4

    .line 392
    const-string v5, "sdf"

    .line 393
    .line 394
    iget-object v6, v0, Lo1/e0;->a:Lu1/c;

    .line 395
    .line 396
    if-eqz v4, :cond_14

    .line 397
    .line 398
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 399
    .line 400
    .line 401
    invoke-static {v2}, Lk0/c;->b(I)I

    .line 402
    .line 403
    .line 404
    move-result v4

    .line 405
    iget-object v7, v6, Lu1/c;->c:Lu1/i;

    .line 406
    .line 407
    const/4 v8, 0x3

    .line 408
    if-eq v4, v8, :cond_13

    .line 409
    .line 410
    const/4 v8, 0x6

    .line 411
    if-eq v4, v8, :cond_12

    .line 412
    .line 413
    goto :goto_f

    .line 414
    :cond_12
    iget-object v4, v7, Lu1/i;->a:Lq1/f;

    .line 415
    .line 416
    iget-object v4, v4, Lq1/f;->H:Lo1/n0;

    .line 417
    .line 418
    iget-object v6, v6, Lu1/c;->b:Lo1/m0;

    .line 419
    .line 420
    const/4 v8, 0x1

    .line 421
    goto :goto_e

    .line 422
    :cond_13
    const/4 v8, 0x1

    .line 423
    iget-object v4, v7, Lu1/i;->a:Lq1/f;

    .line 424
    .line 425
    iget-object v4, v4, Lq1/f;->H:Lo1/n0;

    .line 426
    .line 427
    iget-object v6, v6, Lu1/c;->a:Lo1/m0;

    .line 428
    .line 429
    :goto_e
    invoke-virtual {v4, v6, v8}, Lo1/n0;->d(Lo1/m0;Z)V

    .line 430
    .line 431
    .line 432
    :goto_f
    invoke-static {v2}, La1/b;->m(I)Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v2

    .line 436
    const-string v4, "Remote cursor: Couldn\'t start server socket: "

    .line 437
    .line 438
    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v2

    .line 442
    goto :goto_10

    .line 443
    :cond_14
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 444
    .line 445
    .line 446
    move-result-wide v7

    .line 447
    iput-wide v7, v0, Lo1/e0;->k:J

    .line 448
    .line 449
    new-instance v2, Lo1/b0;

    .line 450
    .line 451
    const/4 v4, 0x3

    .line 452
    invoke-direct {v2, v0, v4}, Lo1/b0;-><init>(Lo1/e0;I)V

    .line 453
    .line 454
    .line 455
    iput-object v2, v0, Lo1/e0;->g:Lo1/b0;

    .line 456
    .line 457
    iget-object v4, v0, Lo1/e0;->f:Lo1/f;

    .line 458
    .line 459
    invoke-virtual {v4, v2}, Lo1/f;->a(Ljava/lang/Runnable;)V

    .line 460
    .line 461
    .line 462
    new-instance v2, Lo1/b0;

    .line 463
    .line 464
    const/4 v7, 0x4

    .line 465
    invoke-direct {v2, v0, v7}, Lo1/b0;-><init>(Lo1/e0;I)V

    .line 466
    .line 467
    .line 468
    iput-object v2, v0, Lo1/e0;->h:Lo1/b0;

    .line 469
    .line 470
    invoke-virtual {v4, v2}, Lo1/f;->a(Ljava/lang/Runnable;)V

    .line 471
    .line 472
    .line 473
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 474
    .line 475
    .line 476
    const-string v2, "Remote server started"

    .line 477
    .line 478
    :goto_10
    invoke-static {v5, v2}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    .line 480
    .line 481
    iput-boolean v3, v0, Lo1/e0;->d:Z

    .line 482
    .line 483
    return-void

    .line 484
    :goto_11
    const-string v0, "besm Allah 2"

    .line 485
    .line 486
    iget-object v2, v1, Lo1/b0;->g:Lo1/e0;

    .line 487
    .line 488
    invoke-virtual {v2, v0}, Lo1/e0;->k(Ljava/lang/String;)V

    .line 489
    .line 490
    .line 491
    return-void

    .line 492
    nop

    .line 493
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
