.class public final Lu1/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static j:J

.field public static k:J

.field public static l:J


# instance fields
.field public a:I

.field public b:Lz1/b;

.field public c:F

.field public d:F

.field public e:I

.field public f:I

.field public g:J

.field public h:J

.field public i:F


# direct methods
.method public constructor <init>(Lz1/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu1/w;->b:Lz1/b;

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/MotionEvent;
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lu1/w;->a:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-object v2

    .line 9
    :cond_0
    iget-object v3, v0, Lu1/w;->b:Lz1/b;

    .line 10
    .line 11
    instance-of v4, v3, Lz1/a;

    .line 12
    .line 13
    if-nez v4, :cond_1

    .line 14
    .line 15
    const-string v1, "sdf"

    .line 16
    .line 17
    const-string v3, "Motion events must have cartesian coordinates"

    .line 18
    .line 19
    invoke-static {v1, v3}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-object v2

    .line 23
    :cond_1
    check-cast v3, Lz1/a;

    .line 24
    .line 25
    invoke-static {v1}, Lk0/c;->b(I)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/4 v4, 0x1

    .line 30
    const/4 v5, 0x3

    .line 31
    packed-switch v1, :pswitch_data_0

    .line 32
    .line 33
    .line 34
    return-object v2

    .line 35
    :pswitch_0
    iget v1, v3, Lz1/a;->a:F

    .line 36
    .line 37
    iget v2, v3, Lz1/a;->b:F

    .line 38
    .line 39
    iget-wide v7, v0, Lu1/w;->h:J

    .line 40
    .line 41
    sget-object v3, Lu1/p;->a:Landroid/view/MotionEvent$PointerCoords;

    .line 42
    .line 43
    iput v1, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 44
    .line 45
    iput v2, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 46
    .line 47
    sget-object v1, Lu1/p;->c:Landroid/view/MotionEvent$PointerProperties;

    .line 48
    .line 49
    iput v4, v1, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 50
    .line 51
    const/16 v9, 0xa

    .line 52
    .line 53
    const/4 v10, 0x1

    .line 54
    sget-object v11, Lu1/p;->d:[Landroid/view/MotionEvent$PointerProperties;

    .line 55
    .line 56
    sget-object v12, Lu1/p;->b:[Landroid/view/MotionEvent$PointerCoords;

    .line 57
    .line 58
    const/4 v13, 0x0

    .line 59
    const/4 v14, 0x0

    .line 60
    const/4 v15, 0x0

    .line 61
    const/16 v16, 0x0

    .line 62
    .line 63
    const/16 v17, 0x0

    .line 64
    .line 65
    const/16 v18, 0x0

    .line 66
    .line 67
    const/16 v19, 0x2

    .line 68
    .line 69
    const/16 v20, 0x0

    .line 70
    .line 71
    move-wide v5, v7

    .line 72
    invoke-static/range {v5 .. v20}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    return-object v1

    .line 77
    :pswitch_1
    iget v1, v3, Lz1/a;->a:F

    .line 78
    .line 79
    iget v2, v3, Lz1/a;->b:F

    .line 80
    .line 81
    iget-wide v6, v0, Lu1/w;->g:J

    .line 82
    .line 83
    iget-wide v8, v0, Lu1/w;->h:J

    .line 84
    .line 85
    sget-object v3, Lu1/p;->a:Landroid/view/MotionEvent$PointerCoords;

    .line 86
    .line 87
    iput v1, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 88
    .line 89
    iput v2, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 90
    .line 91
    sget-object v1, Lu1/p;->c:Landroid/view/MotionEvent$PointerProperties;

    .line 92
    .line 93
    iput v5, v1, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 94
    .line 95
    const/4 v10, 0x1

    .line 96
    const/4 v11, 0x1

    .line 97
    sget-object v12, Lu1/p;->d:[Landroid/view/MotionEvent$PointerProperties;

    .line 98
    .line 99
    sget-object v13, Lu1/p;->b:[Landroid/view/MotionEvent$PointerCoords;

    .line 100
    .line 101
    const/4 v14, 0x0

    .line 102
    const/4 v15, 0x2

    .line 103
    const/16 v16, 0x0

    .line 104
    .line 105
    const/16 v17, 0x0

    .line 106
    .line 107
    const/16 v18, 0x0

    .line 108
    .line 109
    const/16 v19, 0x0

    .line 110
    .line 111
    const/16 v20, 0x0

    .line 112
    .line 113
    const/16 v21, 0x0

    .line 114
    .line 115
    invoke-static/range {v6 .. v21}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    return-object v1

    .line 120
    :pswitch_2
    iget v1, v3, Lz1/a;->a:F

    .line 121
    .line 122
    iget v2, v3, Lz1/a;->b:F

    .line 123
    .line 124
    iget-wide v8, v0, Lu1/w;->h:J

    .line 125
    .line 126
    sget-object v3, Lu1/p;->a:Landroid/view/MotionEvent$PointerCoords;

    .line 127
    .line 128
    iput v1, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 129
    .line 130
    iput v2, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 131
    .line 132
    sget-object v1, Lu1/p;->c:Landroid/view/MotionEvent$PointerProperties;

    .line 133
    .line 134
    iput v5, v1, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 135
    .line 136
    const/4 v10, 0x0

    .line 137
    const/4 v11, 0x1

    .line 138
    sget-object v12, Lu1/p;->d:[Landroid/view/MotionEvent$PointerProperties;

    .line 139
    .line 140
    sget-object v13, Lu1/p;->b:[Landroid/view/MotionEvent$PointerCoords;

    .line 141
    .line 142
    const/4 v14, 0x0

    .line 143
    const/4 v15, 0x2

    .line 144
    const/16 v16, 0x0

    .line 145
    .line 146
    const/16 v17, 0x0

    .line 147
    .line 148
    const/16 v18, 0x0

    .line 149
    .line 150
    const/16 v19, 0x0

    .line 151
    .line 152
    const/16 v20, 0x0

    .line 153
    .line 154
    const/16 v21, 0x0

    .line 155
    .line 156
    move-wide v6, v8

    .line 157
    invoke-static/range {v6 .. v21}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    return-object v1

    .line 162
    :pswitch_3
    iget v1, v3, Lz1/a;->a:F

    .line 163
    .line 164
    iget v2, v3, Lz1/a;->b:F

    .line 165
    .line 166
    iget v3, v0, Lu1/w;->f:I

    .line 167
    .line 168
    iget-wide v6, v0, Lu1/w;->g:J

    .line 169
    .line 170
    iget-wide v8, v0, Lu1/w;->h:J

    .line 171
    .line 172
    sget-object v10, Lu1/p;->a:Landroid/view/MotionEvent$PointerCoords;

    .line 173
    .line 174
    iput v1, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 175
    .line 176
    iput v2, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 177
    .line 178
    if-ne v3, v4, :cond_2

    .line 179
    .line 180
    goto :goto_0

    .line 181
    :cond_2
    move v4, v5

    .line 182
    :goto_0
    sget-object v1, Lu1/p;->c:Landroid/view/MotionEvent$PointerProperties;

    .line 183
    .line 184
    iput v4, v1, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 185
    .line 186
    const/4 v10, 0x1

    .line 187
    const/4 v11, 0x1

    .line 188
    sget-object v12, Lu1/p;->d:[Landroid/view/MotionEvent$PointerProperties;

    .line 189
    .line 190
    sget-object v13, Lu1/p;->b:[Landroid/view/MotionEvent$PointerCoords;

    .line 191
    .line 192
    const/4 v14, 0x0

    .line 193
    const/4 v15, 0x1

    .line 194
    const/16 v16, 0x0

    .line 195
    .line 196
    const/16 v17, 0x0

    .line 197
    .line 198
    const/16 v18, 0x0

    .line 199
    .line 200
    const/16 v19, 0x0

    .line 201
    .line 202
    const/16 v20, 0x0

    .line 203
    .line 204
    const/16 v21, 0x0

    .line 205
    .line 206
    invoke-static/range {v6 .. v21}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    return-object v1

    .line 211
    :pswitch_4
    iget v1, v3, Lz1/a;->a:F

    .line 212
    .line 213
    iget v2, v3, Lz1/a;->b:F

    .line 214
    .line 215
    iget v3, v0, Lu1/w;->f:I

    .line 216
    .line 217
    iget-wide v8, v0, Lu1/w;->h:J

    .line 218
    .line 219
    sget-object v6, Lu1/p;->a:Landroid/view/MotionEvent$PointerCoords;

    .line 220
    .line 221
    iput v1, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 222
    .line 223
    iput v2, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 224
    .line 225
    if-ne v3, v4, :cond_3

    .line 226
    .line 227
    goto :goto_1

    .line 228
    :cond_3
    move v4, v5

    .line 229
    :goto_1
    sget-object v1, Lu1/p;->c:Landroid/view/MotionEvent$PointerProperties;

    .line 230
    .line 231
    iput v4, v1, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 232
    .line 233
    const/4 v10, 0x0

    .line 234
    const/4 v11, 0x1

    .line 235
    sget-object v12, Lu1/p;->d:[Landroid/view/MotionEvent$PointerProperties;

    .line 236
    .line 237
    sget-object v13, Lu1/p;->b:[Landroid/view/MotionEvent$PointerCoords;

    .line 238
    .line 239
    const/4 v14, 0x0

    .line 240
    const/4 v15, 0x1

    .line 241
    const/16 v16, 0x0

    .line 242
    .line 243
    const/16 v17, 0x0

    .line 244
    .line 245
    const/16 v18, 0x0

    .line 246
    .line 247
    const/16 v19, 0x0

    .line 248
    .line 249
    const/16 v20, 0x0

    .line 250
    .line 251
    const/16 v21, 0x0

    .line 252
    .line 253
    move-wide v6, v8

    .line 254
    invoke-static/range {v6 .. v21}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    return-object v1

    .line 259
    :pswitch_5
    iget v1, v3, Lz1/a;->a:F

    .line 260
    .line 261
    iget v2, v3, Lz1/a;->b:F

    .line 262
    .line 263
    iget v3, v0, Lu1/w;->f:I

    .line 264
    .line 265
    iget-wide v6, v0, Lu1/w;->g:J

    .line 266
    .line 267
    iget-wide v8, v0, Lu1/w;->h:J

    .line 268
    .line 269
    sget-object v10, Lu1/p;->a:Landroid/view/MotionEvent$PointerCoords;

    .line 270
    .line 271
    iput v1, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 272
    .line 273
    iput v2, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 274
    .line 275
    if-ne v3, v4, :cond_4

    .line 276
    .line 277
    goto :goto_2

    .line 278
    :cond_4
    move v4, v5

    .line 279
    :goto_2
    sget-object v1, Lu1/p;->c:Landroid/view/MotionEvent$PointerProperties;

    .line 280
    .line 281
    iput v4, v1, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 282
    .line 283
    const/4 v10, 0x7

    .line 284
    const/4 v11, 0x1

    .line 285
    sget-object v12, Lu1/p;->d:[Landroid/view/MotionEvent$PointerProperties;

    .line 286
    .line 287
    sget-object v13, Lu1/p;->b:[Landroid/view/MotionEvent$PointerCoords;

    .line 288
    .line 289
    const/4 v14, 0x0

    .line 290
    const/4 v15, 0x0

    .line 291
    const/16 v16, 0x0

    .line 292
    .line 293
    const/16 v17, 0x0

    .line 294
    .line 295
    const/16 v18, 0x0

    .line 296
    .line 297
    const/16 v19, 0x0

    .line 298
    .line 299
    const/16 v20, 0x2

    .line 300
    .line 301
    const/16 v21, 0x0

    .line 302
    .line 303
    invoke-static/range {v6 .. v21}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    return-object v1

    .line 308
    :pswitch_6
    iget v1, v3, Lz1/a;->a:F

    .line 309
    .line 310
    iget v2, v3, Lz1/a;->b:F

    .line 311
    .line 312
    iget v3, v0, Lu1/w;->f:I

    .line 313
    .line 314
    iget-wide v6, v0, Lu1/w;->g:J

    .line 315
    .line 316
    iget-wide v8, v0, Lu1/w;->h:J

    .line 317
    .line 318
    sget-object v10, Lu1/p;->a:Landroid/view/MotionEvent$PointerCoords;

    .line 319
    .line 320
    iput v1, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 321
    .line 322
    iput v2, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 323
    .line 324
    if-ne v3, v4, :cond_5

    .line 325
    .line 326
    goto :goto_3

    .line 327
    :cond_5
    move v4, v5

    .line 328
    :goto_3
    sget-object v1, Lu1/p;->c:Landroid/view/MotionEvent$PointerProperties;

    .line 329
    .line 330
    iput v4, v1, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 331
    .line 332
    const/4 v10, 0x2

    .line 333
    const/4 v11, 0x1

    .line 334
    sget-object v12, Lu1/p;->d:[Landroid/view/MotionEvent$PointerProperties;

    .line 335
    .line 336
    sget-object v13, Lu1/p;->b:[Landroid/view/MotionEvent$PointerCoords;

    .line 337
    .line 338
    const/4 v14, 0x0

    .line 339
    const/4 v15, 0x1

    .line 340
    const/16 v16, 0x0

    .line 341
    .line 342
    const/16 v17, 0x0

    .line 343
    .line 344
    const/16 v18, 0x0

    .line 345
    .line 346
    const/16 v19, 0x0

    .line 347
    .line 348
    const/16 v20, 0x0

    .line 349
    .line 350
    const/16 v21, 0x0

    .line 351
    .line 352
    invoke-static/range {v6 .. v21}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    .line 353
    .line 354
    .line 355
    move-result-object v1

    .line 356
    return-object v1

    .line 357
    :pswitch_7
    iget v1, v0, Lu1/w;->i:F

    .line 358
    .line 359
    iget-wide v8, v0, Lu1/w;->h:J

    .line 360
    .line 361
    sget-object v2, Lu1/p;->a:Landroid/view/MotionEvent$PointerCoords;

    .line 362
    .line 363
    const/16 v3, 0x9

    .line 364
    .line 365
    invoke-virtual {v2, v3, v1}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 366
    .line 367
    .line 368
    sget-object v1, Lu1/p;->c:Landroid/view/MotionEvent$PointerProperties;

    .line 369
    .line 370
    iput v5, v1, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 371
    .line 372
    const-wide/16 v6, 0x0

    .line 373
    .line 374
    const/16 v10, 0x8

    .line 375
    .line 376
    const/4 v11, 0x1

    .line 377
    sget-object v12, Lu1/p;->d:[Landroid/view/MotionEvent$PointerProperties;

    .line 378
    .line 379
    sget-object v13, Lu1/p;->b:[Landroid/view/MotionEvent$PointerCoords;

    .line 380
    .line 381
    const/4 v14, 0x0

    .line 382
    const/4 v15, 0x0

    .line 383
    const/16 v16, 0x0

    .line 384
    .line 385
    const/16 v17, 0x0

    .line 386
    .line 387
    const/16 v18, 0x0

    .line 388
    .line 389
    const/16 v19, 0x0

    .line 390
    .line 391
    const/16 v20, 0x2

    .line 392
    .line 393
    const/16 v21, 0x0

    .line 394
    .line 395
    invoke-static/range {v6 .. v21}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    return-object v1

    .line 400
    nop

    .line 401
    :pswitch_data_0
    .packed-switch 0x0
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

.method public final b(Lu1/w;)V
    .locals 2

    .line 1
    iget v0, p1, Lu1/w;->a:I

    iput v0, p0, Lu1/w;->a:I

    iget v0, p1, Lu1/w;->e:I

    iput v0, p0, Lu1/w;->e:I

    iget v0, p1, Lu1/w;->f:I

    iput v0, p0, Lu1/w;->f:I

    iget-wide v0, p1, Lu1/w;->g:J

    iput-wide v0, p0, Lu1/w;->g:J

    iget-wide v0, p1, Lu1/w;->h:J

    iput-wide v0, p0, Lu1/w;->h:J

    iget v0, p1, Lu1/w;->i:F

    iput v0, p0, Lu1/w;->i:F

    iget v0, p1, Lu1/w;->c:F

    iput v0, p0, Lu1/w;->c:F

    iget p1, p1, Lu1/w;->d:F

    iput p1, p0, Lu1/w;->d:F

    return-void
.end method
