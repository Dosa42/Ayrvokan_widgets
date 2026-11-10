.class public final synthetic Ln1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;

.field public final synthetic i:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Ln1/a;->f:I

    .line 2
    .line 3
    iput-object p1, p0, Ln1/a;->g:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Ln1/a;->h:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Ln1/a;->i:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget v0, p0, Ln1/a;->f:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-wide/16 v2, 0x64

    .line 5
    .line 6
    const/4 v4, 0x1

    .line 7
    const/4 v5, 0x0

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    goto/16 :goto_a

    .line 12
    .line 13
    :pswitch_0
    iget-object v0, p0, Ln1/a;->g:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Lorg/mozilla/gecko/media/GeckoHlsPlayer;

    .line 16
    .line 17
    iget-object v1, p0, Ln1/a;->h:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Lorg/mozilla/gecko/media/BaseHlsPlayer$ResourceCallbacks;

    .line 20
    .line 21
    iget-object v2, p0, Ln1/a;->i:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v2, Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v0, v1, v2}, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->a(Lorg/mozilla/gecko/media/GeckoHlsPlayer;Lorg/mozilla/gecko/media/BaseHlsPlayer$ResourceCallbacks;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :pswitch_1
    iget-object v0, p0, Ln1/a;->g:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v0, La2/i;

    .line 32
    .line 33
    iget-object v1, p0, Ln1/a;->h:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v1, Landroid/view/TextureView;

    .line 36
    .line 37
    iget-object v2, p0, Ln1/a;->i:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v2, Ljava/lang/Runnable;

    .line 40
    .line 41
    iget-object v3, v0, La2/i;->u:Ljava/lang/Object;

    .line 42
    .line 43
    monitor-enter v3

    .line 44
    :try_start_0
    iget-boolean v6, v0, La2/i;->v:Z

    .line 45
    .line 46
    if-eqz v6, :cond_0

    .line 47
    .line 48
    iget-object v6, v0, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 49
    .line 50
    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 51
    .line 52
    .line 53
    iget-object v1, v0, La2/i;->o:Landroid/graphics/SurfaceTexture;

    .line 54
    .line 55
    new-instance v6, La2/f;

    .line 56
    .line 57
    invoke-direct {v6, v0, v2, v5}, La2/f;-><init>(La2/i;Ljava/lang/Runnable;I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v6}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 61
    .line 62
    .line 63
    iget v1, v0, La2/i;->q:I

    .line 64
    .line 65
    iget v2, v0, La2/i;->r:I

    .line 66
    .line 67
    iput v1, v0, La2/i;->q:I

    .line 68
    .line 69
    iput v2, v0, La2/i;->r:I

    .line 70
    .line 71
    new-instance v6, La2/e;

    .line 72
    .line 73
    invoke-direct {v6, v0, v1, v2, v4}, La2/e;-><init>(La2/i;III)V

    .line 74
    .line 75
    .line 76
    iget-object v4, v0, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 77
    .line 78
    invoke-virtual {v4, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 79
    .line 80
    .line 81
    new-instance v4, La2/h;

    .line 82
    .line 83
    invoke-direct {v4, v0, v1, v2}, La2/h;-><init>(La2/i;II)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4}, La2/h;->run()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, La2/i;->D()V

    .line 90
    .line 91
    .line 92
    iput-boolean v5, v0, La2/i;->v:Z

    .line 93
    .line 94
    :cond_0
    monitor-exit v3

    .line 95
    return-void

    .line 96
    :catchall_0
    move-exception v0

    .line 97
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    throw v0

    .line 99
    :pswitch_2
    iget-object v0, p0, Ln1/a;->g:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;

    .line 102
    .line 103
    iget-object v2, p0, Ln1/a;->h:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v2, Ljava/lang/String;

    .line 106
    .line 107
    iget-object v3, p0, Ln1/a;->i:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast v3, Landroidx/fragment/app/h;

    .line 110
    .line 111
    sget-object v4, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->j:Lr1/i;

    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    new-instance v4, Ln0/b;

    .line 117
    .line 118
    const/4 v5, 0x5

    .line 119
    invoke-direct {v4, v0, v2, v3, v5}, Ln0/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 120
    .line 121
    .line 122
    const-string v2, "$BIN/adb kill-server"

    .line 123
    .line 124
    invoke-virtual {v0, v2, v1, v4}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->k(Ljava/lang/String;Ljava/lang/String;Lw1/r;)V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :pswitch_3
    iget-object v0, p0, Ln1/a;->g:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast v0, Lcom/nomone/vr_desktop/Applications/PromptApplication;

    .line 131
    .line 132
    iget-object v1, p0, Ln1/a;->h:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast v1, Lr1/y;

    .line 135
    .line 136
    iget-object v2, p0, Ln1/a;->i:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast v2, Lr1/c;

    .line 139
    .line 140
    iget-object v3, v0, Lcom/nomone/vr_desktop/Applications/PromptApplication;->f:Lr1/y;

    .line 141
    .line 142
    invoke-virtual {v0, v3}, Lcom/nomone/vr_desktop/Applications/PromptApplication;->e(Lr1/y;)V

    .line 143
    .line 144
    .line 145
    iget-object v3, v1, Lr1/y;->a:Lq1/f;

    .line 146
    .line 147
    iget-boolean v1, v1, Lr1/y;->b:Z

    .line 148
    .line 149
    invoke-static {v3, v0, v2, v1}, Lcom/nomone/vr_desktop/Applications/LauncherApplication;->g(Lq1/f;Lr1/c;Lr1/c;Z)V

    .line 150
    .line 151
    .line 152
    return-void

    .line 153
    :pswitch_4
    iget-object v0, p0, Ln1/a;->g:Ljava/lang/Object;

    .line 154
    .line 155
    check-cast v0, Lcom/nomone/vr_desktop/Applications/Linux/DeployLinuxImage;

    .line 156
    .line 157
    iget-object v6, p0, Ln1/a;->h:Ljava/lang/Object;

    .line 158
    .line 159
    check-cast v6, Ljava/lang/String;

    .line 160
    .line 161
    iget-object v7, p0, Ln1/a;->i:Ljava/lang/Object;

    .line 162
    .line 163
    check-cast v7, Lq1/f;

    .line 164
    .line 165
    sget-object v8, Lcom/nomone/vr_desktop/Applications/Linux/DeployLinuxImage;->o:[Ljava/lang/String;

    .line 166
    .line 167
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 168
    .line 169
    .line 170
    const-string v8, "Continue"

    .line 171
    .line 172
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v8

    .line 176
    if-eqz v8, :cond_1

    .line 177
    .line 178
    invoke-virtual {v0, v7, v5}, Lcom/nomone/vr_desktop/Applications/Linux/DeployLinuxImage;->h(Lq1/f;Z)V

    .line 179
    .line 180
    .line 181
    goto/16 :goto_3

    .line 182
    .line 183
    :cond_1
    const-string v8, "Proceed"

    .line 184
    .line 185
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v8

    .line 189
    if-eqz v8, :cond_2

    .line 190
    .line 191
    invoke-virtual {v0, v7, v4}, Lcom/nomone/vr_desktop/Applications/Linux/DeployLinuxImage;->h(Lq1/f;Z)V

    .line 192
    .line 193
    .line 194
    goto/16 :goto_3

    .line 195
    .line 196
    :cond_2
    sput-boolean v5, Lcom/nomone/vr_desktop/Applications/Linux/DeployLinuxImage;->s:Z

    .line 197
    .line 198
    iget-object v7, v0, Lcom/nomone/vr_desktop/Applications/Linux/DeployLinuxImage;->j:Lq1/b;

    .line 199
    .line 200
    if-eqz v7, :cond_3

    .line 201
    .line 202
    iput-boolean v4, v7, Lq1/b;->d:Z

    .line 203
    .line 204
    :cond_3
    const-string v7, "Stop"

    .line 205
    .line 206
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v7

    .line 210
    iget-object v8, v0, Lcom/nomone/vr_desktop/Applications/Linux/DeployLinuxImage;->k:Lr1/y;

    .line 211
    .line 212
    const-string v9, "Abort"

    .line 213
    .line 214
    const/16 v10, 0x1cc

    .line 215
    .line 216
    if-eqz v7, :cond_4

    .line 217
    .line 218
    const-string v1, "Installing Linux: paused..."

    .line 219
    .line 220
    iput-object v1, v8, Lr1/y;->d:Ljava/lang/String;

    .line 221
    .line 222
    const-string v1, "Will you be resuming the download later, or do you want to completely abort?"

    .line 223
    .line 224
    iput-object v1, v8, Lr1/y;->e:Ljava/lang/String;

    .line 225
    .line 226
    const-string v1, "Later"

    .line 227
    .line 228
    invoke-virtual {v8, v1}, Lr1/y;->a(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v8, v9}, Lr1/y;->a(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    const/16 v1, 0xc3

    .line 235
    .line 236
    invoke-virtual {v8, v10, v1}, Lr1/y;->d(II)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v0, v8}, Lcom/nomone/vr_desktop/Applications/Linux/DeployLinuxImage;->i(Lr1/y;)V

    .line 240
    .line 241
    .line 242
    goto/16 :goto_3

    .line 243
    .line 244
    :cond_4
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v7

    .line 248
    if-nez v7, :cond_5

    .line 249
    .line 250
    const-string v7, "Clean"

    .line 251
    .line 252
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result v6

    .line 256
    if-eqz v6, :cond_9

    .line 257
    .line 258
    :cond_5
    sget-object v6, Lo1/y;->a:Landroid/content/SharedPreferences;

    .line 259
    .line 260
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 261
    .line 262
    .line 263
    move-result-object v6

    .line 264
    const-string v7, "Linux deployment checkpoint"

    .line 265
    .line 266
    invoke-interface {v6, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 267
    .line 268
    .line 269
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 270
    .line 271
    .line 272
    sget-object v6, Lo1/y;->b:Landroidx/lifecycle/r;

    .line 273
    .line 274
    invoke-virtual {v6, v7}, Landroidx/lifecycle/r;->b(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    iget-object v6, v0, Lcom/nomone/vr_desktop/Applications/Linux/DeployLinuxImage;->m:Ljava/lang/String;

    .line 278
    .line 279
    if-nez v6, :cond_6

    .line 280
    .line 281
    goto/16 :goto_2

    .line 282
    .line 283
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    .line 284
    .line 285
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 286
    .line 287
    .line 288
    new-instance v7, Ljava/lang/StringBuilder;

    .line 289
    .line 290
    const-string v9, "/data/data/"

    .line 291
    .line 292
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    iget-object v9, v0, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->a:Lq1/f;

    .line 296
    .line 297
    iget-object v9, v9, Lq1/f;->b:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 298
    .line 299
    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v9

    .line 303
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    const-string v9, "/files"

    .line 307
    .line 308
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v7

    .line 315
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    const-string v7, "/"

    .line 319
    .line 320
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    iget-object v7, v0, Lcom/nomone/vr_desktop/Applications/Linux/DeployLinuxImage;->m:Ljava/lang/String;

    .line 324
    .line 325
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v6

    .line 332
    new-instance v7, Ljava/lang/StringBuilder;

    .line 333
    .line 334
    const-string v9, "Cleaning up: "

    .line 335
    .line 336
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v7

    .line 346
    const-string v9, "sdf"

    .line 347
    .line 348
    invoke-static {v9, v7}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    new-instance v7, Ljava/io/File;

    .line 352
    .line 353
    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 357
    .line 358
    .line 359
    move-result v7

    .line 360
    if-nez v7, :cond_7

    .line 361
    .line 362
    goto :goto_2

    .line 363
    :catch_0
    :cond_7
    :goto_0
    sget-boolean v7, Lcom/nomone/vr_desktop/Applications/Linux/DeployLinuxImage;->t:Z

    .line 364
    .line 365
    if-eqz v7, :cond_8

    .line 366
    .line 367
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 368
    .line 369
    .line 370
    goto :goto_0

    .line 371
    :cond_8
    const-string v2, "Installing Linux: cleaning up"

    .line 372
    .line 373
    iput-object v2, v8, Lr1/y;->d:Ljava/lang/String;

    .line 374
    .line 375
    const-string v2, "Please wait while we remove any unnecessary files..."

    .line 376
    .line 377
    iput-object v2, v8, Lr1/y;->e:Ljava/lang/String;

    .line 378
    .line 379
    iput-boolean v4, v8, Lr1/y;->l:Z

    .line 380
    .line 381
    iput-boolean v5, v8, Lr1/y;->m:Z

    .line 382
    .line 383
    const/16 v2, 0x87

    .line 384
    .line 385
    invoke-virtual {v8, v10, v2}, Lr1/y;->d(II)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v0, v8}, Lcom/nomone/vr_desktop/Applications/Linux/DeployLinuxImage;->i(Lr1/y;)V

    .line 389
    .line 390
    .line 391
    iput-boolean v5, v8, Lr1/y;->l:Z

    .line 392
    .line 393
    const/16 v2, 0x10e

    .line 394
    .line 395
    invoke-virtual {v8, v10, v2}, Lr1/y;->d(II)V

    .line 396
    .line 397
    .line 398
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 399
    .line 400
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 401
    .line 402
    .line 403
    const-string v3, "rm -r "

    .line 404
    .line 405
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v2

    .line 415
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 416
    .line 417
    .line 418
    move-result-object v3

    .line 419
    invoke-virtual {v3, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 420
    .line 421
    .line 422
    move-result-object v2

    .line 423
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 424
    .line 425
    .line 426
    goto :goto_1

    .line 427
    :catch_1
    move-exception v2

    .line 428
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 429
    .line 430
    .line 431
    :goto_1
    sget-object v2, Lq1/f;->L:Lo1/j0;

    .line 432
    .line 433
    new-instance v3, Ls1/a;

    .line 434
    .line 435
    invoke-direct {v3, v0, v4}, Ls1/a;-><init>(Lcom/nomone/vr_desktop/Applications/Linux/DeployLinuxImage;I)V

    .line 436
    .line 437
    .line 438
    const-string v0, "DeployLinuxImage.cleaup() closing dialog"

    .line 439
    .line 440
    invoke-virtual {v2, v0, v3}, Lo1/j0;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 441
    .line 442
    .line 443
    const-string v0, "Cleaned up!"

    .line 444
    .line 445
    invoke-static {v9, v0}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    :cond_9
    :goto_2
    sput-boolean v5, Lcom/nomone/vr_desktop/Applications/Linux/DeployLinuxImage;->r:Z

    .line 449
    .line 450
    sput-object v1, Lcom/nomone/vr_desktop/Applications/Linux/DeployLinuxImage;->q:Lcom/nomone/vr_desktop/Applications/Linux/DeployLinuxImage;

    .line 451
    .line 452
    :goto_3
    return-void

    .line 453
    :pswitch_5
    iget-object v0, p0, Ln1/a;->g:Ljava/lang/Object;

    .line 454
    .line 455
    check-cast v0, Ljava/lang/ProcessBuilder;

    .line 456
    .line 457
    iget-object v1, p0, Ln1/a;->h:Ljava/lang/Object;

    .line 458
    .line 459
    check-cast v1, Lo1/c1;

    .line 460
    .line 461
    iget-object v6, p0, Ln1/a;->i:Ljava/lang/Object;

    .line 462
    .line 463
    check-cast v6, Ljava/lang/String;

    .line 464
    .line 465
    const-string v7, "sdf"

    .line 466
    .line 467
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    .line 468
    .line 469
    .line 470
    move-result-object v0

    .line 471
    if-eqz v1, :cond_a

    .line 472
    .line 473
    invoke-interface {v1, v0}, Lo1/c1;->j(Ljava/lang/Process;)V

    .line 474
    .line 475
    .line 476
    :cond_a
    new-instance v8, Ljava/io/BufferedReader;

    .line 477
    .line 478
    new-instance v9, Ljava/io/InputStreamReader;

    .line 479
    .line 480
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 481
    .line 482
    .line 483
    move-result-object v10

    .line 484
    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 485
    .line 486
    .line 487
    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 488
    .line 489
    .line 490
    const/16 v9, 0x800

    .line 491
    .line 492
    new-array v9, v9, [C
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 493
    .line 494
    move v10, v5

    .line 495
    move v11, v10

    .line 496
    :cond_b
    :goto_4
    :try_start_4
    invoke-virtual {v8}, Ljava/io/BufferedReader;->ready()Z

    .line 497
    .line 498
    .line 499
    move-result v12

    .line 500
    if-eqz v12, :cond_d

    .line 501
    .line 502
    invoke-virtual {v8, v9}, Ljava/io/Reader;->read([C)I

    .line 503
    .line 504
    .line 505
    move-result v12

    .line 506
    new-instance v13, Ljava/lang/String;

    .line 507
    .line 508
    invoke-direct {v13, v9, v5, v12}, Ljava/lang/String;-><init>([CII)V

    .line 509
    .line 510
    .line 511
    if-nez v1, :cond_c

    .line 512
    .line 513
    invoke-static {v7, v13}, Lo1/m;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    goto :goto_4

    .line 517
    :cond_c
    invoke-interface {v1, v13}, Lo1/c1;->a(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 518
    .line 519
    .line 520
    goto :goto_4

    .line 521
    :cond_d
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Process;->exitValue()I

    .line 522
    .line 523
    .line 524
    move-result v11
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 525
    move v10, v4

    .line 526
    goto :goto_5

    .line 527
    :catch_2
    :try_start_6
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 528
    .line 529
    .line 530
    :goto_5
    if-eqz v10, :cond_b

    .line 531
    .line 532
    goto :goto_7

    .line 533
    :catch_3
    move-exception v0

    .line 534
    goto :goto_6

    .line 535
    :catch_4
    move-exception v0

    .line 536
    move v11, v5

    .line 537
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 538
    .line 539
    .line 540
    :goto_7
    if-nez v11, :cond_e

    .line 541
    .line 542
    goto :goto_8

    .line 543
    :cond_e
    move v4, v5

    .line 544
    :goto_8
    if-eqz v1, :cond_f

    .line 545
    .line 546
    invoke-interface {v1, v6, v4}, Lo1/c1;->d(Ljava/lang/String;Z)V

    .line 547
    .line 548
    .line 549
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    .line 550
    .line 551
    const-string v1, "Process: "

    .line 552
    .line 553
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 554
    .line 555
    .line 556
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    .line 558
    .line 559
    if-eqz v4, :cond_10

    .line 560
    .line 561
    const-string v1, " finished successfully."

    .line 562
    .line 563
    goto :goto_9

    .line 564
    :cond_10
    const-string v1, " failed with exit value: "

    .line 565
    .line 566
    invoke-static {v1, v11}, La1/b;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 567
    .line 568
    .line 569
    move-result-object v1

    .line 570
    :goto_9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    .line 572
    .line 573
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 574
    .line 575
    .line 576
    move-result-object v0

    .line 577
    invoke-static {v7, v0}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    .line 579
    .line 580
    return-void

    .line 581
    :pswitch_6
    iget-object v0, p0, Ln1/a;->g:Ljava/lang/Object;

    .line 582
    .line 583
    check-cast v0, Lorg/mozilla/geckoview/GeckoSession;

    .line 584
    .line 585
    iget-object v1, p0, Ln1/a;->h:Ljava/lang/Object;

    .line 586
    .line 587
    check-cast v1, Lorg/mozilla/geckoview/WebExtension$PortDelegate;

    .line 588
    .line 589
    iget-object v2, p0, Ln1/a;->i:Ljava/lang/Object;

    .line 590
    .line 591
    check-cast v2, Lo1/j0;

    .line 592
    .line 593
    invoke-static {v0, v1, v2}, Ln1/c;->a(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/WebExtension$PortDelegate;Lo1/j0;)V

    .line 594
    .line 595
    .line 596
    return-void

    .line 597
    :goto_a
    iget-object v0, p0, Ln1/a;->g:Ljava/lang/Object;

    .line 598
    .line 599
    check-cast v0, Lcom/google/android/gms/internal/play_billing/v;

    .line 600
    .line 601
    iget-object v1, p0, Ln1/a;->h:Ljava/lang/Object;

    .line 602
    .line 603
    check-cast v1, Lt2/n;

    .line 604
    .line 605
    iget-object v2, p0, Ln1/a;->i:Ljava/lang/Object;

    .line 606
    .line 607
    check-cast v2, Lt2/m;

    .line 608
    .line 609
    iget v3, v0, Lcom/google/android/gms/internal/play_billing/v;->a:I

    .line 610
    .line 611
    iget-object v0, v0, Lcom/google/android/gms/internal/play_billing/v;->c:Ljava/lang/Object;

    .line 612
    .line 613
    check-cast v0, Lt2/f;

    .line 614
    .line 615
    invoke-interface {v1, v3, v0, v2}, Lt2/n;->onDownstreamFormatChanged(ILt2/f;Lt2/m;)V

    .line 616
    .line 617
    .line 618
    return-void

    .line 619
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
