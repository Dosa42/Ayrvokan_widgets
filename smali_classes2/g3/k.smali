.class public final Lg3/k;
.super Lg3/a;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg3/m;


# direct methods
.method public synthetic constructor <init>(Lg3/m;I)V
    .locals 0

    .line 1
    iput p2, p0, Lg3/k;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lg3/k;->b:Lg3/m;

    .line 4
    .line 5
    invoke-direct {p0}, Lg3/a;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b(Lm3/d;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v3, v0, Lg3/k;->a:I

    .line 6
    .line 7
    const-string v4, " items"

    .line 8
    .line 9
    const-string v5, "expected a single mapping item, but found "

    .line 10
    .line 11
    const-string v6, "expected a mapping of length 1, but found "

    .line 12
    .line 13
    const-string v7, "expected a sequence, but found "

    .line 14
    .line 15
    const-string v8, ":"

    .line 16
    .line 17
    const/16 v9, 0x3a

    .line 18
    .line 19
    const/16 v10, 0x2b

    .line 20
    .line 21
    const/16 v11, 0x2d

    .line 22
    .line 23
    const-string v12, "_"

    .line 24
    .line 25
    const-string v13, ""

    .line 26
    .line 27
    const/4 v14, 0x0

    .line 28
    iget-object v15, v0, Lg3/k;->b:Lg3/m;

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    packed-switch v3, :pswitch_data_0

    .line 32
    .line 33
    .line 34
    goto/16 :goto_f

    .line 35
    .line 36
    :pswitch_0
    instance-of v3, v1, Lm3/h;

    .line 37
    .line 38
    const-string v8, "while constructing pairs"

    .line 39
    .line 40
    if-eqz v3, :cond_3

    .line 41
    .line 42
    move-object v3, v1

    .line 43
    check-cast v3, Lm3/h;

    .line 44
    .line 45
    new-instance v7, Ljava/util/ArrayList;

    .line 46
    .line 47
    iget-object v9, v3, Lm3/h;->h:Ljava/util/List;

    .line 48
    .line 49
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 50
    .line 51
    .line 52
    move-result v9

    .line 53
    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 54
    .line 55
    .line 56
    iget-object v3, v3, Lm3/h;->h:Ljava/util/List;

    .line 57
    .line 58
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v9

    .line 66
    if-eqz v9, :cond_2

    .line 67
    .line 68
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v9

    .line 72
    check-cast v9, Lm3/d;

    .line 73
    .line 74
    instance-of v10, v9, Lm3/c;

    .line 75
    .line 76
    if-eqz v10, :cond_1

    .line 77
    .line 78
    check-cast v9, Lm3/c;

    .line 79
    .line 80
    iget-object v10, v9, Lm3/c;->h:Ljava/util/List;

    .line 81
    .line 82
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 83
    .line 84
    .line 85
    move-result v10

    .line 86
    if-ne v10, v2, :cond_0

    .line 87
    .line 88
    iget-object v10, v9, Lm3/c;->h:Ljava/util/List;

    .line 89
    .line 90
    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v10

    .line 94
    check-cast v10, Lm3/f;

    .line 95
    .line 96
    iget-object v10, v10, Lm3/f;->a:Lm3/d;

    .line 97
    .line 98
    iget-object v9, v9, Lm3/c;->h:Ljava/util/List;

    .line 99
    .line 100
    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v9

    .line 104
    check-cast v9, Lm3/f;

    .line 105
    .line 106
    iget-object v9, v9, Lm3/f;->b:Lm3/d;

    .line 107
    .line 108
    invoke-virtual {v15, v10}, Lg3/c;->c(Lm3/d;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v10

    .line 112
    invoke-virtual {v15, v9}, Lg3/c;->c(Lm3/d;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v9

    .line 116
    filled-new-array {v10, v9}, [Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v9

    .line 120
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_0
    new-instance v2, Lg3/h;

    .line 125
    .line 126
    iget-object v1, v1, Lm3/d;->b:Lh3/a;

    .line 127
    .line 128
    new-instance v3, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    iget-object v5, v9, Lm3/c;->h:Ljava/util/List;

    .line 134
    .line 135
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 136
    .line 137
    .line 138
    move-result v5

    .line 139
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    iget-object v4, v9, Lm3/d;->b:Lh3/a;

    .line 150
    .line 151
    invoke-direct {v2, v8, v1, v3, v4}, Lg3/h;-><init>(Ljava/lang/String;Lh3/a;Ljava/lang/String;Lh3/a;)V

    .line 152
    .line 153
    .line 154
    throw v2

    .line 155
    :cond_1
    new-instance v2, Lg3/h;

    .line 156
    .line 157
    iget-object v1, v1, Lm3/d;->b:Lh3/a;

    .line 158
    .line 159
    new-instance v3, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v9}, Lm3/d;->a()Lm3/e;

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    const-string v4, "while constructingpairs"

    .line 176
    .line 177
    iget-object v5, v9, Lm3/d;->b:Lh3/a;

    .line 178
    .line 179
    invoke-direct {v2, v4, v1, v3, v5}, Lg3/h;-><init>(Ljava/lang/String;Lh3/a;Ljava/lang/String;Lh3/a;)V

    .line 180
    .line 181
    .line 182
    throw v2

    .line 183
    :cond_2
    return-object v7

    .line 184
    :cond_3
    new-instance v2, Lg3/h;

    .line 185
    .line 186
    iget-object v3, v1, Lm3/d;->b:Lh3/a;

    .line 187
    .line 188
    new-instance v4, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual/range {p1 .. p1}, Lm3/d;->a()Lm3/e;

    .line 194
    .line 195
    .line 196
    move-result-object v5

    .line 197
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    iget-object v1, v1, Lm3/d;->b:Lh3/a;

    .line 205
    .line 206
    invoke-direct {v2, v8, v3, v4, v1}, Lg3/h;-><init>(Ljava/lang/String;Lh3/a;Ljava/lang/String;Lh3/a;)V

    .line 207
    .line 208
    .line 209
    throw v2

    .line 210
    :pswitch_1
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 211
    .line 212
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 213
    .line 214
    .line 215
    instance-of v8, v1, Lm3/h;

    .line 216
    .line 217
    const-string v9, "while constructing an ordered map"

    .line 218
    .line 219
    if-eqz v8, :cond_7

    .line 220
    .line 221
    move-object v7, v1

    .line 222
    check-cast v7, Lm3/h;

    .line 223
    .line 224
    iget-object v7, v7, Lm3/h;->h:Ljava/util/List;

    .line 225
    .line 226
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 227
    .line 228
    .line 229
    move-result-object v7

    .line 230
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 231
    .line 232
    .line 233
    move-result v8

    .line 234
    if-eqz v8, :cond_6

    .line 235
    .line 236
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v8

    .line 240
    check-cast v8, Lm3/d;

    .line 241
    .line 242
    instance-of v10, v8, Lm3/c;

    .line 243
    .line 244
    if-eqz v10, :cond_5

    .line 245
    .line 246
    check-cast v8, Lm3/c;

    .line 247
    .line 248
    iget-object v10, v8, Lm3/c;->h:Ljava/util/List;

    .line 249
    .line 250
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 251
    .line 252
    .line 253
    move-result v10

    .line 254
    if-ne v10, v2, :cond_4

    .line 255
    .line 256
    iget-object v10, v8, Lm3/c;->h:Ljava/util/List;

    .line 257
    .line 258
    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v10

    .line 262
    check-cast v10, Lm3/f;

    .line 263
    .line 264
    iget-object v10, v10, Lm3/f;->a:Lm3/d;

    .line 265
    .line 266
    iget-object v8, v8, Lm3/c;->h:Ljava/util/List;

    .line 267
    .line 268
    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v8

    .line 272
    check-cast v8, Lm3/f;

    .line 273
    .line 274
    iget-object v8, v8, Lm3/f;->b:Lm3/d;

    .line 275
    .line 276
    invoke-virtual {v15, v10}, Lg3/c;->c(Lm3/d;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v10

    .line 280
    invoke-virtual {v15, v8}, Lg3/c;->c(Lm3/d;)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v8

    .line 284
    invoke-interface {v3, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    goto :goto_1

    .line 288
    :cond_4
    new-instance v2, Lg3/h;

    .line 289
    .line 290
    iget-object v1, v1, Lm3/d;->b:Lh3/a;

    .line 291
    .line 292
    new-instance v3, Ljava/lang/StringBuilder;

    .line 293
    .line 294
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    iget-object v5, v8, Lm3/c;->h:Ljava/util/List;

    .line 298
    .line 299
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 300
    .line 301
    .line 302
    move-result v5

    .line 303
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v3

    .line 313
    iget-object v4, v8, Lm3/d;->b:Lh3/a;

    .line 314
    .line 315
    invoke-direct {v2, v9, v1, v3, v4}, Lg3/h;-><init>(Ljava/lang/String;Lh3/a;Ljava/lang/String;Lh3/a;)V

    .line 316
    .line 317
    .line 318
    throw v2

    .line 319
    :cond_5
    new-instance v2, Lg3/h;

    .line 320
    .line 321
    iget-object v1, v1, Lm3/d;->b:Lh3/a;

    .line 322
    .line 323
    new-instance v3, Ljava/lang/StringBuilder;

    .line 324
    .line 325
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v8}, Lm3/d;->a()Lm3/e;

    .line 329
    .line 330
    .line 331
    move-result-object v4

    .line 332
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v3

    .line 339
    iget-object v4, v8, Lm3/d;->b:Lh3/a;

    .line 340
    .line 341
    invoke-direct {v2, v9, v1, v3, v4}, Lg3/h;-><init>(Ljava/lang/String;Lh3/a;Ljava/lang/String;Lh3/a;)V

    .line 342
    .line 343
    .line 344
    throw v2

    .line 345
    :cond_6
    return-object v3

    .line 346
    :cond_7
    new-instance v2, Lg3/h;

    .line 347
    .line 348
    iget-object v3, v1, Lm3/d;->b:Lh3/a;

    .line 349
    .line 350
    new-instance v4, Ljava/lang/StringBuilder;

    .line 351
    .line 352
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    invoke-virtual/range {p1 .. p1}, Lm3/d;->a()Lm3/e;

    .line 356
    .line 357
    .line 358
    move-result-object v5

    .line 359
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v4

    .line 366
    iget-object v1, v1, Lm3/d;->b:Lh3/a;

    .line 367
    .line 368
    invoke-direct {v2, v9, v3, v4, v1}, Lg3/h;-><init>(Ljava/lang/String;Lh3/a;Ljava/lang/String;Lh3/a;)V

    .line 369
    .line 370
    .line 371
    throw v2

    .line 372
    :pswitch_2
    if-eqz v1, :cond_8

    .line 373
    .line 374
    check-cast v1, Lm3/g;

    .line 375
    .line 376
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 377
    .line 378
    .line 379
    :cond_8
    const/4 v1, 0x0

    .line 380
    return-object v1

    .line 381
    :pswitch_3
    check-cast v1, Lm3/g;

    .line 382
    .line 383
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 384
    .line 385
    .line 386
    iget-object v1, v1, Lm3/g;->h:Ljava/lang/String;

    .line 387
    .line 388
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v1

    .line 392
    invoke-virtual {v1, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v1

    .line 396
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    .line 397
    .line 398
    .line 399
    move-result v3

    .line 400
    if-ne v3, v11, :cond_9

    .line 401
    .line 402
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v1

    .line 406
    const/4 v3, -0x1

    .line 407
    goto :goto_2

    .line 408
    :cond_9
    if-ne v3, v10, :cond_a

    .line 409
    .line 410
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v1

    .line 414
    :cond_a
    move v3, v2

    .line 415
    :goto_2
    const-string v4, "0"

    .line 416
    .line 417
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 418
    .line 419
    .line 420
    move-result v5

    .line 421
    if-eqz v5, :cond_b

    .line 422
    .line 423
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 424
    .line 425
    .line 426
    move-result-object v1

    .line 427
    goto :goto_5

    .line 428
    :cond_b
    const-string v5, "0b"

    .line 429
    .line 430
    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 431
    .line 432
    .line 433
    move-result v5

    .line 434
    const/4 v6, 0x2

    .line 435
    if-eqz v5, :cond_c

    .line 436
    .line 437
    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v1

    .line 441
    goto :goto_3

    .line 442
    :cond_c
    const-string v5, "0x"

    .line 443
    .line 444
    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 445
    .line 446
    .line 447
    move-result v5

    .line 448
    if-eqz v5, :cond_d

    .line 449
    .line 450
    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v1

    .line 454
    const/16 v6, 0x10

    .line 455
    .line 456
    goto :goto_3

    .line 457
    :cond_d
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 458
    .line 459
    .line 460
    move-result v4

    .line 461
    if-eqz v4, :cond_e

    .line 462
    .line 463
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v1

    .line 467
    const/16 v6, 0x8

    .line 468
    .line 469
    :goto_3
    invoke-static {v15, v3, v1, v6}, Lg3/m;->j(Lg3/m;ILjava/lang/String;I)Ljava/lang/Number;

    .line 470
    .line 471
    .line 472
    move-result-object v1

    .line 473
    goto :goto_5

    .line 474
    :cond_e
    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(I)I

    .line 475
    .line 476
    .line 477
    move-result v4

    .line 478
    const/16 v5, 0xa

    .line 479
    .line 480
    const/4 v6, -0x1

    .line 481
    if-eq v4, v6, :cond_10

    .line 482
    .line 483
    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v1

    .line 487
    array-length v4, v1

    .line 488
    move v7, v2

    .line 489
    move v6, v14

    .line 490
    :goto_4
    if-ge v14, v4, :cond_f

    .line 491
    .line 492
    int-to-long v8, v6

    .line 493
    sub-int v6, v4, v14

    .line 494
    .line 495
    sub-int/2addr v6, v2

    .line 496
    aget-object v6, v1, v6

    .line 497
    .line 498
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 499
    .line 500
    .line 501
    move-result-wide v10

    .line 502
    int-to-long v12, v7

    .line 503
    mul-long/2addr v10, v12

    .line 504
    add-long/2addr v10, v8

    .line 505
    long-to-int v6, v10

    .line 506
    mul-int/lit8 v7, v7, 0x3c

    .line 507
    .line 508
    add-int/lit8 v14, v14, 0x1

    .line 509
    .line 510
    goto :goto_4

    .line 511
    :cond_f
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object v1

    .line 515
    :cond_10
    invoke-static {v15, v3, v1, v5}, Lg3/m;->j(Lg3/m;ILjava/lang/String;I)Ljava/lang/Number;

    .line 516
    .line 517
    .line 518
    move-result-object v1

    .line 519
    :goto_5
    return-object v1

    .line 520
    :pswitch_4
    check-cast v1, Lm3/g;

    .line 521
    .line 522
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 523
    .line 524
    .line 525
    iget-object v1, v1, Lm3/g;->h:Ljava/lang/String;

    .line 526
    .line 527
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object v1

    .line 531
    invoke-virtual {v1, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v1

    .line 535
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    .line 536
    .line 537
    .line 538
    move-result v3

    .line 539
    if-ne v3, v11, :cond_11

    .line 540
    .line 541
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object v1

    .line 545
    const/4 v3, -0x1

    .line 546
    goto :goto_6

    .line 547
    :cond_11
    if-ne v3, v10, :cond_12

    .line 548
    .line 549
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 550
    .line 551
    .line 552
    move-result-object v1

    .line 553
    :cond_12
    move v3, v2

    .line 554
    :goto_6
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object v4

    .line 558
    const-string v5, ".inf"

    .line 559
    .line 560
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 561
    .line 562
    .line 563
    move-result v5

    .line 564
    if-eqz v5, :cond_14

    .line 565
    .line 566
    const/4 v5, -0x1

    .line 567
    if-ne v3, v5, :cond_13

    .line 568
    .line 569
    const-wide/high16 v1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 570
    .line 571
    goto :goto_7

    .line 572
    :cond_13
    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 573
    .line 574
    goto :goto_7

    .line 575
    :cond_14
    const-string v5, ".nan"

    .line 576
    .line 577
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 578
    .line 579
    .line 580
    move-result v4

    .line 581
    if-eqz v4, :cond_15

    .line 582
    .line 583
    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    .line 584
    .line 585
    :goto_7
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 586
    .line 587
    .line 588
    move-result-object v1

    .line 589
    goto :goto_9

    .line 590
    :cond_15
    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(I)I

    .line 591
    .line 592
    .line 593
    move-result v4

    .line 594
    const/4 v5, -0x1

    .line 595
    if-eq v4, v5, :cond_17

    .line 596
    .line 597
    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 598
    .line 599
    .line 600
    move-result-object v1

    .line 601
    array-length v4, v1

    .line 602
    const-wide/16 v5, 0x0

    .line 603
    .line 604
    move v7, v2

    .line 605
    :goto_8
    if-ge v14, v4, :cond_16

    .line 606
    .line 607
    sub-int v8, v4, v14

    .line 608
    .line 609
    sub-int/2addr v8, v2

    .line 610
    aget-object v8, v1, v8

    .line 611
    .line 612
    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 613
    .line 614
    .line 615
    move-result-wide v8

    .line 616
    int-to-double v10, v7

    .line 617
    mul-double/2addr v8, v10

    .line 618
    add-double/2addr v5, v8

    .line 619
    mul-int/lit8 v7, v7, 0x3c

    .line 620
    .line 621
    add-int/lit8 v14, v14, 0x1

    .line 622
    .line 623
    goto :goto_8

    .line 624
    :cond_16
    int-to-double v1, v3

    .line 625
    mul-double/2addr v1, v5

    .line 626
    goto :goto_7

    .line 627
    :cond_17
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    .line 628
    .line 629
    .line 630
    move-result-object v1

    .line 631
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    .line 632
    .line 633
    .line 634
    move-result-wide v1

    .line 635
    int-to-double v3, v3

    .line 636
    mul-double/2addr v1, v3

    .line 637
    goto :goto_7

    .line 638
    :goto_9
    return-object v1

    .line 639
    :pswitch_5
    check-cast v1, Lm3/g;

    .line 640
    .line 641
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 642
    .line 643
    .line 644
    iget-object v1, v1, Lm3/g;->h:Ljava/lang/String;

    .line 645
    .line 646
    sget-object v2, Lg3/m;->q:Ljava/util/HashMap;

    .line 647
    .line 648
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 649
    .line 650
    .line 651
    move-result-object v1

    .line 652
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    .line 654
    .line 655
    move-result-object v1

    .line 656
    return-object v1

    .line 657
    :pswitch_6
    check-cast v1, Lm3/g;

    .line 658
    .line 659
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 660
    .line 661
    .line 662
    iget-object v1, v1, Lm3/g;->h:Ljava/lang/String;

    .line 663
    .line 664
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 665
    .line 666
    .line 667
    move-result-object v1

    .line 668
    const-string v2, "\\s"

    .line 669
    .line 670
    invoke-virtual {v1, v2, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 671
    .line 672
    .line 673
    move-result-object v1

    .line 674
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    .line 675
    .line 676
    .line 677
    move-result-object v1

    .line 678
    sget-object v2, Lj3/a;->a:[C

    .line 679
    .line 680
    array-length v2, v1

    .line 681
    rem-int/lit8 v3, v2, 0x4

    .line 682
    .line 683
    if-nez v3, :cond_20

    .line 684
    .line 685
    :goto_a
    if-lez v2, :cond_18

    .line 686
    .line 687
    add-int/lit8 v3, v2, 0x0

    .line 688
    .line 689
    const/4 v4, -0x1

    .line 690
    add-int/2addr v3, v4

    .line 691
    aget-char v3, v1, v3

    .line 692
    .line 693
    const/16 v5, 0x3d

    .line 694
    .line 695
    if-ne v3, v5, :cond_18

    .line 696
    .line 697
    add-int/lit8 v2, v2, -0x1

    .line 698
    .line 699
    goto :goto_a

    .line 700
    :cond_18
    mul-int/lit8 v3, v2, 0x3

    .line 701
    .line 702
    div-int/lit8 v3, v3, 0x4

    .line 703
    .line 704
    new-array v4, v3, [B

    .line 705
    .line 706
    add-int/2addr v2, v14

    .line 707
    move v5, v14

    .line 708
    :cond_19
    :goto_b
    if-ge v14, v2, :cond_1f

    .line 709
    .line 710
    add-int/lit8 v6, v14, 0x1

    .line 711
    .line 712
    aget-char v7, v1, v14

    .line 713
    .line 714
    add-int/lit8 v8, v6, 0x1

    .line 715
    .line 716
    aget-char v6, v1, v6

    .line 717
    .line 718
    const/16 v9, 0x41

    .line 719
    .line 720
    if-ge v8, v2, :cond_1a

    .line 721
    .line 722
    add-int/lit8 v10, v8, 0x1

    .line 723
    .line 724
    aget-char v8, v1, v8

    .line 725
    .line 726
    move/from16 v16, v10

    .line 727
    .line 728
    move v10, v8

    .line 729
    move/from16 v8, v16

    .line 730
    .line 731
    goto :goto_c

    .line 732
    :cond_1a
    move v10, v9

    .line 733
    :goto_c
    if-ge v8, v2, :cond_1b

    .line 734
    .line 735
    add-int/lit8 v9, v8, 0x1

    .line 736
    .line 737
    aget-char v8, v1, v8

    .line 738
    .line 739
    move v14, v9

    .line 740
    move v9, v8

    .line 741
    goto :goto_d

    .line 742
    :cond_1b
    move v14, v8

    .line 743
    :goto_d
    const-string v8, "Illegal character in Base64 encoded data."

    .line 744
    .line 745
    const/16 v11, 0x7f

    .line 746
    .line 747
    if-gt v7, v11, :cond_1e

    .line 748
    .line 749
    if-gt v6, v11, :cond_1e

    .line 750
    .line 751
    if-gt v10, v11, :cond_1e

    .line 752
    .line 753
    if-gt v9, v11, :cond_1e

    .line 754
    .line 755
    sget-object v11, Lj3/a;->b:[B

    .line 756
    .line 757
    aget-byte v7, v11, v7

    .line 758
    .line 759
    aget-byte v6, v11, v6

    .line 760
    .line 761
    aget-byte v10, v11, v10

    .line 762
    .line 763
    aget-byte v9, v11, v9

    .line 764
    .line 765
    if-ltz v7, :cond_1d

    .line 766
    .line 767
    if-ltz v6, :cond_1d

    .line 768
    .line 769
    if-ltz v10, :cond_1d

    .line 770
    .line 771
    if-ltz v9, :cond_1d

    .line 772
    .line 773
    shl-int/lit8 v7, v7, 0x2

    .line 774
    .line 775
    ushr-int/lit8 v8, v6, 0x4

    .line 776
    .line 777
    or-int/2addr v7, v8

    .line 778
    and-int/lit8 v6, v6, 0xf

    .line 779
    .line 780
    shl-int/lit8 v6, v6, 0x4

    .line 781
    .line 782
    ushr-int/lit8 v8, v10, 0x2

    .line 783
    .line 784
    or-int/2addr v6, v8

    .line 785
    and-int/lit8 v8, v10, 0x3

    .line 786
    .line 787
    shl-int/lit8 v8, v8, 0x6

    .line 788
    .line 789
    or-int/2addr v8, v9

    .line 790
    add-int/lit8 v9, v5, 0x1

    .line 791
    .line 792
    int-to-byte v7, v7

    .line 793
    aput-byte v7, v4, v5

    .line 794
    .line 795
    if-ge v9, v3, :cond_1c

    .line 796
    .line 797
    add-int/lit8 v5, v9, 0x1

    .line 798
    .line 799
    int-to-byte v6, v6

    .line 800
    aput-byte v6, v4, v9

    .line 801
    .line 802
    goto :goto_e

    .line 803
    :cond_1c
    move v5, v9

    .line 804
    :goto_e
    if-ge v5, v3, :cond_19

    .line 805
    .line 806
    add-int/lit8 v6, v5, 0x1

    .line 807
    .line 808
    int-to-byte v7, v8

    .line 809
    aput-byte v7, v4, v5

    .line 810
    .line 811
    move v5, v6

    .line 812
    goto :goto_b

    .line 813
    :cond_1d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 814
    .line 815
    invoke-direct {v1, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 816
    .line 817
    .line 818
    throw v1

    .line 819
    :cond_1e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 820
    .line 821
    invoke-direct {v1, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 822
    .line 823
    .line 824
    throw v1

    .line 825
    :cond_1f
    return-object v4

    .line 826
    :cond_20
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 827
    .line 828
    const-string v2, "Length of Base64 encoded input string is not a multiple of 4."

    .line 829
    .line 830
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 831
    .line 832
    .line 833
    throw v1

    .line 834
    :goto_f
    check-cast v1, Lm3/g;

    .line 835
    .line 836
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 837
    .line 838
    .line 839
    iget-object v1, v1, Lm3/g;->h:Ljava/lang/String;

    .line 840
    .line 841
    return-object v1

    .line 842
    nop

    .line 843
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
