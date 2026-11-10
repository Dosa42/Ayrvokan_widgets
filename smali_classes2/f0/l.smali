.class public final synthetic Lf0/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lf0/b;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lf0/j;


# direct methods
.method public synthetic constructor <init>(Lf0/b;Ljava/lang/String;Ljava/util/List;Lcom/nomone/giap/GIAP;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf0/l;->a:Lf0/b;

    iput-object p2, p0, Lf0/l;->b:Ljava/lang/String;

    iput-object p3, p0, Lf0/l;->c:Ljava/util/List;

    iput-object p4, p0, Lf0/l;->d:Lf0/j;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lf0/l;->a:Lf0/b;

    .line 4
    .line 5
    iget-object v2, v0, Lf0/l;->b:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, v0, Lf0/l;->c:Ljava/util/List;

    .line 8
    .line 9
    iget-object v4, v0, Lf0/l;->d:Lf0/j;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance v5, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    const/4 v8, 0x0

    .line 24
    :goto_0
    if-ge v8, v6, :cond_b

    .line 25
    .line 26
    add-int/lit8 v10, v8, 0x14

    .line 27
    .line 28
    if-le v10, v6, :cond_0

    .line 29
    .line 30
    move v11, v6

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    move v11, v10

    .line 33
    :goto_1
    new-instance v12, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-interface {v3, v8, v11}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    invoke-direct {v12, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 40
    .line 41
    .line 42
    new-instance v8, Landroid/os/Bundle;

    .line 43
    .line 44
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v11, "ITEM_ID_LIST"

    .line 48
    .line 49
    invoke-virtual {v8, v11, v12}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 50
    .line 51
    .line 52
    iget-object v11, v1, Lf0/b;->b:Ljava/lang/String;

    .line 53
    .line 54
    const-string v12, "playBillingLibraryVersion"

    .line 55
    .line 56
    invoke-virtual {v8, v12, v11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :try_start_0
    iget-boolean v13, v1, Lf0/b;->m:Z

    .line 60
    .line 61
    if-eqz v13, :cond_5

    .line 62
    .line 63
    iget-object v13, v1, Lf0/b;->g:Lcom/google/android/gms/internal/play_billing/k3;

    .line 64
    .line 65
    iget-object v15, v1, Lf0/b;->e:Landroid/content/Context;

    .line 66
    .line 67
    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v15

    .line 71
    iget v9, v1, Lf0/b;->j:I

    .line 72
    .line 73
    iget-object v11, v1, Lf0/b;->t:Lf0/h;

    .line 74
    .line 75
    iget-boolean v7, v11, Lf0/h;->b:Z

    .line 76
    .line 77
    iget-boolean v14, v1, Lf0/b;->r:Z

    .line 78
    .line 79
    if-eqz v14, :cond_1

    .line 80
    .line 81
    iget-boolean v11, v11, Lf0/h;->c:Z

    .line 82
    .line 83
    if-eqz v11, :cond_1

    .line 84
    .line 85
    const/4 v11, 0x1

    .line 86
    goto :goto_2

    .line 87
    :cond_1
    const/4 v11, 0x0

    .line 88
    :goto_2
    iget-object v14, v1, Lf0/b;->b:Ljava/lang/String;

    .line 89
    .line 90
    new-instance v0, Landroid/os/Bundle;

    .line 91
    .line 92
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 93
    .line 94
    .line 95
    move-object/from16 v16, v3

    .line 96
    .line 97
    const/16 v3, 0x9

    .line 98
    .line 99
    if-lt v9, v3, :cond_2

    .line 100
    .line 101
    invoke-virtual {v0, v12, v14}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :cond_2
    if-lt v9, v3, :cond_3

    .line 105
    .line 106
    if-eqz v7, :cond_3

    .line 107
    .line 108
    const-string v3, "enablePendingPurchases"

    .line 109
    .line 110
    const/4 v7, 0x1

    .line 111
    invoke-virtual {v0, v3, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 112
    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_3
    const/4 v7, 0x1

    .line 116
    :goto_3
    if-eqz v11, :cond_4

    .line 117
    .line 118
    const-string v3, "enablePendingPurchaseForSubscriptions"

    .line 119
    .line 120
    invoke-virtual {v0, v3, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 121
    .line 122
    .line 123
    :cond_4
    check-cast v13, Lcom/google/android/gms/internal/play_billing/i3;

    .line 124
    .line 125
    invoke-virtual {v13}, Lcom/google/android/gms/internal/play_billing/i3;->b()Landroid/os/Parcel;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    const/16 v7, 0xa

    .line 130
    .line 131
    invoke-virtual {v3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v3, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    sget v7, Lcom/google/android/gms/internal/play_billing/l3;->a:I

    .line 141
    .line 142
    const/4 v7, 0x1

    .line 143
    invoke-virtual {v3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    .line 145
    .line 146
    const/4 v9, 0x0

    .line 147
    invoke-virtual {v8, v3, v9}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v3, v9}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 154
    .line 155
    .line 156
    const/16 v0, 0x385

    .line 157
    .line 158
    invoke-virtual {v13, v3, v0}, Lcom/google/android/gms/internal/play_billing/i3;->c(Landroid/os/Parcel;I)Landroid/os/Parcel;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 163
    .line 164
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/l3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    check-cast v3, Landroid/os/Bundle;

    .line 169
    .line 170
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 171
    .line 172
    .line 173
    const/4 v9, 0x0

    .line 174
    goto :goto_4

    .line 175
    :cond_5
    move-object/from16 v16, v3

    .line 176
    .line 177
    iget-object v0, v1, Lf0/b;->g:Lcom/google/android/gms/internal/play_billing/k3;

    .line 178
    .line 179
    iget-object v3, v1, Lf0/b;->e:Landroid/content/Context;

    .line 180
    .line 181
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    check-cast v0, Lcom/google/android/gms/internal/play_billing/i3;

    .line 186
    .line 187
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/i3;->b()Landroid/os/Parcel;

    .line 188
    .line 189
    .line 190
    move-result-object v7

    .line 191
    const/4 v9, 0x3

    .line 192
    invoke-virtual {v7, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v7, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    sget v3, Lcom/google/android/gms/internal/play_billing/l3;->a:I

    .line 202
    .line 203
    const/4 v3, 0x1

    .line 204
    invoke-virtual {v7, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    .line 206
    .line 207
    const/4 v9, 0x0

    .line 208
    invoke-virtual {v8, v7, v9}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 209
    .line 210
    .line 211
    const/4 v3, 0x2

    .line 212
    invoke-virtual {v0, v7, v3}, Lcom/google/android/gms/internal/play_billing/i3;->c(Landroid/os/Parcel;I)Landroid/os/Parcel;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 217
    .line 218
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/l3;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    check-cast v3, Landroid/os/Bundle;

    .line 223
    .line 224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 225
    .line 226
    .line 227
    :goto_4
    if-nez v3, :cond_6

    .line 228
    .line 229
    sget v0, Lcom/google/android/gms/internal/play_billing/s;->a:I

    .line 230
    .line 231
    const/16 v0, 0x2c

    .line 232
    .line 233
    sget-object v2, Lf0/t;->q:Lf0/g;

    .line 234
    .line 235
    const/16 v3, 0x8

    .line 236
    .line 237
    invoke-static {v0, v3, v2}, Lf0/r;->a(IILf0/g;)Lcom/google/android/gms/internal/play_billing/j2;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    goto :goto_5

    .line 242
    :cond_6
    const-string v0, "DETAILS_LIST"

    .line 243
    .line 244
    invoke-virtual {v3, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 245
    .line 246
    .line 247
    move-result v7

    .line 248
    const-string v8, "BillingClient"

    .line 249
    .line 250
    const/4 v11, 0x6

    .line 251
    if-nez v7, :cond_8

    .line 252
    .line 253
    invoke-static {v3, v8}, Lcom/google/android/gms/internal/play_billing/s;->a(Landroid/os/Bundle;Ljava/lang/String;)I

    .line 254
    .line 255
    .line 256
    move-result v7

    .line 257
    invoke-static {v3, v8}, Lcom/google/android/gms/internal/play_billing/s;->c(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    if-eqz v7, :cond_7

    .line 262
    .line 263
    invoke-static {v7, v0}, Lf0/t;->a(ILjava/lang/String;)Lf0/g;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    const/16 v3, 0x17

    .line 268
    .line 269
    const/16 v12, 0x8

    .line 270
    .line 271
    invoke-static {v3, v12, v2}, Lf0/r;->a(IILf0/g;)Lcom/google/android/gms/internal/play_billing/j2;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    invoke-virtual {v1, v2}, Lf0/b;->h(Lcom/google/android/gms/internal/play_billing/j2;)V

    .line 276
    .line 277
    .line 278
    goto/16 :goto_8

    .line 279
    .line 280
    :cond_7
    const/16 v12, 0x8

    .line 281
    .line 282
    invoke-static {v11, v0}, Lf0/t;->a(ILjava/lang/String;)Lf0/g;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    const/16 v3, 0x2d

    .line 287
    .line 288
    invoke-static {v3, v12, v2}, Lf0/r;->a(IILf0/g;)Lcom/google/android/gms/internal/play_billing/j2;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    invoke-virtual {v1, v2}, Lf0/b;->h(Lcom/google/android/gms/internal/play_billing/j2;)V

    .line 293
    .line 294
    .line 295
    move v7, v11

    .line 296
    goto/16 :goto_8

    .line 297
    .line 298
    :cond_8
    const/16 v12, 0x8

    .line 299
    .line 300
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    if-nez v0, :cond_9

    .line 305
    .line 306
    sget v0, Lcom/google/android/gms/internal/play_billing/s;->a:I

    .line 307
    .line 308
    const/16 v0, 0x2e

    .line 309
    .line 310
    sget-object v2, Lf0/t;->q:Lf0/g;

    .line 311
    .line 312
    invoke-static {v0, v12, v2}, Lf0/r;->a(IILf0/g;)Lcom/google/android/gms/internal/play_billing/j2;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    :goto_5
    invoke-virtual {v1, v0}, Lf0/b;->h(Lcom/google/android/gms/internal/play_billing/j2;)V

    .line 317
    .line 318
    .line 319
    const/4 v0, 0x4

    .line 320
    const-string v1, "Item is unavailable for purchase."

    .line 321
    .line 322
    move v7, v0

    .line 323
    move-object v0, v1

    .line 324
    goto :goto_7

    .line 325
    :cond_9
    move v3, v9

    .line 326
    :goto_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 327
    .line 328
    .line 329
    move-result v7

    .line 330
    if-ge v3, v7, :cond_a

    .line 331
    .line 332
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object v7

    .line 336
    check-cast v7, Ljava/lang/String;

    .line 337
    .line 338
    :try_start_1
    new-instance v12, Lcom/android/billingclient/api/SkuDetails;

    .line 339
    .line 340
    invoke-direct {v12, v7}, Lcom/android/billingclient/api/SkuDetails;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 341
    .line 342
    .line 343
    invoke-virtual {v12}, Lcom/android/billingclient/api/SkuDetails;->toString()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v7

    .line 347
    const-string v13, "Got sku details: "

    .line 348
    .line 349
    invoke-virtual {v13, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v7

    .line 353
    invoke-static {v8, v7}, Lcom/google/android/gms/internal/play_billing/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    add-int/lit8 v3, v3, 0x1

    .line 360
    .line 361
    goto :goto_6

    .line 362
    :catch_0
    sget v0, Lcom/google/android/gms/internal/play_billing/s;->a:I

    .line 363
    .line 364
    const-string v0, "Error trying to decode SkuDetails."

    .line 365
    .line 366
    invoke-static {v11, v0}, Lf0/t;->a(ILjava/lang/String;)Lf0/g;

    .line 367
    .line 368
    .line 369
    move-result-object v2

    .line 370
    const/16 v3, 0x2f

    .line 371
    .line 372
    const/16 v5, 0x8

    .line 373
    .line 374
    invoke-static {v3, v5, v2}, Lf0/r;->a(IILf0/g;)Lcom/google/android/gms/internal/play_billing/j2;

    .line 375
    .line 376
    .line 377
    move-result-object v2

    .line 378
    invoke-virtual {v1, v2}, Lf0/b;->h(Lcom/google/android/gms/internal/play_billing/j2;)V

    .line 379
    .line 380
    .line 381
    move v7, v11

    .line 382
    goto :goto_7

    .line 383
    :cond_a
    move-object/from16 v0, p0

    .line 384
    .line 385
    move v8, v10

    .line 386
    move-object/from16 v3, v16

    .line 387
    .line 388
    goto/16 :goto_0

    .line 389
    .line 390
    :catch_1
    sget v0, Lcom/google/android/gms/internal/play_billing/s;->a:I

    .line 391
    .line 392
    const/16 v0, 0x2b

    .line 393
    .line 394
    sget-object v2, Lf0/t;->k:Lf0/g;

    .line 395
    .line 396
    const/16 v3, 0x8

    .line 397
    .line 398
    invoke-static {v0, v3, v2}, Lf0/r;->a(IILf0/g;)Lcom/google/android/gms/internal/play_billing/j2;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    invoke-virtual {v1, v0}, Lf0/b;->h(Lcom/google/android/gms/internal/play_billing/j2;)V

    .line 403
    .line 404
    .line 405
    const-string v0, "Service connection is disconnected."

    .line 406
    .line 407
    const/4 v1, -0x1

    .line 408
    move v7, v1

    .line 409
    :goto_7
    const/4 v5, 0x0

    .line 410
    goto :goto_8

    .line 411
    :cond_b
    const/4 v9, 0x0

    .line 412
    const-string v0, ""

    .line 413
    .line 414
    move v7, v9

    .line 415
    :goto_8
    invoke-static {v7, v0}, Lf0/t;->a(ILjava/lang/String;)Lf0/g;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    check-cast v4, Lcom/nomone/giap/GIAP;

    .line 420
    .line 421
    invoke-virtual {v4, v0, v5}, Lcom/nomone/giap/GIAP;->d(Lf0/g;Ljava/util/ArrayList;)V

    .line 422
    .line 423
    .line 424
    const/4 v0, 0x0

    .line 425
    return-object v0
.end method
