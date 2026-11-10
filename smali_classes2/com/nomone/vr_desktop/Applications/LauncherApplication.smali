.class public Lcom/nomone/vr_desktop/Applications/LauncherApplication;
.super Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;
.source "SourceFile"


# static fields
.field public static final h:Ljava/lang/String;

.field public static final i:Z


# instance fields
.field public final f:Lq1/f;

.field public final g:La2/p;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "apps/launcher/index.html"

    invoke-static {v0}, Lt1/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nomone/vr_desktop/Applications/LauncherApplication;->h:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/nomone/vr_desktop/Applications/LauncherApplication;->i:Z

    return-void
.end method

.method public constructor <init>(Lq1/f;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/nomone/vr_desktop/Applications/LauncherApplication;->f:Lq1/f;

    .line 5
    .line 6
    invoke-static {}, Lcom/nomone/GeckoView/MyGeckoView;->getGlobalDisplayDensity()F

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/high16 v1, 0x3f800000    # 1.0f

    .line 11
    .line 12
    mul-float/2addr v0, v1

    .line 13
    const/high16 v1, 0x43ff0000    # 510.0f

    .line 14
    .line 15
    mul-float/2addr v1, v0

    .line 16
    float-to-int v1, v1

    .line 17
    const/high16 v2, 0x43a70000    # 334.0f

    .line 18
    .line 19
    mul-float/2addr v0, v2

    .line 20
    float-to-int v0, v0

    .line 21
    new-instance v2, Lr1/e0;

    .line 22
    .line 23
    sget-object v3, Lcom/nomone/vr_desktop/Applications/LauncherApplication;->h:Ljava/lang/String;

    .line 24
    .line 25
    invoke-direct {v2, p1, v3}, Lr1/e0;-><init>(Lq1/f;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iput v1, v2, Lr1/q;->e:I

    .line 29
    .line 30
    iput v0, v2, Lr1/q;->f:I

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    iput-boolean v0, v2, Lr1/e0;->r:Z

    .line 34
    .line 35
    const-string v1, "launcherTheme"

    .line 36
    .line 37
    iput-object v1, v2, Lr1/e0;->t:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p0, v2}, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->c(Lr1/e0;)V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->d:La2/p;

    .line 43
    .line 44
    iput-object v1, p0, Lcom/nomone/vr_desktop/Applications/LauncherApplication;->g:La2/p;

    .line 45
    .line 46
    const/4 v2, 0x0

    .line 47
    iput-boolean v2, v1, La2/i;->y:Z

    .line 48
    .line 49
    iget-object v2, v1, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 50
    .line 51
    new-instance v3, Lr1/v;

    .line 52
    .line 53
    invoke-direct {v3, p0, p1, v2}, Lr1/v;-><init>(Lcom/nomone/vr_desktop/Applications/LauncherApplication;Lq1/f;Lcom/nomone/GeckoView/MyGeckoView;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v3}, Lcom/nomone/GeckoView/MyGeckoView;->a(Ln1/m;)V

    .line 57
    .line 58
    .line 59
    iget-object p1, v1, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 60
    .line 61
    new-instance v1, Lr1/j;

    .line 62
    .line 63
    invoke-direct {v1, p0, v0}, Lr1/j;-><init>(Ljava/lang/Object;I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v1}, Lcom/nomone/GeckoView/MyGeckoView;->a(Ln1/m;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public static e(Lq1/f;Lr1/c;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lq1/f;->h:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/nomone/vr_desktop/Applications/SettingsApplication;->g:Ljava/lang/String;

    .line 6
    .line 7
    const-string v0, "Settings_General_LookingAround"

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {v0, v1}, Lo1/y;->a(Ljava/lang/String;Z)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-interface {p1}, Lr1/c;->a()La2/b;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object p0, p0, Lq1/f;->F:Lu1/i;

    .line 21
    .line 22
    iget-object p0, p0, Lu1/i;->c:La2/x;

    .line 23
    .line 24
    invoke-interface {p1, p0}, La2/r;->h(La2/x;)Z

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public static f(Lq1/f;Lr1/c;Ljava/lang/String;)Lr1/c;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    const-string v2, "Launch:"

    .line 6
    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

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
    return-object v3

    .line 15
    :cond_0
    const-string v2, ","

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v2, 0x0

    .line 22
    aget-object v4, v0, v2

    .line 23
    .line 24
    const/16 v5, 0x3a

    .line 25
    .line 26
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    const/4 v7, 0x1

    .line 31
    add-int/2addr v6, v7

    .line 32
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-interface/range {p1 .. p1}, Lr1/c;->d()Lz1/f;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    new-instance v8, Lr1/e0;

    .line 41
    .line 42
    invoke-direct {v8, v1, v4}, Lr1/e0;-><init>(Lq1/f;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget v4, v6, Lz1/f;->e:F

    .line 46
    .line 47
    iget v6, v6, Lz1/f;->f:F

    .line 48
    .line 49
    iput v4, v8, Lr1/q;->c:F

    .line 50
    .line 51
    iput v6, v8, Lr1/q;->d:F

    .line 52
    .line 53
    const/16 v4, 0x280

    .line 54
    .line 55
    iput v4, v8, Lr1/q;->e:I

    .line 56
    .line 57
    const/16 v4, 0x190

    .line 58
    .line 59
    iput v4, v8, Lr1/q;->f:I

    .line 60
    .line 61
    invoke-static {}, Lcom/nomone/GeckoView/MyGeckoView;->getGlobalDisplayDensity()F

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    const/high16 v6, 0x3f800000    # 1.0f

    .line 66
    .line 67
    mul-float/2addr v4, v6

    .line 68
    move v10, v2

    .line 69
    move v13, v10

    .line 70
    move v14, v13

    .line 71
    move-object v11, v3

    .line 72
    move-object v12, v11

    .line 73
    move v9, v7

    .line 74
    :goto_0
    array-length v15, v0

    .line 75
    const/4 v6, 0x2

    .line 76
    if-ge v9, v15, :cond_d

    .line 77
    .line 78
    aget-object v15, v0, v9

    .line 79
    .line 80
    const-string v3, "fromCache"

    .line 81
    .line 82
    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-eqz v3, :cond_2

    .line 87
    .line 88
    iget-object v3, v1, Lq1/f;->b:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 89
    .line 90
    iget-object v6, v8, Lr1/u;->o:Ljava/lang/String;

    .line 91
    .line 92
    invoke-static {v3, v6}, Lcom/google/android/gms/internal/play_billing/i0;->I(Lcom/nomone/vr_desktop/LaunchActivity;Ljava/lang/String;)Ljava/io/File;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 97
    .line 98
    .line 99
    move-result v6

    .line 100
    if-nez v6, :cond_1

    .line 101
    .line 102
    iget-object v6, v8, Lr1/u;->o:Ljava/lang/String;

    .line 103
    .line 104
    iget-object v15, v1, Lq1/f;->b:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 105
    .line 106
    invoke-static {v15, v6}, Lcom/google/android/gms/internal/play_billing/i0;->I(Lcom/nomone/vr_desktop/LaunchActivity;Ljava/lang/String;)Ljava/io/File;

    .line 107
    .line 108
    .line 109
    move-result-object v16

    .line 110
    invoke-virtual {v15}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 111
    .line 112
    .line 113
    move-result-object v15

    .line 114
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v7

    .line 118
    invoke-static {v15, v6, v7}, Lcom/google/android/gms/internal/play_billing/i0;->q(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Z

    .line 119
    .line 120
    .line 121
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    const-string v7, "file://"

    .line 127
    .line 128
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string v3, "/index.html"

    .line 139
    .line 140
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    goto :goto_1

    .line 148
    :cond_2
    aget-object v3, v0, v9

    .line 149
    .line 150
    const-string v7, "fromAssets"

    .line 151
    .line 152
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    if-eqz v3, :cond_3

    .line 157
    .line 158
    iget-object v3, v8, Lr1/u;->o:Ljava/lang/String;

    .line 159
    .line 160
    invoke-static {v3}, Lt1/a;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    :goto_1
    iput-object v3, v8, Lr1/u;->o:Ljava/lang/String;

    .line 165
    .line 166
    goto/16 :goto_2

    .line 167
    .line 168
    :cond_3
    aget-object v3, v0, v9

    .line 169
    .line 170
    const-string v7, "mouseInput"

    .line 171
    .line 172
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    if-eqz v3, :cond_4

    .line 177
    .line 178
    iput v6, v8, Lr1/u;->p:I

    .line 179
    .line 180
    goto/16 :goto_2

    .line 181
    .line 182
    :cond_4
    aget-object v3, v0, v9

    .line 183
    .line 184
    const-string v6, "fixedFrame"

    .line 185
    .line 186
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v3

    .line 190
    if-eqz v3, :cond_5

    .line 191
    .line 192
    iput-boolean v2, v8, Lr1/q;->j:Z

    .line 193
    .line 194
    iput-boolean v2, v8, Lr1/q;->n:Z

    .line 195
    .line 196
    goto/16 :goto_2

    .line 197
    .line 198
    :cond_5
    aget-object v3, v0, v9

    .line 199
    .line 200
    const-string v6, "dimensions:"

    .line 201
    .line 202
    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    if-eqz v3, :cond_6

    .line 207
    .line 208
    aget-object v3, v0, v9

    .line 209
    .line 210
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    .line 211
    .line 212
    .line 213
    move-result v6

    .line 214
    const/4 v7, 0x1

    .line 215
    add-int/2addr v6, v7

    .line 216
    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    const-string v6, "x"

    .line 221
    .line 222
    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    aget-object v6, v3, v2

    .line 227
    .line 228
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 229
    .line 230
    .line 231
    move-result v6

    .line 232
    iput v6, v8, Lr1/q;->e:I

    .line 233
    .line 234
    aget-object v3, v3, v7

    .line 235
    .line 236
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 237
    .line 238
    .line 239
    move-result v3

    .line 240
    iput v3, v8, Lr1/q;->f:I

    .line 241
    .line 242
    goto/16 :goto_2

    .line 243
    .line 244
    :cond_6
    aget-object v3, v0, v9

    .line 245
    .line 246
    const-string v6, "scaleDimensions"

    .line 247
    .line 248
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result v3

    .line 252
    if-eqz v3, :cond_7

    .line 253
    .line 254
    const/4 v10, 0x1

    .line 255
    goto/16 :goto_2

    .line 256
    .line 257
    :cond_7
    aget-object v3, v0, v9

    .line 258
    .line 259
    const-string v6, "alwaysOnTop"

    .line 260
    .line 261
    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 262
    .line 263
    .line 264
    move-result v3

    .line 265
    if-eqz v3, :cond_8

    .line 266
    .line 267
    const/4 v14, 0x1

    .line 268
    goto/16 :goto_2

    .line 269
    .line 270
    :cond_8
    aget-object v3, v0, v9

    .line 271
    .line 272
    const-string v6, "selfThemed:"

    .line 273
    .line 274
    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 275
    .line 276
    .line 277
    move-result v3

    .line 278
    if-eqz v3, :cond_9

    .line 279
    .line 280
    aget-object v3, v0, v9

    .line 281
    .line 282
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    .line 283
    .line 284
    .line 285
    move-result v6

    .line 286
    const/4 v7, 0x1

    .line 287
    add-int/2addr v6, v7

    .line 288
    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v3

    .line 292
    iput-object v3, v8, Lr1/e0;->t:Ljava/lang/String;

    .line 293
    .line 294
    move v13, v7

    .line 295
    goto/16 :goto_2

    .line 296
    .line 297
    :cond_9
    const/4 v7, 0x1

    .line 298
    aget-object v3, v0, v9

    .line 299
    .line 300
    const-string v6, "env:"

    .line 301
    .line 302
    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 303
    .line 304
    .line 305
    move-result v3

    .line 306
    if-eqz v3, :cond_a

    .line 307
    .line 308
    aget-object v3, v0, v9

    .line 309
    .line 310
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    .line 311
    .line 312
    .line 313
    move-result v6

    .line 314
    add-int/2addr v6, v7

    .line 315
    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v3

    .line 319
    iget-object v6, v1, Lq1/f;->E:Lh/a;

    .line 320
    .line 321
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    .line 322
    .line 323
    .line 324
    move-result v15

    .line 325
    invoke-virtual {v3, v2, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v15

    .line 329
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    .line 330
    .line 331
    .line 332
    move-result v16

    .line 333
    add-int/lit8 v2, v16, 0x1

    .line 334
    .line 335
    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v2

    .line 339
    iget-object v3, v6, Lh/a;->g:Ljava/lang/Object;

    .line 340
    .line 341
    check-cast v3, Ljava/util/HashMap;

    .line 342
    .line 343
    invoke-virtual {v3, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    goto :goto_2

    .line 347
    :cond_a
    aget-object v2, v0, v9

    .line 348
    .line 349
    const-string v3, "arguments:"

    .line 350
    .line 351
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 352
    .line 353
    .line 354
    move-result v2

    .line 355
    if-eqz v2, :cond_b

    .line 356
    .line 357
    aget-object v2, v0, v9

    .line 358
    .line 359
    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    .line 360
    .line 361
    .line 362
    move-result v3

    .line 363
    const/4 v6, 0x1

    .line 364
    add-int/2addr v3, v6

    .line 365
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v12

    .line 369
    goto :goto_2

    .line 370
    :cond_b
    const/4 v6, 0x1

    .line 371
    aget-object v2, v0, v9

    .line 372
    .line 373
    const-string v3, "activityName:"

    .line 374
    .line 375
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 376
    .line 377
    .line 378
    move-result v2

    .line 379
    if-eqz v2, :cond_c

    .line 380
    .line 381
    aget-object v2, v0, v9

    .line 382
    .line 383
    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    .line 384
    .line 385
    .line 386
    move-result v3

    .line 387
    add-int/2addr v3, v6

    .line 388
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v11

    .line 392
    goto :goto_2

    .line 393
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    .line 394
    .line 395
    const-string v3, "Invalid app launch argument: "

    .line 396
    .line 397
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    aget-object v3, v0, v9

    .line 401
    .line 402
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v2

    .line 409
    const-string v3, "sdf"

    .line 410
    .line 411
    invoke-static {v3, v2}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    :goto_2
    add-int/lit8 v9, v9, 0x1

    .line 415
    .line 416
    const/4 v2, 0x0

    .line 417
    const/4 v3, 0x0

    .line 418
    const/high16 v6, 0x3f800000    # 1.0f

    .line 419
    .line 420
    const/4 v7, 0x1

    .line 421
    goto/16 :goto_0

    .line 422
    .line 423
    :cond_d
    iget-object v0, v8, Lr1/u;->o:Ljava/lang/String;

    .line 424
    .line 425
    const-string v2, "/"

    .line 426
    .line 427
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 428
    .line 429
    .line 430
    move-result v0

    .line 431
    if-nez v0, :cond_15

    .line 432
    .line 433
    if-eqz v11, :cond_f

    .line 434
    .line 435
    new-instance v0, Landroid/content/ComponentName;

    .line 436
    .line 437
    iget-object v2, v8, Lr1/u;->o:Ljava/lang/String;

    .line 438
    .line 439
    invoke-direct {v0, v2, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    new-instance v2, Landroid/content/Intent;

    .line 443
    .line 444
    const-string v3, "android.intent.action.MAIN"

    .line 445
    .line 446
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    const-string v3, "android.intent.category.LAUNCHER"

    .line 450
    .line 451
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 452
    .line 453
    .line 454
    const/high16 v3, 0x10200000

    .line 455
    .line 456
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 457
    .line 458
    .line 459
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 460
    .line 461
    .line 462
    :try_start_0
    sget-boolean v0, Lcom/nomone/vr_desktop/Applications/LauncherApplication;->i:Z

    .line 463
    .line 464
    if-eqz v0, :cond_e

    .line 465
    .line 466
    iget-object v0, v1, Lq1/f;->b:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 467
    .line 468
    const-string v3, "freeform"

    .line 469
    .line 470
    const/4 v4, 0x0

    .line 471
    invoke-static {v0, v2, v3, v4}, Lnom/vrd/Launch;->b(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Landroid/graphics/Rect;)V

    .line 472
    .line 473
    .line 474
    goto :goto_3

    .line 475
    :cond_e
    iget-object v0, v1, Lq1/f;->b:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 476
    .line 477
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    .line 479
    .line 480
    goto :goto_3

    .line 481
    :catch_0
    iget-object v0, v1, Lq1/f;->H:Lo1/n0;

    .line 482
    .line 483
    const-string v1, "Couldn\'t launch. Sorry!"

    .line 484
    .line 485
    const/16 v2, 0xbb8

    .line 486
    .line 487
    invoke-virtual {v0, v2, v1}, Lo1/n0;->c(ILjava/lang/String;)V

    .line 488
    .line 489
    .line 490
    :goto_3
    const/4 v1, 0x0

    .line 491
    return-object v1

    .line 492
    :cond_f
    const-class v0, Lq1/f;

    .line 493
    .line 494
    if-eqz v12, :cond_10

    .line 495
    .line 496
    :try_start_1
    iget-object v2, v8, Lr1/u;->o:Ljava/lang/String;

    .line 497
    .line 498
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 499
    .line 500
    .line 501
    move-result-object v2

    .line 502
    new-array v3, v6, [Ljava/lang/Class;

    .line 503
    .line 504
    const/4 v4, 0x0

    .line 505
    aput-object v0, v3, v4

    .line 506
    .line 507
    const-class v4, Ljava/lang/String;

    .line 508
    .line 509
    const/4 v5, 0x1

    .line 510
    aput-object v4, v3, v5

    .line 511
    .line 512
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 513
    .line 514
    .line 515
    move-result-object v3

    .line 516
    filled-new-array {v1, v12}, [Ljava/lang/Object;

    .line 517
    .line 518
    .line 519
    move-result-object v4

    .line 520
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    .line 522
    .line 523
    move-result-object v3

    .line 524
    check-cast v3, Lr1/c;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 525
    .line 526
    move-object v4, v3

    .line 527
    goto :goto_4

    .line 528
    :catch_1
    move-exception v0

    .line 529
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 530
    .line 531
    .line 532
    const/4 v1, 0x0

    .line 533
    return-object v1

    .line 534
    :cond_10
    const/4 v2, 0x0

    .line 535
    const/4 v4, 0x0

    .line 536
    :goto_4
    if-nez v4, :cond_11

    .line 537
    .line 538
    :try_start_2
    iget-object v3, v8, Lr1/u;->o:Ljava/lang/String;

    .line 539
    .line 540
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 541
    .line 542
    .line 543
    move-result-object v2

    .line 544
    const-string v3, "getInstance"

    .line 545
    .line 546
    const/4 v5, 0x1

    .line 547
    new-array v6, v5, [Ljava/lang/Class;

    .line 548
    .line 549
    const/4 v5, 0x0

    .line 550
    aput-object v0, v6, v5

    .line 551
    .line 552
    invoke-virtual {v2, v3, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 553
    .line 554
    .line 555
    move-result-object v3

    .line 556
    filled-new-array/range {p0 .. p0}, [Ljava/lang/Object;

    .line 557
    .line 558
    .line 559
    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 560
    const/4 v6, 0x0

    .line 561
    :try_start_3
    invoke-virtual {v3, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    .line 563
    .line 564
    move-result-object v3

    .line 565
    check-cast v3, Lr1/c;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 566
    .line 567
    move-object v4, v3

    .line 568
    const/4 v3, 0x1

    .line 569
    goto :goto_5

    .line 570
    :catch_2
    :cond_11
    const/4 v6, 0x0

    .line 571
    :catch_3
    const/4 v3, 0x0

    .line 572
    :goto_5
    if-nez v3, :cond_12

    .line 573
    .line 574
    if-nez v4, :cond_12

    .line 575
    .line 576
    const/4 v3, 0x1

    .line 577
    :try_start_4
    new-array v3, v3, [Ljava/lang/Class;

    .line 578
    .line 579
    const/4 v5, 0x0

    .line 580
    aput-object v0, v3, v5

    .line 581
    .line 582
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 583
    .line 584
    .line 585
    move-result-object v0

    .line 586
    filled-new-array/range {p0 .. p0}, [Ljava/lang/Object;

    .line 587
    .line 588
    .line 589
    move-result-object v2

    .line 590
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    .line 592
    .line 593
    move-result-object v0

    .line 594
    check-cast v0, Lr1/c;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 595
    .line 596
    move-object v4, v0

    .line 597
    goto :goto_6

    .line 598
    :catch_4
    move-exception v0

    .line 599
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 600
    .line 601
    .line 602
    :cond_12
    :goto_6
    if-eqz v4, :cond_14

    .line 603
    .line 604
    if-eqz v14, :cond_13

    .line 605
    .line 606
    goto :goto_7

    .line 607
    :cond_13
    move-object/from16 v6, p1

    .line 608
    .line 609
    :goto_7
    invoke-static {v1, v4, v6, v14}, Lcom/nomone/vr_desktop/Applications/LauncherApplication;->g(Lq1/f;Lr1/c;Lr1/c;Z)V

    .line 610
    .line 611
    .line 612
    :cond_14
    return-object v4

    .line 613
    :cond_15
    if-eqz v10, :cond_19

    .line 614
    .line 615
    iget v0, v8, Lr1/q;->e:I

    .line 616
    .line 617
    int-to-float v0, v0

    .line 618
    mul-float/2addr v0, v4

    .line 619
    float-to-int v0, v0

    .line 620
    iput v0, v8, Lr1/q;->e:I

    .line 621
    .line 622
    iget v2, v8, Lr1/q;->f:I

    .line 623
    .line 624
    int-to-float v2, v2

    .line 625
    mul-float/2addr v2, v4

    .line 626
    float-to-int v2, v2

    .line 627
    iput v2, v8, Lr1/q;->f:I

    .line 628
    .line 629
    iget-object v2, v8, Lr1/q;->l:Lc/a;

    .line 630
    .line 631
    const/high16 v3, 0x3f800000    # 1.0f

    .line 632
    .line 633
    invoke-interface {v2, v3}, Ly1/a;->u(F)I

    .line 634
    .line 635
    .line 636
    move-result v4

    .line 637
    add-int/2addr v4, v0

    .line 638
    invoke-interface {v2, v3}, Ly1/a;->g(F)I

    .line 639
    .line 640
    .line 641
    move-result v0

    .line 642
    add-int/2addr v0, v4

    .line 643
    int-to-float v0, v0

    .line 644
    iget v4, v8, Lr1/q;->f:I

    .line 645
    .line 646
    const/4 v5, 0x0

    .line 647
    invoke-interface {v2, v3, v5}, Ly1/a;->w(FF)I

    .line 648
    .line 649
    .line 650
    move-result v5

    .line 651
    add-int/2addr v5, v4

    .line 652
    invoke-interface {v2, v3}, Ly1/a;->l(F)I

    .line 653
    .line 654
    .line 655
    move-result v2

    .line 656
    add-int/2addr v2, v5

    .line 657
    int-to-float v2, v2

    .line 658
    invoke-virtual/range {p0 .. p0}, Lq1/f;->a()I

    .line 659
    .line 660
    .line 661
    move-result v4

    .line 662
    int-to-float v4, v4

    .line 663
    cmpl-float v4, v0, v4

    .line 664
    .line 665
    if-lez v4, :cond_16

    .line 666
    .line 667
    invoke-virtual/range {p0 .. p0}, Lq1/f;->a()I

    .line 668
    .line 669
    .line 670
    move-result v4

    .line 671
    int-to-float v4, v4

    .line 672
    div-float/2addr v4, v0

    .line 673
    goto :goto_8

    .line 674
    :cond_16
    move v4, v3

    .line 675
    :goto_8
    iget v0, v1, Lq1/f;->z:I

    .line 676
    .line 677
    int-to-float v0, v0

    .line 678
    cmpl-float v5, v2, v0

    .line 679
    .line 680
    if-lez v5, :cond_17

    .line 681
    .line 682
    div-float v6, v0, v2

    .line 683
    .line 684
    goto :goto_9

    .line 685
    :cond_17
    move v6, v3

    .line 686
    :goto_9
    cmpg-float v0, v4, v6

    .line 687
    .line 688
    if-gez v0, :cond_18

    .line 689
    .line 690
    goto :goto_a

    .line 691
    :cond_18
    move v4, v6

    .line 692
    :goto_a
    iget v0, v8, Lr1/q;->e:I

    .line 693
    .line 694
    int-to-float v0, v0

    .line 695
    mul-float/2addr v0, v4

    .line 696
    float-to-int v0, v0

    .line 697
    iput v0, v8, Lr1/q;->e:I

    .line 698
    .line 699
    iget v0, v8, Lr1/q;->f:I

    .line 700
    .line 701
    int-to-float v0, v0

    .line 702
    mul-float/2addr v0, v4

    .line 703
    float-to-int v0, v0

    .line 704
    iput v0, v8, Lr1/q;->f:I

    .line 705
    .line 706
    iput v4, v8, Lr1/q;->i:F

    .line 707
    .line 708
    :cond_19
    invoke-interface/range {p1 .. p1}, Lr1/c;->a()La2/b;

    .line 709
    .line 710
    .line 711
    move-result-object v0

    .line 712
    iget-object v0, v0, La2/b;->d:La2/c0;

    .line 713
    .line 714
    check-cast v0, La2/b0;

    .line 715
    .line 716
    iget-object v2, v8, Lr1/q;->k:Lq1/f;

    .line 717
    .line 718
    if-eqz v13, :cond_1a

    .line 719
    .line 720
    new-instance v3, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;

    .line 721
    .line 722
    invoke-direct {v3, v8}, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;-><init>(Lr1/e0;)V

    .line 723
    .line 724
    .line 725
    iget-object v4, v3, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->c:La2/b;

    .line 726
    .line 727
    const/4 v5, 0x1

    .line 728
    invoke-virtual {v0, v4, v5}, La2/e0;->A(La2/r;Z)V

    .line 729
    .line 730
    .line 731
    invoke-virtual {v2}, Lq1/f;->d()V

    .line 732
    .line 733
    .line 734
    goto :goto_b

    .line 735
    :cond_1a
    const/4 v5, 0x1

    .line 736
    new-instance v3, Lcom/nomone/vr_desktop/Applications/GeckoViewApplication;

    .line 737
    .line 738
    invoke-direct {v3, v8}, Lcom/nomone/vr_desktop/Applications/GeckoViewApplication;-><init>(Lr1/u;)V

    .line 739
    .line 740
    .line 741
    iget-object v4, v3, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->c:La2/b;

    .line 742
    .line 743
    invoke-virtual {v0, v4, v5}, La2/e0;->A(La2/r;Z)V

    .line 744
    .line 745
    .line 746
    invoke-virtual {v2}, Lq1/f;->d()V

    .line 747
    .line 748
    .line 749
    :goto_b
    invoke-static {v1, v3}, Lcom/nomone/vr_desktop/Applications/LauncherApplication;->e(Lq1/f;Lr1/c;)V

    .line 750
    .line 751
    .line 752
    return-object v3
.end method

.method public static g(Lq1/f;Lr1/c;Lr1/c;Z)V
    .locals 3

    .line 1
    invoke-interface {p1}, Lr1/c;->a()La2/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p0, "sdf"

    .line 8
    .line 9
    const-string p1, "LauncherApplication.launchApplication(): Attempted launching an app with null for window."

    .line 10
    .line 11
    invoke-static {p0, p1}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v1, v0, La2/b;->d:La2/c0;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-interface {v1, v0}, La2/c0;->x(La2/r;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    if-eqz p2, :cond_2

    .line 23
    .line 24
    invoke-interface {p2}, Lr1/c;->a()La2/b;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    iget-object v1, v1, La2/b;->d:La2/c0;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    const/4 v1, 0x0

    .line 34
    :goto_0
    if-eqz v1, :cond_3

    .line 35
    .line 36
    invoke-interface {p2}, Lr1/c;->d()Lz1/f;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-interface {p1}, Lr1/c;->d()Lz1/f;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    iget v2, p2, Lz1/f;->e:F

    .line 45
    .line 46
    iget p2, p2, Lz1/f;->f:F

    .line 47
    .line 48
    invoke-virtual {p3, v2, p2}, Lz1/f;->q(FF)V

    .line 49
    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_3
    iget-object p2, p0, Lq1/f;->F:Lu1/i;

    .line 53
    .line 54
    iget-object p2, p2, Lu1/i;->c:La2/x;

    .line 55
    .line 56
    invoke-interface {p1}, Lr1/c;->d()Lz1/f;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    iget v2, p2, La2/x;->r:F

    .line 61
    .line 62
    neg-float v2, v2

    .line 63
    iget p2, p2, La2/x;->s:F

    .line 64
    .line 65
    neg-float p2, p2

    .line 66
    invoke-virtual {v1, v2, p2}, Lz1/f;->q(FF)V

    .line 67
    .line 68
    .line 69
    if-eqz p3, :cond_4

    .line 70
    .line 71
    iget-object p2, p0, Lq1/f;->g:La2/b0;

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_4
    iget-object p2, p0, Lq1/f;->f:La2/b0;

    .line 75
    .line 76
    :goto_1
    move-object v1, p2

    .line 77
    :goto_2
    invoke-interface {v1, v0}, La2/c0;->z(La2/r;)V

    .line 78
    .line 79
    .line 80
    invoke-interface {v1}, La2/r;->p()Z

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    if-nez p2, :cond_5

    .line 85
    .line 86
    const/4 p2, 0x0

    .line 87
    invoke-virtual {v0, p2}, La2/b;->o(Z)V

    .line 88
    .line 89
    .line 90
    :cond_5
    invoke-static {p0, p1}, Lcom/nomone/vr_desktop/Applications/LauncherApplication;->e(Lq1/f;Lr1/c;)V

    .line 91
    .line 92
    .line 93
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->b()V

    return-void
.end method
