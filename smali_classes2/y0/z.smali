.class public final Ly0/z;
.super Le1/d;
.source "SourceFile"


# instance fields
.field public final synthetic c:Ly0/f;


# direct methods
.method public constructor <init>(Ly0/f;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ly0/z;->c:Ly0/f;

    const/4 p1, 0x1

    invoke-direct {p0, p2, p1}, Le1/d;-><init>(Landroid/os/Looper;I)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 1
    iget-object v0, p0, Ly0/z;->c:Ly0/f;

    .line 2
    .line 3
    iget-object v0, v0, Ly0/f;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x7

    .line 13
    const/4 v4, 0x2

    .line 14
    const/4 v5, 0x1

    .line 15
    const/4 v6, 0x0

    .line 16
    if-eq v0, v1, :cond_3

    .line 17
    .line 18
    iget v0, p1, Landroid/os/Message;->what:I

    .line 19
    .line 20
    if-eq v0, v4, :cond_0

    .line 21
    .line 22
    if-eq v0, v5, :cond_0

    .line 23
    .line 24
    if-ne v0, v3, :cond_1

    .line 25
    .line 26
    :cond_0
    move v2, v5

    .line 27
    :cond_1
    if-eqz v2, :cond_2

    .line 28
    .line 29
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p1, Ly0/v;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    monitor-enter p1

    .line 37
    :try_start_0
    iput-object v6, p1, Ly0/v;->a:Ljava/lang/Object;

    .line 38
    .line 39
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 40
    iget-object v0, p1, Ly0/v;->c:Ly0/f;

    .line 41
    .line 42
    iget-object v0, v0, Ly0/f;->k:Ljava/util/ArrayList;

    .line 43
    .line 44
    monitor-enter v0

    .line 45
    :try_start_1
    iget-object v1, p1, Ly0/v;->c:Ly0/f;

    .line 46
    .line 47
    iget-object v1, v1, Ly0/f;->k:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    monitor-exit v0

    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception p1

    .line 55
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    throw p1

    .line 57
    :catchall_1
    move-exception v0

    .line 58
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 59
    throw v0

    .line 60
    :cond_2
    :goto_0
    return-void

    .line 61
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    .line 62
    .line 63
    const/4 v1, 0x4

    .line 64
    const/4 v7, 0x5

    .line 65
    if-eq v0, v5, :cond_5

    .line 66
    .line 67
    if-eq v0, v3, :cond_5

    .line 68
    .line 69
    if-ne v0, v1, :cond_4

    .line 70
    .line 71
    iget-object v0, p0, Ly0/z;->c:Ly0/f;

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_4
    if-ne v0, v7, :cond_6

    .line 78
    .line 79
    :cond_5
    :goto_1
    iget-object v0, p0, Ly0/z;->c:Ly0/f;

    .line 80
    .line 81
    invoke-virtual {v0}, Ly0/f;->q()Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_1d

    .line 86
    .line 87
    :cond_6
    iget v0, p1, Landroid/os/Message;->what:I

    .line 88
    .line 89
    const/4 v8, 0x3

    .line 90
    const/16 v9, 0x8

    .line 91
    .line 92
    if-ne v0, v1, :cond_d

    .line 93
    .line 94
    iget-object v0, p0, Ly0/z;->c:Ly0/f;

    .line 95
    .line 96
    new-instance v1, Lv0/a;

    .line 97
    .line 98
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 99
    .line 100
    invoke-direct {v1, p1}, Lv0/a;-><init>(I)V

    .line 101
    .line 102
    .line 103
    iput-object v1, v0, Ly0/f;->s:Lv0/a;

    .line 104
    .line 105
    iget-boolean p1, v0, Ly0/f;->t:Z

    .line 106
    .line 107
    if-eqz p1, :cond_7

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_7
    invoke-virtual {v0}, Ly0/f;->m()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    if-eqz p1, :cond_8

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_8
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-eqz p1, :cond_9

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_9
    :try_start_3
    invoke-virtual {v0}, Ly0/f;->m()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    .line 133
    .line 134
    .line 135
    move v2, v5

    .line 136
    :catch_0
    :goto_2
    if-eqz v2, :cond_b

    .line 137
    .line 138
    iget-object p1, p0, Ly0/z;->c:Ly0/f;

    .line 139
    .line 140
    iget-boolean v0, p1, Ly0/f;->t:Z

    .line 141
    .line 142
    if-eqz v0, :cond_a

    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_a
    invoke-virtual {p1, v8, v6}, Ly0/f;->s(ILandroid/os/IInterface;)V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :cond_b
    :goto_3
    iget-object p1, p0, Ly0/z;->c:Ly0/f;

    .line 150
    .line 151
    iget-object v0, p1, Ly0/f;->s:Lv0/a;

    .line 152
    .line 153
    if-eqz v0, :cond_c

    .line 154
    .line 155
    goto :goto_4

    .line 156
    :cond_c
    new-instance v0, Lv0/a;

    .line 157
    .line 158
    invoke-direct {v0, v9}, Lv0/a;-><init>(I)V

    .line 159
    .line 160
    .line 161
    :goto_4
    iget-object p1, p1, Ly0/f;->i:Ly0/b;

    .line 162
    .line 163
    invoke-interface {p1, v0}, Ly0/b;->a(Lv0/a;)V

    .line 164
    .line 165
    .line 166
    iget-object p1, p0, Ly0/z;->c:Ly0/f;

    .line 167
    .line 168
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 172
    .line 173
    .line 174
    return-void

    .line 175
    :cond_d
    if-ne v0, v7, :cond_f

    .line 176
    .line 177
    iget-object p1, p0, Ly0/z;->c:Ly0/f;

    .line 178
    .line 179
    iget-object v0, p1, Ly0/f;->s:Lv0/a;

    .line 180
    .line 181
    if-eqz v0, :cond_e

    .line 182
    .line 183
    goto :goto_5

    .line 184
    :cond_e
    new-instance v0, Lv0/a;

    .line 185
    .line 186
    invoke-direct {v0, v9}, Lv0/a;-><init>(I)V

    .line 187
    .line 188
    .line 189
    :goto_5
    iget-object p1, p1, Ly0/f;->i:Ly0/b;

    .line 190
    .line 191
    invoke-interface {p1, v0}, Ly0/b;->a(Lv0/a;)V

    .line 192
    .line 193
    .line 194
    iget-object p1, p0, Ly0/z;->c:Ly0/f;

    .line 195
    .line 196
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    .line 198
    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 200
    .line 201
    .line 202
    return-void

    .line 203
    :cond_f
    if-ne v0, v8, :cond_11

    .line 204
    .line 205
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 206
    .line 207
    instance-of v1, v0, Landroid/app/PendingIntent;

    .line 208
    .line 209
    if-eqz v1, :cond_10

    .line 210
    .line 211
    move-object v6, v0

    .line 212
    check-cast v6, Landroid/app/PendingIntent;

    .line 213
    .line 214
    :cond_10
    new-instance v0, Lv0/a;

    .line 215
    .line 216
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 217
    .line 218
    invoke-direct {v0, p1, v6}, Lv0/a;-><init>(ILandroid/app/PendingIntent;)V

    .line 219
    .line 220
    .line 221
    iget-object p1, p0, Ly0/z;->c:Ly0/f;

    .line 222
    .line 223
    iget-object p1, p1, Ly0/f;->i:Ly0/b;

    .line 224
    .line 225
    invoke-interface {p1, v0}, Ly0/b;->a(Lv0/a;)V

    .line 226
    .line 227
    .line 228
    iget-object p1, p0, Ly0/z;->c:Ly0/f;

    .line 229
    .line 230
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 231
    .line 232
    .line 233
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 234
    .line 235
    .line 236
    return-void

    .line 237
    :cond_11
    const/4 v1, 0x6

    .line 238
    if-ne v0, v1, :cond_13

    .line 239
    .line 240
    iget-object v0, p0, Ly0/z;->c:Ly0/f;

    .line 241
    .line 242
    invoke-virtual {v0, v7, v6}, Ly0/f;->s(ILandroid/os/IInterface;)V

    .line 243
    .line 244
    .line 245
    iget-object v0, p0, Ly0/z;->c:Ly0/f;

    .line 246
    .line 247
    iget-object v0, v0, Ly0/f;->n:Ll0/c;

    .line 248
    .line 249
    if-eqz v0, :cond_12

    .line 250
    .line 251
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 252
    .line 253
    iget-object v0, v0, Ll0/c;->f:Ljava/lang/Object;

    .line 254
    .line 255
    check-cast v0, Lx0/c;

    .line 256
    .line 257
    invoke-interface {v0, p1}, Lx0/c;->b(I)V

    .line 258
    .line 259
    .line 260
    :cond_12
    iget-object p1, p0, Ly0/z;->c:Ly0/f;

    .line 261
    .line 262
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 263
    .line 264
    .line 265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 266
    .line 267
    .line 268
    iget-object p1, p0, Ly0/z;->c:Ly0/f;

    .line 269
    .line 270
    invoke-static {p1, v7, v5, v6}, Ly0/f;->r(Ly0/f;IILandroid/os/IInterface;)Z

    .line 271
    .line 272
    .line 273
    return-void

    .line 274
    :cond_13
    if-ne v0, v4, :cond_15

    .line 275
    .line 276
    iget-object v0, p0, Ly0/z;->c:Ly0/f;

    .line 277
    .line 278
    invoke-virtual {v0}, Ly0/f;->p()Z

    .line 279
    .line 280
    .line 281
    move-result v0

    .line 282
    if-eqz v0, :cond_14

    .line 283
    .line 284
    goto :goto_6

    .line 285
    :cond_14
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 286
    .line 287
    move-object v0, p1

    .line 288
    check-cast v0, Ly0/v;

    .line 289
    .line 290
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 291
    .line 292
    .line 293
    monitor-enter v0

    .line 294
    :try_start_4
    iput-object v6, v0, Ly0/v;->a:Ljava/lang/Object;

    .line 295
    .line 296
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 297
    iget-object p1, v0, Ly0/v;->c:Ly0/f;

    .line 298
    .line 299
    iget-object p1, p1, Ly0/f;->k:Ljava/util/ArrayList;

    .line 300
    .line 301
    monitor-enter p1

    .line 302
    :try_start_5
    iget-object v1, v0, Ly0/v;->c:Ly0/f;

    .line 303
    .line 304
    iget-object v1, v1, Ly0/f;->k:Ljava/util/ArrayList;

    .line 305
    .line 306
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    monitor-exit p1

    .line 310
    return-void

    .line 311
    :catchall_2
    move-exception v0

    .line 312
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 313
    throw v0

    .line 314
    :catchall_3
    move-exception p1

    .line 315
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 316
    throw p1

    .line 317
    :cond_15
    :goto_6
    iget v0, p1, Landroid/os/Message;->what:I

    .line 318
    .line 319
    if-eq v0, v4, :cond_16

    .line 320
    .line 321
    if-eq v0, v5, :cond_16

    .line 322
    .line 323
    if-ne v0, v3, :cond_17

    .line 324
    .line 325
    :cond_16
    move v2, v5

    .line 326
    :cond_17
    if-eqz v2, :cond_1c

    .line 327
    .line 328
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 329
    .line 330
    check-cast p1, Ly0/v;

    .line 331
    .line 332
    monitor-enter p1

    .line 333
    :try_start_7
    iget-object v0, p1, Ly0/v;->a:Ljava/lang/Object;

    .line 334
    .line 335
    iget-boolean v1, p1, Ly0/v;->b:Z

    .line 336
    .line 337
    if-eqz v1, :cond_18

    .line 338
    .line 339
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    :cond_18
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 343
    if-eqz v0, :cond_1b

    .line 344
    .line 345
    iget-object v0, p1, Ly0/v;->f:Ly0/f;

    .line 346
    .line 347
    iget v1, p1, Ly0/v;->d:I

    .line 348
    .line 349
    if-nez v1, :cond_19

    .line 350
    .line 351
    invoke-virtual {p1}, Ly0/v;->b()Z

    .line 352
    .line 353
    .line 354
    move-result v1

    .line 355
    if-nez v1, :cond_1b

    .line 356
    .line 357
    invoke-virtual {v0, v5, v6}, Ly0/f;->s(ILandroid/os/IInterface;)V

    .line 358
    .line 359
    .line 360
    new-instance v0, Lv0/a;

    .line 361
    .line 362
    invoke-direct {v0, v9, v6}, Lv0/a;-><init>(ILandroid/app/PendingIntent;)V

    .line 363
    .line 364
    .line 365
    goto :goto_8

    .line 366
    :cond_19
    invoke-virtual {v0, v5, v6}, Ly0/f;->s(ILandroid/os/IInterface;)V

    .line 367
    .line 368
    .line 369
    iget-object v0, p1, Ly0/v;->e:Landroid/os/Bundle;

    .line 370
    .line 371
    if-eqz v0, :cond_1a

    .line 372
    .line 373
    const-string v2, "pendingIntent"

    .line 374
    .line 375
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    check-cast v0, Landroid/app/PendingIntent;

    .line 380
    .line 381
    goto :goto_7

    .line 382
    :cond_1a
    move-object v0, v6

    .line 383
    :goto_7
    new-instance v2, Lv0/a;

    .line 384
    .line 385
    invoke-direct {v2, v1, v0}, Lv0/a;-><init>(ILandroid/app/PendingIntent;)V

    .line 386
    .line 387
    .line 388
    move-object v0, v2

    .line 389
    :goto_8
    invoke-virtual {p1, v0}, Ly0/v;->a(Lv0/a;)V

    .line 390
    .line 391
    .line 392
    :cond_1b
    monitor-enter p1

    .line 393
    :try_start_8
    iput-boolean v5, p1, Ly0/v;->b:Z

    .line 394
    .line 395
    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 396
    monitor-enter p1

    .line 397
    :try_start_9
    iput-object v6, p1, Ly0/v;->a:Ljava/lang/Object;

    .line 398
    .line 399
    monitor-exit p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 400
    iget-object v0, p1, Ly0/v;->c:Ly0/f;

    .line 401
    .line 402
    iget-object v0, v0, Ly0/f;->k:Ljava/util/ArrayList;

    .line 403
    .line 404
    monitor-enter v0

    .line 405
    :try_start_a
    iget-object v1, p1, Ly0/v;->c:Ly0/f;

    .line 406
    .line 407
    iget-object v1, v1, Ly0/f;->k:Ljava/util/ArrayList;

    .line 408
    .line 409
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 410
    .line 411
    .line 412
    monitor-exit v0

    .line 413
    return-void

    .line 414
    :catchall_4
    move-exception p1

    .line 415
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 416
    throw p1

    .line 417
    :catchall_5
    move-exception v0

    .line 418
    :try_start_b
    monitor-exit p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 419
    throw v0

    .line 420
    :catchall_6
    move-exception v0

    .line 421
    :try_start_c
    monitor-exit p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 422
    throw v0

    .line 423
    :catchall_7
    move-exception v0

    .line 424
    :try_start_d
    monitor-exit p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 425
    throw v0

    .line 426
    :cond_1c
    const-string p1, "Don\'t know how to handle message: "

    .line 427
    .line 428
    invoke-static {p1, v0}, La1/b;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object p1

    .line 432
    new-instance v0, Ljava/lang/Exception;

    .line 433
    .line 434
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 435
    .line 436
    .line 437
    const-string v1, "GmsClient"

    .line 438
    .line 439
    invoke-static {v1, p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 440
    .line 441
    .line 442
    return-void

    .line 443
    :cond_1d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 444
    .line 445
    check-cast p1, Ly0/v;

    .line 446
    .line 447
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 448
    .line 449
    .line 450
    monitor-enter p1

    .line 451
    :try_start_e
    iput-object v6, p1, Ly0/v;->a:Ljava/lang/Object;

    .line 452
    .line 453
    monitor-exit p1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    .line 454
    iget-object v0, p1, Ly0/v;->c:Ly0/f;

    .line 455
    .line 456
    iget-object v0, v0, Ly0/f;->k:Ljava/util/ArrayList;

    .line 457
    .line 458
    monitor-enter v0

    .line 459
    :try_start_f
    iget-object v1, p1, Ly0/v;->c:Ly0/f;

    .line 460
    .line 461
    iget-object v1, v1, Ly0/f;->k:Ljava/util/ArrayList;

    .line 462
    .line 463
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 464
    .line 465
    .line 466
    monitor-exit v0

    .line 467
    return-void

    .line 468
    :catchall_8
    move-exception p1

    .line 469
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    .line 470
    throw p1

    .line 471
    :catchall_9
    move-exception v0

    .line 472
    :try_start_10
    monitor-exit p1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    .line 473
    throw v0
.end method
