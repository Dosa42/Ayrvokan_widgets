.class public final Lo0/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lk0/g;

.field public final c:Lp0/d;

.field public final d:Lo0/p;

.field public final e:Ljava/util/concurrent/Executor;

.field public final f:Lq0/c;

.field public final g:Lr0/a;

.field public final h:Lr0/a;

.field public final i:Lp0/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lk0/g;Lp0/d;Lo0/p;Ljava/util/concurrent/Executor;Lq0/c;Lr0/a;Lr0/a;Lp0/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/l;->a:Landroid/content/Context;

    iput-object p2, p0, Lo0/l;->b:Lk0/g;

    iput-object p3, p0, Lo0/l;->c:Lp0/d;

    iput-object p4, p0, Lo0/l;->d:Lo0/p;

    iput-object p5, p0, Lo0/l;->e:Ljava/util/concurrent/Executor;

    iput-object p6, p0, Lo0/l;->f:Lq0/c;

    iput-object p7, p0, Lo0/l;->g:Lr0/a;

    iput-object p8, p0, Lo0/l;->h:Lr0/a;

    iput-object p9, p0, Lo0/l;->i:Lp0/c;

    return-void
.end method


# virtual methods
.method public final a(Lj0/k;I)V
    .locals 43

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    iget-object v0, v8, Lj0/k;->a:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v1, v7, Lo0/l;->b:Lk0/g;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Lk0/g;->a(Ljava/lang/String;)Lk0/h;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    :goto_0
    move-wide v5, v2

    .line 16
    new-instance v0, Lo0/h;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-direct {v0, v7, v8, v2}, Lo0/h;-><init>(Lo0/l;Lj0/k;I)V

    .line 20
    .line 21
    .line 22
    iget-object v3, v7, Lo0/l;->f:Lq0/c;

    .line 23
    .line 24
    move-object v9, v3

    .line 25
    check-cast v9, Lp0/k;

    .line 26
    .line 27
    invoke-virtual {v9, v0}, Lp0/k;->e(Lq0/b;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/lang/Boolean;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iget-object v3, v7, Lo0/l;->g:Lr0/a;

    .line 38
    .line 39
    if-eqz v0, :cond_26

    .line 40
    .line 41
    new-instance v0, Lo0/h;

    .line 42
    .line 43
    const/4 v4, 0x1

    .line 44
    invoke-direct {v0, v7, v8, v4}, Lo0/h;-><init>(Lo0/l;Lj0/k;I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v9, v0}, Lp0/k;->e(Lq0/b;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    move-object v4, v0

    .line 52
    check-cast v4, Ljava/lang/Iterable;

    .line 53
    .line 54
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_0

    .line 63
    .line 64
    return-void

    .line 65
    :cond_0
    const/4 v0, 0x3

    .line 66
    const-wide/16 v10, -0x1

    .line 67
    .line 68
    iget-object v12, v8, Lj0/k;->b:[B

    .line 69
    .line 70
    if-nez v1, :cond_1

    .line 71
    .line 72
    const-string v2, "Uploader"

    .line 73
    .line 74
    const-string v3, "Unknown backend for %s, deleting event batch for it..."

    .line 75
    .line 76
    invoke-static {v2, v3, v8}, Lcom/google/android/gms/internal/play_billing/i0;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    new-instance v2, Lk0/a;

    .line 80
    .line 81
    invoke-direct {v2, v0, v10, v11}, Lk0/a;-><init>(IJ)V

    .line 82
    .line 83
    .line 84
    move-object/from16 v25, v1

    .line 85
    .line 86
    move-wide/from16 v28, v5

    .line 87
    .line 88
    move-object/from16 v27, v9

    .line 89
    .line 90
    goto/16 :goto_d

    .line 91
    .line 92
    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 98
    .line 99
    .line 100
    move-result-object v11

    .line 101
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    .line 103
    .line 104
    move-result v13

    .line 105
    if-eqz v13, :cond_2

    .line 106
    .line 107
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v13

    .line 111
    check-cast v13, Lp0/b;

    .line 112
    .line 113
    iget-object v13, v13, Lp0/b;->c:Lj0/i;

    .line 114
    .line 115
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_2
    if-eqz v12, :cond_3

    .line 120
    .line 121
    const/4 v2, 0x1

    .line 122
    :cond_3
    const-string v11, "proto"

    .line 123
    .line 124
    if-eqz v2, :cond_4

    .line 125
    .line 126
    iget-object v2, v7, Lo0/l;->i:Lp0/c;

    .line 127
    .line 128
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    new-instance v13, Lh0/b;

    .line 132
    .line 133
    invoke-direct {v13, v2, v0}, Lh0/b;-><init>(Ljava/lang/Object;I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v9, v13}, Lp0/k;->e(Lq0/b;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    check-cast v0, Lm0/a;

    .line 141
    .line 142
    new-instance v2, Lj0/h;

    .line 143
    .line 144
    invoke-direct {v2}, Lj0/h;-><init>()V

    .line 145
    .line 146
    .line 147
    new-instance v13, Ljava/util/HashMap;

    .line 148
    .line 149
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 150
    .line 151
    .line 152
    iput-object v13, v2, Lj0/h;->g:Ljava/lang/Object;

    .line 153
    .line 154
    check-cast v3, Lr0/b;

    .line 155
    .line 156
    invoke-virtual {v3}, Lr0/b;->a()J

    .line 157
    .line 158
    .line 159
    move-result-wide v13

    .line 160
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    iput-object v3, v2, Lj0/h;->e:Ljava/lang/Object;

    .line 165
    .line 166
    iget-object v3, v7, Lo0/l;->h:Lr0/a;

    .line 167
    .line 168
    check-cast v3, Lr0/b;

    .line 169
    .line 170
    invoke-virtual {v3}, Lr0/b;->a()J

    .line 171
    .line 172
    .line 173
    move-result-wide v13

    .line 174
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    iput-object v3, v2, Lj0/h;->f:Ljava/lang/Object;

    .line 179
    .line 180
    const-string v3, "GDT_CLIENT_METRICS"

    .line 181
    .line 182
    invoke-virtual {v2, v3}, Lj0/h;->f(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    new-instance v3, Lj0/n;

    .line 186
    .line 187
    new-instance v13, Lg0/b;

    .line 188
    .line 189
    invoke-direct {v13, v11}, Lg0/b;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    .line 194
    .line 195
    sget-object v14, Lj0/o;->a:Lf0/k;

    .line 196
    .line 197
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    new-instance v15, Ljava/io/ByteArrayOutputStream;

    .line 201
    .line 202
    invoke-direct {v15}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 203
    .line 204
    .line 205
    :try_start_0
    invoke-virtual {v14, v0, v15}, Lf0/k;->e(Lm0/a;Ljava/io/ByteArrayOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .line 207
    .line 208
    :catch_0
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-direct {v3, v13, v0}, Lj0/n;-><init>(Lg0/b;[B)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v2, v3}, Lj0/h;->e(Lj0/n;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v2}, Lj0/h;->b()Lj0/i;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    move-object v2, v1

    .line 223
    check-cast v2, Lh0/f;

    .line 224
    .line 225
    invoke-virtual {v2, v0}, Lh0/f;->a(Lj0/i;)Lj0/i;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    :cond_4
    move-object v0, v1

    .line 233
    check-cast v0, Lh0/f;

    .line 234
    .line 235
    new-instance v2, Ljava/util/HashMap;

    .line 236
    .line 237
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 241
    .line 242
    .line 243
    move-result-object v3

    .line 244
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 245
    .line 246
    .line 247
    move-result v10

    .line 248
    if-eqz v10, :cond_6

    .line 249
    .line 250
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v10

    .line 254
    check-cast v10, Lj0/i;

    .line 255
    .line 256
    iget-object v13, v10, Lj0/i;->a:Ljava/lang/String;

    .line 257
    .line 258
    invoke-virtual {v2, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result v14

    .line 262
    if-nez v14, :cond_5

    .line 263
    .line 264
    new-instance v14, Ljava/util/ArrayList;

    .line 265
    .line 266
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    .line 271
    .line 272
    invoke-virtual {v2, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    goto :goto_2

    .line 276
    :cond_5
    invoke-virtual {v2, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v13

    .line 280
    check-cast v13, Ljava/util/List;

    .line 281
    .line 282
    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    goto :goto_2

    .line 286
    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    .line 287
    .line 288
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 292
    .line 293
    .line 294
    move-result-object v2

    .line 295
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 296
    .line 297
    .line 298
    move-result-object v2

    .line 299
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 300
    .line 301
    .line 302
    move-result v10

    .line 303
    const-string v13, "CctTransportBackend"

    .line 304
    .line 305
    if-eqz v10, :cond_14

    .line 306
    .line 307
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v10

    .line 311
    check-cast v10, Ljava/util/Map$Entry;

    .line 312
    .line 313
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v14

    .line 317
    check-cast v14, Ljava/util/List;

    .line 318
    .line 319
    const/4 v15, 0x0

    .line 320
    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object v14

    .line 324
    check-cast v14, Lj0/i;

    .line 325
    .line 326
    sget-object v24, Li0/x;->a:Li0/x;

    .line 327
    .line 328
    iget-object v15, v0, Lh0/f;->f:Lr0/a;

    .line 329
    .line 330
    check-cast v15, Lr0/b;

    .line 331
    .line 332
    invoke-virtual {v15}, Lr0/b;->a()J

    .line 333
    .line 334
    .line 335
    move-result-wide v15

    .line 336
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 337
    .line 338
    .line 339
    move-result-object v15

    .line 340
    move-object/from16 v25, v1

    .line 341
    .line 342
    iget-object v1, v0, Lh0/f;->e:Lr0/a;

    .line 343
    .line 344
    check-cast v1, Lr0/b;

    .line 345
    .line 346
    invoke-virtual {v1}, Lr0/b;->a()J

    .line 347
    .line 348
    .line 349
    move-result-wide v16

    .line 350
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 351
    .line 352
    .line 353
    move-result-object v1

    .line 354
    move-object/from16 v26, v2

    .line 355
    .line 356
    sget-object v2, Li0/q;->a:Li0/q;

    .line 357
    .line 358
    const-string v8, "sdk-version"

    .line 359
    .line 360
    invoke-virtual {v14, v8}, Lj0/i;->b(Ljava/lang/String;)I

    .line 361
    .line 362
    .line 363
    move-result v8

    .line 364
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 365
    .line 366
    .line 367
    move-result-object v28

    .line 368
    const-string v8, "model"

    .line 369
    .line 370
    invoke-virtual {v14, v8}, Lj0/i;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v29

    .line 374
    const-string v8, "hardware"

    .line 375
    .line 376
    invoke-virtual {v14, v8}, Lj0/i;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v30

    .line 380
    const-string v8, "device"

    .line 381
    .line 382
    invoke-virtual {v14, v8}, Lj0/i;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v31

    .line 386
    const-string v8, "product"

    .line 387
    .line 388
    invoke-virtual {v14, v8}, Lj0/i;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v32

    .line 392
    const-string v8, "os-uild"

    .line 393
    .line 394
    invoke-virtual {v14, v8}, Lj0/i;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v33

    .line 398
    const-string v8, "manufacturer"

    .line 399
    .line 400
    invoke-virtual {v14, v8}, Lj0/i;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v34

    .line 404
    const-string v8, "fingerprint"

    .line 405
    .line 406
    invoke-virtual {v14, v8}, Lj0/i;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v35

    .line 410
    const-string v8, "country"

    .line 411
    .line 412
    invoke-virtual {v14, v8}, Lj0/i;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v37

    .line 416
    const-string v8, "locale"

    .line 417
    .line 418
    invoke-virtual {v14, v8}, Lj0/i;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v36

    .line 422
    const-string v8, "mcc_mnc"

    .line 423
    .line 424
    invoke-virtual {v14, v8}, Lj0/i;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v38

    .line 428
    const-string v8, "application_build"

    .line 429
    .line 430
    invoke-virtual {v14, v8}, Lj0/i;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v39

    .line 434
    new-instance v8, Li0/h;

    .line 435
    .line 436
    move-object/from16 v27, v8

    .line 437
    .line 438
    invoke-direct/range {v27 .. v39}, Li0/h;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    new-instance v14, Li0/j;

    .line 442
    .line 443
    invoke-direct {v14, v2, v8}, Li0/j;-><init>(Li0/q;Li0/a;)V

    .line 444
    .line 445
    .line 446
    :try_start_1
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    move-result-object v2

    .line 450
    check-cast v2, Ljava/lang/String;

    .line 451
    .line 452
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 453
    .line 454
    .line 455
    move-result v2

    .line 456
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 457
    .line 458
    .line 459
    move-result-object v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 460
    const/4 v8, 0x0

    .line 461
    move-object/from16 v21, v2

    .line 462
    .line 463
    move-object/from16 v22, v8

    .line 464
    .line 465
    goto :goto_4

    .line 466
    :catch_1
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 467
    .line 468
    .line 469
    move-result-object v2

    .line 470
    check-cast v2, Ljava/lang/String;

    .line 471
    .line 472
    const/4 v8, 0x0

    .line 473
    move-object/from16 v22, v2

    .line 474
    .line 475
    move-object/from16 v21, v8

    .line 476
    .line 477
    :goto_4
    new-instance v2, Ljava/util/ArrayList;

    .line 478
    .line 479
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 480
    .line 481
    .line 482
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 483
    .line 484
    .line 485
    move-result-object v8

    .line 486
    check-cast v8, Ljava/util/List;

    .line 487
    .line 488
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 489
    .line 490
    .line 491
    move-result-object v8

    .line 492
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 493
    .line 494
    .line 495
    move-result v10

    .line 496
    const-string v7, "Missing required properties:"

    .line 497
    .line 498
    const-string v16, ""

    .line 499
    .line 500
    if-eqz v10, :cond_10

    .line 501
    .line 502
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 503
    .line 504
    .line 505
    move-result-object v10

    .line 506
    check-cast v10, Lj0/i;

    .line 507
    .line 508
    move-object/from16 v17, v8

    .line 509
    .line 510
    iget-object v8, v10, Lj0/i;->c:Lj0/n;

    .line 511
    .line 512
    move-object/from16 v27, v9

    .line 513
    .line 514
    iget-object v9, v8, Lj0/n;->a:Lg0/b;

    .line 515
    .line 516
    move-wide/from16 v28, v5

    .line 517
    .line 518
    new-instance v5, Lg0/b;

    .line 519
    .line 520
    invoke-direct {v5, v11}, Lg0/b;-><init>(Ljava/lang/String;)V

    .line 521
    .line 522
    .line 523
    invoke-virtual {v9, v5}, Lg0/b;->equals(Ljava/lang/Object;)Z

    .line 524
    .line 525
    .line 526
    move-result v5

    .line 527
    iget-object v6, v8, Lj0/n;->b:[B

    .line 528
    .line 529
    if-eqz v5, :cond_7

    .line 530
    .line 531
    new-instance v5, Li0/k;

    .line 532
    .line 533
    invoke-direct {v5}, Li0/k;-><init>()V

    .line 534
    .line 535
    .line 536
    iput-object v6, v5, Li0/k;->f:Ljava/lang/Object;

    .line 537
    .line 538
    goto :goto_6

    .line 539
    :cond_7
    new-instance v5, Lg0/b;

    .line 540
    .line 541
    const-string v8, "json"

    .line 542
    .line 543
    invoke-direct {v5, v8}, Lg0/b;-><init>(Ljava/lang/String;)V

    .line 544
    .line 545
    .line 546
    invoke-virtual {v9, v5}, Lg0/b;->equals(Ljava/lang/Object;)Z

    .line 547
    .line 548
    .line 549
    move-result v5

    .line 550
    if-eqz v5, :cond_e

    .line 551
    .line 552
    new-instance v5, Ljava/lang/String;

    .line 553
    .line 554
    const-string v8, "UTF-8"

    .line 555
    .line 556
    invoke-static {v8}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 557
    .line 558
    .line 559
    move-result-object v8

    .line 560
    invoke-direct {v5, v6, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 561
    .line 562
    .line 563
    new-instance v6, Li0/k;

    .line 564
    .line 565
    invoke-direct {v6}, Li0/k;-><init>()V

    .line 566
    .line 567
    .line 568
    iput-object v5, v6, Li0/k;->d:Ljava/lang/String;

    .line 569
    .line 570
    move-object v5, v6

    .line 571
    :goto_6
    iget-wide v8, v10, Lj0/i;->d:J

    .line 572
    .line 573
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 574
    .line 575
    .line 576
    move-result-object v6

    .line 577
    iput-object v6, v5, Li0/k;->a:Ljava/lang/Long;

    .line 578
    .line 579
    iget-wide v8, v10, Lj0/i;->e:J

    .line 580
    .line 581
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 582
    .line 583
    .line 584
    move-result-object v6

    .line 585
    iput-object v6, v5, Li0/k;->b:Ljava/lang/Long;

    .line 586
    .line 587
    iget-object v6, v10, Lj0/i;->f:Ljava/util/Map;

    .line 588
    .line 589
    const-string v8, "tz-offset"

    .line 590
    .line 591
    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    .line 593
    .line 594
    move-result-object v6

    .line 595
    check-cast v6, Ljava/lang/String;

    .line 596
    .line 597
    if-nez v6, :cond_8

    .line 598
    .line 599
    const-wide/16 v8, 0x0

    .line 600
    .line 601
    goto :goto_7

    .line 602
    :cond_8
    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 603
    .line 604
    .line 605
    move-result-object v6

    .line 606
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 607
    .line 608
    .line 609
    move-result-wide v8

    .line 610
    :goto_7
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 611
    .line 612
    .line 613
    move-result-object v6

    .line 614
    iput-object v6, v5, Li0/k;->e:Ljava/lang/Object;

    .line 615
    .line 616
    const-string v6, "net-type"

    .line 617
    .line 618
    invoke-virtual {v10, v6}, Lj0/i;->b(Ljava/lang/String;)I

    .line 619
    .line 620
    .line 621
    move-result v6

    .line 622
    sget-object v8, Li0/v;->a:Landroid/util/SparseArray;

    .line 623
    .line 624
    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 625
    .line 626
    .line 627
    move-result-object v6

    .line 628
    check-cast v6, Li0/v;

    .line 629
    .line 630
    const-string v8, "mobile-subtype"

    .line 631
    .line 632
    invoke-virtual {v10, v8}, Lj0/i;->b(Ljava/lang/String;)I

    .line 633
    .line 634
    .line 635
    move-result v8

    .line 636
    sget-object v9, Li0/u;->a:Landroid/util/SparseArray;

    .line 637
    .line 638
    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 639
    .line 640
    .line 641
    move-result-object v8

    .line 642
    check-cast v8, Li0/u;

    .line 643
    .line 644
    new-instance v9, Li0/o;

    .line 645
    .line 646
    invoke-direct {v9, v6, v8}, Li0/o;-><init>(Li0/v;Li0/u;)V

    .line 647
    .line 648
    .line 649
    iput-object v9, v5, Li0/k;->g:Ljava/lang/Object;

    .line 650
    .line 651
    iget-object v6, v10, Lj0/i;->b:Ljava/lang/Integer;

    .line 652
    .line 653
    if-eqz v6, :cond_9

    .line 654
    .line 655
    iput-object v6, v5, Li0/k;->c:Ljava/lang/Integer;

    .line 656
    .line 657
    :cond_9
    iget-object v6, v5, Li0/k;->a:Ljava/lang/Long;

    .line 658
    .line 659
    if-nez v6, :cond_a

    .line 660
    .line 661
    const-string v16, " eventTimeMs"

    .line 662
    .line 663
    :cond_a
    move-object/from16 v6, v16

    .line 664
    .line 665
    iget-object v8, v5, Li0/k;->b:Ljava/lang/Long;

    .line 666
    .line 667
    if-nez v8, :cond_b

    .line 668
    .line 669
    const-string v8, " eventUptimeMs"

    .line 670
    .line 671
    invoke-virtual {v6, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 672
    .line 673
    .line 674
    move-result-object v6

    .line 675
    :cond_b
    iget-object v8, v5, Li0/k;->e:Ljava/lang/Object;

    .line 676
    .line 677
    check-cast v8, Ljava/lang/Long;

    .line 678
    .line 679
    if-nez v8, :cond_c

    .line 680
    .line 681
    const-string v8, " timezoneOffsetSeconds"

    .line 682
    .line 683
    invoke-static {v6, v8}, La1/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 684
    .line 685
    .line 686
    move-result-object v6

    .line 687
    :cond_c
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 688
    .line 689
    .line 690
    move-result v8

    .line 691
    if-eqz v8, :cond_d

    .line 692
    .line 693
    new-instance v6, Li0/l;

    .line 694
    .line 695
    iget-object v7, v5, Li0/k;->a:Ljava/lang/Long;

    .line 696
    .line 697
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 698
    .line 699
    .line 700
    move-result-wide v31

    .line 701
    iget-object v7, v5, Li0/k;->c:Ljava/lang/Integer;

    .line 702
    .line 703
    iget-object v8, v5, Li0/k;->b:Ljava/lang/Long;

    .line 704
    .line 705
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 706
    .line 707
    .line 708
    move-result-wide v34

    .line 709
    iget-object v8, v5, Li0/k;->f:Ljava/lang/Object;

    .line 710
    .line 711
    move-object/from16 v36, v8

    .line 712
    .line 713
    check-cast v36, [B

    .line 714
    .line 715
    iget-object v8, v5, Li0/k;->d:Ljava/lang/String;

    .line 716
    .line 717
    iget-object v9, v5, Li0/k;->e:Ljava/lang/Object;

    .line 718
    .line 719
    check-cast v9, Ljava/lang/Long;

    .line 720
    .line 721
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 722
    .line 723
    .line 724
    move-result-wide v38

    .line 725
    iget-object v5, v5, Li0/k;->g:Ljava/lang/Object;

    .line 726
    .line 727
    move-object/from16 v40, v5

    .line 728
    .line 729
    check-cast v40, Li0/w;

    .line 730
    .line 731
    move-object/from16 v30, v6

    .line 732
    .line 733
    move-object/from16 v33, v7

    .line 734
    .line 735
    move-object/from16 v37, v8

    .line 736
    .line 737
    invoke-direct/range {v30 .. v40}, Li0/l;-><init>(JLjava/lang/Integer;J[BLjava/lang/String;JLi0/w;)V

    .line 738
    .line 739
    .line 740
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 741
    .line 742
    .line 743
    goto :goto_8

    .line 744
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 745
    .line 746
    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 747
    .line 748
    .line 749
    move-result-object v1

    .line 750
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 751
    .line 752
    .line 753
    throw v0

    .line 754
    :cond_e
    invoke-static {v13}, Lcom/google/android/gms/internal/play_billing/i0;->Q(Ljava/lang/String;)Ljava/lang/String;

    .line 755
    .line 756
    .line 757
    move-result-object v5

    .line 758
    const/4 v6, 0x5

    .line 759
    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 760
    .line 761
    .line 762
    move-result v5

    .line 763
    if-eqz v5, :cond_f

    .line 764
    .line 765
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 766
    .line 767
    .line 768
    move-result-object v5

    .line 769
    const-string v6, "Received event of unsupported encoding %s. Skipping..."

    .line 770
    .line 771
    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 772
    .line 773
    .line 774
    :cond_f
    :goto_8
    move-object/from16 v7, p0

    .line 775
    .line 776
    move-object/from16 v8, v17

    .line 777
    .line 778
    move-object/from16 v9, v27

    .line 779
    .line 780
    move-wide/from16 v5, v28

    .line 781
    .line 782
    goto/16 :goto_5

    .line 783
    .line 784
    :cond_10
    move-wide/from16 v28, v5

    .line 785
    .line 786
    move-object/from16 v27, v9

    .line 787
    .line 788
    if-nez v15, :cond_11

    .line 789
    .line 790
    const-string v16, " requestTimeMs"

    .line 791
    .line 792
    :cond_11
    move-object/from16 v5, v16

    .line 793
    .line 794
    if-nez v1, :cond_12

    .line 795
    .line 796
    const-string v6, " requestUptimeMs"

    .line 797
    .line 798
    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 799
    .line 800
    .line 801
    move-result-object v5

    .line 802
    :cond_12
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 803
    .line 804
    .line 805
    move-result v6

    .line 806
    if-eqz v6, :cond_13

    .line 807
    .line 808
    new-instance v5, Li0/m;

    .line 809
    .line 810
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    .line 811
    .line 812
    .line 813
    move-result-wide v16

    .line 814
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 815
    .line 816
    .line 817
    move-result-wide v18

    .line 818
    move-object v15, v5

    .line 819
    move-object/from16 v20, v14

    .line 820
    .line 821
    move-object/from16 v23, v2

    .line 822
    .line 823
    invoke-direct/range {v15 .. v24}, Li0/m;-><init>(JJLi0/r;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Li0/x;)V

    .line 824
    .line 825
    .line 826
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 827
    .line 828
    .line 829
    move-object/from16 v7, p0

    .line 830
    .line 831
    move-object/from16 v8, p1

    .line 832
    .line 833
    move-object/from16 v1, v25

    .line 834
    .line 835
    move-object/from16 v2, v26

    .line 836
    .line 837
    move-object/from16 v9, v27

    .line 838
    .line 839
    move-wide/from16 v5, v28

    .line 840
    .line 841
    goto/16 :goto_3

    .line 842
    .line 843
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 844
    .line 845
    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 846
    .line 847
    .line 848
    move-result-object v1

    .line 849
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 850
    .line 851
    .line 852
    throw v0

    .line 853
    :cond_14
    move-object/from16 v25, v1

    .line 854
    .line 855
    move-wide/from16 v28, v5

    .line 856
    .line 857
    move-object/from16 v27, v9

    .line 858
    .line 859
    new-instance v1, Li0/i;

    .line 860
    .line 861
    invoke-direct {v1, v3}, Li0/i;-><init>(Ljava/util/ArrayList;)V

    .line 862
    .line 863
    .line 864
    iget-object v2, v0, Lh0/f;->d:Ljava/net/URL;

    .line 865
    .line 866
    if-eqz v12, :cond_16

    .line 867
    .line 868
    :try_start_2
    invoke-static {v12}, Lh0/a;->a([B)Lh0/a;

    .line 869
    .line 870
    .line 871
    move-result-object v3

    .line 872
    iget-object v5, v3, Lh0/a;->b:Ljava/lang/String;

    .line 873
    .line 874
    if-eqz v5, :cond_15

    .line 875
    .line 876
    goto :goto_9

    .line 877
    :cond_15
    const/4 v5, 0x0

    .line 878
    :goto_9
    iget-object v3, v3, Lh0/a;->a:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3

    .line 879
    .line 880
    if-eqz v3, :cond_17

    .line 881
    .line 882
    :try_start_3
    new-instance v2, Ljava/net/URL;

    .line 883
    .line 884
    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    .line 885
    .line 886
    .line 887
    goto :goto_a

    .line 888
    :catch_2
    move-exception v0

    .line 889
    :try_start_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 890
    .line 891
    new-instance v2, Ljava/lang/StringBuilder;

    .line 892
    .line 893
    const-string v5, "Invalid url: "

    .line 894
    .line 895
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 896
    .line 897
    .line 898
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 899
    .line 900
    .line 901
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 902
    .line 903
    .line 904
    move-result-object v2

    .line 905
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 906
    .line 907
    .line 908
    throw v1
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3

    .line 909
    :catch_3
    new-instance v2, Lk0/a;

    .line 910
    .line 911
    const/4 v0, 0x3

    .line 912
    const-wide/16 v5, -0x1

    .line 913
    .line 914
    invoke-direct {v2, v0, v5, v6}, Lk0/a;-><init>(IJ)V

    .line 915
    .line 916
    .line 917
    goto/16 :goto_d

    .line 918
    .line 919
    :cond_16
    const/4 v5, 0x0

    .line 920
    :cond_17
    :goto_a
    :try_start_5
    new-instance v3, Lh0/d;

    .line 921
    .line 922
    invoke-direct {v3, v2, v1, v5}, Lh0/d;-><init>(Ljava/net/URL;Li0/p;Ljava/lang/String;)V

    .line 923
    .line 924
    .line 925
    new-instance v1, Lh0/b;

    .line 926
    .line 927
    const/4 v2, 0x0

    .line 928
    invoke-direct {v1, v0, v2}, Lh0/b;-><init>(Ljava/lang/Object;I)V

    .line 929
    .line 930
    .line 931
    const/4 v0, 0x5

    .line 932
    :cond_18
    invoke-virtual {v1, v3}, Lh0/b;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    .line 934
    .line 935
    move-result-object v2

    .line 936
    move-object v5, v2

    .line 937
    check-cast v5, Lh0/e;

    .line 938
    .line 939
    iget-object v6, v5, Lh0/e;->b:Ljava/net/URL;

    .line 940
    .line 941
    if-eqz v6, :cond_19

    .line 942
    .line 943
    const-string v7, "Following redirect to: %s"

    .line 944
    .line 945
    invoke-static {v13, v7, v6}, Lcom/google/android/gms/internal/play_billing/i0;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 946
    .line 947
    .line 948
    new-instance v6, Lh0/d;

    .line 949
    .line 950
    iget-object v7, v3, Lh0/d;->b:Li0/p;

    .line 951
    .line 952
    iget-object v3, v3, Lh0/d;->c:Ljava/lang/String;

    .line 953
    .line 954
    iget-object v5, v5, Lh0/e;->b:Ljava/net/URL;

    .line 955
    .line 956
    invoke-direct {v6, v5, v7, v3}, Lh0/d;-><init>(Ljava/net/URL;Li0/p;Ljava/lang/String;)V

    .line 957
    .line 958
    .line 959
    move-object v3, v6

    .line 960
    goto :goto_b

    .line 961
    :cond_19
    const/4 v3, 0x0

    .line 962
    :goto_b
    if-eqz v3, :cond_1a

    .line 963
    .line 964
    add-int/lit8 v0, v0, -0x1

    .line 965
    .line 966
    const/4 v5, 0x1

    .line 967
    if-ge v0, v5, :cond_18

    .line 968
    .line 969
    :cond_1a
    check-cast v2, Lh0/e;

    .line 970
    .line 971
    iget v0, v2, Lh0/e;->a:I

    .line 972
    .line 973
    const/16 v1, 0xc8

    .line 974
    .line 975
    if-ne v0, v1, :cond_1b

    .line 976
    .line 977
    iget-wide v0, v2, Lh0/e;->c:J

    .line 978
    .line 979
    new-instance v2, Lk0/a;

    .line 980
    .line 981
    const/4 v3, 0x1

    .line 982
    invoke-direct {v2, v3, v0, v1}, Lk0/a;-><init>(IJ)V

    .line 983
    .line 984
    .line 985
    goto :goto_d

    .line 986
    :cond_1b
    const/16 v1, 0x1f4

    .line 987
    .line 988
    if-ge v0, v1, :cond_1e

    .line 989
    .line 990
    const/16 v1, 0x194

    .line 991
    .line 992
    if-ne v0, v1, :cond_1c

    .line 993
    .line 994
    goto :goto_c

    .line 995
    :cond_1c
    const/16 v1, 0x190

    .line 996
    .line 997
    if-ne v0, v1, :cond_1d

    .line 998
    .line 999
    new-instance v2, Lk0/a;

    .line 1000
    .line 1001
    const-wide/16 v0, -0x1

    .line 1002
    .line 1003
    const/4 v3, 0x4

    .line 1004
    invoke-direct {v2, v3, v0, v1}, Lk0/a;-><init>(IJ)V

    .line 1005
    .line 1006
    .line 1007
    goto :goto_d

    .line 1008
    :cond_1d
    const-wide/16 v0, -0x1

    .line 1009
    .line 1010
    new-instance v2, Lk0/a;

    .line 1011
    .line 1012
    const/4 v3, 0x3

    .line 1013
    invoke-direct {v2, v3, v0, v1}, Lk0/a;-><init>(IJ)V

    .line 1014
    .line 1015
    .line 1016
    goto :goto_d

    .line 1017
    :cond_1e
    :goto_c
    new-instance v2, Lk0/a;

    .line 1018
    .line 1019
    const/4 v0, 0x2

    .line 1020
    const-wide/16 v5, -0x1

    .line 1021
    .line 1022
    invoke-direct {v2, v0, v5, v6}, Lk0/a;-><init>(IJ)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 1023
    .line 1024
    .line 1025
    :goto_d
    const/4 v0, 0x2

    .line 1026
    goto :goto_e

    .line 1027
    :catch_4
    invoke-static {v13}, Lcom/google/android/gms/internal/play_billing/i0;->Q(Ljava/lang/String;)Ljava/lang/String;

    .line 1028
    .line 1029
    .line 1030
    new-instance v2, Lk0/a;

    .line 1031
    .line 1032
    const/4 v0, 0x2

    .line 1033
    const-wide/16 v5, -0x1

    .line 1034
    .line 1035
    invoke-direct {v2, v0, v5, v6}, Lk0/a;-><init>(IJ)V

    .line 1036
    .line 1037
    .line 1038
    :goto_e
    iget v1, v2, Lk0/a;->a:I

    .line 1039
    .line 1040
    if-ne v1, v0, :cond_1f

    .line 1041
    .line 1042
    new-instance v0, Lo0/i;

    .line 1043
    .line 1044
    move-object v1, v0

    .line 1045
    move-object/from16 v2, p0

    .line 1046
    .line 1047
    move-object v3, v4

    .line 1048
    move-object/from16 v4, p1

    .line 1049
    .line 1050
    move-wide/from16 v5, v28

    .line 1051
    .line 1052
    invoke-direct/range {v1 .. v6}, Lo0/i;-><init>(Lo0/l;Ljava/lang/Iterable;Lj0/k;J)V

    .line 1053
    .line 1054
    .line 1055
    move-object/from16 v1, v27

    .line 1056
    .line 1057
    invoke-virtual {v1, v0}, Lp0/k;->e(Lq0/b;)Ljava/lang/Object;

    .line 1058
    .line 1059
    .line 1060
    const/4 v0, 0x1

    .line 1061
    add-int/lit8 v1, p2, 0x1

    .line 1062
    .line 1063
    move-object/from16 v5, p0

    .line 1064
    .line 1065
    iget-object v2, v5, Lo0/l;->d:Lo0/p;

    .line 1066
    .line 1067
    check-cast v2, Lo0/d;

    .line 1068
    .line 1069
    move-object/from16 v6, p1

    .line 1070
    .line 1071
    invoke-virtual {v2, v6, v1, v0}, Lo0/d;->a(Lj0/k;IZ)V

    .line 1072
    .line 1073
    .line 1074
    return-void

    .line 1075
    :cond_1f
    move-object/from16 v5, p0

    .line 1076
    .line 1077
    move-object/from16 v6, p1

    .line 1078
    .line 1079
    move-object/from16 v1, v27

    .line 1080
    .line 1081
    const/4 v0, 0x1

    .line 1082
    new-instance v3, Lo0/j;

    .line 1083
    .line 1084
    const/4 v7, 0x0

    .line 1085
    invoke-direct {v3, v7, v5, v4}, Lo0/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1086
    .line 1087
    .line 1088
    invoke-virtual {v1, v3}, Lp0/k;->e(Lq0/b;)Ljava/lang/Object;

    .line 1089
    .line 1090
    .line 1091
    iget v3, v2, Lk0/a;->a:I

    .line 1092
    .line 1093
    if-ne v3, v0, :cond_21

    .line 1094
    .line 1095
    iget-wide v2, v2, Lk0/a;->b:J

    .line 1096
    .line 1097
    move-wide/from16 v8, v28

    .line 1098
    .line 1099
    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 1100
    .line 1101
    .line 1102
    move-result-wide v2

    .line 1103
    if-eqz v12, :cond_20

    .line 1104
    .line 1105
    const/4 v7, 0x1

    .line 1106
    :cond_20
    if-eqz v7, :cond_25

    .line 1107
    .line 1108
    new-instance v0, Lh0/b;

    .line 1109
    .line 1110
    const/4 v4, 0x2

    .line 1111
    invoke-direct {v0, v5, v4}, Lh0/b;-><init>(Ljava/lang/Object;I)V

    .line 1112
    .line 1113
    .line 1114
    invoke-virtual {v1, v0}, Lp0/k;->e(Lq0/b;)Ljava/lang/Object;

    .line 1115
    .line 1116
    .line 1117
    goto :goto_11

    .line 1118
    :cond_21
    move-wide/from16 v8, v28

    .line 1119
    .line 1120
    const/4 v0, 0x4

    .line 1121
    if-ne v3, v0, :cond_24

    .line 1122
    .line 1123
    new-instance v0, Ljava/util/HashMap;

    .line 1124
    .line 1125
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1126
    .line 1127
    .line 1128
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1129
    .line 1130
    .line 1131
    move-result-object v2

    .line 1132
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1133
    .line 1134
    .line 1135
    move-result v3

    .line 1136
    if-eqz v3, :cond_23

    .line 1137
    .line 1138
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1139
    .line 1140
    .line 1141
    move-result-object v3

    .line 1142
    check-cast v3, Lp0/b;

    .line 1143
    .line 1144
    iget-object v3, v3, Lp0/b;->c:Lj0/i;

    .line 1145
    .line 1146
    iget-object v3, v3, Lj0/i;->a:Ljava/lang/String;

    .line 1147
    .line 1148
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 1149
    .line 1150
    .line 1151
    move-result v4

    .line 1152
    if-nez v4, :cond_22

    .line 1153
    .line 1154
    const/4 v4, 0x1

    .line 1155
    goto :goto_10

    .line 1156
    :cond_22
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1157
    .line 1158
    .line 1159
    move-result-object v4

    .line 1160
    check-cast v4, Ljava/lang/Integer;

    .line 1161
    .line 1162
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 1163
    .line 1164
    .line 1165
    move-result v4

    .line 1166
    add-int/lit8 v4, v4, 0x1

    .line 1167
    .line 1168
    :goto_10
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1169
    .line 1170
    .line 1171
    move-result-object v4

    .line 1172
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1173
    .line 1174
    .line 1175
    goto :goto_f

    .line 1176
    :cond_23
    const/4 v2, 0x1

    .line 1177
    new-instance v3, Lo0/j;

    .line 1178
    .line 1179
    invoke-direct {v3, v2, v5, v0}, Lo0/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1180
    .line 1181
    .line 1182
    invoke-virtual {v1, v3}, Lp0/k;->e(Lq0/b;)Ljava/lang/Object;

    .line 1183
    .line 1184
    .line 1185
    :cond_24
    move-wide v2, v8

    .line 1186
    :cond_25
    :goto_11
    move-object v7, v5

    .line 1187
    move-object v8, v6

    .line 1188
    move-object/from16 v1, v25

    .line 1189
    .line 1190
    goto/16 :goto_0

    .line 1191
    .line 1192
    :cond_26
    move-object v1, v9

    .line 1193
    move-wide/from16 v41, v5

    .line 1194
    .line 1195
    move-object v5, v7

    .line 1196
    move-object v6, v8

    .line 1197
    move-wide/from16 v8, v41

    .line 1198
    .line 1199
    invoke-virtual {v1}, Lp0/k;->a()Landroid/database/sqlite/SQLiteDatabase;

    .line 1200
    .line 1201
    .line 1202
    move-result-object v2

    .line 1203
    new-instance v4, Lh0/c;

    .line 1204
    .line 1205
    const/4 v0, 0x5

    .line 1206
    invoke-direct {v4, v0}, Lh0/c;-><init>(I)V

    .line 1207
    .line 1208
    .line 1209
    iget-object v0, v1, Lp0/k;->c:Lr0/a;

    .line 1210
    .line 1211
    move-object v7, v0

    .line 1212
    check-cast v7, Lr0/b;

    .line 1213
    .line 1214
    invoke-virtual {v7}, Lr0/b;->a()J

    .line 1215
    .line 1216
    .line 1217
    move-result-wide v10

    .line 1218
    :goto_12
    :try_start_6
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_6 .. :try_end_6} :catch_5

    .line 1219
    .line 1220
    .line 1221
    goto :goto_13

    .line 1222
    :catch_5
    move-exception v0

    .line 1223
    move-object v12, v0

    .line 1224
    invoke-virtual {v7}, Lr0/b;->a()J

    .line 1225
    .line 1226
    .line 1227
    move-result-wide v13

    .line 1228
    iget-object v0, v1, Lp0/k;->d:Lp0/a;

    .line 1229
    .line 1230
    iget v0, v0, Lp0/a;->c:I

    .line 1231
    .line 1232
    move-object/from16 v27, v1

    .line 1233
    .line 1234
    int-to-long v0, v0

    .line 1235
    add-long/2addr v0, v10

    .line 1236
    cmp-long v0, v13, v0

    .line 1237
    .line 1238
    if-ltz v0, :cond_27

    .line 1239
    .line 1240
    invoke-virtual {v4, v12}, Lh0/c;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1241
    .line 1242
    .line 1243
    :goto_13
    :try_start_7
    check-cast v3, Lr0/b;

    .line 1244
    .line 1245
    invoke-virtual {v3}, Lr0/b;->a()J

    .line 1246
    .line 1247
    .line 1248
    move-result-wide v0

    .line 1249
    add-long/2addr v0, v8

    .line 1250
    iget-object v3, v5, Lo0/l;->c:Lp0/d;

    .line 1251
    .line 1252
    check-cast v3, Lp0/k;

    .line 1253
    .line 1254
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1255
    .line 1256
    .line 1257
    new-instance v4, Lp0/e;

    .line 1258
    .line 1259
    invoke-direct {v4, v0, v1, v6}, Lp0/e;-><init>(JLj0/k;)V

    .line 1260
    .line 1261
    .line 1262
    invoke-virtual {v3, v4}, Lp0/k;->c(Lp0/i;)Ljava/lang/Object;

    .line 1263
    .line 1264
    .line 1265
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1266
    .line 1267
    .line 1268
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1269
    .line 1270
    .line 1271
    return-void

    .line 1272
    :catchall_0
    move-exception v0

    .line 1273
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1274
    .line 1275
    .line 1276
    throw v0

    .line 1277
    :cond_27
    const-wide/16 v0, 0x32

    .line 1278
    .line 1279
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 1280
    .line 1281
    .line 1282
    move-object/from16 v1, v27

    .line 1283
    .line 1284
    goto :goto_12
.end method
