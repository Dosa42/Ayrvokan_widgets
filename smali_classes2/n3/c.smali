.class public final Ln3/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/f;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ln3/e;


# direct methods
.method public synthetic constructor <init>(Ln3/e;I)V
    .locals 0

    .line 1
    iput p2, p0, Ln3/c;->a:I

    iput-object p1, p0, Ln3/c;->b:Ln3/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ln3/e;II)V
    .locals 0

    iput p2, p0, Ln3/c;->a:I

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 p2, 0x12

    .line 2
    invoke-direct {p0, p1, p2}, Ln3/c;-><init>(Ln3/e;I)V

    return-void

    :pswitch_1
    const/16 p2, 0x11

    .line 3
    invoke-direct {p0, p1, p2}, Ln3/c;-><init>(Ln3/e;I)V

    return-void

    :pswitch_2
    const/16 p2, 0x10

    .line 4
    invoke-direct {p0, p1, p2}, Ln3/c;-><init>(Ln3/e;I)V

    return-void

    :pswitch_3
    const/16 p2, 0xf

    .line 5
    invoke-direct {p0, p1, p2}, Ln3/c;-><init>(Ln3/e;I)V

    return-void

    :pswitch_4
    const/16 p2, 0xe

    .line 6
    invoke-direct {p0, p1, p2}, Ln3/c;-><init>(Ln3/e;I)V

    return-void

    :pswitch_5
    const/16 p2, 0xd

    .line 7
    invoke-direct {p0, p1, p2}, Ln3/c;-><init>(Ln3/e;I)V

    return-void

    :pswitch_6
    const/16 p2, 0xc

    .line 8
    invoke-direct {p0, p1, p2}, Ln3/c;-><init>(Ln3/e;I)V

    return-void

    :pswitch_7
    const/16 p2, 0xb

    .line 9
    invoke-direct {p0, p1, p2}, Ln3/c;-><init>(Ln3/e;I)V

    return-void

    :pswitch_8
    const/16 p2, 0xa

    .line 10
    invoke-direct {p0, p1, p2}, Ln3/c;-><init>(Ln3/e;I)V

    return-void

    :pswitch_9
    const/16 p2, 0x9

    .line 11
    invoke-direct {p0, p1, p2}, Ln3/c;-><init>(Ln3/e;I)V

    return-void

    :pswitch_a
    const/16 p2, 0x8

    .line 12
    invoke-direct {p0, p1, p2}, Ln3/c;-><init>(Ln3/e;I)V

    return-void

    :pswitch_b
    const/4 p2, 0x7

    .line 13
    invoke-direct {p0, p1, p2}, Ln3/c;-><init>(Ln3/e;I)V

    return-void

    :pswitch_c
    const/4 p2, 0x6

    .line 14
    invoke-direct {p0, p1, p2}, Ln3/c;-><init>(Ln3/e;I)V

    return-void

    :pswitch_d
    const/4 p2, 0x5

    .line 15
    invoke-direct {p0, p1, p2}, Ln3/c;-><init>(Ln3/e;I)V

    return-void

    :pswitch_e
    const/4 p2, 0x4

    .line 16
    invoke-direct {p0, p1, p2}, Ln3/c;-><init>(Ln3/e;I)V

    return-void

    :pswitch_f
    const/4 p2, 0x3

    .line 17
    invoke-direct {p0, p1, p2}, Ln3/c;-><init>(Ln3/e;I)V

    return-void

    :pswitch_10
    const/4 p2, 0x2

    .line 18
    invoke-direct {p0, p1, p2}, Ln3/c;-><init>(Ln3/e;I)V

    return-void

    :pswitch_11
    const/4 p2, 0x1

    .line 19
    invoke-direct {p0, p1, p2}, Ln3/c;-><init>(Ln3/e;I)V

    return-void

    :goto_0
    const/4 p2, 0x0

    .line 20
    invoke-direct {p0, p1, p2}, Ln3/c;-><init>(Ln3/e;I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
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


# virtual methods
.method public final a()Li3/f;
    .locals 15

    .line 1
    const-string v0, "expected <block end>, but found \'"

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    iget v2, p0, Ln3/c;->a:I

    .line 5
    .line 6
    const/16 v3, 0x11

    .line 7
    .line 8
    const/16 v4, 0x8

    .line 9
    .line 10
    const/16 v5, 0x9

    .line 11
    .line 12
    const/4 v6, 0x7

    .line 13
    const-string v7, "\'"

    .line 14
    .line 15
    const/16 v8, 0xf

    .line 16
    .line 17
    const/4 v9, 0x3

    .line 18
    const/16 v10, 0x14

    .line 19
    .line 20
    const/4 v11, 0x0

    .line 21
    const/4 v12, 0x1

    .line 22
    const/4 v13, 0x0

    .line 23
    iget-object v14, p0, Ln3/c;->b:Ln3/e;

    .line 24
    .line 25
    packed-switch v2, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    goto/16 :goto_11

    .line 29
    .line 30
    :pswitch_0
    iget-object v0, v14, Ln3/e;->a:Lr3/b;

    .line 31
    .line 32
    filled-new-array {v1}, [I

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v0, Lr3/d;

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Lr3/d;->b([I)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iget-object v2, v14, Ln3/e;->c:Lh/a;

    .line 43
    .line 44
    iget-object v4, v14, Ln3/e;->a:Lr3/b;

    .line 45
    .line 46
    check-cast v4, Lr3/d;

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    invoke-virtual {v4}, Lr3/d;->i()Ls3/j;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    filled-new-array {v1, v8, v10, v9}, [I

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v4, v1}, Lr3/d;->b([I)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-nez v1, :cond_0

    .line 63
    .line 64
    new-instance v0, Ln3/c;

    .line 65
    .line 66
    invoke-direct {v0, v14, v3}, Ln3/c;-><init>(Ln3/e;I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v0}, Lh/a;->E(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    new-instance v0, Ln3/c;

    .line 73
    .line 74
    invoke-direct {v0, v14, v9, v11}, Ln3/c;-><init>(Ln3/e;II)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ln3/c;->a()Li3/f;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    goto :goto_0

    .line 82
    :cond_0
    new-instance v1, Ln3/c;

    .line 83
    .line 84
    invoke-direct {v1, v14, v3}, Ln3/c;-><init>(Ln3/e;I)V

    .line 85
    .line 86
    .line 87
    iput-object v1, v14, Ln3/e;->e:Ln3/f;

    .line 88
    .line 89
    iget-object v0, v0, Ls3/j;->b:Lh3/a;

    .line 90
    .line 91
    invoke-static {v14, v0}, Ln3/e;->a(Ln3/e;Lh3/a;)Li3/j;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {v4}, Lr3/d;->k()Ls3/j;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    new-instance v1, Li3/g;

    .line 101
    .line 102
    iget-object v3, v0, Ls3/j;->a:Lh3/a;

    .line 103
    .line 104
    iget-object v0, v0, Ls3/j;->b:Lh3/a;

    .line 105
    .line 106
    invoke-direct {v1, v3, v0, v12}, Li3/g;-><init>(Lh3/a;Lh3/a;I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2}, Lh/a;->D()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    check-cast v0, Ln3/f;

    .line 114
    .line 115
    iput-object v0, v14, Ln3/e;->e:Ln3/f;

    .line 116
    .line 117
    move-object v0, v1

    .line 118
    :goto_0
    return-object v0

    .line 119
    :pswitch_1
    iget-object v0, v14, Ln3/e;->a:Lr3/b;

    .line 120
    .line 121
    filled-new-array {v6, v5, v3}, [I

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    check-cast v0, Lr3/d;

    .line 126
    .line 127
    invoke-virtual {v0, v1}, Lr3/d;->b([I)Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-nez v0, :cond_2

    .line 132
    .line 133
    new-instance v0, Ln2/a0;

    .line 134
    .line 135
    sget-object v1, Ln3/e;->g:Ljava/util/HashMap;

    .line 136
    .line 137
    invoke-direct {v0, v6, v13, v1}, Ln2/a0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    iput-object v0, v14, Ln3/e;->f:Ln2/a0;

    .line 141
    .line 142
    iget-object v0, v14, Ln3/e;->a:Lr3/b;

    .line 143
    .line 144
    check-cast v0, Lr3/d;

    .line 145
    .line 146
    invoke-virtual {v0}, Lr3/d;->k()Ls3/j;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    iget-object v0, v0, Ls3/j;->a:Lh3/a;

    .line 151
    .line 152
    new-instance v1, Li3/e;

    .line 153
    .line 154
    invoke-direct {v1, v0, v0}, Li3/e;-><init>(Lh3/a;Lh3/a;)V

    .line 155
    .line 156
    .line 157
    new-instance v0, Ln3/c;

    .line 158
    .line 159
    invoke-direct {v0, v14, v6, v11}, Ln3/c;-><init>(Ln3/e;II)V

    .line 160
    .line 161
    .line 162
    iget-object v2, v14, Ln3/e;->c:Lh/a;

    .line 163
    .line 164
    invoke-virtual {v2, v0}, Lh/a;->E(Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    new-instance v0, Ln3/c;

    .line 168
    .line 169
    invoke-direct {v0, v14, v9, v11}, Ln3/c;-><init>(Ln3/e;II)V

    .line 170
    .line 171
    .line 172
    iput-object v0, v14, Ln3/e;->e:Ln3/f;

    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_2
    new-instance v0, Ln3/c;

    .line 176
    .line 177
    invoke-direct {v0, v14, v4, v11}, Ln3/c;-><init>(Ln3/e;II)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0}, Ln3/c;->a()Li3/f;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    :goto_1
    return-object v1

    .line 185
    :pswitch_2
    iget-object v0, v14, Ln3/e;->a:Lr3/b;

    .line 186
    .line 187
    check-cast v0, Lr3/d;

    .line 188
    .line 189
    invoke-virtual {v0}, Lr3/d;->i()Ls3/j;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    iget-object v1, v14, Ln3/e;->d:Lh/a;

    .line 194
    .line 195
    iget-object v0, v0, Ls3/j;->a:Lh3/a;

    .line 196
    .line 197
    invoke-virtual {v1, v0}, Lh/a;->E(Ljava/lang/Object;)V

    .line 198
    .line 199
    .line 200
    new-instance v0, Ln3/d;

    .line 201
    .line 202
    invoke-direct {v0, v14, v12, v12}, Ln3/d;-><init>(Ln3/e;ZI)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0}, Ln3/d;->a()Li3/f;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    return-object v0

    .line 210
    :pswitch_3
    iget-object v0, v14, Ln3/e;->a:Lr3/b;

    .line 211
    .line 212
    filled-new-array {v10}, [I

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    check-cast v0, Lr3/d;

    .line 217
    .line 218
    invoke-virtual {v0, v1}, Lr3/d;->b([I)Z

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    iget-object v1, v14, Ln3/e;->a:Lr3/b;

    .line 223
    .line 224
    const/16 v2, 0xc

    .line 225
    .line 226
    if-eqz v0, :cond_4

    .line 227
    .line 228
    check-cast v1, Lr3/d;

    .line 229
    .line 230
    invoke-virtual {v1}, Lr3/d;->i()Ls3/j;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    const/16 v3, 0xd

    .line 235
    .line 236
    const/16 v4, 0xa

    .line 237
    .line 238
    filled-new-array {v4, v3}, [I

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    invoke-virtual {v1, v3}, Lr3/d;->b([I)Z

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    if-nez v1, :cond_3

    .line 247
    .line 248
    new-instance v0, Ln3/c;

    .line 249
    .line 250
    invoke-direct {v0, v14, v2, v11}, Ln3/c;-><init>(Ln3/e;II)V

    .line 251
    .line 252
    .line 253
    iget-object v1, v14, Ln3/e;->c:Lh/a;

    .line 254
    .line 255
    invoke-virtual {v1, v0}, Lh/a;->E(Ljava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v14, v11, v11}, Ln3/e;->d(ZZ)Li3/i;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    goto :goto_3

    .line 263
    :cond_3
    new-instance v1, Ln3/c;

    .line 264
    .line 265
    invoke-direct {v1, v14, v2, v11}, Ln3/c;-><init>(Ln3/e;II)V

    .line 266
    .line 267
    .line 268
    iput-object v1, v14, Ln3/e;->e:Ln3/f;

    .line 269
    .line 270
    iget-object v0, v0, Ls3/j;->b:Lh3/a;

    .line 271
    .line 272
    goto :goto_2

    .line 273
    :cond_4
    new-instance v0, Ln3/c;

    .line 274
    .line 275
    invoke-direct {v0, v14, v2, v11}, Ln3/c;-><init>(Ln3/e;II)V

    .line 276
    .line 277
    .line 278
    iput-object v0, v14, Ln3/e;->e:Ln3/f;

    .line 279
    .line 280
    check-cast v1, Lr3/d;

    .line 281
    .line 282
    invoke-virtual {v1}, Lr3/d;->k()Ls3/j;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    iget-object v0, v0, Ls3/j;->a:Lh3/a;

    .line 287
    .line 288
    :goto_2
    invoke-static {v14, v0}, Ln3/e;->a(Ln3/e;Lh3/a;)Li3/j;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    :goto_3
    return-object v0

    .line 293
    :pswitch_4
    iget-object v0, v14, Ln3/e;->a:Lr3/b;

    .line 294
    .line 295
    check-cast v0, Lr3/d;

    .line 296
    .line 297
    invoke-virtual {v0}, Lr3/d;->i()Ls3/j;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    const/16 v1, 0xd

    .line 302
    .line 303
    const/16 v2, 0xa

    .line 304
    .line 305
    filled-new-array {v10, v2, v1}, [I

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    iget-object v2, v14, Ln3/e;->a:Lr3/b;

    .line 310
    .line 311
    check-cast v2, Lr3/d;

    .line 312
    .line 313
    invoke-virtual {v2, v1}, Lr3/d;->b([I)Z

    .line 314
    .line 315
    .line 316
    move-result v1

    .line 317
    const/16 v2, 0xe

    .line 318
    .line 319
    if-nez v1, :cond_5

    .line 320
    .line 321
    new-instance v0, Ln3/c;

    .line 322
    .line 323
    invoke-direct {v0, v14, v2, v11}, Ln3/c;-><init>(Ln3/e;II)V

    .line 324
    .line 325
    .line 326
    iget-object v1, v14, Ln3/e;->c:Lh/a;

    .line 327
    .line 328
    invoke-virtual {v1, v0}, Lh/a;->E(Ljava/lang/Object;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v14, v11, v11}, Ln3/e;->d(ZZ)Li3/i;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    goto :goto_4

    .line 336
    :cond_5
    new-instance v1, Ln3/c;

    .line 337
    .line 338
    invoke-direct {v1, v14, v2, v11}, Ln3/c;-><init>(Ln3/e;II)V

    .line 339
    .line 340
    .line 341
    iput-object v1, v14, Ln3/e;->e:Ln3/f;

    .line 342
    .line 343
    iget-object v0, v0, Ls3/j;->b:Lh3/a;

    .line 344
    .line 345
    invoke-static {v14, v0}, Ln3/e;->a(Ln3/e;Lh3/a;)Li3/j;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    :goto_4
    return-object v0

    .line 350
    :pswitch_5
    new-instance v0, Ln3/d;

    .line 351
    .line 352
    invoke-direct {v0, v14, v11, v12}, Ln3/d;-><init>(Ln3/e;ZI)V

    .line 353
    .line 354
    .line 355
    iput-object v0, v14, Ln3/e;->e:Ln3/f;

    .line 356
    .line 357
    iget-object v0, v14, Ln3/e;->a:Lr3/b;

    .line 358
    .line 359
    check-cast v0, Lr3/d;

    .line 360
    .line 361
    invoke-virtual {v0}, Lr3/d;->k()Ls3/j;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    new-instance v1, Li3/g;

    .line 366
    .line 367
    iget-object v2, v0, Ls3/j;->a:Lh3/a;

    .line 368
    .line 369
    iget-object v0, v0, Ls3/j;->b:Lh3/a;

    .line 370
    .line 371
    invoke-direct {v1, v2, v0, v11}, Li3/g;-><init>(Lh3/a;Lh3/a;I)V

    .line 372
    .line 373
    .line 374
    return-object v1

    .line 375
    :pswitch_6
    iget-object v0, v14, Ln3/e;->a:Lr3/b;

    .line 376
    .line 377
    filled-new-array {v10}, [I

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    check-cast v0, Lr3/d;

    .line 382
    .line 383
    invoke-virtual {v0, v1}, Lr3/d;->b([I)Z

    .line 384
    .line 385
    .line 386
    move-result v0

    .line 387
    iget-object v1, v14, Ln3/e;->a:Lr3/b;

    .line 388
    .line 389
    if-eqz v0, :cond_7

    .line 390
    .line 391
    check-cast v1, Lr3/d;

    .line 392
    .line 393
    invoke-virtual {v1}, Lr3/d;->i()Ls3/j;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    const/16 v2, 0xb

    .line 398
    .line 399
    const/16 v3, 0xa

    .line 400
    .line 401
    filled-new-array {v3, v2}, [I

    .line 402
    .line 403
    .line 404
    move-result-object v2

    .line 405
    invoke-virtual {v1, v2}, Lr3/d;->b([I)Z

    .line 406
    .line 407
    .line 408
    move-result v1

    .line 409
    if-nez v1, :cond_6

    .line 410
    .line 411
    new-instance v0, Ln3/d;

    .line 412
    .line 413
    invoke-direct {v0, v14, v11, v11}, Ln3/d;-><init>(Ln3/e;ZI)V

    .line 414
    .line 415
    .line 416
    iget-object v1, v14, Ln3/e;->c:Lh/a;

    .line 417
    .line 418
    invoke-virtual {v1, v0}, Lh/a;->E(Ljava/lang/Object;)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {v14, v11, v11}, Ln3/e;->d(ZZ)Li3/i;

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    goto :goto_6

    .line 426
    :cond_6
    new-instance v1, Ln3/d;

    .line 427
    .line 428
    invoke-direct {v1, v14, v11, v11}, Ln3/d;-><init>(Ln3/e;ZI)V

    .line 429
    .line 430
    .line 431
    iput-object v1, v14, Ln3/e;->e:Ln3/f;

    .line 432
    .line 433
    iget-object v0, v0, Ls3/j;->b:Lh3/a;

    .line 434
    .line 435
    goto :goto_5

    .line 436
    :cond_7
    new-instance v0, Ln3/d;

    .line 437
    .line 438
    invoke-direct {v0, v14, v11, v11}, Ln3/d;-><init>(Ln3/e;ZI)V

    .line 439
    .line 440
    .line 441
    iput-object v0, v14, Ln3/e;->e:Ln3/f;

    .line 442
    .line 443
    check-cast v1, Lr3/d;

    .line 444
    .line 445
    invoke-virtual {v1}, Lr3/d;->k()Ls3/j;

    .line 446
    .line 447
    .line 448
    move-result-object v0

    .line 449
    iget-object v0, v0, Ls3/j;->a:Lh3/a;

    .line 450
    .line 451
    :goto_5
    invoke-static {v14, v0}, Ln3/e;->a(Ln3/e;Lh3/a;)Li3/j;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    :goto_6
    return-object v0

    .line 456
    :pswitch_7
    iget-object v0, v14, Ln3/e;->a:Lr3/b;

    .line 457
    .line 458
    check-cast v0, Lr3/d;

    .line 459
    .line 460
    invoke-virtual {v0}, Lr3/d;->i()Ls3/j;

    .line 461
    .line 462
    .line 463
    move-result-object v0

    .line 464
    iget-object v1, v14, Ln3/e;->d:Lh/a;

    .line 465
    .line 466
    iget-object v0, v0, Ls3/j;->a:Lh3/a;

    .line 467
    .line 468
    invoke-virtual {v1, v0}, Lh/a;->E(Ljava/lang/Object;)V

    .line 469
    .line 470
    .line 471
    new-instance v0, Ln3/d;

    .line 472
    .line 473
    invoke-direct {v0, v14, v12, v11}, Ln3/d;-><init>(Ln3/e;ZI)V

    .line 474
    .line 475
    .line 476
    invoke-virtual {v0}, Ln3/d;->a()Li3/f;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    return-object v0

    .line 481
    :pswitch_8
    new-instance v0, Ln3/d;

    .line 482
    .line 483
    invoke-direct {v0, v14, v11, v11}, Ln3/d;-><init>(Ln3/e;ZI)V

    .line 484
    .line 485
    .line 486
    iput-object v0, v14, Ln3/e;->e:Ln3/f;

    .line 487
    .line 488
    iget-object v0, v14, Ln3/e;->a:Lr3/b;

    .line 489
    .line 490
    check-cast v0, Lr3/d;

    .line 491
    .line 492
    invoke-virtual {v0}, Lr3/d;->k()Ls3/j;

    .line 493
    .line 494
    .line 495
    move-result-object v0

    .line 496
    iget-object v0, v0, Ls3/j;->a:Lh3/a;

    .line 497
    .line 498
    invoke-static {v14, v0}, Ln3/e;->a(Ln3/e;Lh3/a;)Li3/j;

    .line 499
    .line 500
    .line 501
    move-result-object v0

    .line 502
    return-object v0

    .line 503
    :goto_7
    :pswitch_9
    iget-object v0, v14, Ln3/e;->a:Lr3/b;

    .line 504
    .line 505
    filled-new-array {v4}, [I

    .line 506
    .line 507
    .line 508
    move-result-object v1

    .line 509
    check-cast v0, Lr3/d;

    .line 510
    .line 511
    invoke-virtual {v0, v1}, Lr3/d;->b([I)Z

    .line 512
    .line 513
    .line 514
    move-result v0

    .line 515
    iget-object v1, v14, Ln3/e;->a:Lr3/b;

    .line 516
    .line 517
    if-eqz v0, :cond_8

    .line 518
    .line 519
    check-cast v1, Lr3/d;

    .line 520
    .line 521
    invoke-virtual {v1}, Lr3/d;->i()Ls3/j;

    .line 522
    .line 523
    .line 524
    goto :goto_7

    .line 525
    :cond_8
    filled-new-array {v3}, [I

    .line 526
    .line 527
    .line 528
    move-result-object v0

    .line 529
    check-cast v1, Lr3/d;

    .line 530
    .line 531
    invoke-virtual {v1, v0}, Lr3/d;->b([I)Z

    .line 532
    .line 533
    .line 534
    move-result v0

    .line 535
    iget-object v2, v14, Ln3/e;->c:Lh/a;

    .line 536
    .line 537
    if-nez v0, :cond_15

    .line 538
    .line 539
    invoke-virtual {v1}, Lr3/d;->k()Ls3/j;

    .line 540
    .line 541
    .line 542
    move-result-object v0

    .line 543
    iget-object v0, v0, Ls3/j;->a:Lh3/a;

    .line 544
    .line 545
    new-instance v3, Ljava/util/HashMap;

    .line 546
    .line 547
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 548
    .line 549
    .line 550
    move-object v4, v13

    .line 551
    :cond_9
    :goto_8
    filled-new-array {v6}, [I

    .line 552
    .line 553
    .line 554
    move-result-object v5

    .line 555
    invoke-virtual {v1, v5}, Lr3/d;->b([I)Z

    .line 556
    .line 557
    .line 558
    move-result v5

    .line 559
    if-eqz v5, :cond_f

    .line 560
    .line 561
    invoke-virtual {v1}, Lr3/d;->i()Ls3/j;

    .line 562
    .line 563
    .line 564
    move-result-object v5

    .line 565
    check-cast v5, Ls3/e;

    .line 566
    .line 567
    iget-object v8, v5, Ls3/e;->c:Ljava/lang/String;

    .line 568
    .line 569
    const-string v9, "YAML"

    .line 570
    .line 571
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 572
    .line 573
    .line 574
    move-result v8

    .line 575
    iget-object v9, v5, Ls3/e;->d:Ljava/util/List;

    .line 576
    .line 577
    iget-object v10, v5, Ls3/j;->a:Lh3/a;

    .line 578
    .line 579
    if-eqz v8, :cond_d

    .line 580
    .line 581
    if-nez v4, :cond_c

    .line 582
    .line 583
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 584
    .line 585
    .line 586
    move-result-object v4

    .line 587
    check-cast v4, Ljava/lang/Integer;

    .line 588
    .line 589
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 590
    .line 591
    .line 592
    move-result v4

    .line 593
    if-ne v4, v12, :cond_b

    .line 594
    .line 595
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 596
    .line 597
    .line 598
    move-result-object v4

    .line 599
    check-cast v4, Ljava/lang/Integer;

    .line 600
    .line 601
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 602
    .line 603
    .line 604
    move-result v4

    .line 605
    if-eqz v4, :cond_a

    .line 606
    .line 607
    sget-object v4, Le3/c;->c:Le3/c;

    .line 608
    .line 609
    goto :goto_8

    .line 610
    :cond_a
    sget-object v4, Le3/c;->b:Le3/c;

    .line 611
    .line 612
    goto :goto_8

    .line 613
    :cond_b
    new-instance v0, Ln3/b;

    .line 614
    .line 615
    const-string v1, "found incompatible YAML document (version 1.* is required)"

    .line 616
    .line 617
    invoke-direct {v0, v13, v13, v1, v10}, Ln3/b;-><init>(Ljava/lang/String;Lh3/a;Ljava/lang/String;Lh3/a;)V

    .line 618
    .line 619
    .line 620
    throw v0

    .line 621
    :cond_c
    new-instance v0, Ln3/b;

    .line 622
    .line 623
    const-string v1, "found duplicate YAML directive"

    .line 624
    .line 625
    invoke-direct {v0, v13, v13, v1, v10}, Ln3/b;-><init>(Ljava/lang/String;Lh3/a;Ljava/lang/String;Lh3/a;)V

    .line 626
    .line 627
    .line 628
    throw v0

    .line 629
    :cond_d
    const-string v8, "TAG"

    .line 630
    .line 631
    iget-object v5, v5, Ls3/e;->c:Ljava/lang/String;

    .line 632
    .line 633
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 634
    .line 635
    .line 636
    move-result v5

    .line 637
    if-eqz v5, :cond_9

    .line 638
    .line 639
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 640
    .line 641
    .line 642
    move-result-object v5

    .line 643
    check-cast v5, Ljava/lang/String;

    .line 644
    .line 645
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 646
    .line 647
    .line 648
    move-result-object v8

    .line 649
    check-cast v8, Ljava/lang/String;

    .line 650
    .line 651
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 652
    .line 653
    .line 654
    move-result v9

    .line 655
    if-nez v9, :cond_e

    .line 656
    .line 657
    invoke-virtual {v3, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    .line 659
    .line 660
    goto :goto_8

    .line 661
    :cond_e
    new-instance v0, Ln3/b;

    .line 662
    .line 663
    const-string v1, "duplicate tag handle "

    .line 664
    .line 665
    invoke-static {v1, v5}, La1/b;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 666
    .line 667
    .line 668
    move-result-object v1

    .line 669
    invoke-direct {v0, v13, v13, v1, v10}, Ln3/b;-><init>(Ljava/lang/String;Lh3/a;Ljava/lang/String;Lh3/a;)V

    .line 670
    .line 671
    .line 672
    throw v0

    .line 673
    :cond_f
    if-nez v4, :cond_10

    .line 674
    .line 675
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    .line 676
    .line 677
    .line 678
    move-result v5

    .line 679
    if-nez v5, :cond_13

    .line 680
    .line 681
    :cond_10
    sget-object v5, Ln3/e;->g:Ljava/util/HashMap;

    .line 682
    .line 683
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 684
    .line 685
    .line 686
    move-result-object v8

    .line 687
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 688
    .line 689
    .line 690
    move-result-object v8

    .line 691
    :cond_11
    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 692
    .line 693
    .line 694
    move-result v9

    .line 695
    if-eqz v9, :cond_12

    .line 696
    .line 697
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 698
    .line 699
    .line 700
    move-result-object v9

    .line 701
    check-cast v9, Ljava/lang/String;

    .line 702
    .line 703
    invoke-virtual {v3, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 704
    .line 705
    .line 706
    move-result v10

    .line 707
    if-nez v10, :cond_11

    .line 708
    .line 709
    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    .line 711
    .line 712
    move-result-object v10

    .line 713
    invoke-virtual {v3, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    .line 715
    .line 716
    goto :goto_9

    .line 717
    :cond_12
    new-instance v5, Ln2/a0;

    .line 718
    .line 719
    invoke-direct {v5, v6, v4, v3}, Ln2/a0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 720
    .line 721
    .line 722
    iput-object v5, v14, Ln3/e;->f:Ln2/a0;

    .line 723
    .line 724
    :cond_13
    iget-object v3, v14, Ln3/e;->f:Ln2/a0;

    .line 725
    .line 726
    const/16 v4, 0x9

    .line 727
    .line 728
    filled-new-array {v4}, [I

    .line 729
    .line 730
    .line 731
    move-result-object v4

    .line 732
    invoke-virtual {v1, v4}, Lr3/d;->b([I)Z

    .line 733
    .line 734
    .line 735
    move-result v4

    .line 736
    if-eqz v4, :cond_14

    .line 737
    .line 738
    invoke-virtual {v1}, Lr3/d;->i()Ls3/j;

    .line 739
    .line 740
    .line 741
    move-result-object v1

    .line 742
    iget-object v1, v1, Ls3/j;->b:Lh3/a;

    .line 743
    .line 744
    new-instance v4, Li3/e;

    .line 745
    .line 746
    iget-object v3, v3, Ln2/a0;->g:Ljava/lang/Object;

    .line 747
    .line 748
    invoke-direct {v4, v0, v1}, Li3/e;-><init>(Lh3/a;Lh3/a;)V

    .line 749
    .line 750
    .line 751
    new-instance v0, Ln3/c;

    .line 752
    .line 753
    invoke-direct {v0, v14, v6, v11}, Ln3/c;-><init>(Ln3/e;II)V

    .line 754
    .line 755
    .line 756
    invoke-virtual {v2, v0}, Lh/a;->E(Ljava/lang/Object;)V

    .line 757
    .line 758
    .line 759
    new-instance v0, Ln3/c;

    .line 760
    .line 761
    const/4 v1, 0x6

    .line 762
    invoke-direct {v0, v14, v1, v11}, Ln3/c;-><init>(Ln3/e;II)V

    .line 763
    .line 764
    .line 765
    iput-object v0, v14, Ln3/e;->e:Ln3/f;

    .line 766
    .line 767
    goto :goto_a

    .line 768
    :cond_14
    new-instance v0, Ln3/b;

    .line 769
    .line 770
    new-instance v2, Ljava/lang/StringBuilder;

    .line 771
    .line 772
    const-string v3, "expected \'<document start>\', but found \'"

    .line 773
    .line 774
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 775
    .line 776
    .line 777
    invoke-virtual {v1}, Lr3/d;->k()Ls3/j;

    .line 778
    .line 779
    .line 780
    move-result-object v3

    .line 781
    invoke-virtual {v3}, Ls3/j;->a()I

    .line 782
    .line 783
    .line 784
    move-result v3

    .line 785
    invoke-static {v3}, La1/b;->p(I)Ljava/lang/String;

    .line 786
    .line 787
    .line 788
    move-result-object v3

    .line 789
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    .line 791
    .line 792
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    .line 794
    .line 795
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 796
    .line 797
    .line 798
    move-result-object v2

    .line 799
    invoke-virtual {v1}, Lr3/d;->k()Ls3/j;

    .line 800
    .line 801
    .line 802
    move-result-object v1

    .line 803
    iget-object v1, v1, Ls3/j;->a:Lh3/a;

    .line 804
    .line 805
    invoke-direct {v0, v13, v13, v2, v1}, Ln3/b;-><init>(Ljava/lang/String;Lh3/a;Ljava/lang/String;Lh3/a;)V

    .line 806
    .line 807
    .line 808
    throw v0

    .line 809
    :cond_15
    invoke-virtual {v1}, Lr3/d;->i()Ls3/j;

    .line 810
    .line 811
    .line 812
    move-result-object v0

    .line 813
    check-cast v0, Ls3/g;

    .line 814
    .line 815
    new-instance v4, Li3/l;

    .line 816
    .line 817
    iget-object v1, v0, Ls3/j;->a:Lh3/a;

    .line 818
    .line 819
    iget-object v0, v0, Ls3/j;->b:Lh3/a;

    .line 820
    .line 821
    invoke-direct {v4, v1, v0, v11}, Li3/l;-><init>(Lh3/a;Lh3/a;I)V

    .line 822
    .line 823
    .line 824
    iget-object v0, v2, Lh/a;->g:Ljava/lang/Object;

    .line 825
    .line 826
    check-cast v0, Ljava/util/ArrayList;

    .line 827
    .line 828
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 829
    .line 830
    .line 831
    move-result v0

    .line 832
    if-eqz v0, :cond_17

    .line 833
    .line 834
    iget-object v0, v14, Ln3/e;->d:Lh/a;

    .line 835
    .line 836
    iget-object v1, v0, Lh/a;->g:Ljava/lang/Object;

    .line 837
    .line 838
    check-cast v1, Ljava/util/ArrayList;

    .line 839
    .line 840
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 841
    .line 842
    .line 843
    move-result v1

    .line 844
    if-eqz v1, :cond_16

    .line 845
    .line 846
    iput-object v13, v14, Ln3/e;->e:Ln3/f;

    .line 847
    .line 848
    :goto_a
    return-object v4

    .line 849
    :cond_16
    new-instance v1, Lh3/c;

    .line 850
    .line 851
    new-instance v2, Ljava/lang/StringBuilder;

    .line 852
    .line 853
    const-string v3, "Unexpected end of stream. Marks left: "

    .line 854
    .line 855
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 856
    .line 857
    .line 858
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 859
    .line 860
    .line 861
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 862
    .line 863
    .line 864
    move-result-object v0

    .line 865
    invoke-direct {v1, v0}, Lh3/c;-><init>(Ljava/lang/String;)V

    .line 866
    .line 867
    .line 868
    throw v1

    .line 869
    :cond_17
    new-instance v0, Lh3/c;

    .line 870
    .line 871
    new-instance v1, Ljava/lang/StringBuilder;

    .line 872
    .line 873
    const-string v3, "Unexpected end of stream. States left: "

    .line 874
    .line 875
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 876
    .line 877
    .line 878
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 879
    .line 880
    .line 881
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 882
    .line 883
    .line 884
    move-result-object v1

    .line 885
    invoke-direct {v0, v1}, Lh3/c;-><init>(Ljava/lang/String;)V

    .line 886
    .line 887
    .line 888
    throw v0

    .line 889
    :pswitch_a
    iget-object v0, v14, Ln3/e;->a:Lr3/b;

    .line 890
    .line 891
    check-cast v0, Lr3/d;

    .line 892
    .line 893
    invoke-virtual {v0}, Lr3/d;->k()Ls3/j;

    .line 894
    .line 895
    .line 896
    move-result-object v0

    .line 897
    iget-object v0, v0, Ls3/j;->a:Lh3/a;

    .line 898
    .line 899
    filled-new-array {v4}, [I

    .line 900
    .line 901
    .line 902
    move-result-object v1

    .line 903
    iget-object v2, v14, Ln3/e;->a:Lr3/b;

    .line 904
    .line 905
    move-object v3, v2

    .line 906
    check-cast v3, Lr3/d;

    .line 907
    .line 908
    invoke-virtual {v3, v1}, Lr3/d;->b([I)Z

    .line 909
    .line 910
    .line 911
    move-result v1

    .line 912
    if-eqz v1, :cond_18

    .line 913
    .line 914
    check-cast v2, Lr3/d;

    .line 915
    .line 916
    invoke-virtual {v2}, Lr3/d;->i()Ls3/j;

    .line 917
    .line 918
    .line 919
    move-result-object v1

    .line 920
    iget-object v1, v1, Ls3/j;->b:Lh3/a;

    .line 921
    .line 922
    goto :goto_b

    .line 923
    :cond_18
    move-object v1, v0

    .line 924
    :goto_b
    new-instance v2, Li3/d;

    .line 925
    .line 926
    invoke-direct {v2, v0, v1}, Li3/d;-><init>(Lh3/a;Lh3/a;)V

    .line 927
    .line 928
    .line 929
    new-instance v0, Ln3/c;

    .line 930
    .line 931
    invoke-direct {v0, v14, v4, v11}, Ln3/c;-><init>(Ln3/e;II)V

    .line 932
    .line 933
    .line 934
    iput-object v0, v14, Ln3/e;->e:Ln3/f;

    .line 935
    .line 936
    return-object v2

    .line 937
    :pswitch_b
    iget-object v0, v14, Ln3/e;->a:Lr3/b;

    .line 938
    .line 939
    const/16 v1, 0x9

    .line 940
    .line 941
    filled-new-array {v6, v1, v4, v3}, [I

    .line 942
    .line 943
    .line 944
    move-result-object v1

    .line 945
    check-cast v0, Lr3/d;

    .line 946
    .line 947
    invoke-virtual {v0, v1}, Lr3/d;->b([I)Z

    .line 948
    .line 949
    .line 950
    move-result v0

    .line 951
    if-eqz v0, :cond_19

    .line 952
    .line 953
    iget-object v0, v14, Ln3/e;->a:Lr3/b;

    .line 954
    .line 955
    check-cast v0, Lr3/d;

    .line 956
    .line 957
    invoke-virtual {v0}, Lr3/d;->k()Ls3/j;

    .line 958
    .line 959
    .line 960
    move-result-object v0

    .line 961
    iget-object v0, v0, Ls3/j;->a:Lh3/a;

    .line 962
    .line 963
    invoke-static {v14, v0}, Ln3/e;->a(Ln3/e;Lh3/a;)Li3/j;

    .line 964
    .line 965
    .line 966
    move-result-object v0

    .line 967
    iget-object v1, v14, Ln3/e;->c:Lh/a;

    .line 968
    .line 969
    invoke-virtual {v1}, Lh/a;->D()Ljava/lang/Object;

    .line 970
    .line 971
    .line 972
    move-result-object v1

    .line 973
    check-cast v1, Ln3/f;

    .line 974
    .line 975
    iput-object v1, v14, Ln3/e;->e:Ln3/f;

    .line 976
    .line 977
    goto :goto_c

    .line 978
    :cond_19
    new-instance v0, Ln3/c;

    .line 979
    .line 980
    invoke-direct {v0, v14, v9, v11}, Ln3/c;-><init>(Ln3/e;II)V

    .line 981
    .line 982
    .line 983
    invoke-virtual {v0}, Ln3/c;->a()Li3/f;

    .line 984
    .line 985
    .line 986
    move-result-object v0

    .line 987
    :goto_c
    return-object v0

    .line 988
    :pswitch_c
    iget-object v0, v14, Ln3/e;->a:Lr3/b;

    .line 989
    .line 990
    check-cast v0, Lr3/d;

    .line 991
    .line 992
    invoke-virtual {v0}, Lr3/d;->i()Ls3/j;

    .line 993
    .line 994
    .line 995
    move-result-object v0

    .line 996
    iget-object v2, v14, Ln3/e;->d:Lh/a;

    .line 997
    .line 998
    iget-object v0, v0, Ls3/j;->a:Lh3/a;

    .line 999
    .line 1000
    invoke-virtual {v2, v0}, Lh/a;->E(Ljava/lang/Object;)V

    .line 1001
    .line 1002
    .line 1003
    new-instance v0, Ln3/c;

    .line 1004
    .line 1005
    invoke-direct {v0, v14, v1, v11}, Ln3/c;-><init>(Ln3/e;II)V

    .line 1006
    .line 1007
    .line 1008
    invoke-virtual {v0}, Ln3/c;->a()Li3/f;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v0

    .line 1012
    return-object v0

    .line 1013
    :pswitch_d
    iget-object v2, v14, Ln3/e;->a:Lr3/b;

    .line 1014
    .line 1015
    filled-new-array {v1}, [I

    .line 1016
    .line 1017
    .line 1018
    move-result-object v3

    .line 1019
    check-cast v2, Lr3/d;

    .line 1020
    .line 1021
    invoke-virtual {v2, v3}, Lr3/d;->b([I)Z

    .line 1022
    .line 1023
    .line 1024
    move-result v2

    .line 1025
    iget-object v3, v14, Ln3/e;->c:Lh/a;

    .line 1026
    .line 1027
    iget-object v4, v14, Ln3/e;->a:Lr3/b;

    .line 1028
    .line 1029
    if-eqz v2, :cond_1b

    .line 1030
    .line 1031
    check-cast v4, Lr3/d;

    .line 1032
    .line 1033
    invoke-virtual {v4}, Lr3/d;->i()Ls3/j;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v0

    .line 1037
    check-cast v0, Ls3/d;

    .line 1038
    .line 1039
    filled-new-array {v1, v9}, [I

    .line 1040
    .line 1041
    .line 1042
    move-result-object v2

    .line 1043
    invoke-virtual {v4, v2}, Lr3/d;->b([I)Z

    .line 1044
    .line 1045
    .line 1046
    move-result v2

    .line 1047
    if-nez v2, :cond_1a

    .line 1048
    .line 1049
    new-instance v0, Ln3/c;

    .line 1050
    .line 1051
    invoke-direct {v0, v14, v1}, Ln3/c;-><init>(Ln3/e;I)V

    .line 1052
    .line 1053
    .line 1054
    invoke-virtual {v3, v0}, Lh/a;->E(Ljava/lang/Object;)V

    .line 1055
    .line 1056
    .line 1057
    new-instance v0, Ln3/c;

    .line 1058
    .line 1059
    invoke-direct {v0, v14, v9, v11}, Ln3/c;-><init>(Ln3/e;II)V

    .line 1060
    .line 1061
    .line 1062
    invoke-virtual {v0}, Ln3/c;->a()Li3/f;

    .line 1063
    .line 1064
    .line 1065
    move-result-object v0

    .line 1066
    goto :goto_d

    .line 1067
    :cond_1a
    new-instance v2, Ln3/c;

    .line 1068
    .line 1069
    invoke-direct {v2, v14, v1}, Ln3/c;-><init>(Ln3/e;I)V

    .line 1070
    .line 1071
    .line 1072
    iput-object v2, v14, Ln3/e;->e:Ln3/f;

    .line 1073
    .line 1074
    iget-object v0, v0, Ls3/j;->b:Lh3/a;

    .line 1075
    .line 1076
    invoke-static {v14, v0}, Ln3/e;->a(Ln3/e;Lh3/a;)Li3/j;

    .line 1077
    .line 1078
    .line 1079
    move-result-object v0

    .line 1080
    goto :goto_d

    .line 1081
    :cond_1b
    filled-new-array {v9}, [I

    .line 1082
    .line 1083
    .line 1084
    move-result-object v1

    .line 1085
    check-cast v4, Lr3/d;

    .line 1086
    .line 1087
    invoke-virtual {v4, v1}, Lr3/d;->b([I)Z

    .line 1088
    .line 1089
    .line 1090
    move-result v1

    .line 1091
    iget-object v2, v14, Ln3/e;->d:Lh/a;

    .line 1092
    .line 1093
    if-eqz v1, :cond_1c

    .line 1094
    .line 1095
    invoke-virtual {v4}, Lr3/d;->i()Ls3/j;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v0

    .line 1099
    new-instance v1, Li3/g;

    .line 1100
    .line 1101
    iget-object v4, v0, Ls3/j;->a:Lh3/a;

    .line 1102
    .line 1103
    iget-object v0, v0, Ls3/j;->b:Lh3/a;

    .line 1104
    .line 1105
    invoke-direct {v1, v4, v0, v12}, Li3/g;-><init>(Lh3/a;Lh3/a;I)V

    .line 1106
    .line 1107
    .line 1108
    invoke-virtual {v3}, Lh/a;->D()Ljava/lang/Object;

    .line 1109
    .line 1110
    .line 1111
    move-result-object v0

    .line 1112
    check-cast v0, Ln3/f;

    .line 1113
    .line 1114
    iput-object v0, v14, Ln3/e;->e:Ln3/f;

    .line 1115
    .line 1116
    invoke-virtual {v2}, Lh/a;->D()Ljava/lang/Object;

    .line 1117
    .line 1118
    .line 1119
    move-object v0, v1

    .line 1120
    :goto_d
    return-object v0

    .line 1121
    :cond_1c
    invoke-virtual {v4}, Lr3/d;->k()Ls3/j;

    .line 1122
    .line 1123
    .line 1124
    move-result-object v1

    .line 1125
    new-instance v3, Ln3/b;

    .line 1126
    .line 1127
    invoke-virtual {v2}, Lh/a;->D()Ljava/lang/Object;

    .line 1128
    .line 1129
    .line 1130
    move-result-object v2

    .line 1131
    check-cast v2, Lh3/a;

    .line 1132
    .line 1133
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1134
    .line 1135
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1136
    .line 1137
    .line 1138
    invoke-virtual {v1}, Ls3/j;->a()I

    .line 1139
    .line 1140
    .line 1141
    move-result v0

    .line 1142
    invoke-static {v0}, La1/b;->p(I)Ljava/lang/String;

    .line 1143
    .line 1144
    .line 1145
    move-result-object v0

    .line 1146
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1147
    .line 1148
    .line 1149
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1150
    .line 1151
    .line 1152
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1153
    .line 1154
    .line 1155
    move-result-object v0

    .line 1156
    const-string v4, "while parsing a block collection"

    .line 1157
    .line 1158
    iget-object v1, v1, Ls3/j;->a:Lh3/a;

    .line 1159
    .line 1160
    invoke-direct {v3, v4, v2, v0, v1}, Ln3/b;-><init>(Ljava/lang/String;Lh3/a;Ljava/lang/String;Lh3/a;)V

    .line 1161
    .line 1162
    .line 1163
    throw v3

    .line 1164
    :pswitch_e
    invoke-virtual {v14, v12, v11}, Ln3/e;->d(ZZ)Li3/i;

    .line 1165
    .line 1166
    .line 1167
    move-result-object v0

    .line 1168
    return-object v0

    .line 1169
    :pswitch_f
    iget-object v0, v14, Ln3/e;->a:Lr3/b;

    .line 1170
    .line 1171
    filled-new-array {v10}, [I

    .line 1172
    .line 1173
    .line 1174
    move-result-object v1

    .line 1175
    check-cast v0, Lr3/d;

    .line 1176
    .line 1177
    invoke-virtual {v0, v1}, Lr3/d;->b([I)Z

    .line 1178
    .line 1179
    .line 1180
    move-result v0

    .line 1181
    iget-object v1, v14, Ln3/e;->a:Lr3/b;

    .line 1182
    .line 1183
    if-eqz v0, :cond_1e

    .line 1184
    .line 1185
    check-cast v1, Lr3/d;

    .line 1186
    .line 1187
    invoke-virtual {v1}, Lr3/d;->i()Ls3/j;

    .line 1188
    .line 1189
    .line 1190
    move-result-object v0

    .line 1191
    filled-new-array {v8, v10, v9}, [I

    .line 1192
    .line 1193
    .line 1194
    move-result-object v2

    .line 1195
    invoke-virtual {v1, v2}, Lr3/d;->b([I)Z

    .line 1196
    .line 1197
    .line 1198
    move-result v1

    .line 1199
    if-nez v1, :cond_1d

    .line 1200
    .line 1201
    new-instance v0, Ln3/c;

    .line 1202
    .line 1203
    invoke-direct {v0, v14, v12, v11}, Ln3/c;-><init>(Ln3/e;II)V

    .line 1204
    .line 1205
    .line 1206
    iget-object v1, v14, Ln3/e;->c:Lh/a;

    .line 1207
    .line 1208
    invoke-virtual {v1, v0}, Lh/a;->E(Ljava/lang/Object;)V

    .line 1209
    .line 1210
    .line 1211
    invoke-virtual {v14, v12, v12}, Ln3/e;->d(ZZ)Li3/i;

    .line 1212
    .line 1213
    .line 1214
    move-result-object v0

    .line 1215
    goto :goto_f

    .line 1216
    :cond_1d
    new-instance v1, Ln3/c;

    .line 1217
    .line 1218
    invoke-direct {v1, v14, v12, v11}, Ln3/c;-><init>(Ln3/e;II)V

    .line 1219
    .line 1220
    .line 1221
    iput-object v1, v14, Ln3/e;->e:Ln3/f;

    .line 1222
    .line 1223
    iget-object v0, v0, Ls3/j;->b:Lh3/a;

    .line 1224
    .line 1225
    goto :goto_e

    .line 1226
    :cond_1e
    new-instance v0, Ln3/c;

    .line 1227
    .line 1228
    invoke-direct {v0, v14, v12, v11}, Ln3/c;-><init>(Ln3/e;II)V

    .line 1229
    .line 1230
    .line 1231
    iput-object v0, v14, Ln3/e;->e:Ln3/f;

    .line 1232
    .line 1233
    check-cast v1, Lr3/d;

    .line 1234
    .line 1235
    invoke-virtual {v1}, Lr3/d;->k()Ls3/j;

    .line 1236
    .line 1237
    .line 1238
    move-result-object v0

    .line 1239
    iget-object v0, v0, Ls3/j;->a:Lh3/a;

    .line 1240
    .line 1241
    :goto_e
    invoke-static {v14, v0}, Ln3/e;->a(Ln3/e;Lh3/a;)Li3/j;

    .line 1242
    .line 1243
    .line 1244
    move-result-object v0

    .line 1245
    :goto_f
    return-object v0

    .line 1246
    :pswitch_10
    iget-object v1, v14, Ln3/e;->a:Lr3/b;

    .line 1247
    .line 1248
    filled-new-array {v8}, [I

    .line 1249
    .line 1250
    .line 1251
    move-result-object v2

    .line 1252
    check-cast v1, Lr3/d;

    .line 1253
    .line 1254
    invoke-virtual {v1, v2}, Lr3/d;->b([I)Z

    .line 1255
    .line 1256
    .line 1257
    move-result v1

    .line 1258
    iget-object v2, v14, Ln3/e;->c:Lh/a;

    .line 1259
    .line 1260
    iget-object v3, v14, Ln3/e;->a:Lr3/b;

    .line 1261
    .line 1262
    if-eqz v1, :cond_20

    .line 1263
    .line 1264
    check-cast v3, Lr3/d;

    .line 1265
    .line 1266
    invoke-virtual {v3}, Lr3/d;->i()Ls3/j;

    .line 1267
    .line 1268
    .line 1269
    move-result-object v0

    .line 1270
    filled-new-array {v8, v10, v9}, [I

    .line 1271
    .line 1272
    .line 1273
    move-result-object v1

    .line 1274
    invoke-virtual {v3, v1}, Lr3/d;->b([I)Z

    .line 1275
    .line 1276
    .line 1277
    move-result v1

    .line 1278
    const/4 v3, 0x2

    .line 1279
    if-nez v1, :cond_1f

    .line 1280
    .line 1281
    new-instance v0, Ln3/c;

    .line 1282
    .line 1283
    invoke-direct {v0, v14, v3, v11}, Ln3/c;-><init>(Ln3/e;II)V

    .line 1284
    .line 1285
    .line 1286
    invoke-virtual {v2, v0}, Lh/a;->E(Ljava/lang/Object;)V

    .line 1287
    .line 1288
    .line 1289
    invoke-virtual {v14, v12, v12}, Ln3/e;->d(ZZ)Li3/i;

    .line 1290
    .line 1291
    .line 1292
    move-result-object v0

    .line 1293
    goto :goto_10

    .line 1294
    :cond_1f
    new-instance v1, Ln3/c;

    .line 1295
    .line 1296
    invoke-direct {v1, v14, v3, v11}, Ln3/c;-><init>(Ln3/e;II)V

    .line 1297
    .line 1298
    .line 1299
    iput-object v1, v14, Ln3/e;->e:Ln3/f;

    .line 1300
    .line 1301
    iget-object v0, v0, Ls3/j;->b:Lh3/a;

    .line 1302
    .line 1303
    invoke-static {v14, v0}, Ln3/e;->a(Ln3/e;Lh3/a;)Li3/j;

    .line 1304
    .line 1305
    .line 1306
    move-result-object v0

    .line 1307
    goto :goto_10

    .line 1308
    :cond_20
    filled-new-array {v9}, [I

    .line 1309
    .line 1310
    .line 1311
    move-result-object v1

    .line 1312
    check-cast v3, Lr3/d;

    .line 1313
    .line 1314
    invoke-virtual {v3, v1}, Lr3/d;->b([I)Z

    .line 1315
    .line 1316
    .line 1317
    move-result v1

    .line 1318
    iget-object v4, v14, Ln3/e;->d:Lh/a;

    .line 1319
    .line 1320
    if-eqz v1, :cond_21

    .line 1321
    .line 1322
    invoke-virtual {v3}, Lr3/d;->i()Ls3/j;

    .line 1323
    .line 1324
    .line 1325
    move-result-object v0

    .line 1326
    new-instance v1, Li3/g;

    .line 1327
    .line 1328
    iget-object v3, v0, Ls3/j;->a:Lh3/a;

    .line 1329
    .line 1330
    iget-object v0, v0, Ls3/j;->b:Lh3/a;

    .line 1331
    .line 1332
    invoke-direct {v1, v3, v0, v11}, Li3/g;-><init>(Lh3/a;Lh3/a;I)V

    .line 1333
    .line 1334
    .line 1335
    invoke-virtual {v2}, Lh/a;->D()Ljava/lang/Object;

    .line 1336
    .line 1337
    .line 1338
    move-result-object v0

    .line 1339
    check-cast v0, Ln3/f;

    .line 1340
    .line 1341
    iput-object v0, v14, Ln3/e;->e:Ln3/f;

    .line 1342
    .line 1343
    invoke-virtual {v4}, Lh/a;->D()Ljava/lang/Object;

    .line 1344
    .line 1345
    .line 1346
    move-object v0, v1

    .line 1347
    :goto_10
    return-object v0

    .line 1348
    :cond_21
    invoke-virtual {v3}, Lr3/d;->k()Ls3/j;

    .line 1349
    .line 1350
    .line 1351
    move-result-object v1

    .line 1352
    new-instance v2, Ln3/b;

    .line 1353
    .line 1354
    invoke-virtual {v4}, Lh/a;->D()Ljava/lang/Object;

    .line 1355
    .line 1356
    .line 1357
    move-result-object v3

    .line 1358
    check-cast v3, Lh3/a;

    .line 1359
    .line 1360
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1361
    .line 1362
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1363
    .line 1364
    .line 1365
    invoke-virtual {v1}, Ls3/j;->a()I

    .line 1366
    .line 1367
    .line 1368
    move-result v0

    .line 1369
    invoke-static {v0}, La1/b;->p(I)Ljava/lang/String;

    .line 1370
    .line 1371
    .line 1372
    move-result-object v0

    .line 1373
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1374
    .line 1375
    .line 1376
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1377
    .line 1378
    .line 1379
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1380
    .line 1381
    .line 1382
    move-result-object v0

    .line 1383
    const-string v4, "while parsing a block mapping"

    .line 1384
    .line 1385
    iget-object v1, v1, Ls3/j;->a:Lh3/a;

    .line 1386
    .line 1387
    invoke-direct {v2, v4, v3, v0, v1}, Ln3/b;-><init>(Ljava/lang/String;Lh3/a;Ljava/lang/String;Lh3/a;)V

    .line 1388
    .line 1389
    .line 1390
    throw v2

    .line 1391
    :pswitch_11
    iget-object v0, v14, Ln3/e;->a:Lr3/b;

    .line 1392
    .line 1393
    check-cast v0, Lr3/d;

    .line 1394
    .line 1395
    invoke-virtual {v0}, Lr3/d;->i()Ls3/j;

    .line 1396
    .line 1397
    .line 1398
    move-result-object v0

    .line 1399
    iget-object v1, v14, Ln3/e;->d:Lh/a;

    .line 1400
    .line 1401
    iget-object v0, v0, Ls3/j;->a:Lh3/a;

    .line 1402
    .line 1403
    invoke-virtual {v1, v0}, Lh/a;->E(Ljava/lang/Object;)V

    .line 1404
    .line 1405
    .line 1406
    new-instance v0, Ln3/c;

    .line 1407
    .line 1408
    invoke-direct {v0, v14, v12, v11}, Ln3/c;-><init>(Ln3/e;II)V

    .line 1409
    .line 1410
    .line 1411
    invoke-virtual {v0}, Ln3/c;->a()Li3/f;

    .line 1412
    .line 1413
    .line 1414
    move-result-object v0

    .line 1415
    return-object v0

    .line 1416
    :goto_11
    iget-object v0, v14, Ln3/e;->a:Lr3/b;

    .line 1417
    .line 1418
    check-cast v0, Lr3/d;

    .line 1419
    .line 1420
    invoke-virtual {v0}, Lr3/d;->i()Ls3/j;

    .line 1421
    .line 1422
    .line 1423
    move-result-object v0

    .line 1424
    check-cast v0, Ls3/h;

    .line 1425
    .line 1426
    new-instance v1, Li3/l;

    .line 1427
    .line 1428
    iget-object v2, v0, Ls3/j;->a:Lh3/a;

    .line 1429
    .line 1430
    iget-object v0, v0, Ls3/j;->b:Lh3/a;

    .line 1431
    .line 1432
    invoke-direct {v1, v2, v0, v12}, Li3/l;-><init>(Lh3/a;Lh3/a;I)V

    .line 1433
    .line 1434
    .line 1435
    new-instance v0, Ln3/c;

    .line 1436
    .line 1437
    const/16 v2, 0x10

    .line 1438
    .line 1439
    invoke-direct {v0, v14, v2, v11}, Ln3/c;-><init>(Ln3/e;II)V

    .line 1440
    .line 1441
    .line 1442
    iput-object v0, v14, Ln3/e;->e:Ln3/f;

    .line 1443
    .line 1444
    return-object v1

    .line 1445
    :pswitch_data_0
    .packed-switch 0x0
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
