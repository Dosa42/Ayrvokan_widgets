.class public final synthetic Ln0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq0/b;
.implements Lp0/i;
.implements Lw1/r;
.implements Lorg/mozilla/geckoview/GeckoResult$Consumer;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;

.field public final synthetic i:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Ln0/b;->f:I

    iput-object p1, p0, Ln0/b;->i:Ljava/lang/Object;

    iput-object p2, p0, Ln0/b;->h:Ljava/lang/Object;

    iput-object p3, p0, Ln0/b;->g:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lp0/k;Ljava/lang/Object;Lj0/k;I)V
    .locals 0

    .line 2
    iput p4, p0, Ln0/b;->f:I

    iput-object p1, p0, Ln0/b;->i:Ljava/lang/Object;

    iput-object p2, p0, Ln0/b;->g:Ljava/lang/Object;

    iput-object p3, p0, Ln0/b;->h:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ln0/b;->i:Ljava/lang/Object;

    check-cast v0, Landroid/os/RemoteException;

    iget-object v1, p0, Ln0/b;->h:Ljava/lang/Object;

    check-cast v1, Lorg/mozilla/gecko/process/GeckoProcessType;

    iget-object v2, p0, Ln0/b;->g:Ljava/lang/Object;

    check-cast v2, Lorg/mozilla/geckoview/GeckoResult;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, v1, v2, p1}, Lorg/mozilla/gecko/process/GeckoProcessManager;->a(Landroid/os/RemoteException;Lorg/mozilla/gecko/process/GeckoProcessType;Lorg/mozilla/geckoview/GeckoResult;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lm0/d;->d:Lm0/d;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    const/4 v5, 0x5

    .line 11
    const/4 v6, 0x4

    .line 12
    const-string v7, "PRAGMA page_size"

    .line 13
    .line 14
    const-string v8, "PRAGMA page_count"

    .line 15
    .line 16
    const/4 v9, 0x1

    .line 17
    iget v11, v0, Ln0/b;->f:I

    .line 18
    .line 19
    const/4 v12, 0x3

    .line 20
    const-string v13, "bytes"

    .line 21
    .line 22
    const/4 v14, 0x2

    .line 23
    iget-object v15, v0, Ln0/b;->h:Ljava/lang/Object;

    .line 24
    .line 25
    iget-object v10, v0, Ln0/b;->g:Ljava/lang/Object;

    .line 26
    .line 27
    iget-object v4, v0, Ln0/b;->i:Ljava/lang/Object;

    .line 28
    .line 29
    packed-switch v11, :pswitch_data_0

    .line 30
    .line 31
    .line 32
    goto/16 :goto_c

    .line 33
    .line 34
    :pswitch_0
    check-cast v4, Lp0/k;

    .line 35
    .line 36
    check-cast v10, Ljava/util/List;

    .line 37
    .line 38
    check-cast v15, Lj0/k;

    .line 39
    .line 40
    move-object/from16 v1, p1

    .line 41
    .line 42
    check-cast v1, Landroid/database/Cursor;

    .line 43
    .line 44
    sget-object v3, Lp0/k;->f:Lg0/b;

    .line 45
    .line 46
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_5

    .line 54
    .line 55
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 56
    .line 57
    .line 58
    move-result-wide v7

    .line 59
    const/4 v3, 0x7

    .line 60
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-eqz v3, :cond_0

    .line 65
    .line 66
    move v3, v9

    .line 67
    goto :goto_1

    .line 68
    :cond_0
    move v3, v2

    .line 69
    :goto_1
    new-instance v11, Lj0/h;

    .line 70
    .line 71
    invoke-direct {v11}, Lj0/h;-><init>()V

    .line 72
    .line 73
    .line 74
    new-instance v2, Ljava/util/HashMap;

    .line 75
    .line 76
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object v2, v11, Lj0/h;->g:Ljava/lang/Object;

    .line 80
    .line 81
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v11, v2}, Lj0/h;->f(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getLong(I)J

    .line 89
    .line 90
    .line 91
    move-result-wide v16

    .line 92
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    iput-object v2, v11, Lj0/h;->e:Ljava/lang/Object;

    .line 97
    .line 98
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getLong(I)J

    .line 99
    .line 100
    .line 101
    move-result-wide v16

    .line 102
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    iput-object v2, v11, Lj0/h;->f:Ljava/lang/Object;

    .line 107
    .line 108
    new-instance v2, Lj0/n;

    .line 109
    .line 110
    if-eqz v3, :cond_2

    .line 111
    .line 112
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    if-nez v3, :cond_1

    .line 117
    .line 118
    sget-object v3, Lp0/k;->f:Lg0/b;

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_1
    new-instance v12, Lg0/b;

    .line 122
    .line 123
    invoke-direct {v12, v3}, Lg0/b;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    move-object v3, v12

    .line 127
    :goto_2
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getBlob(I)[B

    .line 128
    .line 129
    .line 130
    move-result-object v12

    .line 131
    invoke-direct {v2, v3, v12}, Lj0/n;-><init>(Lg0/b;[B)V

    .line 132
    .line 133
    .line 134
    goto :goto_4

    .line 135
    :cond_2
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    if-nez v3, :cond_3

    .line 140
    .line 141
    sget-object v3, Lp0/k;->f:Lg0/b;

    .line 142
    .line 143
    goto :goto_3

    .line 144
    :cond_3
    new-instance v12, Lg0/b;

    .line 145
    .line 146
    invoke-direct {v12, v3}, Lg0/b;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    move-object v3, v12

    .line 150
    :goto_3
    invoke-virtual {v4}, Lp0/k;->a()Landroid/database/sqlite/SQLiteDatabase;

    .line 151
    .line 152
    .line 153
    move-result-object v17

    .line 154
    const-string v18, "event_payloads"

    .line 155
    .line 156
    filled-new-array {v13}, [Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v19

    .line 160
    const-string v20, "event_id = ?"

    .line 161
    .line 162
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v12

    .line 166
    filled-new-array {v12}, [Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v21

    .line 170
    const/16 v22, 0x0

    .line 171
    .line 172
    const/16 v23, 0x0

    .line 173
    .line 174
    const-string v24, "sequence_num"

    .line 175
    .line 176
    invoke-virtual/range {v17 .. v24}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 177
    .line 178
    .line 179
    move-result-object v12

    .line 180
    new-instance v5, Lh0/c;

    .line 181
    .line 182
    const/16 v6, 0xa

    .line 183
    .line 184
    invoke-direct {v5, v6}, Lh0/c;-><init>(I)V

    .line 185
    .line 186
    .line 187
    invoke-static {v12, v5}, Lp0/k;->g(Landroid/database/Cursor;Lp0/i;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v5

    .line 191
    check-cast v5, [B

    .line 192
    .line 193
    invoke-direct {v2, v3, v5}, Lj0/n;-><init>(Lg0/b;[B)V

    .line 194
    .line 195
    .line 196
    :goto_4
    invoke-virtual {v11, v2}, Lj0/h;->e(Lj0/n;)V

    .line 197
    .line 198
    .line 199
    const/4 v2, 0x6

    .line 200
    invoke-interface {v1, v2}, Landroid/database/Cursor;->isNull(I)Z

    .line 201
    .line 202
    .line 203
    move-result v3

    .line 204
    if-nez v3, :cond_4

    .line 205
    .line 206
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 207
    .line 208
    .line 209
    move-result v3

    .line 210
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 211
    .line 212
    .line 213
    move-result-object v2

    .line 214
    iput-object v2, v11, Lj0/h;->c:Ljava/lang/Object;

    .line 215
    .line 216
    :cond_4
    invoke-virtual {v11}, Lj0/h;->b()Lj0/i;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    new-instance v3, Lp0/b;

    .line 221
    .line 222
    invoke-direct {v3, v7, v8, v15, v2}, Lp0/b;-><init>(JLj0/k;Lj0/i;)V

    .line 223
    .line 224
    .line 225
    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    const/4 v2, 0x0

    .line 229
    const/4 v5, 0x5

    .line 230
    const/4 v6, 0x4

    .line 231
    const/4 v12, 0x3

    .line 232
    goto/16 :goto_0

    .line 233
    .line 234
    :cond_5
    const/4 v2, 0x0

    .line 235
    return-object v2

    .line 236
    :pswitch_1
    const/4 v2, 0x0

    .line 237
    check-cast v4, Lp0/k;

    .line 238
    .line 239
    check-cast v15, Ljava/lang/String;

    .line 240
    .line 241
    check-cast v10, Ljava/lang/String;

    .line 242
    .line 243
    move-object/from16 v1, p1

    .line 244
    .line 245
    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    .line 246
    .line 247
    sget-object v3, Lp0/k;->f:Lg0/b;

    .line 248
    .line 249
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v1, v15}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 253
    .line 254
    .line 255
    move-result-object v3

    .line 256
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v1, v10, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 260
    .line 261
    .line 262
    move-result-object v3

    .line 263
    new-instance v5, Lp0/g;

    .line 264
    .line 265
    invoke-direct {v5, v4, v14}, Lp0/g;-><init>(Lp0/k;I)V

    .line 266
    .line 267
    .line 268
    invoke-static {v3, v5}, Lp0/k;->g(Landroid/database/Cursor;Lp0/i;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    const-string v3, "DELETE FROM events WHERE num_attempts >= 16"

    .line 272
    .line 273
    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 278
    .line 279
    .line 280
    return-object v2

    .line 281
    :pswitch_2
    check-cast v4, Lp0/k;

    .line 282
    .line 283
    check-cast v10, Lj0/i;

    .line 284
    .line 285
    check-cast v15, Lj0/k;

    .line 286
    .line 287
    move-object/from16 v2, p1

    .line 288
    .line 289
    check-cast v2, Landroid/database/sqlite/SQLiteDatabase;

    .line 290
    .line 291
    sget-object v5, Lp0/k;->f:Lg0/b;

    .line 292
    .line 293
    invoke-virtual {v4}, Lp0/k;->a()Landroid/database/sqlite/SQLiteDatabase;

    .line 294
    .line 295
    .line 296
    move-result-object v5

    .line 297
    invoke-virtual {v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 298
    .line 299
    .line 300
    move-result-object v5

    .line 301
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    .line 302
    .line 303
    .line 304
    move-result-wide v5

    .line 305
    invoke-virtual {v4}, Lp0/k;->a()Landroid/database/sqlite/SQLiteDatabase;

    .line 306
    .line 307
    .line 308
    move-result-object v8

    .line 309
    invoke-virtual {v8, v7}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 310
    .line 311
    .line 312
    move-result-object v7

    .line 313
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    .line 314
    .line 315
    .line 316
    move-result-wide v7

    .line 317
    mul-long/2addr v7, v5

    .line 318
    iget-object v5, v4, Lp0/k;->d:Lp0/a;

    .line 319
    .line 320
    iget-wide v11, v5, Lp0/a;->a:J

    .line 321
    .line 322
    cmp-long v6, v7, v11

    .line 323
    .line 324
    if-ltz v6, :cond_6

    .line 325
    .line 326
    move v6, v9

    .line 327
    goto :goto_5

    .line 328
    :cond_6
    const/4 v6, 0x0

    .line 329
    :goto_5
    if-eqz v6, :cond_7

    .line 330
    .line 331
    iget-object v2, v10, Lj0/i;->a:Ljava/lang/String;

    .line 332
    .line 333
    new-instance v3, Lo0/k;

    .line 334
    .line 335
    const-wide/16 v5, 0x1

    .line 336
    .line 337
    invoke-direct {v3, v5, v6, v2, v1}, Lo0/k;-><init>(JLjava/lang/Object;Ljava/lang/Object;)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v4, v3}, Lp0/k;->c(Lp0/i;)Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    const-wide/16 v1, -0x1

    .line 344
    .line 345
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    goto/16 :goto_b

    .line 350
    .line 351
    :cond_7
    invoke-static {v2, v15}, Lp0/k;->b(Landroid/database/sqlite/SQLiteDatabase;Lj0/k;)Ljava/lang/Long;

    .line 352
    .line 353
    .line 354
    move-result-object v1

    .line 355
    if-eqz v1, :cond_8

    .line 356
    .line 357
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 358
    .line 359
    .line 360
    move-result-wide v6

    .line 361
    goto :goto_6

    .line 362
    :cond_8
    new-instance v1, Landroid/content/ContentValues;

    .line 363
    .line 364
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 365
    .line 366
    .line 367
    const-string v4, "backend_name"

    .line 368
    .line 369
    iget-object v6, v15, Lj0/k;->a:Ljava/lang/String;

    .line 370
    .line 371
    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    iget-object v4, v15, Lj0/k;->c:Lg0/c;

    .line 375
    .line 376
    invoke-static {v4}, Ls0/a;->a(Lg0/c;)I

    .line 377
    .line 378
    .line 379
    move-result v4

    .line 380
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 381
    .line 382
    .line 383
    move-result-object v4

    .line 384
    const-string v6, "priority"

    .line 385
    .line 386
    invoke-virtual {v1, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 387
    .line 388
    .line 389
    const-string v4, "next_request_ms"

    .line 390
    .line 391
    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 392
    .line 393
    .line 394
    iget-object v4, v15, Lj0/k;->b:[B

    .line 395
    .line 396
    if-eqz v4, :cond_9

    .line 397
    .line 398
    const/4 v6, 0x0

    .line 399
    invoke-static {v4, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v4

    .line 403
    const-string v6, "extras"

    .line 404
    .line 405
    invoke-virtual {v1, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    :cond_9
    const-string v4, "transport_contexts"

    .line 409
    .line 410
    const/4 v6, 0x0

    .line 411
    invoke-virtual {v2, v4, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 412
    .line 413
    .line 414
    move-result-wide v7

    .line 415
    move-wide v6, v7

    .line 416
    :goto_6
    iget-object v1, v10, Lj0/i;->c:Lj0/n;

    .line 417
    .line 418
    iget-object v1, v1, Lj0/n;->b:[B

    .line 419
    .line 420
    array-length v4, v1

    .line 421
    iget v5, v5, Lp0/a;->e:I

    .line 422
    .line 423
    if-gt v4, v5, :cond_a

    .line 424
    .line 425
    move v4, v9

    .line 426
    goto :goto_7

    .line 427
    :cond_a
    const/4 v4, 0x0

    .line 428
    :goto_7
    new-instance v8, Landroid/content/ContentValues;

    .line 429
    .line 430
    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 431
    .line 432
    .line 433
    const-string v11, "context_id"

    .line 434
    .line 435
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 436
    .line 437
    .line 438
    move-result-object v6

    .line 439
    invoke-virtual {v8, v11, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 440
    .line 441
    .line 442
    const-string v6, "transport_name"

    .line 443
    .line 444
    iget-object v7, v10, Lj0/i;->a:Ljava/lang/String;

    .line 445
    .line 446
    invoke-virtual {v8, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    iget-wide v6, v10, Lj0/i;->d:J

    .line 450
    .line 451
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 452
    .line 453
    .line 454
    move-result-object v6

    .line 455
    const-string v7, "timestamp_ms"

    .line 456
    .line 457
    invoke-virtual {v8, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 458
    .line 459
    .line 460
    iget-wide v6, v10, Lj0/i;->e:J

    .line 461
    .line 462
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 463
    .line 464
    .line 465
    move-result-object v6

    .line 466
    const-string v7, "uptime_ms"

    .line 467
    .line 468
    invoke-virtual {v8, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 469
    .line 470
    .line 471
    iget-object v6, v10, Lj0/i;->c:Lj0/n;

    .line 472
    .line 473
    iget-object v6, v6, Lj0/n;->a:Lg0/b;

    .line 474
    .line 475
    iget-object v6, v6, Lg0/b;->a:Ljava/lang/String;

    .line 476
    .line 477
    const-string v7, "payload_encoding"

    .line 478
    .line 479
    invoke-virtual {v8, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    const-string v6, "code"

    .line 483
    .line 484
    iget-object v7, v10, Lj0/i;->b:Ljava/lang/Integer;

    .line 485
    .line 486
    invoke-virtual {v8, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 487
    .line 488
    .line 489
    const-string v6, "num_attempts"

    .line 490
    .line 491
    invoke-virtual {v8, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 492
    .line 493
    .line 494
    const-string v3, "inline"

    .line 495
    .line 496
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 497
    .line 498
    .line 499
    move-result-object v6

    .line 500
    invoke-virtual {v8, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 501
    .line 502
    .line 503
    if-eqz v4, :cond_b

    .line 504
    .line 505
    move-object v3, v1

    .line 506
    goto :goto_8

    .line 507
    :cond_b
    const/4 v3, 0x0

    .line 508
    new-array v3, v3, [B

    .line 509
    .line 510
    :goto_8
    const-string v6, "payload"

    .line 511
    .line 512
    invoke-virtual {v8, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 513
    .line 514
    .line 515
    const-string v3, "events"

    .line 516
    .line 517
    const/4 v6, 0x0

    .line 518
    invoke-virtual {v2, v3, v6, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 519
    .line 520
    .line 521
    move-result-wide v7

    .line 522
    const-string v3, "event_id"

    .line 523
    .line 524
    if-nez v4, :cond_c

    .line 525
    .line 526
    array-length v4, v1

    .line 527
    int-to-double v11, v4

    .line 528
    int-to-double v14, v5

    .line 529
    div-double/2addr v11, v14

    .line 530
    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    .line 531
    .line 532
    .line 533
    move-result-wide v11

    .line 534
    double-to-int v4, v11

    .line 535
    :goto_9
    if-gt v9, v4, :cond_c

    .line 536
    .line 537
    add-int/lit8 v6, v9, -0x1

    .line 538
    .line 539
    mul-int/2addr v6, v5

    .line 540
    mul-int v11, v9, v5

    .line 541
    .line 542
    array-length v12, v1

    .line 543
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    .line 544
    .line 545
    .line 546
    move-result v11

    .line 547
    invoke-static {v1, v6, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 548
    .line 549
    .line 550
    move-result-object v6

    .line 551
    new-instance v11, Landroid/content/ContentValues;

    .line 552
    .line 553
    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 554
    .line 555
    .line 556
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 557
    .line 558
    .line 559
    move-result-object v12

    .line 560
    invoke-virtual {v11, v3, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 561
    .line 562
    .line 563
    const-string v12, "sequence_num"

    .line 564
    .line 565
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 566
    .line 567
    .line 568
    move-result-object v14

    .line 569
    invoke-virtual {v11, v12, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 570
    .line 571
    .line 572
    invoke-virtual {v11, v13, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 573
    .line 574
    .line 575
    const-string v6, "event_payloads"

    .line 576
    .line 577
    const/4 v12, 0x0

    .line 578
    invoke-virtual {v2, v6, v12, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 579
    .line 580
    .line 581
    add-int/lit8 v9, v9, 0x1

    .line 582
    .line 583
    goto :goto_9

    .line 584
    :cond_c
    iget-object v1, v10, Lj0/i;->f:Ljava/util/Map;

    .line 585
    .line 586
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 587
    .line 588
    .line 589
    move-result-object v1

    .line 590
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 591
    .line 592
    .line 593
    move-result-object v1

    .line 594
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 595
    .line 596
    .line 597
    move-result-object v1

    .line 598
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 599
    .line 600
    .line 601
    move-result v4

    .line 602
    if-eqz v4, :cond_d

    .line 603
    .line 604
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 605
    .line 606
    .line 607
    move-result-object v4

    .line 608
    check-cast v4, Ljava/util/Map$Entry;

    .line 609
    .line 610
    new-instance v5, Landroid/content/ContentValues;

    .line 611
    .line 612
    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 613
    .line 614
    .line 615
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 616
    .line 617
    .line 618
    move-result-object v6

    .line 619
    invoke-virtual {v5, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 620
    .line 621
    .line 622
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 623
    .line 624
    .line 625
    move-result-object v6

    .line 626
    check-cast v6, Ljava/lang/String;

    .line 627
    .line 628
    const-string v9, "name"

    .line 629
    .line 630
    invoke-virtual {v5, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    .line 632
    .line 633
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 634
    .line 635
    .line 636
    move-result-object v4

    .line 637
    check-cast v4, Ljava/lang/String;

    .line 638
    .line 639
    const-string v6, "value"

    .line 640
    .line 641
    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    .line 643
    .line 644
    const-string v4, "event_metadata"

    .line 645
    .line 646
    const/4 v6, 0x0

    .line 647
    invoke-virtual {v2, v4, v6, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 648
    .line 649
    .line 650
    goto :goto_a

    .line 651
    :cond_d
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 652
    .line 653
    .line 654
    move-result-object v1

    .line 655
    :goto_b
    return-object v1

    .line 656
    :goto_c
    check-cast v4, Lp0/k;

    .line 657
    .line 658
    check-cast v15, Ljava/util/Map;

    .line 659
    .line 660
    check-cast v10, Lh/g;

    .line 661
    .line 662
    move-object/from16 v2, p1

    .line 663
    .line 664
    check-cast v2, Landroid/database/Cursor;

    .line 665
    .line 666
    sget-object v3, Lp0/k;->f:Lg0/b;

    .line 667
    .line 668
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 669
    .line 670
    .line 671
    :goto_d
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 672
    .line 673
    .line 674
    move-result v3

    .line 675
    if-eqz v3, :cond_16

    .line 676
    .line 677
    const/4 v3, 0x0

    .line 678
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 679
    .line 680
    .line 681
    move-result-object v5

    .line 682
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    .line 683
    .line 684
    .line 685
    move-result v3

    .line 686
    sget-object v6, Lm0/d;->b:Lm0/d;

    .line 687
    .line 688
    if-nez v3, :cond_e

    .line 689
    .line 690
    :goto_e
    const/4 v11, 0x3

    .line 691
    :goto_f
    const/4 v12, 0x4

    .line 692
    :goto_10
    const/4 v13, 0x5

    .line 693
    goto :goto_11

    .line 694
    :cond_e
    if-ne v3, v9, :cond_f

    .line 695
    .line 696
    sget-object v6, Lm0/d;->c:Lm0/d;

    .line 697
    .line 698
    goto :goto_e

    .line 699
    :cond_f
    if-ne v3, v14, :cond_10

    .line 700
    .line 701
    move-object v6, v1

    .line 702
    goto :goto_e

    .line 703
    :cond_10
    const/4 v11, 0x3

    .line 704
    if-ne v3, v11, :cond_11

    .line 705
    .line 706
    sget-object v6, Lm0/d;->e:Lm0/d;

    .line 707
    .line 708
    goto :goto_f

    .line 709
    :cond_11
    const/4 v12, 0x4

    .line 710
    if-ne v3, v12, :cond_12

    .line 711
    .line 712
    sget-object v6, Lm0/d;->f:Lm0/d;

    .line 713
    .line 714
    goto :goto_10

    .line 715
    :cond_12
    const/4 v13, 0x5

    .line 716
    if-ne v3, v13, :cond_13

    .line 717
    .line 718
    sget-object v6, Lm0/d;->g:Lm0/d;

    .line 719
    .line 720
    goto :goto_11

    .line 721
    :cond_13
    const/4 v9, 0x6

    .line 722
    if-ne v3, v9, :cond_14

    .line 723
    .line 724
    sget-object v6, Lm0/d;->h:Lm0/d;

    .line 725
    .line 726
    goto :goto_11

    .line 727
    :cond_14
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 728
    .line 729
    .line 730
    move-result-object v3

    .line 731
    const-string v9, "SQLiteEventStore"

    .line 732
    .line 733
    const-string v11, "%n is not valid. No matched LogEventDropped-Reason found. Treated it as REASON_UNKNOWN"

    .line 734
    .line 735
    invoke-static {v9, v11, v3}, Lcom/google/android/gms/internal/play_billing/i0;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 736
    .line 737
    .line 738
    :goto_11
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getLong(I)J

    .line 739
    .line 740
    .line 741
    move-result-wide v12

    .line 742
    invoke-interface {v15, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 743
    .line 744
    .line 745
    move-result v3

    .line 746
    if-nez v3, :cond_15

    .line 747
    .line 748
    new-instance v3, Ljava/util/ArrayList;

    .line 749
    .line 750
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 751
    .line 752
    .line 753
    invoke-interface {v15, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    .line 755
    .line 756
    :cond_15
    invoke-interface {v15, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    .line 758
    .line 759
    move-result-object v3

    .line 760
    check-cast v3, Ljava/util/List;

    .line 761
    .line 762
    new-instance v5, Lm0/e;

    .line 763
    .line 764
    invoke-direct {v5, v12, v13, v6}, Lm0/e;-><init>(JLm0/d;)V

    .line 765
    .line 766
    .line 767
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 768
    .line 769
    .line 770
    const/4 v9, 0x1

    .line 771
    goto :goto_d

    .line 772
    :cond_16
    invoke-interface {v15}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 773
    .line 774
    .line 775
    move-result-object v1

    .line 776
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 777
    .line 778
    .line 779
    move-result-object v1

    .line 780
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 781
    .line 782
    .line 783
    move-result v2

    .line 784
    if-eqz v2, :cond_17

    .line 785
    .line 786
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 787
    .line 788
    .line 789
    move-result-object v2

    .line 790
    check-cast v2, Ljava/util/Map$Entry;

    .line 791
    .line 792
    sget v3, Lm0/f;->c:I

    .line 793
    .line 794
    new-instance v3, Ljava/util/ArrayList;

    .line 795
    .line 796
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 797
    .line 798
    .line 799
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 800
    .line 801
    .line 802
    move-result-object v3

    .line 803
    check-cast v3, Ljava/lang/String;

    .line 804
    .line 805
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 806
    .line 807
    .line 808
    move-result-object v2

    .line 809
    check-cast v2, Ljava/util/List;

    .line 810
    .line 811
    new-instance v5, Lm0/f;

    .line 812
    .line 813
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 814
    .line 815
    .line 816
    move-result-object v2

    .line 817
    invoke-direct {v5, v3, v2}, Lm0/f;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 818
    .line 819
    .line 820
    iget-object v2, v10, Lh/g;->b:Ljava/lang/Object;

    .line 821
    .line 822
    check-cast v2, Ljava/util/List;

    .line 823
    .line 824
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 825
    .line 826
    .line 827
    goto :goto_12

    .line 828
    :cond_17
    iget-object v1, v4, Lp0/k;->b:Lr0/a;

    .line 829
    .line 830
    check-cast v1, Lr0/b;

    .line 831
    .line 832
    invoke-virtual {v1}, Lr0/b;->a()J

    .line 833
    .line 834
    .line 835
    move-result-wide v1

    .line 836
    new-instance v3, Lp0/h;

    .line 837
    .line 838
    const/4 v5, 0x0

    .line 839
    invoke-direct {v3, v1, v2, v5}, Lp0/h;-><init>(JI)V

    .line 840
    .line 841
    .line 842
    invoke-virtual {v4, v3}, Lp0/k;->c(Lp0/i;)Ljava/lang/Object;

    .line 843
    .line 844
    .line 845
    move-result-object v1

    .line 846
    check-cast v1, Lm0/h;

    .line 847
    .line 848
    iput-object v1, v10, Lh/g;->a:Ljava/lang/Object;

    .line 849
    .line 850
    invoke-virtual {v4}, Lp0/k;->a()Landroid/database/sqlite/SQLiteDatabase;

    .line 851
    .line 852
    .line 853
    move-result-object v1

    .line 854
    invoke-virtual {v1, v8}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 855
    .line 856
    .line 857
    move-result-object v1

    .line 858
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    .line 859
    .line 860
    .line 861
    move-result-wide v1

    .line 862
    invoke-virtual {v4}, Lp0/k;->a()Landroid/database/sqlite/SQLiteDatabase;

    .line 863
    .line 864
    .line 865
    move-result-object v3

    .line 866
    invoke-virtual {v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 867
    .line 868
    .line 869
    move-result-object v3

    .line 870
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    .line 871
    .line 872
    .line 873
    move-result-wide v5

    .line 874
    mul-long/2addr v5, v1

    .line 875
    sget-object v1, Lp0/a;->f:Lp0/a;

    .line 876
    .line 877
    iget-wide v1, v1, Lp0/a;->a:J

    .line 878
    .line 879
    new-instance v3, Lm0/g;

    .line 880
    .line 881
    invoke-direct {v3, v5, v6, v1, v2}, Lm0/g;-><init>(JJ)V

    .line 882
    .line 883
    .line 884
    new-instance v1, Lm0/b;

    .line 885
    .line 886
    invoke-direct {v1, v3}, Lm0/b;-><init>(Lm0/g;)V

    .line 887
    .line 888
    .line 889
    iput-object v1, v10, Lh/g;->c:Ljava/lang/Object;

    .line 890
    .line 891
    iget-object v1, v4, Lp0/k;->e:Ld2/a;

    .line 892
    .line 893
    invoke-interface {v1}, Ld2/a;->m()Ljava/lang/Object;

    .line 894
    .line 895
    .line 896
    move-result-object v1

    .line 897
    check-cast v1, Ljava/lang/String;

    .line 898
    .line 899
    iput-object v1, v10, Lh/g;->d:Ljava/io/Serializable;

    .line 900
    .line 901
    new-instance v1, Lm0/a;

    .line 902
    .line 903
    iget-object v2, v10, Lh/g;->a:Ljava/lang/Object;

    .line 904
    .line 905
    check-cast v2, Lm0/h;

    .line 906
    .line 907
    iget-object v3, v10, Lh/g;->b:Ljava/lang/Object;

    .line 908
    .line 909
    check-cast v3, Ljava/util/List;

    .line 910
    .line 911
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 912
    .line 913
    .line 914
    move-result-object v3

    .line 915
    iget-object v4, v10, Lh/g;->c:Ljava/lang/Object;

    .line 916
    .line 917
    check-cast v4, Lm0/b;

    .line 918
    .line 919
    iget-object v5, v10, Lh/g;->d:Ljava/io/Serializable;

    .line 920
    .line 921
    check-cast v5, Ljava/lang/String;

    .line 922
    .line 923
    invoke-direct {v1, v2, v3, v4, v5}, Lm0/a;-><init>(Lm0/h;Ljava/util/List;Lm0/b;Ljava/lang/String;)V

    .line 924
    .line 925
    .line 926
    return-object v1

    .line 927
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()V
    .locals 4

    .line 1
    iget-object v0, p0, Ln0/b;->i:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;

    .line 4
    .line 5
    iget-object v1, p0, Ln0/b;->h:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/lang/String;

    .line 8
    .line 9
    iget-object v2, p0, Ln0/b;->g:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Landroidx/fragment/app/h;

    .line 12
    .line 13
    sget-object v3, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->j:Lr1/i;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iget-object v2, v2, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v2, Lw1/r;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-virtual {v0, v1, v3, v2}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->k(Ljava/lang/String;Ljava/lang/String;Lw1/r;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final d()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Ln0/b;->i:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ln0/c;

    .line 4
    .line 5
    iget-object v1, p0, Ln0/b;->h:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lj0/k;

    .line 8
    .line 9
    iget-object v2, p0, Ln0/b;->g:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Lj0/i;

    .line 12
    .line 13
    iget-object v3, v0, Ln0/c;->d:Lp0/d;

    .line 14
    .line 15
    check-cast v3, Lp0/k;

    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    iget-object v4, v1, Lj0/k;->c:Lg0/c;

    .line 21
    .line 22
    iget-object v5, v2, Lj0/i;->a:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v6, v1, Lj0/k;->a:Ljava/lang/String;

    .line 25
    .line 26
    filled-new-array {v4, v5, v6}, [Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    const-string v5, "SQLiteEventStore"

    .line 31
    .line 32
    invoke-static {v5}, Lcom/google/android/gms/internal/play_billing/i0;->Q(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    const/4 v6, 0x3

    .line 37
    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-eqz v5, :cond_0

    .line 42
    .line 43
    const-string v5, "Storing event with priority=%s, name=%s for destination %s"

    .line 44
    .line 45
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    :cond_0
    new-instance v4, Ln0/b;

    .line 49
    .line 50
    const/4 v5, 0x1

    .line 51
    invoke-direct {v4, v3, v2, v1, v5}, Ln0/b;-><init>(Lp0/k;Ljava/lang/Object;Lj0/k;I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v4}, Lp0/k;->c(Lp0/i;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Ljava/lang/Long;

    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 61
    .line 62
    .line 63
    iget-object v0, v0, Ln0/c;->a:Lo0/p;

    .line 64
    .line 65
    check-cast v0, Lo0/d;

    .line 66
    .line 67
    const/4 v2, 0x0

    .line 68
    invoke-virtual {v0, v1, v5, v2}, Lo0/d;->a(Lj0/k;IZ)V

    .line 69
    .line 70
    .line 71
    const/4 v0, 0x0

    .line 72
    return-object v0
.end method
