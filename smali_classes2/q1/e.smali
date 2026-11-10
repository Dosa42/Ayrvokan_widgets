.class public final Lq1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/u;
.implements La3/t;


# instance fields
.field public f:I

.field public g:I

.field public h:Z

.field public final i:Ljava/lang/Object;

.field public final j:Ljava/lang/Object;

.field public final k:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;La3/g0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lx0/i;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lx0/i;-><init>(I)V

    iput-object v0, p0, Lq1/e;->i:Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iput-object p1, p0, Lq1/e;->j:Ljava/lang/Object;

    iput-object p2, p0, Lq1/e;->k:Ljava/lang/Object;

    const/16 p1, 0x1f40

    iput p1, p0, Lq1/e;->f:I

    iput p1, p0, Lq1/e;->g:I

    iput-boolean v1, p0, Lq1/e;->h:Z

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Lq1/f;)V
    .locals 1

    .line 5
    iput-object p1, p0, Lq1/e;->k:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lq1/e;->h:Z

    new-instance p1, Lh/a;

    const/16 v0, 0xb

    invoke-direct {p1, v0}, Lh/a;-><init>(I)V

    iput-object p1, p0, Lq1/e;->i:Ljava/lang/Object;

    new-instance v0, Landroidx/fragment/app/h;

    invoke-direct {v0, p1}, Landroidx/fragment/app/h;-><init>(Lh/a;)V

    iput-object v0, p0, Lq1/e;->j:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()La3/i;
    .locals 7

    .line 1
    iget-object v0, p0, Lq1/e;->i:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v6, v0

    .line 4
    check-cast v6, Lx0/i;

    .line 5
    .line 6
    new-instance v0, La3/q;

    .line 7
    .line 8
    iget-object v1, p0, Lq1/e;->j:Ljava/lang/Object;

    .line 9
    .line 10
    move-object v2, v1

    .line 11
    check-cast v2, Ljava/lang/String;

    .line 12
    .line 13
    iget v3, p0, Lq1/e;->f:I

    .line 14
    .line 15
    iget v4, p0, Lq1/e;->g:I

    .line 16
    .line 17
    iget-boolean v5, p0, Lq1/e;->h:Z

    .line 18
    .line 19
    move-object v1, v0

    .line 20
    invoke-direct/range {v1 .. v6}, La3/q;-><init>(Ljava/lang/String;IIZLx0/i;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lq1/e;->k:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v1, La3/g0;

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-virtual {v0, v1}, La3/e;->a(La3/g0;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-object v0
.end method

.method public final b()V
    .locals 12

    .line 1
    iget-object v0, p0, Lq1/e;->k:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lq1/f;

    .line 4
    .line 5
    iget-object v0, v0, Lq1/f;->e:La2/c0;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-boolean v0, p0, Lq1/e;->h:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 15
    .line 16
    .line 17
    :cond_1
    iget-object v0, p0, Lq1/e;->k:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Lq1/f;

    .line 20
    .line 21
    iget-object v0, v0, Lq1/f;->e:La2/c0;

    .line 22
    .line 23
    invoke-interface {v0}, La2/c0;->n()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Lq1/e;->k:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v1, Lq1/f;

    .line 30
    .line 31
    invoke-virtual {v1}, Lq1/f;->a()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    iget-object v2, p0, Lq1/e;->k:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v2, Lq1/f;

    .line 38
    .line 39
    iget v3, v2, Lq1/f;->z:I

    .line 40
    .line 41
    iget v4, p0, Lq1/e;->f:I

    .line 42
    .line 43
    const/4 v5, 0x0

    .line 44
    if-ne v1, v4, :cond_2

    .line 45
    .line 46
    iget v4, p0, Lq1/e;->g:I

    .line 47
    .line 48
    if-eq v3, v4, :cond_4

    .line 49
    .line 50
    :cond_2
    monitor-enter v2

    .line 51
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    move v6, v5

    .line 56
    :goto_0
    if-ge v6, v4, :cond_3

    .line 57
    .line 58
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    check-cast v7, La2/r;

    .line 63
    .line 64
    invoke-interface {v7, v1, v3}, La2/r;->c(II)V

    .line 65
    .line 66
    .line 67
    add-int/lit8 v6, v6, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    sput-boolean v5, Lz1/f;->z:Z

    .line 71
    .line 72
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 73
    iput v1, p0, Lq1/e;->f:I

    .line 74
    .line 75
    iput v3, p0, Lq1/e;->g:I

    .line 76
    .line 77
    :cond_4
    iget-object v2, p0, Lq1/e;->k:Ljava/lang/Object;

    .line 78
    .line 79
    move-object v4, v2

    .line 80
    check-cast v4, Lq1/f;

    .line 81
    .line 82
    monitor-enter v4

    .line 83
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    move v6, v5

    .line 88
    :goto_1
    if-ge v6, v2, :cond_6

    .line 89
    .line 90
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    check-cast v7, La2/r;

    .line 95
    .line 96
    instance-of v8, v7, La2/a;

    .line 97
    .line 98
    if-eqz v8, :cond_5

    .line 99
    .line 100
    check-cast v7, La2/a;

    .line 101
    .line 102
    iget-object v8, p0, Lq1/e;->i:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v8, Lh/a;

    .line 105
    .line 106
    invoke-virtual {v8}, Lh/a;->A()V

    .line 107
    .line 108
    .line 109
    invoke-interface {v7}, La2/a;->k()Z

    .line 110
    .line 111
    .line 112
    iget-object v8, p0, Lq1/e;->j:Ljava/lang/Object;

    .line 113
    .line 114
    check-cast v8, Landroidx/fragment/app/h;

    .line 115
    .line 116
    invoke-interface {v7, v8}, La2/a;->g(Landroidx/fragment/app/h;)Z

    .line 117
    .line 118
    .line 119
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_6
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 123
    sget-boolean v2, Lq1/f;->K:Z

    .line 124
    .line 125
    const/4 v4, 0x1

    .line 126
    if-nez v2, :cond_7

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_7
    iget-object v2, p0, Lq1/e;->k:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast v2, Lq1/f;

    .line 132
    .line 133
    iget-object v6, v2, Lq1/f;->t:Lq1/i;

    .line 134
    .line 135
    if-nez v6, :cond_8

    .line 136
    .line 137
    new-instance v6, Lq1/i;

    .line 138
    .line 139
    iget-object v7, v2, Lq1/f;->b:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 140
    .line 141
    const-string v8, "screenSaverShader.txt"

    .line 142
    .line 143
    invoke-direct {v6, v7, v8, v4}, Lq1/i;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 144
    .line 145
    .line 146
    iput-object v6, v2, Lq1/f;->t:Lq1/i;

    .line 147
    .line 148
    new-instance v6, Lo0/n;

    .line 149
    .line 150
    const/16 v7, 0xd

    .line 151
    .line 152
    invoke-direct {v6, p0, v7}, Lo0/n;-><init>(Ljava/lang/Object;I)V

    .line 153
    .line 154
    .line 155
    iput-object v6, v2, Lq1/f;->x:Ljava/lang/Runnable;

    .line 156
    .line 157
    sget-object v7, Lq1/f;->L:Lo1/j0;

    .line 158
    .line 159
    const-string v8, "requestRender() to maybe trigger screensaver"

    .line 160
    .line 161
    const-wide/16 v9, 0x2710

    .line 162
    .line 163
    invoke-virtual {v7, v6, v8, v9, v10}, Lo1/j0;->b(Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 164
    .line 165
    .line 166
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 167
    .line 168
    .line 169
    move-result-wide v6

    .line 170
    iget-object v8, v2, Lq1/f;->F:Lu1/i;

    .line 171
    .line 172
    iget-wide v8, v8, Lu1/i;->C:J

    .line 173
    .line 174
    sub-long/2addr v6, v8

    .line 175
    const-wide/32 v8, 0x493e0

    .line 176
    .line 177
    .line 178
    cmp-long v6, v6, v8

    .line 179
    .line 180
    if-gez v6, :cond_9

    .line 181
    .line 182
    :goto_2
    move v1, v5

    .line 183
    goto :goto_4

    .line 184
    :cond_9
    invoke-virtual {v2}, Lq1/f;->d()V

    .line 185
    .line 186
    .line 187
    iget-object v6, v2, Lq1/f;->u:Lo1/p;

    .line 188
    .line 189
    if-eqz v6, :cond_a

    .line 190
    .line 191
    iget v6, v2, Lq1/f;->w:F

    .line 192
    .line 193
    iget v7, v2, Lq1/f;->j:F

    .line 194
    .line 195
    cmpl-float v6, v6, v7

    .line 196
    .line 197
    if-eqz v6, :cond_b

    .line 198
    .line 199
    :cond_a
    iget v6, v2, Lq1/f;->j:F

    .line 200
    .line 201
    iput v6, v2, Lq1/f;->w:F

    .line 202
    .line 203
    new-instance v7, Lo1/p;

    .line 204
    .line 205
    const/high16 v8, 0x3f800000    # 1.0f

    .line 206
    .line 207
    sub-float v6, v8, v6

    .line 208
    .line 209
    invoke-direct {v7, v6, v8, v8}, Lo1/p;-><init>(FFF)V

    .line 210
    .line 211
    .line 212
    iput-object v7, v2, Lq1/f;->u:Lo1/p;

    .line 213
    .line 214
    :cond_b
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 215
    .line 216
    .line 217
    move-result-wide v6

    .line 218
    long-to-double v6, v6

    .line 219
    const-wide v8, 0x41cdcd6500000000L    # 1.0E9

    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    div-double/2addr v6, v8

    .line 225
    const-wide v8, 0x408f400000000000L    # 1000.0

    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    rem-double/2addr v6, v8

    .line 231
    double-to-float v6, v6

    .line 232
    move v7, v4

    .line 233
    :cond_c
    invoke-virtual {v2, v7, v5}, Lq1/f;->e(ZZ)V

    .line 234
    .line 235
    .line 236
    iget-object v8, v2, Lq1/f;->t:Lq1/i;

    .line 237
    .line 238
    int-to-float v9, v1

    .line 239
    int-to-float v10, v3

    .line 240
    invoke-virtual {v8}, Lo1/q;->d()V

    .line 241
    .line 242
    .line 243
    iget v11, v8, Lq1/i;->p:I

    .line 244
    .line 245
    invoke-static {v11, v6}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 246
    .line 247
    .line 248
    iget v8, v8, Lq1/i;->q:I

    .line 249
    .line 250
    invoke-static {v8, v9, v10}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 251
    .line 252
    .line 253
    const/16 v8, 0xbe2

    .line 254
    .line 255
    invoke-static {v8}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 256
    .line 257
    .line 258
    iget-object v8, v2, Lq1/f;->u:Lo1/p;

    .line 259
    .line 260
    iget-object v9, v2, Lq1/f;->v:Landroidx/fragment/app/h;

    .line 261
    .line 262
    if-eqz v7, :cond_d

    .line 263
    .line 264
    iget-object v10, v2, Lq1/f;->C:Landroidx/fragment/app/h;

    .line 265
    .line 266
    goto :goto_3

    .line 267
    :cond_d
    iget-object v10, v2, Lq1/f;->D:Landroidx/fragment/app/h;

    .line 268
    .line 269
    :goto_3
    iget-object v11, v2, Lq1/f;->t:Lq1/i;

    .line 270
    .line 271
    invoke-static {v8, v9, v10, v11, v5}, Lo1/r;->b(Lo1/p;Landroidx/fragment/app/h;Landroidx/fragment/app/h;Lo1/q;Z)V

    .line 272
    .line 273
    .line 274
    xor-int/lit8 v7, v7, 0x1

    .line 275
    .line 276
    iget-boolean v8, v2, Lq1/f;->h:Z

    .line 277
    .line 278
    if-eqz v8, :cond_e

    .line 279
    .line 280
    if-eqz v7, :cond_c

    .line 281
    .line 282
    :cond_e
    iget-object v1, v2, Lq1/f;->t:Lq1/i;

    .line 283
    .line 284
    invoke-virtual {v1}, Lo1/q;->b()V

    .line 285
    .line 286
    .line 287
    move v1, v4

    .line 288
    :goto_4
    if-nez v1, :cond_11

    .line 289
    .line 290
    iget-object v1, p0, Lq1/e;->k:Ljava/lang/Object;

    .line 291
    .line 292
    check-cast v1, Lq1/f;

    .line 293
    .line 294
    monitor-enter v1

    .line 295
    :try_start_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 296
    .line 297
    .line 298
    move-result v2

    .line 299
    move v6, v4

    .line 300
    move v3, v5

    .line 301
    :goto_5
    if-ge v3, v2, :cond_10

    .line 302
    .line 303
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v7

    .line 307
    check-cast v7, La2/r;

    .line 308
    .line 309
    iget-object v8, p0, Lq1/e;->k:Ljava/lang/Object;

    .line 310
    .line 311
    check-cast v8, Lq1/f;

    .line 312
    .line 313
    invoke-virtual {v8, v4, v6}, Lq1/f;->e(ZZ)V

    .line 314
    .line 315
    .line 316
    iget-object v8, p0, Lq1/e;->k:Ljava/lang/Object;

    .line 317
    .line 318
    check-cast v8, Lq1/f;

    .line 319
    .line 320
    iget-object v8, v8, Lq1/f;->q:Lo1/q;

    .line 321
    .line 322
    invoke-interface {v7, v8}, La2/r;->i(Lo1/q;)Z

    .line 323
    .line 324
    .line 325
    iget-object v8, p0, Lq1/e;->k:Ljava/lang/Object;

    .line 326
    .line 327
    move-object v9, v8

    .line 328
    check-cast v9, Lq1/f;

    .line 329
    .line 330
    iget-boolean v9, v9, Lq1/f;->h:Z

    .line 331
    .line 332
    if-eqz v9, :cond_f

    .line 333
    .line 334
    check-cast v8, Lq1/f;

    .line 335
    .line 336
    invoke-virtual {v8, v5, v6}, Lq1/f;->e(ZZ)V

    .line 337
    .line 338
    .line 339
    iget-object v6, p0, Lq1/e;->k:Ljava/lang/Object;

    .line 340
    .line 341
    check-cast v6, Lq1/f;

    .line 342
    .line 343
    iget-object v6, v6, Lq1/f;->q:Lo1/q;

    .line 344
    .line 345
    invoke-interface {v7, v6}, La2/r;->t(Lo1/q;)Z

    .line 346
    .line 347
    .line 348
    :cond_f
    add-int/lit8 v3, v3, 0x1

    .line 349
    .line 350
    move v6, v5

    .line 351
    goto :goto_5

    .line 352
    :cond_10
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 353
    iget-object v0, p0, Lq1/e;->k:Ljava/lang/Object;

    .line 354
    .line 355
    check-cast v0, Lq1/f;

    .line 356
    .line 357
    iget-object v0, v0, Lq1/f;->q:Lo1/q;

    .line 358
    .line 359
    invoke-virtual {v0}, Lo1/q;->b()V

    .line 360
    .line 361
    .line 362
    goto :goto_6

    .line 363
    :catchall_0
    move-exception v0

    .line 364
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 365
    throw v0

    .line 366
    :cond_11
    :goto_6
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    .line 367
    .line 368
    .line 369
    move-result v0

    .line 370
    if-eqz v0, :cond_12

    .line 371
    .line 372
    const-string v1, "sdf"

    .line 373
    .line 374
    new-instance v2, Ljava/lang/StringBuilder;

    .line 375
    .line 376
    const-string v3, "Gl Error: "

    .line 377
    .line 378
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v2

    .line 388
    invoke-static {v1, v2}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    :cond_12
    if-nez v0, :cond_11

    .line 392
    .line 393
    return-void

    .line 394
    :catchall_1
    move-exception v0

    .line 395
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 396
    throw v0

    .line 397
    :catchall_2
    move-exception v0

    .line 398
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 399
    throw v0
.end method
