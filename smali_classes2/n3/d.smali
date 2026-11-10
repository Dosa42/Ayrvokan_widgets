.class public final Ln3/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/f;


# instance fields
.field public final synthetic a:I

.field public final b:Z

.field public final synthetic c:Ln3/e;


# direct methods
.method public synthetic constructor <init>(Ln3/e;ZI)V
    .locals 0

    .line 1
    iput p3, p0, Ln3/d;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Ln3/d;->c:Ln3/e;

    .line 4
    .line 5
    iput-boolean p2, p0, Ln3/d;->b:Z

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()Li3/f;
    .locals 14

    .line 1
    iget v0, p0, Ln3/d;->a:I

    .line 2
    .line 3
    const/16 v1, 0xf

    .line 4
    .line 5
    const/16 v2, 0xa

    .line 6
    .line 7
    iget-boolean v3, p0, Ln3/d;->b:Z

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    iget-object v5, p0, Ln3/d;->c:Ln3/e;

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    goto/16 :goto_3

    .line 16
    .line 17
    :pswitch_0
    iget-object v0, v5, Ln3/e;->a:Lr3/b;

    .line 18
    .line 19
    const/16 v6, 0xb

    .line 20
    .line 21
    filled-new-array {v6}, [I

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    check-cast v0, Lr3/d;

    .line 26
    .line 27
    invoke-virtual {v0, v7}, Lr3/d;->b([I)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iget-object v7, v5, Ln3/e;->d:Lh/a;

    .line 32
    .line 33
    iget-object v8, v5, Ln3/e;->c:Lh/a;

    .line 34
    .line 35
    iget-object v9, v5, Ln3/e;->a:Lr3/b;

    .line 36
    .line 37
    if-nez v0, :cond_4

    .line 38
    .line 39
    if-nez v3, :cond_1

    .line 40
    .line 41
    filled-new-array {v2}, [I

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    move-object v3, v9

    .line 46
    check-cast v3, Lr3/d;

    .line 47
    .line 48
    invoke-virtual {v3, v0}, Lr3/d;->b([I)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    invoke-virtual {v3}, Lr3/d;->i()Ls3/j;

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {v3}, Lr3/d;->k()Ls3/j;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    new-instance v1, Ln3/b;

    .line 63
    .line 64
    invoke-virtual {v7}, Lh/a;->D()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    check-cast v2, Lh3/a;

    .line 69
    .line 70
    invoke-virtual {v0}, Ls3/j;->a()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    invoke-static {v3}, La1/b;->p(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    const-string v4, "expected \',\' or \'}\', but got "

    .line 79
    .line 80
    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    const-string v4, "while parsing a flow mapping"

    .line 85
    .line 86
    iget-object v0, v0, Ls3/j;->a:Lh3/a;

    .line 87
    .line 88
    invoke-direct {v1, v4, v2, v3, v0}, Ln3/b;-><init>(Ljava/lang/String;Lh3/a;Ljava/lang/String;Lh3/a;)V

    .line 89
    .line 90
    .line 91
    throw v1

    .line 92
    :cond_1
    :goto_0
    filled-new-array {v1}, [I

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    move-object v1, v9

    .line 97
    check-cast v1, Lr3/d;

    .line 98
    .line 99
    invoke-virtual {v1, v0}, Lr3/d;->b([I)Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_3

    .line 104
    .line 105
    invoke-virtual {v1}, Lr3/d;->i()Ls3/j;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    const/16 v3, 0x14

    .line 110
    .line 111
    filled-new-array {v3, v2, v6}, [I

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {v1, v2}, Lr3/d;->b([I)Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-nez v1, :cond_2

    .line 120
    .line 121
    new-instance v0, Ln3/c;

    .line 122
    .line 123
    invoke-direct {v0, v5, v6, v4}, Ln3/c;-><init>(Ln3/e;II)V

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_2
    new-instance v1, Ln3/c;

    .line 128
    .line 129
    invoke-direct {v1, v5, v6, v4}, Ln3/c;-><init>(Ln3/e;II)V

    .line 130
    .line 131
    .line 132
    iput-object v1, v5, Ln3/e;->e:Ln3/f;

    .line 133
    .line 134
    iget-object v0, v0, Ls3/j;->b:Lh3/a;

    .line 135
    .line 136
    invoke-static {v5, v0}, Ln3/e;->a(Ln3/e;Lh3/a;)Li3/j;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    goto :goto_2

    .line 141
    :cond_3
    filled-new-array {v6}, [I

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {v1, v0}, Lr3/d;->b([I)Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-nez v0, :cond_4

    .line 150
    .line 151
    new-instance v0, Ln3/c;

    .line 152
    .line 153
    const/16 v1, 0x9

    .line 154
    .line 155
    invoke-direct {v0, v5, v1, v4}, Ln3/c;-><init>(Ln3/e;II)V

    .line 156
    .line 157
    .line 158
    :goto_1
    invoke-virtual {v8, v0}, Lh/a;->E(Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v5, v4, v4}, Ln3/e;->d(ZZ)Li3/i;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    goto :goto_2

    .line 166
    :cond_4
    check-cast v9, Lr3/d;

    .line 167
    .line 168
    invoke-virtual {v9}, Lr3/d;->i()Ls3/j;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    new-instance v1, Li3/g;

    .line 173
    .line 174
    iget-object v2, v0, Ls3/j;->a:Lh3/a;

    .line 175
    .line 176
    iget-object v0, v0, Ls3/j;->b:Lh3/a;

    .line 177
    .line 178
    invoke-direct {v1, v2, v0, v4}, Li3/g;-><init>(Lh3/a;Lh3/a;I)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v8}, Lh/a;->D()Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    check-cast v0, Ln3/f;

    .line 186
    .line 187
    iput-object v0, v5, Ln3/e;->e:Ln3/f;

    .line 188
    .line 189
    invoke-virtual {v7}, Lh/a;->D()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-object v0, v1

    .line 193
    :goto_2
    return-object v0

    .line 194
    :goto_3
    iget-object v0, v5, Ln3/e;->a:Lr3/b;

    .line 195
    .line 196
    const/16 v6, 0xd

    .line 197
    .line 198
    filled-new-array {v6}, [I

    .line 199
    .line 200
    .line 201
    move-result-object v7

    .line 202
    check-cast v0, Lr3/d;

    .line 203
    .line 204
    invoke-virtual {v0, v7}, Lr3/d;->b([I)Z

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    iget-object v7, v5, Ln3/e;->d:Lh/a;

    .line 209
    .line 210
    iget-object v8, v5, Ln3/e;->c:Lh/a;

    .line 211
    .line 212
    iget-object v9, v5, Ln3/e;->a:Lr3/b;

    .line 213
    .line 214
    const/4 v10, 0x1

    .line 215
    if-nez v0, :cond_8

    .line 216
    .line 217
    if-nez v3, :cond_6

    .line 218
    .line 219
    filled-new-array {v2}, [I

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    move-object v2, v9

    .line 224
    check-cast v2, Lr3/d;

    .line 225
    .line 226
    invoke-virtual {v2, v0}, Lr3/d;->b([I)Z

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    if-eqz v0, :cond_5

    .line 231
    .line 232
    invoke-virtual {v2}, Lr3/d;->i()Ls3/j;

    .line 233
    .line 234
    .line 235
    goto :goto_4

    .line 236
    :cond_5
    invoke-virtual {v2}, Lr3/d;->k()Ls3/j;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    new-instance v1, Ln3/b;

    .line 241
    .line 242
    invoke-virtual {v7}, Lh/a;->D()Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    check-cast v2, Lh3/a;

    .line 247
    .line 248
    invoke-virtual {v0}, Ls3/j;->a()I

    .line 249
    .line 250
    .line 251
    move-result v3

    .line 252
    invoke-static {v3}, La1/b;->p(I)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v3

    .line 256
    const-string v4, "expected \',\' or \']\', but got "

    .line 257
    .line 258
    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    const-string v4, "while parsing a flow sequence"

    .line 263
    .line 264
    iget-object v0, v0, Ls3/j;->a:Lh3/a;

    .line 265
    .line 266
    invoke-direct {v1, v4, v2, v3, v0}, Ln3/b;-><init>(Ljava/lang/String;Lh3/a;Ljava/lang/String;Lh3/a;)V

    .line 267
    .line 268
    .line 269
    throw v1

    .line 270
    :cond_6
    :goto_4
    filled-new-array {v1}, [I

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    move-object v1, v9

    .line 275
    check-cast v1, Lr3/d;

    .line 276
    .line 277
    invoke-virtual {v1, v0}, Lr3/d;->b([I)Z

    .line 278
    .line 279
    .line 280
    move-result v0

    .line 281
    if-eqz v0, :cond_7

    .line 282
    .line 283
    invoke-virtual {v1}, Lr3/d;->k()Ls3/j;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    new-instance v1, Li3/h;

    .line 288
    .line 289
    const/4 v8, 0x0

    .line 290
    const/4 v9, 0x0

    .line 291
    const/4 v10, 0x1

    .line 292
    iget-object v11, v0, Ls3/j;->a:Lh3/a;

    .line 293
    .line 294
    iget-object v12, v0, Ls3/j;->b:Lh3/a;

    .line 295
    .line 296
    sget-object v13, Le3/a;->b:Le3/a;

    .line 297
    .line 298
    move-object v7, v1

    .line 299
    invoke-direct/range {v7 .. v13}, Li3/h;-><init>(Ljava/lang/String;Ljava/lang/String;ZLh3/a;Lh3/a;Le3/a;)V

    .line 300
    .line 301
    .line 302
    new-instance v0, Ln3/c;

    .line 303
    .line 304
    invoke-direct {v0, v5, v6, v4}, Ln3/c;-><init>(Ln3/e;II)V

    .line 305
    .line 306
    .line 307
    iput-object v0, v5, Ln3/e;->e:Ln3/f;

    .line 308
    .line 309
    goto :goto_5

    .line 310
    :cond_7
    filled-new-array {v6}, [I

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    invoke-virtual {v1, v0}, Lr3/d;->b([I)Z

    .line 315
    .line 316
    .line 317
    move-result v0

    .line 318
    if-nez v0, :cond_8

    .line 319
    .line 320
    new-instance v0, Ln3/d;

    .line 321
    .line 322
    invoke-direct {v0, v5, v4, v10}, Ln3/d;-><init>(Ln3/e;ZI)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v8, v0}, Lh/a;->E(Ljava/lang/Object;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v5, v4, v4}, Ln3/e;->d(ZZ)Li3/i;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    goto :goto_5

    .line 333
    :cond_8
    check-cast v9, Lr3/d;

    .line 334
    .line 335
    invoke-virtual {v9}, Lr3/d;->i()Ls3/j;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    new-instance v1, Li3/g;

    .line 340
    .line 341
    iget-object v2, v0, Ls3/j;->a:Lh3/a;

    .line 342
    .line 343
    iget-object v0, v0, Ls3/j;->b:Lh3/a;

    .line 344
    .line 345
    invoke-direct {v1, v2, v0, v10}, Li3/g;-><init>(Lh3/a;Lh3/a;I)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {v8}, Lh/a;->D()Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    check-cast v0, Ln3/f;

    .line 353
    .line 354
    iput-object v0, v5, Ln3/e;->e:Ln3/f;

    .line 355
    .line 356
    invoke-virtual {v7}, Lh/a;->D()Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    :goto_5
    return-object v1

    .line 360
    nop

    .line 361
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
