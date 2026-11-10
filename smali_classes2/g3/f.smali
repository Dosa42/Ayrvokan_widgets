.class public final Lg3/f;
.super Lg3/a;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lg3/f;->a:I

    .line 1
    invoke-direct {p0}, Lg3/a;-><init>()V

    return-void
.end method

.method public constructor <init>(Lg3/g;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lg3/f;->a:I

    .line 2
    iput-object p1, p0, Lg3/f;->b:Ljava/lang/Object;

    invoke-direct {p0}, Lg3/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lm3/d;)Ljava/lang/Object;
    .locals 14

    .line 1
    iget v0, p0, Lg3/f;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    goto/16 :goto_4

    .line 8
    .line 9
    :pswitch_0
    check-cast p1, Lm3/g;

    .line 10
    .line 11
    iget-object v0, p1, Lm3/d;->d:Ljava/lang/Class;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    :try_start_0
    iget-object v3, p0, Lg3/f;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v3, Lg3/g;

    .line 17
    .line 18
    invoke-virtual {v3, v0, p1, v2}, Lg3/c;->g(Ljava/lang/Class;Lm3/d;Z)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto/16 :goto_3

    .line 23
    .line 24
    :catch_0
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-nez v3, :cond_5

    .line 29
    .line 30
    const-class v3, Ljava/lang/String;

    .line 31
    .line 32
    if-eq v0, v3, :cond_5

    .line 33
    .line 34
    const-class v4, Ljava/lang/Number;

    .line 35
    .line 36
    invoke-virtual {v4, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-nez v4, :cond_5

    .line 41
    .line 42
    const-class v4, Ljava/lang/Boolean;

    .line 43
    .line 44
    if-eq v0, v4, :cond_5

    .line 45
    .line 46
    const-class v4, Ljava/util/Date;

    .line 47
    .line 48
    invoke-virtual {v4, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-nez v4, :cond_5

    .line 53
    .line 54
    const-class v4, Ljava/lang/Character;

    .line 55
    .line 56
    if-eq v0, v4, :cond_5

    .line 57
    .line 58
    const-class v4, Ljava/math/BigInteger;

    .line 59
    .line 60
    if-eq v0, v4, :cond_5

    .line 61
    .line 62
    const-class v4, Ljava/math/BigDecimal;

    .line 63
    .line 64
    if-eq v0, v4, :cond_5

    .line 65
    .line 66
    const-class v4, Ljava/lang/Enum;

    .line 67
    .line 68
    invoke-virtual {v4, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-nez v4, :cond_5

    .line 73
    .line 74
    sget-object v4, Lm3/i;->h:Lm3/i;

    .line 75
    .line 76
    iget-object v5, p1, Lm3/d;->a:Lm3/i;

    .line 77
    .line 78
    invoke-virtual {v4, v5}, Lm3/i;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-nez v4, :cond_5

    .line 83
    .line 84
    const-class v4, Ljava/util/Calendar;

    .line 85
    .line 86
    invoke-virtual {v4, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-nez v4, :cond_5

    .line 91
    .line 92
    const-class v4, Ljava/util/UUID;

    .line 93
    .line 94
    if-ne v0, v4, :cond_0

    .line 95
    .line 96
    goto/16 :goto_2

    .line 97
    .line 98
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    array-length v5, v4

    .line 103
    const/4 v6, 0x0

    .line 104
    move v7, v2

    .line 105
    move v8, v7

    .line 106
    :goto_0
    if-ge v7, v5, :cond_2

    .line 107
    .line 108
    aget-object v9, v4, v7

    .line 109
    .line 110
    invoke-virtual {v9}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    move-result-object v10

    .line 114
    array-length v10, v10

    .line 115
    if-ne v10, v1, :cond_1

    .line 116
    .line 117
    add-int/lit8 v8, v8, 0x1

    .line 118
    .line 119
    move-object v6, v9

    .line 120
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_2
    if-nez v6, :cond_3

    .line 124
    .line 125
    :try_start_1
    iget-object v1, p0, Lg3/f;->b:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast v1, Lg3/g;

    .line 128
    .line 129
    invoke-virtual {v1, v0, p1, v2}, Lg3/c;->g(Ljava/lang/Class;Lm3/d;Z)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 133
    goto/16 :goto_3

    .line 134
    .line 135
    :catch_1
    move-exception p1

    .line 136
    new-instance v1, Lh3/c;

    .line 137
    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    const-string v3, "No single argument constructor found for "

    .line 141
    .line 142
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v0, " : "

    .line 149
    .line 150
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-direct {v1, p1}, Lh3/c;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw v1

    .line 168
    :cond_3
    const-string v4, "Can\'t construct a java object for scalar "

    .line 169
    .line 170
    if-ne v8, v1, :cond_4

    .line 171
    .line 172
    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    aget-object v0, v0, v2

    .line 177
    .line 178
    invoke-virtual {p0, v0, p1}, Lg3/f;->c(Ljava/lang/Class;Lm3/g;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    goto :goto_1

    .line 183
    :cond_4
    iget-object v5, p0, Lg3/f;->b:Ljava/lang/Object;

    .line 184
    .line 185
    check-cast v5, Lg3/g;

    .line 186
    .line 187
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    .line 189
    .line 190
    :try_start_2
    new-array v5, v1, [Ljava/lang/Class;

    .line 191
    .line 192
    aput-object v3, v5, v2

    .line 193
    .line 194
    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 195
    .line 196
    .line 197
    move-result-object v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 198
    iget-object v0, p1, Lm3/g;->h:Ljava/lang/String;

    .line 199
    .line 200
    :goto_1
    :try_start_3
    invoke-virtual {v6, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 201
    .line 202
    .line 203
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-virtual {v6, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 211
    goto :goto_3

    .line 212
    :catch_2
    move-exception v0

    .line 213
    move-object v10, v0

    .line 214
    new-instance v0, Lg3/h;

    .line 215
    .line 216
    const/4 v6, 0x0

    .line 217
    const/4 v7, 0x0

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    iget-object v2, p1, Lm3/d;->a:Lm3/i;

    .line 224
    .line 225
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    const-string v2, "; exception="

    .line 229
    .line 230
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v8

    .line 244
    iget-object v9, p1, Lm3/d;->b:Lh3/a;

    .line 245
    .line 246
    move-object v5, v0

    .line 247
    invoke-direct/range {v5 .. v10}, Lg3/h;-><init>(Ljava/lang/String;Lh3/a;Ljava/lang/String;Lh3/a;Ljava/lang/Exception;)V

    .line 248
    .line 249
    .line 250
    throw v0

    .line 251
    :catch_3
    move-exception v0

    .line 252
    new-instance v1, Lh3/c;

    .line 253
    .line 254
    new-instance v2, Ljava/lang/StringBuilder;

    .line 255
    .line 256
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    iget-object p1, p1, Lm3/d;->a:Lm3/i;

    .line 260
    .line 261
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    const-string p1, "; No String constructor found. Exception="

    .line 265
    .line 266
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    invoke-direct {v1, p1, v0}, Lh3/c;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 281
    .line 282
    .line 283
    throw v1

    .line 284
    :cond_5
    :goto_2
    invoke-virtual {p0, v0, p1}, Lg3/f;->c(Ljava/lang/Class;Lm3/g;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    :goto_3
    return-object p1

    .line 289
    :goto_4
    check-cast p1, Lm3/g;

    .line 290
    .line 291
    iget-object p1, p1, Lm3/g;->h:Ljava/lang/String;

    .line 292
    .line 293
    sget-object v0, Lg3/m;->t:Ljava/util/regex/Pattern;

    .line 294
    .line 295
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 300
    .line 301
    .line 302
    move-result v2

    .line 303
    const-string v3, "UTC"

    .line 304
    .line 305
    const/4 v4, 0x3

    .line 306
    const/4 v5, 0x5

    .line 307
    const/4 v6, 0x2

    .line 308
    if-eqz v2, :cond_6

    .line 309
    .line 310
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object p1

    .line 314
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 323
    .line 324
    .line 325
    move-result-object v3

    .line 326
    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    .line 327
    .line 328
    .line 329
    move-result-object v3

    .line 330
    iput-object v3, p0, Lg3/f;->b:Ljava/lang/Object;

    .line 331
    .line 332
    invoke-virtual {v3}, Ljava/util/Calendar;->clear()V

    .line 333
    .line 334
    .line 335
    iget-object v3, p0, Lg3/f;->b:Ljava/lang/Object;

    .line 336
    .line 337
    check-cast v3, Ljava/util/Calendar;

    .line 338
    .line 339
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 340
    .line 341
    .line 342
    move-result p1

    .line 343
    invoke-virtual {v3, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 344
    .line 345
    .line 346
    iget-object p1, p0, Lg3/f;->b:Ljava/lang/Object;

    .line 347
    .line 348
    check-cast p1, Ljava/util/Calendar;

    .line 349
    .line 350
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 351
    .line 352
    .line 353
    move-result v2

    .line 354
    sub-int/2addr v2, v1

    .line 355
    invoke-virtual {p1, v6, v2}, Ljava/util/Calendar;->set(II)V

    .line 356
    .line 357
    .line 358
    iget-object p1, p0, Lg3/f;->b:Ljava/lang/Object;

    .line 359
    .line 360
    check-cast p1, Ljava/util/Calendar;

    .line 361
    .line 362
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 363
    .line 364
    .line 365
    move-result v0

    .line 366
    invoke-virtual {p1, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 367
    .line 368
    .line 369
    goto/16 :goto_7

    .line 370
    .line 371
    :cond_6
    sget-object v0, Lg3/m;->s:Ljava/util/regex/Pattern;

    .line 372
    .line 373
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 378
    .line 379
    .line 380
    move-result v2

    .line 381
    if-eqz v2, :cond_a

    .line 382
    .line 383
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object p1

    .line 387
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v2

    .line 391
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v4

    .line 395
    const/4 v7, 0x4

    .line 396
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v7

    .line 400
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v8

    .line 404
    const/4 v9, 0x6

    .line 405
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v9

    .line 409
    const/4 v10, 0x7

    .line 410
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v10

    .line 414
    if-eqz v10, :cond_7

    .line 415
    .line 416
    new-instance v11, Ljava/lang/StringBuilder;

    .line 417
    .line 418
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    const-string v9, "."

    .line 425
    .line 426
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v9

    .line 436
    :cond_7
    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 437
    .line 438
    .line 439
    move-result-wide v9

    .line 440
    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    .line 441
    .line 442
    .line 443
    move-result-wide v11

    .line 444
    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    .line 445
    .line 446
    .line 447
    move-result-wide v11

    .line 448
    long-to-int v11, v11

    .line 449
    int-to-double v12, v11

    .line 450
    sub-double/2addr v9, v12

    .line 451
    const-wide v12, 0x408f400000000000L    # 1000.0

    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    mul-double/2addr v9, v12

    .line 457
    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    .line 458
    .line 459
    .line 460
    move-result-wide v9

    .line 461
    long-to-int v9, v9

    .line 462
    const/16 v10, 0x8

    .line 463
    .line 464
    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v10

    .line 468
    const/16 v12, 0x9

    .line 469
    .line 470
    invoke-virtual {v0, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v0

    .line 474
    if-eqz v10, :cond_9

    .line 475
    .line 476
    if-eqz v0, :cond_8

    .line 477
    .line 478
    const-string v3, ":"

    .line 479
    .line 480
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v0

    .line 484
    goto :goto_5

    .line 485
    :cond_8
    const-string v0, "00"

    .line 486
    .line 487
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    .line 488
    .line 489
    const-string v12, "GMT"

    .line 490
    .line 491
    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    .line 496
    .line 497
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    .line 499
    .line 500
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v0

    .line 504
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 505
    .line 506
    .line 507
    move-result-object v0

    .line 508
    goto :goto_6

    .line 509
    :cond_9
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 510
    .line 511
    .line 512
    move-result-object v0

    .line 513
    :goto_6
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    .line 514
    .line 515
    .line 516
    move-result-object v0

    .line 517
    iput-object v0, p0, Lg3/f;->b:Ljava/lang/Object;

    .line 518
    .line 519
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 520
    .line 521
    .line 522
    move-result p1

    .line 523
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 524
    .line 525
    .line 526
    iget-object p1, p0, Lg3/f;->b:Ljava/lang/Object;

    .line 527
    .line 528
    check-cast p1, Ljava/util/Calendar;

    .line 529
    .line 530
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 531
    .line 532
    .line 533
    move-result v0

    .line 534
    sub-int/2addr v0, v1

    .line 535
    invoke-virtual {p1, v6, v0}, Ljava/util/Calendar;->set(II)V

    .line 536
    .line 537
    .line 538
    iget-object p1, p0, Lg3/f;->b:Ljava/lang/Object;

    .line 539
    .line 540
    check-cast p1, Ljava/util/Calendar;

    .line 541
    .line 542
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 543
    .line 544
    .line 545
    move-result v0

    .line 546
    invoke-virtual {p1, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 547
    .line 548
    .line 549
    iget-object p1, p0, Lg3/f;->b:Ljava/lang/Object;

    .line 550
    .line 551
    check-cast p1, Ljava/util/Calendar;

    .line 552
    .line 553
    const/16 v0, 0xb

    .line 554
    .line 555
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 556
    .line 557
    .line 558
    move-result v1

    .line 559
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 560
    .line 561
    .line 562
    iget-object p1, p0, Lg3/f;->b:Ljava/lang/Object;

    .line 563
    .line 564
    check-cast p1, Ljava/util/Calendar;

    .line 565
    .line 566
    const/16 v0, 0xc

    .line 567
    .line 568
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 569
    .line 570
    .line 571
    move-result v1

    .line 572
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 573
    .line 574
    .line 575
    iget-object p1, p0, Lg3/f;->b:Ljava/lang/Object;

    .line 576
    .line 577
    check-cast p1, Ljava/util/Calendar;

    .line 578
    .line 579
    const/16 v0, 0xd

    .line 580
    .line 581
    invoke-virtual {p1, v0, v11}, Ljava/util/Calendar;->set(II)V

    .line 582
    .line 583
    .line 584
    iget-object p1, p0, Lg3/f;->b:Ljava/lang/Object;

    .line 585
    .line 586
    check-cast p1, Ljava/util/Calendar;

    .line 587
    .line 588
    const/16 v0, 0xe

    .line 589
    .line 590
    invoke-virtual {p1, v0, v9}, Ljava/util/Calendar;->set(II)V

    .line 591
    .line 592
    .line 593
    :goto_7
    iget-object p1, p0, Lg3/f;->b:Ljava/lang/Object;

    .line 594
    .line 595
    check-cast p1, Ljava/util/Calendar;

    .line 596
    .line 597
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 598
    .line 599
    .line 600
    move-result-object p1

    .line 601
    return-object p1

    .line 602
    :cond_a
    new-instance v0, Lh3/c;

    .line 603
    .line 604
    const-string v1, "Unexpected timestamp: "

    .line 605
    .line 606
    invoke-static {v1, p1}, La1/b;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 607
    .line 608
    .line 609
    move-result-object p1

    .line 610
    invoke-direct {v0, p1}, Lh3/c;-><init>(Ljava/lang/String;)V

    .line 611
    .line 612
    .line 613
    throw v0

    .line 614
    nop

    .line 615
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/Class;Lm3/g;)Ljava/lang/Object;
    .locals 6

    .line 1
    const-class v0, Ljava/lang/String;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lg3/f;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p1, Lg3/g;

    .line 8
    .line 9
    iget-object p1, p1, Lg3/c;->b:Ljava/util/HashMap;

    .line 10
    .line 11
    sget-object v0, Lm3/i;->n:Lm3/i;

    .line 12
    .line 13
    goto/16 :goto_a

    .line 14
    .line 15
    :cond_0
    const-class v0, Ljava/lang/Boolean;

    .line 16
    .line 17
    if-eq p1, v0, :cond_1c

    .line 18
    .line 19
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 20
    .line 21
    if-ne p1, v0, :cond_1

    .line 22
    .line 23
    goto/16 :goto_9

    .line 24
    .line 25
    :cond_1
    const-class v0, Ljava/lang/Character;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    const/4 v2, 0x1

    .line 29
    if-eq p1, v0, :cond_19

    .line 30
    .line 31
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 32
    .line 33
    if-ne p1, v0, :cond_2

    .line 34
    .line 35
    goto/16 :goto_8

    .line 36
    .line 37
    :cond_2
    const-class v0, Ljava/util/Date;

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_4

    .line 44
    .line 45
    iget-object v3, p0, Lg3/f;->b:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v3, Lg3/g;

    .line 48
    .line 49
    iget-object v3, v3, Lg3/c;->b:Ljava/util/HashMap;

    .line 50
    .line 51
    sget-object v4, Lm3/i;->k:Lm3/i;

    .line 52
    .line 53
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    check-cast v3, Lg3/d;

    .line 58
    .line 59
    invoke-interface {v3, p2}, Lg3/d;->b(Lm3/d;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    check-cast p2, Ljava/util/Date;

    .line 64
    .line 65
    if-ne p1, v0, :cond_3

    .line 66
    .line 67
    goto/16 :goto_6

    .line 68
    .line 69
    :cond_3
    :try_start_0
    new-array v0, v2, [Ljava/lang/Class;

    .line 70
    .line 71
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 72
    .line 73
    aput-object v3, v0, v1

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    new-array v2, v2, [Ljava/lang/Object;

    .line 80
    .line 81
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    .line 82
    .line 83
    .line 84
    move-result-wide v3

    .line 85
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    aput-object p2, v2, v1

    .line 90
    .line 91
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    goto/16 :goto_b

    .line 96
    .line 97
    :catch_0
    new-instance p2, Lh3/c;

    .line 98
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string v1, "Cannot construct: \'"

    .line 102
    .line 103
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string p1, "\'"

    .line 110
    .line 111
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-direct {p2, p1}, Lh3/c;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw p2

    .line 122
    :catch_1
    move-exception p1

    .line 123
    throw p1

    .line 124
    :cond_4
    const-class v0, Ljava/math/BigDecimal;

    .line 125
    .line 126
    const-class v1, Ljava/lang/Float;

    .line 127
    .line 128
    if-eq p1, v1, :cond_15

    .line 129
    .line 130
    const-class v2, Ljava/lang/Double;

    .line 131
    .line 132
    if-eq p1, v2, :cond_15

    .line 133
    .line 134
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 135
    .line 136
    if-eq p1, v2, :cond_15

    .line 137
    .line 138
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 139
    .line 140
    if-eq p1, v2, :cond_15

    .line 141
    .line 142
    if-ne p1, v0, :cond_5

    .line 143
    .line 144
    goto/16 :goto_5

    .line 145
    .line 146
    :cond_5
    const-class v0, Ljava/lang/Long;

    .line 147
    .line 148
    const-class v1, Ljava/lang/Integer;

    .line 149
    .line 150
    const-class v2, Ljava/lang/Short;

    .line 151
    .line 152
    const-class v3, Ljava/lang/Byte;

    .line 153
    .line 154
    if-eq p1, v3, :cond_c

    .line 155
    .line 156
    if-eq p1, v2, :cond_c

    .line 157
    .line 158
    if-eq p1, v1, :cond_c

    .line 159
    .line 160
    if-eq p1, v0, :cond_c

    .line 161
    .line 162
    const-class v4, Ljava/math/BigInteger;

    .line 163
    .line 164
    if-eq p1, v4, :cond_c

    .line 165
    .line 166
    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 167
    .line 168
    if-eq p1, v4, :cond_c

    .line 169
    .line 170
    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 171
    .line 172
    if-eq p1, v4, :cond_c

    .line 173
    .line 174
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 175
    .line 176
    if-eq p1, v4, :cond_c

    .line 177
    .line 178
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 179
    .line 180
    if-ne p1, v4, :cond_6

    .line 181
    .line 182
    goto/16 :goto_0

    .line 183
    .line 184
    :cond_6
    const-class v0, Ljava/lang/Enum;

    .line 185
    .line 186
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    if-eqz v0, :cond_7

    .line 191
    .line 192
    iget-object p2, p2, Lm3/g;->h:Ljava/lang/String;

    .line 193
    .line 194
    :try_start_1
    invoke-static {p1, p2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 195
    .line 196
    .line 197
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 198
    goto/16 :goto_b

    .line 199
    .line 200
    :catch_2
    new-instance v0, Lh3/c;

    .line 201
    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    const-string v2, "Unable to find enum value \'"

    .line 205
    .line 206
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    const-string p2, "\' for enum class: "

    .line 213
    .line 214
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    invoke-direct {v0, p1}, Lh3/c;-><init>(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    throw v0

    .line 232
    :cond_7
    const-class v0, Ljava/util/Calendar;

    .line 233
    .line 234
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    if-eqz v0, :cond_8

    .line 239
    .line 240
    new-instance p1, Lg3/f;

    .line 241
    .line 242
    invoke-direct {p1}, Lg3/f;-><init>()V

    .line 243
    .line 244
    .line 245
    invoke-virtual {p1, p2}, Lg3/f;->b(Lm3/d;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    iget-object p1, p1, Lg3/f;->b:Ljava/lang/Object;

    .line 249
    .line 250
    check-cast p1, Ljava/util/Calendar;

    .line 251
    .line 252
    goto/16 :goto_b

    .line 253
    .line 254
    :cond_8
    const-class v0, Ljava/lang/Number;

    .line 255
    .line 256
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 257
    .line 258
    .line 259
    move-result v0

    .line 260
    if-eqz v0, :cond_9

    .line 261
    .line 262
    new-instance p1, Lg3/k;

    .line 263
    .line 264
    iget-object v0, p0, Lg3/f;->b:Ljava/lang/Object;

    .line 265
    .line 266
    check-cast v0, Lg3/g;

    .line 267
    .line 268
    const/4 v1, 0x2

    .line 269
    invoke-direct {p1, v0, v1}, Lg3/k;-><init>(Lg3/m;I)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {p1, p2}, Lg3/k;->b(Lm3/d;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    goto/16 :goto_b

    .line 277
    .line 278
    :cond_9
    const-class v0, Ljava/util/UUID;

    .line 279
    .line 280
    if-ne v0, p1, :cond_a

    .line 281
    .line 282
    iget-object p1, p2, Lm3/g;->h:Ljava/lang/String;

    .line 283
    .line 284
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    goto/16 :goto_b

    .line 289
    .line 290
    :cond_a
    iget-object v0, p0, Lg3/f;->b:Ljava/lang/Object;

    .line 291
    .line 292
    check-cast v0, Lg3/g;

    .line 293
    .line 294
    iget-object v0, v0, Lg3/c;->b:Ljava/util/HashMap;

    .line 295
    .line 296
    iget-object v1, p2, Lm3/d;->a:Lm3/i;

    .line 297
    .line 298
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    move-result v0

    .line 302
    if-eqz v0, :cond_b

    .line 303
    .line 304
    iget-object p1, p0, Lg3/f;->b:Ljava/lang/Object;

    .line 305
    .line 306
    check-cast p1, Lg3/g;

    .line 307
    .line 308
    iget-object p1, p1, Lg3/c;->b:Ljava/util/HashMap;

    .line 309
    .line 310
    iget-object v0, p2, Lm3/d;->a:Lm3/i;

    .line 311
    .line 312
    goto/16 :goto_a

    .line 313
    .line 314
    :cond_b
    new-instance p2, Lh3/c;

    .line 315
    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    .line 317
    .line 318
    const-string v1, "Unsupported class: "

    .line 319
    .line 320
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object p1

    .line 330
    invoke-direct {p2, p1}, Lh3/c;-><init>(Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    throw p2

    .line 334
    :cond_c
    :goto_0
    iget-object v4, p0, Lg3/f;->b:Ljava/lang/Object;

    .line 335
    .line 336
    check-cast v4, Lg3/g;

    .line 337
    .line 338
    iget-object v4, v4, Lg3/c;->b:Ljava/util/HashMap;

    .line 339
    .line 340
    sget-object v5, Lm3/i;->i:Lm3/i;

    .line 341
    .line 342
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v4

    .line 346
    check-cast v4, Lg3/d;

    .line 347
    .line 348
    invoke-interface {v4, p2}, Lg3/d;->b(Lm3/d;)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object p2

    .line 352
    if-eq p1, v3, :cond_14

    .line 353
    .line 354
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 355
    .line 356
    if-ne p1, v3, :cond_d

    .line 357
    .line 358
    goto :goto_4

    .line 359
    :cond_d
    if-eq p1, v2, :cond_13

    .line 360
    .line 361
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 362
    .line 363
    if-ne p1, v2, :cond_e

    .line 364
    .line 365
    goto :goto_3

    .line 366
    :cond_e
    if-eq p1, v1, :cond_12

    .line 367
    .line 368
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 369
    .line 370
    if-ne p1, v1, :cond_f

    .line 371
    .line 372
    goto :goto_2

    .line 373
    :cond_f
    if-eq p1, v0, :cond_11

    .line 374
    .line 375
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 376
    .line 377
    if-ne p1, v0, :cond_10

    .line 378
    .line 379
    goto :goto_1

    .line 380
    :cond_10
    new-instance p1, Ljava/math/BigInteger;

    .line 381
    .line 382
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object p2

    .line 386
    invoke-direct {p1, p2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    goto/16 :goto_b

    .line 390
    .line 391
    :cond_11
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object p1

    .line 395
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 396
    .line 397
    .line 398
    move-result-object p1

    .line 399
    goto/16 :goto_b

    .line 400
    .line 401
    :cond_12
    :goto_2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object p1

    .line 405
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 406
    .line 407
    .line 408
    move-result p1

    .line 409
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 410
    .line 411
    .line 412
    move-result-object p1

    .line 413
    goto/16 :goto_b

    .line 414
    .line 415
    :cond_13
    :goto_3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object p1

    .line 419
    invoke-static {p1}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    .line 420
    .line 421
    .line 422
    move-result-object p1

    .line 423
    goto/16 :goto_b

    .line 424
    .line 425
    :cond_14
    :goto_4
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object p1

    .line 429
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    .line 430
    .line 431
    .line 432
    move-result-object p1

    .line 433
    goto/16 :goto_b

    .line 434
    .line 435
    :cond_15
    :goto_5
    if-ne p1, v0, :cond_16

    .line 436
    .line 437
    new-instance p1, Ljava/math/BigDecimal;

    .line 438
    .line 439
    iget-object p2, p2, Lm3/g;->h:Ljava/lang/String;

    .line 440
    .line 441
    invoke-direct {p1, p2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    goto/16 :goto_b

    .line 445
    .line 446
    :cond_16
    iget-object v0, p0, Lg3/f;->b:Ljava/lang/Object;

    .line 447
    .line 448
    check-cast v0, Lg3/g;

    .line 449
    .line 450
    iget-object v0, v0, Lg3/c;->b:Ljava/util/HashMap;

    .line 451
    .line 452
    sget-object v2, Lm3/i;->j:Lm3/i;

    .line 453
    .line 454
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    .line 456
    .line 457
    move-result-object v0

    .line 458
    check-cast v0, Lg3/d;

    .line 459
    .line 460
    invoke-interface {v0, p2}, Lg3/d;->b(Lm3/d;)Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object p2

    .line 464
    if-eq p1, v1, :cond_18

    .line 465
    .line 466
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 467
    .line 468
    if-ne p1, v0, :cond_17

    .line 469
    .line 470
    goto :goto_7

    .line 471
    :cond_17
    :goto_6
    move-object p1, p2

    .line 472
    goto :goto_b

    .line 473
    :cond_18
    :goto_7
    check-cast p2, Ljava/lang/Double;

    .line 474
    .line 475
    invoke-virtual {p2}, Ljava/lang/Double;->floatValue()F

    .line 476
    .line 477
    .line 478
    move-result p1

    .line 479
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 480
    .line 481
    .line 482
    move-result-object p1

    .line 483
    goto :goto_b

    .line 484
    :cond_19
    :goto_8
    iget-object p1, p0, Lg3/f;->b:Ljava/lang/Object;

    .line 485
    .line 486
    check-cast p1, Lg3/g;

    .line 487
    .line 488
    iget-object p1, p1, Lg3/c;->b:Ljava/util/HashMap;

    .line 489
    .line 490
    sget-object v0, Lm3/i;->n:Lm3/i;

    .line 491
    .line 492
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    .line 494
    .line 495
    move-result-object p1

    .line 496
    check-cast p1, Lg3/d;

    .line 497
    .line 498
    invoke-interface {p1, p2}, Lg3/d;->b(Lm3/d;)Ljava/lang/Object;

    .line 499
    .line 500
    .line 501
    move-result-object p1

    .line 502
    check-cast p1, Ljava/lang/String;

    .line 503
    .line 504
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 505
    .line 506
    .line 507
    move-result p2

    .line 508
    if-nez p2, :cond_1a

    .line 509
    .line 510
    const/4 p1, 0x0

    .line 511
    goto :goto_b

    .line 512
    :cond_1a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 513
    .line 514
    .line 515
    move-result p2

    .line 516
    if-ne p2, v2, :cond_1b

    .line 517
    .line 518
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 519
    .line 520
    .line 521
    move-result p1

    .line 522
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 523
    .line 524
    .line 525
    move-result-object p1

    .line 526
    goto :goto_b

    .line 527
    :cond_1b
    new-instance p2, Lh3/c;

    .line 528
    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    .line 530
    .line 531
    const-string v1, "Invalid node Character: \'"

    .line 532
    .line 533
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 534
    .line 535
    .line 536
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    .line 538
    .line 539
    const-string v1, "\'; length: "

    .line 540
    .line 541
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    .line 543
    .line 544
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 545
    .line 546
    .line 547
    move-result p1

    .line 548
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 549
    .line 550
    .line 551
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object p1

    .line 555
    invoke-direct {p2, p1}, Lh3/c;-><init>(Ljava/lang/String;)V

    .line 556
    .line 557
    .line 558
    throw p2

    .line 559
    :cond_1c
    :goto_9
    iget-object p1, p0, Lg3/f;->b:Ljava/lang/Object;

    .line 560
    .line 561
    check-cast p1, Lg3/g;

    .line 562
    .line 563
    iget-object p1, p1, Lg3/c;->b:Ljava/util/HashMap;

    .line 564
    .line 565
    sget-object v0, Lm3/i;->l:Lm3/i;

    .line 566
    .line 567
    :goto_a
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    .line 569
    .line 570
    move-result-object p1

    .line 571
    check-cast p1, Lg3/d;

    .line 572
    .line 573
    invoke-interface {p1, p2}, Lg3/d;->b(Lm3/d;)Ljava/lang/Object;

    .line 574
    .line 575
    .line 576
    move-result-object p1

    .line 577
    :goto_b
    return-object p1
.end method
