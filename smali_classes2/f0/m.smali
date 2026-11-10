.class public final synthetic Lf0/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f:I

.field public final g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lf0/m;->f:I

    iput-object p2, p0, Lf0/m;->g:Ljava/lang/Object;

    iput-object p3, p0, Lf0/m;->h:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p3, p0, Lf0/m;->f:I

    iput-object p1, p0, Lf0/m;->h:Ljava/lang/Object;

    iput-object p2, p0, Lf0/m;->g:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Lf0/m;->f:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/16 v3, 0x18

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    goto/16 :goto_8

    .line 12
    .line 13
    :pswitch_0
    iget-object v0, p0, Lf0/m;->h:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Li1/d;

    .line 16
    .line 17
    iget-object v0, v0, Li1/d;->b:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v0

    .line 20
    :try_start_0
    iget-object v1, p0, Lf0/m;->h:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v1, Li1/d;

    .line 23
    .line 24
    iget-object v1, v1, Li1/d;->c:Li1/a;

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    iget-object v2, p0, Lf0/m;->g:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v2, Li1/f;

    .line 31
    .line 32
    invoke-interface {v1, v2}, Li1/a;->e(Li1/f;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception v1

    .line 38
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw v1

    .line 40
    :pswitch_1
    iget-object v0, p0, Lf0/m;->h:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v0, Lx0/j;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :pswitch_2
    iget-object v0, p0, Lf0/m;->h:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v0, Lx0/w;

    .line 51
    .line 52
    iget-object v3, p0, Lf0/m;->g:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v3, Lh1/i;

    .line 55
    .line 56
    sget-object v5, Lx0/w;->h:La1/c;

    .line 57
    .line 58
    iget-object v5, v3, Lh1/i;->b:Lv0/a;

    .line 59
    .line 60
    iget v6, v5, Lv0/a;->b:I

    .line 61
    .line 62
    if-nez v6, :cond_1

    .line 63
    .line 64
    move v6, v2

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    move v6, v1

    .line 67
    :goto_0
    if-eqz v6, :cond_8

    .line 68
    .line 69
    iget-object v3, v3, Lh1/i;->c:Ly0/s;

    .line 70
    .line 71
    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/i0;->l(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    iget-object v5, v3, Ly0/s;->c:Lv0/a;

    .line 75
    .line 76
    iget v6, v5, Lv0/a;->b:I

    .line 77
    .line 78
    if-nez v6, :cond_2

    .line 79
    .line 80
    move v1, v2

    .line 81
    :cond_2
    if-nez v1, :cond_3

    .line 82
    .line 83
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    new-instance v2, Ljava/lang/Exception;

    .line 88
    .line 89
    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    .line 90
    .line 91
    .line 92
    const-string v3, "Sign-in succeeded with resolve account failure: "

    .line 93
    .line 94
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    const-string v3, "SignInCoordinator"

    .line 99
    .line 100
    invoke-static {v3, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    .line 102
    .line 103
    goto :goto_4

    .line 104
    :cond_3
    iget-object v1, v0, Lx0/w;->g:Lf0/c;

    .line 105
    .line 106
    iget-object v2, v3, Ly0/s;->b:Landroid/os/IBinder;

    .line 107
    .line 108
    if-nez v2, :cond_4

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_4
    sget v3, Ly0/a;->a:I

    .line 112
    .line 113
    const-string v3, "com.google.android.gms.common.internal.IAccountAccessor"

    .line 114
    .line 115
    invoke-interface {v2, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    instance-of v4, v3, Ly0/g;

    .line 120
    .line 121
    if-eqz v4, :cond_5

    .line 122
    .line 123
    check-cast v3, Ly0/g;

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_5
    new-instance v3, Ly0/k0;

    .line 127
    .line 128
    invoke-direct {v3, v2}, Ly0/k0;-><init>(Landroid/os/IBinder;)V

    .line 129
    .line 130
    .line 131
    :goto_1
    move-object v4, v3

    .line 132
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    if-eqz v4, :cond_7

    .line 136
    .line 137
    iget-object v2, v0, Lx0/w;->d:Ljava/util/Set;

    .line 138
    .line 139
    if-nez v2, :cond_6

    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_6
    iput-object v4, v1, Lf0/c;->i:Ljava/lang/Object;

    .line 143
    .line 144
    iput-object v2, v1, Lf0/c;->j:Ljava/lang/Object;

    .line 145
    .line 146
    iget-boolean v3, v1, Lf0/c;->f:Z

    .line 147
    .line 148
    if-eqz v3, :cond_9

    .line 149
    .line 150
    check-cast v4, Ly0/g;

    .line 151
    .line 152
    iget-object v1, v1, Lf0/c;->g:Ljava/lang/Object;

    .line 153
    .line 154
    check-cast v1, Lw0/b;

    .line 155
    .line 156
    check-cast v2, Ljava/util/Set;

    .line 157
    .line 158
    invoke-interface {v1, v4, v2}, Lw0/b;->a(Ly0/g;Ljava/util/Set;)V

    .line 159
    .line 160
    .line 161
    goto :goto_5

    .line 162
    :cond_7
    :goto_3
    new-instance v2, Ljava/lang/Exception;

    .line 163
    .line 164
    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    .line 165
    .line 166
    .line 167
    const-string v3, "GoogleApiManager"

    .line 168
    .line 169
    const-string v4, "Received null response from onSignInSuccess"

    .line 170
    .line 171
    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    .line 173
    .line 174
    new-instance v2, Lv0/a;

    .line 175
    .line 176
    const/4 v3, 0x4

    .line 177
    invoke-direct {v2, v3}, Lv0/a;-><init>(I)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1, v2}, Lf0/c;->c(Lv0/a;)V

    .line 181
    .line 182
    .line 183
    goto :goto_5

    .line 184
    :cond_8
    :goto_4
    iget-object v1, v0, Lx0/w;->g:Lf0/c;

    .line 185
    .line 186
    invoke-virtual {v1, v5}, Lf0/c;->c(Lv0/a;)V

    .line 187
    .line 188
    .line 189
    :cond_9
    :goto_5
    iget-object v0, v0, Lx0/w;->f:Lg1/c;

    .line 190
    .line 191
    invoke-interface {v0}, Lw0/b;->d()V

    .line 192
    .line 193
    .line 194
    return-void

    .line 195
    :pswitch_3
    iget-object v0, p0, Lf0/m;->h:Ljava/lang/Object;

    .line 196
    .line 197
    move-object v3, v0

    .line 198
    check-cast v3, Lf0/c;

    .line 199
    .line 200
    iget-object v5, v3, Lf0/c;->k:Ljava/lang/Object;

    .line 201
    .line 202
    check-cast v5, Lx0/d;

    .line 203
    .line 204
    iget-object v5, v5, Lx0/d;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 205
    .line 206
    iget-object v6, v3, Lf0/c;->h:Ljava/lang/Object;

    .line 207
    .line 208
    check-cast v6, Lx0/a;

    .line 209
    .line 210
    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v5

    .line 214
    check-cast v5, Lx0/o;

    .line 215
    .line 216
    if-nez v5, :cond_a

    .line 217
    .line 218
    goto :goto_6

    .line 219
    :cond_a
    iget-object v6, p0, Lf0/m;->g:Ljava/lang/Object;

    .line 220
    .line 221
    check-cast v6, Lv0/a;

    .line 222
    .line 223
    iget v7, v6, Lv0/a;->b:I

    .line 224
    .line 225
    if-nez v7, :cond_b

    .line 226
    .line 227
    move v1, v2

    .line 228
    :cond_b
    if-eqz v1, :cond_d

    .line 229
    .line 230
    iput-boolean v2, v3, Lf0/c;->f:Z

    .line 231
    .line 232
    iget-object v1, v3, Lf0/c;->g:Ljava/lang/Object;

    .line 233
    .line 234
    check-cast v1, Lw0/b;

    .line 235
    .line 236
    invoke-interface {v1}, Lw0/b;->f()Z

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    if-eqz v1, :cond_c

    .line 241
    .line 242
    iget-boolean v0, v3, Lf0/c;->f:Z

    .line 243
    .line 244
    if-eqz v0, :cond_e

    .line 245
    .line 246
    iget-object v0, v3, Lf0/c;->i:Ljava/lang/Object;

    .line 247
    .line 248
    check-cast v0, Ly0/g;

    .line 249
    .line 250
    if-eqz v0, :cond_e

    .line 251
    .line 252
    iget-object v1, v3, Lf0/c;->g:Ljava/lang/Object;

    .line 253
    .line 254
    check-cast v1, Lw0/b;

    .line 255
    .line 256
    iget-object v2, v3, Lf0/c;->j:Ljava/lang/Object;

    .line 257
    .line 258
    check-cast v2, Ljava/util/Set;

    .line 259
    .line 260
    invoke-interface {v1, v0, v2}, Lw0/b;->a(Ly0/g;Ljava/util/Set;)V

    .line 261
    .line 262
    .line 263
    goto :goto_6

    .line 264
    :cond_c
    :try_start_1
    check-cast v0, Lf0/c;

    .line 265
    .line 266
    iget-object v0, v0, Lf0/c;->g:Ljava/lang/Object;

    .line 267
    .line 268
    move-object v1, v0

    .line 269
    check-cast v1, Lw0/b;

    .line 270
    .line 271
    check-cast v0, Lw0/b;

    .line 272
    .line 273
    invoke-interface {v0}, Lw0/b;->b()Ljava/util/Set;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    invoke-interface {v1, v4, v0}, Lw0/b;->a(Ly0/g;Ljava/util/Set;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 278
    .line 279
    .line 280
    goto :goto_6

    .line 281
    :catch_0
    iget-object v0, v3, Lf0/c;->g:Ljava/lang/Object;

    .line 282
    .line 283
    check-cast v0, Lw0/b;

    .line 284
    .line 285
    const-string v1, "Failed to get service from broker."

    .line 286
    .line 287
    invoke-interface {v0, v1}, Lw0/b;->e(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    new-instance v0, Lv0/a;

    .line 291
    .line 292
    const/16 v1, 0xa

    .line 293
    .line 294
    invoke-direct {v0, v1}, Lv0/a;-><init>(I)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v5, v0, v4}, Lx0/o;->o(Lv0/a;Ljava/lang/RuntimeException;)V

    .line 298
    .line 299
    .line 300
    goto :goto_6

    .line 301
    :cond_d
    invoke-virtual {v5, v6, v4}, Lx0/o;->o(Lv0/a;Ljava/lang/RuntimeException;)V

    .line 302
    .line 303
    .line 304
    :cond_e
    :goto_6
    return-void

    .line 305
    :pswitch_4
    iget-object v0, p0, Lf0/m;->g:Ljava/lang/Object;

    .line 306
    .line 307
    check-cast v0, Ljava/util/concurrent/Future;

    .line 308
    .line 309
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    .line 310
    .line 311
    .line 312
    move-result v1

    .line 313
    if-nez v1, :cond_f

    .line 314
    .line 315
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    .line 316
    .line 317
    .line 318
    move-result v1

    .line 319
    if-nez v1, :cond_f

    .line 320
    .line 321
    iget-object v1, p0, Lf0/m;->h:Ljava/lang/Object;

    .line 322
    .line 323
    check-cast v1, Ljava/lang/Runnable;

    .line 324
    .line 325
    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 326
    .line 327
    .line 328
    sget v0, Lcom/google/android/gms/internal/play_billing/s;->a:I

    .line 329
    .line 330
    if-eqz v1, :cond_f

    .line 331
    .line 332
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 333
    .line 334
    .line 335
    :cond_f
    return-void

    .line 336
    :pswitch_5
    iget-object v0, p0, Lf0/m;->g:Ljava/lang/Object;

    .line 337
    .line 338
    check-cast v0, Lf0/b;

    .line 339
    .line 340
    iget-object v1, p0, Lf0/m;->h:Ljava/lang/Object;

    .line 341
    .line 342
    check-cast v1, Lo0/j;

    .line 343
    .line 344
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 345
    .line 346
    .line 347
    sget-object v2, Lf0/t;->l:Lf0/g;

    .line 348
    .line 349
    const/4 v4, 0x3

    .line 350
    invoke-static {v3, v4, v2}, Lf0/r;->a(IILf0/g;)Lcom/google/android/gms/internal/play_billing/j2;

    .line 351
    .line 352
    .line 353
    move-result-object v3

    .line 354
    invoke-virtual {v0, v3}, Lf0/b;->h(Lcom/google/android/gms/internal/play_billing/j2;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v1, v2}, Lo0/j;->a(Lf0/g;)V

    .line 358
    .line 359
    .line 360
    return-void

    .line 361
    :pswitch_6
    iget-object v0, p0, Lf0/m;->g:Ljava/lang/Object;

    .line 362
    .line 363
    check-cast v0, Lf0/b;

    .line 364
    .line 365
    iget-object v1, p0, Lf0/m;->h:Ljava/lang/Object;

    .line 366
    .line 367
    check-cast v1, Lf0/g;

    .line 368
    .line 369
    iget-object v2, v0, Lf0/b;->d:Lf0/w;

    .line 370
    .line 371
    iget-object v2, v2, Lf0/w;->c:Ljava/lang/Object;

    .line 372
    .line 373
    check-cast v2, Lf0/i;

    .line 374
    .line 375
    if-eqz v2, :cond_10

    .line 376
    .line 377
    iget-object v0, v0, Lf0/b;->d:Lf0/w;

    .line 378
    .line 379
    iget-object v0, v0, Lf0/w;->c:Ljava/lang/Object;

    .line 380
    .line 381
    check-cast v0, Lf0/i;

    .line 382
    .line 383
    check-cast v0, Lcom/nomone/giap/GIAP;

    .line 384
    .line 385
    invoke-virtual {v0, v1, v4}, Lcom/nomone/giap/GIAP;->c(Lf0/g;Ljava/util/List;)V

    .line 386
    .line 387
    .line 388
    goto :goto_7

    .line 389
    :cond_10
    sget v0, Lcom/google/android/gms/internal/play_billing/s;->a:I

    .line 390
    .line 391
    :goto_7
    return-void

    .line 392
    :pswitch_7
    iget-object v0, p0, Lf0/m;->g:Ljava/lang/Object;

    .line 393
    .line 394
    check-cast v0, Lf0/b;

    .line 395
    .line 396
    iget-object v1, p0, Lf0/m;->h:Ljava/lang/Object;

    .line 397
    .line 398
    check-cast v1, Lh0/b;

    .line 399
    .line 400
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 401
    .line 402
    .line 403
    sget-object v2, Lf0/t;->l:Lf0/g;

    .line 404
    .line 405
    const/16 v4, 0x9

    .line 406
    .line 407
    invoke-static {v3, v4, v2}, Lf0/r;->a(IILf0/g;)Lcom/google/android/gms/internal/play_billing/j2;

    .line 408
    .line 409
    .line 410
    move-result-object v3

    .line 411
    invoke-virtual {v0, v3}, Lf0/b;->h(Lcom/google/android/gms/internal/play_billing/j2;)V

    .line 412
    .line 413
    .line 414
    sget-object v0, Lcom/google/android/gms/internal/play_billing/f;->b:Lcom/google/android/gms/internal/play_billing/d;

    .line 415
    .line 416
    sget-object v0, Lcom/google/android/gms/internal/play_billing/j;->e:Lcom/google/android/gms/internal/play_billing/j;

    .line 417
    .line 418
    invoke-virtual {v1, v2, v0}, Lh0/b;->f(Lf0/g;Ljava/util/List;)V

    .line 419
    .line 420
    .line 421
    return-void

    .line 422
    :pswitch_8
    iget-object v0, p0, Lf0/m;->g:Ljava/lang/Object;

    .line 423
    .line 424
    check-cast v0, Lf0/b;

    .line 425
    .line 426
    iget-object v1, p0, Lf0/m;->h:Ljava/lang/Object;

    .line 427
    .line 428
    check-cast v1, Lf0/j;

    .line 429
    .line 430
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 431
    .line 432
    .line 433
    sget-object v2, Lf0/t;->l:Lf0/g;

    .line 434
    .line 435
    const/16 v5, 0x8

    .line 436
    .line 437
    invoke-static {v3, v5, v2}, Lf0/r;->a(IILf0/g;)Lcom/google/android/gms/internal/play_billing/j2;

    .line 438
    .line 439
    .line 440
    move-result-object v3

    .line 441
    invoke-virtual {v0, v3}, Lf0/b;->h(Lcom/google/android/gms/internal/play_billing/j2;)V

    .line 442
    .line 443
    .line 444
    check-cast v1, Lcom/nomone/giap/GIAP;

    .line 445
    .line 446
    invoke-virtual {v1, v2, v4}, Lcom/nomone/giap/GIAP;->d(Lf0/g;Ljava/util/ArrayList;)V

    .line 447
    .line 448
    .line 449
    return-void

    .line 450
    :goto_8
    iget-object v0, p0, Lf0/m;->h:Ljava/lang/Object;

    .line 451
    .line 452
    check-cast v0, Lu1/o;

    .line 453
    .line 454
    iget-object v2, v0, Lu1/o;->a:Lq1/f;

    .line 455
    .line 456
    iget-object v2, v2, Lq1/f;->F:Lu1/i;

    .line 457
    .line 458
    iget-object v2, v2, Lu1/i;->m:Lo1/v0;

    .line 459
    .line 460
    iget-boolean v2, v2, Lo1/v0;->k:Z

    .line 461
    .line 462
    if-eqz v2, :cond_11

    .line 463
    .line 464
    iget-object v2, p0, Lf0/m;->g:Ljava/lang/Object;

    .line 465
    .line 466
    check-cast v2, Lcom/nomone/vr_desktop/Applications/PromptApplication;

    .line 467
    .line 468
    invoke-virtual {v2}, Lcom/nomone/vr_desktop/Applications/PromptApplication;->b()V

    .line 469
    .line 470
    .line 471
    const-string v2, "Should show touch mode tutorial dialog"

    .line 472
    .line 473
    invoke-static {v2, v1}, Lo1/y;->e(Ljava/lang/String;Z)V

    .line 474
    .line 475
    .line 476
    goto :goto_9

    .line 477
    :cond_11
    sget-object v2, Lq1/f;->L:Lo1/j0;

    .line 478
    .line 479
    invoke-virtual {v2, p0}, Lo1/j0;->c(Ljava/lang/Runnable;)V

    .line 480
    .line 481
    .line 482
    :goto_9
    iget-object v2, v0, Lu1/o;->b:Lcom/nomone/vr_desktop/Applications/KeyboardApplication;

    .line 483
    .line 484
    iget-object v2, v2, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->c:La2/b;

    .line 485
    .line 486
    iget-object v2, v2, La2/b;->f:Lq1/u;

    .line 487
    .line 488
    invoke-virtual {v2, v1}, La2/e0;->B(Z)V

    .line 489
    .line 490
    .line 491
    iget-object v2, v0, Lu1/o;->b:Lcom/nomone/vr_desktop/Applications/KeyboardApplication;

    .line 492
    .line 493
    iget-object v2, v2, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->c:La2/b;

    .line 494
    .line 495
    iget-object v2, v2, La2/b;->f:Lq1/u;

    .line 496
    .line 497
    iput-boolean v1, v2, La2/e0;->m:Z

    .line 498
    .line 499
    iget-object v0, v0, Lu1/o;->a:Lq1/f;

    .line 500
    .line 501
    invoke-virtual {v0}, Lq1/f;->d()V

    .line 502
    .line 503
    .line 504
    return-void

    .line 505
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
