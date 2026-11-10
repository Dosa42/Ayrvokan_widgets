.class public abstract Lm2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Lb3/n;->a:I

    .line 2
    .line 3
    const-string v0, "UTF-8"

    .line 4
    .line 5
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "OpusHead"

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lm2/c;->a:[B

    .line 16
    .line 17
    return-void
.end method

.method public static a(ILb3/h;)Landroid/util/Pair;
    .locals 3

    .line 1
    add-int/lit8 p0, p0, 0x8

    add-int/lit8 p0, p0, 0x4

    invoke-virtual {p1, p0}, Lb3/h;->q(I)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lb3/h;->r(I)V

    invoke-static {p1}, Lm2/c;->b(Lb3/h;)I

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lb3/h;->r(I)V

    invoke-virtual {p1}, Lb3/h;->h()I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0}, Lb3/h;->r(I)V

    :cond_0
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lb3/h;->m()I

    move-result v2

    invoke-virtual {p1, v2}, Lb3/h;->r(I)V

    :cond_1
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Lb3/h;->r(I)V

    :cond_2
    invoke-virtual {p1, p0}, Lb3/h;->r(I)V

    invoke-static {p1}, Lm2/c;->b(Lb3/h;)I

    invoke-virtual {p1}, Lb3/h;->h()I

    move-result v0

    invoke-static {v0}, Lb3/c;->b(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio/mpeg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "audio/vnd.dts"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "audio/vnd.dts.hd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0xc

    invoke-virtual {p1, v1}, Lb3/h;->r(I)V

    invoke-virtual {p1, p0}, Lb3/h;->r(I)V

    invoke-static {p1}, Lm2/c;->b(Lb3/h;)I

    move-result p0

    new-array v1, p0, [B

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, p0}, Lb3/h;->a([BII)V

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    const/4 p0, 0x0

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lb3/h;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lb3/h;->h()I

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    :goto_0
    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lb3/h;->h()I

    move-result v0

    shl-int/lit8 v1, v1, 0x7

    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static c(Lb3/h;II)Landroid/util/Pair;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lb3/h;->a:I

    .line 4
    .line 5
    :goto_0
    sub-int v2, v1, p1

    .line 6
    .line 7
    move/from16 v4, p2

    .line 8
    .line 9
    if-ge v2, v4, :cond_10

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lb3/h;->q(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {p0 .. p0}, Lb3/h;->b()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v5, 0x1

    .line 19
    const/4 v6, 0x0

    .line 20
    if-lez v2, :cond_0

    .line 21
    .line 22
    move v7, v5

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    move v7, v6

    .line 25
    :goto_1
    const-string v8, "childAtomSize should be positive"

    .line 26
    .line 27
    invoke-static {v8, v7}, Lcom/google/android/gms/internal/play_billing/i0;->f(Ljava/lang/String;Z)V

    .line 28
    .line 29
    .line 30
    invoke-virtual/range {p0 .. p0}, Lb3/h;->b()I

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    const v8, 0x73696e66

    .line 35
    .line 36
    .line 37
    if-ne v7, v8, :cond_f

    .line 38
    .line 39
    add-int/lit8 v7, v1, 0x8

    .line 40
    .line 41
    const/4 v8, -0x1

    .line 42
    move v10, v6

    .line 43
    move v9, v8

    .line 44
    const/4 v11, 0x0

    .line 45
    const/4 v15, 0x0

    .line 46
    :goto_2
    sub-int v12, v7, v1

    .line 47
    .line 48
    const/4 v13, 0x4

    .line 49
    if-ge v12, v2, :cond_4

    .line 50
    .line 51
    invoke-virtual {v0, v7}, Lb3/h;->q(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual/range {p0 .. p0}, Lb3/h;->b()I

    .line 55
    .line 56
    .line 57
    move-result v12

    .line 58
    invoke-virtual/range {p0 .. p0}, Lb3/h;->b()I

    .line 59
    .line 60
    .line 61
    move-result v14

    .line 62
    const v3, 0x66726d61

    .line 63
    .line 64
    .line 65
    if-ne v14, v3, :cond_1

    .line 66
    .line 67
    invoke-virtual/range {p0 .. p0}, Lb3/h;->b()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v15

    .line 75
    goto :goto_3

    .line 76
    :cond_1
    const v3, 0x7363686d

    .line 77
    .line 78
    .line 79
    if-ne v14, v3, :cond_2

    .line 80
    .line 81
    invoke-virtual {v0, v13}, Lb3/h;->r(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v13}, Lb3/h;->f(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v11

    .line 88
    goto :goto_3

    .line 89
    :cond_2
    const v3, 0x73636869

    .line 90
    .line 91
    .line 92
    if-ne v14, v3, :cond_3

    .line 93
    .line 94
    move v9, v7

    .line 95
    move v10, v12

    .line 96
    :cond_3
    :goto_3
    add-int/2addr v7, v12

    .line 97
    goto :goto_2

    .line 98
    :cond_4
    const-string v3, "cenc"

    .line 99
    .line 100
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    if-nez v3, :cond_6

    .line 105
    .line 106
    const-string v3, "cbc1"

    .line 107
    .line 108
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    if-nez v3, :cond_6

    .line 113
    .line 114
    const-string v3, "cens"

    .line 115
    .line 116
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    if-nez v3, :cond_6

    .line 121
    .line 122
    const-string v3, "cbcs"

    .line 123
    .line 124
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    if-eqz v3, :cond_5

    .line 129
    .line 130
    goto :goto_4

    .line 131
    :cond_5
    const/4 v3, 0x0

    .line 132
    goto/16 :goto_d

    .line 133
    .line 134
    :cond_6
    :goto_4
    if-eqz v15, :cond_7

    .line 135
    .line 136
    move v3, v5

    .line 137
    goto :goto_5

    .line 138
    :cond_7
    move v3, v6

    .line 139
    :goto_5
    const-string v7, "frma atom is mandatory"

    .line 140
    .line 141
    invoke-static {v7, v3}, Lcom/google/android/gms/internal/play_billing/i0;->f(Ljava/lang/String;Z)V

    .line 142
    .line 143
    .line 144
    if-eq v9, v8, :cond_8

    .line 145
    .line 146
    move v3, v5

    .line 147
    goto :goto_6

    .line 148
    :cond_8
    move v3, v6

    .line 149
    :goto_6
    const-string v7, "schi atom is mandatory"

    .line 150
    .line 151
    invoke-static {v7, v3}, Lcom/google/android/gms/internal/play_billing/i0;->f(Ljava/lang/String;Z)V

    .line 152
    .line 153
    .line 154
    add-int/lit8 v3, v9, 0x8

    .line 155
    .line 156
    :goto_7
    sub-int v7, v3, v9

    .line 157
    .line 158
    if-ge v7, v10, :cond_d

    .line 159
    .line 160
    invoke-virtual {v0, v3}, Lb3/h;->q(I)V

    .line 161
    .line 162
    .line 163
    invoke-virtual/range {p0 .. p0}, Lb3/h;->b()I

    .line 164
    .line 165
    .line 166
    move-result v7

    .line 167
    invoke-virtual/range {p0 .. p0}, Lb3/h;->b()I

    .line 168
    .line 169
    .line 170
    move-result v8

    .line 171
    const v12, 0x74656e63

    .line 172
    .line 173
    .line 174
    if-ne v8, v12, :cond_c

    .line 175
    .line 176
    invoke-virtual/range {p0 .. p0}, Lb3/h;->b()I

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    shr-int/lit8 v3, v3, 0x18

    .line 181
    .line 182
    and-int/lit16 v3, v3, 0xff

    .line 183
    .line 184
    invoke-virtual {v0, v5}, Lb3/h;->r(I)V

    .line 185
    .line 186
    .line 187
    if-nez v3, :cond_9

    .line 188
    .line 189
    invoke-virtual {v0, v5}, Lb3/h;->r(I)V

    .line 190
    .line 191
    .line 192
    move v3, v6

    .line 193
    move v14, v3

    .line 194
    goto :goto_8

    .line 195
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lb3/h;->h()I

    .line 196
    .line 197
    .line 198
    move-result v3

    .line 199
    and-int/lit16 v7, v3, 0xf0

    .line 200
    .line 201
    shr-int/2addr v7, v13

    .line 202
    and-int/lit8 v3, v3, 0xf

    .line 203
    .line 204
    move v14, v7

    .line 205
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lb3/h;->h()I

    .line 206
    .line 207
    .line 208
    move-result v7

    .line 209
    if-ne v7, v5, :cond_a

    .line 210
    .line 211
    move v10, v5

    .line 212
    goto :goto_9

    .line 213
    :cond_a
    move v10, v6

    .line 214
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lb3/h;->h()I

    .line 215
    .line 216
    .line 217
    move-result v12

    .line 218
    const/16 v7, 0x10

    .line 219
    .line 220
    new-array v13, v7, [B

    .line 221
    .line 222
    invoke-virtual {v0, v13, v6, v7}, Lb3/h;->a([BII)V

    .line 223
    .line 224
    .line 225
    if-eqz v10, :cond_b

    .line 226
    .line 227
    if-nez v12, :cond_b

    .line 228
    .line 229
    invoke-virtual/range {p0 .. p0}, Lb3/h;->h()I

    .line 230
    .line 231
    .line 232
    move-result v7

    .line 233
    new-array v8, v7, [B

    .line 234
    .line 235
    invoke-virtual {v0, v8, v6, v7}, Lb3/h;->a([BII)V

    .line 236
    .line 237
    .line 238
    move-object/from16 v16, v8

    .line 239
    .line 240
    goto :goto_a

    .line 241
    :cond_b
    const/16 v16, 0x0

    .line 242
    .line 243
    :goto_a
    new-instance v7, Lm2/i;

    .line 244
    .line 245
    move-object v9, v7

    .line 246
    move-object v8, v15

    .line 247
    move v15, v3

    .line 248
    invoke-direct/range {v9 .. v16}, Lm2/i;-><init>(ZLjava/lang/String;I[BII[B)V

    .line 249
    .line 250
    .line 251
    move-object v3, v7

    .line 252
    goto :goto_b

    .line 253
    :cond_c
    move-object v8, v15

    .line 254
    add-int/2addr v3, v7

    .line 255
    goto :goto_7

    .line 256
    :cond_d
    move-object v8, v15

    .line 257
    const/4 v3, 0x0

    .line 258
    :goto_b
    if-eqz v3, :cond_e

    .line 259
    .line 260
    goto :goto_c

    .line 261
    :cond_e
    move v5, v6

    .line 262
    :goto_c
    const-string v6, "tenc atom is mandatory"

    .line 263
    .line 264
    invoke-static {v6, v5}, Lcom/google/android/gms/internal/play_billing/i0;->f(Ljava/lang/String;Z)V

    .line 265
    .line 266
    .line 267
    invoke-static {v8, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 268
    .line 269
    .line 270
    move-result-object v3

    .line 271
    :goto_d
    if-eqz v3, :cond_f

    .line 272
    .line 273
    return-object v3

    .line 274
    :cond_f
    add-int/2addr v1, v2

    .line 275
    goto/16 :goto_0

    .line 276
    .line 277
    :cond_10
    const/4 v1, 0x0

    .line 278
    return-object v1
.end method

.method public static d(Lm2/a;Lm2/b;JLj2/b;Z)Lm2/h;
    .locals 45

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    const v2, 0x6d646961

    invoke-virtual {v0, v2}, Lm2/a;->c(I)Lm2/a;

    move-result-object v2

    const v3, 0x68646c72    # 4.3148E24f

    invoke-virtual {v2, v3}, Lm2/a;->d(I)Lm2/b;

    move-result-object v3

    iget-object v3, v3, Lm2/b;->c:Lb3/h;

    const/16 v4, 0x10

    .line 1
    invoke-virtual {v3, v4}, Lb3/h;->q(I)V

    invoke-virtual {v3}, Lb3/h;->b()I

    move-result v3

    const v8, 0x736f756e

    const/4 v9, -0x1

    const/4 v10, 0x4

    if-ne v3, v8, :cond_0

    const/4 v13, 0x1

    goto :goto_1

    :cond_0
    const v8, 0x76696465

    if-ne v3, v8, :cond_1

    const/4 v13, 0x2

    goto :goto_1

    :cond_1
    const v8, 0x74657874

    if-eq v3, v8, :cond_4

    const v8, 0x7362746c

    if-eq v3, v8, :cond_4

    const v8, 0x73756274

    if-eq v3, v8, :cond_4

    const v8, 0x636c6370

    if-ne v3, v8, :cond_2

    goto :goto_0

    :cond_2
    const v8, 0x6d657461

    if-ne v3, v8, :cond_3

    move v13, v10

    goto :goto_1

    :cond_3
    move v13, v9

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v13, 0x3

    :goto_1
    const/4 v3, 0x0

    if-ne v13, v9, :cond_5

    return-object v3

    :cond_5
    const v8, 0x746b6864

    .line 2
    invoke-virtual {v0, v8}, Lm2/a;->d(I)Lm2/b;

    move-result-object v8

    iget-object v8, v8, Lm2/b;->c:Lb3/h;

    const/16 v11, 0x8

    .line 3
    invoke-virtual {v8, v11}, Lb3/h;->q(I)V

    invoke-virtual {v8}, Lb3/h;->b()I

    move-result v12

    shr-int/lit8 v12, v12, 0x18

    and-int/lit16 v12, v12, 0xff

    if-nez v12, :cond_6

    move v14, v11

    goto :goto_2

    :cond_6
    move v14, v4

    :goto_2
    invoke-virtual {v8, v14}, Lb3/h;->r(I)V

    invoke-virtual {v8}, Lb3/h;->b()I

    move-result v14

    invoke-virtual {v8, v10}, Lb3/h;->r(I)V

    .line 4
    iget v15, v8, Lb3/h;->a:I

    if-nez v12, :cond_7

    move v3, v10

    goto :goto_3

    :cond_7
    move v3, v11

    :goto_3
    const/4 v5, 0x0

    :goto_4
    if-ge v5, v3, :cond_9

    .line 5
    iget-object v6, v8, Lb3/h;->c:Ljava/io/Serializable;

    check-cast v6, [B

    add-int v20, v15, v5

    aget-byte v6, v6, v20

    if-eq v6, v9, :cond_8

    const/4 v5, 0x0

    goto :goto_5

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_9
    const/4 v5, 0x1

    :goto_5
    const-wide/16 v20, 0x0

    const-wide v22, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v5, :cond_a

    invoke-virtual {v8, v3}, Lb3/h;->r(I)V

    goto :goto_7

    :cond_a
    if-nez v12, :cond_b

    invoke-virtual {v8}, Lb3/h;->i()J

    move-result-wide v5

    goto :goto_6

    :cond_b
    invoke-virtual {v8}, Lb3/h;->l()J

    move-result-wide v5

    :goto_6
    cmp-long v3, v5, v20

    if-nez v3, :cond_c

    :goto_7
    move-wide/from16 v5, v22

    :cond_c
    invoke-virtual {v8, v4}, Lb3/h;->r(I)V

    invoke-virtual {v8}, Lb3/h;->b()I

    move-result v3

    invoke-virtual {v8}, Lb3/h;->b()I

    move-result v12

    invoke-virtual {v8, v10}, Lb3/h;->r(I)V

    invoke-virtual {v8}, Lb3/h;->b()I

    move-result v15

    invoke-virtual {v8}, Lb3/h;->b()I

    move-result v8

    const/high16 v4, -0x10000

    const/high16 v9, 0x10000

    if-nez v3, :cond_d

    if-ne v12, v9, :cond_d

    if-ne v15, v4, :cond_d

    if-nez v8, :cond_d

    const/16 v3, 0x5a

    goto :goto_8

    :cond_d
    if-nez v3, :cond_e

    if-ne v12, v4, :cond_e

    if-ne v15, v9, :cond_e

    if-nez v8, :cond_e

    const/16 v3, 0x10e

    goto :goto_8

    :cond_e
    if-ne v3, v4, :cond_f

    if-nez v12, :cond_f

    if-nez v15, :cond_f

    if-ne v8, v4, :cond_f

    const/16 v3, 0xb4

    goto :goto_8

    :cond_f
    const/4 v3, 0x0

    :goto_8
    cmp-long v4, p2, v22

    if-nez v4, :cond_10

    move-object/from16 v4, p1

    move-wide/from16 v24, v5

    goto :goto_9

    :cond_10
    move-object/from16 v4, p1

    move-wide/from16 v24, p2

    .line 6
    :goto_9
    iget-object v4, v4, Lm2/b;->c:Lb3/h;

    .line 7
    invoke-virtual {v4, v11}, Lb3/h;->q(I)V

    invoke-virtual {v4}, Lb3/h;->b()I

    move-result v5

    shr-int/lit8 v5, v5, 0x18

    and-int/lit16 v5, v5, 0xff

    if-nez v5, :cond_11

    move v5, v11

    goto :goto_a

    :cond_11
    const/16 v5, 0x10

    :goto_a
    invoke-virtual {v4, v5}, Lb3/h;->r(I)V

    invoke-virtual {v4}, Lb3/h;->i()J

    move-result-wide v28

    cmp-long v4, v24, v22

    if-nez v4, :cond_12

    move-wide/from16 v4, v22

    goto :goto_b

    :cond_12
    const-wide/32 v26, 0xf4240

    .line 8
    invoke-static/range {v24 .. v29}, Lb3/n;->h(JJJ)J

    move-result-wide v4

    :goto_b
    const v6, 0x6d696e66

    invoke-virtual {v2, v6}, Lm2/a;->c(I)Lm2/a;

    move-result-object v6

    const v8, 0x7374626c

    invoke-virtual {v6, v8}, Lm2/a;->c(I)Lm2/a;

    move-result-object v6

    const v8, 0x6d646864

    invoke-virtual {v2, v8}, Lm2/a;->d(I)Lm2/b;

    move-result-object v2

    iget-object v2, v2, Lm2/b;->c:Lb3/h;

    .line 9
    invoke-virtual {v2, v11}, Lb3/h;->q(I)V

    invoke-virtual {v2}, Lb3/h;->b()I

    move-result v8

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    if-nez v8, :cond_13

    move v9, v11

    goto :goto_c

    :cond_13
    const/16 v9, 0x10

    :goto_c
    invoke-virtual {v2, v9}, Lb3/h;->r(I)V

    invoke-virtual {v2}, Lb3/h;->i()J

    move-result-wide v22

    if-nez v8, :cond_14

    move v8, v10

    goto :goto_d

    :cond_14
    move v8, v11

    :goto_d
    invoke-virtual {v2, v8}, Lb3/h;->r(I)V

    invoke-virtual {v2}, Lb3/h;->m()I

    move-result v2

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, ""

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    shr-int/lit8 v9, v2, 0xa

    and-int/lit8 v9, v9, 0x1f

    add-int/lit8 v9, v9, 0x60

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v9, v2, 0x5

    and-int/lit8 v9, v9, 0x1f

    add-int/lit8 v9, v9, 0x60

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0x60

    int-to-char v2, v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v8, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const v8, 0x73747364

    .line 10
    invoke-virtual {v6, v8}, Lm2/a;->d(I)Lm2/b;

    move-result-object v6

    iget-object v6, v6, Lm2/b;->c:Lb3/h;

    iget-object v8, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    const/16 v9, 0xc

    .line 11
    invoke-virtual {v6, v9}, Lb3/h;->q(I)V

    invoke-virtual {v6}, Lb3/h;->b()I

    move-result v9

    .line 12
    new-array v15, v9, [Lm2/i;

    const/4 v12, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v34, 0x0

    :goto_e
    if-ge v12, v9, :cond_7c

    .line 13
    iget v10, v6, Lb3/h;->a:I

    .line 14
    invoke-virtual {v6}, Lb3/h;->b()I

    move-result v7

    move/from16 p1, v9

    if-lez v7, :cond_15

    const/4 v11, 0x1

    goto :goto_f

    :cond_15
    const/4 v11, 0x0

    :goto_f
    const-string v9, "childAtomSize should be positive"

    invoke-static {v9, v11}, Lcom/google/android/gms/internal/play_billing/i0;->f(Ljava/lang/String;Z)V

    invoke-virtual {v6}, Lb3/h;->b()I

    move-result v11

    move-wide/from16 p2, v4

    const v5, 0x61766331

    const v4, 0x656e6376

    if-eq v11, v5, :cond_4d

    const v5, 0x61766333

    if-eq v11, v5, :cond_4d

    if-eq v11, v4, :cond_4d

    const v5, 0x6d703476

    if-eq v11, v5, :cond_4d

    const v5, 0x68766331

    if-eq v11, v5, :cond_4d

    const v5, 0x68657631

    if-eq v11, v5, :cond_4d

    const v5, 0x73323633

    if-eq v11, v5, :cond_4d

    const v5, 0x76703038

    if-eq v11, v5, :cond_4d

    const v5, 0x76703039

    if-eq v11, v5, :cond_4d

    const v5, 0x61763031

    if-eq v11, v5, :cond_4d

    const v5, 0x64766176

    if-eq v11, v5, :cond_4d

    const v5, 0x64766131

    if-eq v11, v5, :cond_4d

    const v5, 0x64766865

    if-eq v11, v5, :cond_4d

    const v5, 0x64766831

    if-ne v11, v5, :cond_16

    goto/16 :goto_2d

    :cond_16
    const v4, 0x6d703461

    const v5, 0x656e6361

    move/from16 v35, v13

    const v13, 0x616c6163

    if-eq v11, v4, :cond_20

    if-eq v11, v5, :cond_20

    const v4, 0x61632d33

    if-eq v11, v4, :cond_20

    const v4, 0x65632d33

    if-eq v11, v4, :cond_20

    const v4, 0x61632d34

    if-eq v11, v4, :cond_20

    const v4, 0x64747363

    if-eq v11, v4, :cond_20

    const v4, 0x64747365

    if-eq v11, v4, :cond_20

    const v4, 0x64747368

    if-eq v11, v4, :cond_20

    const v4, 0x6474736c

    if-eq v11, v4, :cond_20

    const v4, 0x73616d72

    if-eq v11, v4, :cond_20

    const v4, 0x73617762

    if-eq v11, v4, :cond_20

    const v4, 0x6c70636d

    if-eq v11, v4, :cond_20

    const v4, 0x736f7774

    if-eq v11, v4, :cond_20

    const v4, 0x74776f73

    if-eq v11, v4, :cond_20

    const v4, 0x2e6d7033

    if-eq v11, v4, :cond_20

    if-eq v11, v13, :cond_20

    const v4, 0x616c6177

    if-eq v11, v4, :cond_20

    const v4, 0x756c6177

    if-eq v11, v4, :cond_20

    const v4, 0x4f707573

    if-eq v11, v4, :cond_20

    const v4, 0x664c6143

    if-ne v11, v4, :cond_17

    goto/16 :goto_15

    :cond_17
    const v4, 0x54544d4c

    if-eq v11, v4, :cond_19

    const v4, 0x74783367

    if-eq v11, v4, :cond_19

    const v4, 0x77767474

    if-eq v11, v4, :cond_19

    const v4, 0x73747070

    if-eq v11, v4, :cond_19

    const v4, 0x63363038

    if-ne v11, v4, :cond_18

    goto :goto_10

    :cond_18
    const v4, 0x63616d6d

    if-ne v11, v4, :cond_1e

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "application/x-camera-motion"

    invoke-static {v4, v5}, Lf2/t;->i(Ljava/lang/String;Ljava/lang/String;)Lf2/t;

    move-result-object v22

    goto :goto_14

    :cond_19
    :goto_10
    add-int/lit8 v4, v10, 0x8

    const/16 v5, 0x8

    add-int/2addr v4, v5

    .line 15
    invoke-virtual {v6, v4}, Lb3/h;->q(I)V

    const v4, 0x54544d4c

    const-string v5, "application/ttml+xml"

    const-wide v24, 0x7fffffffffffffffL

    if-ne v11, v4, :cond_1a

    const/4 v4, 0x0

    goto :goto_11

    :cond_1a
    const v4, 0x74783367

    if-ne v11, v4, :cond_1b

    add-int/lit8 v4, v7, -0x8

    add-int/lit8 v4, v4, -0x8

    new-array v5, v4, [B

    const/4 v9, 0x0

    invoke-virtual {v6, v5, v9, v4}, Lb3/h;->a([BII)V

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v5, "application/x-quicktime-tx3g"

    :goto_11
    move-object/from16 v31, v4

    move-wide/from16 v29, v24

    move-object/from16 v25, v5

    goto :goto_13

    :cond_1b
    const v4, 0x77767474

    if-ne v11, v4, :cond_1c

    const-string v4, "application/x-mp4-vtt"

    goto :goto_12

    :cond_1c
    const v4, 0x73747070

    if-ne v11, v4, :cond_1d

    move-object/from16 v25, v5

    move-wide/from16 v29, v20

    const/16 v31, 0x0

    goto :goto_13

    :cond_1d
    const v4, 0x63363038

    if-ne v11, v4, :cond_1f

    const-string v4, "application/x-mp4-cea-608"

    const/16 v23, 0x1

    :goto_12
    move-wide/from16 v29, v24

    const/16 v31, 0x0

    move-object/from16 v25, v4

    :goto_13
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    const/16 v26, 0x0

    const/16 v28, -0x1

    move-object/from16 v27, v8

    invoke-static/range {v24 .. v31}, Lf2/t;->k(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IJLjava/util/List;)Lf2/t;

    move-result-object v22

    :cond_1e
    :goto_14
    move-object/from16 v41, v2

    move/from16 v42, v3

    move/from16 v43, v12

    move-object/from16 v44, v15

    const/4 v3, -0x1

    goto/16 :goto_2c

    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_20
    :goto_15
    add-int/lit8 v4, v10, 0x8

    const/16 v13, 0x8

    add-int/2addr v4, v13

    .line 16
    invoke-virtual {v6, v4}, Lb3/h;->q(I)V

    invoke-virtual {v6, v13}, Lb3/h;->r(I)V

    invoke-virtual {v6}, Lb3/h;->m()I

    move-result v4

    const/4 v13, 0x6

    invoke-virtual {v6, v13}, Lb3/h;->r(I)V

    .line 17
    iget-object v13, v6, Lb3/h;->c:Ljava/io/Serializable;

    check-cast v13, [B

    iget v5, v6, Lb3/h;->a:I

    add-int/lit8 v25, v5, 0x1

    aget-byte v5, v13, v5

    and-int/lit16 v5, v5, 0xff

    const/16 v26, 0x8

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v26, v25, 0x1

    aget-byte v13, v13, v25

    and-int/lit16 v13, v13, 0xff

    or-int/2addr v5, v13

    move/from16 v25, v4

    const/4 v13, 0x2

    add-int/lit8 v4, v26, 0x2

    iput v4, v6, Lb3/h;->a:I

    const v13, 0x656e6361

    if-ne v11, v13, :cond_23

    .line 18
    invoke-static {v6, v10, v7}, Lm2/c;->c(Lb3/h;II)Landroid/util/Pair;

    move-result-object v13

    if-eqz v13, :cond_22

    iget-object v11, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move/from16 v24, v5

    if-nez v1, :cond_21

    const/4 v5, 0x0

    goto :goto_16

    :cond_21
    iget-object v5, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lm2/i;

    iget-object v5, v5, Lm2/i;->b:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lj2/b;->a(Ljava/lang/String;)Lj2/b;

    move-result-object v5

    :goto_16
    iget-object v13, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Lm2/i;

    aput-object v13, v15, v12

    goto :goto_17

    :cond_22
    move/from16 v24, v5

    move-object v5, v1

    :goto_17
    invoke-virtual {v6, v4}, Lb3/h;->q(I)V

    goto :goto_18

    :cond_23
    move/from16 v24, v5

    move-object v5, v1

    :goto_18
    const v13, 0x61632d33

    const-string v37, "audio/eac3"

    if-ne v11, v13, :cond_24

    const-string v11, "audio/ac3"

    goto/16 :goto_1c

    :cond_24
    const v13, 0x65632d33

    if-ne v11, v13, :cond_25

    move-object/from16 v11, v37

    goto/16 :goto_1c

    :cond_25
    const v13, 0x61632d34

    if-ne v11, v13, :cond_26

    const-string v11, "audio/ac4"

    goto/16 :goto_1c

    :cond_26
    const v13, 0x64747363

    if-ne v11, v13, :cond_27

    const-string v11, "audio/vnd.dts"

    goto/16 :goto_1c

    :cond_27
    const v13, 0x64747368

    if-eq v11, v13, :cond_35

    const v13, 0x6474736c

    if-ne v11, v13, :cond_28

    goto/16 :goto_1b

    :cond_28
    const v13, 0x64747365

    if-ne v11, v13, :cond_29

    const-string v11, "audio/vnd.dts.hd;profile=lbr"

    goto/16 :goto_1c

    :cond_29
    const v13, 0x73616d72

    if-ne v11, v13, :cond_2a

    const-string v11, "audio/3gpp"

    goto :goto_1c

    :cond_2a
    const v13, 0x73617762

    if-ne v11, v13, :cond_2b

    const-string v11, "audio/amr-wb"

    goto :goto_1c

    :cond_2b
    const v13, 0x6c70636d

    if-eq v11, v13, :cond_34

    const v13, 0x736f7774

    if-ne v11, v13, :cond_2c

    goto :goto_19

    :cond_2c
    const v13, 0x74776f73

    if-ne v11, v13, :cond_2d

    const/high16 v11, 0x10000000

    goto :goto_1a

    :cond_2d
    const v13, 0x2e6d7033

    if-ne v11, v13, :cond_2e

    const-string v11, "audio/mpeg"

    goto :goto_1c

    :cond_2e
    const v13, 0x616c6163

    if-ne v11, v13, :cond_2f

    const-string v11, "audio/alac"

    goto :goto_1c

    :cond_2f
    const v13, 0x616c6177

    if-ne v11, v13, :cond_30

    const-string v11, "audio/g711-alaw"

    goto :goto_1c

    :cond_30
    const v13, 0x756c6177

    if-ne v11, v13, :cond_31

    const-string v11, "audio/g711-mlaw"

    goto :goto_1c

    :cond_31
    const v13, 0x4f707573

    if-ne v11, v13, :cond_32

    const-string v11, "audio/opus"

    goto :goto_1c

    :cond_32
    const v13, 0x664c6143

    if-ne v11, v13, :cond_33

    const-string v11, "audio/flac"

    goto :goto_1c

    :cond_33
    const/4 v11, 0x0

    goto :goto_1c

    :cond_34
    :goto_19
    const/4 v11, 0x2

    :goto_1a
    const-string v13, "audio/raw"

    goto :goto_1d

    :cond_35
    :goto_1b
    const-string v11, "audio/vnd.dts.hd"

    :goto_1c
    move-object v13, v11

    const/4 v11, -0x1

    :goto_1d
    move-object/from16 v41, v2

    move/from16 v39, v24

    move/from16 v38, v25

    const/16 v40, 0x0

    :goto_1e
    sub-int v2, v4, v10

    if-ge v2, v7, :cond_4a

    invoke-virtual {v6, v4}, Lb3/h;->q(I)V

    invoke-virtual {v6}, Lb3/h;->b()I

    move-result v2

    if-lez v2, :cond_36

    const/4 v0, 0x1

    goto :goto_1f

    :cond_36
    const/4 v0, 0x0

    :goto_1f
    invoke-static {v9, v0}, Lcom/google/android/gms/internal/play_billing/i0;->f(Ljava/lang/String;Z)V

    invoke-virtual {v6}, Lb3/h;->b()I

    move-result v0

    move/from16 v42, v3

    const v3, 0x65736473

    if-eq v0, v3, :cond_43

    sget-object v3, Lc1/b;->m:[I

    sget-object v24, Lc1/b;->k:[I

    move/from16 v43, v12

    const v12, 0x64616333

    if-ne v0, v12, :cond_38

    add-int/lit8 v0, v4, 0x8

    invoke-virtual {v6, v0}, Lb3/h;->q(I)V

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-virtual {v6}, Lb3/h;->h()I

    move-result v12

    and-int/lit16 v12, v12, 0xc0

    const/16 v22, 0x6

    shr-int/lit8 v12, v12, 0x6

    aget v29, v24, v12

    invoke-virtual {v6}, Lb3/h;->h()I

    move-result v12

    and-int/lit8 v22, v12, 0x38

    const/16 v18, 0x3

    shr-int/lit8 v22, v22, 0x3

    aget v3, v3, v22

    const/16 v22, 0x4

    and-int/lit8 v12, v12, 0x4

    if-eqz v12, :cond_37

    add-int/lit8 v3, v3, 0x1

    :cond_37
    move/from16 v28, v3

    const-string v25, "audio/ac3"

    const/16 v26, -0x1

    const/16 v27, -0x1

    const/16 v30, 0x0

    move-object/from16 v24, v0

    move-object/from16 v31, v5

    move-object/from16 v32, v8

    invoke-static/range {v24 .. v32}, Lf2/t;->g(Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lj2/b;Ljava/lang/String;)Lf2/t;

    move-result-object v0

    move-object/from16 v22, v0

    const/16 v36, 0x6

    goto/16 :goto_23

    :cond_38
    const v12, 0x64656333

    if-ne v0, v12, :cond_3c

    add-int/lit8 v0, v4, 0x8

    .line 20
    invoke-virtual {v6, v0}, Lb3/h;->q(I)V

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x2

    .line 21
    invoke-virtual {v6, v12}, Lb3/h;->r(I)V

    invoke-virtual {v6}, Lb3/h;->h()I

    move-result v12

    and-int/lit16 v12, v12, 0xc0

    const/16 v36, 0x6

    shr-int/lit8 v12, v12, 0x6

    aget v29, v24, v12

    invoke-virtual {v6}, Lb3/h;->h()I

    move-result v12

    and-int/lit8 v22, v12, 0xe

    const/16 v17, 0x1

    shr-int/lit8 v22, v22, 0x1

    aget v3, v3, v22

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_39

    add-int/lit8 v3, v3, 0x1

    :cond_39
    invoke-virtual {v6}, Lb3/h;->h()I

    move-result v12

    and-int/lit8 v12, v12, 0x1e

    shr-int/lit8 v12, v12, 0x1

    if-lez v12, :cond_3a

    invoke-virtual {v6}, Lb3/h;->h()I

    move-result v12

    const/16 v19, 0x2

    and-int/lit8 v12, v12, 0x2

    if-eqz v12, :cond_3a

    add-int/lit8 v3, v3, 0x2

    :cond_3a
    move/from16 v28, v3

    .line 22
    iget v3, v6, Lb3/h;->b:I

    iget v12, v6, Lb3/h;->a:I

    sub-int/2addr v3, v12

    if-lez v3, :cond_3b

    .line 23
    invoke-virtual {v6}, Lb3/h;->h()I

    move-result v3

    const/4 v12, 0x1

    and-int/2addr v3, v12

    if-eqz v3, :cond_3b

    const-string v3, "audio/eac3-joc"

    move-object/from16 v25, v3

    goto :goto_20

    :cond_3b
    move-object/from16 v25, v37

    :goto_20
    const/16 v26, -0x1

    const/16 v27, -0x1

    const/16 v30, 0x0

    move-object/from16 v24, v0

    move-object/from16 v31, v5

    move-object/from16 v32, v8

    invoke-static/range {v24 .. v32}, Lf2/t;->g(Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lj2/b;Ljava/lang/String;)Lf2/t;

    move-result-object v0

    goto :goto_22

    :cond_3c
    const/16 v36, 0x6

    const v3, 0x64616334

    if-ne v0, v3, :cond_3e

    add-int/lit8 v0, v4, 0x8

    .line 24
    invoke-virtual {v6, v0}, Lb3/h;->q(I)V

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    const/4 v0, 0x1

    .line 25
    invoke-virtual {v6, v0}, Lb3/h;->r(I)V

    invoke-virtual {v6}, Lb3/h;->h()I

    move-result v3

    and-int/lit8 v3, v3, 0x20

    const/4 v12, 0x5

    shr-int/2addr v3, v12

    if-ne v3, v0, :cond_3d

    const v0, 0xbb80

    goto :goto_21

    :cond_3d
    const v0, 0xac44

    :goto_21
    move/from16 v29, v0

    const-string v25, "audio/ac4"

    const/16 v26, -0x1

    const/16 v27, -0x1

    const/16 v28, 0x2

    const/16 v30, 0x0

    move-object/from16 v31, v5

    move-object/from16 v32, v8

    invoke-static/range {v24 .. v32}, Lf2/t;->g(Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lj2/b;Ljava/lang/String;)Lf2/t;

    move-result-object v0

    goto :goto_22

    :cond_3e
    const v3, 0x64647473

    if-ne v0, v3, :cond_3f

    .line 26
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    const/16 v26, -0x1

    const/16 v27, -0x1

    const/16 v30, 0x0

    move-object/from16 v25, v13

    move/from16 v28, v38

    move/from16 v29, v39

    move-object/from16 v31, v5

    move-object/from16 v32, v8

    invoke-static/range {v24 .. v32}, Lf2/t;->g(Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lj2/b;Ljava/lang/String;)Lf2/t;

    move-result-object v0

    :goto_22
    move-object/from16 v22, v0

    :goto_23
    move-object/from16 v44, v15

    :goto_24
    const v1, 0x616c6163

    goto/16 :goto_25

    :cond_3f
    const v3, 0x644f7073

    if-ne v0, v3, :cond_40

    add-int/lit8 v0, v2, -0x8

    sget-object v3, Lm2/c;->a:[B

    array-length v12, v3

    add-int/2addr v12, v0

    new-array v12, v12, [B

    move-object/from16 v44, v15

    array-length v15, v3

    const/4 v1, 0x0

    invoke-static {v3, v1, v12, v1, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v4, 0x8

    invoke-virtual {v6, v1}, Lb3/h;->q(I)V

    array-length v1, v3

    invoke-virtual {v6, v12, v1, v0}, Lb3/h;->a([BII)V

    move-object/from16 v40, v12

    goto :goto_24

    :cond_40
    move-object/from16 v44, v15

    const v1, 0x64664c61

    if-ne v0, v1, :cond_41

    add-int/lit8 v0, v2, -0xc

    add-int/lit8 v1, v0, 0x4

    new-array v1, v1, [B

    const/16 v3, 0x66

    const/4 v12, 0x0

    aput-byte v3, v1, v12

    const/16 v3, 0x4c

    const/4 v12, 0x1

    aput-byte v3, v1, v12

    const/16 v3, 0x61

    const/4 v12, 0x2

    aput-byte v3, v1, v12

    const/16 v3, 0x43

    const/4 v12, 0x3

    aput-byte v3, v1, v12

    add-int/lit8 v3, v4, 0xc

    invoke-virtual {v6, v3}, Lb3/h;->q(I)V

    const/4 v3, 0x4

    invoke-virtual {v6, v1, v3, v0}, Lb3/h;->a([BII)V

    move-object/from16 v40, v1

    goto :goto_24

    :cond_41
    const v1, 0x616c6163

    if-ne v0, v1, :cond_42

    add-int/lit8 v0, v2, -0xc

    new-array v3, v0, [B

    add-int/lit8 v12, v4, 0xc

    invoke-virtual {v6, v12}, Lb3/h;->q(I)V

    const/4 v12, 0x0

    invoke-virtual {v6, v3, v12, v0}, Lb3/h;->a([BII)V

    .line 27
    new-instance v0, Lb3/h;

    invoke-direct {v0, v3}, Lb3/h;-><init>([B)V

    const/16 v12, 0x9

    invoke-virtual {v0, v12}, Lb3/h;->q(I)V

    invoke-virtual {v0}, Lb3/h;->h()I

    move-result v12

    const/16 v15, 0x14

    invoke-virtual {v0, v15}, Lb3/h;->q(I)V

    invoke-virtual {v0}, Lb3/h;->k()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 28
    iget-object v12, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move/from16 v38, v0

    move-object/from16 v40, v3

    move/from16 v39, v12

    :cond_42
    :goto_25
    const/4 v3, -0x1

    goto :goto_2a

    :cond_43
    move/from16 v43, v12

    move-object/from16 v44, v15

    const v1, 0x616c6163

    const/16 v36, 0x6

    if-ne v0, v3, :cond_44

    move v0, v4

    :goto_26
    const/4 v3, -0x1

    goto :goto_29

    .line 29
    :cond_44
    iget v0, v6, Lb3/h;->a:I

    :goto_27
    sub-int v3, v0, v4

    if-ge v3, v2, :cond_47

    .line 30
    invoke-virtual {v6, v0}, Lb3/h;->q(I)V

    invoke-virtual {v6}, Lb3/h;->b()I

    move-result v3

    if-lez v3, :cond_45

    const/4 v12, 0x1

    goto :goto_28

    :cond_45
    const/4 v12, 0x0

    :goto_28
    invoke-static {v9, v12}, Lcom/google/android/gms/internal/play_billing/i0;->f(Ljava/lang/String;Z)V

    invoke-virtual {v6}, Lb3/h;->b()I

    move-result v12

    const v15, 0x65736473

    if-ne v12, v15, :cond_46

    goto :goto_26

    :cond_46
    add-int/2addr v0, v3

    goto :goto_27

    :cond_47
    const/4 v0, -0x1

    goto :goto_26

    :goto_29
    if-eq v0, v3, :cond_49

    .line 31
    invoke-static {v0, v6}, Lm2/c;->a(ILb3/h;)Landroid/util/Pair;

    move-result-object v0

    iget-object v12, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v13, v12

    check-cast v13, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [B

    const-string v12, "audio/mp4a-latm"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_48

    .line 32
    new-instance v12, Lb3/g;

    invoke-direct {v12, v0}, Lb3/g;-><init>([B)V

    const/4 v15, 0x0

    invoke-static {v12, v15}, Lc1/b;->x(Lb3/g;Z)Landroid/util/Pair;

    move-result-object v12

    .line 33
    iget-object v15, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v39

    iget-object v12, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v38

    :cond_48
    move-object/from16 v40, v0

    :cond_49
    :goto_2a
    add-int/2addr v4, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v3, v42

    move/from16 v12, v43

    move-object/from16 v15, v44

    goto/16 :goto_1e

    :cond_4a
    move/from16 v42, v3

    move/from16 v43, v12

    move-object/from16 v44, v15

    const/4 v3, -0x1

    if-nez v22, :cond_4c

    if-eqz v13, :cond_4c

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    const/16 v26, -0x1

    const/16 v27, -0x1

    if-nez v40, :cond_4b

    const/16 v31, 0x0

    goto :goto_2b

    :cond_4b
    invoke-static/range {v40 .. v40}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object/from16 v31, v0

    :goto_2b
    move-object/from16 v25, v13

    move/from16 v28, v38

    move/from16 v29, v39

    move/from16 v30, v11

    move-object/from16 v32, v5

    move-object/from16 v33, v8

    invoke-static/range {v24 .. v33}, Lf2/t;->f(Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lj2/b;Ljava/lang/String;)Lf2/t;

    move-result-object v22

    :cond_4c
    :goto_2c
    move/from16 v37, v7

    move-object/from16 v36, v8

    move/from16 v38, v10

    move/from16 v40, v14

    const/4 v4, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x3

    goto/16 :goto_4d

    :cond_4d
    :goto_2d
    move-object/from16 v41, v2

    move/from16 v42, v3

    move/from16 v43, v12

    move/from16 v35, v13

    move-object/from16 v44, v15

    const/4 v3, -0x1

    add-int/lit8 v0, v10, 0x8

    const/16 v1, 0x8

    add-int/2addr v0, v1

    .line 34
    invoke-virtual {v6, v0}, Lb3/h;->q(I)V

    const/16 v0, 0x10

    invoke-virtual {v6, v0}, Lb3/h;->r(I)V

    invoke-virtual {v6}, Lb3/h;->m()I

    move-result v27

    invoke-virtual {v6}, Lb3/h;->m()I

    move-result v28

    const/16 v1, 0x32

    invoke-virtual {v6, v1}, Lb3/h;->r(I)V

    .line 35
    iget v1, v6, Lb3/h;->a:I

    if-ne v11, v4, :cond_50

    .line 36
    invoke-static {v6, v10, v7}, Lm2/c;->c(Lb3/h;II)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_4f

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move-object/from16 v4, p4

    if-nez v4, :cond_4e

    const/4 v5, 0x0

    goto :goto_2e

    :cond_4e
    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lm2/i;

    iget-object v5, v5, Lm2/i;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lj2/b;->a(Ljava/lang/String;)Lj2/b;

    move-result-object v5

    :goto_2e
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lm2/i;

    aput-object v2, v44, v43

    goto :goto_2f

    :cond_4f
    move-object/from16 v4, p4

    move-object v5, v4

    :goto_2f
    invoke-virtual {v6, v1}, Lb3/h;->q(I)V

    goto :goto_30

    :cond_50
    move-object/from16 v4, p4

    move-object v5, v4

    :goto_30
    move v13, v3

    move/from16 v15, v34

    const/4 v12, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v29, 0x0

    const/high16 v31, 0x3f800000    # 1.0f

    const/16 v32, 0x0

    :goto_31
    sub-int v0, v1, v10

    if-ge v0, v7, :cond_7a

    invoke-virtual {v6, v1}, Lb3/h;->q(I)V

    .line 37
    iget v0, v6, Lb3/h;->a:I

    .line 38
    invoke-virtual {v6}, Lb3/h;->b()I

    move-result v2

    if-nez v2, :cond_51

    .line 39
    iget v3, v6, Lb3/h;->a:I

    sub-int/2addr v3, v10

    if-ne v3, v7, :cond_51

    goto/16 :goto_4b

    :cond_51
    if-lez v2, :cond_52

    const/4 v3, 0x1

    goto :goto_32

    :cond_52
    const/4 v3, 0x0

    .line 40
    :goto_32
    invoke-static {v9, v3}, Lcom/google/android/gms/internal/play_billing/i0;->f(Ljava/lang/String;Z)V

    invoke-virtual {v6}, Lb3/h;->b()I

    move-result v3

    const v4, 0x61766343

    if-ne v3, v4, :cond_59

    if-nez v25, :cond_53

    const/4 v3, 0x1

    goto :goto_33

    :cond_53
    const/4 v3, 0x0

    :goto_33
    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/i0;->m(Z)V

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {v6, v0}, Lb3/h;->q(I)V

    const/4 v0, 0x4

    .line 41
    :try_start_0
    invoke-virtual {v6, v0}, Lb3/h;->r(I)V

    invoke-virtual {v6}, Lb3/h;->h()I

    move-result v0

    const/4 v3, 0x3

    and-int/2addr v0, v3

    const/4 v4, 0x1

    add-int/2addr v0, v4

    if-eq v0, v3, :cond_58

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6}, Lb3/h;->h()I

    move-result v4

    and-int/lit8 v4, v4, 0x1f

    const/4 v15, 0x0

    :goto_34
    if-ge v15, v4, :cond_54

    move-object/from16 v36, v8

    .line 42
    invoke-virtual {v6}, Lb3/h;->m()I

    move-result v8

    move-object/from16 v30, v9

    .line 43
    iget v9, v6, Lb3/h;->a:I

    .line 44
    invoke-virtual {v6, v8}, Lb3/h;->r(I)V

    move/from16 v37, v7

    iget-object v7, v6, Lb3/h;->c:Ljava/io/Serializable;

    check-cast v7, [B

    move/from16 v38, v10

    add-int/lit8 v10, v8, 0x4

    .line 45
    new-array v10, v10, [B

    move-object/from16 v39, v5

    sget-object v5, Lc1/b;->e:[B

    move/from16 v34, v13

    move/from16 v40, v14

    const/4 v13, 0x0

    const/4 v14, 0x4

    invoke-static {v5, v13, v10, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v7, v9, v10, v14, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v9, v30

    move/from16 v13, v34

    move-object/from16 v8, v36

    move/from16 v7, v37

    move/from16 v10, v38

    move-object/from16 v5, v39

    move/from16 v14, v40

    goto :goto_34

    :cond_54
    move-object/from16 v39, v5

    move/from16 v37, v7

    move-object/from16 v36, v8

    move-object/from16 v30, v9

    move/from16 v38, v10

    move/from16 v34, v13

    move/from16 v40, v14

    invoke-virtual {v6}, Lb3/h;->h()I

    move-result v5

    const/4 v7, 0x0

    :goto_35
    if-ge v7, v5, :cond_55

    .line 47
    invoke-virtual {v6}, Lb3/h;->m()I

    move-result v8

    .line 48
    iget v9, v6, Lb3/h;->a:I

    .line 49
    invoke-virtual {v6, v8}, Lb3/h;->r(I)V

    iget-object v10, v6, Lb3/h;->c:Ljava/io/Serializable;

    check-cast v10, [B

    add-int/lit8 v13, v8, 0x4

    .line 50
    new-array v13, v13, [B

    sget-object v14, Lc1/b;->e:[B

    move/from16 v25, v5

    const/4 v5, 0x4

    const/4 v15, 0x0

    invoke-static {v14, v15, v13, v15, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v10, v9, v13, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    move/from16 v5, v25

    goto :goto_35

    :cond_55
    if-lez v4, :cond_56

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    array-length v4, v5

    invoke-static {v7, v0, v4}, Lb3/f;->d([BII)Lb3/e;

    move-result-object v4

    iget v4, v4, Lb3/e;->g:F
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_36

    :cond_56
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_36
    if-nez v12, :cond_57

    move/from16 v31, v4

    :cond_57
    const-string v25, "video/avc"

    move v15, v0

    move-object/from16 v29, v3

    move/from16 v13, v34

    const/4 v4, 0x0

    const v5, 0x76703038

    const v7, 0x65736473

    goto/16 :goto_45

    :cond_58
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lf2/z;

    const-string v2, "Error parsing AVC config"

    invoke-direct {v1, v2, v0}, Lf2/z;-><init>(Ljava/lang/String;Ljava/lang/RuntimeException;)V

    throw v1

    :cond_59
    move-object/from16 v39, v5

    move/from16 v37, v7

    move-object/from16 v36, v8

    move-object/from16 v30, v9

    move/from16 v38, v10

    move/from16 v34, v13

    move/from16 v40, v14

    const v4, 0x68766343

    if-ne v3, v4, :cond_60

    if-nez v25, :cond_5a

    const/4 v3, 0x1

    goto :goto_37

    :cond_5a
    const/4 v3, 0x0

    .line 52
    :goto_37
    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/i0;->m(Z)V

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {v6, v0}, Lb3/h;->q(I)V

    const/16 v0, 0x15

    .line 53
    :try_start_2
    invoke-virtual {v6, v0}, Lb3/h;->r(I)V

    invoke-virtual {v6}, Lb3/h;->h()I

    move-result v0

    const/4 v3, 0x3

    and-int/2addr v0, v3

    invoke-virtual {v6}, Lb3/h;->h()I

    move-result v3

    .line 54
    iget v4, v6, Lb3/h;->a:I

    const/4 v5, 0x0

    const/4 v9, 0x0

    :goto_38
    if-ge v9, v3, :cond_5c

    const/4 v7, 0x1

    .line 55
    invoke-virtual {v6, v7}, Lb3/h;->r(I)V

    invoke-virtual {v6}, Lb3/h;->m()I

    move-result v7

    const/4 v8, 0x0

    :goto_39
    if-ge v8, v7, :cond_5b

    invoke-virtual {v6}, Lb3/h;->m()I

    move-result v10

    add-int/lit8 v13, v10, 0x4

    add-int/2addr v5, v13

    invoke-virtual {v6, v10}, Lb3/h;->r(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_39

    :cond_5b
    add-int/lit8 v9, v9, 0x1

    goto :goto_38

    :cond_5c
    invoke-virtual {v6, v4}, Lb3/h;->q(I)V

    new-array v4, v5, [B

    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_3a
    if-ge v9, v3, :cond_5e

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lb3/h;->r(I)V

    invoke-virtual {v6}, Lb3/h;->m()I

    move-result v8

    const/4 v10, 0x0

    :goto_3b
    if-ge v10, v8, :cond_5d

    invoke-virtual {v6}, Lb3/h;->m()I

    move-result v13

    sget-object v14, Lb3/f;->a:[B

    move/from16 v25, v3

    const/4 v3, 0x4

    const/4 v15, 0x0

    invoke-static {v14, v15, v4, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v7, v7, 0x4

    iget-object v3, v6, Lb3/h;->c:Ljava/io/Serializable;

    check-cast v3, [B

    .line 56
    iget v14, v6, Lb3/h;->a:I

    .line 57
    invoke-static {v3, v14, v4, v7, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v7, v13

    invoke-virtual {v6, v13}, Lb3/h;->r(I)V

    add-int/lit8 v10, v10, 0x1

    move/from16 v3, v25

    goto :goto_3b

    :cond_5d
    move/from16 v25, v3

    const/4 v15, 0x0

    add-int/lit8 v9, v9, 0x1

    goto :goto_3a

    :cond_5e
    const/4 v15, 0x0

    if-nez v5, :cond_5f

    const/4 v3, 0x1

    const/16 v29, 0x0

    goto :goto_3c

    :cond_5f
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v29, v3

    const/4 v3, 0x1

    :goto_3c
    add-int/2addr v0, v3

    const-string v3, "video/hevc"

    move-object/from16 v25, v3

    move v4, v15

    const v5, 0x76703038

    move v15, v0

    goto :goto_41

    :catch_1
    move-exception v0

    new-instance v1, Lf2/z;

    const-string v2, "Error parsing HEVC config"

    invoke-direct {v1, v2, v0}, Lf2/z;-><init>(Ljava/lang/String;Ljava/lang/RuntimeException;)V

    throw v1

    :cond_60
    const/4 v4, 0x0

    const v5, 0x64766343

    if-eq v3, v5, :cond_74

    const v5, 0x64767643

    if-ne v3, v5, :cond_61

    const/4 v0, 0x2

    const v5, 0x76703038

    const v7, 0x65736473

    goto/16 :goto_46

    :cond_61
    const v5, 0x76706343

    if-ne v3, v5, :cond_64

    if-nez v25, :cond_62

    const/4 v0, 0x1

    goto :goto_3d

    :cond_62
    move v0, v4

    .line 58
    :goto_3d
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/i0;->m(Z)V

    const v5, 0x76703038

    if-ne v11, v5, :cond_63

    const-string v0, "video/x-vnd.on2.vp8"

    goto :goto_40

    :cond_63
    const-string v0, "video/x-vnd.on2.vp9"

    goto :goto_40

    :cond_64
    const v5, 0x76703038

    const v7, 0x61763143

    if-ne v3, v7, :cond_66

    if-nez v25, :cond_65

    const/4 v0, 0x1

    goto :goto_3e

    :cond_65
    move v0, v4

    :goto_3e
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/i0;->m(Z)V

    const-string v0, "video/av01"

    goto :goto_40

    :cond_66
    const v7, 0x64323633

    if-ne v3, v7, :cond_68

    if-nez v25, :cond_67

    const/4 v0, 0x1

    goto :goto_3f

    :cond_67
    move v0, v4

    :goto_3f
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/i0;->m(Z)V

    const-string v0, "video/3gpp"

    :goto_40
    move-object/from16 v25, v0

    :goto_41
    const v7, 0x65736473

    goto/16 :goto_44

    :cond_68
    const v7, 0x65736473

    if-ne v3, v7, :cond_6a

    if-nez v25, :cond_69

    const/4 v3, 0x1

    goto :goto_42

    :cond_69
    move v3, v4

    :goto_42
    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/i0;->m(Z)V

    invoke-static {v0, v6}, Lm2/c;->a(ILb3/h;)Landroid/util/Pair;

    move-result-object v0

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v25, v3

    check-cast v25, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v29

    goto/16 :goto_44

    :cond_6a
    const v8, 0x70617370

    if-ne v3, v8, :cond_6b

    add-int/lit8 v0, v0, 0x8

    .line 59
    invoke-virtual {v6, v0}, Lb3/h;->q(I)V

    invoke-virtual {v6}, Lb3/h;->k()I

    move-result v0

    invoke-virtual {v6}, Lb3/h;->k()I

    move-result v3

    int-to-float v0, v0

    int-to-float v3, v3

    div-float v31, v0, v3

    move/from16 v13, v34

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v12, 0x1

    goto/16 :goto_4a

    :cond_6b
    const v8, 0x73763364

    if-ne v3, v8, :cond_6e

    add-int/lit8 v3, v0, 0x8

    :goto_43
    sub-int v8, v3, v0

    if-ge v8, v2, :cond_6d

    .line 60
    invoke-virtual {v6, v3}, Lb3/h;->q(I)V

    invoke-virtual {v6}, Lb3/h;->b()I

    move-result v8

    invoke-virtual {v6}, Lb3/h;->b()I

    move-result v9

    const v10, 0x70726f6a

    if-ne v9, v10, :cond_6c

    iget-object v0, v6, Lb3/h;->c:Ljava/io/Serializable;

    check-cast v0, [B

    add-int/2addr v8, v3

    invoke-static {v0, v3, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v32

    goto :goto_44

    :cond_6c
    add-int/2addr v3, v8

    goto :goto_43

    :cond_6d
    const/16 v32, 0x0

    goto :goto_44

    :cond_6e
    const v0, 0x73743364

    if-ne v3, v0, :cond_73

    .line 61
    invoke-virtual {v6}, Lb3/h;->h()I

    move-result v0

    const/4 v3, 0x3

    invoke-virtual {v6, v3}, Lb3/h;->r(I)V

    if-nez v0, :cond_73

    invoke-virtual {v6}, Lb3/h;->h()I

    move-result v0

    if-eqz v0, :cond_72

    const/4 v8, 0x1

    if-eq v0, v8, :cond_71

    const/4 v8, 0x2

    if-eq v0, v8, :cond_70

    if-eq v0, v3, :cond_6f

    goto :goto_44

    :cond_6f
    const/16 v34, 0x3

    goto :goto_44

    :cond_70
    const/16 v34, 0x2

    goto :goto_44

    :cond_71
    move v10, v3

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v13, 0x1

    goto/16 :goto_4a

    :cond_72
    move/from16 v34, v4

    :cond_73
    :goto_44
    move/from16 v13, v34

    :goto_45
    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    goto :goto_4a

    :cond_74
    const v5, 0x76703038

    const v7, 0x65736473

    const/4 v0, 0x2

    .line 62
    :goto_46
    invoke-virtual {v6, v0}, Lb3/h;->r(I)V

    invoke-virtual {v6}, Lb3/h;->h()I

    move-result v0

    shr-int/lit8 v3, v0, 0x1

    const/4 v8, 0x1

    and-int/2addr v0, v8

    const/4 v8, 0x5

    shl-int/2addr v0, v8

    invoke-virtual {v6}, Lb3/h;->h()I

    move-result v9

    const/4 v10, 0x3

    shr-int/2addr v9, v10

    and-int/lit8 v9, v9, 0x1f

    or-int/2addr v0, v9

    const/4 v9, 0x4

    if-eq v3, v9, :cond_78

    if-eq v3, v8, :cond_78

    const/4 v13, 0x7

    if-ne v3, v13, :cond_75

    goto :goto_47

    :cond_75
    const/16 v13, 0x8

    if-ne v3, v13, :cond_76

    const-string v13, "hev1"

    goto :goto_48

    :cond_76
    const/16 v13, 0x9

    if-ne v3, v13, :cond_77

    const-string v13, "avc3"

    goto :goto_48

    :cond_77
    const/4 v14, 0x0

    goto :goto_49

    :cond_78
    :goto_47
    const-string v13, "dvhe"

    :goto_48
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ".0"

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lb3/h;

    invoke-direct {v14, v3, v0, v13}, Lb3/h;-><init>(IILjava/lang/String;)V

    :goto_49
    if-eqz v14, :cond_79

    .line 63
    iget-object v0, v14, Lb3/h;->c:Ljava/io/Serializable;

    move-object/from16 v26, v0

    check-cast v26, Ljava/lang/String;

    const-string v25, "video/dolby-vision"

    :cond_79
    move/from16 v13, v34

    :goto_4a
    add-int/2addr v1, v2

    move-object/from16 v4, p4

    move-object/from16 v9, v30

    move-object/from16 v8, v36

    move/from16 v7, v37

    move/from16 v10, v38

    move-object/from16 v5, v39

    move/from16 v14, v40

    const/4 v3, -0x1

    goto/16 :goto_31

    :cond_7a
    :goto_4b
    move-object/from16 v39, v5

    move/from16 v37, v7

    move-object/from16 v36, v8

    move/from16 v38, v10

    move/from16 v34, v13

    move/from16 v40, v14

    const/4 v4, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x3

    if-nez v25, :cond_7b

    goto :goto_4c

    :cond_7b
    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    move/from16 v30, v42

    move/from16 v33, v34

    move-object/from16 v34, v39

    invoke-static/range {v24 .. v34}, Lf2/t;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;IF[BILj2/b;)Lf2/t;

    move-result-object v22

    :goto_4c
    move/from16 v34, v15

    :goto_4d
    add-int v0, v38, v37

    .line 64
    invoke-virtual {v6, v0}, Lb3/h;->q(I)V

    add-int/lit8 v12, v43, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v4, p2

    move-object/from16 v1, p4

    move v10, v9

    move/from16 v13, v35

    move-object/from16 v8, v36

    move/from16 v14, v40

    move-object/from16 v2, v41

    move/from16 v3, v42

    move-object/from16 v15, v44

    const/16 v11, 0x8

    move/from16 v9, p1

    goto/16 :goto_e

    :cond_7c
    move-object/from16 v41, v2

    move-wide/from16 p2, v4

    move/from16 v35, v13

    move/from16 v40, v14

    move-object/from16 v44, v15

    const/4 v4, 0x0

    if-nez p5, :cond_83

    const v0, 0x65647473

    move-object/from16 v1, p0

    .line 65
    invoke-virtual {v1, v0}, Lm2/a;->c(I)Lm2/a;

    move-result-object v0

    if-eqz v0, :cond_82

    const v1, 0x656c7374

    .line 66
    invoke-virtual {v0, v1}, Lm2/a;->d(I)Lm2/b;

    move-result-object v0

    if-nez v0, :cond_7d

    goto :goto_51

    :cond_7d
    iget-object v0, v0, Lm2/b;->c:Lb3/h;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lb3/h;->q(I)V

    invoke-virtual {v0}, Lb3/h;->b()I

    move-result v1

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0}, Lb3/h;->k()I

    move-result v2

    new-array v3, v2, [J

    new-array v5, v2, [J

    move v7, v4

    :goto_4e
    if-ge v7, v2, :cond_81

    const/4 v4, 0x1

    if-ne v1, v4, :cond_7e

    invoke-virtual {v0}, Lb3/h;->l()J

    move-result-wide v8

    goto :goto_4f

    :cond_7e
    invoke-virtual {v0}, Lb3/h;->i()J

    move-result-wide v8

    :goto_4f
    aput-wide v8, v3, v7

    if-ne v1, v4, :cond_7f

    invoke-virtual {v0}, Lb3/h;->d()J

    move-result-wide v8

    goto :goto_50

    :cond_7f
    invoke-virtual {v0}, Lb3/h;->b()I

    move-result v4

    int-to-long v8, v4

    :goto_50
    aput-wide v8, v5, v7

    .line 67
    iget-object v4, v0, Lb3/h;->c:Ljava/io/Serializable;

    check-cast v4, [B

    iget v6, v0, Lb3/h;->a:I

    add-int/lit8 v8, v6, 0x1

    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v9, 0x8

    shl-int/2addr v6, v9

    add-int/lit8 v10, v8, 0x1

    iput v10, v0, Lb3/h;->a:I

    aget-byte v4, v4, v8

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v4, v6

    int-to-short v4, v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_80

    const/4 v4, 0x2

    .line 68
    invoke-virtual {v0, v4}, Lb3/h;->r(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_4e

    :cond_80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported media rate."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_81
    invoke-static {v3, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    move-object v1, v0

    const/4 v0, 0x0

    goto :goto_52

    :cond_82
    :goto_51
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 69
    :goto_52
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [J

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [J

    goto :goto_53

    :cond_83
    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    :goto_53
    if-nez v22, :cond_84

    move-object v3, v0

    goto :goto_54

    :cond_84
    new-instance v3, Lm2/h;

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    move-object v11, v3

    move/from16 v12, v40

    move/from16 v13, v35

    move-object/from16 v0, v44

    move-wide/from16 v16, p2

    move-object/from16 v18, v22

    move/from16 v19, v23

    move-object/from16 v20, v0

    move/from16 v21, v34

    move-object/from16 v22, v2

    move-object/from16 v23, v1

    invoke-direct/range {v11 .. v23}, Lm2/h;-><init>(IIJJLf2/t;I[Lm2/i;I[J[J)V

    :goto_54
    return-object v3
.end method
