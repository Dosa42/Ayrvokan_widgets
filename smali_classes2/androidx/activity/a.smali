.class public final Landroidx/activity/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f:I

.field public final g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/activity/a;->f:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/activity/a;->g:Ljava/lang/Object;

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
    .locals 15

    .line 1
    iget v0, p0, Landroidx/activity/a;->f:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    :pswitch_0
    goto/16 :goto_e

    .line 10
    .line 11
    :pswitch_1
    iget-object v0, p0, Landroidx/activity/a;->g:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Ly0/j0;

    .line 14
    .line 15
    iget-object v2, v0, Ly0/j0;->i:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-static {v2}, La1/b;->j(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, v0, Ly0/j0;->i:Ljava/lang/Object;

    .line 21
    .line 22
    invoke-static {v0}, La1/b;->j(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    throw v1

    .line 26
    :pswitch_2
    iget-object v0, p0, Landroidx/activity/a;->g:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Lb2/b;

    .line 29
    .line 30
    iget-object v1, v0, Lb2/b;->b:Ljava/net/Socket;

    .line 31
    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/net/Socket;->isConnected()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move v2, v3

    .line 42
    :goto_0
    if-nez v2, :cond_1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    :try_start_0
    iget-object v1, v0, Lb2/b;->c:Ljava/io/BufferedReader;

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    :catch_0
    iget-object v0, v0, Lb2/b;->a:Lo1/f;

    .line 51
    .line 52
    invoke-virtual {v0, p0}, Lo1/f;->a(Ljava/lang/Runnable;)V

    .line 53
    .line 54
    .line 55
    :goto_1
    return-void

    .line 56
    :pswitch_3
    iget-object v0, p0, Landroidx/activity/a;->g:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v0, Lcom/google/android/gms/internal/play_billing/i0;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :pswitch_4
    iget-object v0, p0, Landroidx/activity/a;->g:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v0, Lq1/f;

    .line 67
    .line 68
    iget v1, v0, Lq1/f;->I:I

    .line 69
    .line 70
    if-gtz v1, :cond_2

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 74
    .line 75
    iput v1, v0, Lq1/f;->I:I

    .line 76
    .line 77
    invoke-virtual {v0}, Lq1/f;->d()V

    .line 78
    .line 79
    .line 80
    sget-object v1, Lq1/f;->L:Lo1/j0;

    .line 81
    .line 82
    iget-object v0, v0, Lq1/f;->J:Landroidx/activity/a;

    .line 83
    .line 84
    invoke-virtual {v1, v0}, Lo1/j0;->c(Ljava/lang/Runnable;)V

    .line 85
    .line 86
    .line 87
    :goto_2
    return-void

    .line 88
    :pswitch_5
    iget-object v0, p0, Landroidx/activity/a;->g:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v0, Lo1/n0;

    .line 91
    .line 92
    iget-object v0, v0, Lo1/n0;->h:Ljava/util/ArrayList;

    .line 93
    .line 94
    monitor-enter v0

    .line 95
    :try_start_1
    iget-object v4, p0, Landroidx/activity/a;->g:Ljava/lang/Object;

    .line 96
    .line 97
    move-object v5, v4

    .line 98
    check-cast v5, Lo1/n0;

    .line 99
    .line 100
    iget-boolean v5, v5, Lo1/n0;->f:Z

    .line 101
    .line 102
    if-eqz v5, :cond_3

    .line 103
    .line 104
    goto/16 :goto_5

    .line 105
    .line 106
    :cond_3
    check-cast v4, Lo1/n0;

    .line 107
    .line 108
    iget-object v4, v4, Lo1/n0;->c:Landroid/widget/TextView;

    .line 109
    .line 110
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    if-nez v4, :cond_4

    .line 115
    .line 116
    move v4, v2

    .line 117
    goto :goto_3

    .line 118
    :cond_4
    move v4, v3

    .line 119
    :goto_3
    iget-object v5, p0, Landroidx/activity/a;->g:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v5, Lo1/n0;

    .line 122
    .line 123
    iget-object v5, v5, Lo1/n0;->h:Ljava/util/ArrayList;

    .line 124
    .line 125
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    const/16 v6, 0x8

    .line 130
    .line 131
    if-eqz v5, :cond_5

    .line 132
    .line 133
    iget-object v2, p0, Landroidx/activity/a;->g:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast v2, Lo1/n0;

    .line 136
    .line 137
    iget-object v2, v2, Lo1/n0;->c:Landroid/widget/TextView;

    .line 138
    .line 139
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 140
    .line 141
    .line 142
    iget-object v2, p0, Landroidx/activity/a;->g:Ljava/lang/Object;

    .line 143
    .line 144
    move-object v4, v2

    .line 145
    check-cast v4, Lo1/n0;

    .line 146
    .line 147
    iput-object v1, v4, Lo1/n0;->i:Lo1/m0;

    .line 148
    .line 149
    move-object v1, v2

    .line 150
    check-cast v1, Lo1/n0;

    .line 151
    .line 152
    iput v3, v1, Lo1/n0;->g:I

    .line 153
    .line 154
    check-cast v2, Lo1/n0;

    .line 155
    .line 156
    iput-boolean v3, v2, Lo1/n0;->k:Z

    .line 157
    .line 158
    goto :goto_5

    .line 159
    :cond_5
    iget-object v1, p0, Landroidx/activity/a;->g:Ljava/lang/Object;

    .line 160
    .line 161
    move-object v5, v1

    .line 162
    check-cast v5, Lo1/n0;

    .line 163
    .line 164
    check-cast v1, Lo1/n0;

    .line 165
    .line 166
    iget-object v1, v1, Lo1/n0;->h:Ljava/util/ArrayList;

    .line 167
    .line 168
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    check-cast v1, Lo1/m0;

    .line 173
    .line 174
    iput-object v1, v5, Lo1/n0;->i:Lo1/m0;

    .line 175
    .line 176
    iget-object v1, p0, Landroidx/activity/a;->g:Ljava/lang/Object;

    .line 177
    .line 178
    check-cast v1, Lo1/n0;

    .line 179
    .line 180
    iget-object v1, v1, Lo1/n0;->h:Ljava/util/ArrayList;

    .line 181
    .line 182
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    const/16 v1, 0xc8

    .line 186
    .line 187
    if-eqz v4, :cond_6

    .line 188
    .line 189
    iget-object v3, p0, Landroidx/activity/a;->g:Ljava/lang/Object;

    .line 190
    .line 191
    check-cast v3, Lo1/n0;

    .line 192
    .line 193
    iget-object v3, v3, Lo1/n0;->c:Landroid/widget/TextView;

    .line 194
    .line 195
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 196
    .line 197
    .line 198
    iget-object v3, p0, Landroidx/activity/a;->g:Ljava/lang/Object;

    .line 199
    .line 200
    move-object v4, v3

    .line 201
    check-cast v4, Lo1/n0;

    .line 202
    .line 203
    iget-object v4, v4, Lo1/n0;->j:Lo1/l0;

    .line 204
    .line 205
    check-cast v3, Lo1/n0;

    .line 206
    .line 207
    iget-object v3, v3, Lo1/n0;->i:Lo1/m0;

    .line 208
    .line 209
    iget-object v3, v3, Lo1/m0;->a:Ljava/lang/String;

    .line 210
    .line 211
    iput-boolean v2, v4, Lo1/l0;->g:Z

    .line 212
    .line 213
    iput-object v3, v4, Lo1/l0;->f:Ljava/lang/String;

    .line 214
    .line 215
    iget-object v2, v4, Lo1/l0;->h:Lo1/n0;

    .line 216
    .line 217
    iget-object v2, v2, Lo1/n0;->a:Landroid/widget/FrameLayout;

    .line 218
    .line 219
    const-wide/16 v5, 0xc8

    .line 220
    .line 221
    invoke-virtual {v2, v4, v5, v6}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 222
    .line 223
    .line 224
    move v3, v1

    .line 225
    goto :goto_4

    .line 226
    :cond_6
    iget-object v2, p0, Landroidx/activity/a;->g:Ljava/lang/Object;

    .line 227
    .line 228
    move-object v4, v2

    .line 229
    check-cast v4, Lo1/n0;

    .line 230
    .line 231
    check-cast v2, Lo1/n0;

    .line 232
    .line 233
    iget-object v2, v2, Lo1/n0;->i:Lo1/m0;

    .line 234
    .line 235
    iget-object v2, v2, Lo1/m0;->a:Ljava/lang/String;

    .line 236
    .line 237
    invoke-static {v4, v2}, Lo1/n0;->a(Lo1/n0;Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    :goto_4
    iget-object v2, p0, Landroidx/activity/a;->g:Ljava/lang/Object;

    .line 241
    .line 242
    move-object v4, v2

    .line 243
    check-cast v4, Lo1/n0;

    .line 244
    .line 245
    move-object v5, v2

    .line 246
    check-cast v5, Lo1/n0;

    .line 247
    .line 248
    iget-object v5, v5, Lo1/n0;->i:Lo1/m0;

    .line 249
    .line 250
    iget v5, v5, Lo1/m0;->b:I

    .line 251
    .line 252
    add-int/2addr v5, v1

    .line 253
    add-int/2addr v5, v3

    .line 254
    iput v5, v4, Lo1/n0;->g:I

    .line 255
    .line 256
    move-object v1, v2

    .line 257
    check-cast v1, Lo1/n0;

    .line 258
    .line 259
    iget-object v1, v1, Lo1/n0;->a:Landroid/widget/FrameLayout;

    .line 260
    .line 261
    check-cast v2, Lo1/n0;

    .line 262
    .line 263
    iget v2, v2, Lo1/n0;->g:I

    .line 264
    .line 265
    int-to-long v2, v2

    .line 266
    invoke-virtual {v1, p0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 267
    .line 268
    .line 269
    :goto_5
    monitor-exit v0

    .line 270
    return-void

    .line 271
    :catchall_0
    move-exception v1

    .line 272
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    throw v1

    .line 274
    :pswitch_6
    :try_start_2
    iget-object v0, p0, Landroidx/activity/a;->g:Ljava/lang/Object;

    .line 275
    .line 276
    check-cast v0, Ljava/lang/Runnable;

    .line 277
    .line 278
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 279
    .line 280
    .line 281
    goto :goto_6

    .line 282
    :catch_1
    const-string v0, "Executor"

    .line 283
    .line 284
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/i0;->Q(Ljava/lang/String;)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    :goto_6
    return-void

    .line 288
    :pswitch_7
    iget-object v0, p0, Landroidx/activity/a;->g:Ljava/lang/Object;

    .line 289
    .line 290
    check-cast v0, Lf0/q;

    .line 291
    .line 292
    iget-object v2, v0, Lf0/q;->c:Lf0/b;

    .line 293
    .line 294
    iput v3, v2, Lf0/b;->a:I

    .line 295
    .line 296
    iget-object v2, v0, Lf0/q;->c:Lf0/b;

    .line 297
    .line 298
    iput-object v1, v2, Lf0/b;->g:Lcom/google/android/gms/internal/play_billing/k3;

    .line 299
    .line 300
    sget-object v1, Lf0/t;->l:Lf0/g;

    .line 301
    .line 302
    iget-object v2, v0, Lf0/q;->c:Lf0/b;

    .line 303
    .line 304
    const/4 v3, 0x6

    .line 305
    const/16 v4, 0x18

    .line 306
    .line 307
    invoke-static {v4, v3, v1}, Lf0/r;->a(IILf0/g;)Lcom/google/android/gms/internal/play_billing/j2;

    .line 308
    .line 309
    .line 310
    move-result-object v3

    .line 311
    invoke-virtual {v2, v3}, Lf0/b;->h(Lcom/google/android/gms/internal/play_billing/j2;)V

    .line 312
    .line 313
    .line 314
    iget-object v2, v0, Lf0/q;->a:Ljava/lang/Object;

    .line 315
    .line 316
    monitor-enter v2

    .line 317
    :try_start_3
    iget-object v0, v0, Lf0/q;->b:Lh/a;

    .line 318
    .line 319
    if-eqz v0, :cond_7

    .line 320
    .line 321
    invoke-virtual {v0, v1}, Lh/a;->C(Lf0/g;)V

    .line 322
    .line 323
    .line 324
    :cond_7
    monitor-exit v2

    .line 325
    return-void

    .line 326
    :catchall_1
    move-exception v0

    .line 327
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 328
    throw v0

    .line 329
    :pswitch_8
    iget-object v0, p0, Landroidx/activity/a;->g:Ljava/lang/Object;

    .line 330
    .line 331
    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    .line 332
    .line 333
    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->j()V

    .line 337
    .line 338
    .line 339
    return-void

    .line 340
    :pswitch_9
    iget-object v0, p0, Landroidx/activity/a;->g:Ljava/lang/Object;

    .line 341
    .line 342
    check-cast v0, Landroidx/lifecycle/u;

    .line 343
    .line 344
    iget v1, v0, Landroidx/lifecycle/u;->b:I

    .line 345
    .line 346
    if-nez v1, :cond_8

    .line 347
    .line 348
    iput-boolean v2, v0, Landroidx/lifecycle/u;->c:Z

    .line 349
    .line 350
    iget-object v1, v0, Landroidx/lifecycle/u;->f:Landroidx/lifecycle/p;

    .line 351
    .line 352
    sget-object v3, Landroidx/lifecycle/h;->ON_PAUSE:Landroidx/lifecycle/h;

    .line 353
    .line 354
    invoke-virtual {v1, v3}, Landroidx/lifecycle/p;->E0(Landroidx/lifecycle/h;)V

    .line 355
    .line 356
    .line 357
    :cond_8
    iget v1, v0, Landroidx/lifecycle/u;->a:I

    .line 358
    .line 359
    if-nez v1, :cond_9

    .line 360
    .line 361
    iget-boolean v1, v0, Landroidx/lifecycle/u;->c:Z

    .line 362
    .line 363
    if-eqz v1, :cond_9

    .line 364
    .line 365
    iget-object v1, v0, Landroidx/lifecycle/u;->f:Landroidx/lifecycle/p;

    .line 366
    .line 367
    sget-object v3, Landroidx/lifecycle/h;->ON_STOP:Landroidx/lifecycle/h;

    .line 368
    .line 369
    invoke-virtual {v1, v3}, Landroidx/lifecycle/p;->E0(Landroidx/lifecycle/h;)V

    .line 370
    .line 371
    .line 372
    iput-boolean v2, v0, Landroidx/lifecycle/u;->d:Z

    .line 373
    .line 374
    :cond_9
    return-void

    .line 375
    :pswitch_a
    iget-object v0, p0, Landroidx/activity/a;->g:Ljava/lang/Object;

    .line 376
    .line 377
    check-cast v0, Ljava/util/ArrayList;

    .line 378
    .line 379
    sget v1, Landroidx/fragment/app/m;->a:I

    .line 380
    .line 381
    if-nez v0, :cond_a

    .line 382
    .line 383
    goto :goto_8

    .line 384
    :cond_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 385
    .line 386
    .line 387
    move-result v1

    .line 388
    :goto_7
    add-int/lit8 v1, v1, -0x1

    .line 389
    .line 390
    if-ltz v1, :cond_b

    .line 391
    .line 392
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    move-result-object v2

    .line 396
    check-cast v2, Landroid/view/View;

    .line 397
    .line 398
    const/4 v3, 0x4

    .line 399
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 400
    .line 401
    .line 402
    goto :goto_7

    .line 403
    :cond_b
    :goto_8
    return-void

    .line 404
    :pswitch_b
    iget-object v0, p0, Landroidx/activity/a;->g:Ljava/lang/Object;

    .line 405
    .line 406
    check-cast v0, Landroidx/fragment/app/f;

    .line 407
    .line 408
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 409
    .line 410
    .line 411
    const/4 v0, 0x0

    .line 412
    throw v0

    .line 413
    :pswitch_c
    iget-object v0, p0, Landroidx/activity/a;->g:Ljava/lang/Object;

    .line 414
    .line 415
    check-cast v0, Landroidx/fragment/app/i;

    .line 416
    .line 417
    invoke-virtual {v0}, Landroidx/fragment/app/i;->a()V

    .line 418
    .line 419
    .line 420
    throw v1

    .line 421
    :pswitch_d
    iget-object v0, p0, Landroidx/activity/a;->g:Ljava/lang/Object;

    .line 422
    .line 423
    check-cast v0, Lv0/j;

    .line 424
    .line 425
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 426
    .line 427
    .line 428
    return-void

    .line 429
    :pswitch_e
    iget-object v0, p0, Landroidx/activity/a;->g:Ljava/lang/Object;

    .line 430
    .line 431
    check-cast v0, Landroidx/drawerlayout/widget/a;

    .line 432
    .line 433
    iget-object v1, v0, Landroidx/drawerlayout/widget/a;->D:Lt/b;

    .line 434
    .line 435
    iget v1, v1, Lt/b;->o:I

    .line 436
    .line 437
    iget v4, v0, Landroidx/drawerlayout/widget/a;->C:I

    .line 438
    .line 439
    const/4 v5, 0x3

    .line 440
    if-ne v4, v5, :cond_c

    .line 441
    .line 442
    move v4, v2

    .line 443
    goto :goto_9

    .line 444
    :cond_c
    move v4, v3

    .line 445
    :goto_9
    iget-object v6, v0, Landroidx/drawerlayout/widget/a;->F:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 446
    .line 447
    const/4 v7, 0x5

    .line 448
    if-eqz v4, :cond_e

    .line 449
    .line 450
    invoke-virtual {v6, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->d(I)Landroid/view/View;

    .line 451
    .line 452
    .line 453
    move-result-object v8

    .line 454
    if-eqz v8, :cond_d

    .line 455
    .line 456
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    .line 457
    .line 458
    .line 459
    move-result v9

    .line 460
    neg-int v9, v9

    .line 461
    goto :goto_a

    .line 462
    :cond_d
    move v9, v3

    .line 463
    :goto_a
    add-int/2addr v9, v1

    .line 464
    goto :goto_b

    .line 465
    :cond_e
    invoke-virtual {v6, v7}, Landroidx/drawerlayout/widget/DrawerLayout;->d(I)Landroid/view/View;

    .line 466
    .line 467
    .line 468
    move-result-object v8

    .line 469
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 470
    .line 471
    .line 472
    move-result v9

    .line 473
    sub-int/2addr v9, v1

    .line 474
    :goto_b
    if-eqz v8, :cond_14

    .line 475
    .line 476
    if-eqz v4, :cond_f

    .line 477
    .line 478
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    .line 479
    .line 480
    .line 481
    move-result v1

    .line 482
    if-lt v1, v9, :cond_10

    .line 483
    .line 484
    :cond_f
    if-nez v4, :cond_14

    .line 485
    .line 486
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    .line 487
    .line 488
    .line 489
    move-result v1

    .line 490
    if-le v1, v9, :cond_14

    .line 491
    .line 492
    :cond_10
    invoke-virtual {v6, v8}, Landroidx/drawerlayout/widget/DrawerLayout;->g(Landroid/view/View;)I

    .line 493
    .line 494
    .line 495
    move-result v1

    .line 496
    if-nez v1, :cond_14

    .line 497
    .line 498
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 499
    .line 500
    .line 501
    move-result-object v1

    .line 502
    check-cast v1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    .line 503
    .line 504
    iget-object v4, v0, Landroidx/drawerlayout/widget/a;->D:Lt/b;

    .line 505
    .line 506
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    .line 507
    .line 508
    .line 509
    move-result v10

    .line 510
    invoke-virtual {v4, v8, v9, v10}, Lt/b;->u(Landroid/view/View;II)Z

    .line 511
    .line 512
    .line 513
    iput-boolean v2, v1, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->c:Z

    .line 514
    .line 515
    invoke-virtual {v6}, Landroid/view/View;->invalidate()V

    .line 516
    .line 517
    .line 518
    iget v1, v0, Landroidx/drawerlayout/widget/a;->C:I

    .line 519
    .line 520
    if-ne v1, v5, :cond_11

    .line 521
    .line 522
    move v5, v7

    .line 523
    :cond_11
    iget-object v0, v0, Landroidx/drawerlayout/widget/a;->F:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 524
    .line 525
    invoke-virtual {v0, v5}, Landroidx/drawerlayout/widget/DrawerLayout;->d(I)Landroid/view/View;

    .line 526
    .line 527
    .line 528
    move-result-object v1

    .line 529
    if-eqz v1, :cond_12

    .line 530
    .line 531
    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->b(Landroid/view/View;)V

    .line 532
    .line 533
    .line 534
    :cond_12
    iget-boolean v0, v6, Landroidx/drawerlayout/widget/DrawerLayout;->q:Z

    .line 535
    .line 536
    if-nez v0, :cond_14

    .line 537
    .line 538
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 539
    .line 540
    .line 541
    move-result-wide v9

    .line 542
    const/4 v11, 0x3

    .line 543
    const/4 v12, 0x0

    .line 544
    const/4 v13, 0x0

    .line 545
    const/4 v14, 0x0

    .line 546
    move-wide v7, v9

    .line 547
    invoke-static/range {v7 .. v14}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 548
    .line 549
    .line 550
    move-result-object v0

    .line 551
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    .line 552
    .line 553
    .line 554
    move-result v1

    .line 555
    :goto_c
    if-ge v3, v1, :cond_13

    .line 556
    .line 557
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 558
    .line 559
    .line 560
    move-result-object v4

    .line 561
    invoke-virtual {v4, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 562
    .line 563
    .line 564
    add-int/lit8 v3, v3, 0x1

    .line 565
    .line 566
    goto :goto_c

    .line 567
    :cond_13
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 568
    .line 569
    .line 570
    iput-boolean v2, v6, Landroidx/drawerlayout/widget/DrawerLayout;->q:Z

    .line 571
    .line 572
    :cond_14
    return-void

    .line 573
    :pswitch_f
    iget-object v0, p0, Landroidx/activity/a;->g:Ljava/lang/Object;

    .line 574
    .line 575
    check-cast v0, Lt/b;

    .line 576
    .line 577
    invoke-virtual {v0, v3}, Lt/b;->r(I)V

    .line 578
    .line 579
    .line 580
    return-void

    .line 581
    :pswitch_10
    :try_start_4
    iget-object v0, p0, Landroidx/activity/a;->g:Ljava/lang/Object;

    .line 582
    .line 583
    check-cast v0, Landroidx/activity/d;

    .line 584
    .line 585
    invoke-static {v0}, Landroidx/activity/d;->d(Landroidx/activity/d;)V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_2

    .line 586
    .line 587
    .line 588
    goto :goto_d

    .line 589
    :catch_2
    move-exception v0

    .line 590
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object v1

    .line 594
    const-string v2, "Can not perform this action after onSaveInstanceState"

    .line 595
    .line 596
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 597
    .line 598
    .line 599
    move-result v1

    .line 600
    if-eqz v1, :cond_15

    .line 601
    .line 602
    :goto_d
    return-void

    .line 603
    :cond_15
    throw v0

    .line 604
    :goto_e
    iget-object v0, p0, Landroidx/activity/a;->g:Ljava/lang/Object;

    .line 605
    .line 606
    check-cast v0, La3/a0;

    .line 607
    .line 608
    check-cast v0, Lw2/p;

    .line 609
    .line 610
    iget-object v0, v0, Lw2/p;->x:[Lw2/o;

    .line 611
    .line 612
    array-length v4, v0

    .line 613
    :goto_f
    if-ge v3, v4, :cond_17

    .line 614
    .line 615
    aget-object v5, v0, v3

    .line 616
    .line 617
    invoke-virtual {v5, v2}, Lw2/o;->k(Z)V

    .line 618
    .line 619
    .line 620
    iget-object v6, v5, Lw2/o;->f:Lh/a;

    .line 621
    .line 622
    if-eqz v6, :cond_16

    .line 623
    .line 624
    iput-object v1, v5, Lw2/o;->f:Lh/a;

    .line 625
    .line 626
    iput-object v1, v5, Lw2/o;->e:Lf2/t;

    .line 627
    .line 628
    :cond_16
    add-int/lit8 v3, v3, 0x1

    .line 629
    .line 630
    goto :goto_f

    .line 631
    :cond_17
    return-void

    .line 632
    nop

    .line 633
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
