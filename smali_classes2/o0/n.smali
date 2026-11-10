.class public final synthetic Lo0/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lo0/n;->f:I

    .line 2
    .line 3
    iput-object p1, p0, Lo0/n;->g:Ljava/lang/Object;

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
    iget v0, p0, Lo0/n;->f:I

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    const/4 v2, 0x2

    .line 5
    const-wide/16 v3, -0x1

    .line 6
    .line 7
    const/16 v5, 0x32

    .line 8
    .line 9
    const/4 v6, 0x5

    .line 10
    const/4 v7, 0x4

    .line 11
    const/4 v8, 0x0

    .line 12
    const/4 v9, 0x0

    .line 13
    const/4 v10, 0x1

    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    goto/16 :goto_1f

    .line 18
    .line 19
    :pswitch_0
    iget-object v0, p0, Lo0/n;->g:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Landroid/content/Context;

    .line 22
    .line 23
    sget-object v1, Lnom/vrd/Launch;->a:Ljava/util/ArrayList;

    .line 24
    .line 25
    const-string v1, "activity"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroid/app/ActivityManager;

    .line 32
    .line 33
    sget-object v1, Lnom/vrd/Launch;->a:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Le2/a;

    .line 50
    .line 51
    :try_start_0
    iget v2, v2, Le2/a;->b:I

    .line 52
    .line 53
    invoke-virtual {v0, v2, v9}, Landroid/app/ActivityManager;->moveTaskToFront(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception v2

    .line 58
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    return-void

    .line 63
    :pswitch_1
    iget-object v0, p0, Lo0/n;->g:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v0, La2/b;

    .line 66
    .line 67
    iget-object v0, v0, La2/b;->g:Lv1/b;

    .line 68
    .line 69
    iget v1, v0, Lv1/b;->c:I

    .line 70
    .line 71
    if-nez v1, :cond_1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    filled-new-array {v1}, [I

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-static {v10, v1, v9}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 79
    .line 80
    .line 81
    iget v1, v0, Lv1/b;->d:I

    .line 82
    .line 83
    filled-new-array {v1}, [I

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-static {v10, v1, v9}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 88
    .line 89
    .line 90
    iput v9, v0, Lv1/b;->d:I

    .line 91
    .line 92
    iput v9, v0, Lv1/b;->c:I

    .line 93
    .line 94
    :goto_1
    return-void

    .line 95
    :pswitch_2
    iget-object v0, p0, Lo0/n;->g:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v0, Lb2/b;

    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    :try_start_1
    iget-object v1, v0, Lb2/b;->c:Ljava/io/BufferedReader;

    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v8
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 108
    :catch_1
    const-string v1, "sdf"

    .line 109
    .line 110
    if-eqz v8, :cond_3

    .line 111
    .line 112
    const-string v2, "NOMone VR Desktop?"

    .line 113
    .line 114
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-nez v2, :cond_2

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_2
    const-string v2, "besm Allah"

    .line 122
    .line 123
    iget-object v3, v0, Lb2/b;->d:Ljava/io/PrintWriter;

    .line 124
    .line 125
    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    iget-object v2, v0, Lb2/b;->d:Ljava/io/PrintWriter;

    .line 129
    .line 130
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 131
    .line 132
    .line 133
    :try_start_2
    iget-object v2, v0, Lb2/b;->c:Ljava/io/BufferedReader;

    .line 134
    .line 135
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 136
    .line 137
    .line 138
    :catch_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    const-string v2, "Server: Handshaked successfully :)"

    .line 142
    .line 143
    invoke-static {v1, v2}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    .line 148
    .line 149
    const/4 v0, 0x0

    .line 150
    throw v0

    .line 151
    :cond_3
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    const-string v3, "Handshake failed! data: "

    .line 154
    .line 155
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    invoke-static {v1, v2}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0}, Lb2/b;->a()V

    .line 169
    .line 170
    .line 171
    return-void

    .line 172
    :pswitch_3
    iget-object v0, p0, Lo0/n;->g:Ljava/lang/Object;

    .line 173
    .line 174
    invoke-static {v0}, La1/b;->j(Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    throw v8

    .line 178
    :pswitch_4
    iget-object v0, p0, Lo0/n;->g:Ljava/lang/Object;

    .line 179
    .line 180
    check-cast v0, Lw1/o;

    .line 181
    .line 182
    iget-boolean v1, v0, Lw1/o;->g:Z

    .line 183
    .line 184
    iget-object v0, v0, Lw1/o;->h:Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;

    .line 185
    .line 186
    if-eqz v1, :cond_4

    .line 187
    .line 188
    sget-object v1, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->j:Lr1/i;

    .line 189
    .line 190
    const-string v1, "ppkt phantom process fixed"

    .line 191
    .line 192
    invoke-static {v1, v10}, Lo1/y;->e(Ljava/lang/String;Z)V

    .line 193
    .line 194
    .line 195
    const v1, 0x7f06006d

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, v1}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->f(I)Z

    .line 199
    .line 200
    .line 201
    invoke-static {v0, v9}, Lcom/google/android/gms/internal/play_billing/i0;->L(Landroid/content/Context;Z)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    const-string v2, "UFBLVFN1Y2Nlc3M"

    .line 206
    .line 207
    goto :goto_3

    .line 208
    :cond_4
    sget-object v1, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->j:Lr1/i;

    .line 209
    .line 210
    const v1, 0x7f06006a

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0, v1}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->f(I)Z

    .line 214
    .line 215
    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    .line 220
    .line 221
    invoke-static {v0, v9}, Lcom/google/android/gms/internal/play_billing/i0;->L(Landroid/content/Context;Z)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    const-string v2, "<pre><br>Failure reason: Fixing failed.</pre><pre>Logcat:<br>===========<br>"

    .line 229
    .line 230
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-static {}, Lo1/m;->e()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    const-string v2, "</pre>"

    .line 241
    .line 242
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    const-string v2, "UFBLVEZhaWxlZA"

    .line 250
    .line 251
    :goto_3
    invoke-static {v2, v1, v9, v9, v8}, Lcom/google/android/gms/internal/play_billing/i0;->e0(Ljava/lang/String;Ljava/lang/String;ZZLq1/z;)V

    .line 252
    .line 253
    .line 254
    iput-boolean v9, v0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->a:Z

    .line 255
    .line 256
    return-void

    .line 257
    :pswitch_5
    iget-object v0, p0, Lo0/n;->g:Ljava/lang/Object;

    .line 258
    .line 259
    check-cast v0, Lw1/s;

    .line 260
    .line 261
    sget-object v1, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->j:Lr1/i;

    .line 262
    .line 263
    check-cast v0, Lw1/m;

    .line 264
    .line 265
    const/4 v1, -0x1

    .line 266
    invoke-virtual {v0, v1, v9}, Lw1/m;->a(IZ)V

    .line 267
    .line 268
    .line 269
    return-void

    .line 270
    :pswitch_6
    iget-object v0, p0, Lo0/n;->g:Ljava/lang/Object;

    .line 271
    .line 272
    check-cast v0, Lq1/v;

    .line 273
    .line 274
    iget-object v0, v0, Lq1/v;->g:Lq1/x;

    .line 275
    .line 276
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 277
    .line 278
    .line 279
    const-string v2, "Settings_Linux_BusyLoop"

    .line 280
    .line 281
    invoke-static {v2, v9}, Lo1/y;->e(Ljava/lang/String;Z)V

    .line 282
    .line 283
    .line 284
    iget-object v2, v0, Lq1/x;->a:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 285
    .line 286
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/i0;->q0(Landroid/content/Context;)Z

    .line 287
    .line 288
    .line 289
    move-result v5

    .line 290
    new-instance v7, Ljava/lang/StringBuilder;

    .line 291
    .line 292
    const-string v11, ""

    .line 293
    .line 294
    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v7

    .line 304
    const-string v12, "sdf"

    .line 305
    .line 306
    invoke-static {v12, v7}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    if-nez v5, :cond_5

    .line 310
    .line 311
    new-instance v5, Ljava/util/Random;

    .line 312
    .line 313
    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    .line 314
    .line 315
    .line 316
    const/16 v7, 0x48

    .line 317
    .line 318
    invoke-virtual {v5, v7}, Ljava/util/Random;->nextInt(I)I

    .line 319
    .line 320
    .line 321
    move-result v5

    .line 322
    add-int/2addr v5, v7

    .line 323
    new-instance v7, Lq1/j;

    .line 324
    .line 325
    invoke-direct {v7, v0, v1}, Lq1/j;-><init>(Lq1/x;I)V

    .line 326
    .line 327
    .line 328
    mul-int/lit16 v5, v5, 0x3e8

    .line 329
    .line 330
    int-to-long v13, v5

    .line 331
    invoke-virtual {v0, v7, v11, v13, v14}, Lq1/x;->k(Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 332
    .line 333
    .line 334
    :cond_5
    new-instance v1, Lcom/nomone/vr_desktop/Applications/LauncherApplication;

    .line 335
    .line 336
    iget-object v5, v0, Lq1/x;->d:Lq1/f;

    .line 337
    .line 338
    invoke-direct {v1, v5}, Lcom/nomone/vr_desktop/Applications/LauncherApplication;-><init>(Lq1/f;)V

    .line 339
    .line 340
    .line 341
    iput-object v1, v0, Lq1/x;->n:Lcom/nomone/vr_desktop/Applications/LauncherApplication;

    .line 342
    .line 343
    iget-object v1, v1, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->b:Lz1/f;

    .line 344
    .line 345
    iget-object v5, v0, Lq1/x;->f:La2/x;

    .line 346
    .line 347
    iget v7, v5, La2/x;->r:F

    .line 348
    .line 349
    neg-float v7, v7

    .line 350
    iget v5, v5, La2/x;->s:F

    .line 351
    .line 352
    neg-float v5, v5

    .line 353
    invoke-virtual {v1, v7, v5}, Lz1/f;->q(FF)V

    .line 354
    .line 355
    .line 356
    iget-object v1, v0, Lq1/x;->i:La2/b0;

    .line 357
    .line 358
    iget-object v5, v0, Lq1/x;->n:Lcom/nomone/vr_desktop/Applications/LauncherApplication;

    .line 359
    .line 360
    iget-object v5, v5, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->c:La2/b;

    .line 361
    .line 362
    invoke-virtual {v1, v5, v10}, La2/e0;->A(La2/r;Z)V

    .line 363
    .line 364
    .line 365
    iget-object v1, v0, Lq1/x;->m:La2/z;

    .line 366
    .line 367
    new-instance v5, Lq1/n;

    .line 368
    .line 369
    invoke-direct {v5, v0, v6}, Lq1/n;-><init>(Lq1/x;I)V

    .line 370
    .line 371
    .line 372
    iput-object v5, v1, La2/a0;->j:Lq1/n;

    .line 373
    .line 374
    iget-object v1, v0, Lq1/x;->i:La2/b0;

    .line 375
    .line 376
    iget-object v5, v0, Lq1/x;->n:Lcom/nomone/vr_desktop/Applications/LauncherApplication;

    .line 377
    .line 378
    iget-object v5, v5, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->c:La2/b;

    .line 379
    .line 380
    invoke-virtual {v1, v5}, La2/e0;->x(La2/r;)V

    .line 381
    .line 382
    .line 383
    const-string v1, "First launch"

    .line 384
    .line 385
    invoke-static {v1, v10}, Lo1/y;->a(Ljava/lang/String;Z)Z

    .line 386
    .line 387
    .line 388
    move-result v5

    .line 389
    const/16 v6, 0x31

    .line 390
    .line 391
    if-eqz v5, :cond_7

    .line 392
    .line 393
    new-instance v5, Ljava/util/Date;

    .line 394
    .line 395
    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    .line 399
    .line 400
    .line 401
    move-result-wide v7

    .line 402
    sget-object v5, Lo1/y;->a:Landroid/content/SharedPreferences;

    .line 403
    .line 404
    const-string v10, "Server signature"

    .line 405
    .line 406
    invoke-interface {v5, v10, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 407
    .line 408
    .line 409
    move-result-wide v13

    .line 410
    cmp-long v3, v13, v3

    .line 411
    .line 412
    if-nez v3, :cond_6

    .line 413
    .line 414
    sget-object v3, Lo1/y;->a:Landroid/content/SharedPreferences;

    .line 415
    .line 416
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 417
    .line 418
    .line 419
    move-result-object v3

    .line 420
    invoke-interface {v3, v10, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 421
    .line 422
    .line 423
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 424
    .line 425
    .line 426
    sget-object v3, Lo1/y;->b:Landroidx/lifecycle/r;

    .line 427
    .line 428
    invoke-virtual {v3, v10}, Landroidx/lifecycle/r;->b(Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    :cond_6
    const-string v3, "App version"

    .line 432
    .line 433
    invoke-static {v6, v3}, Lo1/y;->g(ILjava/lang/String;)V

    .line 434
    .line 435
    .line 436
    invoke-static {v2, v9}, Lcom/google/android/gms/internal/play_billing/i0;->L(Landroid/content/Context;Z)Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v2

    .line 440
    const-string v3, "blatloff"

    .line 441
    .line 442
    const-string v4, "Rmlyc3RMYXVuY2g"

    .line 443
    .line 444
    invoke-static {v3, v4, v2}, Lcom/google/android/gms/internal/play_billing/i0;->f0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    goto :goto_4

    .line 448
    :cond_7
    const-string v3, "App version"

    .line 449
    .line 450
    invoke-static {v3, v9}, Lo1/y;->c(Ljava/lang/String;I)I

    .line 451
    .line 452
    .line 453
    move-result v3

    .line 454
    if-eq v6, v3, :cond_8

    .line 455
    .line 456
    new-instance v3, Ljava/lang/StringBuilder;

    .line 457
    .line 458
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 459
    .line 460
    .line 461
    invoke-static {v2, v9}, Lcom/google/android/gms/internal/play_billing/i0;->L(Landroid/content/Context;Z)Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v2

    .line 465
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    .line 467
    .line 468
    const-string v2, "<pre><br>Old version: "

    .line 469
    .line 470
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    .line 472
    .line 473
    const-string v2, "App version"

    .line 474
    .line 475
    invoke-static {v2, v9}, Lo1/y;->c(Ljava/lang/String;I)I

    .line 476
    .line 477
    .line 478
    move-result v2

    .line 479
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    const-string v2, "</pre>"

    .line 483
    .line 484
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v2

    .line 491
    const-string v3, "QXBwVXBkYXRl"

    .line 492
    .line 493
    invoke-static {v3, v2, v10, v9, v8}, Lcom/google/android/gms/internal/play_billing/i0;->e0(Ljava/lang/String;Ljava/lang/String;ZZLq1/z;)V

    .line 494
    .line 495
    .line 496
    const-string v2, "App version"

    .line 497
    .line 498
    invoke-static {v6, v2}, Lo1/y;->g(ILjava/lang/String;)V

    .line 499
    .line 500
    .line 501
    :cond_8
    :goto_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 502
    .line 503
    .line 504
    move-result-wide v2

    .line 505
    iget-wide v4, v0, Lq1/x;->s:J

    .line 506
    .line 507
    sub-long/2addr v2, v4

    .line 508
    long-to-float v2, v2

    .line 509
    const v3, 0x4e6e6b28    # 1.0E9f

    .line 510
    .line 511
    .line 512
    div-float/2addr v2, v3

    .line 513
    const-string v3, "Performance_Boot_Time"

    .line 514
    .line 515
    invoke-static {v3, v2}, Lo1/y;->f(Ljava/lang/String;F)V

    .line 516
    .line 517
    .line 518
    new-instance v3, Ljava/lang/StringBuilder;

    .line 519
    .line 520
    const-string v4, "Time to start: "

    .line 521
    .line 522
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 523
    .line 524
    .line 525
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 526
    .line 527
    .line 528
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v2

    .line 532
    invoke-static {v12, v2}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    .line 534
    .line 535
    invoke-static {v1, v9}, Lo1/y;->e(Ljava/lang/String;Z)V

    .line 536
    .line 537
    .line 538
    new-instance v1, Ljava/lang/Thread;

    .line 539
    .line 540
    iget-object v2, v0, Lq1/x;->c:Ljava/lang/ThreadGroup;

    .line 541
    .line 542
    new-instance v3, Lq1/j;

    .line 543
    .line 544
    const/16 v4, 0x8

    .line 545
    .line 546
    invoke-direct {v3, v0, v4}, Lq1/j;-><init>(Lq1/x;I)V

    .line 547
    .line 548
    .line 549
    const-string v4, "nomThread1"

    .line 550
    .line 551
    invoke-direct {v1, v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 552
    .line 553
    .line 554
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 555
    .line 556
    .line 557
    iget-object v1, v0, Lq1/x;->d:Lq1/f;

    .line 558
    .line 559
    iget-object v1, v1, Lq1/f;->G:Lu1/o;

    .line 560
    .line 561
    new-instance v2, Lq1/s;

    .line 562
    .line 563
    invoke-direct {v2, v0, v1}, Lq1/s;-><init>(Lq1/x;Lu1/o;)V

    .line 564
    .line 565
    .line 566
    iput-object v2, v1, Lu1/o;->d:Lu1/n;

    .line 567
    .line 568
    invoke-static {}, Lz1/f;->o()F

    .line 569
    .line 570
    .line 571
    move-result v0

    .line 572
    invoke-static {v0}, Lz1/f;->p(F)F

    .line 573
    .line 574
    .line 575
    return-void

    .line 576
    :pswitch_7
    iget-object v0, p0, Lo0/n;->g:Ljava/lang/Object;

    .line 577
    .line 578
    check-cast v0, Landroidx/fragment/app/h;

    .line 579
    .line 580
    iget-object v1, v0, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    .line 581
    .line 582
    check-cast v1, Lq1/x;

    .line 583
    .line 584
    iget-object v1, v1, Lq1/x;->d:Lq1/f;

    .line 585
    .line 586
    iget-boolean v1, v1, Lq1/f;->h:Z

    .line 587
    .line 588
    if-nez v1, :cond_9

    .line 589
    .line 590
    sget-object v1, Lcom/nomone/vr_desktop/Applications/SettingsApplication;->g:Ljava/lang/String;

    .line 591
    .line 592
    const-string v1, "Settings_General_LookingAround"

    .line 593
    .line 594
    invoke-static {v1, v9}, Lo1/y;->a(Ljava/lang/String;Z)Z

    .line 595
    .line 596
    .line 597
    move-result v1

    .line 598
    if-nez v1, :cond_9

    .line 599
    .line 600
    iget-object v1, v0, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    .line 601
    .line 602
    check-cast v1, Lq1/x;

    .line 603
    .line 604
    iget-object v1, v1, Lq1/x;->i:La2/b0;

    .line 605
    .line 606
    iget-object v1, v1, La2/e0;->e:Ljava/util/List;

    .line 607
    .line 608
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 609
    .line 610
    .line 611
    move-result-object v1

    .line 612
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 613
    .line 614
    .line 615
    move-result v2

    .line 616
    if-eqz v2, :cond_9

    .line 617
    .line 618
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 619
    .line 620
    .line 621
    move-result-object v2

    .line 622
    check-cast v2, La2/r;

    .line 623
    .line 624
    iget-object v3, v0, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    .line 625
    .line 626
    check-cast v3, Lq1/x;

    .line 627
    .line 628
    iget-object v3, v3, Lq1/x;->f:La2/x;

    .line 629
    .line 630
    invoke-interface {v2, v3}, La2/r;->h(La2/x;)Z

    .line 631
    .line 632
    .line 633
    goto :goto_5

    .line 634
    :cond_9
    iget-object v0, v0, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    .line 635
    .line 636
    check-cast v0, Lq1/x;

    .line 637
    .line 638
    iget-object v0, v0, Lq1/x;->n:Lcom/nomone/vr_desktop/Applications/LauncherApplication;

    .line 639
    .line 640
    iget-object v0, v0, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->c:La2/b;

    .line 641
    .line 642
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 643
    .line 644
    .line 645
    invoke-static {v0, v9}, La2/r;->w(La2/r;Z)V

    .line 646
    .line 647
    .line 648
    return-void

    .line 649
    :pswitch_8
    iget-object v0, p0, Lo0/n;->g:Ljava/lang/Object;

    .line 650
    .line 651
    check-cast v0, Lu1/r;

    .line 652
    .line 653
    iget-object v1, v0, Lu1/r;->k:Ljava/util/LinkedList;

    .line 654
    .line 655
    monitor-enter v1

    .line 656
    :try_start_3
    iget v2, v0, Lu1/r;->j:F

    .line 657
    .line 658
    iget v3, v0, Lu1/r;->d:F

    .line 659
    .line 660
    cmpg-float v2, v2, v3

    .line 661
    .line 662
    if-gez v2, :cond_a

    .line 663
    .line 664
    iget-object v2, v0, Lu1/r;->k:Ljava/util/LinkedList;

    .line 665
    .line 666
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    .line 667
    .line 668
    .line 669
    move-result v2

    .line 670
    if-lez v2, :cond_b

    .line 671
    .line 672
    iget-object v2, v0, Lu1/r;->b:Lo1/j0;

    .line 673
    .line 674
    iget-object v0, v0, Lu1/r;->l:Lo0/n;

    .line 675
    .line 676
    const-string v3, "dispatch stylus move event"

    .line 677
    .line 678
    invoke-virtual {v2, v3, v0}, Lo1/j0;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 679
    .line 680
    .line 681
    goto :goto_7

    .line 682
    :cond_a
    :goto_6
    iget-object v2, v0, Lu1/r;->k:Ljava/util/LinkedList;

    .line 683
    .line 684
    invoke-virtual {v2}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    .line 685
    .line 686
    .line 687
    move-result-object v2

    .line 688
    check-cast v2, Lu1/q;

    .line 689
    .line 690
    if-eqz v2, :cond_b

    .line 691
    .line 692
    iget-object v3, v0, Lu1/r;->a:Lu1/e;

    .line 693
    .line 694
    iget v4, v2, Lu1/q;->a:F

    .line 695
    .line 696
    iget v2, v2, Lu1/q;->b:F

    .line 697
    .line 698
    invoke-virtual {v3, v4, v2}, Lu1/e;->b(FF)V

    .line 699
    .line 700
    .line 701
    iget-object v2, v0, Lu1/r;->k:Ljava/util/LinkedList;

    .line 702
    .line 703
    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 704
    .line 705
    .line 706
    goto :goto_6

    .line 707
    :cond_b
    :goto_7
    monitor-exit v1

    .line 708
    return-void

    .line 709
    :catchall_0
    move-exception v0

    .line 710
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 711
    throw v0

    .line 712
    :pswitch_9
    iget-object v0, p0, Lo0/n;->g:Ljava/lang/Object;

    .line 713
    .line 714
    check-cast v0, Lu1/o;

    .line 715
    .line 716
    iget-object v1, v0, Lu1/o;->b:Lcom/nomone/vr_desktop/Applications/KeyboardApplication;

    .line 717
    .line 718
    if-nez v1, :cond_c

    .line 719
    .line 720
    goto :goto_8

    .line 721
    :cond_c
    iget-object v1, v1, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->c:La2/b;

    .line 722
    .line 723
    iget-object v1, v1, La2/b;->f:Lq1/u;

    .line 724
    .line 725
    iget-boolean v2, v1, La2/e0;->k:Z

    .line 726
    .line 727
    if-eqz v2, :cond_d

    .line 728
    .line 729
    invoke-virtual {v1, v9}, La2/e0;->B(Z)V

    .line 730
    .line 731
    .line 732
    iget-object v1, v0, Lu1/o;->b:Lcom/nomone/vr_desktop/Applications/KeyboardApplication;

    .line 733
    .line 734
    iget-object v2, v1, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->c:La2/b;

    .line 735
    .line 736
    iget-object v2, v2, La2/b;->f:Lq1/u;

    .line 737
    .line 738
    iput-boolean v9, v2, La2/e0;->m:Z

    .line 739
    .line 740
    iget-object v1, v1, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->d:La2/p;

    .line 741
    .line 742
    iget-object v1, v1, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 743
    .line 744
    const-string v2, "removeKeyTimeouts()"

    .line 745
    .line 746
    invoke-virtual {v1, v2}, Lcom/nomone/GeckoView/MyGeckoView;->f(Ljava/lang/String;)V

    .line 747
    .line 748
    .line 749
    iget-object v0, v0, Lu1/o;->a:Lq1/f;

    .line 750
    .line 751
    invoke-virtual {v0}, Lq1/f;->d()V

    .line 752
    .line 753
    .line 754
    :cond_d
    :goto_8
    return-void

    .line 755
    :pswitch_a
    iget-object v0, p0, Lo0/n;->g:Ljava/lang/Object;

    .line 756
    .line 757
    check-cast v0, Ly0/j0;

    .line 758
    .line 759
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 760
    .line 761
    .line 762
    :try_start_4
    new-instance v1, Ljava/net/ServerSocket;

    .line 763
    .line 764
    const-string v2, "127.0.0.1"

    .line 765
    .line 766
    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 767
    .line 768
    .line 769
    move-result-object v2

    .line 770
    const/16 v3, 0x5dcc

    .line 771
    .line 772
    invoke-direct {v1, v3, v5, v2}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    .line 773
    .line 774
    .line 775
    iput-object v1, v0, Ly0/j0;->i:Ljava/lang/Object;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 776
    .line 777
    :catch_3
    :goto_9
    iget-boolean v1, v0, Ly0/j0;->g:Z

    .line 778
    .line 779
    if-eqz v1, :cond_13

    .line 780
    .line 781
    :try_start_5
    iget-object v1, v0, Ly0/j0;->i:Ljava/lang/Object;

    .line 782
    .line 783
    check-cast v1, Ljava/net/ServerSocket;

    .line 784
    .line 785
    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    .line 786
    .line 787
    .line 788
    move-result-object v1

    .line 789
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    .line 790
    .line 791
    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 792
    .line 793
    .line 794
    const/16 v3, 0x400

    .line 795
    .line 796
    new-array v4, v3, [B

    .line 797
    .line 798
    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 799
    .line 800
    .line 801
    move-result-object v5

    .line 802
    move v6, v9

    .line 803
    :goto_a
    const/16 v7, 0x64

    .line 804
    .line 805
    if-ge v6, v7, :cond_11

    .line 806
    .line 807
    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    .line 808
    .line 809
    .line 810
    move-result v7

    .line 811
    if-lez v7, :cond_10

    .line 812
    .line 813
    :goto_b
    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    .line 814
    .line 815
    .line 816
    move-result v6

    .line 817
    if-lez v6, :cond_f

    .line 818
    .line 819
    if-le v6, v3, :cond_e

    .line 820
    .line 821
    invoke-virtual {v5, v4, v9, v3}, Ljava/io/InputStream;->read([BII)I

    .line 822
    .line 823
    .line 824
    invoke-virtual {v2, v4, v9, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 825
    .line 826
    .line 827
    goto :goto_b

    .line 828
    :cond_e
    invoke-virtual {v5, v4, v9, v6}, Ljava/io/InputStream;->read([BII)I

    .line 829
    .line 830
    .line 831
    invoke-virtual {v2, v4, v9, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 832
    .line 833
    .line 834
    goto :goto_b

    .line 835
    :cond_f
    move v3, v9

    .line 836
    goto :goto_c

    .line 837
    :cond_10
    const-wide/16 v7, 0xa

    .line 838
    .line 839
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    .line 840
    .line 841
    .line 842
    add-int/lit8 v6, v6, 0x1

    .line 843
    .line 844
    goto :goto_a

    .line 845
    :cond_11
    move v3, v10

    .line 846
    :goto_c
    if-eqz v3, :cond_12

    .line 847
    .line 848
    const-string v2, "sdf"

    .line 849
    .line 850
    const-string v3, "Reading from client timeout"

    .line 851
    .line 852
    invoke-static {v2, v3}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    .line 854
    .line 855
    goto :goto_d

    .line 856
    :cond_12
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    .line 857
    .line 858
    .line 859
    move-result-object v2

    .line 860
    invoke-virtual {v0, v2}, Ly0/j0;->d(Ljava/lang/String;)Lj0/j;

    .line 861
    .line 862
    .line 863
    move-result-object v2

    .line 864
    invoke-virtual {v0, v2}, Ly0/j0;->c(Lj0/j;)Lf0/k;

    .line 865
    .line 866
    .line 867
    move-result-object v2

    .line 868
    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 869
    .line 870
    .line 871
    move-result-object v3

    .line 872
    iget-object v4, v2, Lf0/k;->g:Ljava/lang/Object;

    .line 873
    .line 874
    check-cast v4, Ljava/lang/String;

    .line 875
    .line 876
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    .line 877
    .line 878
    .line 879
    move-result-object v4

    .line 880
    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 881
    .line 882
    .line 883
    iget-object v2, v2, Lf0/k;->h:Ljava/lang/Object;

    .line 884
    .line 885
    check-cast v2, [B

    .line 886
    .line 887
    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write([B)V

    .line 888
    .line 889
    .line 890
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 891
    .line 892
    .line 893
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 894
    .line 895
    .line 896
    :goto_d
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 897
    .line 898
    .line 899
    goto :goto_9

    .line 900
    :catch_4
    move-exception v0

    .line 901
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 902
    .line 903
    .line 904
    :cond_13
    return-void

    .line 905
    :pswitch_b
    iget-object v0, p0, Lo0/n;->g:Ljava/lang/Object;

    .line 906
    .line 907
    check-cast v0, Lq1/e;

    .line 908
    .line 909
    iget-object v0, v0, Lq1/e;->k:Ljava/lang/Object;

    .line 910
    .line 911
    check-cast v0, Lq1/f;

    .line 912
    .line 913
    invoke-virtual {v0}, Lq1/f;->d()V

    .line 914
    .line 915
    .line 916
    sget-object v1, Lq1/f;->L:Lo1/j0;

    .line 917
    .line 918
    iget-object v0, v0, Lq1/f;->x:Ljava/lang/Runnable;

    .line 919
    .line 920
    const-string v2, "requestRender() to maybe trigger screensaver"

    .line 921
    .line 922
    const-wide/16 v3, 0x2710

    .line 923
    .line 924
    invoke-virtual {v1, v0, v2, v3, v4}, Lo1/j0;->b(Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 925
    .line 926
    .line 927
    return-void

    .line 928
    :pswitch_c
    iget-object v0, p0, Lo0/n;->g:Ljava/lang/Object;

    .line 929
    .line 930
    check-cast v0, Lq1/f;

    .line 931
    .line 932
    sget-boolean v1, Lq1/f;->K:Z

    .line 933
    .line 934
    invoke-virtual {v0}, Lq1/f;->d()V

    .line 935
    .line 936
    .line 937
    return-void

    .line 938
    :pswitch_d
    iget-object v0, p0, Lo0/n;->g:Ljava/lang/Object;

    .line 939
    .line 940
    check-cast v0, Lr1/b0;

    .line 941
    .line 942
    iget-object v0, v0, Lr1/b0;->D:Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;

    .line 943
    .line 944
    iget-object v0, v0, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->a:Lq1/f;

    .line 945
    .line 946
    invoke-virtual {v0}, Lq1/f;->d()V

    .line 947
    .line 948
    .line 949
    return-void

    .line 950
    :pswitch_e
    iget-object v0, p0, Lo0/n;->g:Ljava/lang/Object;

    .line 951
    .line 952
    check-cast v0, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;

    .line 953
    .line 954
    iget-object v0, v0, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->a:Lq1/f;

    .line 955
    .line 956
    invoke-virtual {v0}, Lq1/f;->d()V

    .line 957
    .line 958
    .line 959
    return-void

    .line 960
    :pswitch_f
    iget-object v0, p0, Lo0/n;->g:Ljava/lang/Object;

    .line 961
    .line 962
    check-cast v0, Ls1/r;

    .line 963
    .line 964
    iput-boolean v10, v0, Ls1/r;->g0:Z

    .line 965
    .line 966
    iget v1, v0, Ls1/r;->l0:I

    .line 967
    .line 968
    if-nez v1, :cond_14

    .line 969
    .line 970
    iput v10, v0, Ls1/r;->l0:I

    .line 971
    .line 972
    :cond_14
    iget v1, v0, Ls1/r;->W:I

    .line 973
    .line 974
    if-gtz v1, :cond_15

    .line 975
    .line 976
    iput v10, v0, Ls1/r;->W:I

    .line 977
    .line 978
    :cond_15
    return-void

    .line 979
    :pswitch_10
    iget-object v0, p0, Lo0/n;->g:Ljava/lang/Object;

    .line 980
    .line 981
    check-cast v0, Ls1/j;

    .line 982
    .line 983
    iget-object v0, v0, Ls1/j;->c:Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;

    .line 984
    .line 985
    iget-object v0, v0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->e:La2/a;

    .line 986
    .line 987
    check-cast v0, Lc2/e;

    .line 988
    .line 989
    iget-object v5, v0, Lc2/e;->w:Ljava/util/ArrayList;

    .line 990
    .line 991
    monitor-enter v5

    .line 992
    :try_start_6
    iget v8, v0, Lc2/e;->y:I

    .line 993
    .line 994
    iget-object v11, v0, Lc2/e;->x:Ljava/util/ArrayList;

    .line 995
    .line 996
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 997
    .line 998
    .line 999
    move-result v11

    .line 1000
    sub-int/2addr v8, v11

    .line 1001
    move v11, v9

    .line 1002
    :goto_e
    if-ge v11, v8, :cond_16

    .line 1003
    .line 1004
    iget-object v12, v0, Lc2/e;->x:Ljava/util/ArrayList;

    .line 1005
    .line 1006
    new-instance v13, Lc2/d;

    .line 1007
    .line 1008
    invoke-direct {v13, v0}, Lc2/d;-><init>(Lc2/e;)V

    .line 1009
    .line 1010
    .line 1011
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1012
    .line 1013
    .line 1014
    add-int/lit8 v11, v11, 0x1

    .line 1015
    .line 1016
    goto :goto_e

    .line 1017
    :cond_16
    iget v8, v0, Lc2/e;->y:I

    .line 1018
    .line 1019
    move v11, v9

    .line 1020
    :goto_f
    if-ge v11, v8, :cond_17

    .line 1021
    .line 1022
    iget-object v12, v0, Lc2/e;->x:Ljava/util/ArrayList;

    .line 1023
    .line 1024
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1025
    .line 1026
    .line 1027
    move-result-object v12

    .line 1028
    check-cast v12, Lc2/d;

    .line 1029
    .line 1030
    iget-object v13, v0, Lc2/e;->w:Ljava/util/ArrayList;

    .line 1031
    .line 1032
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v13

    .line 1036
    check-cast v13, Lc2/d;

    .line 1037
    .line 1038
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1039
    .line 1040
    .line 1041
    iget v14, v13, Lc2/d;->a:I

    .line 1042
    .line 1043
    iput v14, v12, Lc2/d;->a:I

    .line 1044
    .line 1045
    iget v14, v13, Lc2/d;->b:I

    .line 1046
    .line 1047
    iput v14, v12, Lc2/d;->b:I

    .line 1048
    .line 1049
    iget v14, v13, Lc2/d;->c:I

    .line 1050
    .line 1051
    iput v14, v12, Lc2/d;->c:I

    .line 1052
    .line 1053
    iget v14, v13, Lc2/d;->d:I

    .line 1054
    .line 1055
    iput v14, v12, Lc2/d;->d:I

    .line 1056
    .line 1057
    iget v13, v13, Lc2/d;->e:I

    .line 1058
    .line 1059
    iput v13, v12, Lc2/d;->e:I

    .line 1060
    .line 1061
    add-int/lit8 v11, v11, 0x1

    .line 1062
    .line 1063
    goto :goto_f

    .line 1064
    :cond_17
    iput v9, v0, Lc2/e;->y:I

    .line 1065
    .line 1066
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1067
    move v5, v9

    .line 1068
    :goto_10
    if-ge v5, v8, :cond_29

    .line 1069
    .line 1070
    iget-object v11, v0, Lc2/e;->x:Ljava/util/ArrayList;

    .line 1071
    .line 1072
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1073
    .line 1074
    .line 1075
    move-result-object v11

    .line 1076
    check-cast v11, Lc2/d;

    .line 1077
    .line 1078
    iget v12, v11, Lc2/d;->a:I

    .line 1079
    .line 1080
    invoke-static {v12}, Lk0/c;->b(I)I

    .line 1081
    .line 1082
    .line 1083
    move-result v12

    .line 1084
    iget-object v13, v11, Lc2/d;->f:Lc2/e;

    .line 1085
    .line 1086
    const/4 v14, 0x3

    .line 1087
    if-eqz v12, :cond_25

    .line 1088
    .line 1089
    if-eq v12, v10, :cond_24

    .line 1090
    .line 1091
    if-eq v12, v2, :cond_1b

    .line 1092
    .line 1093
    if-eq v12, v14, :cond_1a

    .line 1094
    .line 1095
    if-eq v12, v7, :cond_19

    .line 1096
    .line 1097
    if-eq v12, v6, :cond_18

    .line 1098
    .line 1099
    goto/16 :goto_16

    .line 1100
    .line 1101
    :cond_18
    iget v2, v11, Lc2/d;->b:I

    .line 1102
    .line 1103
    iget v3, v11, Lc2/d;->c:I

    .line 1104
    .line 1105
    invoke-static {v2, v3}, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->nativeKeyUp(II)V

    .line 1106
    .line 1107
    .line 1108
    goto/16 :goto_16

    .line 1109
    .line 1110
    :cond_19
    iget v2, v11, Lc2/d;->b:I

    .line 1111
    .line 1112
    iget v3, v11, Lc2/d;->c:I

    .line 1113
    .line 1114
    invoke-static {v2, v3}, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->nativeKeyDown(II)V

    .line 1115
    .line 1116
    .line 1117
    goto/16 :goto_16

    .line 1118
    .line 1119
    :cond_1a
    iget v2, v11, Lc2/d;->b:I

    .line 1120
    .line 1121
    invoke-static {v2}, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->nativeMouseScroll(I)V

    .line 1122
    .line 1123
    .line 1124
    goto/16 :goto_16

    .line 1125
    .line 1126
    :cond_1b
    iget-object v6, v13, Lc2/e;->s:Lq1/f;

    .line 1127
    .line 1128
    iget-object v6, v6, Lq1/f;->F:Lu1/i;

    .line 1129
    .line 1130
    iget-object v7, v6, Lu1/i;->m:Lo1/v0;

    .line 1131
    .line 1132
    iget-boolean v7, v7, Lo1/v0;->k:Z

    .line 1133
    .line 1134
    if-eqz v7, :cond_1d

    .line 1135
    .line 1136
    iget v6, v6, Lu1/i;->M:I

    .line 1137
    .line 1138
    if-ne v6, v2, :cond_1c

    .line 1139
    .line 1140
    goto :goto_11

    .line 1141
    :cond_1c
    move v2, v9

    .line 1142
    goto :goto_12

    .line 1143
    :cond_1d
    :goto_11
    move v2, v10

    .line 1144
    :goto_12
    iget-boolean v6, v13, Lc2/e;->B:Z

    .line 1145
    .line 1146
    if-eqz v6, :cond_20

    .line 1147
    .line 1148
    if-eqz v2, :cond_20

    .line 1149
    .line 1150
    iget v2, v11, Lc2/d;->b:I

    .line 1151
    .line 1152
    iget v3, v13, Lc2/e;->z:I

    .line 1153
    .line 1154
    sub-int/2addr v2, v3

    .line 1155
    iget v3, v11, Lc2/d;->c:I

    .line 1156
    .line 1157
    iget v4, v13, Lc2/e;->A:I

    .line 1158
    .line 1159
    sub-int/2addr v3, v4

    .line 1160
    int-to-float v4, v2

    .line 1161
    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    .line 1162
    .line 1163
    .line 1164
    move-result v4

    .line 1165
    iget v6, v11, Lc2/d;->d:I

    .line 1166
    .line 1167
    int-to-float v6, v6

    .line 1168
    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    .line 1169
    .line 1170
    .line 1171
    move-result v6

    .line 1172
    cmpl-float v4, v4, v6

    .line 1173
    .line 1174
    if-nez v4, :cond_1e

    .line 1175
    .line 1176
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 1177
    .line 1178
    .line 1179
    move-result v4

    .line 1180
    iget v6, v11, Lc2/d;->d:I

    .line 1181
    .line 1182
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    .line 1183
    .line 1184
    .line 1185
    move-result v6

    .line 1186
    if-le v4, v6, :cond_1e

    .line 1187
    .line 1188
    iput v2, v11, Lc2/d;->d:I

    .line 1189
    .line 1190
    :cond_1e
    int-to-float v2, v3

    .line 1191
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    .line 1192
    .line 1193
    .line 1194
    move-result v2

    .line 1195
    iget v4, v11, Lc2/d;->e:I

    .line 1196
    .line 1197
    int-to-float v4, v4

    .line 1198
    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    .line 1199
    .line 1200
    .line 1201
    move-result v4

    .line 1202
    cmpl-float v2, v2, v4

    .line 1203
    .line 1204
    if-nez v2, :cond_1f

    .line 1205
    .line 1206
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 1207
    .line 1208
    .line 1209
    move-result v2

    .line 1210
    iget v4, v11, Lc2/d;->e:I

    .line 1211
    .line 1212
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 1213
    .line 1214
    .line 1215
    move-result v4

    .line 1216
    if-le v2, v4, :cond_1f

    .line 1217
    .line 1218
    iput v3, v11, Lc2/d;->e:I

    .line 1219
    .line 1220
    :cond_1f
    iget v2, v11, Lc2/d;->d:I

    .line 1221
    .line 1222
    iget v3, v11, Lc2/d;->e:I

    .line 1223
    .line 1224
    invoke-static {v2, v3}, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->nativeMouseDisplace(II)V

    .line 1225
    .line 1226
    .line 1227
    goto :goto_15

    .line 1228
    :cond_20
    invoke-static {}, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->nativeUpdateMouseLocation()V

    .line 1229
    .line 1230
    .line 1231
    invoke-static {}, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->nativeGetMouseX()I

    .line 1232
    .line 1233
    .line 1234
    move-result v2

    .line 1235
    iget v6, v13, Lc2/e;->z:I

    .line 1236
    .line 1237
    sub-int/2addr v2, v6

    .line 1238
    int-to-float v2, v2

    .line 1239
    invoke-static {}, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->nativeGetMouseY()I

    .line 1240
    .line 1241
    .line 1242
    move-result v6

    .line 1243
    iget v7, v13, Lc2/e;->A:I

    .line 1244
    .line 1245
    sub-int/2addr v6, v7

    .line 1246
    int-to-float v6, v6

    .line 1247
    mul-float/2addr v2, v2

    .line 1248
    mul-float/2addr v6, v6

    .line 1249
    add-float/2addr v6, v2

    .line 1250
    float-to-double v6, v6

    .line 1251
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    .line 1252
    .line 1253
    .line 1254
    move-result-wide v6

    .line 1255
    double-to-float v2, v6

    .line 1256
    const/high16 v6, 0x41200000    # 10.0f

    .line 1257
    .line 1258
    cmpl-float v2, v2, v6

    .line 1259
    .line 1260
    if-lez v2, :cond_23

    .line 1261
    .line 1262
    iget-wide v6, v13, Lc2/e;->C:J

    .line 1263
    .line 1264
    cmp-long v2, v6, v3

    .line 1265
    .line 1266
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1267
    .line 1268
    .line 1269
    move-result-wide v3

    .line 1270
    if-nez v2, :cond_21

    .line 1271
    .line 1272
    const-wide/16 v6, 0x3e8

    .line 1273
    .line 1274
    add-long/2addr v3, v6

    .line 1275
    iput-wide v3, v13, Lc2/e;->C:J

    .line 1276
    .line 1277
    goto :goto_14

    .line 1278
    :cond_21
    iget-wide v6, v13, Lc2/e;->C:J

    .line 1279
    .line 1280
    cmp-long v2, v3, v6

    .line 1281
    .line 1282
    if-ltz v2, :cond_22

    .line 1283
    .line 1284
    move v2, v10

    .line 1285
    goto :goto_13

    .line 1286
    :cond_22
    move v2, v9

    .line 1287
    :goto_13
    iput-boolean v2, v13, Lc2/e;->B:Z

    .line 1288
    .line 1289
    :cond_23
    :goto_14
    iget v2, v11, Lc2/d;->b:I

    .line 1290
    .line 1291
    iget v3, v11, Lc2/d;->c:I

    .line 1292
    .line 1293
    invoke-static {v2, v3}, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->nativeMouseMove(II)V

    .line 1294
    .line 1295
    .line 1296
    :goto_15
    iget v2, v11, Lc2/d;->b:I

    .line 1297
    .line 1298
    iput v2, v13, Lc2/e;->z:I

    .line 1299
    .line 1300
    iget v2, v11, Lc2/d;->c:I

    .line 1301
    .line 1302
    iput v2, v13, Lc2/e;->A:I

    .line 1303
    .line 1304
    goto :goto_16

    .line 1305
    :cond_24
    iget v2, v11, Lc2/d;->b:I

    .line 1306
    .line 1307
    invoke-static {v2}, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->nativeMouseUp(I)V

    .line 1308
    .line 1309
    .line 1310
    goto :goto_16

    .line 1311
    :cond_25
    iget v2, v11, Lc2/d;->b:I

    .line 1312
    .line 1313
    invoke-static {v2}, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->nativeMouseDown(I)V

    .line 1314
    .line 1315
    .line 1316
    :goto_16
    iget v2, v11, Lc2/d;->a:I

    .line 1317
    .line 1318
    if-ne v2, v1, :cond_26

    .line 1319
    .line 1320
    iput-boolean v9, v13, Lc2/e;->B:Z

    .line 1321
    .line 1322
    const-wide/16 v2, -0x1

    .line 1323
    .line 1324
    iput-wide v2, v13, Lc2/e;->C:J

    .line 1325
    .line 1326
    invoke-virtual {v13, v10}, Lc2/e;->D(Z)V

    .line 1327
    .line 1328
    .line 1329
    goto :goto_18

    .line 1330
    :cond_26
    iget-object v2, v13, Lc2/e;->r:Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;

    .line 1331
    .line 1332
    iget-object v2, v2, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->d:La2/p;

    .line 1333
    .line 1334
    iget-boolean v2, v2, La2/p;->n0:Z

    .line 1335
    .line 1336
    iget-object v3, v13, Lc2/e;->s:Lq1/f;

    .line 1337
    .line 1338
    iget-object v3, v3, Lq1/f;->F:Lu1/i;

    .line 1339
    .line 1340
    iget v3, v3, Lu1/i;->N:I

    .line 1341
    .line 1342
    if-eq v3, v14, :cond_27

    .line 1343
    .line 1344
    move v3, v10

    .line 1345
    goto :goto_17

    .line 1346
    :cond_27
    move v3, v9

    .line 1347
    :goto_17
    if-ne v3, v2, :cond_28

    .line 1348
    .line 1349
    iput-boolean v9, v13, Lc2/e;->B:Z

    .line 1350
    .line 1351
    const-wide/16 v3, -0x1

    .line 1352
    .line 1353
    iput-wide v3, v13, Lc2/e;->C:J

    .line 1354
    .line 1355
    xor-int/lit8 v2, v2, 0x1

    .line 1356
    .line 1357
    invoke-virtual {v13, v2}, Lc2/e;->D(Z)V

    .line 1358
    .line 1359
    .line 1360
    goto :goto_19

    .line 1361
    :cond_28
    :goto_18
    const-wide/16 v2, -0x1

    .line 1362
    .line 1363
    move-wide v3, v2

    .line 1364
    :goto_19
    add-int/lit8 v5, v5, 0x1

    .line 1365
    .line 1366
    const/4 v2, 0x2

    .line 1367
    const/4 v6, 0x5

    .line 1368
    const/4 v7, 0x4

    .line 1369
    goto/16 :goto_10

    .line 1370
    .line 1371
    :cond_29
    return-void

    .line 1372
    :catchall_1
    move-exception v0

    .line 1373
    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1374
    throw v0

    .line 1375
    :pswitch_11
    iget-object v0, p0, Lo0/n;->g:Ljava/lang/Object;

    .line 1376
    .line 1377
    check-cast v0, Lr1/n;

    .line 1378
    .line 1379
    iget-object v0, v0, Lr1/n;->b:Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;

    .line 1380
    .line 1381
    invoke-virtual {v0}, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->e()V

    .line 1382
    .line 1383
    .line 1384
    return-void

    .line 1385
    :pswitch_12
    iget-object v0, p0, Lo0/n;->g:Ljava/lang/Object;

    .line 1386
    .line 1387
    check-cast v0, Lr1/m;

    .line 1388
    .line 1389
    iget-object v0, v0, Lr1/m;->D:Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;

    .line 1390
    .line 1391
    iget-object v0, v0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->a:Lq1/f;

    .line 1392
    .line 1393
    invoke-virtual {v0}, Lq1/f;->d()V

    .line 1394
    .line 1395
    .line 1396
    return-void

    .line 1397
    :pswitch_13
    iget-object v0, p0, Lo0/n;->g:Ljava/lang/Object;

    .line 1398
    .line 1399
    check-cast v0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;

    .line 1400
    .line 1401
    iget-object v0, v0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->a:Lq1/f;

    .line 1402
    .line 1403
    invoke-virtual {v0}, Lq1/f;->d()V

    .line 1404
    .line 1405
    .line 1406
    return-void

    .line 1407
    :pswitch_14
    iget-object v0, p0, Lo0/n;->g:Ljava/lang/Object;

    .line 1408
    .line 1409
    check-cast v0, Lcom/nomone/vr_desktop/Applications/BrowserApplication;

    .line 1410
    .line 1411
    sget-object v1, Lcom/nomone/vr_desktop/Applications/BrowserApplication;->v:Ljava/lang/String;

    .line 1412
    .line 1413
    iget-object v0, v0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->e:La2/a;

    .line 1414
    .line 1415
    check-cast v0, La2/i;

    .line 1416
    .line 1417
    iget-object v0, v0, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 1418
    .line 1419
    invoke-virtual {v0}, Lcom/nomone/GeckoView/MyGeckoView;->getSession()Lorg/mozilla/geckoview/GeckoSession;

    .line 1420
    .line 1421
    .line 1422
    move-result-object v0

    .line 1423
    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->goBack()V

    .line 1424
    .line 1425
    .line 1426
    return-void

    .line 1427
    :pswitch_15
    iget-object v0, p0, Lo0/n;->g:Ljava/lang/Object;

    .line 1428
    .line 1429
    check-cast v0, Lh/a;

    .line 1430
    .line 1431
    iget-object v1, v0, Lh/a;->g:Ljava/lang/Object;

    .line 1432
    .line 1433
    check-cast v1, Lcom/nomone/giap/GIAP;

    .line 1434
    .line 1435
    iget-object v1, v1, Lcom/nomone/giap/GIAP;->c:Lf0/b;

    .line 1436
    .line 1437
    invoke-virtual {v1, v0}, Lf0/b;->b(Lh/a;)V

    .line 1438
    .line 1439
    .line 1440
    return-void

    .line 1441
    :pswitch_16
    iget-object v0, p0, Lo0/n;->g:Ljava/lang/Object;

    .line 1442
    .line 1443
    check-cast v0, Lo1/w;

    .line 1444
    .line 1445
    iget-object v0, v0, Lo1/w;->a:Lcom/nomone/browser_module/OpenGLView;

    .line 1446
    .line 1447
    iget-object v0, v0, Lcom/nomone/browser_module/OpenGLView;->o:Lo1/u;

    .line 1448
    .line 1449
    check-cast v0, Lq1/e;

    .line 1450
    .line 1451
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1452
    .line 1453
    .line 1454
    const/16 v1, 0x1f01

    .line 1455
    .line 1456
    invoke-static {v1}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    .line 1457
    .line 1458
    .line 1459
    move-result-object v1

    .line 1460
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1461
    .line 1462
    const-string v3, "GL_RENDERER = "

    .line 1463
    .line 1464
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1465
    .line 1466
    .line 1467
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1468
    .line 1469
    .line 1470
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1471
    .line 1472
    .line 1473
    move-result-object v2

    .line 1474
    const-string v3, "sdf"

    .line 1475
    .line 1476
    invoke-static {v3, v2}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    .line 1478
    .line 1479
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1480
    .line 1481
    const-string v4, "GL_VENDOR = "

    .line 1482
    .line 1483
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1484
    .line 1485
    .line 1486
    const/16 v4, 0x1f00

    .line 1487
    .line 1488
    invoke-static {v4}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    .line 1489
    .line 1490
    .line 1491
    move-result-object v4

    .line 1492
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1493
    .line 1494
    .line 1495
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1496
    .line 1497
    .line 1498
    move-result-object v2

    .line 1499
    invoke-static {v3, v2}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1500
    .line 1501
    .line 1502
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1503
    .line 1504
    const-string v4, "GL_VERSION = "

    .line 1505
    .line 1506
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1507
    .line 1508
    .line 1509
    const/16 v4, 0x1f02

    .line 1510
    .line 1511
    invoke-static {v4}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    .line 1512
    .line 1513
    .line 1514
    move-result-object v4

    .line 1515
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1516
    .line 1517
    .line 1518
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1519
    .line 1520
    .line 1521
    move-result-object v2

    .line 1522
    invoke-static {v3, v2}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1523
    .line 1524
    .line 1525
    const-string v2, "Mali-400 MP"

    .line 1526
    .line 1527
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1528
    .line 1529
    .line 1530
    move-result v1

    .line 1531
    iput-boolean v1, v0, Lq1/e;->h:Z

    .line 1532
    .line 1533
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1534
    .line 1535
    const-string v2, "Mali400 workaround status: "

    .line 1536
    .line 1537
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1538
    .line 1539
    .line 1540
    iget-boolean v2, v0, Lq1/e;->h:Z

    .line 1541
    .line 1542
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1543
    .line 1544
    .line 1545
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1546
    .line 1547
    .line 1548
    move-result-object v1

    .line 1549
    invoke-static {v3, v1}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1550
    .line 1551
    .line 1552
    iget-object v0, v0, Lq1/e;->k:Ljava/lang/Object;

    .line 1553
    .line 1554
    check-cast v0, Lq1/f;

    .line 1555
    .line 1556
    iget-object v1, v0, Lq1/f;->q:Lo1/q;

    .line 1557
    .line 1558
    iput-boolean v9, v1, Lo1/q;->c:Z

    .line 1559
    .line 1560
    iget-object v1, v0, Lq1/f;->r:Lo1/q;

    .line 1561
    .line 1562
    iput-boolean v9, v1, Lo1/q;->c:Z

    .line 1563
    .line 1564
    iget-object v1, v0, Lq1/f;->s:Lq1/i;

    .line 1565
    .line 1566
    if-eqz v1, :cond_2a

    .line 1567
    .line 1568
    iput-boolean v9, v1, Lo1/q;->c:Z

    .line 1569
    .line 1570
    :cond_2a
    iget-object v1, v0, Lq1/f;->t:Lq1/i;

    .line 1571
    .line 1572
    if-eqz v1, :cond_2b

    .line 1573
    .line 1574
    iput-boolean v9, v1, Lo1/q;->c:Z

    .line 1575
    .line 1576
    :cond_2b
    sget-object v1, Lo1/r;->a:Ljava/util/ArrayList;

    .line 1577
    .line 1578
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1579
    .line 1580
    .line 1581
    iget-object v1, v0, Lq1/f;->e:La2/c0;

    .line 1582
    .line 1583
    invoke-interface {v1}, La2/c0;->n()Ljava/util/List;

    .line 1584
    .line 1585
    .line 1586
    move-result-object v1

    .line 1587
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1588
    .line 1589
    .line 1590
    move-result-object v1

    .line 1591
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1592
    .line 1593
    .line 1594
    move-result v2

    .line 1595
    if-eqz v2, :cond_2c

    .line 1596
    .line 1597
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1598
    .line 1599
    .line 1600
    move-result-object v2

    .line 1601
    check-cast v2, La2/r;

    .line 1602
    .line 1603
    invoke-interface {v2}, La2/r;->a()V

    .line 1604
    .line 1605
    .line 1606
    goto :goto_1a

    .line 1607
    :cond_2c
    :goto_1b
    iget-object v1, v0, Lq1/f;->k:Ljava/util/List;

    .line 1608
    .line 1609
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 1610
    .line 1611
    .line 1612
    move-result v2

    .line 1613
    if-ge v9, v2, :cond_2d

    .line 1614
    .line 1615
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1616
    .line 1617
    .line 1618
    move-result-object v1

    .line 1619
    check-cast v1, Lq1/d;

    .line 1620
    .line 1621
    invoke-interface {v1}, Lq1/d;->b()V

    .line 1622
    .line 1623
    .line 1624
    add-int/lit8 v9, v9, 0x1

    .line 1625
    .line 1626
    goto :goto_1b

    .line 1627
    :cond_2d
    return-void

    .line 1628
    :pswitch_17
    iget-object v0, p0, Lo0/n;->g:Ljava/lang/Object;

    .line 1629
    .line 1630
    check-cast v0, Lo1/l;

    .line 1631
    .line 1632
    iget-object v1, v0, Lo1/l;->f:Ljava/util/LinkedList;

    .line 1633
    .line 1634
    monitor-enter v1

    .line 1635
    :try_start_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 1636
    .line 1637
    .line 1638
    move-result-wide v2

    .line 1639
    :goto_1c
    iget-object v4, v0, Lo1/l;->f:Ljava/util/LinkedList;

    .line 1640
    .line 1641
    invoke-virtual {v4}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    .line 1642
    .line 1643
    .line 1644
    move-result-object v4

    .line 1645
    check-cast v4, Lo1/i;

    .line 1646
    .line 1647
    if-eqz v4, :cond_30

    .line 1648
    .line 1649
    iget-wide v5, v4, Lo1/i;->c:J

    .line 1650
    .line 1651
    cmp-long v5, v5, v2

    .line 1652
    .line 1653
    if-lez v5, :cond_2e

    .line 1654
    .line 1655
    goto :goto_1e

    .line 1656
    :cond_2e
    instance-of v5, v4, Lo1/j;

    .line 1657
    .line 1658
    if-eqz v5, :cond_2f

    .line 1659
    .line 1660
    iget v5, v4, Lo1/i;->a:F

    .line 1661
    .line 1662
    iget v6, v4, Lo1/i;->b:F

    .line 1663
    .line 1664
    iget-object v7, v0, Lo1/l;->c:Lu1/d;

    .line 1665
    .line 1666
    check-cast v4, Lo1/j;

    .line 1667
    .line 1668
    iget-boolean v4, v4, Lo1/j;->d:Z

    .line 1669
    .line 1670
    invoke-virtual {v7, v5, v6, v4}, Lu1/d;->c(FFZ)V

    .line 1671
    .line 1672
    .line 1673
    goto :goto_1d

    .line 1674
    :cond_2f
    iget-object v5, v0, Lo1/l;->c:Lu1/d;

    .line 1675
    .line 1676
    iget v6, v4, Lo1/i;->a:F

    .line 1677
    .line 1678
    iget v4, v4, Lo1/i;->b:F

    .line 1679
    .line 1680
    iget-object v5, v5, Lu1/d;->c:Ljava/lang/Object;

    .line 1681
    .line 1682
    move-object v7, v5

    .line 1683
    check-cast v7, Lu1/i;

    .line 1684
    .line 1685
    invoke-virtual {v7}, Lu1/i;->i()V

    .line 1686
    .line 1687
    .line 1688
    move-object v7, v5

    .line 1689
    check-cast v7, Lu1/i;

    .line 1690
    .line 1691
    const/4 v8, 0x2

    .line 1692
    invoke-static {v7, v8}, Lu1/i;->d(Lu1/i;I)V

    .line 1693
    .line 1694
    .line 1695
    check-cast v5, Lu1/i;

    .line 1696
    .line 1697
    neg-float v6, v6

    .line 1698
    neg-float v4, v4

    .line 1699
    invoke-virtual {v5}, Lu1/i;->m()V

    .line 1700
    .line 1701
    .line 1702
    invoke-virtual {v5, v9}, Lu1/i;->k(Z)V

    .line 1703
    .line 1704
    .line 1705
    iget-object v5, v5, Lu1/i;->r:Lu1/v;

    .line 1706
    .line 1707
    invoke-virtual {v5, v6, v4, v10}, Lu1/v;->c(FFZ)V

    .line 1708
    .line 1709
    .line 1710
    :goto_1d
    iget-object v4, v0, Lo1/l;->f:Ljava/util/LinkedList;

    .line 1711
    .line 1712
    invoke-virtual {v4}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 1713
    .line 1714
    .line 1715
    goto :goto_1c

    .line 1716
    :cond_30
    :goto_1e
    iget-object v2, v0, Lo1/l;->f:Ljava/util/LinkedList;

    .line 1717
    .line 1718
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    .line 1719
    .line 1720
    .line 1721
    move-result v2

    .line 1722
    if-lez v2, :cond_31

    .line 1723
    .line 1724
    iget-object v2, v0, Lo1/l;->b:Lo1/j0;

    .line 1725
    .line 1726
    iget-object v0, v0, Lo1/l;->g:Lo0/n;

    .line 1727
    .line 1728
    const-string v3, "dispatch mouse queued event"

    .line 1729
    .line 1730
    invoke-virtual {v2, v3, v0}, Lo1/j0;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 1731
    .line 1732
    .line 1733
    :cond_31
    monitor-exit v1

    .line 1734
    return-void

    .line 1735
    :catchall_2
    move-exception v0

    .line 1736
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1737
    throw v0

    .line 1738
    :pswitch_18
    iget-object v0, p0, Lo0/n;->g:Ljava/lang/Object;

    .line 1739
    .line 1740
    check-cast v0, Lo0/o;

    .line 1741
    .line 1742
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1743
    .line 1744
    .line 1745
    new-instance v1, Lh0/b;

    .line 1746
    .line 1747
    const/4 v2, 0x4

    .line 1748
    invoke-direct {v1, v0, v2}, Lh0/b;-><init>(Ljava/lang/Object;I)V

    .line 1749
    .line 1750
    .line 1751
    iget-object v0, v0, Lo0/o;->d:Lq0/c;

    .line 1752
    .line 1753
    check-cast v0, Lp0/k;

    .line 1754
    .line 1755
    invoke-virtual {v0, v1}, Lp0/k;->e(Lq0/b;)Ljava/lang/Object;

    .line 1756
    .line 1757
    .line 1758
    return-void

    .line 1759
    :goto_1f
    iget-object v0, p0, Lo0/n;->g:Ljava/lang/Object;

    .line 1760
    .line 1761
    check-cast v0, Ljava/lang/String;

    .line 1762
    .line 1763
    invoke-static {v0}, Lorg/mozilla/gecko/util/XPCOMEventTarget;->a(Ljava/lang/String;)V

    .line 1764
    .line 1765
    .line 1766
    return-void

    .line 1767
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
