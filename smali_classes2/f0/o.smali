.class public final Lf0/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lf0/b;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lf0/b;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Lf0/o;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lf0/o;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lf0/o;->d:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p1, p0, Lf0/o;->b:Lf0/b;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lf0/o;->a:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v4, "playBillingLibraryVersion"

    .line 7
    .line 8
    const-string v5, "BillingClient"

    .line 9
    .line 10
    const/4 v6, 0x3

    .line 11
    const/4 v7, 0x1

    .line 12
    const/4 v8, 0x0

    .line 13
    packed-switch v1, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    goto/16 :goto_8

    .line 17
    .line 18
    :pswitch_0
    iget-object v1, v0, Lf0/o;->b:Lf0/b;

    .line 19
    .line 20
    iget-object v2, v0, Lf0/o;->c:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v2, Ljava/lang/String;

    .line 23
    .line 24
    iget-object v3, v0, Lf0/o;->d:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v3, Ljava/lang/String;

    .line 27
    .line 28
    iget-object v4, v1, Lf0/b;->g:Lcom/google/android/gms/internal/play_billing/k3;

    .line 29
    .line 30
    iget-object v1, v1, Lf0/b;->e:Landroid/content/Context;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v4, Lcom/google/android/gms/internal/play_billing/i3;

    .line 37
    .line 38
    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/i3;->b()Landroid/os/Parcel;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v5, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v5, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/play_billing/i3;->c(Landroid/os/Parcel;I)Landroid/os/Parcel;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 62
    .line 63
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/l3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    check-cast v2, Landroid/os/Bundle;

    .line 68
    .line 69
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 70
    .line 71
    .line 72
    return-object v2

    .line 73
    :pswitch_1
    iget-object v1, v0, Lf0/o;->b:Lf0/b;

    .line 74
    .line 75
    iget-object v9, v0, Lf0/o;->c:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v9, Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v10

    .line 83
    const-string v11, "Querying owned items, item type: "

    .line 84
    .line 85
    invoke-virtual {v11, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v10

    .line 89
    invoke-static {v5, v10}, Lcom/google/android/gms/internal/play_billing/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    new-instance v10, Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .line 96
    .line 97
    iget-boolean v11, v1, Lf0/b;->l:Z

    .line 98
    .line 99
    iget-boolean v12, v1, Lf0/b;->r:Z

    .line 100
    .line 101
    iget-object v13, v1, Lf0/b;->t:Lf0/h;

    .line 102
    .line 103
    iget-boolean v14, v13, Lf0/h;->b:Z

    .line 104
    .line 105
    iget-boolean v13, v13, Lf0/h;->c:Z

    .line 106
    .line 107
    iget-object v15, v1, Lf0/b;->b:Ljava/lang/String;

    .line 108
    .line 109
    new-instance v8, Landroid/os/Bundle;

    .line 110
    .line 111
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v8, v4, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    if-eqz v11, :cond_0

    .line 118
    .line 119
    if-eqz v14, :cond_0

    .line 120
    .line 121
    const-string v4, "enablePendingPurchases"

    .line 122
    .line 123
    invoke-virtual {v8, v4, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 124
    .line 125
    .line 126
    :cond_0
    if-eqz v12, :cond_1

    .line 127
    .line 128
    if-eqz v13, :cond_1

    .line 129
    .line 130
    const-string v4, "enablePendingPurchaseForSubscriptions"

    .line 131
    .line 132
    invoke-virtual {v8, v4, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 133
    .line 134
    .line 135
    :cond_1
    const/4 v4, 0x0

    .line 136
    :goto_0
    const/4 v11, 0x4

    .line 137
    :try_start_0
    iget-boolean v12, v1, Lf0/b;->l:Z

    .line 138
    .line 139
    if-eqz v12, :cond_3

    .line 140
    .line 141
    iget-object v12, v1, Lf0/b;->g:Lcom/google/android/gms/internal/play_billing/k3;

    .line 142
    .line 143
    iget-boolean v13, v1, Lf0/b;->r:Z

    .line 144
    .line 145
    if-eq v7, v13, :cond_2

    .line 146
    .line 147
    const/16 v13, 0x9

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_2
    const/16 v13, 0x13

    .line 151
    .line 152
    :goto_1
    iget-object v14, v1, Lf0/b;->e:Landroid/content/Context;

    .line 153
    .line 154
    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v14

    .line 158
    check-cast v12, Lcom/google/android/gms/internal/play_billing/i3;

    .line 159
    .line 160
    invoke-virtual {v12}, Lcom/google/android/gms/internal/play_billing/i3;->b()Landroid/os/Parcel;

    .line 161
    .line 162
    .line 163
    move-result-object v15

    .line 164
    invoke-virtual {v15, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v15, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v15, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v15, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    sget v4, Lcom/google/android/gms/internal/play_billing/l3;->a:I

    .line 177
    .line 178
    invoke-virtual {v15, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v8, v15, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 182
    .line 183
    .line 184
    const/16 v4, 0xb

    .line 185
    .line 186
    invoke-virtual {v12, v15, v4}, Lcom/google/android/gms/internal/play_billing/i3;->c(Landroid/os/Parcel;I)Landroid/os/Parcel;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    sget-object v12, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 191
    .line 192
    invoke-static {v4, v12}, Lcom/google/android/gms/internal/play_billing/l3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 193
    .line 194
    .line 195
    move-result-object v12

    .line 196
    check-cast v12, Landroid/os/Bundle;

    .line 197
    .line 198
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 199
    .line 200
    .line 201
    goto :goto_2

    .line 202
    :cond_3
    iget-object v12, v1, Lf0/b;->g:Lcom/google/android/gms/internal/play_billing/k3;

    .line 203
    .line 204
    iget-object v13, v1, Lf0/b;->e:Landroid/content/Context;

    .line 205
    .line 206
    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v13

    .line 210
    check-cast v12, Lcom/google/android/gms/internal/play_billing/i3;

    .line 211
    .line 212
    invoke-virtual {v12}, Lcom/google/android/gms/internal/play_billing/i3;->b()Landroid/os/Parcel;

    .line 213
    .line 214
    .line 215
    move-result-object v14

    .line 216
    invoke-virtual {v14, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v14, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v14, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v14, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v12, v14, v11}, Lcom/google/android/gms/internal/play_billing/i3;->c(Landroid/os/Parcel;I)Landroid/os/Parcel;

    .line 229
    .line 230
    .line 231
    move-result-object v4

    .line 232
    sget-object v12, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 233
    .line 234
    invoke-static {v4, v12}, Lcom/google/android/gms/internal/play_billing/l3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 235
    .line 236
    .line 237
    move-result-object v12

    .line 238
    check-cast v12, Landroid/os/Bundle;

    .line 239
    .line 240
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 241
    .line 242
    .line 243
    :goto_2
    sget-object v4, Lf0/t;->i:Lf0/g;

    .line 244
    .line 245
    const-string v13, "INAPP_DATA_SIGNATURE_LIST"

    .line 246
    .line 247
    const-string v14, "INAPP_PURCHASE_DATA_LIST"

    .line 248
    .line 249
    const-string v15, "INAPP_PURCHASE_ITEM_LIST"

    .line 250
    .line 251
    const-string v6, "getPurchase()"

    .line 252
    .line 253
    if-nez v12, :cond_4

    .line 254
    .line 255
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v6

    .line 259
    const-string v2, "%s got null owned items list"

    .line 260
    .line 261
    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    sget v2, Lcom/google/android/gms/internal/play_billing/s;->a:I

    .line 265
    .line 266
    new-instance v2, Lo/a;

    .line 267
    .line 268
    const/16 v6, 0x36

    .line 269
    .line 270
    invoke-direct {v2, v4, v6}, Lo/a;-><init>(Ljava/lang/Object;I)V

    .line 271
    .line 272
    .line 273
    goto/16 :goto_4

    .line 274
    .line 275
    :cond_4
    invoke-static {v12, v5}, Lcom/google/android/gms/internal/play_billing/s;->a(Landroid/os/Bundle;Ljava/lang/String;)I

    .line 276
    .line 277
    .line 278
    move-result v2

    .line 279
    invoke-static {v12, v5}, Lcom/google/android/gms/internal/play_billing/s;->c(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v11

    .line 283
    invoke-static {}, Lf0/g;->b()Lf0/g;

    .line 284
    .line 285
    .line 286
    move-result-object v3

    .line 287
    iput v2, v3, Lf0/g;->b:I

    .line 288
    .line 289
    iput-object v11, v3, Lf0/g;->c:Ljava/lang/String;

    .line 290
    .line 291
    invoke-virtual {v3}, Lf0/g;->a()Lf0/g;

    .line 292
    .line 293
    .line 294
    move-result-object v3

    .line 295
    if-eqz v2, :cond_5

    .line 296
    .line 297
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 298
    .line 299
    .line 300
    move-result-object v2

    .line 301
    filled-new-array {v6, v2}, [Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v2

    .line 305
    const-string v4, "%s failed. Response code: %s"

    .line 306
    .line 307
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    new-instance v2, Lo/a;

    .line 311
    .line 312
    const/16 v4, 0x17

    .line 313
    .line 314
    invoke-direct {v2, v3, v4}, Lo/a;-><init>(Ljava/lang/Object;I)V

    .line 315
    .line 316
    .line 317
    goto/16 :goto_4

    .line 318
    .line 319
    :cond_5
    invoke-virtual {v12, v15}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 320
    .line 321
    .line 322
    move-result v2

    .line 323
    if-eqz v2, :cond_a

    .line 324
    .line 325
    invoke-virtual {v12, v14}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 326
    .line 327
    .line 328
    move-result v2

    .line 329
    if-eqz v2, :cond_a

    .line 330
    .line 331
    invoke-virtual {v12, v13}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 332
    .line 333
    .line 334
    move-result v2

    .line 335
    if-nez v2, :cond_6

    .line 336
    .line 337
    goto :goto_3

    .line 338
    :cond_6
    invoke-virtual {v12, v15}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    invoke-virtual {v12, v14}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 343
    .line 344
    .line 345
    move-result-object v3

    .line 346
    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 347
    .line 348
    .line 349
    move-result-object v11

    .line 350
    if-nez v2, :cond_7

    .line 351
    .line 352
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v2

    .line 356
    const-string v3, "Bundle returned from %s contains null SKUs list."

    .line 357
    .line 358
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    new-instance v2, Lo/a;

    .line 362
    .line 363
    const/16 v3, 0x38

    .line 364
    .line 365
    invoke-direct {v2, v4, v3}, Lo/a;-><init>(Ljava/lang/Object;I)V

    .line 366
    .line 367
    .line 368
    goto :goto_4

    .line 369
    :cond_7
    if-nez v3, :cond_8

    .line 370
    .line 371
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    move-result-object v2

    .line 375
    const-string v3, "Bundle returned from %s contains null purchases list."

    .line 376
    .line 377
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    new-instance v2, Lo/a;

    .line 381
    .line 382
    const/16 v3, 0x39

    .line 383
    .line 384
    invoke-direct {v2, v4, v3}, Lo/a;-><init>(Ljava/lang/Object;I)V

    .line 385
    .line 386
    .line 387
    goto :goto_4

    .line 388
    :cond_8
    if-nez v11, :cond_9

    .line 389
    .line 390
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    move-result-object v2

    .line 394
    const-string v3, "Bundle returned from %s contains null signatures list."

    .line 395
    .line 396
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    new-instance v2, Lo/a;

    .line 400
    .line 401
    const/16 v3, 0x3a

    .line 402
    .line 403
    invoke-direct {v2, v4, v3}, Lo/a;-><init>(Ljava/lang/Object;I)V

    .line 404
    .line 405
    .line 406
    goto :goto_4

    .line 407
    :cond_9
    new-instance v2, Lo/a;

    .line 408
    .line 409
    sget-object v3, Lf0/t;->j:Lf0/g;

    .line 410
    .line 411
    invoke-direct {v2, v3, v7}, Lo/a;-><init>(Ljava/lang/Object;I)V

    .line 412
    .line 413
    .line 414
    goto :goto_4

    .line 415
    :cond_a
    :goto_3
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    move-result-object v2

    .line 419
    const-string v3, "Bundle returned from %s doesn\'t contain required fields."

    .line 420
    .line 421
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    new-instance v2, Lo/a;

    .line 425
    .line 426
    const/16 v3, 0x37

    .line 427
    .line 428
    invoke-direct {v2, v4, v3}, Lo/a;-><init>(Ljava/lang/Object;I)V

    .line 429
    .line 430
    .line 431
    :goto_4
    iget-object v3, v2, Lo/a;->g:Ljava/lang/Object;

    .line 432
    .line 433
    check-cast v3, Lf0/g;

    .line 434
    .line 435
    sget-object v4, Lf0/t;->j:Lf0/g;

    .line 436
    .line 437
    if-eq v3, v4, :cond_b

    .line 438
    .line 439
    iget v2, v2, Lo/a;->f:I

    .line 440
    .line 441
    const/16 v4, 0x9

    .line 442
    .line 443
    invoke-static {v2, v4, v3}, Lf0/r;->a(IILf0/g;)Lcom/google/android/gms/internal/play_billing/j2;

    .line 444
    .line 445
    .line 446
    move-result-object v2

    .line 447
    invoke-virtual {v1, v2}, Lf0/b;->h(Lcom/google/android/gms/internal/play_billing/j2;)V

    .line 448
    .line 449
    .line 450
    new-instance v1, Landroidx/fragment/app/h;

    .line 451
    .line 452
    const/4 v2, 0x4

    .line 453
    const/4 v4, 0x0

    .line 454
    invoke-direct {v1, v2, v3, v4}, Landroidx/fragment/app/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 455
    .line 456
    .line 457
    goto/16 :goto_6

    .line 458
    .line 459
    :cond_b
    invoke-virtual {v12, v15}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 460
    .line 461
    .line 462
    move-result-object v2

    .line 463
    invoke-virtual {v12, v14}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 464
    .line 465
    .line 466
    move-result-object v3

    .line 467
    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 468
    .line 469
    .line 470
    move-result-object v4

    .line 471
    const/4 v6, 0x0

    .line 472
    const/4 v11, 0x0

    .line 473
    :goto_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 474
    .line 475
    .line 476
    move-result v13

    .line 477
    if-ge v6, v13, :cond_d

    .line 478
    .line 479
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    move-result-object v13

    .line 483
    check-cast v13, Ljava/lang/String;

    .line 484
    .line 485
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    move-result-object v14

    .line 489
    check-cast v14, Ljava/lang/String;

    .line 490
    .line 491
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 492
    .line 493
    .line 494
    move-result-object v15

    .line 495
    check-cast v15, Ljava/lang/String;

    .line 496
    .line 497
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v15

    .line 501
    const-string v7, "Sku is owned: "

    .line 502
    .line 503
    invoke-virtual {v7, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v7

    .line 507
    invoke-static {v5, v7}, Lcom/google/android/gms/internal/play_billing/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    .line 509
    .line 510
    :try_start_1
    new-instance v7, Lcom/android/billingclient/api/Purchase;

    .line 511
    .line 512
    invoke-direct {v7, v13, v14}, Lcom/android/billingclient/api/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 513
    .line 514
    .line 515
    iget-object v13, v7, Lcom/android/billingclient/api/Purchase;->c:Lorg/json/JSONObject;

    .line 516
    .line 517
    const-string v14, "purchaseToken"

    .line 518
    .line 519
    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v14

    .line 523
    const-string v15, "token"

    .line 524
    .line 525
    invoke-virtual {v13, v15, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v13

    .line 529
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 530
    .line 531
    .line 532
    move-result v13

    .line 533
    if-eqz v13, :cond_c

    .line 534
    .line 535
    const/4 v11, 0x1

    .line 536
    :cond_c
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    .line 538
    .line 539
    add-int/lit8 v6, v6, 0x1

    .line 540
    .line 541
    const/4 v7, 0x1

    .line 542
    goto :goto_5

    .line 543
    :catch_0
    sget v2, Lcom/google/android/gms/internal/play_billing/s;->a:I

    .line 544
    .line 545
    sget-object v2, Lf0/t;->i:Lf0/g;

    .line 546
    .line 547
    const/16 v3, 0x33

    .line 548
    .line 549
    const/16 v4, 0x9

    .line 550
    .line 551
    invoke-static {v3, v4, v2}, Lf0/r;->a(IILf0/g;)Lcom/google/android/gms/internal/play_billing/j2;

    .line 552
    .line 553
    .line 554
    move-result-object v3

    .line 555
    invoke-virtual {v1, v3}, Lf0/b;->h(Lcom/google/android/gms/internal/play_billing/j2;)V

    .line 556
    .line 557
    .line 558
    new-instance v1, Landroidx/fragment/app/h;

    .line 559
    .line 560
    const/4 v3, 0x4

    .line 561
    const/4 v4, 0x0

    .line 562
    invoke-direct {v1, v3, v2, v4}, Landroidx/fragment/app/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 563
    .line 564
    .line 565
    goto :goto_6

    .line 566
    :cond_d
    const/16 v4, 0x9

    .line 567
    .line 568
    if-eqz v11, :cond_e

    .line 569
    .line 570
    const/16 v2, 0x1a

    .line 571
    .line 572
    sget-object v3, Lf0/t;->i:Lf0/g;

    .line 573
    .line 574
    invoke-static {v2, v4, v3}, Lf0/r;->a(IILf0/g;)Lcom/google/android/gms/internal/play_billing/j2;

    .line 575
    .line 576
    .line 577
    move-result-object v2

    .line 578
    invoke-virtual {v1, v2}, Lf0/b;->h(Lcom/google/android/gms/internal/play_billing/j2;)V

    .line 579
    .line 580
    .line 581
    :cond_e
    const-string v2, "INAPP_CONTINUATION_TOKEN"

    .line 582
    .line 583
    invoke-virtual {v12, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 584
    .line 585
    .line 586
    move-result-object v4

    .line 587
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object v2

    .line 591
    const-string v3, "Continuation token: "

    .line 592
    .line 593
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 594
    .line 595
    .line 596
    move-result-object v2

    .line 597
    invoke-static {v5, v2}, Lcom/google/android/gms/internal/play_billing/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    .line 599
    .line 600
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 601
    .line 602
    .line 603
    move-result v2

    .line 604
    if-eqz v2, :cond_f

    .line 605
    .line 606
    new-instance v1, Landroidx/fragment/app/h;

    .line 607
    .line 608
    sget-object v2, Lf0/t;->j:Lf0/g;

    .line 609
    .line 610
    const/4 v3, 0x4

    .line 611
    invoke-direct {v1, v3, v2, v10}, Landroidx/fragment/app/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 612
    .line 613
    .line 614
    goto :goto_6

    .line 615
    :cond_f
    const/4 v2, 0x0

    .line 616
    const/4 v6, 0x3

    .line 617
    const/4 v7, 0x1

    .line 618
    goto/16 :goto_0

    .line 619
    .line 620
    :catch_1
    sget-object v2, Lf0/t;->k:Lf0/g;

    .line 621
    .line 622
    const/16 v3, 0x34

    .line 623
    .line 624
    const/16 v4, 0x9

    .line 625
    .line 626
    invoke-static {v3, v4, v2}, Lf0/r;->a(IILf0/g;)Lcom/google/android/gms/internal/play_billing/j2;

    .line 627
    .line 628
    .line 629
    move-result-object v3

    .line 630
    invoke-virtual {v1, v3}, Lf0/b;->h(Lcom/google/android/gms/internal/play_billing/j2;)V

    .line 631
    .line 632
    .line 633
    sget v1, Lcom/google/android/gms/internal/play_billing/s;->a:I

    .line 634
    .line 635
    new-instance v1, Landroidx/fragment/app/h;

    .line 636
    .line 637
    const/4 v3, 0x4

    .line 638
    const/4 v4, 0x0

    .line 639
    invoke-direct {v1, v3, v2, v4}, Landroidx/fragment/app/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 640
    .line 641
    .line 642
    :goto_6
    iget-object v2, v1, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 643
    .line 644
    check-cast v2, Ljava/util/List;

    .line 645
    .line 646
    if-eqz v2, :cond_10

    .line 647
    .line 648
    iget-object v3, v0, Lf0/o;->d:Ljava/lang/Object;

    .line 649
    .line 650
    check-cast v3, Lh0/b;

    .line 651
    .line 652
    iget-object v1, v1, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    .line 653
    .line 654
    check-cast v1, Lf0/g;

    .line 655
    .line 656
    invoke-virtual {v3, v1, v2}, Lh0/b;->f(Lf0/g;Ljava/util/List;)V

    .line 657
    .line 658
    .line 659
    goto :goto_7

    .line 660
    :cond_10
    iget-object v2, v0, Lf0/o;->d:Ljava/lang/Object;

    .line 661
    .line 662
    check-cast v2, Lh0/b;

    .line 663
    .line 664
    iget-object v1, v1, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    .line 665
    .line 666
    check-cast v1, Lf0/g;

    .line 667
    .line 668
    sget-object v3, Lcom/google/android/gms/internal/play_billing/f;->b:Lcom/google/android/gms/internal/play_billing/d;

    .line 669
    .line 670
    sget-object v3, Lcom/google/android/gms/internal/play_billing/j;->e:Lcom/google/android/gms/internal/play_billing/j;

    .line 671
    .line 672
    invoke-virtual {v2, v1, v3}, Lh0/b;->f(Lf0/g;Ljava/util/List;)V

    .line 673
    .line 674
    .line 675
    :goto_7
    const/4 v1, 0x0

    .line 676
    return-object v1

    .line 677
    :goto_8
    iget-object v1, v0, Lf0/o;->b:Lf0/b;

    .line 678
    .line 679
    iget-object v2, v0, Lf0/o;->c:Ljava/lang/Object;

    .line 680
    .line 681
    check-cast v2, Lf0/a;

    .line 682
    .line 683
    iget-object v3, v0, Lf0/o;->d:Ljava/lang/Object;

    .line 684
    .line 685
    check-cast v3, Lo0/j;

    .line 686
    .line 687
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 688
    .line 689
    .line 690
    :try_start_2
    iget-object v6, v1, Lf0/b;->g:Lcom/google/android/gms/internal/play_billing/k3;

    .line 691
    .line 692
    iget-object v7, v1, Lf0/b;->e:Landroid/content/Context;

    .line 693
    .line 694
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 695
    .line 696
    .line 697
    move-result-object v7

    .line 698
    iget-object v2, v2, Lf0/a;->a:Ljava/lang/String;

    .line 699
    .line 700
    iget-object v8, v1, Lf0/b;->b:Ljava/lang/String;

    .line 701
    .line 702
    new-instance v9, Landroid/os/Bundle;

    .line 703
    .line 704
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 705
    .line 706
    .line 707
    invoke-virtual {v9, v4, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    .line 709
    .line 710
    check-cast v6, Lcom/google/android/gms/internal/play_billing/i3;

    .line 711
    .line 712
    invoke-virtual {v6}, Lcom/google/android/gms/internal/play_billing/i3;->b()Landroid/os/Parcel;

    .line 713
    .line 714
    .line 715
    move-result-object v4

    .line 716
    const/16 v8, 0x9

    .line 717
    .line 718
    invoke-virtual {v4, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 719
    .line 720
    .line 721
    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 722
    .line 723
    .line 724
    invoke-virtual {v4, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 725
    .line 726
    .line 727
    sget v2, Lcom/google/android/gms/internal/play_billing/l3;->a:I

    .line 728
    .line 729
    const/4 v2, 0x1

    .line 730
    invoke-virtual {v4, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 731
    .line 732
    .line 733
    const/4 v2, 0x0

    .line 734
    invoke-virtual {v9, v4, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 735
    .line 736
    .line 737
    const/16 v2, 0x386

    .line 738
    .line 739
    invoke-virtual {v6, v4, v2}, Lcom/google/android/gms/internal/play_billing/i3;->c(Landroid/os/Parcel;I)Landroid/os/Parcel;

    .line 740
    .line 741
    .line 742
    move-result-object v2

    .line 743
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 744
    .line 745
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/play_billing/l3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 746
    .line 747
    .line 748
    move-result-object v4

    .line 749
    check-cast v4, Landroid/os/Bundle;

    .line 750
    .line 751
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 752
    .line 753
    .line 754
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/play_billing/s;->a(Landroid/os/Bundle;Ljava/lang/String;)I

    .line 755
    .line 756
    .line 757
    move-result v1

    .line 758
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/play_billing/s;->c(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 759
    .line 760
    .line 761
    move-result-object v2

    .line 762
    invoke-static {v1, v2}, Lf0/t;->a(ILjava/lang/String;)Lf0/g;

    .line 763
    .line 764
    .line 765
    move-result-object v1

    .line 766
    goto :goto_9

    .line 767
    :catch_2
    sget v2, Lcom/google/android/gms/internal/play_billing/s;->a:I

    .line 768
    .line 769
    sget-object v2, Lf0/t;->k:Lf0/g;

    .line 770
    .line 771
    const/16 v4, 0x1c

    .line 772
    .line 773
    const/4 v5, 0x3

    .line 774
    invoke-static {v4, v5, v2}, Lf0/r;->a(IILf0/g;)Lcom/google/android/gms/internal/play_billing/j2;

    .line 775
    .line 776
    .line 777
    move-result-object v4

    .line 778
    invoke-virtual {v1, v4}, Lf0/b;->h(Lcom/google/android/gms/internal/play_billing/j2;)V

    .line 779
    .line 780
    .line 781
    move-object v1, v2

    .line 782
    :goto_9
    invoke-virtual {v3, v1}, Lo0/j;->a(Lf0/g;)V

    .line 783
    .line 784
    .line 785
    const/4 v1, 0x0

    .line 786
    return-object v1

    .line 787
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
