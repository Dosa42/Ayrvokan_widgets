.class public final La2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La2/a;
.implements La2/c0;


# instance fields
.field public final c:Lq1/f;

.field public d:La2/c0;

.field public e:La2/q;

.field public final f:Lq1/u;

.field public final g:Lv1/b;

.field public h:Z

.field public i:Z

.field public final j:Lf0/c;

.field public final k:Lh/a;

.field public final l:Landroidx/fragment/app/h;

.field public final m:Landroid/graphics/Rect;

.field public final n:Landroid/graphics/Rect;

.field public final o:Lo1/q;

.field public final p:Landroidx/fragment/app/h;

.field public final q:Landroidx/fragment/app/h;

.field public final r:Lo1/p;

.field public final s:Lz1/g;

.field public final t:Lz1/a;

.field public u:I


# direct methods
.method public constructor <init>(Lq1/f;Lz1/f;Lo1/q;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, La2/b;->h:Z

    .line 6
    .line 7
    new-instance v1, Lh/a;

    .line 8
    .line 9
    const/16 v2, 0xb

    .line 10
    .line 11
    invoke-direct {v1, v2}, Lh/a;-><init>(I)V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, La2/b;->k:Lh/a;

    .line 15
    .line 16
    new-instance v2, Landroidx/fragment/app/h;

    .line 17
    .line 18
    invoke-direct {v2, v1}, Landroidx/fragment/app/h;-><init>(Lh/a;)V

    .line 19
    .line 20
    .line 21
    iput-object v2, p0, La2/b;->l:Landroidx/fragment/app/h;

    .line 22
    .line 23
    new-instance v1, Landroid/graphics/Rect;

    .line 24
    .line 25
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, La2/b;->m:Landroid/graphics/Rect;

    .line 29
    .line 30
    new-instance v1, Landroid/graphics/Rect;

    .line 31
    .line 32
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, La2/b;->n:Landroid/graphics/Rect;

    .line 36
    .line 37
    new-instance v1, Landroidx/fragment/app/h;

    .line 38
    .line 39
    const/16 v2, 0x11

    .line 40
    .line 41
    invoke-direct {v1, v2}, Landroidx/fragment/app/h;-><init>(I)V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, La2/b;->p:Landroidx/fragment/app/h;

    .line 45
    .line 46
    new-instance v1, Landroidx/fragment/app/h;

    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    invoke-direct {v1, v2}, Landroidx/fragment/app/h;-><init>(Landroidx/fragment/app/g;)V

    .line 50
    .line 51
    .line 52
    iput-object v1, p0, La2/b;->q:Landroidx/fragment/app/h;

    .line 53
    .line 54
    new-instance v1, Lo1/p;

    .line 55
    .line 56
    invoke-direct {v1}, Lo1/p;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object v1, p0, La2/b;->r:Lo1/p;

    .line 60
    .line 61
    new-instance v1, Lz1/a;

    .line 62
    .line 63
    invoke-direct {v1}, Lz1/a;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object v1, p0, La2/b;->t:Lz1/a;

    .line 67
    .line 68
    iput-object p1, p0, La2/b;->c:Lq1/f;

    .line 69
    .line 70
    iput-object p2, p0, La2/b;->s:Lz1/g;

    .line 71
    .line 72
    new-instance v1, Lv1/b;

    .line 73
    .line 74
    iget v2, p2, Lz1/f;->j:I

    .line 75
    .line 76
    iget v3, p2, Lz1/f;->k:I

    .line 77
    .line 78
    invoke-direct {v1, v2, v3}, Lv1/b;-><init>(II)V

    .line 79
    .line 80
    .line 81
    iput-object v1, p0, La2/b;->g:Lv1/b;

    .line 82
    .line 83
    iput-object p3, p0, La2/b;->o:Lo1/q;

    .line 84
    .line 85
    new-instance p3, Lq1/u;

    .line 86
    .line 87
    invoke-direct {p3, p0, p1, v0}, Lq1/u;-><init>(Ljava/lang/Object;Lq1/f;I)V

    .line 88
    .line 89
    .line 90
    iput-object p3, p0, La2/b;->f:Lq1/u;

    .line 91
    .line 92
    iput-object p0, p3, La2/e0;->c:La2/c0;

    .line 93
    .line 94
    new-instance p1, Lf0/c;

    .line 95
    .line 96
    new-instance p3, Lh/a;

    .line 97
    .line 98
    const/16 v1, 0xf

    .line 99
    .line 100
    invoke-direct {p3, p0, v1}, Lh/a;-><init>(Ljava/lang/Object;I)V

    .line 101
    .line 102
    .line 103
    invoke-direct {p1, p3, p2}, Lf0/c;-><init>(Lq1/h;Lz1/g;)V

    .line 104
    .line 105
    .line 106
    iput-object p1, p0, La2/b;->j:Lf0/c;

    .line 107
    .line 108
    iput-boolean v0, p1, Lf0/c;->f:Z

    .line 109
    .line 110
    return-void
.end method


# virtual methods
.method public final A()V
    .locals 3

    .line 1
    iget-object v0, p0, La2/b;->g:Lv1/b;

    .line 2
    .line 3
    iget v1, v0, Lv1/b;->c:I

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lv1/b;->e()V

    .line 8
    .line 9
    .line 10
    :cond_0
    const v1, 0x8d40

    .line 11
    .line 12
    .line 13
    iget v0, v0, Lv1/b;->c:I

    .line 14
    .line 15
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, La2/b;->s:Lz1/g;

    .line 19
    .line 20
    invoke-interface {v0}, Lz1/g;->h()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-interface {v0}, Lz1/g;->i()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-static {v2, v2, v1, v0}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 30
    .line 31
    .line 32
    const/16 v0, 0xc11

    .line 33
    .line 34
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, La2/b;->o:Lo1/q;

    .line 38
    .line 39
    invoke-virtual {v0}, Lo1/q;->d()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final B(Lo1/q;Z)Z
    .locals 32

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, La2/b;->f:Lq1/u;

    .line 6
    .line 7
    invoke-virtual {v2}, La2/e0;->p()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    return v3

    .line 15
    :cond_0
    iget-boolean v2, v0, La2/b;->h:Z

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    return v3

    .line 20
    :cond_1
    iget-object v2, v0, La2/b;->j:Lf0/c;

    .line 21
    .line 22
    iget-object v4, v2, Lf0/c;->i:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v4, Landroid/graphics/Rect;

    .line 25
    .line 26
    iget-boolean v5, v0, La2/b;->i:Z

    .line 27
    .line 28
    if-nez v5, :cond_2

    .line 29
    .line 30
    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    if-eqz v5, :cond_2

    .line 35
    .line 36
    return v3

    .line 37
    :cond_2
    iget-boolean v5, v0, La2/b;->i:Z

    .line 38
    .line 39
    const/4 v6, 0x1

    .line 40
    iget-object v7, v0, La2/b;->s:Lz1/g;

    .line 41
    .line 42
    if-nez v5, :cond_3

    .line 43
    .line 44
    instance-of v5, v7, Lz1/c;

    .line 45
    .line 46
    if-eqz v5, :cond_3

    .line 47
    .line 48
    iget v5, v4, Landroid/graphics/Rect;->left:I

    .line 49
    .line 50
    iget v8, v4, Landroid/graphics/Rect;->top:I

    .line 51
    .line 52
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 53
    .line 54
    .line 55
    move-result v9

    .line 56
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    invoke-static {v5, v8, v9, v4}, Landroid/opengl/GLES20;->glScissor(IIII)V

    .line 61
    .line 62
    .line 63
    move v4, v6

    .line 64
    goto :goto_0

    .line 65
    :cond_3
    move v4, v3

    .line 66
    :goto_0
    sget-boolean v5, Lcom/google/android/gms/internal/play_billing/i0;->i:Z

    .line 67
    .line 68
    iget-boolean v8, v1, Lo1/q;->f:Z

    .line 69
    .line 70
    if-eq v8, v5, :cond_4

    .line 71
    .line 72
    move v8, v6

    .line 73
    goto :goto_1

    .line 74
    :cond_4
    move v8, v3

    .line 75
    :goto_1
    iput-boolean v5, v1, Lo1/q;->f:Z

    .line 76
    .line 77
    if-eqz v8, :cond_5

    .line 78
    .line 79
    invoke-virtual/range {p1 .. p1}, Lo1/q;->d()V

    .line 80
    .line 81
    .line 82
    move v4, v6

    .line 83
    :cond_5
    iget-object v5, v0, La2/b;->g:Lv1/b;

    .line 84
    .line 85
    invoke-virtual {v5}, Lv1/b;->d()V

    .line 86
    .line 87
    .line 88
    iget-object v5, v0, La2/b;->c:Lq1/f;

    .line 89
    .line 90
    iget-boolean v8, v5, Lq1/f;->h:Z

    .line 91
    .line 92
    const/16 v9, 0x2800

    .line 93
    .line 94
    const/16 v10, 0x2801

    .line 95
    .line 96
    const/16 v11, 0xde1

    .line 97
    .line 98
    if-eqz v8, :cond_7

    .line 99
    .line 100
    const v3, 0x46180400    # 9729.0f

    .line 101
    .line 102
    .line 103
    invoke-static {v11, v10, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 104
    .line 105
    .line 106
    invoke-static {v11, v9, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 107
    .line 108
    .line 109
    invoke-interface {v7}, Lz1/g;->j()Lo1/p;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    if-eqz p2, :cond_6

    .line 114
    .line 115
    invoke-interface {v7}, Lz1/g;->e()Landroidx/fragment/app/h;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    invoke-interface {v7}, Lz1/g;->m()Landroidx/fragment/app/h;

    .line 120
    .line 121
    .line 122
    move-result-object v7

    .line 123
    goto :goto_2

    .line 124
    :cond_6
    invoke-interface {v7}, Lz1/g;->f()Landroidx/fragment/app/h;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-interface {v7}, Lz1/g;->b()Landroidx/fragment/app/h;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    :goto_2
    invoke-static {v3, v5, v7, v1, v6}, Lo1/r;->b(Lo1/p;Landroidx/fragment/app/h;Landroidx/fragment/app/h;Lo1/q;Z)V

    .line 133
    .line 134
    .line 135
    goto/16 :goto_3

    .line 136
    .line 137
    :cond_7
    invoke-interface {v7}, Lz1/g;->j()Lo1/p;

    .line 138
    .line 139
    .line 140
    move-result-object v8

    .line 141
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    iget-object v12, v0, La2/b;->p:Landroidx/fragment/app/h;

    .line 145
    .line 146
    iget-object v13, v12, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast v13, [F

    .line 149
    .line 150
    iget-object v8, v8, Lo1/p;->g:[F

    .line 151
    .line 152
    aget v14, v8, v3

    .line 153
    .line 154
    aput v14, v13, v3

    .line 155
    .line 156
    aget v14, v8, v6

    .line 157
    .line 158
    aput v14, v13, v6

    .line 159
    .line 160
    const/4 v14, 0x2

    .line 161
    aget v15, v8, v14

    .line 162
    .line 163
    aput v15, v13, v14

    .line 164
    .line 165
    const/4 v15, 0x3

    .line 166
    const/high16 v16, 0x3f800000    # 1.0f

    .line 167
    .line 168
    aput v16, v13, v15

    .line 169
    .line 170
    aget v17, v8, v15

    .line 171
    .line 172
    const/16 v18, 0x4

    .line 173
    .line 174
    aput v17, v13, v18

    .line 175
    .line 176
    aget v17, v8, v18

    .line 177
    .line 178
    const/16 v19, 0x5

    .line 179
    .line 180
    aput v17, v13, v19

    .line 181
    .line 182
    aget v17, v8, v19

    .line 183
    .line 184
    const/16 v20, 0x6

    .line 185
    .line 186
    aput v17, v13, v20

    .line 187
    .line 188
    const/16 v17, 0x7

    .line 189
    .line 190
    aput v16, v13, v17

    .line 191
    .line 192
    aget v21, v8, v20

    .line 193
    .line 194
    const/16 v22, 0x8

    .line 195
    .line 196
    aput v21, v13, v22

    .line 197
    .line 198
    aget v21, v8, v17

    .line 199
    .line 200
    const/16 v23, 0x9

    .line 201
    .line 202
    aput v21, v13, v23

    .line 203
    .line 204
    aget v21, v8, v22

    .line 205
    .line 206
    const/16 v24, 0xa

    .line 207
    .line 208
    aput v21, v13, v24

    .line 209
    .line 210
    const/16 v21, 0xb

    .line 211
    .line 212
    aput v16, v13, v21

    .line 213
    .line 214
    aget v25, v8, v23

    .line 215
    .line 216
    const/16 v26, 0xc

    .line 217
    .line 218
    aput v25, v13, v26

    .line 219
    .line 220
    aget v25, v8, v24

    .line 221
    .line 222
    const/16 v27, 0xd

    .line 223
    .line 224
    aput v25, v13, v27

    .line 225
    .line 226
    aget v8, v8, v21

    .line 227
    .line 228
    const/16 v25, 0xe

    .line 229
    .line 230
    aput v8, v13, v25

    .line 231
    .line 232
    const/16 v8, 0xf

    .line 233
    .line 234
    aput v16, v13, v8

    .line 235
    .line 236
    invoke-interface {v7}, Lz1/g;->e()Landroidx/fragment/app/h;

    .line 237
    .line 238
    .line 239
    move-result-object v13

    .line 240
    invoke-virtual {v13, v12, v12}, Landroidx/fragment/app/h;->o(Landroidx/fragment/app/h;Landroidx/fragment/app/h;)V

    .line 241
    .line 242
    .line 243
    iget-object v13, v12, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 244
    .line 245
    check-cast v13, [F

    .line 246
    .line 247
    aget v28, v13, v3

    .line 248
    .line 249
    aget v29, v13, v15

    .line 250
    .line 251
    div-float v28, v28, v29

    .line 252
    .line 253
    aput v28, v13, v3

    .line 254
    .line 255
    aget v30, v13, v6

    .line 256
    .line 257
    div-float v30, v30, v29

    .line 258
    .line 259
    aput v30, v13, v6

    .line 260
    .line 261
    aget v31, v13, v14

    .line 262
    .line 263
    div-float v31, v31, v29

    .line 264
    .line 265
    aput v31, v13, v14

    .line 266
    .line 267
    aget v29, v13, v18

    .line 268
    .line 269
    aget v31, v13, v17

    .line 270
    .line 271
    div-float v29, v29, v31

    .line 272
    .line 273
    aput v29, v13, v18

    .line 274
    .line 275
    aget v29, v13, v19

    .line 276
    .line 277
    div-float v29, v29, v31

    .line 278
    .line 279
    aput v29, v13, v19

    .line 280
    .line 281
    aget v29, v13, v20

    .line 282
    .line 283
    div-float v29, v29, v31

    .line 284
    .line 285
    aput v29, v13, v20

    .line 286
    .line 287
    aget v29, v13, v22

    .line 288
    .line 289
    aget v31, v13, v21

    .line 290
    .line 291
    div-float v29, v29, v31

    .line 292
    .line 293
    aput v29, v13, v22

    .line 294
    .line 295
    aget v29, v13, v23

    .line 296
    .line 297
    div-float v29, v29, v31

    .line 298
    .line 299
    aput v29, v13, v23

    .line 300
    .line 301
    aget v29, v13, v24

    .line 302
    .line 303
    div-float v29, v29, v31

    .line 304
    .line 305
    aput v29, v13, v24

    .line 306
    .line 307
    aget v29, v13, v26

    .line 308
    .line 309
    aget v31, v13, v8

    .line 310
    .line 311
    div-float v29, v29, v31

    .line 312
    .line 313
    aput v29, v13, v26

    .line 314
    .line 315
    aget v29, v13, v27

    .line 316
    .line 317
    div-float v29, v29, v31

    .line 318
    .line 319
    aput v29, v13, v27

    .line 320
    .line 321
    aget v29, v13, v25

    .line 322
    .line 323
    div-float v29, v29, v31

    .line 324
    .line 325
    aput v29, v13, v25

    .line 326
    .line 327
    aput v16, v13, v8

    .line 328
    .line 329
    aput v16, v13, v21

    .line 330
    .line 331
    aput v16, v13, v17

    .line 332
    .line 333
    aput v16, v13, v15

    .line 334
    .line 335
    aput v28, v13, v18

    .line 336
    .line 337
    aput v30, v13, v27

    .line 338
    .line 339
    invoke-interface {v7}, Lz1/g;->h()I

    .line 340
    .line 341
    .line 342
    move-result v16

    .line 343
    mul-int/lit8 v9, v16, 0x2

    .line 344
    .line 345
    int-to-float v9, v9

    .line 346
    const/high16 v16, 0x3f000000    # 0.5f

    .line 347
    .line 348
    add-float v9, v9, v16

    .line 349
    .line 350
    invoke-virtual {v5}, Lq1/f;->a()I

    .line 351
    .line 352
    .line 353
    move-result v10

    .line 354
    int-to-float v10, v10

    .line 355
    div-float/2addr v9, v10

    .line 356
    add-float v9, v9, v28

    .line 357
    .line 358
    aput v9, v13, v26

    .line 359
    .line 360
    aput v9, v13, v22

    .line 361
    .line 362
    aget v9, v13, v6

    .line 363
    .line 364
    invoke-interface {v7}, Lz1/g;->i()I

    .line 365
    .line 366
    .line 367
    move-result v10

    .line 368
    mul-int/2addr v10, v14

    .line 369
    int-to-float v10, v10

    .line 370
    add-float v10, v10, v16

    .line 371
    .line 372
    iget v5, v5, Lq1/f;->z:I

    .line 373
    .line 374
    int-to-float v5, v5

    .line 375
    div-float/2addr v10, v5

    .line 376
    sub-float/2addr v9, v10

    .line 377
    aput v9, v13, v23

    .line 378
    .line 379
    aput v9, v13, v19

    .line 380
    .line 381
    invoke-interface {v7}, Lz1/g;->j()Lo1/p;

    .line 382
    .line 383
    .line 384
    move-result-object v5

    .line 385
    iget-object v9, v0, La2/b;->r:Lo1/p;

    .line 386
    .line 387
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 388
    .line 389
    .line 390
    iget v10, v5, Lo1/p;->e:F

    .line 391
    .line 392
    iput v10, v9, Lo1/p;->e:F

    .line 393
    .line 394
    iget v10, v5, Lo1/p;->e:F

    .line 395
    .line 396
    iput v10, v9, Lo1/p;->f:F

    .line 397
    .line 398
    iget-object v10, v9, Lo1/p;->g:[F

    .line 399
    .line 400
    array-length v13, v10

    .line 401
    iget-object v11, v5, Lo1/p;->g:[F

    .line 402
    .line 403
    invoke-static {v11, v3, v10, v3, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 404
    .line 405
    .line 406
    iget-object v11, v9, Lo1/p;->h:[F

    .line 407
    .line 408
    array-length v13, v11

    .line 409
    iget-object v8, v5, Lo1/p;->h:[F

    .line 410
    .line 411
    invoke-static {v8, v3, v11, v3, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 412
    .line 413
    .line 414
    iget-object v8, v9, Lo1/p;->i:[F

    .line 415
    .line 416
    array-length v13, v8

    .line 417
    iget-object v5, v5, Lo1/p;->i:[F

    .line 418
    .line 419
    invoke-static {v5, v3, v8, v3, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 420
    .line 421
    .line 422
    iget-object v5, v9, Lo1/p;->a:Ljava/nio/FloatBuffer;

    .line 423
    .line 424
    invoke-virtual {v5}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 425
    .line 426
    .line 427
    invoke-virtual {v5, v10}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 428
    .line 429
    .line 430
    invoke-virtual {v5, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 431
    .line 432
    .line 433
    iget-object v13, v9, Lo1/p;->b:Ljava/nio/FloatBuffer;

    .line 434
    .line 435
    invoke-virtual {v13}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 436
    .line 437
    .line 438
    invoke-virtual {v13, v11}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 439
    .line 440
    .line 441
    invoke-virtual {v13, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 442
    .line 443
    .line 444
    iget-object v11, v9, Lo1/p;->c:Ljava/nio/FloatBuffer;

    .line 445
    .line 446
    invoke-virtual {v11}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 447
    .line 448
    .line 449
    invoke-virtual {v11, v8}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 450
    .line 451
    .line 452
    invoke-virtual {v11, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 453
    .line 454
    .line 455
    iget-object v8, v12, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 456
    .line 457
    check-cast v8, [F

    .line 458
    .line 459
    aget v11, v8, v3

    .line 460
    .line 461
    aget v12, v8, v15

    .line 462
    .line 463
    div-float/2addr v11, v12

    .line 464
    aput v11, v10, v3

    .line 465
    .line 466
    aget v11, v8, v6

    .line 467
    .line 468
    div-float/2addr v11, v12

    .line 469
    aput v11, v10, v6

    .line 470
    .line 471
    aget v11, v8, v14

    .line 472
    .line 473
    div-float/2addr v11, v12

    .line 474
    aput v11, v10, v14

    .line 475
    .line 476
    aget v11, v8, v18

    .line 477
    .line 478
    aget v12, v8, v17

    .line 479
    .line 480
    div-float/2addr v11, v12

    .line 481
    aput v11, v10, v15

    .line 482
    .line 483
    aget v11, v8, v19

    .line 484
    .line 485
    div-float/2addr v11, v12

    .line 486
    aput v11, v10, v18

    .line 487
    .line 488
    aget v11, v8, v20

    .line 489
    .line 490
    div-float/2addr v11, v12

    .line 491
    aput v11, v10, v19

    .line 492
    .line 493
    aget v11, v8, v22

    .line 494
    .line 495
    aget v12, v8, v21

    .line 496
    .line 497
    div-float/2addr v11, v12

    .line 498
    aput v11, v10, v20

    .line 499
    .line 500
    aget v11, v8, v23

    .line 501
    .line 502
    div-float/2addr v11, v12

    .line 503
    aput v11, v10, v17

    .line 504
    .line 505
    aget v11, v8, v24

    .line 506
    .line 507
    div-float/2addr v11, v12

    .line 508
    aput v11, v10, v22

    .line 509
    .line 510
    aget v11, v8, v26

    .line 511
    .line 512
    const/16 v12, 0xf

    .line 513
    .line 514
    aget v12, v8, v12

    .line 515
    .line 516
    div-float/2addr v11, v12

    .line 517
    aput v11, v10, v23

    .line 518
    .line 519
    aget v11, v8, v27

    .line 520
    .line 521
    div-float/2addr v11, v12

    .line 522
    aput v11, v10, v24

    .line 523
    .line 524
    aget v8, v8, v25

    .line 525
    .line 526
    div-float/2addr v8, v12

    .line 527
    aput v8, v10, v21

    .line 528
    .line 529
    invoke-virtual {v5}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 530
    .line 531
    .line 532
    invoke-virtual {v5, v10}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 533
    .line 534
    .line 535
    invoke-virtual {v5, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 536
    .line 537
    .line 538
    const/high16 v3, 0x46180000    # 9728.0f

    .line 539
    .line 540
    const/16 v5, 0x2801

    .line 541
    .line 542
    const/16 v8, 0xde1

    .line 543
    .line 544
    invoke-static {v8, v5, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 545
    .line 546
    .line 547
    const/16 v5, 0x2800

    .line 548
    .line 549
    invoke-static {v8, v5, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 550
    .line 551
    .line 552
    iget-object v3, v0, La2/b;->q:Landroidx/fragment/app/h;

    .line 553
    .line 554
    invoke-interface {v7}, Lz1/g;->m()Landroidx/fragment/app/h;

    .line 555
    .line 556
    .line 557
    move-result-object v5

    .line 558
    invoke-static {v9, v3, v5, v1, v6}, Lo1/r;->b(Lo1/p;Landroidx/fragment/app/h;Landroidx/fragment/app/h;Lo1/q;Z)V

    .line 559
    .line 560
    .line 561
    :goto_3
    iget-object v1, v2, Lf0/c;->i:Ljava/lang/Object;

    .line 562
    .line 563
    check-cast v1, Landroid/graphics/Rect;

    .line 564
    .line 565
    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 566
    .line 567
    .line 568
    return v4
.end method

.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, La2/b;->g:Lv1/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lv1/b;->e()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, La2/b;->h:Z

    .line 8
    .line 9
    iget-object v1, p0, La2/b;->j:Lf0/c;

    .line 10
    .line 11
    iput-boolean v0, v1, Lf0/c;->f:Z

    .line 12
    .line 13
    iget-object v0, p0, La2/b;->f:Lq1/u;

    .line 14
    .line 15
    invoke-virtual {v0}, La2/e0;->a()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final b(Lu1/x;)Z
    .locals 1

    .line 1
    iget-object v0, p0, La2/b;->e:La2/q;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, La2/q;->b(Lu1/x;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, La2/b;->f:Lq1/u;

    invoke-virtual {v0, p1}, La2/e0;->b(Lu1/x;)Z

    move-result p1

    :goto_1
    return p1
.end method

.method public final c(II)V
    .locals 1

    .line 1
    iget-object v0, p0, La2/b;->s:Lz1/g;

    invoke-interface {v0, p1, p2}, Lz1/g;->c(II)V

    invoke-interface {v0}, Lz1/g;->h()I

    move-result p1

    invoke-interface {v0}, Lz1/g;->i()I

    move-result p2

    iget-object v0, p0, La2/b;->f:Lq1/u;

    invoke-virtual {v0, p1, p2}, La2/e0;->c(II)V

    return-void
.end method

.method public final d()Lz1/g;
    .locals 1

    .line 1
    iget-object v0, p0, La2/b;->s:Lz1/g;

    return-object v0
.end method

.method public final e(Lr1/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, La2/b;->e:La2/q;

    return-void
.end method

.method public final f()V
    .locals 1

    .line 1
    iget-object v0, p0, La2/b;->f:Lq1/u;

    invoke-virtual {v0}, La2/e0;->f()V

    return-void
.end method

.method public final g(Landroidx/fragment/app/h;)Z
    .locals 1

    .line 1
    iget-object v0, p0, La2/b;->j:Lf0/c;

    invoke-virtual {v0, p1}, Lf0/c;->b(Landroidx/fragment/app/h;)Z

    move-result p1

    return p1
.end method

.method public final getParent()La2/c0;
    .locals 1

    .line 1
    iget-object v0, p0, La2/b;->d:La2/c0;

    return-object v0
.end method

.method public final i(Lo1/q;)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, La2/b;->B(Lo1/q;Z)Z

    move-result p1

    return p1
.end method

.method public final j()I
    .locals 1

    .line 1
    iget-object v0, p0, La2/b;->f:Lq1/u;

    .line 2
    .line 3
    iget-object v0, v0, La2/e0;->h:La2/r;

    .line 4
    .line 5
    invoke-interface {v0}, La2/r;->j()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final k()Z
    .locals 9

    .line 1
    iget-object v0, p0, La2/b;->f:Lq1/u;

    .line 2
    .line 3
    invoke-virtual {v0}, La2/e0;->p()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    iget-object v1, p0, La2/b;->o:Lo1/q;

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    return v2

    .line 16
    :cond_1
    iget-object v3, p0, La2/b;->s:Lz1/g;

    .line 17
    .line 18
    invoke-interface {v3}, Lz1/g;->h()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    invoke-interface {v3}, Lz1/g;->i()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    iget-object v5, p0, La2/b;->g:Lv1/b;

    .line 27
    .line 28
    iget v6, v5, Lv1/b;->a:I

    .line 29
    .line 30
    iget-object v7, p0, La2/b;->n:Landroid/graphics/Rect;

    .line 31
    .line 32
    const/4 v8, 0x1

    .line 33
    if-ne v6, v4, :cond_3

    .line 34
    .line 35
    iget v6, v5, Lv1/b;->b:I

    .line 36
    .line 37
    if-eq v6, v3, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    move v3, v2

    .line 41
    goto :goto_1

    .line 42
    :cond_3
    :goto_0
    invoke-virtual {v5, v4, v3}, Lv1/b;->f(II)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v7, v2, v2, v4, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v4, v3}, La2/e0;->c(II)V

    .line 49
    .line 50
    .line 51
    iput-boolean v8, p0, La2/b;->h:Z

    .line 52
    .line 53
    move v3, v8

    .line 54
    :goto_1
    iget-object v0, v0, La2/e0;->e:Ljava/util/List;

    .line 55
    .line 56
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    iget-object v5, p0, La2/b;->k:Lh/a;

    .line 61
    .line 62
    invoke-virtual {v5}, Lh/a;->A()V

    .line 63
    .line 64
    .line 65
    iget-object v5, p0, La2/b;->l:Landroidx/fragment/app/h;

    .line 66
    .line 67
    if-eqz v3, :cond_4

    .line 68
    .line 69
    invoke-virtual {v5, v7}, Landroidx/fragment/app/h;->h(Landroid/graphics/Rect;)V

    .line 70
    .line 71
    .line 72
    :cond_4
    add-int/lit8 v3, v4, -0x1

    .line 73
    .line 74
    :goto_2
    const/4 v6, -0x1

    .line 75
    if-le v3, v6, :cond_6

    .line 76
    .line 77
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    check-cast v7, La2/a;

    .line 82
    .line 83
    invoke-interface {v7, v5}, La2/a;->g(Landroidx/fragment/app/h;)Z

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    if-eqz v7, :cond_5

    .line 88
    .line 89
    move v3, v4

    .line 90
    :cond_5
    add-int/2addr v3, v6

    .line 91
    goto :goto_2

    .line 92
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    if-eqz v4, :cond_7

    .line 101
    .line 102
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    check-cast v4, La2/a;

    .line 107
    .line 108
    invoke-interface {v4}, La2/a;->k()Z

    .line 109
    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_7
    iget-object v3, p0, La2/b;->m:Landroid/graphics/Rect;

    .line 113
    .line 114
    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, La2/b;->A()V

    .line 118
    .line 119
    .line 120
    iget-boolean v4, p0, La2/b;->h:Z

    .line 121
    .line 122
    if-eqz v4, :cond_8

    .line 123
    .line 124
    const/4 v4, 0x0

    .line 125
    invoke-static {v4, v4, v4, v4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 126
    .line 127
    .line 128
    const/16 v4, 0x4000

    .line 129
    .line 130
    invoke-static {v4}, Landroid/opengl/GLES20;->glClear(I)V

    .line 131
    .line 132
    .line 133
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    move v4, v2

    .line 138
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 139
    .line 140
    .line 141
    move-result v5

    .line 142
    if-eqz v5, :cond_a

    .line 143
    .line 144
    if-eqz v4, :cond_9

    .line 145
    .line 146
    invoke-virtual {p0}, La2/b;->A()V

    .line 147
    .line 148
    .line 149
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    check-cast v4, La2/a;

    .line 154
    .line 155
    invoke-interface {v4}, La2/a;->l()Landroid/graphics/Rect;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 160
    .line 161
    .line 162
    invoke-interface {v4, v1}, La2/r;->t(Lo1/q;)Z

    .line 163
    .line 164
    .line 165
    move-result v4

    .line 166
    goto :goto_4

    .line 167
    :cond_a
    invoke-virtual {v1}, Lo1/q;->b()V

    .line 168
    .line 169
    .line 170
    iput-boolean v2, p0, La2/b;->h:Z

    .line 171
    .line 172
    return v8
.end method

.method public final l()Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, La2/b;->j:Lf0/c;

    .line 2
    .line 3
    iget-object v0, v0, Lf0/c;->i:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroid/graphics/Rect;

    .line 6
    .line 7
    return-object v0
.end method

.method public final m()La2/r;
    .locals 1

    .line 1
    iget-object v0, p0, La2/b;->f:Lq1/u;

    .line 2
    .line 3
    iget-object v0, v0, La2/e0;->h:La2/r;

    .line 4
    .line 5
    return-object v0
.end method

.method public final n()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, La2/b;->f:Lq1/u;

    .line 2
    .line 3
    iget-object v0, v0, La2/e0;->e:Ljava/util/List;

    .line 4
    .line 5
    return-object v0
.end method

.method public final o(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, La2/b;->f:Lq1/u;

    invoke-virtual {v0, p1}, La2/e0;->o(Z)V

    return-void
.end method

.method public final p()Z
    .locals 1

    .line 1
    iget-object v0, p0, La2/b;->f:Lq1/u;

    invoke-virtual {v0}, La2/e0;->p()Z

    move-result v0

    return v0
.end method

.method public final r()V
    .locals 1

    .line 1
    iget-object v0, p0, La2/b;->f:Lq1/u;

    invoke-virtual {v0}, La2/e0;->r()V

    return-void
.end method

.method public final s()Z
    .locals 1

    .line 1
    iget-object v0, p0, La2/b;->f:Lq1/u;

    .line 2
    .line 3
    iget-boolean v0, v0, La2/e0;->m:Z

    .line 4
    .line 5
    return v0
.end method

.method public final t(Lo1/q;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, La2/b;->B(Lo1/q;Z)Z

    move-result p1

    return p1
.end method

.method public final u(Lu1/w;)Z
    .locals 5

    .line 1
    iget v0, p1, Lu1/w;->e:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v3, p0, La2/b;->u:I

    .line 8
    .line 9
    if-ne v0, v3, :cond_0

    .line 10
    .line 11
    move v3, v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v3, v1

    .line 14
    :goto_0
    iget-object v4, p0, La2/b;->c:Lq1/f;

    .line 15
    .line 16
    iget-object v4, v4, Lq1/f;->F:Lu1/i;

    .line 17
    .line 18
    iget-object v4, v4, Lu1/i;->z:Lu1/h;

    .line 19
    .line 20
    if-eqz v4, :cond_1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move v1, v2

    .line 24
    :goto_1
    if-nez v1, :cond_2

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    goto :goto_2

    .line 28
    :cond_2
    iget-object v1, v4, Lu1/h;->a:Lz1/f;

    .line 29
    .line 30
    :goto_2
    iget-object v4, p0, La2/b;->s:Lz1/g;

    .line 31
    .line 32
    if-ne v1, v4, :cond_3

    .line 33
    .line 34
    move v3, v2

    .line 35
    :cond_3
    iget-object v1, p1, Lu1/w;->b:Lz1/b;

    .line 36
    .line 37
    if-eqz v3, :cond_4

    .line 38
    .line 39
    invoke-interface {v4, v1}, Lz1/g;->g(Lz1/b;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-nez v3, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    iget-object v2, p0, La2/b;->t:Lz1/a;

    .line 47
    .line 48
    invoke-interface {v4, v1, v2}, Lz1/g;->d(Lz1/b;Lz1/b;)V

    .line 49
    .line 50
    .line 51
    iput-object v2, p1, Lu1/w;->b:Lz1/b;

    .line 52
    .line 53
    iget-object v2, p0, La2/b;->f:Lq1/u;

    .line 54
    .line 55
    invoke-virtual {v2, p1}, La2/e0;->u(Lu1/w;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v0, :cond_5

    .line 60
    .line 61
    if-eqz v2, :cond_5

    .line 62
    .line 63
    iput v0, p0, La2/b;->u:I

    .line 64
    .line 65
    :cond_5
    iput-object v1, p1, Lu1/w;->b:Lz1/b;

    .line 66
    .line 67
    return v2
.end method

.method public final v(La2/c0;)V
    .locals 0

    .line 1
    iput-object p1, p0, La2/b;->d:La2/c0;

    return-void
.end method

.method public final x(La2/r;)V
    .locals 1

    .line 1
    iget-object v0, p0, La2/b;->f:Lq1/u;

    invoke-virtual {v0, p1}, La2/e0;->x(La2/r;)V

    return-void
.end method

.method public final y()V
    .locals 3

    .line 1
    iget-object v0, p0, La2/b;->f:Lq1/u;

    .line 2
    .line 3
    invoke-virtual {v0}, La2/e0;->y()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, La2/b;->c:Lq1/f;

    .line 7
    .line 8
    iget-object v0, v0, Lq1/f;->d:Lcom/nomone/browser_module/OpenGLView;

    .line 9
    .line 10
    new-instance v1, Lo0/n;

    .line 11
    .line 12
    const/16 v2, 0x17

    .line 13
    .line 14
    invoke-direct {v1, p0, v2}, Lo0/n;-><init>(Ljava/lang/Object;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/nomone/browser_module/OpenGLView;->a(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, La2/b;->e:La2/q;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-interface {v0}, La2/q;->s()V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public final z(La2/r;)V
    .locals 2

    .line 1
    instance-of v0, p1, La2/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iget-object v1, p0, La2/b;->f:Lq1/u;

    .line 7
    .line 8
    invoke-virtual {v1, p1, v0}, La2/e0;->A(La2/r;Z)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 13
    .line 14
    const-string v0, "FrameBufferedWindow can only have BufferableWindow(s) as children"

    .line 15
    .line 16
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p1
.end method
