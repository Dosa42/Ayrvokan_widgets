.class public final synthetic Lr1/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln1/m;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lr1/j;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lr1/j;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 11

    .line 1
    const/4 v0, 0x2

    .line 2
    iget v1, p0, Lr1/j;->a:I

    .line 3
    .line 4
    const-string v2, "Sorry!"

    .line 5
    .line 6
    const-string v3, "\';"

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x1

    .line 10
    iget-object v6, p0, Lr1/j;->b:Ljava/lang/Object;

    .line 11
    .line 12
    packed-switch v1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    goto/16 :goto_b

    .line 16
    .line 17
    :pswitch_0
    check-cast v6, La2/i;

    .line 18
    .line 19
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    const-string v1, "Start drawing frame"

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    instance-of p1, v6, La2/p;

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const-string v1, "Start drawing content"

    .line 36
    .line 37
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    instance-of p1, v6, La2/p;

    .line 44
    .line 45
    if-nez p1, :cond_1

    .line 46
    .line 47
    :goto_0
    sget-object p1, Lq1/f;->L:Lo1/j0;

    .line 48
    .line 49
    new-instance v1, La2/d;

    .line 50
    .line 51
    invoke-direct {v1, v6, v0}, La2/d;-><init>(La2/i;I)V

    .line 52
    .line 53
    .line 54
    const/16 v0, 0xc8

    .line 55
    .line 56
    int-to-long v2, v0

    .line 57
    const-string v0, "startDrawing"

    .line 58
    .line 59
    invoke-virtual {p1, v1, v0, v2, v3}, Lo1/j0;->b(Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 60
    .line 61
    .line 62
    :cond_1
    return v4

    .line 63
    :pswitch_1
    check-cast v6, Lcom/nomone/vr_desktop/Applications/LauncherApplication;

    .line 64
    .line 65
    sget-object v0, Lcom/nomone/vr_desktop/Applications/LauncherApplication;->h:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    const-string v0, "tickClock"

    .line 71
    .line 72
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_2

    .line 77
    .line 78
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const/16 v0, 0xb

    .line 83
    .line 84
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    const/16 v1, 0xc

    .line 93
    .line 94
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    filled-new-array {v0, p1}, [Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    const-string v0, "%02d:%02d"

    .line 107
    .line 108
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    iget-object v0, v6, Lcom/nomone/vr_desktop/Applications/LauncherApplication;->g:La2/p;

    .line 113
    .line 114
    iget-object v0, v0, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 115
    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string v2, "clockElement.textContent = \'"

    .line 119
    .line 120
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {v0, p1}, Lcom/nomone/GeckoView/MyGeckoView;->f(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    goto/16 :goto_5

    .line 137
    .line 138
    :cond_2
    const-string v0, "RequestStoragePermission"

    .line 139
    .line 140
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    iget-object v1, v6, Lcom/nomone/vr_desktop/Applications/LauncherApplication;->f:Lq1/f;

    .line 145
    .line 146
    if-eqz v0, :cond_d

    .line 147
    .line 148
    iget-object p1, v1, Lq1/f;->b:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 149
    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 159
    .line 160
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 161
    .line 162
    const/16 v7, 0x1d

    .line 163
    .line 164
    if-lt v0, v7, :cond_4

    .line 165
    .line 166
    if-gt v3, v7, :cond_3

    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_3
    move v0, v4

    .line 170
    goto :goto_2

    .line 171
    :cond_4
    :goto_1
    move v0, v5

    .line 172
    :goto_2
    const-string v8, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 173
    .line 174
    const/16 v9, 0x1e

    .line 175
    .line 176
    if-eqz v0, :cond_6

    .line 177
    .line 178
    invoke-virtual {p1, v8}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    .line 179
    .line 180
    .line 181
    move-result p1

    .line 182
    if-nez p1, :cond_5

    .line 183
    .line 184
    goto :goto_3

    .line 185
    :cond_5
    move p1, v4

    .line 186
    goto :goto_4

    .line 187
    :cond_6
    if-lt v3, v9, :cond_7

    .line 188
    .line 189
    invoke-static {}, Lo1/z0;->b()Z

    .line 190
    .line 191
    .line 192
    move-result p1

    .line 193
    goto :goto_4

    .line 194
    :cond_7
    :goto_3
    move p1, v5

    .line 195
    :goto_4
    if-eqz p1, :cond_8

    .line 196
    .line 197
    new-instance p1, Lr1/y;

    .line 198
    .line 199
    invoke-direct {p1, v1}, Lr1/y;-><init>(Lq1/f;)V

    .line 200
    .line 201
    .line 202
    const-string v0, "Already done!"

    .line 203
    .line 204
    iput-object v0, p1, Lr1/y;->d:Ljava/lang/String;

    .line 205
    .line 206
    const-string v0, "The app already has storage permission. You should find it mounted at <strong>/storage</strong> inside Linux."

    .line 207
    .line 208
    iput-object v0, p1, Lr1/y;->e:Ljava/lang/String;

    .line 209
    .line 210
    const/16 v0, 0x1a4

    .line 211
    .line 212
    const/16 v1, 0xc3

    .line 213
    .line 214
    invoke-virtual {p1, v0, v1}, Lr1/y;->d(II)V

    .line 215
    .line 216
    .line 217
    invoke-static {p1, v6}, Lcom/nomone/vr_desktop/Applications/PromptApplication;->g(Lr1/y;Lr1/c;)Lcom/nomone/vr_desktop/Applications/PromptApplication;

    .line 218
    .line 219
    .line 220
    goto/16 :goto_5

    .line 221
    .line 222
    :cond_8
    iget-object p1, v1, Lq1/f;->b:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 223
    .line 224
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v10

    .line 232
    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    if-eqz v0, :cond_9

    .line 237
    .line 238
    const-string v10, "com.android.vending"

    .line 239
    .line 240
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v0

    .line 244
    if-eqz v0, :cond_9

    .line 245
    .line 246
    new-instance v0, Lr1/y;

    .line 247
    .line 248
    invoke-direct {v0, v1}, Lr1/y;-><init>(Lq1/f;)V

    .line 249
    .line 250
    .line 251
    iput-object v2, v0, Lr1/y;->d:Ljava/lang/String;

    .line 252
    .line 253
    const-string v1, "We sent an update that adds storage access to Google Play, but it was rejected because it\'s not a <strong>core feature</strong>, meaning that the app won\'t be useless without it.<br><br>But this is a problem only because you downloaded the app from Google Play. Head to our official website:<br><br>&nbsp&nbsp&nbsp&nbsp <a id=\'websiteLink\' href=\'\'>desktop.nomone.com</a><br><br>to know your options."

    .line 254
    .line 255
    iput-object v1, v0, Lr1/y;->e:Ljava/lang/String;

    .line 256
    .line 257
    const/16 v1, 0x1cc

    .line 258
    .line 259
    const/16 v2, 0x168

    .line 260
    .line 261
    invoke-virtual {v0, v1, v2}, Lr1/y;->d(II)V

    .line 262
    .line 263
    .line 264
    new-instance v1, Ld3/o0;

    .line 265
    .line 266
    invoke-direct {v1, v6, v4}, Ld3/o0;-><init>(Ljava/lang/Object;I)V

    .line 267
    .line 268
    .line 269
    iput-object v1, v0, Lr1/y;->p:Lr1/x;

    .line 270
    .line 271
    new-instance v1, Landroidx/fragment/app/h;

    .line 272
    .line 273
    const/16 v2, 0x12

    .line 274
    .line 275
    invoke-direct {v1, v2, v6, p1}, Landroidx/fragment/app/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 276
    .line 277
    .line 278
    iput-object v1, v0, Lr1/y;->o:Lr1/w;

    .line 279
    .line 280
    invoke-static {v0, v6}, Lcom/nomone/vr_desktop/Applications/PromptApplication;->g(Lr1/y;Lr1/c;)Lcom/nomone/vr_desktop/Applications/PromptApplication;

    .line 281
    .line 282
    .line 283
    goto :goto_5

    .line 284
    :cond_9
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 293
    .line 294
    if-lt v0, v7, :cond_a

    .line 295
    .line 296
    if-gt v3, v7, :cond_b

    .line 297
    .line 298
    :cond_a
    move v4, v5

    .line 299
    :cond_b
    if-eqz v4, :cond_c

    .line 300
    .line 301
    invoke-virtual {p1, v8}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    .line 302
    .line 303
    .line 304
    move-result v0

    .line 305
    if-eqz v0, :cond_c

    .line 306
    .line 307
    filled-new-array {v8}, [Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    invoke-virtual {p1, v0, v5}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 312
    .line 313
    .line 314
    goto :goto_5

    .line 315
    :cond_c
    if-lt v3, v9, :cond_f

    .line 316
    .line 317
    invoke-static {}, Lo1/z0;->b()Z

    .line 318
    .line 319
    .line 320
    move-result v0

    .line 321
    if-nez v0, :cond_f

    .line 322
    .line 323
    const-string v0, "package:nom.vrd"

    .line 324
    .line 325
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    .line 330
    .line 331
    const-string v2, "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

    .line 332
    .line 333
    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    .line 338
    .line 339
    goto :goto_5

    .line 340
    :catch_0
    move-exception p1

    .line 341
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 342
    .line 343
    .line 344
    goto :goto_5

    .line 345
    :cond_d
    const-string v0, "PhantomProcessKillingTutorial"

    .line 346
    .line 347
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    move-result v0

    .line 351
    if-eqz v0, :cond_e

    .line 352
    .line 353
    const-string p1, "<pre><br>Initiated from launcher.<br></pre>"

    .line 354
    .line 355
    invoke-static {v1, p1}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->n(Lq1/f;Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    goto :goto_5

    .line 359
    :cond_e
    invoke-static {v1, v6, p1}, Lcom/nomone/vr_desktop/Applications/LauncherApplication;->f(Lq1/f;Lr1/c;Ljava/lang/String;)Lr1/c;

    .line 360
    .line 361
    .line 362
    move-result-object p1

    .line 363
    if-eqz p1, :cond_10

    .line 364
    .line 365
    :cond_f
    :goto_5
    move v4, v5

    .line 366
    :cond_10
    return v4

    .line 367
    :pswitch_2
    check-cast v6, Lcom/nomone/vr_desktop/Applications/FileManagerApplication;

    .line 368
    .line 369
    sget-object v1, Lcom/nomone/vr_desktop/Applications/FileManagerApplication;->h:Ljava/lang/String;

    .line 370
    .line 371
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 372
    .line 373
    .line 374
    const-string v1, "Change path: "

    .line 375
    .line 376
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 377
    .line 378
    .line 379
    move-result v1

    .line 380
    const-string v7, ":"

    .line 381
    .line 382
    if-eqz v1, :cond_11

    .line 383
    .line 384
    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 385
    .line 386
    .line 387
    move-result v1

    .line 388
    add-int/2addr v1, v0

    .line 389
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object p1

    .line 393
    invoke-virtual {v6, p1}, Lcom/nomone/vr_desktop/Applications/FileManagerApplication;->e(Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    goto/16 :goto_a

    .line 397
    .line 398
    :cond_11
    const-string v1, "Open file: "

    .line 399
    .line 400
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 401
    .line 402
    .line 403
    move-result v1

    .line 404
    if-eqz v1, :cond_16

    .line 405
    .line 406
    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 407
    .line 408
    .line 409
    move-result v1

    .line 410
    add-int/2addr v1, v0

    .line 411
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object p1

    .line 415
    const-string v0, "#"

    .line 416
    .line 417
    const-string v1, "%23"

    .line 418
    .line 419
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object p1

    .line 423
    const-string v0, "\'"

    .line 424
    .line 425
    const-string v1, "%27"

    .line 426
    .line 427
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object p1

    .line 431
    const-string v0, "."

    .line 432
    .line 433
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 434
    .line 435
    .line 436
    move-result v0

    .line 437
    add-int/2addr v0, v5

    .line 438
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v0

    .line 442
    const-string v1, "pdf"

    .line 443
    .line 444
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 445
    .line 446
    .line 447
    move-result v1

    .line 448
    iget-object v7, v6, Lcom/nomone/vr_desktop/Applications/FileManagerApplication;->f:Lq1/f;

    .line 449
    .line 450
    if-eqz v1, :cond_13

    .line 451
    .line 452
    iget-object v0, v7, Lq1/f;->b:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 453
    .line 454
    const-string v1, "apps/pdf"

    .line 455
    .line 456
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/i0;->I(Lcom/nomone/vr_desktop/LaunchActivity;Ljava/lang/String;)Ljava/io/File;

    .line 457
    .line 458
    .line 459
    move-result-object v0

    .line 460
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 461
    .line 462
    .line 463
    move-result v4

    .line 464
    if-nez v4, :cond_12

    .line 465
    .line 466
    iget-object v4, v7, Lq1/f;->b:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 467
    .line 468
    invoke-static {v4, v1}, Lcom/google/android/gms/internal/play_billing/i0;->I(Lcom/nomone/vr_desktop/LaunchActivity;Ljava/lang/String;)Ljava/io/File;

    .line 469
    .line 470
    .line 471
    move-result-object v8

    .line 472
    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 473
    .line 474
    .line 475
    move-result-object v4

    .line 476
    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v9

    .line 480
    invoke-static {v4, v1, v9}, Lcom/google/android/gms/internal/play_billing/i0;->q(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z

    .line 481
    .line 482
    .line 483
    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    :cond_12
    const-string v1, "window.nomonePdfUrl = \'file://"

    .line 487
    .line 488
    invoke-static {v1, p1, v3}, La1/b;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object p1

    .line 492
    new-instance v1, Ljava/lang/StringBuilder;

    .line 493
    .line 494
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 495
    .line 496
    .line 497
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v0

    .line 501
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    const-string v0, "/web/nomoneMod.js"

    .line 505
    .line 506
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    .line 508
    .line 509
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v0

    .line 513
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/i0;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    const-string p1, "Launch:apps/pdf,fromCache,dimensions:520x400,scaleDimensions"

    .line 517
    .line 518
    goto :goto_7

    .line 519
    :cond_13
    sget-object v1, Lcom/nomone/vr_desktop/Applications/FileManagerApplication;->i:[Ljava/lang/String;

    .line 520
    .line 521
    array-length v3, v1

    .line 522
    move v8, v4

    .line 523
    :goto_6
    if-ge v8, v3, :cond_15

    .line 524
    .line 525
    aget-object v9, v1, v8

    .line 526
    .line 527
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 528
    .line 529
    .line 530
    move-result v9

    .line 531
    if-eqz v9, :cond_14

    .line 532
    .line 533
    const-string v0, "Launch:file://"

    .line 534
    .line 535
    const-string v1, ",dimensions:520x400,scaleDimensions"

    .line 536
    .line 537
    invoke-static {v0, p1, v1}, La1/b;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 538
    .line 539
    .line 540
    move-result-object p1

    .line 541
    :goto_7
    invoke-static {v7, v6, p1}, Lcom/nomone/vr_desktop/Applications/LauncherApplication;->f(Lq1/f;Lr1/c;Ljava/lang/String;)Lr1/c;

    .line 542
    .line 543
    .line 544
    move v4, v5

    .line 545
    goto :goto_8

    .line 546
    :cond_14
    add-int/lit8 v8, v8, 0x1

    .line 547
    .line 548
    goto :goto_6

    .line 549
    :cond_15
    :goto_8
    if-nez v4, :cond_18

    .line 550
    .line 551
    new-instance p1, Lr1/y;

    .line 552
    .line 553
    invoke-direct {p1, v7}, Lr1/y;-><init>(Lq1/f;)V

    .line 554
    .line 555
    .line 556
    iput-object v2, p1, Lr1/y;->d:Ljava/lang/String;

    .line 557
    .line 558
    const-string v0, "Extension not supported (yet)."

    .line 559
    .line 560
    iput-object v0, p1, Lr1/y;->e:Ljava/lang/String;

    .line 561
    .line 562
    const/16 v0, 0x12c

    .line 563
    .line 564
    const/16 v1, 0xaa

    .line 565
    .line 566
    invoke-virtual {p1, v0, v1}, Lr1/y;->d(II)V

    .line 567
    .line 568
    .line 569
    invoke-static {p1, v6}, Lcom/nomone/vr_desktop/Applications/PromptApplication;->g(Lr1/y;Lr1/c;)Lcom/nomone/vr_desktop/Applications/PromptApplication;

    .line 570
    .line 571
    .line 572
    goto :goto_a

    .line 573
    :cond_16
    const-string v0, "Go up"

    .line 574
    .line 575
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 576
    .line 577
    .line 578
    move-result p1

    .line 579
    if-eqz p1, :cond_19

    .line 580
    .line 581
    :try_start_1
    iget-object p1, v6, Lcom/nomone/vr_desktop/Applications/FileManagerApplication;->g:Ljava/io/File;

    .line 582
    .line 583
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 584
    .line 585
    .line 586
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 587
    goto :goto_9

    .line 588
    :catch_1
    const/4 p1, 0x0

    .line 589
    :goto_9
    if-nez p1, :cond_17

    .line 590
    .line 591
    goto :goto_a

    .line 592
    :cond_17
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 593
    .line 594
    .line 595
    move-result-object p1

    .line 596
    invoke-virtual {v6, p1}, Lcom/nomone/vr_desktop/Applications/FileManagerApplication;->e(Ljava/lang/String;)V

    .line 597
    .line 598
    .line 599
    :cond_18
    :goto_a
    move v4, v5

    .line 600
    :cond_19
    return v4

    .line 601
    :goto_b
    check-cast v6, La2/p;

    .line 602
    .line 603
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 604
    .line 605
    .line 606
    const-string v0, "Theme started"

    .line 607
    .line 608
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 609
    .line 610
    .line 611
    move-result v0

    .line 612
    if-eqz v0, :cond_1a

    .line 613
    .line 614
    iget-object p1, v6, La2/p;->L:Ljava/lang/String;

    .line 615
    .line 616
    invoke-virtual {v6, p1}, La2/p;->P(Ljava/lang/String;)V

    .line 617
    .line 618
    .line 619
    goto :goto_c

    .line 620
    :cond_1a
    const-string v0, "stopMovingAndResizing"

    .line 621
    .line 622
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 623
    .line 624
    .line 625
    move-result v0

    .line 626
    iget-boolean v1, v6, La2/p;->N:Z

    .line 627
    .line 628
    if-eqz v0, :cond_1b

    .line 629
    .line 630
    if-nez v1, :cond_1e

    .line 631
    .line 632
    iput-boolean v4, v6, La2/p;->Q:Z

    .line 633
    .line 634
    iput-boolean v4, v6, La2/p;->X:Z

    .line 635
    .line 636
    goto :goto_c

    .line 637
    :cond_1b
    const-string v0, "startMoving"

    .line 638
    .line 639
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 640
    .line 641
    .line 642
    move-result v0

    .line 643
    if-eqz v0, :cond_1c

    .line 644
    .line 645
    if-nez v1, :cond_1e

    .line 646
    .line 647
    iput-boolean v4, v6, La2/p;->X:Z

    .line 648
    .line 649
    iput-boolean v5, v6, La2/p;->R:Z

    .line 650
    .line 651
    iput-boolean v5, v6, La2/p;->Q:Z

    .line 652
    .line 653
    goto :goto_c

    .line 654
    :cond_1c
    const-string v0, "startResizing"

    .line 655
    .line 656
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 657
    .line 658
    .line 659
    move-result v0

    .line 660
    if-eqz v0, :cond_1d

    .line 661
    .line 662
    if-nez v1, :cond_1e

    .line 663
    .line 664
    const-string v0, " "

    .line 665
    .line 666
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 667
    .line 668
    .line 669
    move-result-object p1

    .line 670
    aget-object p1, p1, v5

    .line 671
    .line 672
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 673
    .line 674
    .line 675
    move-result p1

    .line 676
    iget-boolean v0, v6, La2/p;->T:Z

    .line 677
    .line 678
    if-eqz v0, :cond_1e

    .line 679
    .line 680
    iput p1, v6, La2/p;->W:I

    .line 681
    .line 682
    iput-boolean v5, v6, La2/p;->Y:Z

    .line 683
    .line 684
    iput-boolean v5, v6, La2/p;->X:Z

    .line 685
    .line 686
    goto :goto_c

    .line 687
    :cond_1d
    const-string v0, "closeWindow"

    .line 688
    .line 689
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 690
    .line 691
    .line 692
    move-result p1

    .line 693
    if-eqz p1, :cond_1f

    .line 694
    .line 695
    iget-object p1, v6, La2/p;->M:Lc1/b;

    .line 696
    .line 697
    invoke-virtual {p1}, Lc1/b;->w()V

    .line 698
    .line 699
    .line 700
    :cond_1e
    :goto_c
    move v4, v5

    .line 701
    :cond_1f
    return v4

    .line 702
    nop

    .line 703
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
