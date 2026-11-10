.class public final Lo1/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ln3/e;Lq3/a;Ld3/c0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lo1/e;->a:I

    iput-object p1, p0, Lo1/e;->b:Ljava/lang/Object;

    iput-object p2, p0, Lo1/e;->c:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lo1/e;->d:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lo1/e;->e:Ljava/lang/Object;

    iput-object p3, p0, Lo1/e;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lo1/c;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lo1/e;->b:Ljava/lang/Object;

    iput-object p1, p0, Lo1/e;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    iput-object p1, p0, Lo1/e;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    iput-object p1, p0, Lo1/e;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lm3/b;)Lm3/d;
    .locals 12

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lo1/e;->e:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Ljava/util/Set;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lo1/e;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Ln3/a;

    .line 13
    .line 14
    check-cast v0, Ln3/e;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, v1}, Ln3/e;->b(I)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v3, 0x0

    .line 22
    if-eqz v2, :cond_4

    .line 23
    .line 24
    invoke-virtual {v0}, Ln3/e;->c()Li3/f;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Li3/a;

    .line 29
    .line 30
    iget-object v2, v0, Li3/i;->c:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v4, p0, Lo1/e;->d:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v4, Ljava/util/Map;

    .line 35
    .line 36
    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_3

    .line 41
    .line 42
    iget-object v0, p0, Lo1/e;->d:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, Ljava/util/Map;

    .line 45
    .line 46
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lm3/d;

    .line 51
    .line 52
    instance-of v2, v0, Lm3/g;

    .line 53
    .line 54
    if-nez v2, :cond_2

    .line 55
    .line 56
    iget v2, p0, Lo1/e;->a:I

    .line 57
    .line 58
    add-int/2addr v2, v1

    .line 59
    iput v2, p0, Lo1/e;->a:I

    .line 60
    .line 61
    iget-object v3, p0, Lo1/e;->f:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v3, Ld3/c0;

    .line 64
    .line 65
    iget v3, v3, Ld3/c0;->c:I

    .line 66
    .line 67
    if-gt v2, v3, :cond_1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    new-instance p1, Lh3/c;

    .line 71
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v1, "Number of aliases for non-scalar nodes exceeds the specified max="

    .line 75
    .line 76
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lo1/e;->f:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v1, Ld3/c0;

    .line 82
    .line 83
    iget v1, v1, Ld3/c0;->c:I

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-direct {p1, v0}, Lh3/c;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p1

    .line 96
    :cond_2
    :goto_0
    iget-object v2, p0, Lo1/e;->e:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v2, Ljava/util/Set;

    .line 99
    .line 100
    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-eqz v2, :cond_13

    .line 105
    .line 106
    iput-boolean v1, v0, Lm3/d;->e:Z

    .line 107
    .line 108
    goto/16 :goto_9

    .line 109
    .line 110
    :cond_3
    new-instance p1, Lf3/a;

    .line 111
    .line 112
    const-string v1, "found undefined alias "

    .line 113
    .line 114
    invoke-static {v1, v2}, La1/b;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    iget-object v0, v0, Li3/f;->a:Lh3/a;

    .line 119
    .line 120
    invoke-direct {p1, v3, v3, v1, v0}, Lf3/a;-><init>(Ljava/lang/String;Lh3/a;Ljava/lang/String;Lh3/a;)V

    .line 121
    .line 122
    .line 123
    throw p1

    .line 124
    :cond_4
    invoke-virtual {v0}, Ln3/e;->e()Li3/f;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    check-cast v2, Li3/i;

    .line 129
    .line 130
    iget-object v2, v2, Li3/i;->c:Ljava/lang/String;

    .line 131
    .line 132
    const/4 v4, 0x6

    .line 133
    invoke-virtual {v0, v4}, Ln3/e;->b(I)Z

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    const/4 v5, 0x0

    .line 138
    const-string v6, "!"

    .line 139
    .line 140
    iget-object v7, p0, Lo1/e;->c:Ljava/lang/Object;

    .line 141
    .line 142
    if-eqz v4, :cond_8

    .line 143
    .line 144
    invoke-virtual {v0}, Ln3/e;->c()Li3/f;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    check-cast v0, Li3/j;

    .line 149
    .line 150
    iget-object v3, v0, Li3/j;->d:Ljava/lang/String;

    .line 151
    .line 152
    if-eqz v3, :cond_6

    .line 153
    .line 154
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v4

    .line 158
    if-eqz v4, :cond_5

    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_5
    new-instance v1, Lm3/i;

    .line 162
    .line 163
    invoke-direct {v1, v3}, Lm3/i;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    move v6, v5

    .line 167
    move-object v5, v1

    .line 168
    goto :goto_2

    .line 169
    :cond_6
    :goto_1
    check-cast v7, Lq3/a;

    .line 170
    .line 171
    sget-object v3, Lm3/e;->a:Lm3/e;

    .line 172
    .line 173
    iget-object v4, v0, Li3/j;->g:Lf0/h;

    .line 174
    .line 175
    iget-boolean v4, v4, Lf0/h;->b:Z

    .line 176
    .line 177
    iget-object v5, v0, Li3/j;->f:Ljava/lang/String;

    .line 178
    .line 179
    invoke-virtual {v7, v3, v5, v4}, Lq3/a;->b(Lm3/e;Ljava/lang/String;Z)Lm3/i;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    move v6, v1

    .line 184
    move-object v5, v3

    .line 185
    :goto_2
    new-instance v1, Lm3/g;

    .line 186
    .line 187
    iget-object v7, v0, Li3/j;->f:Ljava/lang/String;

    .line 188
    .line 189
    iget-object v8, v0, Li3/f;->a:Lh3/a;

    .line 190
    .line 191
    iget-object v9, v0, Li3/f;->b:Lh3/a;

    .line 192
    .line 193
    iget-object v10, v0, Li3/j;->e:Le3/b;

    .line 194
    .line 195
    move-object v4, v1

    .line 196
    invoke-direct/range {v4 .. v10}, Lm3/g;-><init>(Lm3/i;ZLjava/lang/String;Lh3/a;Lh3/a;Le3/b;)V

    .line 197
    .line 198
    .line 199
    if-eqz v2, :cond_7

    .line 200
    .line 201
    iget-object v0, p0, Lo1/e;->d:Ljava/lang/Object;

    .line 202
    .line 203
    check-cast v0, Ljava/util/Map;

    .line 204
    .line 205
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    :cond_7
    move-object v0, v1

    .line 209
    goto/16 :goto_9

    .line 210
    .line 211
    :cond_8
    const/16 v4, 0x8

    .line 212
    .line 213
    invoke-virtual {v0, v4}, Ln3/e;->b(I)Z

    .line 214
    .line 215
    .line 216
    move-result v4

    .line 217
    if-eqz v4, :cond_d

    .line 218
    .line 219
    invoke-virtual {v0}, Ln3/e;->c()Li3/f;

    .line 220
    .line 221
    .line 222
    move-result-object v4

    .line 223
    check-cast v4, Li3/k;

    .line 224
    .line 225
    iget-object v8, v4, Li3/c;->d:Ljava/lang/String;

    .line 226
    .line 227
    if-eqz v8, :cond_a

    .line 228
    .line 229
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v6

    .line 233
    if-eqz v6, :cond_9

    .line 234
    .line 235
    goto :goto_3

    .line 236
    :cond_9
    new-instance v1, Lm3/i;

    .line 237
    .line 238
    invoke-direct {v1, v8}, Lm3/i;-><init>(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    move-object v6, v1

    .line 242
    move v7, v5

    .line 243
    goto :goto_4

    .line 244
    :cond_a
    :goto_3
    check-cast v7, Lq3/a;

    .line 245
    .line 246
    sget-object v5, Lm3/e;->b:Lm3/e;

    .line 247
    .line 248
    iget-boolean v6, v4, Li3/c;->e:Z

    .line 249
    .line 250
    invoke-virtual {v7, v5, v3, v6}, Lq3/a;->b(Lm3/e;Ljava/lang/String;Z)Lm3/i;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    move v7, v1

    .line 255
    move-object v6, v3

    .line 256
    :goto_4
    new-instance v1, Ljava/util/ArrayList;

    .line 257
    .line 258
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .line 260
    .line 261
    new-instance v3, Lm3/h;

    .line 262
    .line 263
    iget-object v9, v4, Li3/f;->a:Lh3/a;

    .line 264
    .line 265
    iget-object v10, v4, Li3/c;->f:Le3/a;

    .line 266
    .line 267
    move-object v5, v3

    .line 268
    move-object v8, v1

    .line 269
    invoke-direct/range {v5 .. v10}, Lm3/h;-><init>(Lm3/i;ZLjava/util/ArrayList;Lh3/a;Le3/a;)V

    .line 270
    .line 271
    .line 272
    if-eqz v2, :cond_b

    .line 273
    .line 274
    iget-object v4, p0, Lo1/e;->d:Ljava/lang/Object;

    .line 275
    .line 276
    check-cast v4, Ljava/util/Map;

    .line 277
    .line 278
    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    :cond_b
    :goto_5
    const/4 v2, 0x7

    .line 282
    invoke-virtual {v0, v2}, Ln3/e;->b(I)Z

    .line 283
    .line 284
    .line 285
    move-result v2

    .line 286
    if-nez v2, :cond_c

    .line 287
    .line 288
    invoke-virtual {p0, v3}, Lo1/e;->a(Lm3/b;)Lm3/d;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    goto :goto_5

    .line 296
    :cond_c
    invoke-virtual {v0}, Ln3/e;->c()Li3/f;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    iget-object v0, v0, Li3/f;->b:Lh3/a;

    .line 301
    .line 302
    iput-object v0, v3, Lm3/d;->c:Lh3/a;

    .line 303
    .line 304
    move-object v0, v3

    .line 305
    goto/16 :goto_9

    .line 306
    .line 307
    :cond_d
    invoke-virtual {v0}, Ln3/e;->c()Li3/f;

    .line 308
    .line 309
    .line 310
    move-result-object v4

    .line 311
    check-cast v4, Li3/h;

    .line 312
    .line 313
    iget-object v8, v4, Li3/c;->d:Ljava/lang/String;

    .line 314
    .line 315
    if-eqz v8, :cond_f

    .line 316
    .line 317
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    move-result v6

    .line 321
    if-eqz v6, :cond_e

    .line 322
    .line 323
    goto :goto_6

    .line 324
    :cond_e
    new-instance v3, Lm3/i;

    .line 325
    .line 326
    invoke-direct {v3, v8}, Lm3/i;-><init>(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    move-object v6, v3

    .line 330
    move v7, v5

    .line 331
    goto :goto_7

    .line 332
    :cond_f
    :goto_6
    check-cast v7, Lq3/a;

    .line 333
    .line 334
    sget-object v5, Lm3/e;->c:Lm3/e;

    .line 335
    .line 336
    iget-boolean v6, v4, Li3/c;->e:Z

    .line 337
    .line 338
    invoke-virtual {v7, v5, v3, v6}, Lq3/a;->b(Lm3/e;Ljava/lang/String;Z)Lm3/i;

    .line 339
    .line 340
    .line 341
    move-result-object v3

    .line 342
    move v7, v1

    .line 343
    move-object v6, v3

    .line 344
    :goto_7
    new-instance v3, Ljava/util/ArrayList;

    .line 345
    .line 346
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 347
    .line 348
    .line 349
    new-instance v11, Lm3/c;

    .line 350
    .line 351
    iget-object v9, v4, Li3/f;->a:Lh3/a;

    .line 352
    .line 353
    iget-object v10, v4, Li3/c;->f:Le3/a;

    .line 354
    .line 355
    move-object v5, v11

    .line 356
    move-object v8, v3

    .line 357
    invoke-direct/range {v5 .. v10}, Lm3/c;-><init>(Lm3/i;ZLjava/util/ArrayList;Lh3/a;Le3/a;)V

    .line 358
    .line 359
    .line 360
    if-eqz v2, :cond_10

    .line 361
    .line 362
    iget-object v4, p0, Lo1/e;->d:Ljava/lang/Object;

    .line 363
    .line 364
    check-cast v4, Ljava/util/Map;

    .line 365
    .line 366
    invoke-interface {v4, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    :cond_10
    :goto_8
    const/4 v2, 0x4

    .line 370
    invoke-virtual {v0, v2}, Ln3/e;->b(I)Z

    .line 371
    .line 372
    .line 373
    move-result v2

    .line 374
    if-nez v2, :cond_12

    .line 375
    .line 376
    invoke-virtual {p0, v11}, Lo1/e;->a(Lm3/b;)Lm3/d;

    .line 377
    .line 378
    .line 379
    move-result-object v2

    .line 380
    iget-object v4, v2, Lm3/d;->a:Lm3/i;

    .line 381
    .line 382
    sget-object v5, Lm3/i;->d:Lm3/i;

    .line 383
    .line 384
    invoke-virtual {v4, v5}, Lm3/i;->equals(Ljava/lang/Object;)Z

    .line 385
    .line 386
    .line 387
    move-result v4

    .line 388
    if-eqz v4, :cond_11

    .line 389
    .line 390
    iput-boolean v1, v11, Lm3/c;->i:Z

    .line 391
    .line 392
    :cond_11
    invoke-virtual {p0, v11}, Lo1/e;->a(Lm3/b;)Lm3/d;

    .line 393
    .line 394
    .line 395
    move-result-object v4

    .line 396
    new-instance v5, Lm3/f;

    .line 397
    .line 398
    invoke-direct {v5, v2, v4}, Lm3/f;-><init>(Lm3/d;Lm3/d;)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    goto :goto_8

    .line 405
    :cond_12
    invoke-virtual {v0}, Ln3/e;->c()Li3/f;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    iget-object v0, v0, Li3/f;->b:Lh3/a;

    .line 410
    .line 411
    iput-object v0, v11, Lm3/d;->c:Lh3/a;

    .line 412
    .line 413
    move-object v0, v11

    .line 414
    :cond_13
    :goto_9
    iget-object v1, p0, Lo1/e;->e:Ljava/lang/Object;

    .line 415
    .line 416
    check-cast v1, Ljava/util/Set;

    .line 417
    .line 418
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 419
    .line 420
    .line 421
    return-object v0
.end method

.method public final b()Lo1/d;
    .locals 6

    .line 1
    iget-object v0, p0, Lo1/e;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/LinkedList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    move v3, v2

    .line 11
    :goto_0
    if-ge v3, v1, :cond_2

    .line 12
    .line 13
    iget-object v4, p0, Lo1/e;->d:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v4, Ljava/util/ListIterator;

    .line 16
    .line 17
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-nez v4, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    iput-object v4, p0, Lo1/e;->d:Ljava/lang/Object;

    .line 28
    .line 29
    :cond_0
    iget-object v4, p0, Lo1/e;->d:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v4, Ljava/util/ListIterator;

    .line 32
    .line 33
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    check-cast v4, Lo1/d;

    .line 38
    .line 39
    iget-boolean v5, v4, Lo1/d;->b:Z

    .line 40
    .line 41
    if-eqz v5, :cond_1

    .line 42
    .line 43
    iput-boolean v2, v4, Lo1/d;->b:Z

    .line 44
    .line 45
    iget-object v0, v4, Lo1/d;->c:Lo1/e;

    .line 46
    .line 47
    iget v1, v0, Lo1/e;->a:I

    .line 48
    .line 49
    add-int/lit8 v1, v1, 0x1

    .line 50
    .line 51
    iput v1, v0, Lo1/e;->a:I

    .line 52
    .line 53
    return-object v4

    .line 54
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    new-instance v1, Lo1/d;

    .line 58
    .line 59
    iget-object v3, p0, Lo1/e;->c:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v3, Lo1/c;

    .line 62
    .line 63
    invoke-interface {v3}, Lo1/c;->l()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-direct {v1, p0, v3}, Lo1/d;-><init>(Lo1/e;Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    iget-object v3, p0, Lo1/e;->d:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v3, Ljava/util/ListIterator;

    .line 73
    .line 74
    invoke-interface {v3, v1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    iget-object v3, p0, Lo1/e;->f:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v3, Lo1/d;

    .line 80
    .line 81
    if-nez v3, :cond_3

    .line 82
    .line 83
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    goto :goto_1

    .line 88
    :cond_3
    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    :goto_1
    iput-object v0, p0, Lo1/e;->e:Ljava/lang/Object;

    .line 97
    .line 98
    iput-boolean v2, v1, Lo1/d;->b:Z

    .line 99
    .line 100
    iget v0, p0, Lo1/e;->a:I

    .line 101
    .line 102
    add-int/lit8 v0, v0, 0x1

    .line 103
    .line 104
    iput v0, p0, Lo1/e;->a:I

    .line 105
    .line 106
    return-object v1
.end method

.method public final c()Lo1/d;
    .locals 5

    .line 1
    iget-object v0, p0, Lo1/e;->b:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Ljava/util/LinkedList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_2

    .line 12
    .line 13
    iget-object v3, p0, Lo1/e;->e:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v3, Ljava/util/ListIterator;

    .line 16
    .line 17
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-nez v3, :cond_0

    .line 22
    .line 23
    move-object v3, v0

    .line 24
    check-cast v3, Ljava/util/LinkedList;

    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    iput-object v3, p0, Lo1/e;->e:Ljava/lang/Object;

    .line 31
    .line 32
    :cond_0
    iget-object v3, p0, Lo1/e;->e:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v3, Ljava/util/ListIterator;

    .line 35
    .line 36
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Lo1/d;

    .line 41
    .line 42
    iput-object v3, p0, Lo1/e;->f:Ljava/lang/Object;

    .line 43
    .line 44
    iget-boolean v4, v3, Lo1/d;->b:Z

    .line 45
    .line 46
    if-nez v4, :cond_1

    .line 47
    .line 48
    return-object v3

    .line 49
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lo1/e;->f:Ljava/lang/Object;

    .line 54
    .line 55
    return-object v0
.end method
