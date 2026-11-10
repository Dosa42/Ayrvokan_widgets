.class public final Lw2/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt2/s;


# instance fields
.field public final f:I

.field public final g:Lw2/p;

.field public h:I


# direct methods
.method public constructor <init>(Lw2/p;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw2/l;->g:Lw2/p;

    iput p2, p0, Lw2/l;->f:I

    const/4 p1, -0x1

    iput p1, p0, Lw2/l;->h:I

    return-void
.end method


# virtual methods
.method public final A(J)I
    .locals 12

    .line 1
    iget v0, p0, Lw2/l;->h:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, -0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    if-eq v0, v2, :cond_0

    .line 7
    .line 8
    const/4 v4, -0x3

    .line 9
    if-eq v0, v4, :cond_0

    .line 10
    .line 11
    const/4 v4, -0x2

    .line 12
    if-eq v0, v4, :cond_0

    .line 13
    .line 14
    move v4, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v4, v3

    .line 17
    :goto_0
    if-eqz v4, :cond_7

    .line 18
    .line 19
    iget-object v4, p0, Lw2/l;->g:Lw2/p;

    .line 20
    .line 21
    invoke-virtual {v4}, Lw2/p;->q()Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-eqz v5, :cond_1

    .line 26
    .line 27
    goto :goto_3

    .line 28
    :cond_1
    iget-object v5, v4, Lw2/p;->x:[Lw2/o;

    .line 29
    .line 30
    aget-object v0, v5, v0

    .line 31
    .line 32
    iget-boolean v4, v4, Lw2/p;->V:Z

    .line 33
    .line 34
    if-eqz v4, :cond_2

    .line 35
    .line 36
    monitor-enter v0

    .line 37
    :try_start_0
    iget-wide v4, v0, Lw2/o;->t:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 38
    .line 39
    monitor-exit v0

    .line 40
    cmp-long v4, p1, v4

    .line 41
    .line 42
    if-lez v4, :cond_2

    .line 43
    .line 44
    monitor-enter v0

    .line 45
    :try_start_1
    iget p1, v0, Lw2/o;->o:I

    .line 46
    .line 47
    iget p2, v0, Lw2/o;->r:I

    .line 48
    .line 49
    sub-int v3, p1, p2

    .line 50
    .line 51
    iput p1, v0, Lw2/o;->r:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    .line 53
    monitor-exit v0

    .line 54
    goto :goto_3

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    monitor-exit v0

    .line 57
    throw p1

    .line 58
    :catchall_1
    move-exception p1

    .line 59
    monitor-exit v0

    .line 60
    throw p1

    .line 61
    :cond_2
    monitor-enter v0

    .line 62
    :try_start_2
    iget v4, v0, Lw2/o;->r:I

    .line 63
    .line 64
    invoke-virtual {v0, v4}, Lw2/o;->i(I)I

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    iget v4, v0, Lw2/o;->r:I

    .line 69
    .line 70
    iget v5, v0, Lw2/o;->o:I

    .line 71
    .line 72
    if-eq v4, v5, :cond_3

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    move v1, v3

    .line 76
    :goto_1
    if-eqz v1, :cond_6

    .line 77
    .line 78
    iget-object v1, v0, Lw2/o;->l:[J

    .line 79
    .line 80
    aget-wide v8, v1, v7

    .line 81
    .line 82
    cmp-long v1, p1, v8

    .line 83
    .line 84
    if-gez v1, :cond_4

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_4
    sub-int v8, v5, v4

    .line 88
    .line 89
    const/4 v11, 0x1

    .line 90
    move-object v6, v0

    .line 91
    move-wide v9, p1

    .line 92
    invoke-virtual/range {v6 .. v11}, Lw2/o;->g(IIJZ)I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-ne p1, v2, :cond_5

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_5
    iget p2, v0, Lw2/o;->r:I

    .line 100
    .line 101
    add-int/2addr p2, p1

    .line 102
    iput p2, v0, Lw2/o;->r:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 103
    .line 104
    monitor-exit v0

    .line 105
    move v3, p1

    .line 106
    goto :goto_3

    .line 107
    :cond_6
    :goto_2
    monitor-exit v0

    .line 108
    goto :goto_3

    .line 109
    :catchall_2
    move-exception p1

    .line 110
    monitor-exit v0

    .line 111
    throw p1

    .line 112
    :cond_7
    :goto_3
    return v3
.end method

.method public final B(Lf2/u;Li2/c;Z)I
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget v3, v1, Lw2/l;->h:I

    .line 8
    .line 9
    const/4 v4, -0x4

    .line 10
    const/4 v5, 0x4

    .line 11
    const/4 v6, -0x3

    .line 12
    if-ne v3, v6, :cond_0

    .line 13
    .line 14
    iget v0, v2, Li2/a;->b:I

    .line 15
    .line 16
    or-int/2addr v0, v5

    .line 17
    iput v0, v2, Li2/a;->b:I

    .line 18
    .line 19
    return v4

    .line 20
    :cond_0
    const/4 v7, -0x1

    .line 21
    const/4 v8, 0x0

    .line 22
    const/4 v9, 0x1

    .line 23
    if-eq v3, v7, :cond_1

    .line 24
    .line 25
    if-eq v3, v6, :cond_1

    .line 26
    .line 27
    const/4 v10, -0x2

    .line 28
    if-eq v3, v10, :cond_1

    .line 29
    .line 30
    move v10, v9

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move v10, v8

    .line 33
    :goto_0
    if-eqz v10, :cond_3b

    .line 34
    .line 35
    iget-object v10, v1, Lw2/l;->g:Lw2/p;

    .line 36
    .line 37
    invoke-virtual {v10}, Lw2/p;->q()Z

    .line 38
    .line 39
    .line 40
    move-result v11

    .line 41
    if-eqz v11, :cond_2

    .line 42
    .line 43
    goto/16 :goto_2b

    .line 44
    .line 45
    :cond_2
    iget-object v11, v10, Lw2/p;->q:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result v11

    .line 51
    if-nez v11, :cond_b

    .line 52
    .line 53
    move v11, v8

    .line 54
    :goto_1
    iget-object v12, v10, Lw2/p;->q:Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 57
    .line 58
    .line 59
    move-result v12

    .line 60
    sub-int/2addr v12, v9

    .line 61
    if-ge v11, v12, :cond_7

    .line 62
    .line 63
    iget-object v12, v10, Lw2/p;->q:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v12

    .line 69
    check-cast v12, Lw2/h;

    .line 70
    .line 71
    iget v12, v12, Lw2/h;->j:I

    .line 72
    .line 73
    iget-object v13, v10, Lw2/p;->x:[Lw2/o;

    .line 74
    .line 75
    array-length v13, v13

    .line 76
    move v14, v8

    .line 77
    :goto_2
    if-ge v14, v13, :cond_6

    .line 78
    .line 79
    iget-object v15, v10, Lw2/p;->P:[Z

    .line 80
    .line 81
    aget-boolean v15, v15, v14

    .line 82
    .line 83
    if-eqz v15, :cond_5

    .line 84
    .line 85
    iget-object v15, v10, Lw2/p;->x:[Lw2/o;

    .line 86
    .line 87
    aget-object v15, v15, v14

    .line 88
    .line 89
    monitor-enter v15

    .line 90
    :try_start_0
    iget v6, v15, Lw2/o;->r:I

    .line 91
    .line 92
    invoke-virtual {v15, v6}, Lw2/o;->i(I)I

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    iget v7, v15, Lw2/o;->r:I

    .line 97
    .line 98
    iget v4, v15, Lw2/o;->o:I

    .line 99
    .line 100
    if-eq v7, v4, :cond_3

    .line 101
    .line 102
    move v4, v9

    .line 103
    goto :goto_3

    .line 104
    :cond_3
    move v4, v8

    .line 105
    :goto_3
    if-eqz v4, :cond_4

    .line 106
    .line 107
    iget-object v4, v15, Lw2/o;->h:[I

    .line 108
    .line 109
    aget v4, v4, v6

    .line 110
    .line 111
    goto :goto_4

    .line 112
    :cond_4
    iget v4, v15, Lw2/o;->z:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .line 114
    :goto_4
    monitor-exit v15

    .line 115
    if-ne v4, v12, :cond_5

    .line 116
    .line 117
    move v4, v8

    .line 118
    goto :goto_5

    .line 119
    :catchall_0
    move-exception v0

    .line 120
    monitor-exit v15

    .line 121
    throw v0

    .line 122
    :cond_5
    add-int/lit8 v14, v14, 0x1

    .line 123
    .line 124
    const/4 v4, -0x4

    .line 125
    const/4 v6, -0x3

    .line 126
    const/4 v7, -0x1

    .line 127
    goto :goto_2

    .line 128
    :cond_6
    move v4, v9

    .line 129
    :goto_5
    if-eqz v4, :cond_7

    .line 130
    .line 131
    add-int/lit8 v11, v11, 0x1

    .line 132
    .line 133
    const/4 v4, -0x4

    .line 134
    const/4 v6, -0x3

    .line 135
    const/4 v7, -0x1

    .line 136
    goto :goto_1

    .line 137
    :cond_7
    iget-object v4, v10, Lw2/p;->q:Ljava/util/ArrayList;

    .line 138
    .line 139
    sget v6, Lb3/n;->a:I

    .line 140
    .line 141
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 142
    .line 143
    .line 144
    move-result v6

    .line 145
    if-gt v11, v6, :cond_a

    .line 146
    .line 147
    if-ltz v11, :cond_a

    .line 148
    .line 149
    if-eqz v11, :cond_8

    .line 150
    .line 151
    invoke-virtual {v4, v8, v11}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 156
    .line 157
    .line 158
    :cond_8
    iget-object v4, v10, Lw2/p;->q:Ljava/util/ArrayList;

    .line 159
    .line 160
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    check-cast v4, Lw2/h;

    .line 165
    .line 166
    iget-object v6, v4, Lv2/a;->c:Lf2/t;

    .line 167
    .line 168
    iget-object v7, v10, Lw2/p;->I:Lf2/t;

    .line 169
    .line 170
    invoke-virtual {v6, v7}, Lf2/t;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v7

    .line 174
    if-nez v7, :cond_9

    .line 175
    .line 176
    iget-object v7, v10, Lw2/p;->n:Lcom/google/android/gms/internal/play_billing/v;

    .line 177
    .line 178
    iget-object v11, v4, Lv2/a;->e:Ljava/lang/Object;

    .line 179
    .line 180
    iget-wide v12, v4, Lv2/a;->f:J

    .line 181
    .line 182
    new-instance v4, Lt2/m;

    .line 183
    .line 184
    invoke-virtual {v7, v12, v13}, Lcom/google/android/gms/internal/play_billing/v;->a(J)J

    .line 185
    .line 186
    .line 187
    invoke-direct {v4, v9, v11}, Lt2/m;-><init>(ILjava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    iget-object v11, v7, Lcom/google/android/gms/internal/play_billing/v;->d:Ljava/lang/Object;

    .line 191
    .line 192
    check-cast v11, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 193
    .line 194
    invoke-virtual {v11}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 195
    .line 196
    .line 197
    move-result-object v11

    .line 198
    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 199
    .line 200
    .line 201
    move-result v12

    .line 202
    if-eqz v12, :cond_9

    .line 203
    .line 204
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v12

    .line 208
    check-cast v12, Lt2/k;

    .line 209
    .line 210
    iget-object v13, v12, Lt2/k;->b:Lt2/n;

    .line 211
    .line 212
    new-instance v14, Ln1/a;

    .line 213
    .line 214
    const/4 v15, 0x7

    .line 215
    invoke-direct {v14, v7, v13, v4, v15}, Ln1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 216
    .line 217
    .line 218
    iget-object v12, v12, Lt2/k;->a:Landroid/os/Handler;

    .line 219
    .line 220
    invoke-static {v12, v14}, Lcom/google/android/gms/internal/play_billing/v;->i(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 221
    .line 222
    .line 223
    goto :goto_6

    .line 224
    :cond_9
    iput-object v6, v10, Lw2/p;->I:Lf2/t;

    .line 225
    .line 226
    goto :goto_7

    .line 227
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 228
    .line 229
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 230
    .line 231
    .line 232
    throw v0

    .line 233
    :cond_b
    :goto_7
    iget-object v4, v10, Lw2/p;->x:[Lw2/o;

    .line 234
    .line 235
    aget-object v4, v4, v3

    .line 236
    .line 237
    iget-boolean v6, v10, Lw2/p;->V:Z

    .line 238
    .line 239
    iget-wide v11, v10, Lw2/p;->R:J

    .line 240
    .line 241
    iget-object v7, v4, Lw2/o;->b:Lt2/q;

    .line 242
    .line 243
    monitor-enter v4

    .line 244
    :try_start_1
    iput-boolean v8, v2, Li2/c;->e:Z

    .line 245
    .line 246
    const/4 v13, -0x1

    .line 247
    :goto_8
    iget v14, v4, Lw2/o;->r:I

    .line 248
    .line 249
    iget v15, v4, Lw2/o;->o:I

    .line 250
    .line 251
    if-eq v14, v15, :cond_c

    .line 252
    .line 253
    move v15, v9

    .line 254
    goto :goto_9

    .line 255
    :cond_c
    move v15, v8

    .line 256
    :goto_9
    const/4 v8, 0x2

    .line 257
    if-eqz v15, :cond_13

    .line 258
    .line 259
    invoke-virtual {v4, v14}, Lw2/o;->i(I)I

    .line 260
    .line 261
    .line 262
    move-result v13

    .line 263
    iget-object v14, v4, Lw2/o;->l:[J

    .line 264
    .line 265
    aget-wide v17, v14, v13

    .line 266
    .line 267
    cmp-long v14, v17, v11

    .line 268
    .line 269
    if-gez v14, :cond_13

    .line 270
    .line 271
    iget-object v14, v4, Lw2/o;->n:[Lf2/t;

    .line 272
    .line 273
    aget-object v14, v14, v13

    .line 274
    .line 275
    iget-object v14, v14, Lf2/t;->i:Ljava/lang/String;

    .line 276
    .line 277
    sget-object v17, Lb3/c;->a:Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 278
    .line 279
    if-nez v14, :cond_d

    .line 280
    .line 281
    goto :goto_c

    .line 282
    :cond_d
    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    .line 283
    .line 284
    .line 285
    move-result v17

    .line 286
    sparse-switch v17, :sswitch_data_0

    .line 287
    .line 288
    .line 289
    goto :goto_a

    .line 290
    :sswitch_0
    const-string v5, "audio/mpeg"

    .line 291
    .line 292
    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    move-result v5

    .line 296
    if-nez v5, :cond_e

    .line 297
    .line 298
    goto :goto_a

    .line 299
    :cond_e
    const/4 v5, 0x3

    .line 300
    goto :goto_b

    .line 301
    :sswitch_1
    const-string v5, "audio/mp4a-latm"

    .line 302
    .line 303
    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result v5

    .line 307
    if-nez v5, :cond_f

    .line 308
    .line 309
    goto :goto_a

    .line 310
    :cond_f
    move v5, v8

    .line 311
    goto :goto_b

    .line 312
    :sswitch_2
    const-string v5, "audio/mpeg-L2"

    .line 313
    .line 314
    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result v5

    .line 318
    if-nez v5, :cond_10

    .line 319
    .line 320
    goto :goto_a

    .line 321
    :cond_10
    move v5, v9

    .line 322
    goto :goto_b

    .line 323
    :sswitch_3
    const-string v5, "audio/mpeg-L1"

    .line 324
    .line 325
    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    move-result v5

    .line 329
    if-nez v5, :cond_11

    .line 330
    .line 331
    goto :goto_a

    .line 332
    :cond_11
    const/4 v5, 0x0

    .line 333
    goto :goto_b

    .line 334
    :goto_a
    const/4 v5, -0x1

    .line 335
    :goto_b
    if-eqz v5, :cond_12

    .line 336
    .line 337
    if-eq v5, v9, :cond_12

    .line 338
    .line 339
    if-eq v5, v8, :cond_12

    .line 340
    .line 341
    const/4 v14, 0x3

    .line 342
    if-eq v5, v14, :cond_12

    .line 343
    .line 344
    :goto_c
    const/4 v5, 0x0

    .line 345
    goto :goto_d

    .line 346
    :cond_12
    move v5, v9

    .line 347
    :goto_d
    if-eqz v5, :cond_13

    .line 348
    .line 349
    :try_start_2
    iget v5, v4, Lw2/o;->r:I

    .line 350
    .line 351
    add-int/2addr v5, v9

    .line 352
    iput v5, v4, Lw2/o;->r:I

    .line 353
    .line 354
    const/4 v5, 0x4

    .line 355
    const/4 v8, 0x0

    .line 356
    goto :goto_8

    .line 357
    :cond_13
    if-nez v15, :cond_16

    .line 358
    .line 359
    if-nez v6, :cond_15

    .line 360
    .line 361
    iget-boolean v6, v4, Lw2/o;->u:Z

    .line 362
    .line 363
    if-eqz v6, :cond_14

    .line 364
    .line 365
    goto :goto_e

    .line 366
    :cond_14
    iget-object v6, v4, Lw2/o;->x:Lf2/t;

    .line 367
    .line 368
    if-eqz v6, :cond_1a

    .line 369
    .line 370
    if-nez p3, :cond_20

    .line 371
    .line 372
    iget-object v7, v4, Lw2/o;->e:Lf2/t;

    .line 373
    .line 374
    if-eq v6, v7, :cond_1a

    .line 375
    .line 376
    goto/16 :goto_15

    .line 377
    .line 378
    :cond_15
    :goto_e
    const/4 v6, 0x4

    .line 379
    iput v6, v2, Li2/a;->b:I

    .line 380
    .line 381
    goto :goto_12

    .line 382
    :cond_16
    if-nez p3, :cond_1f

    .line 383
    .line 384
    iget-object v6, v4, Lw2/o;->n:[Lf2/t;

    .line 385
    .line 386
    aget-object v6, v6, v13

    .line 387
    .line 388
    iget-object v14, v4, Lw2/o;->e:Lf2/t;

    .line 389
    .line 390
    if-eq v6, v14, :cond_17

    .line 391
    .line 392
    goto :goto_14

    .line 393
    :cond_17
    sget-object v6, Lj2/d;->c:Ly0/i;

    .line 394
    .line 395
    iget-object v14, v4, Lw2/o;->c:Lj2/d;

    .line 396
    .line 397
    if-ne v14, v6, :cond_18

    .line 398
    .line 399
    goto :goto_f

    .line 400
    :cond_18
    iget-object v6, v4, Lw2/o;->f:Lh/a;

    .line 401
    .line 402
    if-eqz v6, :cond_19

    .line 403
    .line 404
    iget-object v6, v4, Lw2/o;->k:[I

    .line 405
    .line 406
    aget v6, v6, v13

    .line 407
    .line 408
    const/4 v6, 0x0

    .line 409
    goto :goto_10

    .line 410
    :cond_19
    :goto_f
    move v6, v9

    .line 411
    :goto_10
    if-nez v6, :cond_1b

    .line 412
    .line 413
    iput-boolean v9, v2, Li2/c;->e:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 414
    .line 415
    :cond_1a
    monitor-exit v4

    .line 416
    const/4 v6, -0x3

    .line 417
    goto :goto_13

    .line 418
    :cond_1b
    :try_start_3
    iget-object v6, v4, Lw2/o;->k:[I

    .line 419
    .line 420
    aget v6, v6, v13

    .line 421
    .line 422
    iput v6, v2, Li2/a;->b:I

    .line 423
    .line 424
    iget-object v14, v4, Lw2/o;->l:[J

    .line 425
    .line 426
    aget-wide v8, v14, v13

    .line 427
    .line 428
    iput-wide v8, v2, Li2/c;->f:J

    .line 429
    .line 430
    cmp-long v8, v8, v11

    .line 431
    .line 432
    if-gez v8, :cond_1c

    .line 433
    .line 434
    const/high16 v8, -0x80000000

    .line 435
    .line 436
    or-int/2addr v6, v8

    .line 437
    iput v6, v2, Li2/a;->b:I

    .line 438
    .line 439
    :cond_1c
    iget-object v6, v2, Li2/c;->d:Ljava/nio/ByteBuffer;

    .line 440
    .line 441
    if-nez v6, :cond_1d

    .line 442
    .line 443
    iget v6, v2, Li2/c;->h:I

    .line 444
    .line 445
    if-nez v6, :cond_1d

    .line 446
    .line 447
    const/4 v6, 0x1

    .line 448
    goto :goto_11

    .line 449
    :cond_1d
    const/4 v6, 0x0

    .line 450
    :goto_11
    if-eqz v6, :cond_1e

    .line 451
    .line 452
    goto :goto_12

    .line 453
    :cond_1e
    iget-object v6, v4, Lw2/o;->j:[I

    .line 454
    .line 455
    aget v6, v6, v13

    .line 456
    .line 457
    iput v6, v7, Lt2/q;->a:I

    .line 458
    .line 459
    iget-object v6, v4, Lw2/o;->i:[J

    .line 460
    .line 461
    aget-wide v8, v6, v13

    .line 462
    .line 463
    iput-wide v8, v7, Lt2/q;->b:J

    .line 464
    .line 465
    iget-object v6, v4, Lw2/o;->m:[Lk2/n;

    .line 466
    .line 467
    aget-object v6, v6, v13

    .line 468
    .line 469
    iput-object v6, v7, Lt2/q;->c:Ljava/lang/Object;

    .line 470
    .line 471
    iget v6, v4, Lw2/o;->r:I

    .line 472
    .line 473
    const/4 v7, 0x1

    .line 474
    add-int/2addr v6, v7

    .line 475
    iput v6, v4, Lw2/o;->r:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 476
    .line 477
    :goto_12
    monitor-exit v4

    .line 478
    const/4 v6, -0x4

    .line 479
    :goto_13
    const/4 v7, -0x4

    .line 480
    goto :goto_1a

    .line 481
    :cond_1f
    :goto_14
    :try_start_4
    iget-object v6, v4, Lw2/o;->n:[Lf2/t;

    .line 482
    .line 483
    aget-object v6, v6, v13

    .line 484
    .line 485
    :cond_20
    :goto_15
    iput-object v6, v0, Lf2/u;->a:Lf2/t;

    .line 486
    .line 487
    iget-object v7, v4, Lw2/o;->e:Lf2/t;

    .line 488
    .line 489
    if-nez v7, :cond_21

    .line 490
    .line 491
    const/4 v8, 0x1

    .line 492
    goto :goto_16

    .line 493
    :cond_21
    const/4 v8, 0x0

    .line 494
    :goto_16
    const/4 v9, 0x0

    .line 495
    if-eqz v8, :cond_22

    .line 496
    .line 497
    move-object v7, v9

    .line 498
    goto :goto_17

    .line 499
    :cond_22
    iget-object v7, v7, Lf2/t;->l:Lj2/b;

    .line 500
    .line 501
    :goto_17
    iput-object v6, v4, Lw2/o;->e:Lf2/t;

    .line 502
    .line 503
    sget-object v11, Lj2/d;->c:Ly0/i;

    .line 504
    .line 505
    iget-object v12, v4, Lw2/o;->c:Lj2/d;

    .line 506
    .line 507
    if-ne v12, v11, :cond_23

    .line 508
    .line 509
    goto :goto_19

    .line 510
    :cond_23
    iget-object v11, v6, Lf2/t;->l:Lj2/b;

    .line 511
    .line 512
    if-nez v8, :cond_24

    .line 513
    .line 514
    invoke-static {v7, v11}, Lb3/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 515
    .line 516
    .line 517
    move-result v7

    .line 518
    if-eqz v7, :cond_24

    .line 519
    .line 520
    goto :goto_19

    .line 521
    :cond_24
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 522
    .line 523
    .line 524
    move-result-object v7

    .line 525
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 526
    .line 527
    .line 528
    if-eqz v11, :cond_25

    .line 529
    .line 530
    check-cast v12, Ly0/i;

    .line 531
    .line 532
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 533
    .line 534
    .line 535
    new-instance v9, Lh/a;

    .line 536
    .line 537
    new-instance v6, La3/j;

    .line 538
    .line 539
    new-instance v7, Lj2/e;

    .line 540
    .line 541
    invoke-direct {v7}, Lj2/e;-><init>()V

    .line 542
    .line 543
    .line 544
    invoke-direct {v6, v7}, La3/j;-><init>(Lj2/e;)V

    .line 545
    .line 546
    .line 547
    invoke-direct {v9, v6}, Lh/a;-><init>(La3/j;)V

    .line 548
    .line 549
    .line 550
    goto :goto_18

    .line 551
    :cond_25
    iget-object v6, v6, Lf2/t;->i:Ljava/lang/String;

    .line 552
    .line 553
    invoke-static {v6}, Lb3/c;->d(Ljava/lang/String;)I

    .line 554
    .line 555
    .line 556
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 557
    .line 558
    .line 559
    :goto_18
    iput-object v9, v4, Lw2/o;->f:Lh/a;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 560
    .line 561
    :goto_19
    monitor-exit v4

    .line 562
    const/4 v6, -0x5

    .line 563
    goto :goto_13

    .line 564
    :goto_1a
    if-ne v6, v7, :cond_35

    .line 565
    .line 566
    const/4 v7, 0x4

    .line 567
    invoke-virtual {v2, v7}, Li2/a;->b(I)Z

    .line 568
    .line 569
    .line 570
    move-result v8

    .line 571
    if-nez v8, :cond_35

    .line 572
    .line 573
    iget-object v7, v2, Li2/c;->d:Ljava/nio/ByteBuffer;

    .line 574
    .line 575
    if-nez v7, :cond_26

    .line 576
    .line 577
    iget v7, v2, Li2/c;->h:I

    .line 578
    .line 579
    if-nez v7, :cond_26

    .line 580
    .line 581
    const/4 v7, 0x1

    .line 582
    goto :goto_1b

    .line 583
    :cond_26
    const/4 v7, 0x0

    .line 584
    :goto_1b
    if-nez v7, :cond_35

    .line 585
    .line 586
    iget-object v7, v4, Lw2/o;->a:Lt2/p;

    .line 587
    .line 588
    iget-object v4, v4, Lw2/o;->b:Lt2/q;

    .line 589
    .line 590
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 591
    .line 592
    .line 593
    const/high16 v8, 0x40000000    # 2.0f

    .line 594
    .line 595
    invoke-virtual {v2, v8}, Li2/a;->b(I)Z

    .line 596
    .line 597
    .line 598
    move-result v8

    .line 599
    iget-object v9, v7, Lt2/p;->c:Lb3/h;

    .line 600
    .line 601
    if-eqz v8, :cond_31

    .line 602
    .line 603
    iget-wide v11, v4, Lt2/q;->b:J

    .line 604
    .line 605
    const/4 v8, 0x1

    .line 606
    invoke-virtual {v9, v8}, Lb3/h;->n(I)V

    .line 607
    .line 608
    .line 609
    iget-object v13, v9, Lb3/h;->c:Ljava/io/Serializable;

    .line 610
    .line 611
    check-cast v13, [B

    .line 612
    .line 613
    invoke-virtual {v7, v11, v12, v13, v8}, Lt2/p;->d(J[BI)V

    .line 614
    .line 615
    .line 616
    const-wide/16 v13, 0x1

    .line 617
    .line 618
    add-long/2addr v11, v13

    .line 619
    iget-object v13, v9, Lb3/h;->c:Ljava/io/Serializable;

    .line 620
    .line 621
    check-cast v13, [B

    .line 622
    .line 623
    const/4 v14, 0x0

    .line 624
    aget-byte v13, v13, v14

    .line 625
    .line 626
    and-int/lit16 v14, v13, 0x80

    .line 627
    .line 628
    if-eqz v14, :cond_27

    .line 629
    .line 630
    move v14, v8

    .line 631
    goto :goto_1c

    .line 632
    :cond_27
    const/4 v14, 0x0

    .line 633
    :goto_1c
    and-int/lit8 v13, v13, 0x7f

    .line 634
    .line 635
    iget-object v15, v2, Li2/c;->c:Li2/b;

    .line 636
    .line 637
    iget-object v8, v15, Li2/b;->a:[B

    .line 638
    .line 639
    if-nez v8, :cond_28

    .line 640
    .line 641
    const/16 v8, 0x10

    .line 642
    .line 643
    new-array v8, v8, [B

    .line 644
    .line 645
    iput-object v8, v15, Li2/b;->a:[B

    .line 646
    .line 647
    goto :goto_1d

    .line 648
    :cond_28
    const/4 v5, 0x0

    .line 649
    invoke-static {v8, v5}, Ljava/util/Arrays;->fill([BB)V

    .line 650
    .line 651
    .line 652
    :goto_1d
    iget-object v5, v15, Li2/b;->a:[B

    .line 653
    .line 654
    invoke-virtual {v7, v11, v12, v5, v13}, Lt2/p;->d(J[BI)V

    .line 655
    .line 656
    .line 657
    int-to-long v0, v13

    .line 658
    add-long/2addr v11, v0

    .line 659
    if-eqz v14, :cond_29

    .line 660
    .line 661
    const/4 v0, 0x2

    .line 662
    invoke-virtual {v9, v0}, Lb3/h;->n(I)V

    .line 663
    .line 664
    .line 665
    iget-object v1, v9, Lb3/h;->c:Ljava/io/Serializable;

    .line 666
    .line 667
    check-cast v1, [B

    .line 668
    .line 669
    invoke-virtual {v7, v11, v12, v1, v0}, Lt2/p;->d(J[BI)V

    .line 670
    .line 671
    .line 672
    const-wide/16 v0, 0x2

    .line 673
    .line 674
    add-long/2addr v11, v0

    .line 675
    invoke-virtual {v9}, Lb3/h;->m()I

    .line 676
    .line 677
    .line 678
    move-result v0

    .line 679
    goto :goto_1e

    .line 680
    :cond_29
    const/4 v0, 0x1

    .line 681
    :goto_1e
    iget-object v1, v15, Li2/b;->b:[I

    .line 682
    .line 683
    if-eqz v1, :cond_2a

    .line 684
    .line 685
    array-length v5, v1

    .line 686
    if-ge v5, v0, :cond_2b

    .line 687
    .line 688
    :cond_2a
    new-array v1, v0, [I

    .line 689
    .line 690
    :cond_2b
    iget-object v5, v15, Li2/b;->c:[I

    .line 691
    .line 692
    if-eqz v5, :cond_2c

    .line 693
    .line 694
    array-length v8, v5

    .line 695
    if-ge v8, v0, :cond_2d

    .line 696
    .line 697
    :cond_2c
    new-array v5, v0, [I

    .line 698
    .line 699
    :cond_2d
    if-eqz v14, :cond_2f

    .line 700
    .line 701
    mul-int/lit8 v8, v0, 0x6

    .line 702
    .line 703
    invoke-virtual {v9, v8}, Lb3/h;->n(I)V

    .line 704
    .line 705
    .line 706
    iget-object v13, v9, Lb3/h;->c:Ljava/io/Serializable;

    .line 707
    .line 708
    check-cast v13, [B

    .line 709
    .line 710
    invoke-virtual {v7, v11, v12, v13, v8}, Lt2/p;->d(J[BI)V

    .line 711
    .line 712
    .line 713
    int-to-long v13, v8

    .line 714
    add-long/2addr v11, v13

    .line 715
    const/4 v14, 0x0

    .line 716
    invoke-virtual {v9, v14}, Lb3/h;->q(I)V

    .line 717
    .line 718
    .line 719
    move v8, v14

    .line 720
    :goto_1f
    if-ge v8, v0, :cond_2e

    .line 721
    .line 722
    invoke-virtual {v9}, Lb3/h;->m()I

    .line 723
    .line 724
    .line 725
    move-result v13

    .line 726
    aput v13, v1, v8

    .line 727
    .line 728
    invoke-virtual {v9}, Lb3/h;->k()I

    .line 729
    .line 730
    .line 731
    move-result v13

    .line 732
    aput v13, v5, v8

    .line 733
    .line 734
    add-int/lit8 v8, v8, 0x1

    .line 735
    .line 736
    goto :goto_1f

    .line 737
    :cond_2e
    move-object v13, v15

    .line 738
    goto :goto_20

    .line 739
    :cond_2f
    const/4 v14, 0x0

    .line 740
    aput v14, v1, v14

    .line 741
    .line 742
    iget v8, v4, Lt2/q;->a:I

    .line 743
    .line 744
    move-object v13, v15

    .line 745
    iget-wide v14, v4, Lt2/q;->b:J

    .line 746
    .line 747
    sub-long v14, v11, v14

    .line 748
    .line 749
    long-to-int v14, v14

    .line 750
    sub-int/2addr v8, v14

    .line 751
    const/4 v14, 0x0

    .line 752
    aput v8, v5, v14

    .line 753
    .line 754
    :goto_20
    iget-object v8, v4, Lt2/q;->c:Ljava/lang/Object;

    .line 755
    .line 756
    check-cast v8, Lk2/n;

    .line 757
    .line 758
    iget-object v15, v8, Lk2/n;->b:[B

    .line 759
    .line 760
    iget-object v14, v13, Li2/b;->a:[B

    .line 761
    .line 762
    iput-object v1, v13, Li2/b;->b:[I

    .line 763
    .line 764
    iput-object v5, v13, Li2/b;->c:[I

    .line 765
    .line 766
    iput-object v14, v13, Li2/b;->a:[B

    .line 767
    .line 768
    move/from16 v16, v3

    .line 769
    .line 770
    iget-object v3, v13, Li2/b;->d:Landroid/media/MediaCodec$CryptoInfo;

    .line 771
    .line 772
    iput v0, v3, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    .line 773
    .line 774
    iput-object v1, v3, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 775
    .line 776
    iput-object v5, v3, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    .line 777
    .line 778
    iput-object v15, v3, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    .line 779
    .line 780
    iput-object v14, v3, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    .line 781
    .line 782
    iget v0, v8, Lk2/n;->a:I

    .line 783
    .line 784
    iput v0, v3, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    .line 785
    .line 786
    sget v0, Lb3/n;->a:I

    .line 787
    .line 788
    const/16 v1, 0x18

    .line 789
    .line 790
    if-lt v0, v1, :cond_30

    .line 791
    .line 792
    iget-object v0, v13, Li2/b;->e:Landroidx/fragment/app/h;

    .line 793
    .line 794
    iget-object v1, v0, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    .line 795
    .line 796
    check-cast v1, Landroid/media/MediaCodec$CryptoInfo$Pattern;

    .line 797
    .line 798
    iget v3, v8, Lk2/n;->c:I

    .line 799
    .line 800
    iget v5, v8, Lk2/n;->d:I

    .line 801
    .line 802
    invoke-virtual {v1, v3, v5}, Landroid/media/MediaCodec$CryptoInfo$Pattern;->set(II)V

    .line 803
    .line 804
    .line 805
    iget-object v1, v0, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 806
    .line 807
    check-cast v1, Landroid/media/MediaCodec$CryptoInfo;

    .line 808
    .line 809
    iget-object v0, v0, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    .line 810
    .line 811
    check-cast v0, Landroid/media/MediaCodec$CryptoInfo$Pattern;

    .line 812
    .line 813
    invoke-virtual {v1, v0}, Landroid/media/MediaCodec$CryptoInfo;->setPattern(Landroid/media/MediaCodec$CryptoInfo$Pattern;)V

    .line 814
    .line 815
    .line 816
    :cond_30
    iget-wide v0, v4, Lt2/q;->b:J

    .line 817
    .line 818
    sub-long/2addr v11, v0

    .line 819
    long-to-int v3, v11

    .line 820
    int-to-long v11, v3

    .line 821
    add-long/2addr v0, v11

    .line 822
    iput-wide v0, v4, Lt2/q;->b:J

    .line 823
    .line 824
    iget v0, v4, Lt2/q;->a:I

    .line 825
    .line 826
    sub-int/2addr v0, v3

    .line 827
    iput v0, v4, Lt2/q;->a:I

    .line 828
    .line 829
    goto :goto_21

    .line 830
    :cond_31
    move/from16 v16, v3

    .line 831
    .line 832
    :goto_21
    const/high16 v0, 0x10000000

    .line 833
    .line 834
    invoke-virtual {v2, v0}, Li2/a;->b(I)Z

    .line 835
    .line 836
    .line 837
    move-result v0

    .line 838
    if-eqz v0, :cond_34

    .line 839
    .line 840
    const/4 v0, 0x4

    .line 841
    invoke-virtual {v9, v0}, Lb3/h;->n(I)V

    .line 842
    .line 843
    .line 844
    iget-wide v11, v4, Lt2/q;->b:J

    .line 845
    .line 846
    iget-object v1, v9, Lb3/h;->c:Ljava/io/Serializable;

    .line 847
    .line 848
    check-cast v1, [B

    .line 849
    .line 850
    invoke-virtual {v7, v11, v12, v1, v0}, Lt2/p;->d(J[BI)V

    .line 851
    .line 852
    .line 853
    invoke-virtual {v9}, Lb3/h;->k()I

    .line 854
    .line 855
    .line 856
    move-result v1

    .line 857
    iget-wide v8, v4, Lt2/q;->b:J

    .line 858
    .line 859
    const-wide/16 v11, 0x4

    .line 860
    .line 861
    add-long/2addr v8, v11

    .line 862
    iput-wide v8, v4, Lt2/q;->b:J

    .line 863
    .line 864
    iget v3, v4, Lt2/q;->a:I

    .line 865
    .line 866
    sub-int/2addr v3, v0

    .line 867
    iput v3, v4, Lt2/q;->a:I

    .line 868
    .line 869
    invoke-virtual {v2, v1}, Li2/c;->e(I)V

    .line 870
    .line 871
    .line 872
    iget-wide v8, v4, Lt2/q;->b:J

    .line 873
    .line 874
    iget-object v0, v2, Li2/c;->d:Ljava/nio/ByteBuffer;

    .line 875
    .line 876
    invoke-virtual {v7, v8, v9, v0, v1}, Lt2/p;->c(JLjava/nio/ByteBuffer;I)V

    .line 877
    .line 878
    .line 879
    iget-wide v8, v4, Lt2/q;->b:J

    .line 880
    .line 881
    int-to-long v11, v1

    .line 882
    add-long/2addr v8, v11

    .line 883
    iput-wide v8, v4, Lt2/q;->b:J

    .line 884
    .line 885
    iget v0, v4, Lt2/q;->a:I

    .line 886
    .line 887
    sub-int/2addr v0, v1

    .line 888
    iput v0, v4, Lt2/q;->a:I

    .line 889
    .line 890
    iget-object v1, v2, Li2/c;->g:Ljava/nio/ByteBuffer;

    .line 891
    .line 892
    if-eqz v1, :cond_33

    .line 893
    .line 894
    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    .line 895
    .line 896
    .line 897
    move-result v1

    .line 898
    if-ge v1, v0, :cond_32

    .line 899
    .line 900
    goto :goto_22

    .line 901
    :cond_32
    iget-object v0, v2, Li2/c;->g:Ljava/nio/ByteBuffer;

    .line 902
    .line 903
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 904
    .line 905
    .line 906
    goto :goto_23

    .line 907
    :cond_33
    :goto_22
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 908
    .line 909
    .line 910
    move-result-object v0

    .line 911
    iput-object v0, v2, Li2/c;->g:Ljava/nio/ByteBuffer;

    .line 912
    .line 913
    :goto_23
    iget-wide v0, v4, Lt2/q;->b:J

    .line 914
    .line 915
    iget-object v2, v2, Li2/c;->g:Ljava/nio/ByteBuffer;

    .line 916
    .line 917
    goto :goto_24

    .line 918
    :cond_34
    iget v0, v4, Lt2/q;->a:I

    .line 919
    .line 920
    invoke-virtual {v2, v0}, Li2/c;->e(I)V

    .line 921
    .line 922
    .line 923
    iget-wide v0, v4, Lt2/q;->b:J

    .line 924
    .line 925
    iget-object v2, v2, Li2/c;->d:Ljava/nio/ByteBuffer;

    .line 926
    .line 927
    :goto_24
    iget v3, v4, Lt2/q;->a:I

    .line 928
    .line 929
    invoke-virtual {v7, v0, v1, v2, v3}, Lt2/p;->c(JLjava/nio/ByteBuffer;I)V

    .line 930
    .line 931
    .line 932
    goto :goto_25

    .line 933
    :cond_35
    move/from16 v16, v3

    .line 934
    .line 935
    :goto_25
    const/4 v0, -0x5

    .line 936
    if-ne v6, v0, :cond_3c

    .line 937
    .line 938
    move-object/from16 v0, p1

    .line 939
    .line 940
    iget-object v1, v0, Lf2/u;->a:Lf2/t;

    .line 941
    .line 942
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 943
    .line 944
    .line 945
    iget v2, v10, Lw2/p;->D:I

    .line 946
    .line 947
    move/from16 v3, v16

    .line 948
    .line 949
    if-ne v3, v2, :cond_3a

    .line 950
    .line 951
    iget-object v2, v10, Lw2/p;->x:[Lw2/o;

    .line 952
    .line 953
    aget-object v2, v2, v3

    .line 954
    .line 955
    monitor-enter v2

    .line 956
    :try_start_5
    iget v3, v2, Lw2/o;->r:I

    .line 957
    .line 958
    invoke-virtual {v2, v3}, Lw2/o;->i(I)I

    .line 959
    .line 960
    .line 961
    move-result v3

    .line 962
    iget v4, v2, Lw2/o;->r:I

    .line 963
    .line 964
    iget v5, v2, Lw2/o;->o:I

    .line 965
    .line 966
    if-eq v4, v5, :cond_36

    .line 967
    .line 968
    const/4 v9, 0x1

    .line 969
    goto :goto_26

    .line 970
    :cond_36
    const/4 v9, 0x0

    .line 971
    :goto_26
    if-eqz v9, :cond_37

    .line 972
    .line 973
    iget-object v4, v2, Lw2/o;->h:[I

    .line 974
    .line 975
    aget v3, v4, v3

    .line 976
    .line 977
    goto :goto_27

    .line 978
    :cond_37
    iget v3, v2, Lw2/o;->z:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 979
    .line 980
    :goto_27
    monitor-exit v2

    .line 981
    const/4 v8, 0x0

    .line 982
    :goto_28
    iget-object v2, v10, Lw2/p;->q:Ljava/util/ArrayList;

    .line 983
    .line 984
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 985
    .line 986
    .line 987
    move-result v2

    .line 988
    if-ge v8, v2, :cond_38

    .line 989
    .line 990
    iget-object v2, v10, Lw2/p;->q:Ljava/util/ArrayList;

    .line 991
    .line 992
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 993
    .line 994
    .line 995
    move-result-object v2

    .line 996
    check-cast v2, Lw2/h;

    .line 997
    .line 998
    iget v2, v2, Lw2/h;->j:I

    .line 999
    .line 1000
    if-eq v2, v3, :cond_38

    .line 1001
    .line 1002
    add-int/lit8 v8, v8, 0x1

    .line 1003
    .line 1004
    goto :goto_28

    .line 1005
    :cond_38
    iget-object v2, v10, Lw2/p;->q:Ljava/util/ArrayList;

    .line 1006
    .line 1007
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 1008
    .line 1009
    .line 1010
    move-result v2

    .line 1011
    if-ge v8, v2, :cond_39

    .line 1012
    .line 1013
    iget-object v2, v10, Lw2/p;->q:Ljava/util/ArrayList;

    .line 1014
    .line 1015
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v2

    .line 1019
    check-cast v2, Lw2/h;

    .line 1020
    .line 1021
    iget-object v2, v2, Lv2/a;->c:Lf2/t;

    .line 1022
    .line 1023
    goto :goto_29

    .line 1024
    :cond_39
    iget-object v2, v10, Lw2/p;->H:Lf2/t;

    .line 1025
    .line 1026
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1027
    .line 1028
    .line 1029
    :goto_29
    invoke-virtual {v1, v2}, Lf2/t;->b(Lf2/t;)Lf2/t;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v1

    .line 1033
    goto :goto_2a

    .line 1034
    :catchall_1
    move-exception v0

    .line 1035
    monitor-exit v2

    .line 1036
    throw v0

    .line 1037
    :cond_3a
    :goto_2a
    iput-object v1, v0, Lf2/u;->a:Lf2/t;

    .line 1038
    .line 1039
    goto :goto_2b

    .line 1040
    :catchall_2
    move-exception v0

    .line 1041
    monitor-exit v4

    .line 1042
    throw v0

    .line 1043
    :cond_3b
    const/4 v6, -0x3

    .line 1044
    :cond_3c
    :goto_2b
    return v6

    :sswitch_data_0
    .sparse-switch
        -0x19cc928c -> :sswitch_3
        -0x19cc928b -> :sswitch_2
        -0x3313c2e -> :sswitch_1
        0x59b1e81e -> :sswitch_0
    .end sparse-switch
.end method

.method public final a()V
    .locals 6

    .line 1
    iget v0, p0, Lw2/l;->h:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, -0x1

    .line 5
    if-ne v0, v2, :cond_0

    .line 6
    .line 7
    move v0, v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/i0;->g(Z)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lw2/l;->g:Lw2/p;

    .line 14
    .line 15
    invoke-virtual {v0}, Lw2/p;->d()V

    .line 16
    .line 17
    .line 18
    iget-object v3, v0, Lw2/p;->M:[I

    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    iget-object v3, v0, Lw2/p;->M:[I

    .line 24
    .line 25
    iget v4, p0, Lw2/l;->f:I

    .line 26
    .line 27
    aget v3, v3, v4

    .line 28
    .line 29
    const/4 v5, -0x2

    .line 30
    if-ne v3, v2, :cond_2

    .line 31
    .line 32
    iget-object v1, v0, Lw2/p;->L:Ljava/util/Set;

    .line 33
    .line 34
    iget-object v0, v0, Lw2/p;->K:Lt2/x;

    .line 35
    .line 36
    iget-object v0, v0, Lt2/x;->b:[Lt2/w;

    .line 37
    .line 38
    aget-object v0, v0, v4

    .line 39
    .line 40
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    const/4 v0, -0x3

    .line 47
    move v3, v0

    .line 48
    goto :goto_2

    .line 49
    :cond_1
    :goto_1
    move v3, v5

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    iget-object v0, v0, Lw2/p;->P:[Z

    .line 52
    .line 53
    aget-boolean v2, v0, v3

    .line 54
    .line 55
    if-eqz v2, :cond_3

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    aput-boolean v1, v0, v3

    .line 59
    .line 60
    :goto_2
    iput v3, p0, Lw2/l;->h:I

    .line 61
    .line 62
    return-void
.end method

.method public final isReady()Z
    .locals 6

    .line 1
    iget v0, p0, Lw2/l;->h:I

    .line 2
    .line 3
    const/4 v1, -0x3

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq v0, v1, :cond_9

    .line 6
    .line 7
    const/4 v3, -0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    if-eq v0, v3, :cond_0

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v1, -0x2

    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    move v1, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v1, v4

    .line 19
    :goto_0
    if-eqz v1, :cond_8

    .line 20
    .line 21
    iget-object v1, p0, Lw2/l;->g:Lw2/p;

    .line 22
    .line 23
    invoke-virtual {v1}, Lw2/p;->q()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-nez v3, :cond_7

    .line 28
    .line 29
    iget-object v3, v1, Lw2/p;->x:[Lw2/o;

    .line 30
    .line 31
    aget-object v0, v3, v0

    .line 32
    .line 33
    iget-boolean v1, v1, Lw2/p;->V:Z

    .line 34
    .line 35
    monitor-enter v0

    .line 36
    :try_start_0
    iget v3, v0, Lw2/o;->r:I

    .line 37
    .line 38
    iget v5, v0, Lw2/o;->o:I

    .line 39
    .line 40
    if-eq v3, v5, :cond_1

    .line 41
    .line 42
    move v5, v2

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    move v5, v4

    .line 45
    :goto_1
    if-nez v5, :cond_3

    .line 46
    .line 47
    if-nez v1, :cond_4

    .line 48
    .line 49
    iget-boolean v1, v0, Lw2/o;->u:Z

    .line 50
    .line 51
    if-nez v1, :cond_4

    .line 52
    .line 53
    iget-object v1, v0, Lw2/o;->x:Lf2/t;

    .line 54
    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    iget-object v3, v0, Lw2/o;->e:Lf2/t;

    .line 58
    .line 59
    if-eq v1, v3, :cond_2

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_2
    :goto_2
    move v1, v4

    .line 63
    goto :goto_4

    .line 64
    :cond_3
    invoke-virtual {v0, v3}, Lw2/o;->i(I)I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    iget-object v3, v0, Lw2/o;->n:[Lf2/t;

    .line 69
    .line 70
    aget-object v3, v3, v1

    .line 71
    .line 72
    iget-object v5, v0, Lw2/o;->e:Lf2/t;

    .line 73
    .line 74
    if-eq v3, v5, :cond_5

    .line 75
    .line 76
    :cond_4
    :goto_3
    move v1, v2

    .line 77
    goto :goto_4

    .line 78
    :cond_5
    sget-object v3, Lj2/d;->c:Ly0/i;

    .line 79
    .line 80
    iget-object v5, v0, Lw2/o;->c:Lj2/d;

    .line 81
    .line 82
    if-ne v5, v3, :cond_6

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_6
    iget-object v3, v0, Lw2/o;->f:Lh/a;

    .line 86
    .line 87
    if-eqz v3, :cond_4

    .line 88
    .line 89
    iget-object v3, v0, Lw2/o;->k:[I

    .line 90
    .line 91
    aget v1, v3, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :goto_4
    monitor-exit v0

    .line 95
    if-eqz v1, :cond_7

    .line 96
    .line 97
    move v0, v2

    .line 98
    goto :goto_5

    .line 99
    :catchall_0
    move-exception v1

    .line 100
    monitor-exit v0

    .line 101
    throw v1

    .line 102
    :cond_7
    move v0, v4

    .line 103
    :goto_5
    if-eqz v0, :cond_8

    .line 104
    .line 105
    goto :goto_6

    .line 106
    :cond_8
    move v2, v4

    .line 107
    :cond_9
    :goto_6
    return v2
.end method

.method public final y()V
    .locals 3

    .line 1
    iget v0, p0, Lw2/l;->h:I

    .line 2
    .line 3
    const/4 v1, -0x2

    .line 4
    iget-object v2, p0, Lw2/l;->g:Lw2/p;

    .line 5
    .line 6
    if-eq v0, v1, :cond_3

    .line 7
    .line 8
    const/4 v1, -0x1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v2}, Lw2/p;->w()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, -0x3

    .line 16
    if-eq v0, v1, :cond_2

    .line 17
    .line 18
    invoke-virtual {v2}, Lw2/p;->w()V

    .line 19
    .line 20
    .line 21
    iget-object v1, v2, Lw2/p;->x:[Lw2/o;

    .line 22
    .line 23
    aget-object v0, v1, v0

    .line 24
    .line 25
    iget-object v0, v0, Lw2/o;->f:Lh/a;

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object v0, v0, Lh/a;->g:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, La3/j;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    throw v0

    .line 38
    :cond_2
    :goto_0
    return-void

    .line 39
    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/play_billing/c0;

    .line 40
    .line 41
    invoke-virtual {v2}, Lw2/p;->d()V

    .line 42
    .line 43
    .line 44
    iget-object v1, v2, Lw2/p;->K:Lt2/x;

    .line 45
    .line 46
    iget-object v1, v1, Lt2/x;->b:[Lt2/w;

    .line 47
    .line 48
    iget v2, p0, Lw2/l;->f:I

    .line 49
    .line 50
    aget-object v1, v1, v2

    .line 51
    .line 52
    iget-object v1, v1, Lt2/w;->b:[Lf2/t;

    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    aget-object v1, v1, v2

    .line 56
    .line 57
    iget-object v1, v1, Lf2/t;->i:Ljava/lang/String;

    .line 58
    .line 59
    const/4 v2, 0x2

    .line 60
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/play_billing/c0;-><init>(Ljava/lang/String;I)V

    .line 61
    .line 62
    .line 63
    throw v0
.end method
