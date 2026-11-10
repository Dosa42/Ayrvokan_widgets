.class public final synthetic Lo0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lo0/e;->f:I

    .line 2
    .line 3
    iput-object p2, p0, Lo0/e;->g:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lo0/e;->h:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Lo0/e;->f:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x1

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    :pswitch_0
    goto/16 :goto_18

    .line 12
    .line 13
    :pswitch_1
    iget-object v0, v1, Lo0/e;->g:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, La3/n;

    .line 16
    .line 17
    iget-object v2, v1, Lo0/e;->h:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v2, La3/o;

    .line 20
    .line 21
    sget-object v3, La3/n;->c:La3/n;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-static {v2}, La3/n;->b(La3/o;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_2
    iget-object v0, v1, Lo0/e;->g:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 33
    .line 34
    iget-object v2, v1, Lo0/e;->h:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v2, Lf2/b;

    .line 37
    .line 38
    invoke-static {v0, v2}, Lf2/n;->e(Ljava/util/concurrent/CopyOnWriteArrayList;Lf2/b;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :pswitch_3
    iget-object v0, v1, Lo0/e;->g:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, La2/i;

    .line 45
    .line 46
    iget-object v2, v1, Lo0/e;->h:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v2, Landroid/view/TextureView;

    .line 49
    .line 50
    iget-object v4, v0, La2/i;->u:Ljava/lang/Object;

    .line 51
    .line 52
    monitor-enter v4

    .line 53
    :try_start_0
    iget-boolean v5, v0, La2/i;->v:Z

    .line 54
    .line 55
    if-eqz v5, :cond_0

    .line 56
    .line 57
    iget-object v5, v0, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 58
    .line 59
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 60
    .line 61
    .line 62
    iput-boolean v3, v0, La2/i;->v:Z

    .line 63
    .line 64
    invoke-virtual {v0}, La2/i;->D()V

    .line 65
    .line 66
    .line 67
    :cond_0
    monitor-exit v4

    .line 68
    return-void

    .line 69
    :catchall_0
    move-exception v0

    .line 70
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    throw v0

    .line 72
    :pswitch_4
    iget-object v0, v1, Lo0/e;->g:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v0, Lb2/b;

    .line 75
    .line 76
    iget-object v2, v1, Lo0/e;->h:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v2, Ljava/lang/String;

    .line 79
    .line 80
    iget-object v3, v0, Lb2/b;->d:Ljava/io/PrintWriter;

    .line 81
    .line 82
    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iget-object v0, v0, Lb2/b;->d:Ljava/io/PrintWriter;

    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :pswitch_5
    iget-object v0, v1, Lo0/e;->g:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v0, Lq1/b0;

    .line 94
    .line 95
    iget-object v2, v1, Lo0/e;->h:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v2, Ljava/lang/Runnable;

    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 103
    .line 104
    .line 105
    iput-boolean v3, v0, Lq1/b0;->b:Z

    .line 106
    .line 107
    return-void

    .line 108
    :pswitch_6
    iget-object v0, v1, Lo0/e;->g:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v0, Lw1/p;

    .line 111
    .line 112
    iget-object v5, v1, Lo0/e;->h:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast v5, Landroidx/fragment/app/h;

    .line 115
    .line 116
    iget-boolean v6, v0, Lw1/p;->f:Z

    .line 117
    .line 118
    iget-object v7, v0, Lw1/p;->i:Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;

    .line 119
    .line 120
    if-eqz v6, :cond_1

    .line 121
    .line 122
    iget-boolean v6, v7, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->b:Z

    .line 123
    .line 124
    if-nez v6, :cond_1

    .line 125
    .line 126
    new-instance v0, Lw1/o;

    .line 127
    .line 128
    invoke-direct {v0, v7, v4}, Lw1/o;-><init>(Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;I)V

    .line 129
    .line 130
    .line 131
    const-string v3, "sh $BIN/fixPhantom.sh"

    .line 132
    .line 133
    invoke-virtual {v7, v3, v2, v0}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->k(Ljava/lang/String;Ljava/lang/String;Lw1/r;)V

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_1
    iget-boolean v4, v7, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->b:Z

    .line 138
    .line 139
    if-nez v4, :cond_3

    .line 140
    .line 141
    iget-boolean v6, v0, Lw1/p;->g:Z

    .line 142
    .line 143
    if-eqz v6, :cond_2

    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_2
    const v0, 0x7f060055

    .line 147
    .line 148
    .line 149
    invoke-virtual {v7, v0}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->f(I)Z

    .line 150
    .line 151
    .line 152
    iput-boolean v3, v7, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->a:Z

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_3
    :goto_0
    if-nez v4, :cond_4

    .line 156
    .line 157
    iput-boolean v3, v0, Lw1/p;->g:Z

    .line 158
    .line 159
    :cond_4
    iget-object v0, v5, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 160
    .line 161
    check-cast v0, Lw1/r;

    .line 162
    .line 163
    const-string v3, "$BIN/adb devices"

    .line 164
    .line 165
    invoke-virtual {v7, v3, v2, v0}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->k(Ljava/lang/String;Ljava/lang/String;Lw1/r;)V

    .line 166
    .line 167
    .line 168
    :goto_1
    return-void

    .line 169
    :pswitch_7
    iget-object v0, v1, Lo0/e;->g:Ljava/lang/Object;

    .line 170
    .line 171
    check-cast v0, Lq1/x;

    .line 172
    .line 173
    iget-object v2, v1, Lo0/e;->h:Ljava/lang/Object;

    .line 174
    .line 175
    check-cast v2, Ljava/lang/Runnable;

    .line 176
    .line 177
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    new-instance v3, Lq1/k;

    .line 181
    .line 182
    invoke-direct {v3, v0}, Lq1/k;-><init>(Lq1/x;)V

    .line 183
    .line 184
    .line 185
    invoke-static {v3}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 186
    .line 187
    .line 188
    iget-object v3, v0, Lq1/x;->d:Lq1/f;

    .line 189
    .line 190
    invoke-static {v3}, Lcom/nomone/vr_desktop/Applications/SettingsApplication;->h(Lq1/f;)F

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    iget-object v0, v0, Lq1/x;->a:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 195
    .line 196
    invoke-static {v0, v3}, Lcom/nomone/GeckoView/MyGeckoView;->c(Lcom/nomone/vr_desktop/LaunchActivity;F)Lorg/mozilla/geckoview/GeckoRuntime;

    .line 197
    .line 198
    .line 199
    sget-object v0, Lq1/f;->L:Lo1/j0;

    .line 200
    .line 201
    invoke-virtual {v0, v2}, Lo1/j0;->c(Ljava/lang/Runnable;)V

    .line 202
    .line 203
    .line 204
    return-void

    .line 205
    :pswitch_8
    iget-object v0, v1, Lo0/e;->g:Ljava/lang/Object;

    .line 206
    .line 207
    check-cast v0, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;

    .line 208
    .line 209
    iget-object v2, v1, Lo0/e;->h:Ljava/lang/Object;

    .line 210
    .line 211
    check-cast v2, Ljava/lang/String;

    .line 212
    .line 213
    :catch_0
    :cond_5
    :goto_2
    iget v5, v0, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->m:I

    .line 214
    .line 215
    if-eqz v5, :cond_b

    .line 216
    .line 217
    invoke-static {v5}, Lcom/nomone/vr_desktop/NativeUtils;->readFromFD(I)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    if-nez v5, :cond_6

    .line 222
    .line 223
    const-wide/16 v5, 0x32

    .line 224
    .line 225
    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 226
    .line 227
    .line 228
    goto :goto_2

    .line 229
    :cond_6
    const-string v6, "Client sent: "

    .line 230
    .line 231
    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v6

    .line 235
    const-string v7, "sdf"

    .line 236
    .line 237
    invoke-static {v7, v6}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    const-string v6, "Ready"

    .line 241
    .line 242
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v6

    .line 246
    if-eqz v6, :cond_7

    .line 247
    .line 248
    invoke-static {v2, v3}, Lcom/nomone/vr_desktop/NativeUtils;->openFD(Ljava/lang/String;Z)I

    .line 249
    .line 250
    .line 251
    move-result v5

    .line 252
    iput v5, v0, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->l:I

    .line 253
    .line 254
    goto :goto_2

    .line 255
    :cond_7
    const-string v6, "Ok"

    .line 256
    .line 257
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    move-result v6

    .line 261
    if-eqz v6, :cond_8

    .line 262
    .line 263
    iput-boolean v4, v0, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->n:Z

    .line 264
    .line 265
    goto :goto_2

    .line 266
    :cond_8
    const-string v6, "shutdown"

    .line 267
    .line 268
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    move-result v6

    .line 272
    if-eqz v6, :cond_9

    .line 273
    .line 274
    goto :goto_3

    .line 275
    :cond_9
    const-string v6, "shutdownsystem"

    .line 276
    .line 277
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    move-result v6

    .line 281
    if-eqz v6, :cond_a

    .line 282
    .line 283
    sput-boolean v4, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->B:Z

    .line 284
    .line 285
    :goto_3
    invoke-virtual {v0}, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->b()V

    .line 286
    .line 287
    .line 288
    goto :goto_2

    .line 289
    :cond_a
    const-string v6, "fullscreen"

    .line 290
    .line 291
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    move-result v5

    .line 295
    if-eqz v5, :cond_5

    .line 296
    .line 297
    iget-object v5, v0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->d:La2/p;

    .line 298
    .line 299
    iget-boolean v5, v5, La2/p;->n0:Z

    .line 300
    .line 301
    xor-int/2addr v5, v4

    .line 302
    invoke-virtual {v0, v5}, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->g(Z)V

    .line 303
    .line 304
    .line 305
    goto :goto_2

    .line 306
    :cond_b
    return-void

    .line 307
    :pswitch_9
    iget-object v0, v1, Lo0/e;->g:Ljava/lang/Object;

    .line 308
    .line 309
    check-cast v0, Ljava/lang/String;

    .line 310
    .line 311
    iget-object v3, v1, Lo0/e;->h:Ljava/lang/Object;

    .line 312
    .line 313
    check-cast v3, Ljava/util/HashMap;

    .line 314
    .line 315
    sget-object v4, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->y:Ljava/lang/ThreadGroup;

    .line 316
    .line 317
    const-string v4, "ps"

    .line 318
    .line 319
    filled-new-array {v4}, [Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v4

    .line 323
    invoke-static {v4, v0, v3, v2}, Lcom/google/android/gms/internal/play_billing/i0;->h0([Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lo1/c1;)V

    .line 324
    .line 325
    .line 326
    return-void

    .line 327
    :pswitch_a
    iget-object v0, v1, Lo0/e;->g:Ljava/lang/Object;

    .line 328
    .line 329
    check-cast v0, Lcom/nomone/vr_desktop/Applications/Linux/DeployLinuxImage;

    .line 330
    .line 331
    iget-object v5, v1, Lo0/e;->h:Ljava/lang/Object;

    .line 332
    .line 333
    check-cast v5, Lr1/y;

    .line 334
    .line 335
    sget-object v6, Lcom/nomone/vr_desktop/Applications/Linux/DeployLinuxImage;->o:[Ljava/lang/String;

    .line 336
    .line 337
    invoke-virtual {v0}, Lcom/nomone/vr_desktop/Applications/PromptApplication;->b()V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v0, v5}, Lcom/nomone/vr_desktop/Applications/PromptApplication;->e(Lr1/y;)V

    .line 341
    .line 342
    .line 343
    iget-object v5, v0, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->a:Lq1/f;

    .line 344
    .line 345
    invoke-static {v5, v0, v2, v3}, Lcom/nomone/vr_desktop/Applications/LauncherApplication;->g(Lq1/f;Lr1/c;Lr1/c;Z)V

    .line 346
    .line 347
    .line 348
    sput-boolean v4, Lcom/nomone/vr_desktop/Applications/Linux/DeployLinuxImage;->r:Z

    .line 349
    .line 350
    return-void

    .line 351
    :pswitch_b
    iget-object v0, v1, Lo0/e;->g:Ljava/lang/Object;

    .line 352
    .line 353
    move-object v2, v0

    .line 354
    check-cast v2, Lcom/nomone/vr_desktop/Applications/Linux/DeployLinuxImage;

    .line 355
    .line 356
    iget-object v0, v1, Lo0/e;->h:Ljava/lang/Object;

    .line 357
    .line 358
    check-cast v0, Lq1/f;

    .line 359
    .line 360
    sget-object v5, Lcom/nomone/vr_desktop/Applications/Linux/DeployLinuxImage;->o:[Ljava/lang/String;

    .line 361
    .line 362
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 363
    .line 364
    .line 365
    new-instance v5, Lo0/j;

    .line 366
    .line 367
    const/4 v6, 0x3

    .line 368
    invoke-direct {v5, v6, v2, v0}, Lo0/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 369
    .line 370
    .line 371
    iget-object v6, v2, Lcom/nomone/vr_desktop/Applications/Linux/DeployLinuxImage;->k:Lr1/y;

    .line 372
    .line 373
    iput-object v5, v6, Lr1/y;->o:Lr1/w;

    .line 374
    .line 375
    const-string v5, "Installing Linux: checking internet connection"

    .line 376
    .line 377
    iput-object v5, v6, Lr1/y;->d:Ljava/lang/String;

    .line 378
    .line 379
    const-string v5, "Please wait while we check the internet connection..."

    .line 380
    .line 381
    iput-object v5, v6, Lr1/y;->e:Ljava/lang/String;

    .line 382
    .line 383
    iput-boolean v4, v6, Lr1/y;->l:Z

    .line 384
    .line 385
    iput-boolean v3, v6, Lr1/y;->m:Z

    .line 386
    .line 387
    invoke-virtual {v2, v6}, Lcom/nomone/vr_desktop/Applications/Linux/DeployLinuxImage;->i(Lr1/y;)V

    .line 388
    .line 389
    .line 390
    iput-boolean v3, v6, Lr1/y;->l:Z

    .line 391
    .line 392
    iget-object v5, v0, Lq1/f;->b:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 393
    .line 394
    const-string v7, "connectivity"

    .line 395
    .line 396
    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object v5

    .line 400
    check-cast v5, Landroid/net/ConnectivityManager;

    .line 401
    .line 402
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 403
    .line 404
    .line 405
    move-result-object v8

    .line 406
    if-eqz v8, :cond_c

    .line 407
    .line 408
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 409
    .line 410
    .line 411
    move-result-object v5

    .line 412
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 413
    .line 414
    .line 415
    move-result v5

    .line 416
    if-eqz v5, :cond_c

    .line 417
    .line 418
    goto :goto_4

    .line 419
    :cond_c
    move v4, v3

    .line 420
    :goto_4
    if-nez v4, :cond_d

    .line 421
    .line 422
    const-string v0, "Installing Linux: no network"

    .line 423
    .line 424
    iput-object v0, v6, Lr1/y;->d:Ljava/lang/String;

    .line 425
    .line 426
    const-string v0, "We couldn\'t detect an internet connection. We need to contact our servers to retrieve the system image."

    .line 427
    .line 428
    goto :goto_5

    .line 429
    :cond_d
    iget-object v4, v0, Lq1/f;->b:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 430
    .line 431
    invoke-static {v4}, Lcom/google/android/gms/internal/play_billing/i0;->M(Landroid/content/Context;)Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v0

    .line 435
    const-string v5, "-"

    .line 436
    .line 437
    const/4 v8, 0x2

    .line 438
    const-string v9, "1.9.3-GooglePlay"

    .line 439
    .line 440
    invoke-virtual {v9, v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v5

    .line 444
    aget-object v5, v5, v3

    .line 445
    .line 446
    if-nez v0, :cond_e

    .line 447
    .line 448
    const-string v0, "os.arch"

    .line 449
    .line 450
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    const-string v3, "Installing Linux: Unsupported architecture"

    .line 455
    .line 456
    iput-object v3, v6, Lr1/y;->d:Ljava/lang/String;

    .line 457
    .line 458
    const-string v3, "Detected architecture is <strong>"

    .line 459
    .line 460
    const-string v4, "</strong>. We only support <strong>arm64-v8a</strong> and <strong>armeabi-v7a</strong>. We won\'t be able to run Linux. Sorry for the inconvenience."

    .line 461
    .line 462
    invoke-static {v3, v0, v4}, La1/b;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v0

    .line 466
    :goto_5
    iput-object v0, v6, Lr1/y;->e:Ljava/lang/String;

    .line 467
    .line 468
    goto/16 :goto_15

    .line 469
    .line 470
    :cond_e
    const-string v8, "arm64-v8a"

    .line 471
    .line 472
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 473
    .line 474
    .line 475
    move-result v8

    .line 476
    const-string v9, "sdf"

    .line 477
    .line 478
    const/4 v10, 0x4

    .line 479
    if-eqz v8, :cond_10

    .line 480
    .line 481
    new-array v0, v10, [Ljava/lang/String;

    .line 482
    .line 483
    move v8, v3

    .line 484
    :goto_6
    if-ge v8, v10, :cond_f

    .line 485
    .line 486
    new-instance v11, Ljava/lang/StringBuilder;

    .line 487
    .line 488
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 489
    .line 490
    .line 491
    sget-object v12, Lcom/nomone/vr_desktop/Applications/Linux/DeployLinuxImage;->o:[Ljava/lang/String;

    .line 492
    .line 493
    aget-object v12, v12, v8

    .line 494
    .line 495
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    .line 497
    .line 498
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    .line 500
    .line 501
    const-string v12, "/mirrors64.txt"

    .line 502
    .line 503
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    .line 505
    .line 506
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object v11

    .line 510
    aput-object v11, v0, v8

    .line 511
    .line 512
    add-int/lit8 v8, v8, 0x1

    .line 513
    .line 514
    goto :goto_6

    .line 515
    :cond_f
    move-object v5, v0

    .line 516
    goto :goto_8

    .line 517
    :cond_10
    const-string v8, "armeabi-v7a"

    .line 518
    .line 519
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 520
    .line 521
    .line 522
    move-result v8

    .line 523
    if-eqz v8, :cond_27

    .line 524
    .line 525
    new-array v0, v10, [Ljava/lang/String;

    .line 526
    .line 527
    move v8, v3

    .line 528
    :goto_7
    if-ge v8, v10, :cond_f

    .line 529
    .line 530
    new-instance v11, Ljava/lang/StringBuilder;

    .line 531
    .line 532
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 533
    .line 534
    .line 535
    sget-object v12, Lcom/nomone/vr_desktop/Applications/Linux/DeployLinuxImage;->p:[Ljava/lang/String;

    .line 536
    .line 537
    aget-object v12, v12, v8

    .line 538
    .line 539
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    .line 541
    .line 542
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    .line 544
    .line 545
    const-string v12, "/mirrors32.txt"

    .line 546
    .line 547
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v11

    .line 554
    aput-object v11, v0, v8

    .line 555
    .line 556
    add-int/lit8 v8, v8, 0x1

    .line 557
    .line 558
    goto :goto_7

    .line 559
    :goto_8
    new-instance v0, Ljava/util/Random;

    .line 560
    .line 561
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 562
    .line 563
    .line 564
    move v8, v3

    .line 565
    :goto_9
    array-length v10, v5

    .line 566
    if-ge v8, v10, :cond_11

    .line 567
    .line 568
    array-length v10, v5

    .line 569
    invoke-virtual {v0, v10}, Ljava/util/Random;->nextInt(I)I

    .line 570
    .line 571
    .line 572
    move-result v10

    .line 573
    aget-object v11, v5, v10

    .line 574
    .line 575
    aget-object v12, v5, v8

    .line 576
    .line 577
    aput-object v12, v5, v10

    .line 578
    .line 579
    aput-object v11, v5, v8

    .line 580
    .line 581
    add-int/lit8 v8, v8, 0x1

    .line 582
    .line 583
    goto :goto_9

    .line 584
    :cond_11
    array-length v8, v5

    .line 585
    :goto_a
    iget-object v10, v2, Lcom/nomone/vr_desktop/Applications/Linux/DeployLinuxImage;->l:Ljava/util/ArrayList;

    .line 586
    .line 587
    if-ge v3, v8, :cond_1e

    .line 588
    .line 589
    aget-object v0, v5, v3

    .line 590
    .line 591
    new-instance v11, Ljava/lang/StringBuilder;

    .line 592
    .line 593
    const-string v12, "Trying mirror: "

    .line 594
    .line 595
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 596
    .line 597
    .line 598
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    .line 600
    .line 601
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 602
    .line 603
    .line 604
    move-result-object v11

    .line 605
    invoke-static {v9, v11}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    .line 607
    .line 608
    :try_start_2
    new-instance v11, Ljava/net/URL;

    .line 609
    .line 610
    invoke-direct {v11, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 611
    .line 612
    .line 613
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 614
    .line 615
    .line 616
    move-result-object v0

    .line 617
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 618
    .line 619
    const/16 v11, 0x7d0

    .line 620
    .line 621
    invoke-virtual {v0, v11}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 622
    .line 623
    .line 624
    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    .line 625
    .line 626
    .line 627
    move-result v11

    .line 628
    const/4 v12, -0x1

    .line 629
    if-ne v11, v12, :cond_12

    .line 630
    .line 631
    goto :goto_b

    .line 632
    :cond_12
    new-array v13, v11, [B

    .line 633
    .line 634
    new-instance v14, Ljava/io/BufferedInputStream;

    .line 635
    .line 636
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 637
    .line 638
    .line 639
    move-result-object v0

    .line 640
    invoke-direct {v14, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 641
    .line 642
    .line 643
    const/4 v0, 0x0

    .line 644
    :cond_13
    sub-int v15, v11, v0

    .line 645
    .line 646
    invoke-virtual {v14, v13, v0, v15}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 647
    .line 648
    .line 649
    move-result v15
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 650
    if-ne v15, v12, :cond_14

    .line 651
    .line 652
    goto :goto_b

    .line 653
    :cond_14
    add-int/2addr v0, v15

    .line 654
    if-lt v0, v11, :cond_13

    .line 655
    .line 656
    goto :goto_c

    .line 657
    :catch_1
    move-exception v0

    .line 658
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 659
    .line 660
    .line 661
    :goto_b
    const/4 v13, 0x0

    .line 662
    :goto_c
    if-nez v13, :cond_15

    .line 663
    .line 664
    goto/16 :goto_10

    .line 665
    .line 666
    :cond_15
    new-instance v0, Ljava/lang/String;

    .line 667
    .line 668
    invoke-direct {v0, v13}, Ljava/lang/String;-><init>([B)V

    .line 669
    .line 670
    .line 671
    const-string v11, "\r?\n|\r"

    .line 672
    .line 673
    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 674
    .line 675
    .line 676
    move-result-object v0

    .line 677
    const/4 v11, 0x0

    .line 678
    const/4 v12, 0x0

    .line 679
    :goto_d
    array-length v13, v0

    .line 680
    if-ge v11, v13, :cond_1c

    .line 681
    .line 682
    aget-object v13, v0, v11

    .line 683
    .line 684
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 685
    .line 686
    .line 687
    move-result-object v13

    .line 688
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    .line 689
    .line 690
    .line 691
    move-result v14

    .line 692
    if-nez v14, :cond_1b

    .line 693
    .line 694
    const-string v14, "#"

    .line 695
    .line 696
    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 697
    .line 698
    .line 699
    move-result v14

    .line 700
    if-eqz v14, :cond_16

    .line 701
    .line 702
    goto :goto_f

    .line 703
    :cond_16
    if-nez v12, :cond_18

    .line 704
    .line 705
    const-string v14, "NOMoneDesktop"

    .line 706
    .line 707
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 708
    .line 709
    .line 710
    move-result v13

    .line 711
    if-nez v13, :cond_17

    .line 712
    .line 713
    goto :goto_f

    .line 714
    :cond_17
    const-string v12, "Found signature"

    .line 715
    .line 716
    invoke-static {v9, v12}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    .line 718
    .line 719
    const/4 v12, 0x1

    .line 720
    goto :goto_f

    .line 721
    :cond_18
    iget-wide v14, v2, Lcom/nomone/vr_desktop/Applications/Linux/DeployLinuxImage;->n:J

    .line 722
    .line 723
    const-wide/16 v16, 0x0

    .line 724
    .line 725
    cmp-long v14, v14, v16

    .line 726
    .line 727
    if-nez v14, :cond_19

    .line 728
    .line 729
    :try_start_3
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 730
    .line 731
    .line 732
    move-result-wide v13

    .line 733
    iput-wide v13, v2, Lcom/nomone/vr_desktop/Applications/Linux/DeployLinuxImage;->n:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 734
    .line 735
    :catch_2
    new-instance v13, Ljava/lang/StringBuilder;

    .line 736
    .line 737
    const-string v14, "Download size: "

    .line 738
    .line 739
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 740
    .line 741
    .line 742
    iget-wide v14, v2, Lcom/nomone/vr_desktop/Applications/Linux/DeployLinuxImage;->n:J

    .line 743
    .line 744
    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 745
    .line 746
    .line 747
    goto :goto_e

    .line 748
    :cond_19
    iget-object v14, v2, Lcom/nomone/vr_desktop/Applications/Linux/DeployLinuxImage;->m:Ljava/lang/String;

    .line 749
    .line 750
    if-nez v14, :cond_1a

    .line 751
    .line 752
    iput-object v13, v2, Lcom/nomone/vr_desktop/Applications/Linux/DeployLinuxImage;->m:Ljava/lang/String;

    .line 753
    .line 754
    new-instance v13, Ljava/lang/StringBuilder;

    .line 755
    .line 756
    const-string v14, "Image name: "

    .line 757
    .line 758
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 759
    .line 760
    .line 761
    iget-object v14, v2, Lcom/nomone/vr_desktop/Applications/Linux/DeployLinuxImage;->m:Ljava/lang/String;

    .line 762
    .line 763
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    .line 765
    .line 766
    :goto_e
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 767
    .line 768
    .line 769
    move-result-object v13

    .line 770
    invoke-static {v9, v13}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    .line 772
    .line 773
    goto :goto_f

    .line 774
    :cond_1a
    const-string v14, "Added link: "

    .line 775
    .line 776
    invoke-virtual {v14, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 777
    .line 778
    .line 779
    move-result-object v14

    .line 780
    invoke-static {v9, v14}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    .line 782
    .line 783
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 784
    .line 785
    .line 786
    :cond_1b
    :goto_f
    add-int/lit8 v11, v11, 0x1

    .line 787
    .line 788
    goto :goto_d

    .line 789
    :cond_1c
    iget-wide v11, v2, Lcom/nomone/vr_desktop/Applications/Linux/DeployLinuxImage;->n:J

    .line 790
    .line 791
    const-wide/16 v13, 0x0

    .line 792
    .line 793
    cmp-long v0, v11, v13

    .line 794
    .line 795
    if-eqz v0, :cond_1d

    .line 796
    .line 797
    iget-object v0, v2, Lcom/nomone/vr_desktop/Applications/Linux/DeployLinuxImage;->m:Ljava/lang/String;

    .line 798
    .line 799
    if-eqz v0, :cond_1d

    .line 800
    .line 801
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 802
    .line 803
    .line 804
    move-result v0

    .line 805
    if-eqz v0, :cond_1f

    .line 806
    .line 807
    :cond_1d
    iput-wide v13, v2, Lcom/nomone/vr_desktop/Applications/Linux/DeployLinuxImage;->n:J

    .line 808
    .line 809
    const/4 v0, 0x0

    .line 810
    iput-object v0, v2, Lcom/nomone/vr_desktop/Applications/Linux/DeployLinuxImage;->m:Ljava/lang/String;

    .line 811
    .line 812
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 813
    .line 814
    .line 815
    :goto_10
    add-int/lit8 v3, v3, 0x1

    .line 816
    .line 817
    goto/16 :goto_a

    .line 818
    .line 819
    :cond_1e
    const-wide/16 v13, 0x0

    .line 820
    .line 821
    :cond_1f
    iget-wide v11, v2, Lcom/nomone/vr_desktop/Applications/Linux/DeployLinuxImage;->n:J

    .line 822
    .line 823
    cmp-long v0, v11, v13

    .line 824
    .line 825
    const/16 v3, 0x1cc

    .line 826
    .line 827
    if-eqz v0, :cond_26

    .line 828
    .line 829
    iget-object v0, v2, Lcom/nomone/vr_desktop/Applications/Linux/DeployLinuxImage;->m:Ljava/lang/String;

    .line 830
    .line 831
    if-eqz v0, :cond_26

    .line 832
    .line 833
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    .line 834
    .line 835
    .line 836
    move-result v0

    .line 837
    if-eqz v0, :cond_20

    .line 838
    .line 839
    goto/16 :goto_14

    .line 840
    .line 841
    :cond_20
    new-instance v0, Ljava/util/Random;

    .line 842
    .line 843
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 844
    .line 845
    .line 846
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 847
    .line 848
    .line 849
    move-result v5

    .line 850
    const/4 v8, 0x0

    .line 851
    :goto_11
    if-ge v8, v5, :cond_21

    .line 852
    .line 853
    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    .line 854
    .line 855
    .line 856
    move-result v11

    .line 857
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 858
    .line 859
    .line 860
    move-result-object v12

    .line 861
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 862
    .line 863
    .line 864
    move-result-object v13

    .line 865
    invoke-virtual {v10, v11, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 866
    .line 867
    .line 868
    invoke-virtual {v10, v8, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 869
    .line 870
    .line 871
    add-int/lit8 v8, v8, 0x1

    .line 872
    .line 873
    goto :goto_11

    .line 874
    :cond_21
    iget-wide v10, v2, Lcom/nomone/vr_desktop/Applications/Linux/DeployLinuxImage;->n:J

    .line 875
    .line 876
    const-string v0, "Linux deployment checkpoint"

    .line 877
    .line 878
    sget-object v5, Lo1/y;->a:Landroid/content/SharedPreferences;

    .line 879
    .line 880
    const/4 v8, 0x0

    .line 881
    invoke-interface {v5, v0, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 882
    .line 883
    .line 884
    move-result-object v0

    .line 885
    invoke-static {v0}, Lq1/a;->a(Ljava/lang/String;)Lq1/a;

    .line 886
    .line 887
    .line 888
    move-result-object v0

    .line 889
    if-eqz v0, :cond_22

    .line 890
    .line 891
    iget-wide v12, v0, Lq1/a;->b:J

    .line 892
    .line 893
    sub-long/2addr v10, v12

    .line 894
    :cond_22
    const-wide/16 v12, 0x0

    .line 895
    .line 896
    cmp-long v0, v10, v12

    .line 897
    .line 898
    const/16 v5, 0xd2

    .line 899
    .line 900
    if-gez v0, :cond_23

    .line 901
    .line 902
    const-string v0, "Installing Linux: incompatible image"

    .line 903
    .line 904
    iput-object v0, v6, Lr1/y;->d:Ljava/lang/String;

    .line 905
    .line 906
    const-string v0, "The system image hosted on the servers has changed since you started this download. We\'ll remove any existing data, then please try again."

    .line 907
    .line 908
    iput-object v0, v6, Lr1/y;->e:Ljava/lang/String;

    .line 909
    .line 910
    invoke-virtual {v6, v3, v5}, Lr1/y;->d(II)V

    .line 911
    .line 912
    .line 913
    const-string v0, "Clean"

    .line 914
    .line 915
    invoke-virtual {v6, v0}, Lr1/y;->a(Ljava/lang/String;)V

    .line 916
    .line 917
    .line 918
    invoke-virtual {v2, v6}, Lcom/nomone/vr_desktop/Applications/Linux/DeployLinuxImage;->i(Lr1/y;)V

    .line 919
    .line 920
    .line 921
    iget-object v0, v6, Lr1/y;->k:Ljava/util/ArrayList;

    .line 922
    .line 923
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 924
    .line 925
    .line 926
    goto :goto_17

    .line 927
    :cond_23
    invoke-static {v10, v11}, Lcom/google/android/gms/internal/play_billing/i0;->k0(J)Ljava/lang/String;

    .line 928
    .line 929
    .line 930
    move-result-object v0

    .line 931
    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 932
    .line 933
    .line 934
    move-result-object v4

    .line 935
    check-cast v4, Landroid/net/ConnectivityManager;

    .line 936
    .line 937
    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 938
    .line 939
    .line 940
    move-result-object v4

    .line 941
    if-eqz v4, :cond_24

    .line 942
    .line 943
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    .line 944
    .line 945
    .line 946
    move-result v4

    .line 947
    if-nez v4, :cond_24

    .line 948
    .line 949
    const/4 v4, 0x1

    .line 950
    goto :goto_12

    .line 951
    :cond_24
    const/4 v4, 0x0

    .line 952
    :goto_12
    const-string v7, "</strong>. Are you sure you want to cont&shy;inue?"

    .line 953
    .line 954
    if-eqz v4, :cond_25

    .line 955
    .line 956
    const-string v4, "Installing Linux: WARNING .. mobile data"

    .line 957
    .line 958
    iput-object v4, v6, Lr1/y;->d:Ljava/lang/String;

    .line 959
    .line 960
    const-string v4, "The active connection seems to be <strong>mobile data</strong>. We are going to download <strong>"

    .line 961
    .line 962
    invoke-static {v4, v0, v7}, La1/b;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 963
    .line 964
    .line 965
    move-result-object v0

    .line 966
    iput-object v0, v6, Lr1/y;->e:Ljava/lang/String;

    .line 967
    .line 968
    invoke-virtual {v6, v3, v5}, Lr1/y;->d(II)V

    .line 969
    .line 970
    .line 971
    goto :goto_13

    .line 972
    :cond_25
    const-string v4, "Installing Linux: WARNING .. large download"

    .line 973
    .line 974
    iput-object v4, v6, Lr1/y;->d:Ljava/lang/String;

    .line 975
    .line 976
    const-string v4, "We are going to download <strong>"

    .line 977
    .line 978
    invoke-static {v4, v0, v7}, La1/b;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 979
    .line 980
    .line 981
    move-result-object v0

    .line 982
    iput-object v0, v6, Lr1/y;->e:Ljava/lang/String;

    .line 983
    .line 984
    const/16 v0, 0xbe

    .line 985
    .line 986
    invoke-virtual {v6, v3, v0}, Lr1/y;->d(II)V

    .line 987
    .line 988
    .line 989
    :goto_13
    const-string v0, "Continue"

    .line 990
    .line 991
    invoke-virtual {v6, v0}, Lr1/y;->a(Ljava/lang/String;)V

    .line 992
    .line 993
    .line 994
    const-string v0, "Later"

    .line 995
    .line 996
    invoke-virtual {v6, v0}, Lr1/y;->a(Ljava/lang/String;)V

    .line 997
    .line 998
    .line 999
    invoke-virtual {v2, v6}, Lcom/nomone/vr_desktop/Applications/Linux/DeployLinuxImage;->i(Lr1/y;)V

    .line 1000
    .line 1001
    .line 1002
    iget-object v0, v6, Lr1/y;->k:Ljava/util/ArrayList;

    .line 1003
    .line 1004
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1005
    .line 1006
    .line 1007
    const-string v0, "Start thread finished 1"

    .line 1008
    .line 1009
    goto :goto_16

    .line 1010
    :cond_26
    :goto_14
    const-string v0, "Installing Linux: no internet?"

    .line 1011
    .line 1012
    iput-object v0, v6, Lr1/y;->d:Ljava/lang/String;

    .line 1013
    .line 1014
    const-string v0, "Couldn\'t reach NOMone Desktop servers to download system image. It\'s either an internet connection issue or our servers are all down. Please try again a few hours later."

    .line 1015
    .line 1016
    iput-object v0, v6, Lr1/y;->e:Ljava/lang/String;

    .line 1017
    .line 1018
    const/16 v0, 0xe6

    .line 1019
    .line 1020
    invoke-virtual {v6, v3, v0}, Lr1/y;->d(II)V

    .line 1021
    .line 1022
    .line 1023
    :goto_15
    invoke-virtual {v2, v6}, Lcom/nomone/vr_desktop/Applications/Linux/DeployLinuxImage;->i(Lr1/y;)V

    .line 1024
    .line 1025
    .line 1026
    goto :goto_17

    .line 1027
    :cond_27
    const-string v2, "Did you add a new architecture?! Found: "

    .line 1028
    .line 1029
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v0

    .line 1033
    :goto_16
    invoke-static {v9, v0}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    .line 1035
    .line 1036
    :goto_17
    return-void

    .line 1037
    :pswitch_c
    iget-object v0, v1, Lo0/e;->g:Ljava/lang/Object;

    .line 1038
    .line 1039
    check-cast v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;

    .line 1040
    .line 1041
    iget-object v2, v1, Lo0/e;->h:Ljava/lang/Object;

    .line 1042
    .line 1043
    check-cast v2, Landroid/app/job/JobParameters;

    .line 1044
    .line 1045
    sget v3, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;->a:I

    .line 1046
    .line 1047
    const/4 v3, 0x0

    .line 1048
    invoke-virtual {v0, v2, v3}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 1049
    .line 1050
    .line 1051
    return-void

    .line 1052
    :goto_18
    iget-object v0, v1, Lo0/e;->g:Ljava/lang/Object;

    .line 1053
    .line 1054
    check-cast v0, Ld3/r0;

    .line 1055
    .line 1056
    iget-object v2, v1, Lo0/e;->h:Ljava/lang/Object;

    .line 1057
    .line 1058
    check-cast v2, Ld3/q0;

    .line 1059
    .line 1060
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1061
    .line 1062
    .line 1063
    check-cast v2, Ld3/o0;

    .line 1064
    .line 1065
    iget v0, v2, Ld3/o0;->f:I

    .line 1066
    .line 1067
    packed-switch v0, :pswitch_data_1

    .line 1068
    .line 1069
    .line 1070
    goto :goto_19

    .line 1071
    :pswitch_d
    iget-object v0, v2, Ld3/o0;->g:Ljava/lang/Object;

    .line 1072
    .line 1073
    check-cast v0, Ld3/p0;

    .line 1074
    .line 1075
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1076
    .line 1077
    .line 1078
    new-instance v3, Ld3/m0;

    .line 1079
    .line 1080
    const/4 v4, 0x1

    .line 1081
    invoke-direct {v3, v0, v4}, Ld3/m0;-><init>(Ld3/p0;I)V

    .line 1082
    .line 1083
    .line 1084
    iget-object v0, v0, Ld3/p0;->b:Landroid/os/Handler;

    .line 1085
    .line 1086
    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1087
    .line 1088
    .line 1089
    iget-object v0, v2, Ld3/o0;->g:Ljava/lang/Object;

    .line 1090
    .line 1091
    check-cast v0, Ld3/p0;

    .line 1092
    .line 1093
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1094
    .line 1095
    .line 1096
    goto :goto_1a

    .line 1097
    :goto_19
    iget-object v0, v2, Ld3/o0;->g:Ljava/lang/Object;

    .line 1098
    .line 1099
    check-cast v0, Ld3/r0;

    .line 1100
    .line 1101
    invoke-virtual {v0}, Ld3/r0;->release()V

    .line 1102
    .line 1103
    .line 1104
    :goto_1a
    return-void

    .line 1105
    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch
.end method
