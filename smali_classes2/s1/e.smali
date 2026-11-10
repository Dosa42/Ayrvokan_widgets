.class public final synthetic Ls1/e;
.super Ljava/lang/Object;
.source "SourceFile"


.implements Ljava/lang/Runnable;



.field public final synthetic f:I

.field public final synthetic g:Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;



.method public synthetic constructor <init>(Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;I)V
    .locals 0

    .line 1
    iput p2, p0, Ls1/e;->f:I

    .line 2
    .line 3
    iput-object p1, p0, Ls1/e;->g:Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method



.method public final run()V
    .locals 42

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Ls1/e;->f:I

    .line 4
    .line 5
    const-string v2, "sdf"

    .line 6
    .line 7
    iget-object v3, v0, Ls1/e;->g:Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    packed-switch v1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    goto/16 :goto_13

    .line 15
    .line 16
    :pswitch_0
    iget-boolean v1, v3, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->t:Z

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    goto/16 :goto_11

    .line 21
    .line 22
    :cond_0
    iget-object v1, v3, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->a:Lq1/f;

    .line 23
    .line 24
    iget-object v1, v1, Lq1/f;->b:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 25
    .line 26
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/play_billing/i0;->T(Landroid/content/Context;Z)V

    .line 27
    .line 28
    .line 29
    invoke-static {v1}, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->i(Lcom/nomone/vr_desktop/LaunchActivity;)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_1

    .line 34
    .line 35
    const-string v4, "Ubuntu22.04Bare"

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const-string v4, "DebianBookworm"

    .line 39
    .line 40
    :goto_0
    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/i0;->P(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    sget-object v6, Lcom/google/android/gms/internal/play_billing/i0;->s:Ljava/io/File;

    .line 45
    .line 46
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    sget-object v7, Lcom/google/android/gms/internal/play_billing/i0;->t:Ljava/io/File;

    .line 51
    .line 52
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    const-string v8, "/bin"

    .line 57
    .line 58
    invoke-static {v6, v8}, La1/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    const-string v9, "/lib"

    .line 63
    .line 64
    invoke-static {v6, v9}, La1/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v15

    .line 68
    const-string v9, "/tmp"

    .line 69
    .line 70
    invoke-static {v6, v9}, La1/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v14

    .line 74
    const-string v13, "/proc"

    .line 75
    .line 76
    invoke-static {v6, v13}, La1/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v12

    .line 80
    new-instance v10, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/i0;->P(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v11

    .line 89
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v11, "/NOMone"

    .line 93
    .line 94
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v10

    .line 101
    const-string v11, "proot"

    .line 102
    .line 103
    invoke-static {v11, v10}, Lcom/google/android/gms/internal/play_billing/i0;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/i0;->P(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v10

    .line 110
    invoke-virtual {v3, v10}, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->h(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    new-instance v10, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/i0;->P(Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v11

    .line 122
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string v11, "/NOMone/clientIn"

    .line 126
    .line 127
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v10

    .line 134
    new-instance v11, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .line 138
    .line 139
    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/i0;->P(Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v0, "/NOMone/clientOut"

    .line 147
    .line 148
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    new-instance v11, Ljava/io/File;

    .line 156
    .line 157
    invoke-direct {v11, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    move-object/from16 v23, v12

    .line 161
    .line 162
    new-instance v12, Ljava/io/File;

    .line 163
    .line 164
    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    .line 168
    .line 169
    .line 170
    move-result v16

    .line 171
    if-eqz v16, :cond_2

    .line 172
    .line 173
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 174
    .line 175
    .line 176
    :cond_2
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    .line 177
    .line 178
    .line 179
    move-result v11

    .line 180
    if-eqz v11, :cond_3

    .line 181
    .line 182
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 183
    .line 184
    .line 185
    :cond_3
    invoke-static {v10}, Lcom/nomone/vr_desktop/NativeUtils;->createPipe(Ljava/lang/String;)Z

    .line 186
    .line 187
    .line 188
    invoke-static {v0}, Lcom/nomone/vr_desktop/NativeUtils;->createPipe(Ljava/lang/String;)Z

    .line 189
    .line 190
    .line 191
    const/4 v11, 0x1

    .line 192
    invoke-static {v0, v11}, Lcom/nomone/vr_desktop/NativeUtils;->openFD(Ljava/lang/String;Z)I

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    iput v0, v3, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->m:I

    .line 197
    .line 198
    new-instance v0, Ljava/lang/Thread;

    .line 199
    .line 200
    new-instance v11, Lo0/e;

    .line 201
    .line 202
    const/4 v12, 0x4

    .line 203
    invoke-direct {v11, v12, v3, v10}, Lo0/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    invoke-direct {v0, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 210
    .line 211
    .line 212
    new-instance v0, Ljava/io/File;

    .line 213
    .line 214
    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/i0;->z(Ljava/io/File;)V

    .line 218
    .line 219
    .line 220
    new-instance v0, Ljava/io/File;

    .line 221
    .line 222
    invoke-static {v5, v9}, La1/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v9

    .line 226
    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/i0;->z(Ljava/io/File;)V

    .line 230
    .line 231
    .line 232
    new-instance v0, Ljava/io/File;

    .line 233
    .line 234
    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 238
    .line 239
    .line 240
    iget-boolean v0, v3, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->k:Z

    .line 241
    .line 242
    if-nez v0, :cond_4

    .line 243
    .line 244
    const-string v9, "/.X11-unix"

    .line 245
    .line 246
    invoke-static {v6, v9}, La1/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v10

    .line 250
    new-instance v11, Ljava/io/File;

    .line 251
    .line 252
    invoke-direct {v11, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    .line 256
    .line 257
    .line 258
    new-instance v11, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v9

    .line 273
    invoke-static {v10, v9}, Lcom/nomone/vr_desktop/NativeUtils;->nativeSymlink(Ljava/lang/String;Ljava/lang/String;)Z

    .line 274
    .line 275
    .line 276
    :cond_4
    new-instance v12, Ljava/util/HashMap;

    .line 277
    .line 278
    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 279
    .line 280
    .line 281
    const-string v24, "os.version"

    .line 282
    .line 283
    invoke-static/range {v24 .. v24}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v9

    .line 287
    const-string v10, "OS_VERSION"

    .line 288
    .line 289
    invoke-virtual {v12, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    new-instance v9, Ljava/lang/StringBuilder;

    .line 293
    .line 294
    const-string v11, ""

    .line 295
    .line 296
    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 300
    .line 301
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v9

    .line 308
    const-string v10, "ANDROID_VERSION"

    .line 309
    .line 310
    invoke-virtual {v12, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    sget-object v9, Lcom/nomone/vr_desktop/Applications/SettingsApplication;->g:Ljava/lang/String;

    .line 314
    .line 315
    const-string v9, "Settings_Linux_ForceEnglishLocale"

    .line 316
    .line 317
    const/4 v10, 0x0

    .line 318
    invoke-static {v9, v10}, Lo1/y;->a(Ljava/lang/String;Z)Z

    .line 319
    .line 320
    .line 321
    move-result v9

    .line 322
    if-nez v9, :cond_5

    .line 323
    .line 324
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    .line 325
    .line 326
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 327
    .line 328
    .line 329
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/i0;->O(Lcom/nomone/vr_desktop/LaunchActivity;)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    move-object/from16 v25, v13

    .line 334
    .line 335
    const/4 v13, 0x5

    .line 336
    move-object/from16 v26, v5

    .line 337
    .line 338
    const/4 v5, 0x0

    .line 339
    :try_start_1
    invoke-virtual {v10, v5, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v5

    .line 343
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    const-string v5, ".UTF-8"

    .line 347
    .line 348
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 355
    goto :goto_1

    .line 356
    :catch_0
    :cond_5
    move-object/from16 v26, v5

    .line 357
    .line 358
    move-object/from16 v25, v13

    .line 359
    .line 360
    :catch_1
    const-string v5, "en_US.UTF-8"

    .line 361
    .line 362
    :goto_1
    const-string v9, "LC_ALL"

    .line 363
    .line 364
    invoke-virtual {v12, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    const-string v9, "LANG"

    .line 368
    .line 369
    invoke-virtual {v12, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    const-string v9, "LANGUAGE"

    .line 373
    .line 374
    invoke-virtual {v12, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    invoke-static {v1}, Lcom/nomone/vr_desktop/Applications/SettingsApplication;->j(Lcom/nomone/vr_desktop/LaunchActivity;)Z

    .line 378
    .line 379
    .line 380
    move-result v5

    .line 381
    const-string v9, "0"

    .line 382
    .line 383
    const-string v13, "1"

    .line 384
    .line 385
    if-eqz v5, :cond_6

    .line 386
    .line 387
    move-object v5, v13

    .line 388
    goto :goto_2

    .line 389
    :cond_6
    move-object v5, v9

    .line 390
    :goto_2
    const-string v10, "START_ULAUNCHER"

    .line 391
    .line 392
    invoke-virtual {v12, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    const-string v5, "Settings_Linux_RunAsRoot"

    .line 396
    .line 397
    const/4 v10, 0x1

    .line 398
    invoke-static {v5, v10}, Lo1/y;->a(Ljava/lang/String;Z)Z

    .line 399
    .line 400
    .line 401
    move-result v5

    .line 402
    if-eqz v5, :cond_7

    .line 403
    .line 404
    move-object v9, v13

    .line 405
    :cond_7
    const-string v5, "RUN_AS_ROOT"

    .line 406
    .line 407
    invoke-virtual {v12, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    const-string v5, "Settings_Linux_LimitMemory"

    .line 411
    .line 412
    const/4 v9, 0x0

    .line 413
    invoke-static {v5, v9}, Lo1/y;->a(Ljava/lang/String;Z)Z

    .line 414
    .line 415
    .line 416
    move-result v5

    .line 417
    if-eqz v5, :cond_a

    .line 418
    .line 419
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/i0;->R(Landroid/content/Context;)J

    .line 420
    .line 421
    .line 422
    move-result-wide v9

    .line 423
    const-wide/32 v16, 0x5c631f80

    .line 424
    .line 425
    .line 426
    sub-long v9, v9, v16

    .line 427
    .line 428
    const-wide/16 v16, 0x400

    .line 429
    .line 430
    div-long v9, v9, v16

    .line 431
    .line 432
    const-wide/32 v16, 0x55730

    .line 433
    .line 434
    .line 435
    cmp-long v5, v9, v16

    .line 436
    .line 437
    if-gez v5, :cond_8

    .line 438
    .line 439
    move-wide/from16 v9, v16

    .line 440
    .line 441
    :cond_8
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/i0;->R(Landroid/content/Context;)J

    .line 442
    .line 443
    .line 444
    move-result-wide v16

    .line 445
    invoke-static {}, Lcom/nomone/vr_desktop/NativeUtils;->nativeGetTotalSwapMemory()J

    .line 446
    .line 447
    .line 448
    move-result-wide v18

    .line 449
    move-wide/from16 v20, v9

    .line 450
    .line 451
    add-long v9, v18, v16

    .line 452
    .line 453
    long-to-double v9, v9

    .line 454
    const-wide v16, 0x3fe6666666666666L

    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    mul-double v9, v9, v16

    .line 460
    .line 461
    const-wide/high16 v16, 0x4090000000000000L

    .line 462
    .line 463
    div-double v9, v9, v16

    .line 464
    .line 465
    double-to-long v9, v9

    .line 466
    const-wide/32 v16, 0x3567e0

    .line 467
    .line 468
    .line 469
    cmp-long v5, v9, v16

    .line 470
    .line 471
    if-gez v5, :cond_9

    .line 472
    .line 473
    move-wide/from16 v9, v16

    .line 474
    .line 475
    :cond_9
    move-object/from16 v27, v4

    .line 476
    .line 477
    move-wide v4, v9

    .line 478
    move-object/from16 v28, v13

    .line 479
    .line 480
    move-wide/from16 v9, v20

    .line 481
    .line 482
    goto :goto_3

    .line 483
    :cond_a
    const-wide/16 v9, 0x0

    .line 484
    .line 485
    move-object/from16 v27, v4

    .line 486
    .line 487
    move-wide v4, v9

    .line 488
    move-object/from16 v28, v13

    .line 489
    .line 490
    :goto_3
    new-instance v13, Ljava/lang/StringBuilder;

    .line 491
    .line 492
    invoke-direct {v13, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 493
    .line 494
    .line 495
    invoke-virtual {v13, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 496
    .line 497
    .line 498
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v9

    .line 502
    const-string v10, "PHYSICAL_MEM_LIMIT"

    .line 503
    .line 504
    invoke-virtual {v12, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    new-instance v9, Ljava/lang/StringBuilder;

    .line 508
    .line 509
    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 513
    .line 514
    .line 515
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v4

    .line 519
    const-string v5, "VIRTUAL_MEM_LIMIT"

    .line 520
    .line 521
    invoke-virtual {v12, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    .line 523
    .line 524
    new-instance v4, Ljava/util/HashMap;

    .line 525
    .line 526
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 527
    .line 528
    .line 529
    const-string v5, "LD_LIBRARY_PATH"

    .line 530
    .line 531
    invoke-virtual {v4, v5, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    .line 533
    .line 534
    const-string v13, "HOME"

    .line 535
    .line 536
    invoke-virtual {v4, v13, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    .line 538
    .line 539
    const-string v9, "TMPDIR"

    .line 540
    .line 541
    invoke-virtual {v4, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    .line 543
    .line 544
    invoke-static {}, Lcom/nomone/vr_desktop/NativeUtils;->nativeGetMyProcesses()[I

    .line 545
    .line 546
    .line 547
    move-result-object v9

    .line 548
    iput-object v9, v3, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->x:[I

    .line 549
    .line 550
    invoke-static {v1}, Lcom/nomone/vr_desktop/Applications/SettingsApplication;->f(Lcom/nomone/vr_desktop/LaunchActivity;)Z

    .line 551
    .line 552
    .line 553
    move-result v9

    .line 554
    const-string v10, "/pactl"

    .line 555
    .line 556
    if-eqz v9, :cond_e

    .line 557
    .line 558
    new-instance v9, Ljava/util/HashMap;

    .line 559
    .line 560
    invoke-direct {v9, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 561
    .line 562
    .line 563
    move-object/from16 v29, v11

    .line 564
    .line 565
    new-instance v11, Ljava/io/File;

    .line 566
    .line 567
    move-object/from16 v30, v13

    .line 568
    .line 569
    const-string v13, "/system/lib64/libskcodec.so"

    .line 570
    .line 571
    invoke-direct {v11, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 572
    .line 573
    .line 574
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    .line 575
    .line 576
    .line 577
    move-result v11

    .line 578
    if-eqz v11, :cond_b

    .line 579
    .line 580
    const-string v11, "LD_PRELOAD"

    .line 581
    .line 582
    invoke-virtual {v9, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    .line 584
    .line 585
    :cond_b
    const-string v11, "/pulseaudio"

    .line 586
    .line 587
    invoke-static {v8, v11}, La1/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object v31

    .line 591
    const-string v32, "--disable-shm"

    .line 592
    .line 593
    const-string v11, "--dl-search-path="

    .line 594
    .line 595
    invoke-static {v11, v7}, La1/b;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object v33

    .line 599
    const-string v34, "--use-pid-file=false"

    .line 600
    .line 601
    const-string v35, "--log-target=stderr"

    .line 602
    .line 603
    const-string v36, "--log-level=notice"

    .line 604
    .line 605
    const-string v37, "--exit-idle-time=-1"

    .line 606
    .line 607
    const-string v38, "--daemonize=true"

    .line 608
    .line 609
    const-string v39, "--start"

    .line 610
    .line 611
    filled-new-array/range {v31 .. v39}, [Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object v7

    .line 615
    const/4 v11, 0x0

    .line 616
    invoke-static {v7, v8, v9, v11}, Lcom/google/android/gms/internal/play_billing/i0;->h0([Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lo1/c1;)V

    .line 617
    .line 618
    .line 619
    invoke-static {v8, v10}, La1/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v7

    .line 623
    const-string v9, "socket="

    .line 624
    .line 625
    const-string v11, "/pulseaudio.socket"

    .line 626
    .line 627
    invoke-static {v9, v14, v11}, La1/b;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 628
    .line 629
    .line 630
    move-result-object v9

    .line 631
    const-string v13, "load-module"

    .line 632
    .line 633
    move-object/from16 v31, v15

    .line 634
    .line 635
    const-string v15, "module-native-protocol-unix"

    .line 636
    .line 637
    filled-new-array {v7, v13, v15, v9}, [Ljava/lang/String;

    .line 638
    .line 639
    .line 640
    move-result-object v7

    .line 641
    new-instance v9, Lh/a;

    .line 642
    .line 643
    const/16 v15, 0x9

    .line 644
    .line 645
    invoke-direct {v9, v3, v15}, Lh/a;-><init>(Ljava/lang/Object;I)V

    .line 646
    .line 647
    .line 648
    invoke-static {v7, v8, v4, v9}, Lcom/google/android/gms/internal/play_billing/i0;->h0([Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lo1/c1;)V

    .line 649
    .line 650
    .line 651
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 652
    .line 653
    const/16 v9, 0x1b

    .line 654
    .line 655
    if-lt v7, v9, :cond_c

    .line 656
    .line 657
    const/4 v7, 0x1

    .line 658
    goto :goto_4

    .line 659
    :cond_c
    const/4 v7, 0x0

    .line 660
    :goto_4
    const/4 v9, 0x3

    .line 661
    new-array v9, v9, [Ljava/lang/String;

    .line 662
    .line 663
    invoke-static {v8, v10}, La1/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 664
    .line 665
    .line 666
    move-result-object v15

    .line 667
    const/16 v16, 0x0

    .line 668
    .line 669
    aput-object v15, v9, v16

    .line 670
    .line 671
    const/4 v15, 0x1

    .line 672
    aput-object v13, v9, v15

    .line 673
    .line 674
    if-eqz v7, :cond_d

    .line 675
    .line 676
    const-string v13, "module-aaudio-sink"

    .line 677
    .line 678
    goto :goto_5

    .line 679
    :cond_d
    const-string v13, "module-sles-sink"

    .line 680
    .line 681
    :goto_5
    const/4 v15, 0x2

    .line 682
    aput-object v13, v9, v15

    .line 683
    .line 684
    new-instance v13, Ls1/k;

    .line 685
    .line 686
    invoke-direct {v13, v3, v7}, Ls1/k;-><init>(Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;Z)V

    .line 687
    .line 688
    .line 689
    invoke-static {v9, v8, v4, v13}, Lcom/google/android/gms/internal/play_billing/i0;->h0([Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lo1/c1;)V

    .line 690
    .line 691
    .line 692
    const-string v7, "PULSE_SERVER"

    .line 693
    .line 694
    const-string v9, "unix:/tmp/pulseaudio.socket"

    .line 695
    .line 696
    invoke-virtual {v12, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    .line 698
    .line 699
    new-instance v9, Ljava/lang/StringBuilder;

    .line 700
    .line 701
    const-string v13, "unix:"

    .line 702
    .line 703
    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 704
    .line 705
    .line 706
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    .line 708
    .line 709
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    .line 711
    .line 712
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 713
    .line 714
    .line 715
    move-result-object v9

    .line 716
    invoke-virtual {v4, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    .line 718
    .line 719
    goto :goto_6

    .line 720
    :cond_e
    move-object/from16 v29, v11

    .line 721
    .line 722
    move-object/from16 v30, v13

    .line 723
    .line 724
    move-object/from16 v31, v15

    .line 725
    .line 726
    :goto_6
    new-instance v7, Ljava/io/File;

    .line 727
    .line 728
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 729
    .line 730
    .line 731
    move-result-object v9

    .line 732
    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 733
    .line 734
    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 735
    .line 736
    .line 737
    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 738
    .line 739
    .line 740
    move-result-object v7

    .line 741
    new-instance v9, Ljava/util/HashMap;

    .line 742
    .line 743
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 744
    .line 745
    .line 746
    invoke-virtual {v9, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    .line 748
    .line 749
    const-string v7, ":0"

    .line 750
    .line 751
    const-string v9, "DISPLAY"

    .line 752
    .line 753
    invoke-virtual {v12, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    .line 755
    .line 756
    new-instance v15, Ls1/h;

    .line 757
    .line 758
    invoke-direct {v15}, Ls1/h;-><init>()V

    .line 759
    .line 760
    .line 761
    if-eqz v0, :cond_10

    .line 762
    .line 763
    new-instance v0, Ljava/lang/StringBuilder;

    .line 764
    .line 765
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 766
    .line 767
    .line 768
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    .line 770
    .line 771
    const-string v6, "/tmp/Xvfb_screen0"

    .line 772
    .line 773
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    .line 775
    .line 776
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 777
    .line 778
    .line 779
    move-result-object v0

    .line 780
    invoke-static {v0}, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->nativeSetFrameBufferFile(Ljava/lang/String;)V

    .line 781
    .line 782
    .line 783
    new-instance v0, Ljava/lang/StringBuilder;

    .line 784
    .line 785
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 786
    .line 787
    .line 788
    iget v6, v3, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->p:I

    .line 789
    .line 790
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 791
    .line 792
    .line 793
    const-string v6, "x"

    .line 794
    .line 795
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    .line 797
    .line 798
    iget v6, v3, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->q:I

    .line 799
    .line 800
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 801
    .line 802
    .line 803
    iget-boolean v6, v3, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->o:Z

    .line 804
    .line 805
    if-eqz v6, :cond_f

    .line 806
    .line 807
    const-string v6, "x16"

    .line 808
    .line 809
    goto :goto_7

    .line 810
    :cond_f
    const-string v6, "x24"

    .line 811
    .line 812
    :goto_7
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    .line 814
    .line 815
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 816
    .line 817
    .line 818
    move-result-object v0

    .line 819
    const-string v6, "DISPLAY_RESOLUTION"

    .line 820
    .line 821
    invoke-virtual {v12, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    .line 823
    .line 824
    const-string v6, "Starting Xvfb..."

    .line 825
    .line 826
    invoke-static {v2, v6}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    .line 828
    .line 829
    new-instance v6, Ljava/util/ArrayList;

    .line 830
    .line 831
    const-string v9, "/Xvfb"

    .line 832
    .line 833
    invoke-static {v8, v9}, La1/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 834
    .line 835
    .line 836
    move-result-object v16

    .line 837
    const-string v18, "-screen"

    .line 838
    .line 839
    const-string v19, "0"

    .line 840
    .line 841
    const-string v21, "-fbdir"

    .line 842
    .line 843
    move-object/from16 v17, v7

    .line 844
    .line 845
    move-object/from16 v20, v0

    .line 846
    .line 847
    move-object/from16 v22, v14

    .line 848
    .line 849
    filled-new-array/range {v16 .. v22}, [Ljava/lang/String;

    .line 850
    .line 851
    .line 852
    move-result-object v0

    .line 853
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 854
    .line 855
    .line 856
    move-result-object v0

    .line 857
    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 858
    .line 859
    .line 860
    const/4 v0, 0x0

    .line 861
    new-array v0, v0, [Ljava/lang/String;

    .line 862
    .line 863
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 864
    .line 865
    .line 866
    move-result-object v0

    .line 867
    move-object v9, v0

    .line 868
    check-cast v9, [Ljava/lang/String;

    .line 869
    .line 870
    sget-object v13, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->y:Ljava/lang/ThreadGroup;

    .line 871
    .line 872
    new-instance v0, Ls1/i;

    .line 873
    .line 874
    const/4 v6, 0x1

    .line 875
    invoke-direct {v0, v15, v6}, Ls1/i;-><init>(Ls1/h;I)V

    .line 876
    .line 877
    .line 878
    move-object v7, v10

    .line 879
    move-object v10, v8

    .line 880
    move-object/from16 v16, v15

    .line 881
    .line 882
    move-object/from16 v15, v29

    .line 883
    .line 884
    move-object v11, v4

    .line 885
    move-object/from16 v18, v1

    .line 886
    .line 887
    move-object/from16 v17, v7

    .line 888
    .line 889
    move-object v1, v12

    .line 890
    move-object/from16 v7, v23

    .line 891
    .line 892
    move v12, v6

    .line 893
    move-object/from16 v6, v25

    .line 894
    .line 895
    move-object/from16 v40, v28

    .line 896
    .line 897
    move-object/from16 v41, v30

    .line 898
    .line 899
    move-object/from16 v19, v5

    .line 900
    .line 901
    move-object v5, v14

    .line 902
    move-object v14, v0

    .line 903
    invoke-static/range {v9 .. v14}, Lcom/google/android/gms/internal/play_billing/i0;->i0([Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/ThreadGroup;Lo1/c1;)V

    .line 904
    .line 905
    .line 906
    goto :goto_8

    .line 907
    :cond_10
    move-object/from16 v18, v1

    .line 908
    .line 909
    move-object/from16 v19, v5

    .line 910
    .line 911
    move-object/from16 v17, v10

    .line 912
    .line 913
    move-object v1, v12

    .line 914
    move-object v5, v14

    .line 915
    move-object/from16 v16, v15

    .line 916
    .line 917
    move-object/from16 v7, v23

    .line 918
    .line 919
    move-object/from16 v6, v25

    .line 920
    .line 921
    move-object/from16 v40, v28

    .line 922
    .line 923
    move-object/from16 v15, v29

    .line 924
    .line 925
    move-object/from16 v41, v30

    .line 926
    .line 927
    :goto_8
    new-instance v0, Ls1/h;

    .line 928
    .line 929
    invoke-direct {v0}, Ls1/h;-><init>()V

    .line 930
    .line 931
    .line 932
    const-string v9, "Settings_Linux_HardwareAcceleration"

    .line 933
    .line 934
    const/4 v10, 0x0

    .line 935
    invoke-static {v9, v10}, Lo1/y;->a(Ljava/lang/String;Z)Z

    .line 936
    .line 937
    .line 938
    move-result v9

    .line 939
    if-eqz v9, :cond_11

    .line 940
    .line 941
    const-string v9, "Starting Virgl..."

    .line 942
    .line 943
    invoke-static {v2, v9}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    .line 945
    .line 946
    const-string v9, "MESA_NO_ERROR"

    .line 947
    .line 948
    move-object/from16 v10, v40

    .line 949
    .line 950
    invoke-virtual {v4, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    .line 952
    .line 953
    new-instance v9, Ljava/lang/StringBuilder;

    .line 954
    .line 955
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 956
    .line 957
    .line 958
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 959
    .line 960
    .line 961
    const-string v10, "/virgl_test_server"

    .line 962
    .line 963
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 964
    .line 965
    .line 966
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 967
    .line 968
    .line 969
    move-result-object v9

    .line 970
    const-string v10, "--use-gles"

    .line 971
    .line 972
    const-string v11, "--use-egl-surfaceless"

    .line 973
    .line 974
    filled-new-array {v9, v10, v11}, [Ljava/lang/String;

    .line 975
    .line 976
    .line 977
    move-result-object v9

    .line 978
    sget-object v13, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->y:Ljava/lang/ThreadGroup;

    .line 979
    .line 980
    new-instance v14, Ls1/i;

    .line 981
    .line 982
    const/4 v10, 0x0

    .line 983
    invoke-direct {v14, v0, v10}, Ls1/i;-><init>(Ls1/h;I)V

    .line 984
    .line 985
    .line 986
    const/4 v12, 0x1

    .line 987
    move-object v10, v8

    .line 988
    move-object v11, v4

    .line 989
    invoke-static/range {v9 .. v14}, Lcom/google/android/gms/internal/play_billing/i0;->i0([Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/ThreadGroup;Lo1/c1;)V

    .line 990
    .line 991
    .line 992
    const-string v9, "GALLIUM_DRIVER"

    .line 993
    .line 994
    const-string v10, "virpipe"

    .line 995
    .line 996
    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    .line 998
    .line 999
    const-string v9, "MESA_GL_VERSION_OVERRIDE"

    .line 1000
    .line 1001
    const-string v10, "4.0"

    .line 1002
    .line 1003
    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    .line 1005
    .line 1006
    :cond_11
    const-string v9, "LP_NUM_THREADS"

    .line 1007
    .line 1008
    const-string v10, "8"

    .line 1009
    .line 1010
    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1011
    .line 1012
    .line 1013
    const-string v9, "ANDROID_DATA"

    .line 1014
    .line 1015
    invoke-virtual {v1, v9, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    .line 1017
    .line 1018
    new-instance v9, Landroidx/fragment/app/h;

    .line 1019
    .line 1020
    invoke-direct {v9, v3}, Landroidx/fragment/app/h;-><init>(Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;)V

    .line 1021
    .line 1022
    .line 1023
    sget-object v10, Lcom/google/android/gms/internal/play_billing/i0;->u:Ljava/io/File;

    .line 1024
    .line 1025
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v10

    .line 1029
    const-string v11, "-b"

    .line 1030
    .line 1031
    if-eqz v10, :cond_12

    .line 1032
    .line 1033
    invoke-virtual {v9, v11}, Landroidx/fragment/app/h;->i(Ljava/lang/String;)V

    .line 1034
    .line 1035
    .line 1036
    new-instance v10, Ljava/lang/StringBuilder;

    .line 1037
    .line 1038
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1039
    .line 1040
    .line 1041
    sget-object v12, Lcom/google/android/gms/internal/play_billing/i0;->u:Ljava/io/File;

    .line 1042
    .line 1043
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v12

    .line 1047
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1048
    .line 1049
    .line 1050
    const-string v12, ":/storage/internal"

    .line 1051
    .line 1052
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1053
    .line 1054
    .line 1055
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v10

    .line 1059
    invoke-virtual {v9, v10}, Landroidx/fragment/app/h;->i(Ljava/lang/String;)V

    .line 1060
    .line 1061
    .line 1062
    :cond_12
    sget-object v10, Lcom/google/android/gms/internal/play_billing/i0;->v:[Ljava/io/File;

    .line 1063
    .line 1064
    if-eqz v10, :cond_13

    .line 1065
    .line 1066
    const/4 v12, 0x0

    .line 1067
    :goto_9
    array-length v13, v10

    .line 1068
    if-ge v12, v13, :cond_13

    .line 1069
    .line 1070
    invoke-virtual {v9, v11}, Landroidx/fragment/app/h;->i(Ljava/lang/String;)V

    .line 1071
    .line 1072
    .line 1073
    new-instance v13, Ljava/lang/StringBuilder;

    .line 1074
    .line 1075
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1076
    .line 1077
    .line 1078
    aget-object v14, v10, v12

    .line 1079
    .line 1080
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1081
    .line 1082
    .line 1083
    const-string v14, ":/storage/"

    .line 1084
    .line 1085
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1086
    .line 1087
    .line 1088
    aget-object v14, v10, v12

    .line 1089
    .line 1090
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 1091
    .line 1092
    .line 1093
    move-result-object v14

    .line 1094
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1095
    .line 1096
    .line 1097
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1098
    .line 1099
    .line 1100
    move-result-object v13

    .line 1101
    invoke-virtual {v9, v13}, Landroidx/fragment/app/h;->i(Ljava/lang/String;)V

    .line 1102
    .line 1103
    .line 1104
    add-int/lit8 v12, v12, 0x1

    .line 1105
    .line 1106
    goto :goto_9

    .line 1107
    :cond_13
    invoke-virtual {v9, v11}, Landroidx/fragment/app/h;->i(Ljava/lang/String;)V

    .line 1108
    .line 1109
    .line 1110
    new-instance v10, Ljava/io/File;

    .line 1111
    .line 1112
    const-string v12, "/dev/ashmem"

    .line 1113
    .line 1114
    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1115
    .line 1116
    .line 1117
    invoke-virtual {v10}, Ljava/io/File;->canRead()Z

    .line 1118
    .line 1119
    .line 1120
    move-result v10

    .line 1121
    if-eqz v10, :cond_14

    .line 1122
    .line 1123
    const-string v10, "/dev/ashmem:/dev/ashmem"

    .line 1124
    .line 1125
    goto :goto_a

    .line 1126
    :cond_14
    const-string v10, ":/dev/ashmem"

    .line 1127
    .line 1128
    invoke-static {v5, v10}, La1/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1129
    .line 1130
    .line 1131
    move-result-object v10

    .line 1132
    :goto_a
    invoke-virtual {v9, v10}, Landroidx/fragment/app/h;->i(Ljava/lang/String;)V

    .line 1133
    .line 1134
    .line 1135
    invoke-virtual {v9, v11}, Landroidx/fragment/app/h;->i(Ljava/lang/String;)V

    .line 1136
    .line 1137
    .line 1138
    new-instance v10, Ljava/io/File;

    .line 1139
    .line 1140
    const-string v12, "/dev/shm"

    .line 1141
    .line 1142
    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1143
    .line 1144
    .line 1145
    invoke-virtual {v10}, Ljava/io/File;->canRead()Z

    .line 1146
    .line 1147
    .line 1148
    move-result v10

    .line 1149
    if-eqz v10, :cond_15

    .line 1150
    .line 1151
    const-string v10, "/dev/shm:/dev/shm"

    .line 1152
    .line 1153
    goto :goto_b

    .line 1154
    :cond_15
    const-string v10, ":/dev/shm"

    .line 1155
    .line 1156
    invoke-static {v5, v10}, La1/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1157
    .line 1158
    .line 1159
    move-result-object v10

    .line 1160
    :goto_b
    invoke-virtual {v9, v10}, Landroidx/fragment/app/h;->i(Ljava/lang/String;)V

    .line 1161
    .line 1162
    .line 1163
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1164
    .line 1165
    const/16 v12, 0x1a

    .line 1166
    .line 1167
    if-lt v10, v12, :cond_17

    .line 1168
    .line 1169
    invoke-virtual {v9, v11}, Landroidx/fragment/app/h;->i(Ljava/lang/String;)V

    .line 1170
    .line 1171
    .line 1172
    new-instance v10, Ljava/lang/StringBuilder;

    .line 1173
    .line 1174
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1175
    .line 1176
    .line 1177
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1178
    .line 1179
    .line 1180
    const-string v12, "/stat"

    .line 1181
    .line 1182
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1183
    .line 1184
    .line 1185
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/i0;->J()I

    .line 1186
    .line 1187
    .line 1188
    move-result v12

    .line 1189
    const/4 v13, 0x4

    .line 1190
    if-gt v12, v13, :cond_16

    .line 1191
    .line 1192
    goto :goto_c

    .line 1193
    :cond_16
    const/16 v13, 0x8

    .line 1194
    .line 1195
    :goto_c
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1196
    .line 1197
    .line 1198
    const-string v12, ":/proc/stat"

    .line 1199
    .line 1200
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1201
    .line 1202
    .line 1203
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1204
    .line 1205
    .line 1206
    move-result-object v10

    .line 1207
    invoke-virtual {v9, v10}, Landroidx/fragment/app/h;->i(Ljava/lang/String;)V

    .line 1208
    .line 1209
    .line 1210
    :cond_17
    new-instance v10, Ljava/io/File;

    .line 1211
    .line 1212
    const-string v12, "/proc/uptime"

    .line 1213
    .line 1214
    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1215
    .line 1216
    .line 1217
    invoke-virtual {v10}, Ljava/io/File;->canRead()Z

    .line 1218
    .line 1219
    .line 1220
    move-result v10

    .line 1221
    if-nez v10, :cond_18

    .line 1222
    .line 1223
    invoke-virtual {v9, v11}, Landroidx/fragment/app/h;->i(Ljava/lang/String;)V

    .line 1224
    .line 1225
    .line 1226
    new-instance v10, Ljava/lang/StringBuilder;

    .line 1227
    .line 1228
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1229
    .line 1230
    .line 1231
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1232
    .line 1233
    .line 1234
    const-string v12, "/uptime:/proc/uptime"

    .line 1235
    .line 1236
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1237
    .line 1238
    .line 1239
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1240
    .line 1241
    .line 1242
    move-result-object v10

    .line 1243
    invoke-virtual {v9, v10}, Landroidx/fragment/app/h;->i(Ljava/lang/String;)V

    .line 1244
    .line 1245
    .line 1246
    :cond_18
    new-instance v10, Ljava/io/File;

    .line 1247
    .line 1248
    const-string v12, "/proc/version"

    .line 1249
    .line 1250
    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1251
    .line 1252
    .line 1253
    invoke-virtual {v10}, Ljava/io/File;->canRead()Z

    .line 1254
    .line 1255
    .line 1256
    move-result v10

    .line 1257
    if-nez v10, :cond_19

    .line 1258
    .line 1259
    new-instance v10, Ljava/lang/StringBuilder;

    .line 1260
    .line 1261
    const-string v12, "Linux version "

    .line 1262
    .line 1263
    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1264
    .line 1265
    .line 1266
    invoke-static/range {v24 .. v24}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 1267
    .line 1268
    .line 1269
    move-result-object v12

    .line 1270
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1271
    .line 1272
    .line 1273
    const-string v12, " (NOMone Desktop 1.9.3-GooglePlay) 2025-09-04"

    .line 1274
    .line 1275
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1276
    .line 1277
    .line 1278
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1279
    .line 1280
    .line 1281
    move-result-object v10

    .line 1282
    new-instance v12, Ljava/lang/StringBuilder;

    .line 1283
    .line 1284
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1285
    .line 1286
    .line 1287
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1288
    .line 1289
    .line 1290
    const-string v13, "/version"

    .line 1291
    .line 1292
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1293
    .line 1294
    .line 1295
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1296
    .line 1297
    .line 1298
    move-result-object v12

    .line 1299
    invoke-static {v10, v12}, Lcom/google/android/gms/internal/play_billing/i0;->r(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    .line 1301
    .line 1302
    invoke-virtual {v9, v11}, Landroidx/fragment/app/h;->i(Ljava/lang/String;)V

    .line 1303
    .line 1304
    .line 1305
    new-instance v10, Ljava/lang/StringBuilder;

    .line 1306
    .line 1307
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1308
    .line 1309
    .line 1310
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1311
    .line 1312
    .line 1313
    const-string v7, "/version:/proc/version"

    .line 1314
    .line 1315
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1316
    .line 1317
    .line 1318
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1319
    .line 1320
    .line 1321
    move-result-object v7

    .line 1322
    invoke-virtual {v9, v7}, Landroidx/fragment/app/h;->i(Ljava/lang/String;)V

    .line 1323
    .line 1324
    .line 1325
    :cond_19
    iget-object v7, v3, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->a:Lq1/f;

    .line 1326
    .line 1327
    iget-object v7, v7, Lq1/f;->b:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 1328
    .line 1329
    invoke-static {v7}, Lcom/google/android/gms/internal/play_billing/i0;->M(Landroid/content/Context;)Ljava/lang/String;

    .line 1330
    .line 1331
    .line 1332
    move-result-object v7

    .line 1333
    invoke-virtual {v9, v11}, Landroidx/fragment/app/h;->i(Ljava/lang/String;)V

    .line 1334
    .line 1335
    .line 1336
    const-string v10, "/sys"

    .line 1337
    .line 1338
    invoke-virtual {v9, v10}, Landroidx/fragment/app/h;->i(Ljava/lang/String;)V

    .line 1339
    .line 1340
    .line 1341
    invoke-virtual {v9, v11}, Landroidx/fragment/app/h;->i(Ljava/lang/String;)V

    .line 1342
    .line 1343
    .line 1344
    const-string v10, "/dev"

    .line 1345
    .line 1346
    invoke-virtual {v9, v10}, Landroidx/fragment/app/h;->i(Ljava/lang/String;)V

    .line 1347
    .line 1348
    .line 1349
    invoke-virtual {v9, v11}, Landroidx/fragment/app/h;->i(Ljava/lang/String;)V

    .line 1350
    .line 1351
    .line 1352
    invoke-virtual {v9, v6}, Landroidx/fragment/app/h;->i(Ljava/lang/String;)V

    .line 1353
    .line 1354
    .line 1355
    invoke-virtual {v9, v11}, Landroidx/fragment/app/h;->i(Ljava/lang/String;)V

    .line 1356
    .line 1357
    .line 1358
    const-string v6, "/mnt"

    .line 1359
    .line 1360
    invoke-virtual {v9, v6}, Landroidx/fragment/app/h;->i(Ljava/lang/String;)V

    .line 1361
    .line 1362
    .line 1363
    invoke-virtual {v9, v11}, Landroidx/fragment/app/h;->i(Ljava/lang/String;)V

    .line 1364
    .line 1365
    .line 1366
    const-string v6, "/proc/mounts:/etc/mtab"

    .line 1367
    .line 1368
    invoke-virtual {v9, v6}, Landroidx/fragment/app/h;->i(Ljava/lang/String;)V

    .line 1369
    .line 1370
    .line 1371
    invoke-virtual {v9, v11}, Landroidx/fragment/app/h;->i(Ljava/lang/String;)V

    .line 1372
    .line 1373
    .line 1374
    const-string v6, "/dev/null:/proc/sys/kernel/cap_last_cap"

    .line 1375
    .line 1376
    invoke-virtual {v9, v6}, Landroidx/fragment/app/h;->i(Ljava/lang/String;)V

    .line 1377
    .line 1378
    .line 1379
    invoke-virtual {v9, v11}, Landroidx/fragment/app/h;->i(Ljava/lang/String;)V

    .line 1380
    .line 1381
    .line 1382
    const-string v6, "/dev/urandom:/dev/random"

    .line 1383
    .line 1384
    invoke-virtual {v9, v6}, Landroidx/fragment/app/h;->i(Ljava/lang/String;)V

    .line 1385
    .line 1386
    .line 1387
    invoke-virtual {v9, v11}, Landroidx/fragment/app/h;->i(Ljava/lang/String;)V

    .line 1388
    .line 1389
    .line 1390
    const-string v6, "/proc/self/fd:/dev/fd"

    .line 1391
    .line 1392
    invoke-virtual {v9, v6}, Landroidx/fragment/app/h;->i(Ljava/lang/String;)V

    .line 1393
    .line 1394
    .line 1395
    invoke-virtual {v9, v11}, Landroidx/fragment/app/h;->i(Ljava/lang/String;)V

    .line 1396
    .line 1397
    .line 1398
    const-string v6, "/proc/self/fd/0:/dev/stdin"

    .line 1399
    .line 1400
    invoke-virtual {v9, v6}, Landroidx/fragment/app/h;->i(Ljava/lang/String;)V

    .line 1401
    .line 1402
    .line 1403
    invoke-virtual {v9, v11}, Landroidx/fragment/app/h;->i(Ljava/lang/String;)V

    .line 1404
    .line 1405
    .line 1406
    const-string v6, "/proc/self/fd/1:/dev/stdout"

    .line 1407
    .line 1408
    invoke-virtual {v9, v6}, Landroidx/fragment/app/h;->i(Ljava/lang/String;)V

    .line 1409
    .line 1410
    .line 1411
    invoke-virtual {v9, v11}, Landroidx/fragment/app/h;->i(Ljava/lang/String;)V

    .line 1412
    .line 1413
    .line 1414
    const-string v6, "/proc/self/fd/2:/dev/stderr"

    .line 1415
    .line 1416
    invoke-virtual {v9, v6}, Landroidx/fragment/app/h;->i(Ljava/lang/String;)V

    .line 1417
    .line 1418
    .line 1419
    invoke-virtual {v9, v11}, Landroidx/fragment/app/h;->i(Ljava/lang/String;)V

    .line 1420
    .line 1421
    .line 1422
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1423
    .line 1424
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1425
    .line 1426
    .line 1427
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1428
    .line 1429
    .line 1430
    const-string v10, ":/tmp"

    .line 1431
    .line 1432
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1433
    .line 1434
    .line 1435
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1436
    .line 1437
    .line 1438
    move-result-object v6

    .line 1439
    invoke-virtual {v9, v6}, Landroidx/fragment/app/h;->i(Ljava/lang/String;)V

    .line 1440
    .line 1441
    .line 1442
    invoke-virtual {v9, v11}, Landroidx/fragment/app/h;->i(Ljava/lang/String;)V

    .line 1443
    .line 1444
    .line 1445
    const-string v6, "/:/host-rootfs"

    .line 1446
    .line 1447
    invoke-virtual {v9, v6}, Landroidx/fragment/app/h;->i(Ljava/lang/String;)V

    .line 1448
    .line 1449
    .line 1450
    invoke-virtual {v9, v11}, Landroidx/fragment/app/h;->i(Ljava/lang/String;)V

    .line 1451
    .line 1452
    .line 1453
    const-string v6, "/sdcard"

    .line 1454
    .line 1455
    invoke-virtual {v9, v6}, Landroidx/fragment/app/h;->i(Ljava/lang/String;)V

    .line 1456
    .line 1457
    .line 1458
    invoke-virtual {v9, v11}, Landroidx/fragment/app/h;->i(Ljava/lang/String;)V

    .line 1459
    .line 1460
    .line 1461
    const-string v6, "/data"

    .line 1462
    .line 1463
    invoke-virtual {v9, v6}, Landroidx/fragment/app/h;->i(Ljava/lang/String;)V

    .line 1464
    .line 1465
    .line 1466
    invoke-virtual {v9, v11}, Landroidx/fragment/app/h;->i(Ljava/lang/String;)V

    .line 1467
    .line 1468
    .line 1469
    const-string v6, "/system/bin"

    .line 1470
    .line 1471
    invoke-virtual {v9, v6}, Landroidx/fragment/app/h;->i(Ljava/lang/String;)V

    .line 1472
    .line 1473
    .line 1474
    invoke-virtual {v9, v11}, Landroidx/fragment/app/h;->i(Ljava/lang/String;)V

    .line 1475
    .line 1476
    .line 1477
    const-string v6, "/apex/com.android.runtime/bin"

    .line 1478
    .line 1479
    invoke-virtual {v9, v6}, Landroidx/fragment/app/h;->i(Ljava/lang/String;)V

    .line 1480
    .line 1481
    .line 1482
    invoke-virtual {v9, v11}, Landroidx/fragment/app/h;->i(Ljava/lang/String;)V

    .line 1483
    .line 1484
    .line 1485
    const-string v6, "arm64-v8a"

    .line 1486
    .line 1487
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1488
    .line 1489
    .line 1490
    move-result v10

    .line 1491
    const-string v12, "64"

    .line 1492
    .line 1493
    if-eqz v10, :cond_1a

    .line 1494
    .line 1495
    move-object v10, v12

    .line 1496
    goto :goto_d

    .line 1497
    :cond_1a
    move-object v10, v15

    .line 1498
    :goto_d
    const-string v13, "/system/lib"

    .line 1499
    .line 1500
    invoke-virtual {v13, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1501
    .line 1502
    .line 1503
    move-result-object v10

    .line 1504
    invoke-virtual {v9, v10}, Landroidx/fragment/app/h;->i(Ljava/lang/String;)V

    .line 1505
    .line 1506
    .line 1507
    invoke-virtual {v9, v11}, Landroidx/fragment/app/h;->i(Ljava/lang/String;)V

    .line 1508
    .line 1509
    .line 1510
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1511
    .line 1512
    .line 1513
    move-result v10

    .line 1514
    if-eqz v10, :cond_1b

    .line 1515
    .line 1516
    move-object v11, v12

    .line 1517
    goto :goto_e

    .line 1518
    :cond_1b
    move-object v11, v15

    .line 1519
    :goto_e
    const-string v10, "/apex/com.android.runtime/lib"

    .line 1520
    .line 1521
    invoke-virtual {v10, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1522
    .line 1523
    .line 1524
    move-result-object v10

    .line 1525
    invoke-virtual {v9, v10}, Landroidx/fragment/app/h;->i(Ljava/lang/String;)V

    .line 1526
    .line 1527
    .line 1528
    const-string v10, "IMAGE_NAME"

    .line 1529
    .line 1530
    move-object/from16 v11, v27

    .line 1531
    .line 1532
    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1533
    .line 1534
    .line 1535
    move-object/from16 v11, v19

    .line 1536
    .line 1537
    move-object/from16 v10, v31

    .line 1538
    .line 1539
    invoke-virtual {v1, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1540
    .line 1541
    .line 1542
    const-string v10, "PATH"

    .line 1543
    .line 1544
    const-string v11, "/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"

    .line 1545
    .line 1546
    invoke-virtual {v1, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1547
    .line 1548
    .line 1549
    const-string v10, "PROOT_TMP_DIR"

    .line 1550
    .line 1551
    invoke-virtual {v1, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1552
    .line 1553
    .line 1554
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1555
    .line 1556
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1557
    .line 1558
    .line 1559
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1560
    .line 1561
    .line 1562
    const-string v10, "/loader"

    .line 1563
    .line 1564
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1565
    .line 1566
    .line 1567
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1568
    .line 1569
    .line 1570
    move-result-object v5

    .line 1571
    const-string v10, "PROOT_LOADER"

    .line 1572
    .line 1573
    invoke-virtual {v1, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1574
    .line 1575
    .line 1576
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1577
    .line 1578
    .line 1579
    move-result v5

    .line 1580
    if-eqz v5, :cond_1c

    .line 1581
    .line 1582
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1583
    .line 1584
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1585
    .line 1586
    .line 1587
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1588
    .line 1589
    .line 1590
    const-string v6, "/loader32"

    .line 1591
    .line 1592
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1593
    .line 1594
    .line 1595
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1596
    .line 1597
    .line 1598
    move-result-object v5

    .line 1599
    const-string v6, "PROOT_LOADER_32"

    .line 1600
    .line 1601
    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1602
    .line 1603
    .line 1604
    :cond_1c
    const-string v5, "/root"

    .line 1605
    .line 1606
    move-object/from16 v6, v41

    .line 1607
    .line 1608
    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1609
    .line 1610
    .line 1611
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1612
    .line 1613
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1614
    .line 1615
    .line 1616
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1617
    .line 1618
    .line 1619
    const-string v6, "/PTraceTest"

    .line 1620
    .line 1621
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1622
    .line 1623
    .line 1624
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1625
    .line 1626
    .line 1627
    move-result-object v5

    .line 1628
    filled-new-array {v5}, [Ljava/lang/String;

    .line 1629
    .line 1630
    .line 1631
    move-result-object v5

    .line 1632
    new-instance v6, Landroidx/lifecycle/r;

    .line 1633
    .line 1634
    invoke-direct {v6, v1}, Landroidx/lifecycle/r;-><init>(Ljava/util/HashMap;)V

    .line 1635
    .line 1636
    .line 1637
    invoke-static {v5, v8, v4, v6}, Lcom/google/android/gms/internal/play_billing/i0;->h0([Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lo1/c1;)V

    .line 1638
    .line 1639
    .line 1640
    const-string v5, "-r"

    .line 1641
    .line 1642
    invoke-virtual {v9, v5}, Landroidx/fragment/app/h;->i(Ljava/lang/String;)V

    .line 1643
    .line 1644
    .line 1645
    move-object/from16 v5, v26

    .line 1646
    .line 1647
    invoke-virtual {v9, v5}, Landroidx/fragment/app/h;->i(Ljava/lang/String;)V

    .line 1648
    .line 1649
    .line 1650
    const-string v5, "--sysvipc"

    .line 1651
    .line 1652
    invoke-virtual {v9, v5}, Landroidx/fragment/app/h;->i(Ljava/lang/String;)V

    .line 1653
    .line 1654
    .line 1655
    const-string v5, "-H"

    .line 1656
    .line 1657
    invoke-virtual {v9, v5}, Landroidx/fragment/app/h;->i(Ljava/lang/String;)V

    .line 1658
    .line 1659
    .line 1660
    const-string v5, "-l"

    .line 1661
    .line 1662
    invoke-virtual {v9, v5}, Landroidx/fragment/app/h;->i(Ljava/lang/String;)V

    .line 1663
    .line 1664
    .line 1665
    const-string v5, "-L"

    .line 1666
    .line 1667
    invoke-virtual {v9, v5}, Landroidx/fragment/app/h;->i(Ljava/lang/String;)V

    .line 1668
    .line 1669
    .line 1670
    const-string v5, "-p"

    .line 1671
    .line 1672
    invoke-virtual {v9, v5}, Landroidx/fragment/app/h;->i(Ljava/lang/String;)V

    .line 1673
    .line 1674
    .line 1675
    const-string v5, "--ashmem-memfd"

    .line 1676
    .line 1677
    invoke-virtual {v9, v5}, Landroidx/fragment/app/h;->i(Ljava/lang/String;)V

    .line 1678
    .line 1679
    .line 1680
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1681
    .line 1682
    const-string v6, "--kernel-release="

    .line 1683
    .line 1684
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1685
    .line 1686
    .line 1687
    invoke-static/range {v24 .. v24}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 1688
    .line 1689
    .line 1690
    move-result-object v6

    .line 1691
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1692
    .line 1693
    .line 1694
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1695
    .line 1696
    .line 1697
    move-result-object v5

    .line 1698
    invoke-virtual {v9, v5}, Landroidx/fragment/app/h;->i(Ljava/lang/String;)V

    .line 1699
    .line 1700
    .line 1701
    const-string v5, "--cwd=/root"

    .line 1702
    .line 1703
    invoke-virtual {v9, v5}, Landroidx/fragment/app/h;->i(Ljava/lang/String;)V

    .line 1704
    .line 1705
    .line 1706
    const-string v5, "--root-id"

    .line 1707
    .line 1708
    invoke-virtual {v9, v5}, Landroidx/fragment/app/h;->i(Ljava/lang/String;)V

    .line 1709
    .line 1710
    .line 1711
    const-string v5, "--kill-on-exit"

    .line 1712
    .line 1713
    invoke-virtual {v9, v5}, Landroidx/fragment/app/h;->i(Ljava/lang/String;)V

    .line 1714
    .line 1715
    .line 1716
    const-string v5, "/NOMone/boot.sh"

    .line 1717
    .line 1718
    invoke-virtual {v9, v5}, Landroidx/fragment/app/h;->i(Ljava/lang/String;)V

    .line 1719
    .line 1720
    .line 1721
    const-string v5, "Running Proot..."

    .line 1722
    .line 1723
    invoke-static {v2, v5}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1724
    .line 1725
    .line 1726
    new-instance v2, Lo1/f;

    .line 1727
    .line 1728
    sget-object v5, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->y:Ljava/lang/ThreadGroup;

    .line 1729
    .line 1730
    const-string v6, "LinuxEventDispatcher"

    .line 1731
    .line 1732
    invoke-direct {v2, v5, v6}, Lo1/f;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    .line 1733
    .line 1734
    .line 1735
    invoke-virtual {v2}, Lo1/f;->start()V

    .line 1736
    .line 1737
    .line 1738
    new-instance v5, Ls1/j;

    .line 1739
    .line 1740
    invoke-direct {v5, v3, v2}, Ls1/j;-><init>(Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;Lo1/f;)V

    .line 1741
    .line 1742
    .line 1743
    iget-object v6, v3, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->a:Lq1/f;

    .line 1744
    .line 1745
    iget-object v6, v6, Lq1/f;->k:Ljava/util/List;

    .line 1746
    .line 1747
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1748
    .line 1749
    .line 1750
    new-instance v6, Ls1/k;

    .line 1751
    .line 1752
    invoke-direct {v6, v3}, Ls1/k;-><init>(Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;)V

    .line 1753
    .line 1754
    .line 1755
    const-string v7, "Last linux launch crashed"

    .line 1756
    .line 1757
    const/4 v10, 0x0

    .line 1758
    invoke-static {v7, v10}, Lo1/y;->e(Ljava/lang/String;Z)V

    .line 1759
    .line 1760
    .line 1761
    const/4 v11, 0x1

    .line 1762
    iput-boolean v11, v3, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->t:Z

    .line 1763
    .line 1764
    iput-boolean v11, v3, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->s:Z

    .line 1765
    .line 1766
    const-string v11, "/proot"

    .line 1767
    .line 1768
    invoke-static {v8, v11}, La1/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1769
    .line 1770
    .line 1771
    move-result-object v11

    .line 1772
    iget-object v12, v9, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 1773
    .line 1774
    check-cast v12, Ljava/util/ArrayList;

    .line 1775
    .line 1776
    invoke-virtual {v12, v10, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1777
    .line 1778
    .line 1779
    iget-object v9, v9, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 1780
    .line 1781
    check-cast v9, Ljava/util/ArrayList;

    .line 1782
    .line 1783
    new-array v10, v10, [Ljava/lang/String;

    .line 1784
    .line 1785
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1786
    .line 1787
    .line 1788
    move-result-object v9

    .line 1789
    check-cast v9, [Ljava/lang/String;

    .line 1790
    .line 1791
    new-instance v10, Ls1/l;

    .line 1792
    .line 1793
    invoke-direct {v10, v3, v6}, Ls1/l;-><init>(Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;Ls1/k;)V

    .line 1794
    .line 1795
    .line 1796
    invoke-static {v9, v8, v1, v10}, Lcom/google/android/gms/internal/play_billing/i0;->h0([Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lo1/c1;)V

    .line 1797
    .line 1798
    .line 1799
    iget-object v1, v3, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->a:Lq1/f;

    .line 1800
    .line 1801
    iget-object v1, v1, Lq1/f;->k:Ljava/util/List;

    .line 1802
    .line 1803
    invoke-interface {v1, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1804
    .line 1805
    .line 1806
    iget-object v1, v2, Lo1/f;->g:Landroid/os/Looper;

    .line 1807
    .line 1808
    invoke-virtual {v1}, Landroid/os/Looper;->quitSafely()V

    .line 1809
    .line 1810
    .line 1811
    invoke-static/range {v18 .. v18}, Lcom/nomone/vr_desktop/Applications/SettingsApplication;->f(Lcom/nomone/vr_desktop/LaunchActivity;)Z

    .line 1812
    .line 1813
    .line 1814
    move-result v1

    .line 1815
    if-eqz v1, :cond_1d

    .line 1816
    .line 1817
    move-object/from16 v1, v17

    .line 1818
    .line 1819
    invoke-static {v8, v1}, La1/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1820
    .line 1821
    .line 1822
    move-result-object v1

    .line 1823
    const-string v2, "exit"

    .line 1824
    .line 1825
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 1826
    .line 1827
    .line 1828
    move-result-object v1

    .line 1829
    const/4 v2, 0x0

    .line 1830
    invoke-static {v1, v8, v4, v2}, Lcom/google/android/gms/internal/play_billing/i0;->h0([Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lo1/c1;)V

    .line 1831
    .line 1832
    .line 1833
    :cond_1d
    iget-object v0, v0, Ls1/h;->a:Ljava/lang/Process;

    .line 1834
    .line 1835
    if-eqz v0, :cond_1e

    .line 1836
    .line 1837
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 1838
    .line 1839
    .line 1840
    :cond_1e
    move-object/from16 v0, v16

    .line 1841
    .line 1842
    iget-object v0, v0, Ls1/h;->a:Ljava/lang/Process;

    .line 1843
    .line 1844
    if-eqz v0, :cond_1f

    .line 1845
    .line 1846
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 1847
    .line 1848
    .line 1849
    :cond_1f
    sget-boolean v0, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->A:Z

    .line 1850
    .line 1851
    sget-object v1, Lq1/f;->L:Lo1/j0;

    .line 1852
    .line 1853
    new-instance v2, Ls1/e;

    .line 1854
    .line 1855
    const/4 v5, 0x3

    .line 1856
    invoke-direct {v2, v3, v5}, Ls1/e;-><init>(Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;I)V

    .line 1857
    .line 1858
    .line 1859
    const-string v6, "Killing remaining Linux processes"

    .line 1860
    .line 1861
    const-wide/16 v9, 0x3e8

    .line 1862
    .line 1863
    invoke-virtual {v1, v2, v6, v9, v10}, Lo1/j0;->b(Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 1864
    .line 1865
    .line 1866
    sget-object v1, Lq1/f;->L:Lo1/j0;

    .line 1867
    .line 1868
    new-instance v2, Lo0/e;

    .line 1869
    .line 1870
    invoke-direct {v2, v5, v8, v4}, Lo0/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1871
    .line 1872
    .line 1873
    const-string v4, "ps after Linux closing"

    .line 1874
    .line 1875
    const-wide/16 v5, 0x7d0

    .line 1876
    .line 1877
    invoke-virtual {v1, v2, v4, v5, v6}, Lo1/j0;->b(Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 1878
    .line 1879
    .line 1880
    const/4 v1, 0x0

    .line 1881
    sput-object v1, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->z:Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;

    .line 1882
    .line 1883
    invoke-virtual {v3}, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->b()V

    .line 1884
    .line 1885
    .line 1886
    iget-object v1, v3, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->a:Lq1/f;

    .line 1887
    .line 1888
    iget-object v1, v1, Lq1/f;->F:Lu1/i;

    .line 1889
    .line 1890
    const/4 v2, 0x1

    .line 1891
    iput v2, v1, Lu1/i;->N:I

    .line 1892
    .line 1893
    invoke-virtual {v1}, Lu1/i;->l()V

    .line 1894
    .line 1895
    .line 1896
    invoke-static {}, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->nativeResetXTest()V

    .line 1897
    .line 1898
    .line 1899
    invoke-static {}, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->nativeResetFrameBufferFile()V

    .line 1900
    .line 1901
    .line 1902
    iget-object v1, v3, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->u:Ls1/m;

    .line 1903
    .line 1904
    if-eqz v1, :cond_20

    .line 1905
    .line 1906
    invoke-virtual {v1}, Ls1/m;->stopWatching()V

    .line 1907
    .line 1908
    .line 1909
    :cond_20
    iget-object v1, v3, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->v:Ls1/m;

    .line 1910
    .line 1911
    if-eqz v1, :cond_21

    .line 1912
    .line 1913
    invoke-virtual {v1}, Ls1/m;->stopWatching()V

    .line 1914
    .line 1915
    .line 1916
    :cond_21
    iget-object v1, v3, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->w:Ls1/m;

    .line 1917
    .line 1918
    if-eqz v1, :cond_22

    .line 1919
    .line 1920
    invoke-virtual {v1}, Ls1/m;->stopWatching()V

    .line 1921
    .line 1922
    .line 1923
    :cond_22
    const/4 v1, 0x0

    .line 1924
    iput-boolean v1, v3, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->s:Z

    .line 1925
    .line 1926
    sput-boolean v1, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->A:Z

    .line 1927
    .line 1928
    invoke-static {}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->p()Z

    .line 1929
    .line 1930
    .line 1931
    move-result v1

    .line 1932
    xor-int/lit8 v1, v1, 0x1

    .line 1933
    .line 1934
    xor-int/lit8 v2, v0, 0x1

    .line 1935
    .line 1936
    invoke-static {v7, v2}, Lo1/y;->e(Ljava/lang/String;Z)V

    .line 1937
    .line 1938
    .line 1939
    if-eqz v0, :cond_23

    .line 1940
    .line 1941
    sget-boolean v0, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->B:Z

    .line 1942
    .line 1943
    if-eqz v0, :cond_26

    .line 1944
    .line 1945
    iget-object v0, v3, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->a:Lq1/f;

    .line 1946
    .line 1947
    iget-object v0, v0, Lq1/f;->b:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 1948
    .line 1949
    sget-object v1, Lcom/nomone/vr_desktop/Applications/ExitApplication;->i:Lcom/nomone/vr_desktop/Applications/ExitApplication;

    .line 1950
    .line 1951
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1952
    .line 1953
    .line 1954
    goto :goto_11

    .line 1955
    :cond_23
    new-instance v0, Lr1/y;

    .line 1956
    .line 1957
    iget-object v2, v3, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->a:Lq1/f;

    .line 1958
    .line 1959
    invoke-direct {v0, v2}, Lr1/y;-><init>(Lq1/f;)V

    .line 1960
    .line 1961
    .line 1962
    const-string v2, "Linux crashed"

    .line 1963
    .line 1964
    iput-object v2, v0, Lr1/y;->d:Ljava/lang/String;

    .line 1965
    .line 1966
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1967
    .line 1968
    const-string v4, "Linux process crashed, possibly because:<br><ul>"

    .line 1969
    .line 1970
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1971
    .line 1972
    .line 1973
    if-eqz v1, :cond_24

    .line 1974
    .line 1975
    const-string v11, "  <li>It was killed by the phantom process killer. Please <a href=\'http://nomone.com/VRDesktop/Videos/DisablingPhantomProcessKillingTutorial.mp4\' target=\'_blank\'>disable phantom process killing</a>.</li>"

    .line 1976
    .line 1977
    goto :goto_f

    .line 1978
    :cond_24
    move-object v11, v15

    .line 1979
    :goto_f
    const-string v4, "  <li>Important system files were moved or deleted.</li>  <li>The system ran out of memory (unlikely, but happens).</li><ul>"

    .line 1980
    .line 1981
    invoke-static {v2, v11, v4}, La1/b;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1982
    .line 1983
    .line 1984
    move-result-object v2

    .line 1985
    iput-object v2, v0, Lr1/y;->e:Ljava/lang/String;

    .line 1986
    .line 1987
    const-string v2, ".button-text { line-height: 18px; }"

    .line 1988
    .line 1989
    invoke-virtual {v0, v2}, Lr1/y;->b(Ljava/lang/String;)V

    .line 1990
    .line 1991
    .line 1992
    const-string v2, "View/Send<br>Crash Report"

    .line 1993
    .line 1994
    invoke-virtual {v0, v2}, Lr1/y;->a(Ljava/lang/String;)V

    .line 1995
    .line 1996
    .line 1997
    const-string v2, "OK<br>I understand"

    .line 1998
    .line 1999
    invoke-virtual {v0, v2}, Lr1/y;->a(Ljava/lang/String;)V

    .line 2000
    .line 2001
    .line 2002
    if-eqz v1, :cond_25

    .line 2003
    .line 2004
    const/16 v1, 0x133

    .line 2005
    .line 2006
    goto :goto_10

    .line 2007
    :cond_25
    const/16 v1, 0x106

    .line 2008
    .line 2009
    :goto_10
    const/16 v2, 0x1bd

    .line 2010
    .line 2011
    invoke-virtual {v0, v2, v1}, Lr1/y;->d(II)V

    .line 2012
    .line 2013
    .line 2014
    const/16 v1, 0xaa

    .line 2015
    .line 2016
    iput v1, v0, Lr1/y;->i:I

    .line 2017
    .line 2018
    const/16 v1, 0x28

    .line 2019
    .line 2020
    iput v1, v0, Lr1/y;->j:I

    .line 2021
    .line 2022
    new-instance v1, Ls1/g;

    .line 2023
    .line 2024
    const/4 v2, 0x0

    .line 2025
    invoke-direct {v1, v3, v2}, Ls1/g;-><init>(Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;I)V

    .line 2026
    .line 2027
    .line 2028
    iput-object v1, v0, Lr1/y;->o:Lr1/w;

    .line 2029
    .line 2030
    const/4 v1, 0x0

    .line 2031
    invoke-static {v0, v1}, Lcom/nomone/vr_desktop/Applications/PromptApplication;->g(Lr1/y;Lr1/c;)Lcom/nomone/vr_desktop/Applications/PromptApplication;

    .line 2032
    .line 2033
    .line 2034
    :cond_26
    :goto_11
    return-void

    .line 2035
    :pswitch_1
    sget-object v0, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->y:Ljava/lang/ThreadGroup;

    .line 2036
    .line 2037
    const/4 v0, 0x1

    .line 2038
    invoke-virtual {v3, v0}, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->g(Z)V

    .line 2039
    .line 2040
    .line 2041
    return-void

    .line 2042
    :pswitch_2
    const/4 v0, 0x0

    .line 2043
    iget-boolean v1, v3, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->s:Z

    .line 2044
    .line 2045
    sput-boolean v1, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->A:Z

    .line 2046
    .line 2047
    sput-object v0, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->z:Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;

    .line 2048
    .line 2049
    iget v0, v3, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->l:I

    .line 2050
    .line 2051
    if-eqz v0, :cond_27

    .line 2052
    .line 2053
    iget v1, v3, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->m:I

    .line 2054
    .line 2055
    if-eqz v1, :cond_27

    .line 2056
    .line 2057
    const-string v1, "shutdown"

    .line 2058
    .line 2059
    invoke-static {v0, v1}, Lcom/nomone/vr_desktop/NativeUtils;->writeToFD(ILjava/lang/String;)V

    .line 2060
    .line 2061
    .line 2062
    const-wide/16 v0, 0x7c

    .line 2063
    .line 2064
    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 2065
    .line 2066
    .line 2067
    :catch_2
    :cond_27
    iget-boolean v0, v3, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->n:Z

    .line 2068
    .line 2069
    if-eqz v0, :cond_28

    .line 2070
    .line 2071
    const-string v0, "Sent terminate token..."

    .line 2072
    .line 2073
    invoke-static {v2, v0}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2074
    .line 2075
    .line 2076
    goto :goto_12

    .line 2077
    :cond_28
    const-string v0, "Force closing..."

    .line 2078
    .line 2079
    invoke-static {v2, v0}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2080
    .line 2081
    .line 2082
    iget-object v0, v3, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->r:Ljava/lang/Process;

    .line 2083
    .line 2084
    if-eqz v0, :cond_29

    .line 2085
    .line 2086
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 2087
    .line 2088
    .line 2089
    :cond_29
    :goto_12
    iget v0, v3, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->l:I

    .line 2090
    .line 2091
    invoke-static {v0}, Lcom/nomone/vr_desktop/NativeUtils;->closeFD(I)V

    .line 2092
    .line 2093
    .line 2094
    iget v0, v3, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->m:I

    .line 2095
    .line 2096
    invoke-static {v0}, Lcom/nomone/vr_desktop/NativeUtils;->closeFD(I)V

    .line 2097
    .line 2098
    .line 2099
    const/4 v0, 0x0

    .line 2100
    iput v0, v3, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->m:I

    .line 2101
    .line 2102
    iput v0, v3, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->l:I

    .line 2103
    .line 2104
    return-void

    .line 2105
    :goto_13
    sget-object v1, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->y:Ljava/lang/ThreadGroup;

    .line 2106
    .line 2107
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2108
    .line 2109
    .line 2110
    invoke-static {}, Lcom/nomone/vr_desktop/NativeUtils;->nativeGetMyProcesses()[I

    .line 2111
    .line 2112
    .line 2113
    move-result-object v1

    .line 2114
    array-length v4, v1

    .line 2115
    move v5, v0

    .line 2116
    :goto_14
    if-ge v5, v4, :cond_2c

    .line 2117
    .line 2118
    aget v6, v1, v5

    .line 2119
    .line 2120
    iget-object v7, v3, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->x:[I

    .line 2121
    .line 2122
    array-length v8, v7

    .line 2123
    move v9, v0

    .line 2124
    :goto_15
    if-ge v9, v8, :cond_2b

    .line 2125
    .line 2126
    aget v10, v7, v9

    .line 2127
    .line 2128
    if-ne v6, v10, :cond_2a

    .line 2129
    .line 2130
    goto :goto_16

    .line 2131
    :cond_2a
    add-int/lit8 v9, v9, 0x1

    .line 2132
    .line 2133
    goto :goto_15

    .line 2134
    :cond_2b
    new-instance v7, Ljava/lang/StringBuilder;

    .line 2135
    .line 2136
    const-string v8, "Killing: "

    .line 2137
    .line 2138
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2139
    .line 2140
    .line 2141
    invoke-static {v6}, Lcom/nomone/vr_desktop/NativeUtils;->nativeGetProcessCommandTruncated(I)Ljava/lang/String;

    .line 2142
    .line 2143
    .line 2144
    move-result-object v8

    .line 2145
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2146
    .line 2147
    .line 2148
    const-string v8, ", "

    .line 2149
    .line 2150
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2151
    .line 2152
    .line 2153
    invoke-static {v6}, Lcom/nomone/vr_desktop/NativeUtils;->nativeGetProcessCommand(I)Ljava/lang/String;

    .line 2154
    .line 2155
    .line 2156
    move-result-object v9

    .line 2157
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2158
    .line 2159
    .line 2160
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2161
    .line 2162
    .line 2163
    invoke-static {v6}, Lcom/nomone/vr_desktop/NativeUtils;->nativeGetProcessExecutable(I)Ljava/lang/String;

    .line 2164
    .line 2165
    .line 2166
    move-result-object v8

    .line 2167
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2168
    .line 2169
    .line 2170
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2171
    .line 2172
    .line 2173
    move-result-object v7

    .line 2174
    invoke-static {v2, v7}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2175
    .line 2176
    .line 2177
    invoke-static {v6}, Lcom/nomone/vr_desktop/NativeUtils;->nativeKillProcess(I)V

    .line 2178
    .line 2179
    .line 2180
    :goto_16
    add-int/lit8 v5, v5, 0x1

    .line 2181
    .line 2182
    goto :goto_14

    .line 2183
    :cond_2c
    return-void

    .line 2184
    nop

    .line 2185
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
