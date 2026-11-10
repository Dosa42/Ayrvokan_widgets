.class public final synthetic Lf0/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lf0/q;


# direct methods
.method public synthetic constructor <init>(Lf0/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf0/p;->a:Lf0/q;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 15

    .line 1
    iget-object v0, p0, Lf0/p;->a:Lf0/q;

    .line 2
    .line 3
    iget-object v1, v0, Lf0/q;->a:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    new-instance v2, Landroid/os/Bundle;

    .line 15
    .line 16
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v3, "accountName"

    .line 20
    .line 21
    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object v2, v1

    .line 26
    :goto_0
    const/4 v3, 0x6

    .line 27
    const/4 v4, 0x3

    .line 28
    const/4 v5, 0x0

    .line 29
    :try_start_1
    iget-object v6, v0, Lf0/q;->c:Lf0/b;

    .line 30
    .line 31
    iget-object v6, v6, Lf0/b;->e:Landroid/content/Context;

    .line 32
    .line 33
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 37
    const/16 v7, 0x16

    .line 38
    .line 39
    move v9, v4

    .line 40
    move v8, v7

    .line 41
    :goto_1
    const/4 v10, 0x1

    .line 42
    if-lt v8, v4, :cond_3

    .line 43
    .line 44
    if-nez v2, :cond_1

    .line 45
    .line 46
    :try_start_2
    iget-object v11, v0, Lf0/q;->c:Lf0/b;

    .line 47
    .line 48
    iget-object v11, v11, Lf0/b;->g:Lcom/google/android/gms/internal/play_billing/k3;

    .line 49
    .line 50
    const-string v12, "subs"

    .line 51
    .line 52
    check-cast v11, Lcom/google/android/gms/internal/play_billing/i3;

    .line 53
    .line 54
    invoke-virtual {v11}, Lcom/google/android/gms/internal/play_billing/i3;->b()Landroid/os/Parcel;

    .line 55
    .line 56
    .line 57
    move-result-object v13

    .line 58
    invoke-virtual {v13, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v13, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v13, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v11, v13, v10}, Lcom/google/android/gms/internal/play_billing/i3;->c(Landroid/os/Parcel;I)Landroid/os/Parcel;

    .line 68
    .line 69
    .line 70
    move-result-object v11

    .line 71
    invoke-virtual {v11}, Landroid/os/Parcel;->readInt()I

    .line 72
    .line 73
    .line 74
    move-result v12

    .line 75
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    .line 76
    .line 77
    .line 78
    move v9, v12

    .line 79
    goto :goto_2

    .line 80
    :cond_1
    iget-object v11, v0, Lf0/q;->c:Lf0/b;

    .line 81
    .line 82
    iget-object v11, v11, Lf0/b;->g:Lcom/google/android/gms/internal/play_billing/k3;

    .line 83
    .line 84
    const-string v12, "subs"

    .line 85
    .line 86
    check-cast v11, Lcom/google/android/gms/internal/play_billing/i3;

    .line 87
    .line 88
    invoke-virtual {v11, v8, v6, v12, v2}, Lcom/google/android/gms/internal/play_billing/i3;->a(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    .line 89
    .line 90
    .line 91
    move-result v9

    .line 92
    :goto_2
    if-nez v9, :cond_2

    .line 93
    .line 94
    const-string v11, "BillingClient"

    .line 95
    .line 96
    new-instance v12, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    const-string v13, "highestLevelSupportedForSubs: "

    .line 102
    .line 103
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v12

    .line 113
    invoke-static {v11, v12}, Lcom/google/android/gms/internal/play_billing/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_2
    add-int/lit8 v8, v8, -0x1

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_3
    move v8, v5

    .line 121
    :goto_3
    iget-object v11, v0, Lf0/q;->c:Lf0/b;

    .line 122
    .line 123
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    iget-object v11, v0, Lf0/q;->c:Lf0/b;

    .line 127
    .line 128
    if-lt v8, v4, :cond_4

    .line 129
    .line 130
    move v12, v10

    .line 131
    goto :goto_4

    .line 132
    :cond_4
    move v12, v5

    .line 133
    :goto_4
    iput-boolean v12, v11, Lf0/b;->i:Z

    .line 134
    .line 135
    const/16 v11, 0x9

    .line 136
    .line 137
    if-ge v8, v4, :cond_5

    .line 138
    .line 139
    const-string v8, "BillingClient"

    .line 140
    .line 141
    const-string v12, "In-app billing API does not support subscription on this device."

    .line 142
    .line 143
    invoke-static {v8, v12}, Lcom/google/android/gms/internal/play_billing/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    move v8, v11

    .line 147
    goto :goto_5

    .line 148
    :cond_5
    move v8, v10

    .line 149
    :goto_5
    if-lt v7, v4, :cond_8

    .line 150
    .line 151
    if-nez v2, :cond_6

    .line 152
    .line 153
    iget-object v12, v0, Lf0/q;->c:Lf0/b;

    .line 154
    .line 155
    iget-object v12, v12, Lf0/b;->g:Lcom/google/android/gms/internal/play_billing/k3;

    .line 156
    .line 157
    const-string v13, "inapp"

    .line 158
    .line 159
    check-cast v12, Lcom/google/android/gms/internal/play_billing/i3;

    .line 160
    .line 161
    invoke-virtual {v12}, Lcom/google/android/gms/internal/play_billing/i3;->b()Landroid/os/Parcel;

    .line 162
    .line 163
    .line 164
    move-result-object v14

    .line 165
    invoke-virtual {v14, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v14, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v12, v14, v10}, Lcom/google/android/gms/internal/play_billing/i3;->c(Landroid/os/Parcel;I)Landroid/os/Parcel;

    .line 175
    .line 176
    .line 177
    move-result-object v12

    .line 178
    invoke-virtual {v12}, Landroid/os/Parcel;->readInt()I

    .line 179
    .line 180
    .line 181
    move-result v13

    .line 182
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    .line 183
    .line 184
    .line 185
    move v9, v13

    .line 186
    goto :goto_6

    .line 187
    :cond_6
    iget-object v12, v0, Lf0/q;->c:Lf0/b;

    .line 188
    .line 189
    iget-object v12, v12, Lf0/b;->g:Lcom/google/android/gms/internal/play_billing/k3;

    .line 190
    .line 191
    const-string v13, "inapp"

    .line 192
    .line 193
    check-cast v12, Lcom/google/android/gms/internal/play_billing/i3;

    .line 194
    .line 195
    invoke-virtual {v12, v7, v6, v13, v2}, Lcom/google/android/gms/internal/play_billing/i3;->a(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    .line 196
    .line 197
    .line 198
    move-result v9

    .line 199
    :goto_6
    if-nez v9, :cond_7

    .line 200
    .line 201
    iget-object v2, v0, Lf0/q;->c:Lf0/b;

    .line 202
    .line 203
    iput v7, v2, Lf0/b;->j:I

    .line 204
    .line 205
    const-string v2, "BillingClient"

    .line 206
    .line 207
    new-instance v6, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .line 211
    .line 212
    const-string v12, "mHighestLevelSupportedForInApp: "

    .line 213
    .line 214
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v6

    .line 224
    invoke-static {v2, v6}, Lcom/google/android/gms/internal/play_billing/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    goto :goto_7

    .line 228
    :cond_7
    add-int/lit8 v7, v7, -0x1

    .line 229
    .line 230
    goto :goto_5

    .line 231
    :cond_8
    :goto_7
    iget-object v2, v0, Lf0/q;->c:Lf0/b;

    .line 232
    .line 233
    iget v6, v2, Lf0/b;->j:I

    .line 234
    .line 235
    const/16 v7, 0x15

    .line 236
    .line 237
    if-lt v6, v7, :cond_9

    .line 238
    .line 239
    move v7, v10

    .line 240
    goto :goto_8

    .line 241
    :cond_9
    move v7, v5

    .line 242
    :goto_8
    iput-boolean v7, v2, Lf0/b;->s:Z

    .line 243
    .line 244
    const/16 v7, 0x13

    .line 245
    .line 246
    if-lt v6, v7, :cond_a

    .line 247
    .line 248
    move v7, v10

    .line 249
    goto :goto_9

    .line 250
    :cond_a
    move v7, v5

    .line 251
    :goto_9
    iput-boolean v7, v2, Lf0/b;->r:Z

    .line 252
    .line 253
    const/16 v7, 0x11

    .line 254
    .line 255
    if-lt v6, v7, :cond_b

    .line 256
    .line 257
    move v7, v10

    .line 258
    goto :goto_a

    .line 259
    :cond_b
    move v7, v5

    .line 260
    :goto_a
    iput-boolean v7, v2, Lf0/b;->q:Z

    .line 261
    .line 262
    const/16 v7, 0x10

    .line 263
    .line 264
    if-lt v6, v7, :cond_c

    .line 265
    .line 266
    move v7, v10

    .line 267
    goto :goto_b

    .line 268
    :cond_c
    move v7, v5

    .line 269
    :goto_b
    iput-boolean v7, v2, Lf0/b;->p:Z

    .line 270
    .line 271
    const/16 v7, 0xf

    .line 272
    .line 273
    if-lt v6, v7, :cond_d

    .line 274
    .line 275
    move v7, v10

    .line 276
    goto :goto_c

    .line 277
    :cond_d
    move v7, v5

    .line 278
    :goto_c
    iput-boolean v7, v2, Lf0/b;->o:Z

    .line 279
    .line 280
    const/16 v7, 0xe

    .line 281
    .line 282
    if-lt v6, v7, :cond_e

    .line 283
    .line 284
    move v7, v10

    .line 285
    goto :goto_d

    .line 286
    :cond_e
    move v7, v5

    .line 287
    :goto_d
    iput-boolean v7, v2, Lf0/b;->n:Z

    .line 288
    .line 289
    const/16 v7, 0xa

    .line 290
    .line 291
    if-lt v6, v7, :cond_f

    .line 292
    .line 293
    move v7, v10

    .line 294
    goto :goto_e

    .line 295
    :cond_f
    move v7, v5

    .line 296
    :goto_e
    iput-boolean v7, v2, Lf0/b;->m:Z

    .line 297
    .line 298
    if-lt v6, v11, :cond_10

    .line 299
    .line 300
    move v7, v10

    .line 301
    goto :goto_f

    .line 302
    :cond_10
    move v7, v5

    .line 303
    :goto_f
    iput-boolean v7, v2, Lf0/b;->l:Z

    .line 304
    .line 305
    if-lt v6, v3, :cond_11

    .line 306
    .line 307
    goto :goto_10

    .line 308
    :cond_11
    move v10, v5

    .line 309
    :goto_10
    iput-boolean v10, v2, Lf0/b;->k:Z

    .line 310
    .line 311
    if-ge v6, v4, :cond_12

    .line 312
    .line 313
    sget v4, Lcom/google/android/gms/internal/play_billing/s;->a:I

    .line 314
    .line 315
    const/16 v8, 0x24

    .line 316
    .line 317
    :cond_12
    if-nez v9, :cond_13

    .line 318
    .line 319
    const/4 v4, 0x2

    .line 320
    iput v4, v2, Lf0/b;->a:I

    .line 321
    .line 322
    iget-object v2, v0, Lf0/q;->c:Lf0/b;

    .line 323
    .line 324
    iget-object v2, v2, Lf0/b;->d:Lf0/w;

    .line 325
    .line 326
    if-eqz v2, :cond_14

    .line 327
    .line 328
    iget-object v2, v0, Lf0/q;->c:Lf0/b;

    .line 329
    .line 330
    iget-object v2, v2, Lf0/b;->d:Lf0/w;

    .line 331
    .line 332
    iget-object v4, v0, Lf0/q;->c:Lf0/b;

    .line 333
    .line 334
    iget-boolean v4, v4, Lf0/b;->s:Z

    .line 335
    .line 336
    invoke-virtual {v2, v4}, Lf0/w;->b(Z)V

    .line 337
    .line 338
    .line 339
    goto :goto_11

    .line 340
    :cond_13
    iput v5, v2, Lf0/b;->a:I

    .line 341
    .line 342
    iget-object v2, v0, Lf0/q;->c:Lf0/b;

    .line 343
    .line 344
    iput-object v1, v2, Lf0/b;->g:Lcom/google/android/gms/internal/play_billing/k3;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 345
    .line 346
    :cond_14
    :goto_11
    move-object v2, v1

    .line 347
    goto :goto_16

    .line 348
    :catch_0
    move-exception v2

    .line 349
    move v4, v9

    .line 350
    goto :goto_12

    .line 351
    :catch_1
    move-exception v2

    .line 352
    :goto_12
    sget v6, Lcom/google/android/gms/internal/play_billing/s;->a:I

    .line 353
    .line 354
    instance-of v6, v2, Landroid/os/DeadObjectException;

    .line 355
    .line 356
    const/16 v7, 0x2a

    .line 357
    .line 358
    if-eqz v6, :cond_15

    .line 359
    .line 360
    const/16 v6, 0x65

    .line 361
    .line 362
    goto :goto_13

    .line 363
    :cond_15
    instance-of v6, v2, Landroid/os/RemoteException;

    .line 364
    .line 365
    if-eqz v6, :cond_16

    .line 366
    .line 367
    const/16 v6, 0x64

    .line 368
    .line 369
    goto :goto_13

    .line 370
    :cond_16
    instance-of v6, v2, Ljava/lang/SecurityException;

    .line 371
    .line 372
    if-eqz v6, :cond_17

    .line 373
    .line 374
    const/16 v6, 0x66

    .line 375
    .line 376
    :goto_13
    move v8, v6

    .line 377
    goto :goto_14

    .line 378
    :cond_17
    move v8, v7

    .line 379
    :goto_14
    if-ne v8, v7, :cond_19

    .line 380
    .line 381
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 382
    .line 383
    .line 384
    move-result-object v6

    .line 385
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v6

    .line 389
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v2

    .line 393
    if-nez v2, :cond_18

    .line 394
    .line 395
    const-string v2, ""

    .line 396
    .line 397
    :cond_18
    new-instance v7, Ljava/lang/StringBuilder;

    .line 398
    .line 399
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 400
    .line 401
    .line 402
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    const-string v6, ": "

    .line 406
    .line 407
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v2

    .line 417
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 418
    .line 419
    .line 420
    move-result v6

    .line 421
    const/16 v7, 0x46

    .line 422
    .line 423
    if-le v6, v7, :cond_1a

    .line 424
    .line 425
    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v2

    .line 429
    goto :goto_15

    .line 430
    :cond_19
    move-object v2, v1

    .line 431
    :cond_1a
    :goto_15
    iget-object v6, v0, Lf0/q;->c:Lf0/b;

    .line 432
    .line 433
    iput v5, v6, Lf0/b;->a:I

    .line 434
    .line 435
    iget-object v5, v0, Lf0/q;->c:Lf0/b;

    .line 436
    .line 437
    iput-object v1, v5, Lf0/b;->g:Lcom/google/android/gms/internal/play_billing/k3;

    .line 438
    .line 439
    move v9, v4

    .line 440
    :goto_16
    if-nez v9, :cond_1b

    .line 441
    .line 442
    iget-object v2, v0, Lf0/q;->c:Lf0/b;

    .line 443
    .line 444
    invoke-static {v3}, Lf0/r;->b(I)Lcom/google/android/gms/internal/play_billing/m2;

    .line 445
    .line 446
    .line 447
    move-result-object v3

    .line 448
    invoke-virtual {v2, v3}, Lf0/b;->i(Lcom/google/android/gms/internal/play_billing/m2;)V

    .line 449
    .line 450
    .line 451
    sget-object v2, Lf0/t;->j:Lf0/g;

    .line 452
    .line 453
    goto :goto_18

    .line 454
    :cond_1b
    iget-object v4, v0, Lf0/q;->c:Lf0/b;

    .line 455
    .line 456
    sget-object v5, Lf0/t;->a:Lf0/g;

    .line 457
    .line 458
    sget v6, Lf0/r;->a:I

    .line 459
    .line 460
    :try_start_3
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/p2;->r()Lcom/google/android/gms/internal/play_billing/n2;

    .line 461
    .line 462
    .line 463
    move-result-object v6

    .line 464
    iget v7, v5, Lf0/g;->b:I

    .line 465
    .line 466
    invoke-virtual {v6}, Lcom/google/android/gms/internal/play_billing/k0;->c()V

    .line 467
    .line 468
    .line 469
    iget-object v9, v6, Lcom/google/android/gms/internal/play_billing/k0;->b:Lcom/google/android/gms/internal/play_billing/l0;

    .line 470
    .line 471
    check-cast v9, Lcom/google/android/gms/internal/play_billing/p2;

    .line 472
    .line 473
    invoke-static {v9, v7}, Lcom/google/android/gms/internal/play_billing/p2;->n(Lcom/google/android/gms/internal/play_billing/p2;I)V

    .line 474
    .line 475
    .line 476
    iget-object v5, v5, Lf0/g;->c:Ljava/lang/String;

    .line 477
    .line 478
    invoke-virtual {v6}, Lcom/google/android/gms/internal/play_billing/k0;->c()V

    .line 479
    .line 480
    .line 481
    iget-object v7, v6, Lcom/google/android/gms/internal/play_billing/k0;->b:Lcom/google/android/gms/internal/play_billing/l0;

    .line 482
    .line 483
    check-cast v7, Lcom/google/android/gms/internal/play_billing/p2;

    .line 484
    .line 485
    invoke-static {v7, v5}, Lcom/google/android/gms/internal/play_billing/p2;->o(Lcom/google/android/gms/internal/play_billing/p2;Ljava/lang/String;)V

    .line 486
    .line 487
    .line 488
    invoke-virtual {v6}, Lcom/google/android/gms/internal/play_billing/k0;->c()V

    .line 489
    .line 490
    .line 491
    iget-object v5, v6, Lcom/google/android/gms/internal/play_billing/k0;->b:Lcom/google/android/gms/internal/play_billing/l0;

    .line 492
    .line 493
    check-cast v5, Lcom/google/android/gms/internal/play_billing/p2;

    .line 494
    .line 495
    invoke-static {v5, v8}, Lcom/google/android/gms/internal/play_billing/p2;->q(Lcom/google/android/gms/internal/play_billing/p2;I)V

    .line 496
    .line 497
    .line 498
    if-eqz v2, :cond_1c

    .line 499
    .line 500
    invoke-virtual {v6}, Lcom/google/android/gms/internal/play_billing/k0;->c()V

    .line 501
    .line 502
    .line 503
    iget-object v5, v6, Lcom/google/android/gms/internal/play_billing/k0;->b:Lcom/google/android/gms/internal/play_billing/l0;

    .line 504
    .line 505
    check-cast v5, Lcom/google/android/gms/internal/play_billing/p2;

    .line 506
    .line 507
    invoke-static {v5, v2}, Lcom/google/android/gms/internal/play_billing/p2;->p(Lcom/google/android/gms/internal/play_billing/p2;Ljava/lang/String;)V

    .line 508
    .line 509
    .line 510
    :cond_1c
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/j2;->q()Lcom/google/android/gms/internal/play_billing/i2;

    .line 511
    .line 512
    .line 513
    move-result-object v2

    .line 514
    invoke-virtual {v2}, Lcom/google/android/gms/internal/play_billing/k0;->c()V

    .line 515
    .line 516
    .line 517
    iget-object v5, v2, Lcom/google/android/gms/internal/play_billing/k0;->b:Lcom/google/android/gms/internal/play_billing/l0;

    .line 518
    .line 519
    check-cast v5, Lcom/google/android/gms/internal/play_billing/j2;

    .line 520
    .line 521
    invoke-virtual {v6}, Lcom/google/android/gms/internal/play_billing/k0;->a()Lcom/google/android/gms/internal/play_billing/l0;

    .line 522
    .line 523
    .line 524
    move-result-object v6

    .line 525
    check-cast v6, Lcom/google/android/gms/internal/play_billing/p2;

    .line 526
    .line 527
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/play_billing/j2;->o(Lcom/google/android/gms/internal/play_billing/j2;Lcom/google/android/gms/internal/play_billing/p2;)V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v2}, Lcom/google/android/gms/internal/play_billing/k0;->c()V

    .line 531
    .line 532
    .line 533
    iget-object v5, v2, Lcom/google/android/gms/internal/play_billing/k0;->b:Lcom/google/android/gms/internal/play_billing/l0;

    .line 534
    .line 535
    check-cast v5, Lcom/google/android/gms/internal/play_billing/j2;

    .line 536
    .line 537
    invoke-static {v5, v3}, Lcom/google/android/gms/internal/play_billing/j2;->p(Lcom/google/android/gms/internal/play_billing/j2;I)V

    .line 538
    .line 539
    .line 540
    invoke-virtual {v2}, Lcom/google/android/gms/internal/play_billing/k0;->a()Lcom/google/android/gms/internal/play_billing/l0;

    .line 541
    .line 542
    .line 543
    move-result-object v2

    .line 544
    check-cast v2, Lcom/google/android/gms/internal/play_billing/j2;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 545
    .line 546
    goto :goto_17

    .line 547
    :catch_2
    sget v2, Lcom/google/android/gms/internal/play_billing/s;->a:I

    .line 548
    .line 549
    move-object v2, v1

    .line 550
    :goto_17
    invoke-virtual {v4, v2}, Lf0/b;->h(Lcom/google/android/gms/internal/play_billing/j2;)V

    .line 551
    .line 552
    .line 553
    sget-object v2, Lf0/t;->a:Lf0/g;

    .line 554
    .line 555
    :goto_18
    iget-object v3, v0, Lf0/q;->a:Ljava/lang/Object;

    .line 556
    .line 557
    monitor-enter v3

    .line 558
    :try_start_4
    iget-object v0, v0, Lf0/q;->b:Lh/a;

    .line 559
    .line 560
    if-eqz v0, :cond_1d

    .line 561
    .line 562
    invoke-virtual {v0, v2}, Lh/a;->C(Lf0/g;)V

    .line 563
    .line 564
    .line 565
    :cond_1d
    monitor-exit v3

    .line 566
    return-object v1

    .line 567
    :catchall_0
    move-exception v0

    .line 568
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 569
    throw v0

    .line 570
    :catchall_1
    move-exception v0

    .line 571
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 572
    throw v0
.end method
