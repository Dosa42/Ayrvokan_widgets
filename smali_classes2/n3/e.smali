.class public final Ln3/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/a;


# static fields
.field public static final g:Ljava/util/HashMap;


# instance fields
.field public final a:Lr3/b;

.field public b:Li3/f;

.field public final c:Lh/a;

.field public final d:Lh/a;

.field public e:Ln3/f;

.field public f:Ln2/a0;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ln3/e;->g:Ljava/util/HashMap;

    const-string v1, "!"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "!!"

    const-string v2, "tag:yaml.org,2002:"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lo3/b;)V
    .locals 3

    .line 1
    new-instance v0, Lr3/d;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lr3/d;-><init>(Lo3/b;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ln3/e;->a:Lr3/b;

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Ln3/e;->b:Li3/f;

    .line 13
    .line 14
    new-instance v0, Ln2/a0;

    .line 15
    .line 16
    new-instance v1, Ljava/util/HashMap;

    .line 17
    .line 18
    sget-object v2, Ln3/e;->g:Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 21
    .line 22
    .line 23
    const/4 v2, 0x7

    .line 24
    invoke-direct {v0, v2, p1, v1}, Ln2/a0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Ln3/e;->f:Ln2/a0;

    .line 28
    .line 29
    new-instance p1, Lh/a;

    .line 30
    .line 31
    const/16 v0, 0x64

    .line 32
    .line 33
    const/16 v1, 0x18

    .line 34
    .line 35
    invoke-direct {p1, v0, v1}, Lh/a;-><init>(II)V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Ln3/e;->c:Lh/a;

    .line 39
    .line 40
    new-instance p1, Lh/a;

    .line 41
    .line 42
    const/16 v0, 0xa

    .line 43
    .line 44
    invoke-direct {p1, v0, v1}, Lh/a;-><init>(II)V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Ln3/e;->d:Lh/a;

    .line 48
    .line 49
    new-instance p1, Ln3/c;

    .line 50
    .line 51
    const/16 v0, 0x12

    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    invoke-direct {p1, p0, v0, v1}, Ln3/c;-><init>(Ln3/e;II)V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, Ln3/e;->e:Ln3/f;

    .line 58
    .line 59
    return-void
.end method

.method public static a(Ln3/e;Lh3/a;)Li3/j;
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p0, Li3/j;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    new-instance v3, Lf0/h;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x2

    .line 13
    invoke-direct {v3, v5, v0, v4}, Lf0/h;-><init>(IZZ)V

    .line 14
    .line 15
    .line 16
    const-string v4, ""

    .line 17
    .line 18
    sget-object v7, Le3/b;->f:Le3/b;

    .line 19
    .line 20
    move-object v0, p0

    .line 21
    move-object v5, p1

    .line 22
    move-object v6, p1

    .line 23
    invoke-direct/range {v0 .. v7}, Li3/j;-><init>(Ljava/lang/String;Ljava/lang/String;Lf0/h;Ljava/lang/String;Lh3/a;Lh3/a;Le3/b;)V

    .line 24
    .line 25
    .line 26
    return-object p0
.end method


# virtual methods
.method public final b(I)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Ln3/e;->e()Li3/f;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ln3/e;->b:Li3/f;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Li3/f;->b()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v2, 0x1

    .line 14
    if-ne v0, p1, :cond_0

    .line 15
    .line 16
    move p1, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move p1, v1

    .line 19
    :goto_0
    if-eqz p1, :cond_1

    .line 20
    .line 21
    move v1, v2

    .line 22
    :cond_1
    return v1
.end method

.method public final c()Li3/f;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ln3/e;->e()Li3/f;

    iget-object v0, p0, Ln3/e;->b:Li3/f;

    const/4 v1, 0x0

    iput-object v1, p0, Ln3/e;->b:Li3/f;

    return-object v0
.end method

.method public final d(ZZ)Li3/i;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    filled-new-array {v1}, [I

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    iget-object v3, v0, Ln3/e;->a:Lr3/b;

    .line 9
    .line 10
    check-cast v3, Lr3/d;

    .line 11
    .line 12
    invoke-virtual {v3, v2}, Lr3/d;->b([I)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    iget-object v4, v0, Ln3/e;->c:Lh/a;

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {v3}, Lr3/d;->i()Ls3/j;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Ls3/a;

    .line 25
    .line 26
    new-instance v2, Li3/a;

    .line 27
    .line 28
    iget-object v3, v1, Ls3/a;->c:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v5, v1, Ls3/j;->a:Lh3/a;

    .line 31
    .line 32
    iget-object v1, v1, Ls3/j;->b:Lh3/a;

    .line 33
    .line 34
    invoke-direct {v2, v3, v5, v1}, Li3/a;-><init>(Ljava/lang/String;Lh3/a;Lh3/a;)V

    .line 35
    .line 36
    .line 37
    goto/16 :goto_9

    .line 38
    .line 39
    :cond_0
    const/4 v2, 0x2

    .line 40
    filled-new-array {v2}, [I

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    invoke-virtual {v3, v5}, Lr3/d;->b([I)Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    const/16 v6, 0x13

    .line 49
    .line 50
    const/4 v7, 0x0

    .line 51
    if-eqz v5, :cond_2

    .line 52
    .line 53
    invoke-virtual {v3}, Lr3/d;->i()Ls3/j;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    check-cast v5, Ls3/b;

    .line 58
    .line 59
    iget-object v8, v5, Ls3/j;->a:Lh3/a;

    .line 60
    .line 61
    filled-new-array {v6}, [I

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    invoke-virtual {v3, v6}, Lr3/d;->b([I)Z

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    if-eqz v6, :cond_1

    .line 70
    .line 71
    invoke-virtual {v3}, Lr3/d;->i()Ls3/j;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    check-cast v6, Ls3/i;

    .line 76
    .line 77
    iget-object v9, v6, Ls3/j;->a:Lh3/a;

    .line 78
    .line 79
    iget-object v10, v6, Ls3/j;->b:Lh3/a;

    .line 80
    .line 81
    iget-object v6, v6, Ls3/i;->c:Ln2/a0;

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    iget-object v10, v5, Ls3/j;->b:Lh3/a;

    .line 85
    .line 86
    move-object v6, v7

    .line 87
    move-object v9, v6

    .line 88
    :goto_0
    iget-object v5, v5, Ls3/b;->c:Ljava/lang/String;

    .line 89
    .line 90
    move-object v12, v5

    .line 91
    goto :goto_2

    .line 92
    :cond_2
    filled-new-array {v6}, [I

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-virtual {v3, v5}, Lr3/d;->b([I)Z

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    if-eqz v5, :cond_4

    .line 101
    .line 102
    invoke-virtual {v3}, Lr3/d;->i()Ls3/j;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    check-cast v5, Ls3/i;

    .line 107
    .line 108
    iget-object v8, v5, Ls3/j;->a:Lh3/a;

    .line 109
    .line 110
    filled-new-array {v2}, [I

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    invoke-virtual {v3, v6}, Lr3/d;->b([I)Z

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    iget-object v9, v5, Ls3/i;->c:Ln2/a0;

    .line 119
    .line 120
    if-eqz v6, :cond_3

    .line 121
    .line 122
    invoke-virtual {v3}, Lr3/d;->i()Ls3/j;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    check-cast v5, Ls3/b;

    .line 127
    .line 128
    iget-object v6, v5, Ls3/j;->b:Lh3/a;

    .line 129
    .line 130
    iget-object v5, v5, Ls3/b;->c:Ljava/lang/String;

    .line 131
    .line 132
    move-object v10, v6

    .line 133
    goto :goto_1

    .line 134
    :cond_3
    iget-object v5, v5, Ls3/j;->b:Lh3/a;

    .line 135
    .line 136
    move-object v10, v5

    .line 137
    move-object v5, v7

    .line 138
    :goto_1
    move-object v12, v5

    .line 139
    move-object v6, v9

    .line 140
    move-object v9, v8

    .line 141
    goto :goto_2

    .line 142
    :cond_4
    move-object v6, v7

    .line 143
    move-object v8, v6

    .line 144
    move-object v9, v8

    .line 145
    move-object v10, v9

    .line 146
    move-object v12, v10

    .line 147
    :goto_2
    if-eqz v6, :cond_6

    .line 148
    .line 149
    iget-object v5, v6, Ln2/a0;->g:Ljava/lang/Object;

    .line 150
    .line 151
    check-cast v5, Ljava/lang/String;

    .line 152
    .line 153
    iget-object v6, v6, Ln2/a0;->h:Ljava/lang/Object;

    .line 154
    .line 155
    move-object v7, v6

    .line 156
    check-cast v7, Ljava/lang/String;

    .line 157
    .line 158
    if-eqz v5, :cond_6

    .line 159
    .line 160
    iget-object v6, v0, Ln3/e;->f:Ln2/a0;

    .line 161
    .line 162
    iget-object v6, v6, Ln2/a0;->h:Ljava/lang/Object;

    .line 163
    .line 164
    check-cast v6, Ljava/util/Map;

    .line 165
    .line 166
    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v6

    .line 170
    if-eqz v6, :cond_5

    .line 171
    .line 172
    new-instance v6, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .line 176
    .line 177
    iget-object v9, v0, Ln3/e;->f:Ln2/a0;

    .line 178
    .line 179
    iget-object v9, v9, Ln2/a0;->h:Ljava/lang/Object;

    .line 180
    .line 181
    check-cast v9, Ljava/util/Map;

    .line 182
    .line 183
    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v5

    .line 187
    check-cast v5, Ljava/lang/String;

    .line 188
    .line 189
    invoke-static {v6, v5, v7}, La1/b;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v7

    .line 193
    goto :goto_3

    .line 194
    :cond_5
    new-instance v1, Ln3/b;

    .line 195
    .line 196
    const-string v2, "found undefined tag handle "

    .line 197
    .line 198
    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    const-string v3, "while parsing a node"

    .line 203
    .line 204
    invoke-direct {v1, v3, v8, v2, v9}, Ln3/b;-><init>(Ljava/lang/String;Lh3/a;Ljava/lang/String;Lh3/a;)V

    .line 205
    .line 206
    .line 207
    throw v1

    .line 208
    :cond_6
    :goto_3
    move-object v13, v7

    .line 209
    if-nez v8, :cond_7

    .line 210
    .line 211
    invoke-virtual {v3}, Lr3/d;->k()Ls3/j;

    .line 212
    .line 213
    .line 214
    move-result-object v5

    .line 215
    iget-object v5, v5, Ls3/j;->a:Lh3/a;

    .line 216
    .line 217
    move-object/from16 v17, v5

    .line 218
    .line 219
    goto :goto_4

    .line 220
    :cond_7
    move-object v5, v8

    .line 221
    move-object/from16 v17, v10

    .line 222
    .line 223
    :goto_4
    const/4 v6, 0x0

    .line 224
    const-string v7, "!"

    .line 225
    .line 226
    if-eqz v13, :cond_9

    .line 227
    .line 228
    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v8

    .line 232
    if-eqz v8, :cond_8

    .line 233
    .line 234
    goto :goto_5

    .line 235
    :cond_8
    move v14, v6

    .line 236
    goto :goto_6

    .line 237
    :cond_9
    :goto_5
    move v14, v1

    .line 238
    :goto_6
    if-eqz p2, :cond_a

    .line 239
    .line 240
    const/4 v8, 0x4

    .line 241
    filled-new-array {v8}, [I

    .line 242
    .line 243
    .line 244
    move-result-object v8

    .line 245
    invoke-virtual {v3, v8}, Lr3/d;->b([I)Z

    .line 246
    .line 247
    .line 248
    move-result v8

    .line 249
    if-eqz v8, :cond_a

    .line 250
    .line 251
    invoke-virtual {v3}, Lr3/d;->k()Ls3/j;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    iget-object v1, v1, Ls3/j;->b:Lh3/a;

    .line 256
    .line 257
    new-instance v2, Li3/k;

    .line 258
    .line 259
    sget-object v17, Le3/a;->c:Le3/a;

    .line 260
    .line 261
    move-object v11, v2

    .line 262
    move-object v15, v5

    .line 263
    move-object/from16 v16, v1

    .line 264
    .line 265
    invoke-direct/range {v11 .. v17}, Li3/k;-><init>(Ljava/lang/String;Ljava/lang/String;ZLh3/a;Lh3/a;Le3/a;)V

    .line 266
    .line 267
    .line 268
    new-instance v1, Ln3/c;

    .line 269
    .line 270
    const/16 v3, 0x11

    .line 271
    .line 272
    invoke-direct {v1, v0, v3, v6}, Ln3/c;-><init>(Ln3/e;II)V

    .line 273
    .line 274
    .line 275
    goto/16 :goto_a

    .line 276
    .line 277
    :cond_a
    const/16 v8, 0x10

    .line 278
    .line 279
    filled-new-array {v8}, [I

    .line 280
    .line 281
    .line 282
    move-result-object v8

    .line 283
    invoke-virtual {v3, v8}, Lr3/d;->b([I)Z

    .line 284
    .line 285
    .line 286
    move-result v8

    .line 287
    if-eqz v8, :cond_f

    .line 288
    .line 289
    invoke-virtual {v3}, Lr3/d;->i()Ls3/j;

    .line 290
    .line 291
    .line 292
    move-result-object v3

    .line 293
    check-cast v3, Ls3/f;

    .line 294
    .line 295
    iget-object v8, v3, Ls3/j;->b:Lh3/a;

    .line 296
    .line 297
    iget-boolean v9, v3, Ls3/f;->d:Z

    .line 298
    .line 299
    if-eqz v9, :cond_b

    .line 300
    .line 301
    if-eqz v13, :cond_c

    .line 302
    .line 303
    :cond_b
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result v7

    .line 307
    if-eqz v7, :cond_d

    .line 308
    .line 309
    :cond_c
    new-instance v7, Lf0/h;

    .line 310
    .line 311
    invoke-direct {v7, v2, v1, v6}, Lf0/h;-><init>(IZZ)V

    .line 312
    .line 313
    .line 314
    goto :goto_7

    .line 315
    :cond_d
    if-nez v13, :cond_e

    .line 316
    .line 317
    new-instance v7, Lf0/h;

    .line 318
    .line 319
    invoke-direct {v7, v2, v6, v1}, Lf0/h;-><init>(IZZ)V

    .line 320
    .line 321
    .line 322
    :goto_7
    move-object v14, v7

    .line 323
    goto :goto_8

    .line 324
    :cond_e
    new-instance v1, Lf0/h;

    .line 325
    .line 326
    invoke-direct {v1, v2, v6, v6}, Lf0/h;-><init>(IZZ)V

    .line 327
    .line 328
    .line 329
    move-object v14, v1

    .line 330
    :goto_8
    new-instance v2, Li3/j;

    .line 331
    .line 332
    iget-object v15, v3, Ls3/f;->c:Ljava/lang/String;

    .line 333
    .line 334
    iget-object v1, v3, Ls3/f;->e:Le3/b;

    .line 335
    .line 336
    move-object v11, v2

    .line 337
    move-object/from16 v16, v5

    .line 338
    .line 339
    move-object/from16 v17, v8

    .line 340
    .line 341
    move-object/from16 v18, v1

    .line 342
    .line 343
    invoke-direct/range {v11 .. v18}, Li3/j;-><init>(Ljava/lang/String;Ljava/lang/String;Lf0/h;Ljava/lang/String;Lh3/a;Lh3/a;Le3/b;)V

    .line 344
    .line 345
    .line 346
    :goto_9
    invoke-virtual {v4}, Lh/a;->D()Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    check-cast v1, Ln3/f;

    .line 351
    .line 352
    goto/16 :goto_a

    .line 353
    .line 354
    :cond_f
    const/16 v1, 0xe

    .line 355
    .line 356
    filled-new-array {v1}, [I

    .line 357
    .line 358
    .line 359
    move-result-object v1

    .line 360
    invoke-virtual {v3, v1}, Lr3/d;->b([I)Z

    .line 361
    .line 362
    .line 363
    move-result v1

    .line 364
    if-eqz v1, :cond_10

    .line 365
    .line 366
    invoke-virtual {v3}, Lr3/d;->k()Ls3/j;

    .line 367
    .line 368
    .line 369
    move-result-object v1

    .line 370
    iget-object v1, v1, Ls3/j;->b:Lh3/a;

    .line 371
    .line 372
    new-instance v2, Li3/k;

    .line 373
    .line 374
    sget-object v17, Le3/a;->b:Le3/a;

    .line 375
    .line 376
    move-object v11, v2

    .line 377
    move-object v15, v5

    .line 378
    move-object/from16 v16, v1

    .line 379
    .line 380
    invoke-direct/range {v11 .. v17}, Li3/k;-><init>(Ljava/lang/String;Ljava/lang/String;ZLh3/a;Lh3/a;Le3/a;)V

    .line 381
    .line 382
    .line 383
    new-instance v1, Ln3/c;

    .line 384
    .line 385
    const/16 v3, 0xf

    .line 386
    .line 387
    invoke-direct {v1, v0, v3, v6}, Ln3/c;-><init>(Ln3/e;II)V

    .line 388
    .line 389
    .line 390
    goto/16 :goto_a

    .line 391
    .line 392
    :cond_10
    const/16 v1, 0xc

    .line 393
    .line 394
    filled-new-array {v1}, [I

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    invoke-virtual {v3, v1}, Lr3/d;->b([I)Z

    .line 399
    .line 400
    .line 401
    move-result v1

    .line 402
    if-eqz v1, :cond_11

    .line 403
    .line 404
    invoke-virtual {v3}, Lr3/d;->k()Ls3/j;

    .line 405
    .line 406
    .line 407
    move-result-object v1

    .line 408
    iget-object v1, v1, Ls3/j;->b:Lh3/a;

    .line 409
    .line 410
    new-instance v2, Li3/h;

    .line 411
    .line 412
    sget-object v17, Le3/a;->b:Le3/a;

    .line 413
    .line 414
    move-object v11, v2

    .line 415
    move-object v15, v5

    .line 416
    move-object/from16 v16, v1

    .line 417
    .line 418
    invoke-direct/range {v11 .. v17}, Li3/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZLh3/a;Lh3/a;Le3/a;)V

    .line 419
    .line 420
    .line 421
    new-instance v1, Ln3/c;

    .line 422
    .line 423
    const/16 v3, 0xa

    .line 424
    .line 425
    invoke-direct {v1, v0, v3, v6}, Ln3/c;-><init>(Ln3/e;II)V

    .line 426
    .line 427
    .line 428
    goto :goto_a

    .line 429
    :cond_11
    const/4 v1, 0x5

    .line 430
    if-eqz p1, :cond_12

    .line 431
    .line 432
    const/4 v7, 0x6

    .line 433
    filled-new-array {v7}, [I

    .line 434
    .line 435
    .line 436
    move-result-object v7

    .line 437
    invoke-virtual {v3, v7}, Lr3/d;->b([I)Z

    .line 438
    .line 439
    .line 440
    move-result v7

    .line 441
    if-eqz v7, :cond_12

    .line 442
    .line 443
    invoke-virtual {v3}, Lr3/d;->k()Ls3/j;

    .line 444
    .line 445
    .line 446
    move-result-object v2

    .line 447
    iget-object v2, v2, Ls3/j;->a:Lh3/a;

    .line 448
    .line 449
    new-instance v3, Li3/k;

    .line 450
    .line 451
    sget-object v17, Le3/a;->c:Le3/a;

    .line 452
    .line 453
    move-object v11, v3

    .line 454
    move-object v15, v5

    .line 455
    move-object/from16 v16, v2

    .line 456
    .line 457
    invoke-direct/range {v11 .. v17}, Li3/k;-><init>(Ljava/lang/String;Ljava/lang/String;ZLh3/a;Lh3/a;Le3/a;)V

    .line 458
    .line 459
    .line 460
    new-instance v2, Ln3/c;

    .line 461
    .line 462
    invoke-direct {v2, v0, v1, v6}, Ln3/c;-><init>(Ln3/e;II)V

    .line 463
    .line 464
    .line 465
    iput-object v2, v0, Ln3/e;->e:Ln3/f;

    .line 466
    .line 467
    goto/16 :goto_d

    .line 468
    .line 469
    :cond_12
    if-eqz p1, :cond_13

    .line 470
    .line 471
    filled-new-array {v1}, [I

    .line 472
    .line 473
    .line 474
    move-result-object v1

    .line 475
    invoke-virtual {v3, v1}, Lr3/d;->b([I)Z

    .line 476
    .line 477
    .line 478
    move-result v1

    .line 479
    if-eqz v1, :cond_13

    .line 480
    .line 481
    invoke-virtual {v3}, Lr3/d;->k()Ls3/j;

    .line 482
    .line 483
    .line 484
    move-result-object v1

    .line 485
    iget-object v1, v1, Ls3/j;->a:Lh3/a;

    .line 486
    .line 487
    new-instance v2, Li3/h;

    .line 488
    .line 489
    sget-object v17, Le3/a;->c:Le3/a;

    .line 490
    .line 491
    move-object v11, v2

    .line 492
    move-object v15, v5

    .line 493
    move-object/from16 v16, v1

    .line 494
    .line 495
    invoke-direct/range {v11 .. v17}, Li3/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZLh3/a;Lh3/a;Le3/a;)V

    .line 496
    .line 497
    .line 498
    new-instance v1, Ln3/c;

    .line 499
    .line 500
    invoke-direct {v1, v0, v6, v6}, Ln3/c;-><init>(Ln3/e;II)V

    .line 501
    .line 502
    .line 503
    :goto_a
    iput-object v1, v0, Ln3/e;->e:Ln3/f;

    .line 504
    .line 505
    move-object v3, v2

    .line 506
    goto :goto_d

    .line 507
    :cond_13
    if-nez v12, :cond_16

    .line 508
    .line 509
    if-eqz v13, :cond_14

    .line 510
    .line 511
    goto :goto_c

    .line 512
    :cond_14
    if-eqz p1, :cond_15

    .line 513
    .line 514
    const-string v1, "block"

    .line 515
    .line 516
    goto :goto_b

    .line 517
    :cond_15
    const-string v1, "flow"

    .line 518
    .line 519
    :goto_b
    invoke-virtual {v3}, Lr3/d;->k()Ls3/j;

    .line 520
    .line 521
    .line 522
    move-result-object v2

    .line 523
    new-instance v3, Ln3/b;

    .line 524
    .line 525
    const-string v4, "while parsing a "

    .line 526
    .line 527
    const-string v6, " node"

    .line 528
    .line 529
    invoke-static {v4, v1, v6}, La1/b;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object v1

    .line 533
    new-instance v4, Ljava/lang/StringBuilder;

    .line 534
    .line 535
    const-string v6, "expected the node content, but found \'"

    .line 536
    .line 537
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 538
    .line 539
    .line 540
    invoke-virtual {v2}, Ls3/j;->a()I

    .line 541
    .line 542
    .line 543
    move-result v6

    .line 544
    invoke-static {v6}, La1/b;->p(I)Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v6

    .line 548
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    .line 550
    .line 551
    const-string v6, "\'"

    .line 552
    .line 553
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    .line 555
    .line 556
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v4

    .line 560
    iget-object v2, v2, Ls3/j;->a:Lh3/a;

    .line 561
    .line 562
    invoke-direct {v3, v1, v5, v4, v2}, Ln3/b;-><init>(Ljava/lang/String;Lh3/a;Ljava/lang/String;Lh3/a;)V

    .line 563
    .line 564
    .line 565
    throw v3

    .line 566
    :cond_16
    :goto_c
    new-instance v3, Li3/j;

    .line 567
    .line 568
    new-instance v1, Lf0/h;

    .line 569
    .line 570
    invoke-direct {v1, v2, v14, v6}, Lf0/h;-><init>(IZZ)V

    .line 571
    .line 572
    .line 573
    const-string v15, ""

    .line 574
    .line 575
    sget-object v18, Le3/b;->f:Le3/b;

    .line 576
    .line 577
    move-object v11, v3

    .line 578
    move-object v14, v1

    .line 579
    move-object/from16 v16, v5

    .line 580
    .line 581
    invoke-direct/range {v11 .. v18}, Li3/j;-><init>(Ljava/lang/String;Ljava/lang/String;Lf0/h;Ljava/lang/String;Lh3/a;Lh3/a;Le3/b;)V

    .line 582
    .line 583
    .line 584
    invoke-virtual {v4}, Lh/a;->D()Ljava/lang/Object;

    .line 585
    .line 586
    .line 587
    move-result-object v1

    .line 588
    check-cast v1, Ln3/f;

    .line 589
    .line 590
    iput-object v1, v0, Ln3/e;->e:Ln3/f;

    .line 591
    .line 592
    :goto_d
    return-object v3
.end method

.method public final e()Li3/f;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e;->b:Li3/f;

    if-nez v0, :cond_0

    iget-object v0, p0, Ln3/e;->e:Ln3/f;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ln3/f;->a()Li3/f;

    move-result-object v0

    iput-object v0, p0, Ln3/e;->b:Li3/f;

    :cond_0
    iget-object v0, p0, Ln3/e;->b:Li3/f;

    return-object v0
.end method
