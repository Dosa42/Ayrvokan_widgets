.class public abstract Lb3/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/ArrayList;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lb3/c;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Lb3/n;->k(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string v1, "avc1"

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_1f

    .line 20
    .line 21
    const-string v1, "avc3"

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    goto/16 :goto_9

    .line 30
    .line 31
    :cond_1
    const-string v1, "hev1"

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_1e

    .line 38
    .line 39
    const-string v1, "hvc1"

    .line 40
    .line 41
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    goto/16 :goto_8

    .line 48
    .line 49
    :cond_2
    const-string v1, "dvav"

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-nez v1, :cond_1d

    .line 56
    .line 57
    const-string v1, "dva1"

    .line 58
    .line 59
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-nez v1, :cond_1d

    .line 64
    .line 65
    const-string v1, "dvhe"

    .line 66
    .line 67
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-nez v1, :cond_1d

    .line 72
    .line 73
    const-string v1, "dvh1"

    .line 74
    .line 75
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_3

    .line 80
    .line 81
    goto/16 :goto_7

    .line 82
    .line 83
    :cond_3
    const-string v1, "av01"

    .line 84
    .line 85
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_4

    .line 90
    .line 91
    const-string p0, "video/av01"

    .line 92
    .line 93
    return-object p0

    .line 94
    :cond_4
    const-string v1, "vp9"

    .line 95
    .line 96
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-nez v1, :cond_1c

    .line 101
    .line 102
    const-string v1, "vp09"

    .line 103
    .line 104
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-eqz v1, :cond_5

    .line 109
    .line 110
    goto/16 :goto_6

    .line 111
    .line 112
    :cond_5
    const-string v1, "vp8"

    .line 113
    .line 114
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-nez v1, :cond_1b

    .line 119
    .line 120
    const-string v1, "vp08"

    .line 121
    .line 122
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-eqz v1, :cond_6

    .line 127
    .line 128
    goto/16 :goto_5

    .line 129
    .line 130
    :cond_6
    const-string v1, "mp4a"

    .line 131
    .line 132
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    const/4 v2, 0x0

    .line 137
    if-eqz v1, :cond_9

    .line 138
    .line 139
    const-string v1, "mp4a."

    .line 140
    .line 141
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-eqz v1, :cond_7

    .line 146
    .line 147
    const/4 v1, 0x5

    .line 148
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    const/4 v3, 0x2

    .line 157
    if-lt v1, v3, :cond_7

    .line 158
    .line 159
    :try_start_0
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    invoke-static {p0}, Lb3/n;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    const/16 v1, 0x10

    .line 168
    .line 169
    invoke-static {p0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 170
    .line 171
    .line 172
    move-result p0

    .line 173
    invoke-static {p0}, Lb3/c;->b(I)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :catch_0
    :cond_7
    if-nez v0, :cond_8

    .line 178
    .line 179
    const-string v0, "audio/mp4a-latm"

    .line 180
    .line 181
    :cond_8
    return-object v0

    .line 182
    :cond_9
    const-string v1, "ac-3"

    .line 183
    .line 184
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    if-nez v1, :cond_1a

    .line 189
    .line 190
    const-string v1, "dac3"

    .line 191
    .line 192
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    if-eqz v1, :cond_a

    .line 197
    .line 198
    goto/16 :goto_4

    .line 199
    .line 200
    :cond_a
    const-string v1, "ec-3"

    .line 201
    .line 202
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    if-nez v1, :cond_19

    .line 207
    .line 208
    const-string v1, "dec3"

    .line 209
    .line 210
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    if-eqz v1, :cond_b

    .line 215
    .line 216
    goto/16 :goto_3

    .line 217
    .line 218
    :cond_b
    const-string v1, "ec+3"

    .line 219
    .line 220
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    if-eqz v1, :cond_c

    .line 225
    .line 226
    const-string p0, "audio/eac3-joc"

    .line 227
    .line 228
    return-object p0

    .line 229
    :cond_c
    const-string v1, "ac-4"

    .line 230
    .line 231
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-nez v1, :cond_18

    .line 236
    .line 237
    const-string v1, "dac4"

    .line 238
    .line 239
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    if-eqz v1, :cond_d

    .line 244
    .line 245
    goto/16 :goto_2

    .line 246
    .line 247
    :cond_d
    const-string v1, "dtsc"

    .line 248
    .line 249
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    if-nez v1, :cond_17

    .line 254
    .line 255
    const-string v1, "dtse"

    .line 256
    .line 257
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 258
    .line 259
    .line 260
    move-result v1

    .line 261
    if-eqz v1, :cond_e

    .line 262
    .line 263
    goto :goto_1

    .line 264
    :cond_e
    const-string v1, "dtsh"

    .line 265
    .line 266
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 267
    .line 268
    .line 269
    move-result v1

    .line 270
    if-nez v1, :cond_16

    .line 271
    .line 272
    const-string v1, "dtsl"

    .line 273
    .line 274
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 275
    .line 276
    .line 277
    move-result v1

    .line 278
    if-eqz v1, :cond_f

    .line 279
    .line 280
    goto :goto_0

    .line 281
    :cond_f
    const-string v1, "opus"

    .line 282
    .line 283
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 284
    .line 285
    .line 286
    move-result v1

    .line 287
    if-eqz v1, :cond_10

    .line 288
    .line 289
    const-string p0, "audio/opus"

    .line 290
    .line 291
    return-object p0

    .line 292
    :cond_10
    const-string v1, "vorbis"

    .line 293
    .line 294
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 295
    .line 296
    .line 297
    move-result v1

    .line 298
    if-eqz v1, :cond_11

    .line 299
    .line 300
    const-string p0, "audio/vorbis"

    .line 301
    .line 302
    return-object p0

    .line 303
    :cond_11
    const-string v1, "flac"

    .line 304
    .line 305
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 306
    .line 307
    .line 308
    move-result v1

    .line 309
    if-eqz v1, :cond_12

    .line 310
    .line 311
    const-string p0, "audio/flac"

    .line 312
    .line 313
    return-object p0

    .line 314
    :cond_12
    const-string v1, "stpp"

    .line 315
    .line 316
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 317
    .line 318
    .line 319
    move-result v1

    .line 320
    if-eqz v1, :cond_13

    .line 321
    .line 322
    const-string p0, "application/ttml+xml"

    .line 323
    .line 324
    return-object p0

    .line 325
    :cond_13
    const-string v1, "wvtt"

    .line 326
    .line 327
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 328
    .line 329
    .line 330
    move-result p0

    .line 331
    if-eqz p0, :cond_14

    .line 332
    .line 333
    const-string p0, "text/vtt"

    .line 334
    .line 335
    return-object p0

    .line 336
    :cond_14
    sget-object p0, Lb3/c;->a:Ljava/util/ArrayList;

    .line 337
    .line 338
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 339
    .line 340
    .line 341
    move-result v1

    .line 342
    if-gtz v1, :cond_15

    .line 343
    .line 344
    return-object v0

    .line 345
    :cond_15
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object p0

    .line 349
    invoke-static {p0}, La1/b;->j(Ljava/lang/Object;)V

    .line 350
    .line 351
    .line 352
    throw v0

    .line 353
    :cond_16
    :goto_0
    const-string p0, "audio/vnd.dts.hd"

    .line 354
    .line 355
    return-object p0

    .line 356
    :cond_17
    :goto_1
    const-string p0, "audio/vnd.dts"

    .line 357
    .line 358
    return-object p0

    .line 359
    :cond_18
    :goto_2
    const-string p0, "audio/ac4"

    .line 360
    .line 361
    return-object p0

    .line 362
    :cond_19
    :goto_3
    const-string p0, "audio/eac3"

    .line 363
    .line 364
    return-object p0

    .line 365
    :cond_1a
    :goto_4
    const-string p0, "audio/ac3"

    .line 366
    .line 367
    return-object p0

    .line 368
    :cond_1b
    :goto_5
    const-string p0, "video/x-vnd.on2.vp8"

    .line 369
    .line 370
    return-object p0

    .line 371
    :cond_1c
    :goto_6
    const-string p0, "video/x-vnd.on2.vp9"

    .line 372
    .line 373
    return-object p0

    .line 374
    :cond_1d
    :goto_7
    const-string p0, "video/dolby-vision"

    .line 375
    .line 376
    return-object p0

    .line 377
    :cond_1e
    :goto_8
    const-string p0, "video/hevc"

    .line 378
    .line 379
    return-object p0

    .line 380
    :cond_1f
    :goto_9
    const-string p0, "video/avc"

    .line 381
    .line 382
    return-object p0
.end method

.method public static b(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/16 v0, 0x20

    if-eq p0, v0, :cond_7

    const/16 v0, 0x21

    if-eq p0, v0, :cond_6

    const/16 v0, 0x23

    if-eq p0, v0, :cond_5

    const/16 v0, 0x40

    if-eq p0, v0, :cond_4

    const/16 v0, 0xa3

    if-eq p0, v0, :cond_3

    const/16 v0, 0xb1

    if-eq p0, v0, :cond_2

    const/16 v0, 0xa5

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa6

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string p0, "audio/ac4"

    return-object p0

    :pswitch_1
    const-string p0, "audio/opus"

    return-object p0

    :pswitch_2
    const-string p0, "audio/vnd.dts.hd"

    return-object p0

    :pswitch_3
    const-string p0, "audio/vnd.dts"

    return-object p0

    :pswitch_4
    const-string p0, "video/mpeg"

    return-object p0

    :pswitch_5
    const-string p0, "audio/mpeg"

    return-object p0

    :pswitch_6
    const-string p0, "video/mpeg2"

    return-object p0

    :cond_0
    const-string p0, "audio/eac3"

    return-object p0

    :cond_1
    const-string p0, "audio/ac3"

    return-object p0

    :cond_2
    const-string p0, "video/x-vnd.on2.vp9"

    return-object p0

    :cond_3
    const-string p0, "video/wvc1"

    return-object p0

    :cond_4
    :pswitch_7
    const-string p0, "audio/mp4a-latm"

    return-object p0

    :cond_5
    const-string p0, "video/hevc"

    return-object p0

    :cond_6
    const-string p0, "video/avc"

    return-object p0

    :cond_7
    const-string p0, "video/mp4v-es"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x60
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa9
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;)I
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-static {p0}, Lb3/c;->e(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_1
    invoke-static {p0}, Lb3/c;->f(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    const/4 p0, 0x2

    .line 24
    return p0

    .line 25
    :cond_2
    const-string v0, "text"

    .line 26
    .line 27
    invoke-static {p0}, Lb3/c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_8

    .line 36
    .line 37
    const-string v0, "application/cea-608"

    .line 38
    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_8

    .line 44
    .line 45
    const-string v0, "application/cea-708"

    .line 46
    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_8

    .line 52
    .line 53
    const-string v0, "application/x-mp4-cea-608"

    .line 54
    .line 55
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_8

    .line 60
    .line 61
    const-string v0, "application/x-subrip"

    .line 62
    .line 63
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-nez v0, :cond_8

    .line 68
    .line 69
    const-string v0, "application/ttml+xml"

    .line 70
    .line 71
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_8

    .line 76
    .line 77
    const-string v0, "application/x-quicktime-tx3g"

    .line 78
    .line 79
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_8

    .line 84
    .line 85
    const-string v0, "application/x-mp4-vtt"

    .line 86
    .line 87
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-nez v0, :cond_8

    .line 92
    .line 93
    const-string v0, "application/x-rawcc"

    .line 94
    .line 95
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-nez v0, :cond_8

    .line 100
    .line 101
    const-string v0, "application/vobsub"

    .line 102
    .line 103
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-nez v0, :cond_8

    .line 108
    .line 109
    const-string v0, "application/pgs"

    .line 110
    .line 111
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-nez v0, :cond_8

    .line 116
    .line 117
    const-string v0, "application/dvbsubs"

    .line 118
    .line 119
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_3

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_3
    const-string v0, "application/id3"

    .line 127
    .line 128
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-nez v0, :cond_7

    .line 133
    .line 134
    const-string v0, "application/x-emsg"

    .line 135
    .line 136
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-nez v0, :cond_7

    .line 141
    .line 142
    const-string v0, "application/x-scte35"

    .line 143
    .line 144
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-eqz v0, :cond_4

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_4
    const-string v0, "application/x-camera-motion"

    .line 152
    .line 153
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result p0

    .line 157
    if-eqz p0, :cond_5

    .line 158
    .line 159
    const/4 p0, 0x5

    .line 160
    return p0

    .line 161
    :cond_5
    sget-object p0, Lb3/c;->a:Ljava/util/ArrayList;

    .line 162
    .line 163
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-gtz v0, :cond_6

    .line 168
    .line 169
    return v1

    .line 170
    :cond_6
    const/4 v0, 0x0

    .line 171
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    invoke-static {p0}, La1/b;->j(Ljava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    const/4 p0, 0x0

    .line 179
    throw p0

    .line 180
    :cond_7
    :goto_0
    const/4 p0, 0x4

    .line 181
    return p0

    .line 182
    :cond_8
    :goto_1
    const/4 p0, 0x3

    .line 183
    return p0
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "audio"

    invoke-static {p0}, Lb3/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static f(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "video"

    invoke-static {p0}, Lb3/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
