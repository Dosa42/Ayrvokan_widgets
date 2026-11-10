.class public final synthetic Lr1/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln1/m;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lr1/c;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lr1/c;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lr1/f;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lr1/f;->b:Lr1/c;

    .line 4
    .line 5
    iput-object p2, p0, Lr1/f;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 30

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget v2, v1, Lr1/f;->a:I

    .line 6
    .line 7
    const/16 v3, 0x8

    .line 8
    .line 9
    const-string v4, ""

    .line 10
    .line 11
    const-string v5, "`"

    .line 12
    .line 13
    const-string v6, ":"

    .line 14
    .line 15
    const/4 v7, 0x0

    .line 16
    iget-object v8, v1, Lr1/f;->c:Ljava/lang/Object;

    .line 17
    .line 18
    iget-object v9, v1, Lr1/f;->b:Lr1/c;

    .line 19
    .line 20
    const/4 v10, 0x1

    .line 21
    packed-switch v2, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    goto/16 :goto_8

    .line 25
    .line 26
    :pswitch_0
    check-cast v9, Lcom/nomone/vr_desktop/Applications/PromptApplication;

    .line 27
    .line 28
    check-cast v8, Lr1/y;

    .line 29
    .line 30
    sget-object v2, Lcom/nomone/vr_desktop/Applications/PromptApplication;->h:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    const-string v2, "Prompt started"

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_5

    .line 42
    .line 43
    iget-object v0, v9, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->d:La2/p;

    .line 44
    .line 45
    iget-object v0, v0, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 46
    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v3, "document.title = `"

    .line 50
    .line 51
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v3, v8, Lr1/y;->d:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v0, v2}, Lcom/nomone/GeckoView/MyGeckoView;->f(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 70
    .line 71
    const/16 v3, 0x1d

    .line 72
    .line 73
    if-ge v2, v3, :cond_0

    .line 74
    .line 75
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    const-string v3, "SAMSUNG"

    .line 82
    .line 83
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-eqz v2, :cond_0

    .line 88
    .line 89
    const-string v4, "<style>.button-text { top: 2px; }</style>"

    .line 90
    .line 91
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string v3, "setMessageBase64(`"

    .line 94
    .line 95
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    iget-object v5, v8, Lr1/y;->f:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget-object v4, v8, Lr1/y;->e:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/i0;->C(Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v3, "`)"

    .line 128
    .line 129
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-virtual {v0, v2}, Lcom/nomone/GeckoView/MyGeckoView;->f(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    iget-boolean v2, v8, Lr1/y;->l:Z

    .line 140
    .line 141
    if-nez v2, :cond_4

    .line 142
    .line 143
    iget-object v2, v8, Lr1/y;->k:Ljava/util/ArrayList;

    .line 144
    .line 145
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    if-eqz v2, :cond_1

    .line 150
    .line 151
    const-string v2, "createButton(\'OK\')"

    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    iget-object v4, v8, Lr1/y;->k:Ljava/util/ArrayList;

    .line 160
    .line 161
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 166
    .line 167
    .line 168
    move-result v5

    .line 169
    if-eqz v5, :cond_3

    .line 170
    .line 171
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    check-cast v5, Ljava/lang/String;

    .line 176
    .line 177
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 178
    .line 179
    .line 180
    move-result v6

    .line 181
    if-lez v6, :cond_2

    .line 182
    .line 183
    const-string v6, ";"

    .line 184
    .line 185
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    :cond_2
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    goto :goto_0

    .line 192
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    const-string v5, "createButtons(`"

    .line 195
    .line 196
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    :goto_1
    invoke-virtual {v0, v2}, Lcom/nomone/GeckoView/MyGeckoView;->f(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    const-string v3, "setButtonsDimensions("

    .line 215
    .line 216
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    iget v3, v8, Lr1/y;->i:I

    .line 220
    .line 221
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    const-string v3, ", "

    .line 225
    .line 226
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    iget v3, v8, Lr1/y;->j:I

    .line 230
    .line 231
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    const-string v3, ")"

    .line 235
    .line 236
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    invoke-virtual {v0, v2}, Lcom/nomone/GeckoView/MyGeckoView;->f(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    :cond_4
    iget-object v0, v8, Lr1/y;->p:Lr1/x;

    .line 247
    .line 248
    if-eqz v0, :cond_7

    .line 249
    .line 250
    invoke-interface {v0, v9}, Lr1/x;->q(Lcom/nomone/vr_desktop/Applications/PromptApplication;)V

    .line 251
    .line 252
    .line 253
    goto :goto_2

    .line 254
    :cond_5
    const-string v2, "Prompt: "

    .line 255
    .line 256
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 257
    .line 258
    .line 259
    move-result v2

    .line 260
    if-eqz v2, :cond_8

    .line 261
    .line 262
    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 263
    .line 264
    .line 265
    move-result v2

    .line 266
    add-int/lit8 v2, v2, 0x2

    .line 267
    .line 268
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    iget-object v2, v8, Lr1/y;->o:Lr1/w;

    .line 273
    .line 274
    if-eqz v2, :cond_6

    .line 275
    .line 276
    invoke-interface {v2, v0}, Lr1/w;->g(Ljava/lang/String;)Z

    .line 277
    .line 278
    .line 279
    move-result v0

    .line 280
    if-eqz v0, :cond_7

    .line 281
    .line 282
    :cond_6
    invoke-virtual {v9}, Lcom/nomone/vr_desktop/Applications/PromptApplication;->b()V

    .line 283
    .line 284
    .line 285
    :cond_7
    :goto_2
    move v7, v10

    .line 286
    :cond_8
    return v7

    .line 287
    :pswitch_1
    check-cast v9, Lcom/nomone/vr_desktop/Applications/KeyboardApplication;

    .line 288
    .line 289
    check-cast v8, [C

    .line 290
    .line 291
    sget-object v2, Lcom/nomone/vr_desktop/Applications/KeyboardApplication;->g:Ljava/lang/String;

    .line 292
    .line 293
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 294
    .line 295
    .line 296
    const-string v2, "Focus"

    .line 297
    .line 298
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 299
    .line 300
    .line 301
    move-result v2

    .line 302
    if-eqz v2, :cond_a

    .line 303
    .line 304
    sget-object v0, Lcom/nomone/GeckoView/MyGeckoView;->p:Lcom/nomone/GeckoView/MyGeckoView;

    .line 305
    .line 306
    invoke-virtual {v0}, Lcom/nomone/GeckoView/MyGeckoView;->getLastHoverEvent()Lu1/w;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    invoke-virtual {v0}, Lu1/w;->a()Landroid/view/MotionEvent;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    if-eqz v0, :cond_9

    .line 315
    .line 316
    sget-object v2, Lcom/nomone/GeckoView/MyGeckoView;->p:Lcom/nomone/GeckoView/MyGeckoView;

    .line 317
    .line 318
    invoke-virtual {v2, v0}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 319
    .line 320
    .line 321
    :cond_9
    move v0, v7

    .line 322
    goto/16 :goto_4

    .line 323
    .line 324
    :cond_a
    const-string v2, "Char "

    .line 325
    .line 326
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 327
    .line 328
    .line 329
    move-result v2

    .line 330
    iget-object v5, v9, Lcom/nomone/vr_desktop/Applications/KeyboardApplication;->f:Lu1/o;

    .line 331
    .line 332
    if-eqz v2, :cond_b

    .line 333
    .line 334
    const/4 v2, 0x5

    .line 335
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    invoke-virtual {v0, v7, v10, v8, v7}, Ljava/lang/String;->getChars(II[CI)V

    .line 340
    .line 341
    .line 342
    aget-char v0, v8, v7

    .line 343
    .line 344
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 345
    .line 346
    .line 347
    :try_start_0
    sget-object v2, Lcom/nomone/GeckoView/MyGeckoView;->q:Landroid/text/Editable;

    .line 348
    .line 349
    sget v3, Lcom/nomone/GeckoView/MyGeckoView;->r:I

    .line 350
    .line 351
    sget v5, Lcom/nomone/GeckoView/MyGeckoView;->s:I

    .line 352
    .line 353
    new-instance v6, Ljava/lang/StringBuilder;

    .line 354
    .line 355
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    invoke-interface {v2, v3, v5, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    .line 367
    .line 368
    goto :goto_3

    .line 369
    :cond_b
    const-string v2, "Key "

    .line 370
    .line 371
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 372
    .line 373
    .line 374
    move-result v2

    .line 375
    if-eqz v2, :cond_c

    .line 376
    .line 377
    const/4 v2, 0x4

    .line 378
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 383
    .line 384
    .line 385
    move-result v0

    .line 386
    new-instance v2, Landroid/view/KeyEvent;

    .line 387
    .line 388
    invoke-direct {v2, v7, v0}, Landroid/view/KeyEvent;-><init>(II)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v5, v2}, Lu1/o;->b(Landroid/view/KeyEvent;)V

    .line 392
    .line 393
    .line 394
    new-instance v2, Landroid/view/KeyEvent;

    .line 395
    .line 396
    invoke-direct {v2, v10, v0}, Landroid/view/KeyEvent;-><init>(II)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v5, v2}, Lu1/o;->b(Landroid/view/KeyEvent;)V

    .line 400
    .line 401
    .line 402
    goto :goto_3

    .line 403
    :cond_c
    const-string v2, "Special "

    .line 404
    .line 405
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 406
    .line 407
    .line 408
    move-result v2

    .line 409
    if-eqz v2, :cond_f

    .line 410
    .line 411
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 416
    .line 417
    .line 418
    move-result v0

    .line 419
    const/16 v2, 0x66

    .line 420
    .line 421
    if-eq v0, v2, :cond_d

    .line 422
    .line 423
    goto :goto_3

    .line 424
    :cond_d
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 425
    .line 426
    .line 427
    new-instance v0, Landroid/view/KeyEvent;

    .line 428
    .line 429
    const-wide/16 v12, 0x0

    .line 430
    .line 431
    const-wide/16 v14, 0x0

    .line 432
    .line 433
    const/16 v16, 0x0

    .line 434
    .line 435
    const/16 v17, 0x32

    .line 436
    .line 437
    const/16 v18, 0x0

    .line 438
    .line 439
    const/16 v19, 0x1000

    .line 440
    .line 441
    move-object v11, v0

    .line 442
    invoke-direct/range {v11 .. v19}, Landroid/view/KeyEvent;-><init>(JJIIII)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {v5, v0}, Lu1/o;->b(Landroid/view/KeyEvent;)V

    .line 446
    .line 447
    .line 448
    new-instance v0, Landroid/view/KeyEvent;

    .line 449
    .line 450
    const-wide/16 v21, 0x0

    .line 451
    .line 452
    const-wide/16 v23, 0x0

    .line 453
    .line 454
    const/16 v25, 0x1

    .line 455
    .line 456
    const/16 v26, 0x32

    .line 457
    .line 458
    const/16 v27, 0x0

    .line 459
    .line 460
    const/16 v28, 0x1000

    .line 461
    .line 462
    move-object/from16 v20, v0

    .line 463
    .line 464
    invoke-direct/range {v20 .. v28}, Landroid/view/KeyEvent;-><init>(JJIIII)V

    .line 465
    .line 466
    .line 467
    invoke-virtual {v5, v0}, Lu1/o;->b(Landroid/view/KeyEvent;)V

    .line 468
    .line 469
    .line 470
    :catch_0
    :goto_3
    move v0, v10

    .line 471
    :goto_4
    if-eqz v0, :cond_e

    .line 472
    .line 473
    iget-object v0, v9, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->a:Lq1/f;

    .line 474
    .line 475
    iget-object v0, v0, Lq1/f;->c:Landroid/view/ViewGroup;

    .line 476
    .line 477
    invoke-virtual {v0, v7}, Landroid/view/View;->playSoundEffect(I)V

    .line 478
    .line 479
    .line 480
    iget-object v0, v9, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->a:Lq1/f;

    .line 481
    .line 482
    iget-object v0, v0, Lq1/f;->c:Landroid/view/ViewGroup;

    .line 483
    .line 484
    invoke-virtual {v0, v10}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 485
    .line 486
    .line 487
    :cond_e
    move v7, v10

    .line 488
    :cond_f
    return v7

    .line 489
    :pswitch_2
    check-cast v9, Lcom/nomone/vr_desktop/Applications/BrowserApplication;

    .line 490
    .line 491
    check-cast v8, Lcom/nomone/GeckoView/MyGeckoView;

    .line 492
    .line 493
    sget-object v2, Lcom/nomone/vr_desktop/Applications/BrowserApplication;->v:Ljava/lang/String;

    .line 494
    .line 495
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 496
    .line 497
    .line 498
    const-string v2, "Start drawing frame"

    .line 499
    .line 500
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 501
    .line 502
    .line 503
    move-result v2

    .line 504
    iget-object v3, v9, Lcom/nomone/vr_desktop/Applications/BrowserApplication;->n:Lq1/f;

    .line 505
    .line 506
    if-eqz v2, :cond_11

    .line 507
    .line 508
    iget-object v0, v3, Lq1/f;->b:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 509
    .line 510
    const-string v2, "apps/browser/controls/content.html"

    .line 511
    .line 512
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/i0;->b0(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v2

    .line 516
    const-string v3, "apps/browser/controls/content.css"

    .line 517
    .line 518
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/i0;->b0(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v3

    .line 522
    const-string v4, "apps/browser/controls/content.js"

    .line 523
    .line 524
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/play_billing/i0;->b0(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v0

    .line 528
    const-string v4, "<style>"

    .line 529
    .line 530
    const-string v6, "</style>"

    .line 531
    .line 532
    invoke-static {v4, v3, v6}, La1/b;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v3

    .line 536
    new-instance v4, Ljava/lang/StringBuilder;

    .line 537
    .line 538
    const-string v6, "document.getElementById(\'extraUiContainer\').innerHTML = `"

    .line 539
    .line 540
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 541
    .line 542
    .line 543
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    .line 545
    .line 546
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    .line 548
    .line 549
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    .line 551
    .line 552
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v2

    .line 556
    invoke-virtual {v8, v2}, Lcom/nomone/GeckoView/MyGeckoView;->f(Ljava/lang/String;)V

    .line 557
    .line 558
    .line 559
    invoke-virtual {v8, v0}, Lcom/nomone/GeckoView/MyGeckoView;->f(Ljava/lang/String;)V

    .line 560
    .line 561
    .line 562
    iget-boolean v0, v9, Lcom/nomone/vr_desktop/Applications/BrowserApplication;->q:Z

    .line 563
    .line 564
    if-eqz v0, :cond_1b

    .line 565
    .line 566
    iget-object v0, v9, Lcom/nomone/vr_desktop/Applications/BrowserApplication;->o:Ljava/lang/String;

    .line 567
    .line 568
    invoke-virtual {v9, v0}, Lcom/nomone/vr_desktop/Applications/BrowserApplication;->j(Ljava/lang/String;)V

    .line 569
    .line 570
    .line 571
    iget-boolean v0, v9, Lcom/nomone/vr_desktop/Applications/BrowserApplication;->s:Z

    .line 572
    .line 573
    if-eqz v0, :cond_10

    .line 574
    .line 575
    iput-boolean v10, v9, Lcom/nomone/vr_desktop/Applications/BrowserApplication;->s:Z

    .line 576
    .line 577
    iget-object v0, v9, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->d:La2/p;

    .line 578
    .line 579
    iget-object v0, v0, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 580
    .line 581
    const-string v2, "document.getElementById(\'reloadButton\').removeAttribute(\'disabled\')"

    .line 582
    .line 583
    invoke-virtual {v0, v2}, Lcom/nomone/GeckoView/MyGeckoView;->f(Ljava/lang/String;)V

    .line 584
    .line 585
    .line 586
    :cond_10
    iget-boolean v0, v9, Lcom/nomone/vr_desktop/Applications/BrowserApplication;->r:Z

    .line 587
    .line 588
    invoke-virtual {v9, v0}, Lcom/nomone/vr_desktop/Applications/BrowserApplication;->k(Z)V

    .line 589
    .line 590
    .line 591
    goto/16 :goto_7

    .line 592
    .line 593
    :cond_11
    const-string v2, "Load URL: "

    .line 594
    .line 595
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 596
    .line 597
    .line 598
    move-result v2

    .line 599
    if-eqz v2, :cond_17

    .line 600
    .line 601
    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 602
    .line 603
    .line 604
    move-result v2

    .line 605
    add-int/lit8 v2, v2, 0x2

    .line 606
    .line 607
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 608
    .line 609
    .line 610
    move-result-object v0

    .line 611
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object v2

    .line 615
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/i0;->n0(Ljava/lang/String;)Z

    .line 616
    .line 617
    .line 618
    move-result v0

    .line 619
    if-nez v0, :cond_13

    .line 620
    .line 621
    const-string v0, " "

    .line 622
    .line 623
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 624
    .line 625
    .line 626
    move-result v0

    .line 627
    if-nez v0, :cond_12

    .line 628
    .line 629
    const-string v0, "."

    .line 630
    .line 631
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 632
    .line 633
    .line 634
    move-result v0

    .line 635
    if-nez v0, :cond_13

    .line 636
    .line 637
    :cond_12
    const-string v0, "https://google.com/search?q="

    .line 638
    .line 639
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 640
    .line 641
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 642
    .line 643
    .line 644
    const-string v0, "utf-8"

    .line 645
    .line 646
    invoke-static {v2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 647
    .line 648
    .line 649
    move-result-object v0

    .line 650
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    .line 652
    .line 653
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 654
    .line 655
    .line 656
    move-result-object v2
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 657
    goto :goto_5

    .line 658
    :catch_1
    move-exception v0

    .line 659
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 660
    .line 661
    .line 662
    :cond_13
    :goto_5
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/i0;->n0(Ljava/lang/String;)Z

    .line 663
    .line 664
    .line 665
    move-result v0

    .line 666
    if-nez v0, :cond_14

    .line 667
    .line 668
    const-string v0, "http://"

    .line 669
    .line 670
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 671
    .line 672
    .line 673
    move-result-object v2

    .line 674
    :cond_14
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/i0;->W(Ljava/lang/String;)Z

    .line 675
    .line 676
    .line 677
    move-result v0

    .line 678
    if-eqz v0, :cond_15

    .line 679
    .line 680
    const-string v0, "PornBlocking/PornSiteBlocked.html"

    .line 681
    .line 682
    invoke-static {v0}, Lt1/a;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 683
    .line 684
    .line 685
    move-result-object v2

    .line 686
    :cond_15
    invoke-static {v2}, Lcom/google/android/gms/internal/play_billing/i0;->m0(Ljava/lang/String;)Z

    .line 687
    .line 688
    .line 689
    move-result v0

    .line 690
    if-eqz v0, :cond_16

    .line 691
    .line 692
    :try_start_2
    iget-object v0, v3, Lq1/f;->b:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 693
    .line 694
    new-instance v3, Landroid/content/Intent;

    .line 695
    .line 696
    const-string v4, "android.intent.action.VIEW"

    .line 697
    .line 698
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 699
    .line 700
    .line 701
    move-result-object v2

    .line 702
    invoke-direct {v3, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 703
    .line 704
    .line 705
    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 706
    .line 707
    .line 708
    goto :goto_6

    .line 709
    :catch_2
    move-exception v0

    .line 710
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 711
    .line 712
    .line 713
    goto :goto_6

    .line 714
    :cond_16
    iget-object v0, v9, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->e:La2/a;

    .line 715
    .line 716
    check-cast v0, La2/i;

    .line 717
    .line 718
    iget-object v0, v0, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 719
    .line 720
    invoke-virtual {v0}, Lcom/nomone/GeckoView/MyGeckoView;->getSession()Lorg/mozilla/geckoview/GeckoSession;

    .line 721
    .line 722
    .line 723
    move-result-object v0

    .line 724
    invoke-virtual {v0, v2}, Lorg/mozilla/geckoview/GeckoSession;->loadUri(Ljava/lang/String;)V

    .line 725
    .line 726
    .line 727
    invoke-virtual {v9, v2}, Lcom/nomone/vr_desktop/Applications/BrowserApplication;->j(Ljava/lang/String;)V

    .line 728
    .line 729
    .line 730
    goto :goto_6

    .line 731
    :cond_17
    const-string v2, "Go backward"

    .line 732
    .line 733
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 734
    .line 735
    .line 736
    move-result v2

    .line 737
    if-eqz v2, :cond_18

    .line 738
    .line 739
    iget-object v0, v9, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->e:La2/a;

    .line 740
    .line 741
    check-cast v0, La2/i;

    .line 742
    .line 743
    iget-object v0, v0, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 744
    .line 745
    invoke-virtual {v0}, Lcom/nomone/GeckoView/MyGeckoView;->getSession()Lorg/mozilla/geckoview/GeckoSession;

    .line 746
    .line 747
    .line 748
    move-result-object v0

    .line 749
    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->goBack()V

    .line 750
    .line 751
    .line 752
    goto :goto_6

    .line 753
    :cond_18
    const-string v2, "Go forward"

    .line 754
    .line 755
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 756
    .line 757
    .line 758
    move-result v2

    .line 759
    if-eqz v2, :cond_19

    .line 760
    .line 761
    iget-object v0, v9, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->e:La2/a;

    .line 762
    .line 763
    check-cast v0, La2/i;

    .line 764
    .line 765
    iget-object v0, v0, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 766
    .line 767
    invoke-virtual {v0}, Lcom/nomone/GeckoView/MyGeckoView;->getSession()Lorg/mozilla/geckoview/GeckoSession;

    .line 768
    .line 769
    .line 770
    move-result-object v0

    .line 771
    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->goForward()V

    .line 772
    .line 773
    .line 774
    goto :goto_6

    .line 775
    :cond_19
    const-string v2, "Reload"

    .line 776
    .line 777
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 778
    .line 779
    .line 780
    move-result v2

    .line 781
    if-eqz v2, :cond_1a

    .line 782
    .line 783
    iget-object v0, v9, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->e:La2/a;

    .line 784
    .line 785
    check-cast v0, La2/i;

    .line 786
    .line 787
    iget-object v0, v0, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 788
    .line 789
    invoke-virtual {v0}, Lcom/nomone/GeckoView/MyGeckoView;->getSession()Lorg/mozilla/geckoview/GeckoSession;

    .line 790
    .line 791
    .line 792
    move-result-object v0

    .line 793
    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->reload()V

    .line 794
    .line 795
    .line 796
    goto :goto_6

    .line 797
    :cond_1a
    const-string v2, "Stop"

    .line 798
    .line 799
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 800
    .line 801
    .line 802
    move-result v0

    .line 803
    if-eqz v0, :cond_1b

    .line 804
    .line 805
    iget-object v0, v9, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->e:La2/a;

    .line 806
    .line 807
    check-cast v0, La2/i;

    .line 808
    .line 809
    iget-object v0, v0, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 810
    .line 811
    invoke-virtual {v0}, Lcom/nomone/GeckoView/MyGeckoView;->getSession()Lorg/mozilla/geckoview/GeckoSession;

    .line 812
    .line 813
    .line 814
    move-result-object v0

    .line 815
    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->stop()V

    .line 816
    .line 817
    .line 818
    :goto_6
    move v7, v10

    .line 819
    :cond_1b
    :goto_7
    return v7

    .line 820
    :goto_8
    check-cast v9, Lcom/nomone/vr_desktop/Applications/SettingsApplication;

    .line 821
    .line 822
    check-cast v8, Lcom/nomone/GeckoView/MyGeckoView;

    .line 823
    .line 824
    iget-object v2, v9, Lcom/nomone/vr_desktop/Applications/SettingsApplication;->f:Lq1/f;

    .line 825
    .line 826
    iget-object v3, v2, Lq1/f;->H:Lo1/n0;

    .line 827
    .line 828
    sget-object v4, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->z:Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;

    .line 829
    .line 830
    if-eqz v4, :cond_1c

    .line 831
    .line 832
    move v7, v10

    .line 833
    :cond_1c
    iget-object v4, v2, Lq1/f;->p:Landroidx/fragment/app/h;

    .line 834
    .line 835
    const-string v5, "Settings started"

    .line 836
    .line 837
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 838
    .line 839
    .line 840
    move-result v5

    .line 841
    const-string v9, "Settings_General_ScrollingSpeed"

    .line 842
    .line 843
    const-string v10, "Settings_General_CursorSpeed"

    .line 844
    .line 845
    const-string v11, "Settings_Linux_SafeMode"

    .line 846
    .line 847
    const-string v12, "Settings_Linux_RunAsRoot"

    .line 848
    .line 849
    const-string v13, "Settings_Linux_ForceEnglishLocale"

    .line 850
    .line 851
    const-string v14, "Settings_Linux_LimitMemory"

    .line 852
    .line 853
    const-string v15, "Settings_Linux_BusyLoop"

    .line 854
    .line 855
    const-string v1, "Settings_Linux_HardwareAcceleration"

    .line 856
    .line 857
    move-object/from16 v16, v3

    .line 858
    .line 859
    const-string v3, "Settings_Linux_16bitColor"

    .line 860
    .line 861
    move/from16 v17, v7

    .line 862
    .line 863
    const-string v7, "Settings_Linux_StartFullscreen"

    .line 864
    .line 865
    move-object/from16 v18, v4

    .line 866
    .line 867
    const-string v4, "Settings_VR_LookingAround"

    .line 868
    .line 869
    move-object/from16 v19, v6

    .line 870
    .line 871
    const-string v6, "Settings_VR_IPD"

    .line 872
    .line 873
    const-string v0, "Settings_VR_Stereo"

    .line 874
    .line 875
    move-object/from16 v20, v11

    .line 876
    .line 877
    const-string v11, "Settings_General_ReleaseMouse"

    .line 878
    .line 879
    move-object/from16 v21, v12

    .line 880
    .line 881
    const-string v12, "Settings_General_IgnoreCutouts"

    .line 882
    .line 883
    move-object/from16 v22, v13

    .line 884
    .line 885
    const-string v13, "Settings_General_LookingAround"

    .line 886
    .line 887
    move-object/from16 v23, v14

    .line 888
    .line 889
    iget-object v14, v2, Lq1/f;->b:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 890
    .line 891
    if-eqz v5, :cond_20

    .line 892
    .line 893
    new-instance v5, Ljava/lang/StringBuilder;

    .line 894
    .line 895
    move-object/from16 v24, v15

    .line 896
    .line 897
    const-string v15, "updateSetting(\'SdkVersion: "

    .line 898
    .line 899
    invoke-direct {v5, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 900
    .line 901
    .line 902
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 903
    .line 904
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 905
    .line 906
    .line 907
    const-string v15, "\')"

    .line 908
    .line 909
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 910
    .line 911
    .line 912
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 913
    .line 914
    .line 915
    move-result-object v5

    .line 916
    invoke-virtual {v8, v5}, Lcom/nomone/GeckoView/MyGeckoView;->f(Ljava/lang/String;)V

    .line 917
    .line 918
    .line 919
    new-instance v5, Ljava/lang/StringBuilder;

    .line 920
    .line 921
    move-object/from16 v25, v1

    .line 922
    .line 923
    const-string v1, "updateSetting(\'CursorSpeed: "

    .line 924
    .line 925
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 926
    .line 927
    .line 928
    const/high16 v1, 0x3f800000    # 1.0f

    .line 929
    .line 930
    invoke-static {v10, v1}, Lo1/y;->b(Ljava/lang/String;F)F

    .line 931
    .line 932
    .line 933
    move-result v10

    .line 934
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 935
    .line 936
    .line 937
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 938
    .line 939
    .line 940
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 941
    .line 942
    .line 943
    move-result-object v5

    .line 944
    invoke-virtual {v8, v5}, Lcom/nomone/GeckoView/MyGeckoView;->f(Ljava/lang/String;)V

    .line 945
    .line 946
    .line 947
    new-instance v5, Ljava/lang/StringBuilder;

    .line 948
    .line 949
    const-string v10, "updateSetting(\'ScrollingSpeed: "

    .line 950
    .line 951
    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 952
    .line 953
    .line 954
    invoke-static {v9, v1}, Lo1/y;->b(Ljava/lang/String;F)F

    .line 955
    .line 956
    .line 957
    move-result v1

    .line 958
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 959
    .line 960
    .line 961
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 962
    .line 963
    .line 964
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 965
    .line 966
    .line 967
    move-result-object v1

    .line 968
    invoke-virtual {v8, v1}, Lcom/nomone/GeckoView/MyGeckoView;->f(Ljava/lang/String;)V

    .line 969
    .line 970
    .line 971
    new-instance v1, Ljava/lang/StringBuilder;

    .line 972
    .line 973
    const-string v5, "updateSetting(\'DesktopLookingAround: "

    .line 974
    .line 975
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 976
    .line 977
    .line 978
    const/4 v5, 0x0

    .line 979
    invoke-static {v13, v5}, Lo1/y;->a(Ljava/lang/String;Z)Z

    .line 980
    .line 981
    .line 982
    move-result v5

    .line 983
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 984
    .line 985
    .line 986
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 987
    .line 988
    .line 989
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 990
    .line 991
    .line 992
    move-result-object v1

    .line 993
    invoke-virtual {v8, v1}, Lcom/nomone/GeckoView/MyGeckoView;->f(Ljava/lang/String;)V

    .line 994
    .line 995
    .line 996
    new-instance v1, Ljava/lang/StringBuilder;

    .line 997
    .line 998
    const-string v5, "updateSetting(\'FullscreenWidth: "

    .line 999
    .line 1000
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1001
    .line 1002
    .line 1003
    const-string v5, "Settings_FullscreenWidth"

    .line 1004
    .line 1005
    const v9, 0x3fa66666    # 1.3f

    .line 1006
    .line 1007
    .line 1008
    invoke-static {v5, v9}, Lo1/y;->b(Ljava/lang/String;F)F

    .line 1009
    .line 1010
    .line 1011
    move-result v5

    .line 1012
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1013
    .line 1014
    .line 1015
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1016
    .line 1017
    .line 1018
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v1

    .line 1022
    invoke-virtual {v8, v1}, Lcom/nomone/GeckoView/MyGeckoView;->f(Ljava/lang/String;)V

    .line 1023
    .line 1024
    .line 1025
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1026
    .line 1027
    const-string v5, "updateSetting(\'FullscreenHeight: "

    .line 1028
    .line 1029
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1030
    .line 1031
    .line 1032
    const-string v5, "Settings_FullscreenHeight"

    .line 1033
    .line 1034
    invoke-static {v5, v9}, Lo1/y;->b(Ljava/lang/String;F)F

    .line 1035
    .line 1036
    .line 1037
    move-result v5

    .line 1038
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1039
    .line 1040
    .line 1041
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1042
    .line 1043
    .line 1044
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v1

    .line 1048
    invoke-virtual {v8, v1}, Lcom/nomone/GeckoView/MyGeckoView;->f(Ljava/lang/String;)V

    .line 1049
    .line 1050
    .line 1051
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1052
    .line 1053
    const-string v5, "updateSetting(\'IgnoreCutouts: "

    .line 1054
    .line 1055
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1056
    .line 1057
    .line 1058
    const/4 v5, 0x1

    .line 1059
    invoke-static {v12, v5}, Lo1/y;->a(Ljava/lang/String;Z)Z

    .line 1060
    .line 1061
    .line 1062
    move-result v5

    .line 1063
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1064
    .line 1065
    .line 1066
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1067
    .line 1068
    .line 1069
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1070
    .line 1071
    .line 1072
    move-result-object v1

    .line 1073
    invoke-virtual {v8, v1}, Lcom/nomone/GeckoView/MyGeckoView;->f(Ljava/lang/String;)V

    .line 1074
    .line 1075
    .line 1076
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1077
    .line 1078
    const-string v5, "updateSetting(\'ReleaseMouse: "

    .line 1079
    .line 1080
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1081
    .line 1082
    .line 1083
    iget-boolean v5, v2, Lq1/f;->B:Z

    .line 1084
    .line 1085
    invoke-static {v11, v5}, Lo1/y;->a(Ljava/lang/String;Z)Z

    .line 1086
    .line 1087
    .line 1088
    move-result v5

    .line 1089
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1090
    .line 1091
    .line 1092
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1093
    .line 1094
    .line 1095
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v1

    .line 1099
    invoke-virtual {v8, v1}, Lcom/nomone/GeckoView/MyGeckoView;->f(Ljava/lang/String;)V

    .line 1100
    .line 1101
    .line 1102
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1103
    .line 1104
    const-string v5, "updateSetting(\'VR: "

    .line 1105
    .line 1106
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1107
    .line 1108
    .line 1109
    const/4 v5, 0x0

    .line 1110
    invoke-static {v0, v5}, Lo1/y;->a(Ljava/lang/String;Z)Z

    .line 1111
    .line 1112
    .line 1113
    move-result v0

    .line 1114
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1115
    .line 1116
    .line 1117
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1118
    .line 1119
    .line 1120
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1121
    .line 1122
    .line 1123
    move-result-object v0

    .line 1124
    invoke-virtual {v8, v0}, Lcom/nomone/GeckoView/MyGeckoView;->f(Ljava/lang/String;)V

    .line 1125
    .line 1126
    .line 1127
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1128
    .line 1129
    const-string v1, "updateSetting(\'IPD: "

    .line 1130
    .line 1131
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1132
    .line 1133
    .line 1134
    const v1, -0x42333333    # -0.1f

    .line 1135
    .line 1136
    .line 1137
    invoke-static {v6, v1}, Lo1/y;->b(Ljava/lang/String;F)F

    .line 1138
    .line 1139
    .line 1140
    move-result v1

    .line 1141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1142
    .line 1143
    .line 1144
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1145
    .line 1146
    .line 1147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1148
    .line 1149
    .line 1150
    move-result-object v0

    .line 1151
    invoke-virtual {v8, v0}, Lcom/nomone/GeckoView/MyGeckoView;->f(Ljava/lang/String;)V

    .line 1152
    .line 1153
    .line 1154
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1155
    .line 1156
    const-string v1, "updateSetting(\'VRLookingAround: "

    .line 1157
    .line 1158
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1159
    .line 1160
    .line 1161
    const/4 v1, 0x1

    .line 1162
    invoke-static {v4, v1}, Lo1/y;->a(Ljava/lang/String;Z)Z

    .line 1163
    .line 1164
    .line 1165
    move-result v1

    .line 1166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1167
    .line 1168
    .line 1169
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1170
    .line 1171
    .line 1172
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1173
    .line 1174
    .line 1175
    move-result-object v0

    .line 1176
    invoke-virtual {v8, v0}, Lcom/nomone/GeckoView/MyGeckoView;->f(Ljava/lang/String;)V

    .line 1177
    .line 1178
    .line 1179
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1180
    .line 1181
    const-string v1, "updateSetting(\'VRFullscreenWidth: "

    .line 1182
    .line 1183
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1184
    .line 1185
    .line 1186
    const-string v1, "Settings_VR_FullscreenWidth"

    .line 1187
    .line 1188
    invoke-static {v1, v9}, Lo1/y;->b(Ljava/lang/String;F)F

    .line 1189
    .line 1190
    .line 1191
    move-result v1

    .line 1192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1193
    .line 1194
    .line 1195
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1196
    .line 1197
    .line 1198
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1199
    .line 1200
    .line 1201
    move-result-object v0

    .line 1202
    invoke-virtual {v8, v0}, Lcom/nomone/GeckoView/MyGeckoView;->f(Ljava/lang/String;)V

    .line 1203
    .line 1204
    .line 1205
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1206
    .line 1207
    const-string v1, "updateSetting(\'VRFullscreenHeight: "

    .line 1208
    .line 1209
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1210
    .line 1211
    .line 1212
    const-string v1, "Settings_VR_FullscreenHeight"

    .line 1213
    .line 1214
    const v4, 0x3f99999a    # 1.2f

    .line 1215
    .line 1216
    .line 1217
    invoke-static {v1, v4}, Lo1/y;->b(Ljava/lang/String;F)F

    .line 1218
    .line 1219
    .line 1220
    move-result v1

    .line 1221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1222
    .line 1223
    .line 1224
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1225
    .line 1226
    .line 1227
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1228
    .line 1229
    .line 1230
    move-result-object v0

    .line 1231
    invoke-virtual {v8, v0}, Lcom/nomone/GeckoView/MyGeckoView;->f(Ljava/lang/String;)V

    .line 1232
    .line 1233
    .line 1234
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1235
    .line 1236
    const-string v1, "updateSetting(\'StartLinuxFullscreen: "

    .line 1237
    .line 1238
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1239
    .line 1240
    .line 1241
    const/4 v1, 0x0

    .line 1242
    invoke-static {v7, v1}, Lo1/y;->a(Ljava/lang/String;Z)Z

    .line 1243
    .line 1244
    .line 1245
    move-result v1

    .line 1246
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1247
    .line 1248
    .line 1249
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1250
    .line 1251
    .line 1252
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1253
    .line 1254
    .line 1255
    move-result-object v0

    .line 1256
    invoke-virtual {v8, v0}, Lcom/nomone/GeckoView/MyGeckoView;->f(Ljava/lang/String;)V

    .line 1257
    .line 1258
    .line 1259
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1260
    .line 1261
    const-string v1, "updateSetting(\'Audio: "

    .line 1262
    .line 1263
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1264
    .line 1265
    .line 1266
    invoke-static {v14}, Lcom/nomone/vr_desktop/Applications/SettingsApplication;->f(Lcom/nomone/vr_desktop/LaunchActivity;)Z

    .line 1267
    .line 1268
    .line 1269
    move-result v1

    .line 1270
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1271
    .line 1272
    .line 1273
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1274
    .line 1275
    .line 1276
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1277
    .line 1278
    .line 1279
    move-result-object v0

    .line 1280
    invoke-virtual {v8, v0}, Lcom/nomone/GeckoView/MyGeckoView;->f(Ljava/lang/String;)V

    .line 1281
    .line 1282
    .line 1283
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1284
    .line 1285
    const-string v1, "updateSetting(\'Sharpen: "

    .line 1286
    .line 1287
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1288
    .line 1289
    .line 1290
    invoke-static {}, Lcom/nomone/vr_desktop/Applications/SettingsApplication;->i()Z

    .line 1291
    .line 1292
    .line 1293
    move-result v1

    .line 1294
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1295
    .line 1296
    .line 1297
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1298
    .line 1299
    .line 1300
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1301
    .line 1302
    .line 1303
    move-result-object v0

    .line 1304
    invoke-virtual {v8, v0}, Lcom/nomone/GeckoView/MyGeckoView;->f(Ljava/lang/String;)V

    .line 1305
    .line 1306
    .line 1307
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1308
    .line 1309
    const-string v1, "updateSetting(\'16BitColor: "

    .line 1310
    .line 1311
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1312
    .line 1313
    .line 1314
    const/4 v1, 0x0

    .line 1315
    invoke-static {v3, v1}, Lo1/y;->a(Ljava/lang/String;Z)Z

    .line 1316
    .line 1317
    .line 1318
    move-result v3

    .line 1319
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1320
    .line 1321
    .line 1322
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1323
    .line 1324
    .line 1325
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1326
    .line 1327
    .line 1328
    move-result-object v0

    .line 1329
    invoke-virtual {v8, v0}, Lcom/nomone/GeckoView/MyGeckoView;->f(Ljava/lang/String;)V

    .line 1330
    .line 1331
    .line 1332
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1333
    .line 1334
    const-string v3, "updateSetting(\'HardwareAcceleration: "

    .line 1335
    .line 1336
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1337
    .line 1338
    .line 1339
    move-object/from16 v5, v25

    .line 1340
    .line 1341
    invoke-static {v5, v1}, Lo1/y;->a(Ljava/lang/String;Z)Z

    .line 1342
    .line 1343
    .line 1344
    move-result v3

    .line 1345
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1346
    .line 1347
    .line 1348
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1349
    .line 1350
    .line 1351
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1352
    .line 1353
    .line 1354
    move-result-object v0

    .line 1355
    invoke-virtual {v8, v0}, Lcom/nomone/GeckoView/MyGeckoView;->f(Ljava/lang/String;)V

    .line 1356
    .line 1357
    .line 1358
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1359
    .line 1360
    const-string v3, "updateSetting(\'BusyLoop: "

    .line 1361
    .line 1362
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1363
    .line 1364
    .line 1365
    move-object/from16 v3, v24

    .line 1366
    .line 1367
    invoke-static {v3, v1}, Lo1/y;->a(Ljava/lang/String;Z)Z

    .line 1368
    .line 1369
    .line 1370
    move-result v3

    .line 1371
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1372
    .line 1373
    .line 1374
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1375
    .line 1376
    .line 1377
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1378
    .line 1379
    .line 1380
    move-result-object v0

    .line 1381
    invoke-virtual {v8, v0}, Lcom/nomone/GeckoView/MyGeckoView;->f(Ljava/lang/String;)V

    .line 1382
    .line 1383
    .line 1384
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1385
    .line 1386
    const-string v3, "updateSetting(\'LimitMemory: "

    .line 1387
    .line 1388
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1389
    .line 1390
    .line 1391
    move-object/from16 v3, v23

    .line 1392
    .line 1393
    invoke-static {v3, v1}, Lo1/y;->a(Ljava/lang/String;Z)Z

    .line 1394
    .line 1395
    .line 1396
    move-result v3

    .line 1397
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1398
    .line 1399
    .line 1400
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1401
    .line 1402
    .line 1403
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1404
    .line 1405
    .line 1406
    move-result-object v0

    .line 1407
    invoke-virtual {v8, v0}, Lcom/nomone/GeckoView/MyGeckoView;->f(Ljava/lang/String;)V

    .line 1408
    .line 1409
    .line 1410
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1411
    .line 1412
    const-string v3, "updateSetting(\'ForceEnglishLocale: "

    .line 1413
    .line 1414
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1415
    .line 1416
    .line 1417
    move-object/from16 v3, v22

    .line 1418
    .line 1419
    invoke-static {v3, v1}, Lo1/y;->a(Ljava/lang/String;Z)Z

    .line 1420
    .line 1421
    .line 1422
    move-result v1

    .line 1423
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1424
    .line 1425
    .line 1426
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1427
    .line 1428
    .line 1429
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1430
    .line 1431
    .line 1432
    move-result-object v0

    .line 1433
    invoke-virtual {v8, v0}, Lcom/nomone/GeckoView/MyGeckoView;->f(Ljava/lang/String;)V

    .line 1434
    .line 1435
    .line 1436
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1437
    .line 1438
    const-string v1, "updateSetting(\'RunAsRoot: "

    .line 1439
    .line 1440
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1441
    .line 1442
    .line 1443
    const/4 v1, 0x1

    .line 1444
    move-object/from16 v3, v21

    .line 1445
    .line 1446
    invoke-static {v3, v1}, Lo1/y;->a(Ljava/lang/String;Z)Z

    .line 1447
    .line 1448
    .line 1449
    move-result v1

    .line 1450
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1451
    .line 1452
    .line 1453
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1454
    .line 1455
    .line 1456
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1457
    .line 1458
    .line 1459
    move-result-object v0

    .line 1460
    invoke-virtual {v8, v0}, Lcom/nomone/GeckoView/MyGeckoView;->f(Ljava/lang/String;)V

    .line 1461
    .line 1462
    .line 1463
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1464
    .line 1465
    const-string v1, "updateSetting(\'Ulauncher: "

    .line 1466
    .line 1467
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1468
    .line 1469
    .line 1470
    invoke-static {v14}, Lcom/nomone/vr_desktop/Applications/SettingsApplication;->j(Lcom/nomone/vr_desktop/LaunchActivity;)Z

    .line 1471
    .line 1472
    .line 1473
    move-result v1

    .line 1474
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1475
    .line 1476
    .line 1477
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1478
    .line 1479
    .line 1480
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1481
    .line 1482
    .line 1483
    move-result-object v0

    .line 1484
    invoke-virtual {v8, v0}, Lcom/nomone/GeckoView/MyGeckoView;->f(Ljava/lang/String;)V

    .line 1485
    .line 1486
    .line 1487
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1488
    .line 1489
    const-string v1, "updateSetting(\'SafeMode: "

    .line 1490
    .line 1491
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1492
    .line 1493
    .line 1494
    const/4 v1, 0x0

    .line 1495
    move-object/from16 v3, v20

    .line 1496
    .line 1497
    invoke-static {v3, v1}, Lo1/y;->a(Ljava/lang/String;Z)Z

    .line 1498
    .line 1499
    .line 1500
    move-result v1

    .line 1501
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1502
    .line 1503
    .line 1504
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1505
    .line 1506
    .line 1507
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1508
    .line 1509
    .line 1510
    move-result-object v0

    .line 1511
    invoke-virtual {v8, v0}, Lcom/nomone/GeckoView/MyGeckoView;->f(Ljava/lang/String;)V

    .line 1512
    .line 1513
    .line 1514
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1515
    .line 1516
    const-string v1, "updateSetting(\'Scale: "

    .line 1517
    .line 1518
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1519
    .line 1520
    .line 1521
    const/4 v1, 0x0

    .line 1522
    :goto_9
    const/4 v3, 0x6

    .line 1523
    if-gt v1, v3, :cond_1f

    .line 1524
    .line 1525
    int-to-float v3, v1

    .line 1526
    const/high16 v4, 0x40c00000    # 6.0f

    .line 1527
    .line 1528
    div-float/2addr v3, v4

    .line 1529
    invoke-static {v14, v3}, Lcom/nomone/vr_desktop/Applications/SettingsApplication;->e(Lcom/nomone/vr_desktop/LaunchActivity;F)F

    .line 1530
    .line 1531
    .line 1532
    move-result v3

    .line 1533
    const/high16 v4, 0x42c80000    # 100.0f

    .line 1534
    .line 1535
    mul-float/2addr v3, v4

    .line 1536
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 1537
    .line 1538
    .line 1539
    move-result v3

    .line 1540
    const/16 v4, 0x64

    .line 1541
    .line 1542
    if-ne v3, v4, :cond_1d

    .line 1543
    .line 1544
    const-string v4, "<strong><em>"

    .line 1545
    .line 1546
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1547
    .line 1548
    .line 1549
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1550
    .line 1551
    .line 1552
    const-string v3, "%</em></strong>,"

    .line 1553
    .line 1554
    goto :goto_a

    .line 1555
    :cond_1d
    rem-int/lit8 v4, v3, 0x64

    .line 1556
    .line 1557
    if-nez v4, :cond_1e

    .line 1558
    .line 1559
    const-string v4, "<strong>"

    .line 1560
    .line 1561
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1562
    .line 1563
    .line 1564
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1565
    .line 1566
    .line 1567
    const-string v3, "%</strong>,"

    .line 1568
    .line 1569
    goto :goto_a

    .line 1570
    :cond_1e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1571
    .line 1572
    .line 1573
    const-string v3, "%,"

    .line 1574
    .line 1575
    :goto_a
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1576
    .line 1577
    .line 1578
    add-int/lit8 v1, v1, 0x1

    .line 1579
    .line 1580
    goto :goto_9

    .line 1581
    :cond_1f
    invoke-static {v2}, Lcom/nomone/vr_desktop/Applications/SettingsApplication;->h(Lq1/f;)F

    .line 1582
    .line 1583
    .line 1584
    move-result v1

    .line 1585
    invoke-static {v14}, Lcom/nomone/vr_desktop/Applications/SettingsApplication;->g(Lcom/nomone/vr_desktop/LaunchActivity;)F

    .line 1586
    .line 1587
    .line 1588
    move-result v2

    .line 1589
    const v3, 0x3f333333    # 0.7f

    .line 1590
    .line 1591
    .line 1592
    sub-float/2addr v1, v3

    .line 1593
    sub-float/2addr v2, v3

    .line 1594
    div-float/2addr v1, v2

    .line 1595
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1596
    .line 1597
    .line 1598
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1599
    .line 1600
    .line 1601
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1602
    .line 1603
    .line 1604
    move-result-object v0

    .line 1605
    invoke-virtual {v8, v0}, Lcom/nomone/GeckoView/MyGeckoView;->f(Ljava/lang/String;)V

    .line 1606
    .line 1607
    .line 1608
    const-string v0, "updateSetting(\'Show general settings\')"

    .line 1609
    .line 1610
    invoke-virtual {v8, v0}, Lcom/nomone/GeckoView/MyGeckoView;->f(Ljava/lang/String;)V

    .line 1611
    .line 1612
    .line 1613
    goto/16 :goto_19

    .line 1614
    .line 1615
    :cond_20
    move-object v5, v1

    .line 1616
    move-object v1, v15

    .line 1617
    move-object/from16 v15, v22

    .line 1618
    .line 1619
    move-object/from16 v22, v21

    .line 1620
    .line 1621
    move-object/from16 v21, v20

    .line 1622
    .line 1623
    move-object/from16 v20, v0

    .line 1624
    .line 1625
    move-object/from16 v0, v23

    .line 1626
    .line 1627
    const-string v8, "Scale: "

    .line 1628
    .line 1629
    move-object/from16 v23, v15

    .line 1630
    .line 1631
    move-object/from16 v15, p1

    .line 1632
    .line 1633
    move-object/from16 v29, v20

    .line 1634
    .line 1635
    move-object/from16 v20, v0

    .line 1636
    .line 1637
    move-object/from16 v0, v29

    .line 1638
    .line 1639
    invoke-virtual {v15, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1640
    .line 1641
    .line 1642
    move-result v8

    .line 1643
    if-eqz v8, :cond_21

    .line 1644
    .line 1645
    move-object/from16 v8, v19

    .line 1646
    .line 1647
    invoke-virtual {v15, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 1648
    .line 1649
    .line 1650
    move-result v0

    .line 1651
    add-int/lit8 v0, v0, 0x2

    .line 1652
    .line 1653
    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1654
    .line 1655
    .line 1656
    move-result-object v0

    .line 1657
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 1658
    .line 1659
    .line 1660
    move-result v0

    .line 1661
    invoke-static {v14, v0}, Lcom/nomone/vr_desktop/Applications/SettingsApplication;->e(Lcom/nomone/vr_desktop/LaunchActivity;F)F

    .line 1662
    .line 1663
    .line 1664
    move-result v0

    .line 1665
    invoke-static {v2}, Lcom/nomone/vr_desktop/Applications/SettingsApplication;->h(Lq1/f;)F

    .line 1666
    .line 1667
    .line 1668
    move-result v1

    .line 1669
    cmpl-float v1, v1, v0

    .line 1670
    .line 1671
    if-eqz v1, :cond_4c

    .line 1672
    .line 1673
    const-string v1, "Settings_General_Scale"

    .line 1674
    .line 1675
    invoke-static {v1, v0}, Lo1/y;->f(Ljava/lang/String;F)V

    .line 1676
    .line 1677
    .line 1678
    if-eqz v18, :cond_4c

    .line 1679
    .line 1680
    invoke-static {v0}, Lcom/nomone/GeckoView/MyGeckoView;->setGlobalDisplayDensity(F)V

    .line 1681
    .line 1682
    .line 1683
    move-object/from16 v0, v18

    .line 1684
    .line 1685
    iget-object v1, v0, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    .line 1686
    .line 1687
    check-cast v1, Lq1/x;

    .line 1688
    .line 1689
    new-instance v2, Lo0/n;

    .line 1690
    .line 1691
    const/16 v3, 0x11

    .line 1692
    .line 1693
    invoke-direct {v2, v0, v3}, Lo0/n;-><init>(Ljava/lang/Object;I)V

    .line 1694
    .line 1695
    .line 1696
    const-string v0, "Bring windows into view"

    .line 1697
    .line 1698
    const-wide/16 v3, 0x7d0

    .line 1699
    .line 1700
    invoke-virtual {v1, v2, v0, v3, v4}, Lq1/x;->k(Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 1701
    .line 1702
    .line 1703
    goto/16 :goto_19

    .line 1704
    .line 1705
    :cond_21
    move-object/from16 v24, v1

    .line 1706
    .line 1707
    move-object/from16 v25, v5

    .line 1708
    .line 1709
    move-object/from16 v1, v18

    .line 1710
    .line 1711
    move-object/from16 v8, v19

    .line 1712
    .line 1713
    const-string v5, "CursorSpeed: "

    .line 1714
    .line 1715
    invoke-virtual {v15, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1716
    .line 1717
    .line 1718
    move-result v5

    .line 1719
    if-eqz v5, :cond_22

    .line 1720
    .line 1721
    invoke-virtual {v15, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 1722
    .line 1723
    .line 1724
    move-result v0

    .line 1725
    add-int/lit8 v0, v0, 0x2

    .line 1726
    .line 1727
    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1728
    .line 1729
    .line 1730
    move-result-object v0

    .line 1731
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 1732
    .line 1733
    .line 1734
    move-result v0

    .line 1735
    invoke-static {v10, v0}, Lo1/y;->f(Ljava/lang/String;F)V

    .line 1736
    .line 1737
    .line 1738
    if-eqz v1, :cond_4c

    .line 1739
    .line 1740
    iget-object v1, v1, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    .line 1741
    .line 1742
    check-cast v1, Lq1/x;

    .line 1743
    .line 1744
    iget-object v1, v1, Lq1/x;->k:Lu1/i;

    .line 1745
    .line 1746
    iput v0, v1, Lu1/i;->g:F

    .line 1747
    .line 1748
    goto/16 :goto_19

    .line 1749
    .line 1750
    :cond_22
    const-string v5, "ScrollingSpeed: "

    .line 1751
    .line 1752
    invoke-virtual {v15, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1753
    .line 1754
    .line 1755
    move-result v5

    .line 1756
    if-eqz v5, :cond_23

    .line 1757
    .line 1758
    invoke-virtual {v15, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 1759
    .line 1760
    .line 1761
    move-result v0

    .line 1762
    add-int/lit8 v0, v0, 0x2

    .line 1763
    .line 1764
    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1765
    .line 1766
    .line 1767
    move-result-object v0

    .line 1768
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 1769
    .line 1770
    .line 1771
    move-result v0

    .line 1772
    invoke-static {v9, v0}, Lo1/y;->f(Ljava/lang/String;F)V

    .line 1773
    .line 1774
    .line 1775
    if-eqz v1, :cond_4c

    .line 1776
    .line 1777
    iget-object v1, v1, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    .line 1778
    .line 1779
    check-cast v1, Lq1/x;

    .line 1780
    .line 1781
    iget-object v1, v1, Lq1/x;->k:Lu1/i;

    .line 1782
    .line 1783
    iput v0, v1, Lu1/i;->h:F

    .line 1784
    .line 1785
    goto/16 :goto_19

    .line 1786
    .line 1787
    :cond_23
    const-string v5, "DesktopLookingAround: "

    .line 1788
    .line 1789
    invoke-virtual {v15, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1790
    .line 1791
    .line 1792
    move-result v5

    .line 1793
    if-eqz v5, :cond_24

    .line 1794
    .line 1795
    invoke-virtual {v15, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 1796
    .line 1797
    .line 1798
    move-result v0

    .line 1799
    add-int/lit8 v0, v0, 0x2

    .line 1800
    .line 1801
    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1802
    .line 1803
    .line 1804
    move-result-object v0

    .line 1805
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 1806
    .line 1807
    .line 1808
    move-result v0

    .line 1809
    const/4 v2, 0x0

    .line 1810
    invoke-static {v13, v2}, Lo1/y;->a(Ljava/lang/String;Z)Z

    .line 1811
    .line 1812
    .line 1813
    move-result v2

    .line 1814
    if-eq v2, v0, :cond_4c

    .line 1815
    .line 1816
    invoke-static {v13, v0}, Lo1/y;->e(Ljava/lang/String;Z)V

    .line 1817
    .line 1818
    .line 1819
    if-eqz v1, :cond_4c

    .line 1820
    .line 1821
    iget-object v0, v1, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    .line 1822
    .line 1823
    check-cast v0, Lq1/x;

    .line 1824
    .line 1825
    invoke-virtual {v0}, Lq1/x;->p()V

    .line 1826
    .line 1827
    .line 1828
    goto/16 :goto_19

    .line 1829
    .line 1830
    :cond_24
    const-string v5, "FullscreenWidth: "

    .line 1831
    .line 1832
    invoke-virtual {v15, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1833
    .line 1834
    .line 1835
    move-result v5

    .line 1836
    if-eqz v5, :cond_25

    .line 1837
    .line 1838
    invoke-virtual {v15, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 1839
    .line 1840
    .line 1841
    move-result v0

    .line 1842
    add-int/lit8 v0, v0, 0x2

    .line 1843
    .line 1844
    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1845
    .line 1846
    .line 1847
    move-result-object v0

    .line 1848
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 1849
    .line 1850
    .line 1851
    move-result v0

    .line 1852
    const-string v1, "Settings_FullscreenWidth"

    .line 1853
    .line 1854
    goto/16 :goto_16

    .line 1855
    .line 1856
    :cond_25
    const-string v5, "FullscreenHeight: "

    .line 1857
    .line 1858
    invoke-virtual {v15, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1859
    .line 1860
    .line 1861
    move-result v5

    .line 1862
    if-eqz v5, :cond_26

    .line 1863
    .line 1864
    invoke-virtual {v15, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 1865
    .line 1866
    .line 1867
    move-result v0

    .line 1868
    add-int/lit8 v0, v0, 0x2

    .line 1869
    .line 1870
    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1871
    .line 1872
    .line 1873
    move-result-object v0

    .line 1874
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 1875
    .line 1876
    .line 1877
    move-result v0

    .line 1878
    const-string v1, "Settings_FullscreenHeight"

    .line 1879
    .line 1880
    goto/16 :goto_16

    .line 1881
    .line 1882
    :cond_26
    const-string v5, "IgnoreCutouts: "

    .line 1883
    .line 1884
    invoke-virtual {v15, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1885
    .line 1886
    .line 1887
    move-result v5

    .line 1888
    if-eqz v5, :cond_29

    .line 1889
    .line 1890
    invoke-virtual {v15, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 1891
    .line 1892
    .line 1893
    move-result v0

    .line 1894
    add-int/lit8 v0, v0, 0x2

    .line 1895
    .line 1896
    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1897
    .line 1898
    .line 1899
    move-result-object v0

    .line 1900
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 1901
    .line 1902
    .line 1903
    move-result v0

    .line 1904
    const/4 v2, 0x1

    .line 1905
    invoke-static {v12, v2}, Lo1/y;->a(Ljava/lang/String;Z)Z

    .line 1906
    .line 1907
    .line 1908
    move-result v2

    .line 1909
    if-eq v2, v0, :cond_4c

    .line 1910
    .line 1911
    invoke-static {v12, v0}, Lo1/y;->e(Ljava/lang/String;Z)V

    .line 1912
    .line 1913
    .line 1914
    if-eqz v1, :cond_4c

    .line 1915
    .line 1916
    iget-object v1, v1, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    .line 1917
    .line 1918
    check-cast v1, Lq1/x;

    .line 1919
    .line 1920
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1921
    .line 1922
    const/16 v3, 0x1c

    .line 1923
    .line 1924
    if-lt v2, v3, :cond_28

    .line 1925
    .line 1926
    iget-object v1, v1, Lq1/x;->a:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 1927
    .line 1928
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 1929
    .line 1930
    .line 1931
    move-result-object v1

    .line 1932
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 1933
    .line 1934
    .line 1935
    move-result-object v1

    .line 1936
    if-eqz v0, :cond_27

    .line 1937
    .line 1938
    const/4 v0, 0x1

    .line 1939
    goto :goto_b

    .line 1940
    :cond_27
    const/4 v0, 0x2

    .line 1941
    :goto_b
    invoke-static {v1, v0}, Lj/f;->i(Landroid/view/WindowManager$LayoutParams;I)V

    .line 1942
    .line 1943
    .line 1944
    goto/16 :goto_19

    .line 1945
    .line 1946
    :cond_28
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1947
    .line 1948
    .line 1949
    goto/16 :goto_19

    .line 1950
    .line 1951
    :cond_29
    const-string v5, "Orientation: "

    .line 1952
    .line 1953
    invoke-virtual {v15, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1954
    .line 1955
    .line 1956
    move-result v5

    .line 1957
    if-eqz v5, :cond_38

    .line 1958
    .line 1959
    invoke-virtual {v15, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 1960
    .line 1961
    .line 1962
    move-result v0

    .line 1963
    add-int/lit8 v0, v0, 0x2

    .line 1964
    .line 1965
    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 1966
    .line 1967
    .line 1968
    move-result-object v0

    .line 1969
    const-string v3, "cw"

    .line 1970
    .line 1971
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1972
    .line 1973
    .line 1974
    move-result v0

    .line 1975
    const/16 v3, 0x9

    .line 1976
    .line 1977
    const-string v4, "Settings_General_ScreenOrientation"

    .line 1978
    .line 1979
    if-eqz v0, :cond_30

    .line 1980
    .line 1981
    iget-boolean v0, v2, Lq1/f;->h:Z

    .line 1982
    .line 1983
    if-eqz v0, :cond_2b

    .line 1984
    .line 1985
    const-string v0, "Settings_General_ScreenOrientationVR"

    .line 1986
    .line 1987
    const/4 v2, 0x0

    .line 1988
    invoke-static {v0, v2}, Lo1/y;->c(Ljava/lang/String;I)I

    .line 1989
    .line 1990
    .line 1991
    move-result v3

    .line 1992
    if-nez v3, :cond_2a

    .line 1993
    .line 1994
    const/16 v2, 0x8

    .line 1995
    .line 1996
    :cond_2a
    invoke-static {v2, v0}, Lo1/y;->g(ILjava/lang/String;)V

    .line 1997
    .line 1998
    .line 1999
    goto :goto_11

    .line 2000
    :cond_2b
    const/4 v0, 0x0

    .line 2001
    invoke-static {v4, v0}, Lo1/y;->c(Ljava/lang/String;I)I

    .line 2002
    .line 2003
    .line 2004
    move-result v0

    .line 2005
    if-eqz v0, :cond_2f

    .line 2006
    .line 2007
    const/4 v2, 0x1

    .line 2008
    if-eq v0, v2, :cond_2e

    .line 2009
    .line 2010
    const/16 v2, 0x8

    .line 2011
    .line 2012
    if-eq v0, v2, :cond_2d

    .line 2013
    .line 2014
    if-eq v0, v3, :cond_2c

    .line 2015
    .line 2016
    goto :goto_c

    .line 2017
    :cond_2c
    const/16 v3, 0x8

    .line 2018
    .line 2019
    goto :goto_d

    .line 2020
    :cond_2d
    const/4 v3, 0x1

    .line 2021
    goto :goto_d

    .line 2022
    :cond_2e
    :goto_c
    const/4 v3, 0x0

    .line 2023
    :cond_2f
    :goto_d
    invoke-static {v3, v4}, Lo1/y;->g(ILjava/lang/String;)V

    .line 2024
    .line 2025
    .line 2026
    goto :goto_10

    .line 2027
    :cond_30
    iget-boolean v0, v2, Lq1/f;->h:Z

    .line 2028
    .line 2029
    if-eqz v0, :cond_32

    .line 2030
    .line 2031
    const-string v0, "Settings_General_ScreenOrientationVR"

    .line 2032
    .line 2033
    const/4 v2, 0x0

    .line 2034
    invoke-static {v0, v2}, Lo1/y;->c(Ljava/lang/String;I)I

    .line 2035
    .line 2036
    .line 2037
    move-result v3

    .line 2038
    if-nez v3, :cond_31

    .line 2039
    .line 2040
    const/16 v2, 0x8

    .line 2041
    .line 2042
    :cond_31
    invoke-static {v2, v0}, Lo1/y;->g(ILjava/lang/String;)V

    .line 2043
    .line 2044
    .line 2045
    goto :goto_11

    .line 2046
    :cond_32
    const/4 v0, 0x0

    .line 2047
    invoke-static {v4, v0}, Lo1/y;->c(Ljava/lang/String;I)I

    .line 2048
    .line 2049
    .line 2050
    move-result v0

    .line 2051
    if-eqz v0, :cond_35

    .line 2052
    .line 2053
    const/4 v2, 0x1

    .line 2054
    if-eq v0, v2, :cond_34

    .line 2055
    .line 2056
    const/16 v2, 0x8

    .line 2057
    .line 2058
    if-eq v0, v2, :cond_36

    .line 2059
    .line 2060
    if-eq v0, v3, :cond_33

    .line 2061
    .line 2062
    goto :goto_e

    .line 2063
    :cond_33
    const/4 v3, 0x0

    .line 2064
    goto :goto_f

    .line 2065
    :cond_34
    const/16 v3, 0x8

    .line 2066
    .line 2067
    goto :goto_f

    .line 2068
    :cond_35
    :goto_e
    const/4 v3, 0x1

    .line 2069
    :cond_36
    :goto_f
    invoke-static {v3, v4}, Lo1/y;->g(ILjava/lang/String;)V

    .line 2070
    .line 2071
    .line 2072
    :goto_10
    move v2, v3

    .line 2073
    :goto_11
    if-eqz v1, :cond_4c

    .line 2074
    .line 2075
    iget-object v0, v1, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    .line 2076
    .line 2077
    check-cast v0, Lq1/x;

    .line 2078
    .line 2079
    iget-object v1, v0, Lq1/x;->d:Lq1/f;

    .line 2080
    .line 2081
    if-nez v1, :cond_37

    .line 2082
    .line 2083
    iget-object v0, v0, Lq1/x;->a:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 2084
    .line 2085
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/i0;->j0(Lcom/nomone/vr_desktop/LaunchActivity;I)V

    .line 2086
    .line 2087
    .line 2088
    goto/16 :goto_19

    .line 2089
    .line 2090
    :cond_37
    const/4 v0, 0x1

    .line 2091
    invoke-virtual {v1, v2, v0}, Lq1/f;->g(IZ)V

    .line 2092
    .line 2093
    .line 2094
    goto/16 :goto_19

    .line 2095
    .line 2096
    :cond_38
    const-string v5, "ReleaseMouse: "

    .line 2097
    .line 2098
    invoke-virtual {v15, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 2099
    .line 2100
    .line 2101
    move-result v5

    .line 2102
    if-eqz v5, :cond_39

    .line 2103
    .line 2104
    invoke-virtual {v15, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 2105
    .line 2106
    .line 2107
    move-result v0

    .line 2108
    add-int/lit8 v0, v0, 0x2

    .line 2109
    .line 2110
    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 2111
    .line 2112
    .line 2113
    move-result-object v0

    .line 2114
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 2115
    .line 2116
    .line 2117
    move-result v0

    .line 2118
    iget-boolean v2, v2, Lq1/f;->B:Z

    .line 2119
    .line 2120
    invoke-static {v11, v2}, Lo1/y;->a(Ljava/lang/String;Z)Z

    .line 2121
    .line 2122
    .line 2123
    move-result v2

    .line 2124
    if-eq v2, v0, :cond_4c

    .line 2125
    .line 2126
    invoke-static {v11, v0}, Lo1/y;->e(Ljava/lang/String;Z)V

    .line 2127
    .line 2128
    .line 2129
    if-eqz v1, :cond_4c

    .line 2130
    .line 2131
    iget-object v1, v1, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    .line 2132
    .line 2133
    check-cast v1, Lq1/x;

    .line 2134
    .line 2135
    iget-object v1, v1, Lq1/x;->k:Lu1/i;

    .line 2136
    .line 2137
    iput-boolean v0, v1, Lu1/i;->D:Z

    .line 2138
    .line 2139
    goto/16 :goto_19

    .line 2140
    .line 2141
    :cond_39
    const-string v2, "VR: "

    .line 2142
    .line 2143
    invoke-virtual {v15, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 2144
    .line 2145
    .line 2146
    move-result v2

    .line 2147
    const/4 v5, 0x0

    .line 2148
    if-eqz v2, :cond_3f

    .line 2149
    .line 2150
    invoke-virtual {v15, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 2151
    .line 2152
    .line 2153
    move-result v2

    .line 2154
    add-int/lit8 v2, v2, 0x2

    .line 2155
    .line 2156
    invoke-virtual {v15, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 2157
    .line 2158
    .line 2159
    move-result-object v2

    .line 2160
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 2161
    .line 2162
    .line 2163
    move-result v2

    .line 2164
    const/4 v3, 0x0

    .line 2165
    invoke-static {v0, v3}, Lo1/y;->a(Ljava/lang/String;Z)Z

    .line 2166
    .line 2167
    .line 2168
    move-result v3

    .line 2169
    if-eq v3, v2, :cond_4c

    .line 2170
    .line 2171
    invoke-static {v0, v2}, Lo1/y;->e(Ljava/lang/String;Z)V

    .line 2172
    .line 2173
    .line 2174
    if-eqz v1, :cond_4c

    .line 2175
    .line 2176
    if-eqz v2, :cond_3e

    .line 2177
    .line 2178
    const-string v0, "Should show connect input device dialog"

    .line 2179
    .line 2180
    const/4 v3, 0x1

    .line 2181
    invoke-static {v0, v3}, Lo1/y;->a(Ljava/lang/String;Z)Z

    .line 2182
    .line 2183
    .line 2184
    move-result v0

    .line 2185
    if-eqz v0, :cond_3e

    .line 2186
    .line 2187
    iget-object v0, v1, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    .line 2188
    .line 2189
    check-cast v0, Lq1/x;

    .line 2190
    .line 2191
    iget-object v0, v0, Lq1/x;->k:Lu1/i;

    .line 2192
    .line 2193
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2194
    .line 2195
    .line 2196
    sget-object v3, Lo1/l;->h:Ljava/util/ArrayList;

    .line 2197
    .line 2198
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 2199
    .line 2200
    .line 2201
    move-result-object v3

    .line 2202
    :cond_3a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 2203
    .line 2204
    .line 2205
    move-result v4

    .line 2206
    if-eqz v4, :cond_3b

    .line 2207
    .line 2208
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 2209
    .line 2210
    .line 2211
    move-result-object v4

    .line 2212
    check-cast v4, Lo1/k;

    .line 2213
    .line 2214
    iget-boolean v4, v4, Lo1/k;->b:Z

    .line 2215
    .line 2216
    if-eqz v4, :cond_3a

    .line 2217
    .line 2218
    const/4 v3, 0x1

    .line 2219
    goto :goto_12

    .line 2220
    :cond_3b
    const/4 v3, 0x0

    .line 2221
    :goto_12
    if-nez v3, :cond_3d

    .line 2222
    .line 2223
    iget-object v3, v0, Lu1/i;->n:Lo1/h0;

    .line 2224
    .line 2225
    invoke-virtual {v3}, Lo1/h0;->c()Z

    .line 2226
    .line 2227
    .line 2228
    move-result v3

    .line 2229
    if-nez v3, :cond_3d

    .line 2230
    .line 2231
    iget-object v0, v0, Lu1/i;->o:Lo1/g0;

    .line 2232
    .line 2233
    invoke-virtual {v0}, Lo1/g0;->c()Z

    .line 2234
    .line 2235
    .line 2236
    move-result v0

    .line 2237
    if-eqz v0, :cond_3c

    .line 2238
    .line 2239
    goto :goto_13

    .line 2240
    :cond_3c
    const/4 v0, 0x0

    .line 2241
    goto :goto_14

    .line 2242
    :cond_3d
    :goto_13
    const/4 v0, 0x1

    .line 2243
    :goto_14
    if-nez v0, :cond_3e

    .line 2244
    .line 2245
    new-instance v0, Lr1/y;

    .line 2246
    .line 2247
    iget-object v3, v1, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    .line 2248
    .line 2249
    check-cast v3, Lq1/x;

    .line 2250
    .line 2251
    iget-object v3, v3, Lq1/x;->d:Lq1/f;

    .line 2252
    .line 2253
    invoke-direct {v0, v3}, Lr1/y;-><init>(Lq1/f;)V

    .line 2254
    .line 2255
    .line 2256
    const-string v3, "Connect Input Device"

    .line 2257
    .line 2258
    iput-object v3, v0, Lr1/y;->d:Ljava/lang/String;

    .line 2259
    .line 2260
    const-string v3, "Welcome to the VR MODE! In order to make the most out of this experience, please:<ul>  <li>Attach a mouse to the device. Or,</li>  <li>Control the cursor from another phone using <a href=\'https://play.google.com/store/apps/details?id=com.nomone.vrbrowser.remote\' target=\'_blank\'>our remote app</a>.</li></ul>Want to use the gyroscope instead? <a href=\'mailto:desktop.support@nomone.com?subject=Request gyroscope\'>Let us know</a>.<p>Don\'t forget to adjust the IPD and the scale, and make sure screen auto-brightness is turned off.</p>"

    .line 2261
    .line 2262
    iput-object v3, v0, Lr1/y;->e:Ljava/lang/String;

    .line 2263
    .line 2264
    const/4 v3, 0x1

    .line 2265
    iput-boolean v3, v0, Lr1/y;->c:Z

    .line 2266
    .line 2267
    const-string v3, "DON\'T REMIND ME"

    .line 2268
    .line 2269
    invoke-virtual {v0, v3}, Lr1/y;->a(Ljava/lang/String;)V

    .line 2270
    .line 2271
    .line 2272
    const-string v3, "OK"

    .line 2273
    .line 2274
    invoke-virtual {v0, v3}, Lr1/y;->a(Ljava/lang/String;)V

    .line 2275
    .line 2276
    .line 2277
    const/16 v3, 0x1ac

    .line 2278
    .line 2279
    const/16 v4, 0x168

    .line 2280
    .line 2281
    invoke-virtual {v0, v3, v4}, Lr1/y;->d(II)V

    .line 2282
    .line 2283
    .line 2284
    const/16 v3, 0xaa

    .line 2285
    .line 2286
    iput v3, v0, Lr1/y;->i:I

    .line 2287
    .line 2288
    const/16 v3, 0x1c

    .line 2289
    .line 2290
    iput v3, v0, Lr1/y;->j:I

    .line 2291
    .line 2292
    new-instance v3, Lh0/b;

    .line 2293
    .line 2294
    const/16 v4, 0xb

    .line 2295
    .line 2296
    invoke-direct {v3, v1, v4}, Lh0/b;-><init>(Ljava/lang/Object;I)V

    .line 2297
    .line 2298
    .line 2299
    iput-object v3, v0, Lr1/y;->o:Lr1/w;

    .line 2300
    .line 2301
    invoke-static {v0, v5}, Lcom/nomone/vr_desktop/Applications/PromptApplication;->g(Lr1/y;Lr1/c;)Lcom/nomone/vr_desktop/Applications/PromptApplication;

    .line 2302
    .line 2303
    .line 2304
    goto :goto_15

    .line 2305
    :cond_3e
    iget-object v0, v1, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    .line 2306
    .line 2307
    check-cast v0, Lq1/x;

    .line 2308
    .line 2309
    iget-object v0, v0, Lq1/x;->d:Lq1/f;

    .line 2310
    .line 2311
    invoke-virtual {v0, v2}, Lq1/f;->h(Z)V

    .line 2312
    .line 2313
    .line 2314
    iget-object v0, v1, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    .line 2315
    .line 2316
    check-cast v0, Lq1/x;

    .line 2317
    .line 2318
    invoke-virtual {v0}, Lq1/x;->p()V

    .line 2319
    .line 2320
    .line 2321
    :goto_15
    if-eqz v2, :cond_4c

    .line 2322
    .line 2323
    iget-object v0, v1, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    .line 2324
    .line 2325
    check-cast v0, Lq1/x;

    .line 2326
    .line 2327
    iget-object v0, v0, Lq1/x;->k:Lu1/i;

    .line 2328
    .line 2329
    iget-object v1, v0, Lu1/i;->m:Lo1/v0;

    .line 2330
    .line 2331
    iget-boolean v1, v1, Lo1/v0;->k:Z

    .line 2332
    .line 2333
    if-eqz v1, :cond_4c

    .line 2334
    .line 2335
    const/4 v1, 0x0

    .line 2336
    invoke-virtual {v0, v1}, Lu1/i;->j(Z)V

    .line 2337
    .line 2338
    .line 2339
    goto/16 :goto_19

    .line 2340
    .line 2341
    :cond_3f
    const-string v0, "IPD: "

    .line 2342
    .line 2343
    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 2344
    .line 2345
    .line 2346
    move-result v0

    .line 2347
    if-eqz v0, :cond_40

    .line 2348
    .line 2349
    invoke-virtual {v15, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 2350
    .line 2351
    .line 2352
    move-result v0

    .line 2353
    add-int/lit8 v0, v0, 0x2

    .line 2354
    .line 2355
    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 2356
    .line 2357
    .line 2358
    move-result-object v0

    .line 2359
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 2360
    .line 2361
    .line 2362
    move-result v0

    .line 2363
    const v2, -0x42333333    # -0.1f

    .line 2364
    .line 2365
    .line 2366
    invoke-static {v6, v2}, Lo1/y;->b(Ljava/lang/String;F)F

    .line 2367
    .line 2368
    .line 2369
    move-result v2

    .line 2370
    cmpl-float v2, v2, v0

    .line 2371
    .line 2372
    if-eqz v2, :cond_4c

    .line 2373
    .line 2374
    invoke-static {v6, v0}, Lo1/y;->f(Ljava/lang/String;F)V

    .line 2375
    .line 2376
    .line 2377
    if-eqz v1, :cond_4c

    .line 2378
    .line 2379
    iget-object v2, v1, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    .line 2380
    .line 2381
    check-cast v2, Lq1/x;

    .line 2382
    .line 2383
    iget-object v2, v2, Lq1/x;->d:Lq1/f;

    .line 2384
    .line 2385
    invoke-virtual {v2, v0}, Lq1/f;->f(F)V

    .line 2386
    .line 2387
    .line 2388
    iget-object v0, v1, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    .line 2389
    .line 2390
    check-cast v0, Lq1/x;

    .line 2391
    .line 2392
    iget-object v0, v0, Lq1/x;->m:La2/z;

    .line 2393
    .line 2394
    const/4 v1, 0x1

    .line 2395
    iput-boolean v1, v0, La2/z;->B:Z

    .line 2396
    .line 2397
    goto/16 :goto_1b

    .line 2398
    .line 2399
    :cond_40
    const-string v0, "VRLookingAround: "

    .line 2400
    .line 2401
    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 2402
    .line 2403
    .line 2404
    move-result v0

    .line 2405
    if-eqz v0, :cond_41

    .line 2406
    .line 2407
    invoke-virtual {v15, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 2408
    .line 2409
    .line 2410
    move-result v0

    .line 2411
    add-int/lit8 v0, v0, 0x2

    .line 2412
    .line 2413
    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 2414
    .line 2415
    .line 2416
    move-result-object v0

    .line 2417
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 2418
    .line 2419
    .line 2420
    move-result v0

    .line 2421
    const/4 v2, 0x1

    .line 2422
    invoke-static {v4, v2}, Lo1/y;->a(Ljava/lang/String;Z)Z

    .line 2423
    .line 2424
    .line 2425
    move-result v2

    .line 2426
    if-eq v2, v0, :cond_4c

    .line 2427
    .line 2428
    invoke-static {v4, v0}, Lo1/y;->e(Ljava/lang/String;Z)V

    .line 2429
    .line 2430
    .line 2431
    if-eqz v1, :cond_4c

    .line 2432
    .line 2433
    iget-object v0, v1, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    .line 2434
    .line 2435
    check-cast v0, Lq1/x;

    .line 2436
    .line 2437
    invoke-virtual {v0}, Lq1/x;->p()V

    .line 2438
    .line 2439
    .line 2440
    goto/16 :goto_19

    .line 2441
    .line 2442
    :cond_41
    const-string v0, "VRFullscreenWidth: "

    .line 2443
    .line 2444
    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 2445
    .line 2446
    .line 2447
    move-result v0

    .line 2448
    if-eqz v0, :cond_42

    .line 2449
    .line 2450
    invoke-virtual {v15, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 2451
    .line 2452
    .line 2453
    move-result v0

    .line 2454
    add-int/lit8 v0, v0, 0x2

    .line 2455
    .line 2456
    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 2457
    .line 2458
    .line 2459
    move-result-object v0

    .line 2460
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 2461
    .line 2462
    .line 2463
    move-result v0

    .line 2464
    const-string v1, "Settings_VR_FullscreenWidth"

    .line 2465
    .line 2466
    goto :goto_16

    .line 2467
    :cond_42
    const-string v0, "VRFullscreenHeight: "

    .line 2468
    .line 2469
    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 2470
    .line 2471
    .line 2472
    move-result v0

    .line 2473
    if-eqz v0, :cond_43

    .line 2474
    .line 2475
    invoke-virtual {v15, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 2476
    .line 2477
    .line 2478
    move-result v0

    .line 2479
    add-int/lit8 v0, v0, 0x2

    .line 2480
    .line 2481
    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 2482
    .line 2483
    .line 2484
    move-result-object v0

    .line 2485
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 2486
    .line 2487
    .line 2488
    move-result v0

    .line 2489
    const-string v1, "Settings_VR_FullscreenHeight"

    .line 2490
    .line 2491
    :goto_16
    invoke-static {v1, v0}, Lo1/y;->f(Ljava/lang/String;F)V

    .line 2492
    .line 2493
    .line 2494
    goto/16 :goto_19

    .line 2495
    .line 2496
    :cond_43
    const-string v0, "StartLinuxFullscreen: "

    .line 2497
    .line 2498
    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 2499
    .line 2500
    .line 2501
    move-result v0

    .line 2502
    if-eqz v0, :cond_44

    .line 2503
    .line 2504
    invoke-virtual {v15, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 2505
    .line 2506
    .line 2507
    move-result v0

    .line 2508
    add-int/lit8 v0, v0, 0x2

    .line 2509
    .line 2510
    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 2511
    .line 2512
    .line 2513
    move-result-object v0

    .line 2514
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 2515
    .line 2516
    .line 2517
    move-result v0

    .line 2518
    const/4 v1, 0x0

    .line 2519
    invoke-static {v7, v1}, Lo1/y;->a(Ljava/lang/String;Z)Z

    .line 2520
    .line 2521
    .line 2522
    move-result v1

    .line 2523
    if-eq v1, v0, :cond_4c

    .line 2524
    .line 2525
    goto :goto_17

    .line 2526
    :cond_44
    const-string v0, "Audio: "

    .line 2527
    .line 2528
    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 2529
    .line 2530
    .line 2531
    move-result v0

    .line 2532
    if-eqz v0, :cond_45

    .line 2533
    .line 2534
    invoke-virtual {v15, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 2535
    .line 2536
    .line 2537
    move-result v0

    .line 2538
    add-int/lit8 v0, v0, 0x2

    .line 2539
    .line 2540
    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 2541
    .line 2542
    .line 2543
    move-result-object v0

    .line 2544
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 2545
    .line 2546
    .line 2547
    move-result v0

    .line 2548
    invoke-static {v14}, Lcom/nomone/vr_desktop/Applications/SettingsApplication;->f(Lcom/nomone/vr_desktop/LaunchActivity;)Z

    .line 2549
    .line 2550
    .line 2551
    move-result v1

    .line 2552
    if-eq v1, v0, :cond_4c

    .line 2553
    .line 2554
    const-string v1, "Settings_Linux_Audio"

    .line 2555
    .line 2556
    invoke-static {v1, v0}, Lo1/y;->e(Ljava/lang/String;Z)V

    .line 2557
    .line 2558
    .line 2559
    if-eqz v17, :cond_4c

    .line 2560
    .line 2561
    goto/16 :goto_18

    .line 2562
    .line 2563
    :cond_45
    const-string v0, "Sharpen: "

    .line 2564
    .line 2565
    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 2566
    .line 2567
    .line 2568
    move-result v0

    .line 2569
    if-eqz v0, :cond_46

    .line 2570
    .line 2571
    invoke-virtual {v15, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 2572
    .line 2573
    .line 2574
    move-result v0

    .line 2575
    add-int/lit8 v0, v0, 0x2

    .line 2576
    .line 2577
    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 2578
    .line 2579
    .line 2580
    move-result-object v0

    .line 2581
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 2582
    .line 2583
    .line 2584
    move-result v0

    .line 2585
    invoke-static {}, Lcom/nomone/vr_desktop/Applications/SettingsApplication;->i()Z

    .line 2586
    .line 2587
    .line 2588
    move-result v1

    .line 2589
    if-eq v1, v0, :cond_4c

    .line 2590
    .line 2591
    const-string v7, "Settings_Linux_Sharpen"

    .line 2592
    .line 2593
    :goto_17
    invoke-static {v7, v0}, Lo1/y;->e(Ljava/lang/String;Z)V

    .line 2594
    .line 2595
    .line 2596
    goto/16 :goto_19

    .line 2597
    .line 2598
    :cond_46
    const-string v0, "16BitColor: "

    .line 2599
    .line 2600
    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 2601
    .line 2602
    .line 2603
    move-result v0

    .line 2604
    if-eqz v0, :cond_47

    .line 2605
    .line 2606
    invoke-virtual {v15, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 2607
    .line 2608
    .line 2609
    move-result v0

    .line 2610
    add-int/lit8 v0, v0, 0x2

    .line 2611
    .line 2612
    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 2613
    .line 2614
    .line 2615
    move-result-object v0

    .line 2616
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 2617
    .line 2618
    .line 2619
    move-result v0

    .line 2620
    const/4 v1, 0x0

    .line 2621
    invoke-static {v3, v1}, Lo1/y;->a(Ljava/lang/String;Z)Z

    .line 2622
    .line 2623
    .line 2624
    move-result v1

    .line 2625
    if-eq v1, v0, :cond_4c

    .line 2626
    .line 2627
    invoke-static {v3, v0}, Lo1/y;->e(Ljava/lang/String;Z)V

    .line 2628
    .line 2629
    .line 2630
    if-eqz v17, :cond_4c

    .line 2631
    .line 2632
    goto/16 :goto_18

    .line 2633
    .line 2634
    :cond_47
    const-string v0, "HardwareAcceleration: "

    .line 2635
    .line 2636
    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 2637
    .line 2638
    .line 2639
    move-result v0

    .line 2640
    if-eqz v0, :cond_48

    .line 2641
    .line 2642
    invoke-virtual {v15, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 2643
    .line 2644
    .line 2645
    move-result v0

    .line 2646
    add-int/lit8 v0, v0, 0x2

    .line 2647
    .line 2648
    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 2649
    .line 2650
    .line 2651
    move-result-object v0

    .line 2652
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 2653
    .line 2654
    .line 2655
    move-result v0

    .line 2656
    const/4 v1, 0x0

    .line 2657
    move-object/from16 v2, v25

    .line 2658
    .line 2659
    invoke-static {v2, v1}, Lo1/y;->a(Ljava/lang/String;Z)Z

    .line 2660
    .line 2661
    .line 2662
    move-result v1

    .line 2663
    if-eq v1, v0, :cond_4c

    .line 2664
    .line 2665
    invoke-static {v2, v0}, Lo1/y;->e(Ljava/lang/String;Z)V

    .line 2666
    .line 2667
    .line 2668
    if-eqz v17, :cond_4c

    .line 2669
    .line 2670
    goto/16 :goto_18

    .line 2671
    .line 2672
    :cond_48
    const-string v0, "BusyLoop: "

    .line 2673
    .line 2674
    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 2675
    .line 2676
    .line 2677
    move-result v0

    .line 2678
    if-eqz v0, :cond_4a

    .line 2679
    .line 2680
    invoke-virtual {v15, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 2681
    .line 2682
    .line 2683
    move-result v0

    .line 2684
    add-int/lit8 v0, v0, 0x2

    .line 2685
    .line 2686
    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 2687
    .line 2688
    .line 2689
    move-result-object v0

    .line 2690
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 2691
    .line 2692
    .line 2693
    move-result v0

    .line 2694
    const/4 v2, 0x0

    .line 2695
    move-object/from16 v3, v24

    .line 2696
    .line 2697
    invoke-static {v3, v2}, Lo1/y;->a(Ljava/lang/String;Z)Z

    .line 2698
    .line 2699
    .line 2700
    move-result v4

    .line 2701
    if-eq v4, v0, :cond_4c

    .line 2702
    .line 2703
    invoke-static {v3, v0}, Lo1/y;->e(Ljava/lang/String;Z)V

    .line 2704
    .line 2705
    .line 2706
    if-eqz v1, :cond_4c

    .line 2707
    .line 2708
    iget-object v3, v1, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 2709
    .line 2710
    check-cast v3, Lq1/p;

    .line 2711
    .line 2712
    if-eqz v3, :cond_49

    .line 2713
    .line 2714
    iput-boolean v2, v3, Lq1/p;->f:Z

    .line 2715
    .line 2716
    iput-object v5, v1, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 2717
    .line 2718
    :cond_49
    if-eqz v0, :cond_4c

    .line 2719
    .line 2720
    new-instance v0, Ljava/lang/Thread;

    .line 2721
    .line 2722
    iget-object v2, v1, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    .line 2723
    .line 2724
    check-cast v2, Lq1/x;

    .line 2725
    .line 2726
    iget-object v2, v2, Lq1/x;->c:Ljava/lang/ThreadGroup;

    .line 2727
    .line 2728
    new-instance v3, Lq1/p;

    .line 2729
    .line 2730
    invoke-direct {v3, v1}, Lq1/p;-><init>(Landroidx/fragment/app/h;)V

    .line 2731
    .line 2732
    .line 2733
    iput-object v3, v1, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 2734
    .line 2735
    const-string v1, "busyLoopThread"

    .line 2736
    .line 2737
    invoke-direct {v0, v2, v3, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 2738
    .line 2739
    .line 2740
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2741
    .line 2742
    .line 2743
    goto :goto_19

    .line 2744
    :cond_4a
    const-string v0, "LimitMemory: "

    .line 2745
    .line 2746
    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 2747
    .line 2748
    .line 2749
    move-result v0

    .line 2750
    if-eqz v0, :cond_4b

    .line 2751
    .line 2752
    invoke-virtual {v15, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 2753
    .line 2754
    .line 2755
    move-result v0

    .line 2756
    add-int/lit8 v0, v0, 0x2

    .line 2757
    .line 2758
    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 2759
    .line 2760
    .line 2761
    move-result-object v0

    .line 2762
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 2763
    .line 2764
    .line 2765
    move-result v0

    .line 2766
    const/4 v1, 0x0

    .line 2767
    move-object/from16 v2, v20

    .line 2768
    .line 2769
    invoke-static {v2, v1}, Lo1/y;->a(Ljava/lang/String;Z)Z

    .line 2770
    .line 2771
    .line 2772
    move-result v1

    .line 2773
    if-eq v1, v0, :cond_4c

    .line 2774
    .line 2775
    invoke-static {v2, v0}, Lo1/y;->e(Ljava/lang/String;Z)V

    .line 2776
    .line 2777
    .line 2778
    if-eqz v17, :cond_4c

    .line 2779
    .line 2780
    goto :goto_18

    .line 2781
    :cond_4b
    const-string v0, "ForceEnglishLocale: "

    .line 2782
    .line 2783
    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 2784
    .line 2785
    .line 2786
    move-result v0

    .line 2787
    if-eqz v0, :cond_4d

    .line 2788
    .line 2789
    invoke-virtual {v15, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 2790
    .line 2791
    .line 2792
    move-result v0

    .line 2793
    add-int/lit8 v0, v0, 0x2

    .line 2794
    .line 2795
    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 2796
    .line 2797
    .line 2798
    move-result-object v0

    .line 2799
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 2800
    .line 2801
    .line 2802
    move-result v0

    .line 2803
    const/4 v1, 0x0

    .line 2804
    move-object/from16 v2, v23

    .line 2805
    .line 2806
    invoke-static {v2, v1}, Lo1/y;->a(Ljava/lang/String;Z)Z

    .line 2807
    .line 2808
    .line 2809
    move-result v1

    .line 2810
    if-eq v1, v0, :cond_4c

    .line 2811
    .line 2812
    invoke-static {v2, v0}, Lo1/y;->e(Ljava/lang/String;Z)V

    .line 2813
    .line 2814
    .line 2815
    if-eqz v17, :cond_4c

    .line 2816
    .line 2817
    :goto_18
    const/4 v0, 0x1

    .line 2818
    move v1, v0

    .line 2819
    goto/16 :goto_1a

    .line 2820
    .line 2821
    :cond_4c
    :goto_19
    const/4 v1, 0x1

    .line 2822
    goto/16 :goto_1b

    .line 2823
    .line 2824
    :cond_4d
    const-string v0, "RunAsRoot: "

    .line 2825
    .line 2826
    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 2827
    .line 2828
    .line 2829
    move-result v0

    .line 2830
    if-eqz v0, :cond_4e

    .line 2831
    .line 2832
    invoke-virtual {v15, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 2833
    .line 2834
    .line 2835
    move-result v0

    .line 2836
    add-int/lit8 v0, v0, 0x2

    .line 2837
    .line 2838
    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 2839
    .line 2840
    .line 2841
    move-result-object v0

    .line 2842
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 2843
    .line 2844
    .line 2845
    move-result v0

    .line 2846
    const/4 v1, 0x1

    .line 2847
    move-object/from16 v2, v22

    .line 2848
    .line 2849
    invoke-static {v2, v1}, Lo1/y;->a(Ljava/lang/String;Z)Z

    .line 2850
    .line 2851
    .line 2852
    move-result v3

    .line 2853
    if-eq v3, v0, :cond_51

    .line 2854
    .line 2855
    invoke-static {v2, v0}, Lo1/y;->e(Ljava/lang/String;Z)V

    .line 2856
    .line 2857
    .line 2858
    if-eqz v17, :cond_51

    .line 2859
    .line 2860
    goto :goto_1a

    .line 2861
    :cond_4e
    const/4 v1, 0x1

    .line 2862
    const-string v0, "Ulauncher: "

    .line 2863
    .line 2864
    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 2865
    .line 2866
    .line 2867
    move-result v0

    .line 2868
    if-eqz v0, :cond_4f

    .line 2869
    .line 2870
    invoke-virtual {v15, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 2871
    .line 2872
    .line 2873
    move-result v0

    .line 2874
    add-int/lit8 v0, v0, 0x2

    .line 2875
    .line 2876
    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 2877
    .line 2878
    .line 2879
    move-result-object v0

    .line 2880
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 2881
    .line 2882
    .line 2883
    move-result v0

    .line 2884
    invoke-static {v14}, Lcom/nomone/vr_desktop/Applications/SettingsApplication;->j(Lcom/nomone/vr_desktop/LaunchActivity;)Z

    .line 2885
    .line 2886
    .line 2887
    move-result v2

    .line 2888
    if-eq v2, v0, :cond_51

    .line 2889
    .line 2890
    const-string v2, "Settings_Linux_Ulauncher"

    .line 2891
    .line 2892
    invoke-static {v2, v0}, Lo1/y;->e(Ljava/lang/String;Z)V

    .line 2893
    .line 2894
    .line 2895
    if-eqz v17, :cond_51

    .line 2896
    .line 2897
    goto :goto_1a

    .line 2898
    :cond_4f
    const-string v0, "SafeMode: "

    .line 2899
    .line 2900
    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 2901
    .line 2902
    .line 2903
    move-result v0

    .line 2904
    if-eqz v0, :cond_50

    .line 2905
    .line 2906
    invoke-virtual {v15, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 2907
    .line 2908
    .line 2909
    move-result v0

    .line 2910
    add-int/lit8 v0, v0, 0x2

    .line 2911
    .line 2912
    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 2913
    .line 2914
    .line 2915
    move-result-object v0

    .line 2916
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 2917
    .line 2918
    .line 2919
    move-result v0

    .line 2920
    const/4 v2, 0x0

    .line 2921
    move-object/from16 v3, v21

    .line 2922
    .line 2923
    invoke-static {v3, v2}, Lo1/y;->a(Ljava/lang/String;Z)Z

    .line 2924
    .line 2925
    .line 2926
    move-result v2

    .line 2927
    if-eq v2, v0, :cond_51

    .line 2928
    .line 2929
    invoke-static {v3, v0}, Lo1/y;->e(Ljava/lang/String;Z)V

    .line 2930
    .line 2931
    .line 2932
    if-eqz v17, :cond_51

    .line 2933
    .line 2934
    :goto_1a
    const/16 v0, 0x1f4

    .line 2935
    .line 2936
    const-string v2, "Applies after restarting Linux"

    .line 2937
    .line 2938
    move-object/from16 v3, v16

    .line 2939
    .line 2940
    invoke-virtual {v3, v0, v2}, Lo1/n0;->c(ILjava/lang/String;)V

    .line 2941
    .line 2942
    .line 2943
    goto :goto_1b

    .line 2944
    :cond_50
    const/4 v1, 0x0

    .line 2945
    :cond_51
    :goto_1b
    return v1

    .line 2946
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
