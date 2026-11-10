.class public final Landroid/support/v4/media/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v4/media/a;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static a(Ly0/e;Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    const/16 v0, 0x4f45

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/i0;->x0(Landroid/os/Parcel;I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Ly0/e;->a:I

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/internal/play_billing/i0;->s0(Landroid/os/Parcel;II)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    iget v2, p0, Ly0/e;->b:I

    .line 15
    .line 16
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/play_billing/i0;->s0(Landroid/os/Parcel;II)V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    iget v2, p0, Ly0/e;->c:I

    .line 21
    .line 22
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/play_billing/i0;->s0(Landroid/os/Parcel;II)V

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    iget-object v2, p0, Ly0/e;->d:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/play_billing/i0;->u0(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Ly0/e;->e:Landroid/os/IBinder;

    .line 32
    .line 33
    if-nez v1, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v2, 0x5

    .line 37
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/play_billing/i0;->x0(Landroid/os/Parcel;I)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 42
    .line 43
    .line 44
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/play_billing/i0;->z0(Landroid/os/Parcel;I)V

    .line 45
    .line 46
    .line 47
    :goto_0
    const/4 v1, 0x6

    .line 48
    iget-object v2, p0, Ly0/e;->f:[Lcom/google/android/gms/common/api/Scope;

    .line 49
    .line 50
    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/play_billing/i0;->v0(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Ly0/e;->g:Landroid/os/Bundle;

    .line 54
    .line 55
    if-nez v1, :cond_1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    const/4 v2, 0x7

    .line 59
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/play_billing/i0;->x0(Landroid/os/Parcel;I)I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 64
    .line 65
    .line 66
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/play_billing/i0;->z0(Landroid/os/Parcel;I)V

    .line 67
    .line 68
    .line 69
    :goto_1
    const/16 v1, 0x8

    .line 70
    .line 71
    iget-object v2, p0, Ly0/e;->h:Landroid/accounts/Account;

    .line 72
    .line 73
    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/play_billing/i0;->t0(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 74
    .line 75
    .line 76
    const/16 v1, 0xa

    .line 77
    .line 78
    iget-object v2, p0, Ly0/e;->i:[Lv0/c;

    .line 79
    .line 80
    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/play_billing/i0;->v0(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    .line 81
    .line 82
    .line 83
    const/16 v1, 0xb

    .line 84
    .line 85
    iget-object v2, p0, Ly0/e;->j:[Lv0/c;

    .line 86
    .line 87
    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/play_billing/i0;->v0(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    .line 88
    .line 89
    .line 90
    const/16 p2, 0xc

    .line 91
    .line 92
    iget-boolean v1, p0, Ly0/e;->k:Z

    .line 93
    .line 94
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/i0;->r0(Landroid/os/Parcel;IZ)V

    .line 95
    .line 96
    .line 97
    const/16 p2, 0xd

    .line 98
    .line 99
    iget v1, p0, Ly0/e;->l:I

    .line 100
    .line 101
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/i0;->s0(Landroid/os/Parcel;II)V

    .line 102
    .line 103
    .line 104
    const/16 p2, 0xe

    .line 105
    .line 106
    iget-boolean v1, p0, Ly0/e;->m:Z

    .line 107
    .line 108
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/internal/play_billing/i0;->r0(Landroid/os/Parcel;IZ)V

    .line 109
    .line 110
    .line 111
    const/16 p2, 0xf

    .line 112
    .line 113
    iget-object p0, p0, Ly0/e;->n:Ljava/lang/String;

    .line 114
    .line 115
    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/play_billing/i0;->u0(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/i0;->z0(Landroid/os/Parcel;I)V

    .line 119
    .line 120
    .line 121
    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 28

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    move-object/from16 v2, p0

    .line 6
    .line 7
    iget v3, v2, Landroid/support/v4/media/a;->a:I

    .line 8
    .line 9
    const/4 v4, 0x5

    .line 10
    const-wide/16 v5, 0x0

    .line 11
    .line 12
    const/4 v7, 0x4

    .line 13
    const/4 v8, 0x3

    .line 14
    const/4 v9, 0x1

    .line 15
    const/4 v10, 0x2

    .line 16
    const/4 v11, 0x0

    .line 17
    const/4 v12, 0x0

    .line 18
    packed-switch v3, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    goto/16 :goto_f

    .line 22
    .line 23
    :pswitch_0
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/play_billing/i0;->o0(Landroid/os/Parcel;)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    move v5, v11

    .line 28
    move v6, v5

    .line 29
    move v8, v6

    .line 30
    move-object v4, v12

    .line 31
    move-object v7, v4

    .line 32
    move-object v9, v7

    .line 33
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-ge v3, v1, :cond_2

    .line 38
    .line 39
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    int-to-char v10, v3

    .line 44
    packed-switch v10, :pswitch_data_1

    .line 45
    .line 46
    .line 47
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/i0;->l0(Landroid/os/Parcel;I)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :pswitch_1
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/i0;->a0(Landroid/os/Parcel;I)I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 56
    .line 57
    .line 58
    move-result v9

    .line 59
    if-nez v3, :cond_0

    .line 60
    .line 61
    move-object v9, v12

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createIntArray()[I

    .line 64
    .line 65
    .line 66
    move-result-object v10

    .line 67
    add-int/2addr v9, v3

    .line 68
    invoke-virtual {v0, v9}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 69
    .line 70
    .line 71
    move-object v9, v10

    .line 72
    goto :goto_0

    .line 73
    :pswitch_2
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/i0;->Z(Landroid/os/Parcel;I)I

    .line 74
    .line 75
    .line 76
    move-result v8

    .line 77
    goto :goto_0

    .line 78
    :pswitch_3
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/i0;->a0(Landroid/os/Parcel;I)I

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 83
    .line 84
    .line 85
    move-result v7

    .line 86
    if-nez v3, :cond_1

    .line 87
    .line 88
    move-object v7, v12

    .line 89
    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createIntArray()[I

    .line 91
    .line 92
    .line 93
    move-result-object v10

    .line 94
    add-int/2addr v7, v3

    .line 95
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 96
    .line 97
    .line 98
    move-object v7, v10

    .line 99
    goto :goto_0

    .line 100
    :pswitch_4
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/i0;->Y(Landroid/os/Parcel;I)Z

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    goto :goto_0

    .line 105
    :pswitch_5
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/i0;->Y(Landroid/os/Parcel;I)Z

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    goto :goto_0

    .line 110
    :pswitch_6
    sget-object v4, Ly0/j;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 111
    .line 112
    invoke-static {v0, v3, v4}, Lcom/google/android/gms/internal/play_billing/i0;->u(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    move-object v4, v3

    .line 117
    check-cast v4, Ly0/j;

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/i0;->D(Landroid/os/Parcel;I)V

    .line 121
    .line 122
    .line 123
    new-instance v0, Ly0/d;

    .line 124
    .line 125
    move-object v3, v0

    .line 126
    invoke-direct/range {v3 .. v9}, Ly0/d;-><init>(Ly0/j;ZZ[II[I)V

    .line 127
    .line 128
    .line 129
    return-object v0

    .line 130
    :pswitch_7
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/play_billing/i0;->o0(Landroid/os/Parcel;)I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    move-object v3, v12

    .line 135
    move-object v4, v3

    .line 136
    move-object v5, v4

    .line 137
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    if-ge v6, v1, :cond_8

    .line 142
    .line 143
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 144
    .line 145
    .line 146
    move-result v6

    .line 147
    int-to-char v13, v6

    .line 148
    if-eq v13, v9, :cond_6

    .line 149
    .line 150
    if-eq v13, v10, :cond_5

    .line 151
    .line 152
    if-eq v13, v8, :cond_4

    .line 153
    .line 154
    if-eq v13, v7, :cond_3

    .line 155
    .line 156
    invoke-static {v0, v6}, Lcom/google/android/gms/internal/play_billing/i0;->l0(Landroid/os/Parcel;I)V

    .line 157
    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_3
    sget-object v5, Ly0/d;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 161
    .line 162
    invoke-static {v0, v6, v5}, Lcom/google/android/gms/internal/play_billing/i0;->u(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    check-cast v5, Ly0/d;

    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_4
    invoke-static {v0, v6}, Lcom/google/android/gms/internal/play_billing/i0;->Z(Landroid/os/Parcel;I)I

    .line 170
    .line 171
    .line 172
    move-result v11

    .line 173
    goto :goto_1

    .line 174
    :cond_5
    sget-object v4, Lv0/c;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 175
    .line 176
    invoke-static {v0, v6, v4}, Lcom/google/android/gms/internal/play_billing/i0;->w(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    check-cast v4, [Lv0/c;

    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_6
    invoke-static {v0, v6}, Lcom/google/android/gms/internal/play_billing/i0;->a0(Landroid/os/Parcel;I)I

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 188
    .line 189
    .line 190
    move-result v6

    .line 191
    if-nez v3, :cond_7

    .line 192
    .line 193
    move-object v3, v12

    .line 194
    goto :goto_1

    .line 195
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    .line 196
    .line 197
    .line 198
    move-result-object v13

    .line 199
    add-int/2addr v6, v3

    .line 200
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 201
    .line 202
    .line 203
    move-object v3, v13

    .line 204
    goto :goto_1

    .line 205
    :cond_8
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/i0;->D(Landroid/os/Parcel;I)V

    .line 206
    .line 207
    .line 208
    new-instance v0, Ly0/e0;

    .line 209
    .line 210
    invoke-direct {v0, v3, v4, v11, v5}, Ly0/e0;-><init>(Landroid/os/Bundle;[Lv0/c;ILy0/d;)V

    .line 211
    .line 212
    .line 213
    return-object v0

    .line 214
    :pswitch_8
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/play_billing/i0;->o0(Landroid/os/Parcel;)I

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    move v13, v11

    .line 219
    move v14, v13

    .line 220
    move v15, v14

    .line 221
    move/from16 v16, v15

    .line 222
    .line 223
    move/from16 v17, v16

    .line 224
    .line 225
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 226
    .line 227
    .line 228
    move-result v3

    .line 229
    if-ge v3, v1, :cond_e

    .line 230
    .line 231
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 232
    .line 233
    .line 234
    move-result v3

    .line 235
    int-to-char v5, v3

    .line 236
    if-eq v5, v9, :cond_d

    .line 237
    .line 238
    if-eq v5, v10, :cond_c

    .line 239
    .line 240
    if-eq v5, v8, :cond_b

    .line 241
    .line 242
    if-eq v5, v7, :cond_a

    .line 243
    .line 244
    if-eq v5, v4, :cond_9

    .line 245
    .line 246
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/i0;->l0(Landroid/os/Parcel;I)V

    .line 247
    .line 248
    .line 249
    goto :goto_2

    .line 250
    :cond_9
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/i0;->Z(Landroid/os/Parcel;I)I

    .line 251
    .line 252
    .line 253
    move-result v15

    .line 254
    goto :goto_2

    .line 255
    :cond_a
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/i0;->Z(Landroid/os/Parcel;I)I

    .line 256
    .line 257
    .line 258
    move-result v14

    .line 259
    goto :goto_2

    .line 260
    :cond_b
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/i0;->Y(Landroid/os/Parcel;I)Z

    .line 261
    .line 262
    .line 263
    move-result v17

    .line 264
    goto :goto_2

    .line 265
    :cond_c
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/i0;->Y(Landroid/os/Parcel;I)Z

    .line 266
    .line 267
    .line 268
    move-result v16

    .line 269
    goto :goto_2

    .line 270
    :cond_d
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/i0;->Z(Landroid/os/Parcel;I)I

    .line 271
    .line 272
    .line 273
    move-result v13

    .line 274
    goto :goto_2

    .line 275
    :cond_e
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/i0;->D(Landroid/os/Parcel;I)V

    .line 276
    .line 277
    .line 278
    new-instance v0, Ly0/j;

    .line 279
    .line 280
    move-object v12, v0

    .line 281
    invoke-direct/range {v12 .. v17}, Ly0/j;-><init>(IIIZZ)V

    .line 282
    .line 283
    .line 284
    return-object v0

    .line 285
    :pswitch_9
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/play_billing/i0;->o0(Landroid/os/Parcel;)I

    .line 286
    .line 287
    .line 288
    move-result v1

    .line 289
    move v3, v11

    .line 290
    move v4, v3

    .line 291
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 292
    .line 293
    .line 294
    move-result v5

    .line 295
    if-ge v5, v1, :cond_13

    .line 296
    .line 297
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 298
    .line 299
    .line 300
    move-result v5

    .line 301
    int-to-char v6, v5

    .line 302
    if-eq v6, v9, :cond_12

    .line 303
    .line 304
    if-eq v6, v10, :cond_11

    .line 305
    .line 306
    if-eq v6, v8, :cond_10

    .line 307
    .line 308
    if-eq v6, v7, :cond_f

    .line 309
    .line 310
    invoke-static {v0, v5}, Lcom/google/android/gms/internal/play_billing/i0;->l0(Landroid/os/Parcel;I)V

    .line 311
    .line 312
    .line 313
    goto :goto_3

    .line 314
    :cond_f
    sget-object v6, Lcom/google/android/gms/common/api/Scope;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 315
    .line 316
    invoke-static {v0, v5, v6}, Lcom/google/android/gms/internal/play_billing/i0;->w(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v5

    .line 320
    move-object v12, v5

    .line 321
    check-cast v12, [Lcom/google/android/gms/common/api/Scope;

    .line 322
    .line 323
    goto :goto_3

    .line 324
    :cond_10
    invoke-static {v0, v5}, Lcom/google/android/gms/internal/play_billing/i0;->Z(Landroid/os/Parcel;I)I

    .line 325
    .line 326
    .line 327
    move-result v4

    .line 328
    goto :goto_3

    .line 329
    :cond_11
    invoke-static {v0, v5}, Lcom/google/android/gms/internal/play_billing/i0;->Z(Landroid/os/Parcel;I)I

    .line 330
    .line 331
    .line 332
    move-result v3

    .line 333
    goto :goto_3

    .line 334
    :cond_12
    invoke-static {v0, v5}, Lcom/google/android/gms/internal/play_billing/i0;->Z(Landroid/os/Parcel;I)I

    .line 335
    .line 336
    .line 337
    move-result v11

    .line 338
    goto :goto_3

    .line 339
    :cond_13
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/i0;->D(Landroid/os/Parcel;I)V

    .line 340
    .line 341
    .line 342
    new-instance v0, Ly0/t;

    .line 343
    .line 344
    invoke-direct {v0, v11, v3, v4, v12}, Ly0/t;-><init>(III[Lcom/google/android/gms/common/api/Scope;)V

    .line 345
    .line 346
    .line 347
    return-object v0

    .line 348
    :pswitch_a
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/play_billing/i0;->o0(Landroid/os/Parcel;)I

    .line 349
    .line 350
    .line 351
    move-result v1

    .line 352
    move v14, v11

    .line 353
    move/from16 v17, v14

    .line 354
    .line 355
    move/from16 v18, v17

    .line 356
    .line 357
    move-object v15, v12

    .line 358
    move-object/from16 v16, v15

    .line 359
    .line 360
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 361
    .line 362
    .line 363
    move-result v3

    .line 364
    if-ge v3, v1, :cond_1a

    .line 365
    .line 366
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 367
    .line 368
    .line 369
    move-result v3

    .line 370
    int-to-char v5, v3

    .line 371
    if-eq v5, v9, :cond_19

    .line 372
    .line 373
    if-eq v5, v10, :cond_17

    .line 374
    .line 375
    if-eq v5, v8, :cond_16

    .line 376
    .line 377
    if-eq v5, v7, :cond_15

    .line 378
    .line 379
    if-eq v5, v4, :cond_14

    .line 380
    .line 381
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/i0;->l0(Landroid/os/Parcel;I)V

    .line 382
    .line 383
    .line 384
    goto :goto_4

    .line 385
    :cond_14
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/i0;->Y(Landroid/os/Parcel;I)Z

    .line 386
    .line 387
    .line 388
    move-result v18

    .line 389
    goto :goto_4

    .line 390
    :cond_15
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/i0;->Y(Landroid/os/Parcel;I)Z

    .line 391
    .line 392
    .line 393
    move-result v17

    .line 394
    goto :goto_4

    .line 395
    :cond_16
    sget-object v5, Lv0/a;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 396
    .line 397
    invoke-static {v0, v3, v5}, Lcom/google/android/gms/internal/play_billing/i0;->u(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 398
    .line 399
    .line 400
    move-result-object v3

    .line 401
    move-object/from16 v16, v3

    .line 402
    .line 403
    check-cast v16, Lv0/a;

    .line 404
    .line 405
    goto :goto_4

    .line 406
    :cond_17
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/i0;->a0(Landroid/os/Parcel;I)I

    .line 407
    .line 408
    .line 409
    move-result v3

    .line 410
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 411
    .line 412
    .line 413
    move-result v5

    .line 414
    if-nez v3, :cond_18

    .line 415
    .line 416
    move-object v15, v12

    .line 417
    goto :goto_4

    .line 418
    :cond_18
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 419
    .line 420
    .line 421
    move-result-object v6

    .line 422
    add-int/2addr v5, v3

    .line 423
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 424
    .line 425
    .line 426
    move-object v15, v6

    .line 427
    goto :goto_4

    .line 428
    :cond_19
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/i0;->Z(Landroid/os/Parcel;I)I

    .line 429
    .line 430
    .line 431
    move-result v14

    .line 432
    goto :goto_4

    .line 433
    :cond_1a
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/i0;->D(Landroid/os/Parcel;I)V

    .line 434
    .line 435
    .line 436
    new-instance v0, Ly0/s;

    .line 437
    .line 438
    move-object v13, v0

    .line 439
    invoke-direct/range {v13 .. v18}, Ly0/s;-><init>(ILandroid/os/IBinder;Lv0/a;ZZ)V

    .line 440
    .line 441
    .line 442
    return-object v0

    .line 443
    :pswitch_b
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/play_billing/i0;->o0(Landroid/os/Parcel;)I

    .line 444
    .line 445
    .line 446
    move-result v1

    .line 447
    move v3, v11

    .line 448
    move-object v4, v12

    .line 449
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 450
    .line 451
    .line 452
    move-result v5

    .line 453
    if-ge v5, v1, :cond_1f

    .line 454
    .line 455
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 456
    .line 457
    .line 458
    move-result v5

    .line 459
    int-to-char v6, v5

    .line 460
    if-eq v6, v9, :cond_1e

    .line 461
    .line 462
    if-eq v6, v10, :cond_1d

    .line 463
    .line 464
    if-eq v6, v8, :cond_1c

    .line 465
    .line 466
    if-eq v6, v7, :cond_1b

    .line 467
    .line 468
    invoke-static {v0, v5}, Lcom/google/android/gms/internal/play_billing/i0;->l0(Landroid/os/Parcel;I)V

    .line 469
    .line 470
    .line 471
    goto :goto_5

    .line 472
    :cond_1b
    sget-object v4, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 473
    .line 474
    invoke-static {v0, v5, v4}, Lcom/google/android/gms/internal/play_billing/i0;->u(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 475
    .line 476
    .line 477
    move-result-object v4

    .line 478
    check-cast v4, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 479
    .line 480
    goto :goto_5

    .line 481
    :cond_1c
    invoke-static {v0, v5}, Lcom/google/android/gms/internal/play_billing/i0;->Z(Landroid/os/Parcel;I)I

    .line 482
    .line 483
    .line 484
    move-result v3

    .line 485
    goto :goto_5

    .line 486
    :cond_1d
    sget-object v6, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 487
    .line 488
    invoke-static {v0, v5, v6}, Lcom/google/android/gms/internal/play_billing/i0;->u(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 489
    .line 490
    .line 491
    move-result-object v5

    .line 492
    move-object v12, v5

    .line 493
    check-cast v12, Landroid/accounts/Account;

    .line 494
    .line 495
    goto :goto_5

    .line 496
    :cond_1e
    invoke-static {v0, v5}, Lcom/google/android/gms/internal/play_billing/i0;->Z(Landroid/os/Parcel;I)I

    .line 497
    .line 498
    .line 499
    move-result v11

    .line 500
    goto :goto_5

    .line 501
    :cond_1f
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/i0;->D(Landroid/os/Parcel;I)V

    .line 502
    .line 503
    .line 504
    new-instance v0, Ly0/r;

    .line 505
    .line 506
    invoke-direct {v0, v11, v12, v3, v4}, Ly0/r;-><init>(ILandroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    .line 507
    .line 508
    .line 509
    return-object v0

    .line 510
    :pswitch_c
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/play_billing/i0;->o0(Landroid/os/Parcel;)I

    .line 511
    .line 512
    .line 513
    move-result v3

    .line 514
    const/4 v4, -0x1

    .line 515
    move/from16 v24, v4

    .line 516
    .line 517
    move-wide/from16 v17, v5

    .line 518
    .line 519
    move-wide/from16 v19, v17

    .line 520
    .line 521
    move v14, v11

    .line 522
    move v15, v14

    .line 523
    move/from16 v16, v15

    .line 524
    .line 525
    move/from16 v23, v16

    .line 526
    .line 527
    move-object/from16 v21, v12

    .line 528
    .line 529
    move-object/from16 v22, v21

    .line 530
    .line 531
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 532
    .line 533
    .line 534
    move-result v4

    .line 535
    if-ge v4, v3, :cond_20

    .line 536
    .line 537
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 538
    .line 539
    .line 540
    move-result v4

    .line 541
    int-to-char v5, v4

    .line 542
    packed-switch v5, :pswitch_data_2

    .line 543
    .line 544
    .line 545
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/play_billing/i0;->l0(Landroid/os/Parcel;I)V

    .line 546
    .line 547
    .line 548
    goto :goto_6

    .line 549
    :pswitch_d
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/play_billing/i0;->Z(Landroid/os/Parcel;I)I

    .line 550
    .line 551
    .line 552
    move-result v24

    .line 553
    goto :goto_6

    .line 554
    :pswitch_e
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/play_billing/i0;->Z(Landroid/os/Parcel;I)I

    .line 555
    .line 556
    .line 557
    move-result v23

    .line 558
    goto :goto_6

    .line 559
    :pswitch_f
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/play_billing/i0;->v(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v22

    .line 563
    goto :goto_6

    .line 564
    :pswitch_10
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/play_billing/i0;->v(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v21

    .line 568
    goto :goto_6

    .line 569
    :pswitch_11
    invoke-static {v0, v4, v1}, Lcom/google/android/gms/internal/play_billing/i0;->A0(Landroid/os/Parcel;II)V

    .line 570
    .line 571
    .line 572
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 573
    .line 574
    .line 575
    move-result-wide v19

    .line 576
    goto :goto_6

    .line 577
    :pswitch_12
    invoke-static {v0, v4, v1}, Lcom/google/android/gms/internal/play_billing/i0;->A0(Landroid/os/Parcel;II)V

    .line 578
    .line 579
    .line 580
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 581
    .line 582
    .line 583
    move-result-wide v17

    .line 584
    goto :goto_6

    .line 585
    :pswitch_13
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/play_billing/i0;->Z(Landroid/os/Parcel;I)I

    .line 586
    .line 587
    .line 588
    move-result v16

    .line 589
    goto :goto_6

    .line 590
    :pswitch_14
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/play_billing/i0;->Z(Landroid/os/Parcel;I)I

    .line 591
    .line 592
    .line 593
    move-result v15

    .line 594
    goto :goto_6

    .line 595
    :pswitch_15
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/play_billing/i0;->Z(Landroid/os/Parcel;I)I

    .line 596
    .line 597
    .line 598
    move-result v14

    .line 599
    goto :goto_6

    .line 600
    :cond_20
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/i0;->D(Landroid/os/Parcel;I)V

    .line 601
    .line 602
    .line 603
    new-instance v0, Ly0/h;

    .line 604
    .line 605
    move-object v13, v0

    .line 606
    invoke-direct/range {v13 .. v24}, Ly0/h;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;II)V

    .line 607
    .line 608
    .line 609
    return-object v0

    .line 610
    :pswitch_16
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/play_billing/i0;->o0(Landroid/os/Parcel;)I

    .line 611
    .line 612
    .line 613
    move-result v1

    .line 614
    :goto_7
    move-object v3, v12

    .line 615
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 616
    .line 617
    .line 618
    move-result v4

    .line 619
    if-ge v4, v1, :cond_24

    .line 620
    .line 621
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 622
    .line 623
    .line 624
    move-result v4

    .line 625
    int-to-char v5, v4

    .line 626
    if-eq v5, v9, :cond_23

    .line 627
    .line 628
    if-eq v5, v10, :cond_21

    .line 629
    .line 630
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/play_billing/i0;->l0(Landroid/os/Parcel;I)V

    .line 631
    .line 632
    .line 633
    goto :goto_8

    .line 634
    :cond_21
    sget-object v3, Ly0/h;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 635
    .line 636
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/play_billing/i0;->a0(Landroid/os/Parcel;I)I

    .line 637
    .line 638
    .line 639
    move-result v4

    .line 640
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 641
    .line 642
    .line 643
    move-result v5

    .line 644
    if-nez v4, :cond_22

    .line 645
    .line 646
    goto :goto_7

    .line 647
    :cond_22
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 648
    .line 649
    .line 650
    move-result-object v3

    .line 651
    add-int/2addr v5, v4

    .line 652
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 653
    .line 654
    .line 655
    goto :goto_8

    .line 656
    :cond_23
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/play_billing/i0;->Z(Landroid/os/Parcel;I)I

    .line 657
    .line 658
    .line 659
    move-result v11

    .line 660
    goto :goto_8

    .line 661
    :cond_24
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/i0;->D(Landroid/os/Parcel;I)V

    .line 662
    .line 663
    .line 664
    new-instance v0, Ly0/k;

    .line 665
    .line 666
    invoke-direct {v0, v11, v3}, Ly0/k;-><init>(ILjava/util/List;)V

    .line 667
    .line 668
    .line 669
    return-object v0

    .line 670
    :pswitch_17
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/play_billing/i0;->o0(Landroid/os/Parcel;)I

    .line 671
    .line 672
    .line 673
    move-result v1

    .line 674
    move-object v3, v12

    .line 675
    move-object v4, v3

    .line 676
    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 677
    .line 678
    .line 679
    move-result v5

    .line 680
    if-ge v5, v1, :cond_29

    .line 681
    .line 682
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 683
    .line 684
    .line 685
    move-result v5

    .line 686
    int-to-char v6, v5

    .line 687
    if-eq v6, v9, :cond_28

    .line 688
    .line 689
    if-eq v6, v10, :cond_27

    .line 690
    .line 691
    if-eq v6, v8, :cond_26

    .line 692
    .line 693
    if-eq v6, v7, :cond_25

    .line 694
    .line 695
    invoke-static {v0, v5}, Lcom/google/android/gms/internal/play_billing/i0;->l0(Landroid/os/Parcel;I)V

    .line 696
    .line 697
    .line 698
    goto :goto_9

    .line 699
    :cond_25
    sget-object v4, Lv0/a;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 700
    .line 701
    invoke-static {v0, v5, v4}, Lcom/google/android/gms/internal/play_billing/i0;->u(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 702
    .line 703
    .line 704
    move-result-object v4

    .line 705
    check-cast v4, Lv0/a;

    .line 706
    .line 707
    goto :goto_9

    .line 708
    :cond_26
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 709
    .line 710
    invoke-static {v0, v5, v3}, Lcom/google/android/gms/internal/play_billing/i0;->u(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 711
    .line 712
    .line 713
    move-result-object v3

    .line 714
    check-cast v3, Landroid/app/PendingIntent;

    .line 715
    .line 716
    goto :goto_9

    .line 717
    :cond_27
    invoke-static {v0, v5}, Lcom/google/android/gms/internal/play_billing/i0;->v(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 718
    .line 719
    .line 720
    move-result-object v12

    .line 721
    goto :goto_9

    .line 722
    :cond_28
    invoke-static {v0, v5}, Lcom/google/android/gms/internal/play_billing/i0;->Z(Landroid/os/Parcel;I)I

    .line 723
    .line 724
    .line 725
    move-result v11

    .line 726
    goto :goto_9

    .line 727
    :cond_29
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/i0;->D(Landroid/os/Parcel;I)V

    .line 728
    .line 729
    .line 730
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    .line 731
    .line 732
    invoke-direct {v0, v11, v12, v3, v4}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lv0/a;)V

    .line 733
    .line 734
    .line 735
    return-object v0

    .line 736
    :pswitch_18
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/play_billing/i0;->o0(Landroid/os/Parcel;)I

    .line 737
    .line 738
    .line 739
    move-result v1

    .line 740
    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 741
    .line 742
    .line 743
    move-result v3

    .line 744
    if-ge v3, v1, :cond_2c

    .line 745
    .line 746
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 747
    .line 748
    .line 749
    move-result v3

    .line 750
    int-to-char v4, v3

    .line 751
    if-eq v4, v9, :cond_2b

    .line 752
    .line 753
    if-eq v4, v10, :cond_2a

    .line 754
    .line 755
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/i0;->l0(Landroid/os/Parcel;I)V

    .line 756
    .line 757
    .line 758
    goto :goto_a

    .line 759
    :cond_2a
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/i0;->v(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 760
    .line 761
    .line 762
    move-result-object v12

    .line 763
    goto :goto_a

    .line 764
    :cond_2b
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/i0;->Z(Landroid/os/Parcel;I)I

    .line 765
    .line 766
    .line 767
    move-result v11

    .line 768
    goto :goto_a

    .line 769
    :cond_2c
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/i0;->D(Landroid/os/Parcel;I)V

    .line 770
    .line 771
    .line 772
    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    .line 773
    .line 774
    invoke-direct {v0, v11, v12}, Lcom/google/android/gms/common/api/Scope;-><init>(ILjava/lang/String;)V

    .line 775
    .line 776
    .line 777
    return-object v0

    .line 778
    :pswitch_19
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/play_billing/i0;->o0(Landroid/os/Parcel;)I

    .line 779
    .line 780
    .line 781
    move-result v3

    .line 782
    move-wide/from16 v21, v5

    .line 783
    .line 784
    move v14, v11

    .line 785
    move-object v15, v12

    .line 786
    move-object/from16 v16, v15

    .line 787
    .line 788
    move-object/from16 v17, v16

    .line 789
    .line 790
    move-object/from16 v18, v17

    .line 791
    .line 792
    move-object/from16 v19, v18

    .line 793
    .line 794
    move-object/from16 v20, v19

    .line 795
    .line 796
    move-object/from16 v23, v20

    .line 797
    .line 798
    move-object/from16 v24, v23

    .line 799
    .line 800
    move-object/from16 v25, v24

    .line 801
    .line 802
    move-object/from16 v26, v25

    .line 803
    .line 804
    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 805
    .line 806
    .line 807
    move-result v4

    .line 808
    if-ge v4, v3, :cond_2e

    .line 809
    .line 810
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 811
    .line 812
    .line 813
    move-result v4

    .line 814
    int-to-char v5, v4

    .line 815
    packed-switch v5, :pswitch_data_3

    .line 816
    .line 817
    .line 818
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/play_billing/i0;->l0(Landroid/os/Parcel;I)V

    .line 819
    .line 820
    .line 821
    goto :goto_b

    .line 822
    :pswitch_1a
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/play_billing/i0;->v(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 823
    .line 824
    .line 825
    move-result-object v26

    .line 826
    goto :goto_b

    .line 827
    :pswitch_1b
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/play_billing/i0;->v(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 828
    .line 829
    .line 830
    move-result-object v25

    .line 831
    goto :goto_b

    .line 832
    :pswitch_1c
    sget-object v5, Lcom/google/android/gms/common/api/Scope;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 833
    .line 834
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/play_billing/i0;->a0(Landroid/os/Parcel;I)I

    .line 835
    .line 836
    .line 837
    move-result v4

    .line 838
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 839
    .line 840
    .line 841
    move-result v6

    .line 842
    if-nez v4, :cond_2d

    .line 843
    .line 844
    move-object/from16 v24, v12

    .line 845
    .line 846
    goto :goto_b

    .line 847
    :cond_2d
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 848
    .line 849
    .line 850
    move-result-object v5

    .line 851
    add-int/2addr v6, v4

    .line 852
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 853
    .line 854
    .line 855
    move-object/from16 v24, v5

    .line 856
    .line 857
    goto :goto_b

    .line 858
    :pswitch_1d
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/play_billing/i0;->v(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 859
    .line 860
    .line 861
    move-result-object v23

    .line 862
    goto :goto_b

    .line 863
    :pswitch_1e
    invoke-static {v0, v4, v1}, Lcom/google/android/gms/internal/play_billing/i0;->A0(Landroid/os/Parcel;II)V

    .line 864
    .line 865
    .line 866
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 867
    .line 868
    .line 869
    move-result-wide v21

    .line 870
    goto :goto_b

    .line 871
    :pswitch_1f
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/play_billing/i0;->v(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 872
    .line 873
    .line 874
    move-result-object v20

    .line 875
    goto :goto_b

    .line 876
    :pswitch_20
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 877
    .line 878
    invoke-static {v0, v4, v5}, Lcom/google/android/gms/internal/play_billing/i0;->u(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 879
    .line 880
    .line 881
    move-result-object v4

    .line 882
    move-object/from16 v19, v4

    .line 883
    .line 884
    check-cast v19, Landroid/net/Uri;

    .line 885
    .line 886
    goto :goto_b

    .line 887
    :pswitch_21
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/play_billing/i0;->v(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 888
    .line 889
    .line 890
    move-result-object v18

    .line 891
    goto :goto_b

    .line 892
    :pswitch_22
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/play_billing/i0;->v(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 893
    .line 894
    .line 895
    move-result-object v17

    .line 896
    goto :goto_b

    .line 897
    :pswitch_23
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/play_billing/i0;->v(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 898
    .line 899
    .line 900
    move-result-object v16

    .line 901
    goto :goto_b

    .line 902
    :pswitch_24
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/play_billing/i0;->v(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 903
    .line 904
    .line 905
    move-result-object v15

    .line 906
    goto :goto_b

    .line 907
    :pswitch_25
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/play_billing/i0;->Z(Landroid/os/Parcel;I)I

    .line 908
    .line 909
    .line 910
    move-result v14

    .line 911
    goto :goto_b

    .line 912
    :cond_2e
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/i0;->D(Landroid/os/Parcel;I)V

    .line 913
    .line 914
    .line 915
    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 916
    .line 917
    move-object v13, v0

    .line 918
    invoke-direct/range {v13 .. v26}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    .line 920
    .line 921
    return-object v0

    .line 922
    :pswitch_26
    new-instance v1, Landroidx/versionedparcelable/ParcelImpl;

    .line 923
    .line 924
    invoke-direct {v1, v0}, Landroidx/versionedparcelable/ParcelImpl;-><init>(Landroid/os/Parcel;)V

    .line 925
    .line 926
    .line 927
    return-object v1

    .line 928
    :pswitch_27
    new-instance v1, Landroidx/fragment/app/l;

    .line 929
    .line 930
    invoke-direct {v1, v0}, Landroidx/fragment/app/l;-><init>(Landroid/os/Parcel;)V

    .line 931
    .line 932
    .line 933
    return-object v1

    .line 934
    :pswitch_28
    new-instance v1, Landroidx/fragment/app/k;

    .line 935
    .line 936
    invoke-direct {v1, v0}, Landroidx/fragment/app/k;-><init>(Landroid/os/Parcel;)V

    .line 937
    .line 938
    .line 939
    return-object v1

    .line 940
    :pswitch_29
    new-instance v1, Landroidx/fragment/app/j;

    .line 941
    .line 942
    invoke-direct {v1, v0}, Landroidx/fragment/app/j;-><init>(Landroid/os/Parcel;)V

    .line 943
    .line 944
    .line 945
    return-object v1

    .line 946
    :pswitch_2a
    new-instance v1, Landroidx/fragment/app/a;

    .line 947
    .line 948
    invoke-direct {v1, v0}, Landroidx/fragment/app/a;-><init>(Landroid/os/Parcel;)V

    .line 949
    .line 950
    .line 951
    return-object v1

    .line 952
    :pswitch_2b
    new-instance v1, Lr/d;

    .line 953
    .line 954
    invoke-direct {v1, v0}, Lr/d;-><init>(Landroid/os/Parcel;)V

    .line 955
    .line 956
    .line 957
    return-object v1

    .line 958
    :pswitch_2c
    new-instance v1, Landroidx/activity/result/g;

    .line 959
    .line 960
    invoke-direct {v1, v0}, Landroidx/activity/result/g;-><init>(Landroid/os/Parcel;)V

    .line 961
    .line 962
    .line 963
    return-object v1

    .line 964
    :pswitch_2d
    new-instance v1, Landroidx/activity/result/a;

    .line 965
    .line 966
    invoke-direct {v1, v0}, Landroidx/activity/result/a;-><init>(Landroid/os/Parcel;)V

    .line 967
    .line 968
    .line 969
    return-object v1

    .line 970
    :pswitch_2e
    new-instance v1, La/e;

    .line 971
    .line 972
    invoke-direct {v1, v0}, La/e;-><init>(Landroid/os/Parcel;)V

    .line 973
    .line 974
    .line 975
    return-object v1

    .line 976
    :pswitch_2f
    new-instance v1, Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 977
    .line 978
    invoke-direct {v1, v0}, Landroid/support/v4/media/session/PlaybackStateCompat;-><init>(Landroid/os/Parcel;)V

    .line 979
    .line 980
    .line 981
    return-object v1

    .line 982
    :pswitch_30
    new-instance v1, Landroid/support/v4/media/session/ParcelableVolumeInfo;

    .line 983
    .line 984
    invoke-direct {v1, v0}, Landroid/support/v4/media/session/ParcelableVolumeInfo;-><init>(Landroid/os/Parcel;)V

    .line 985
    .line 986
    .line 987
    return-object v1

    .line 988
    :pswitch_31
    invoke-virtual {v0, v12}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 989
    .line 990
    .line 991
    move-result-object v0

    .line 992
    new-instance v1, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 993
    .line 994
    invoke-direct {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat$Token;-><init>(Landroid/os/Parcelable;)V

    .line 995
    .line 996
    .line 997
    return-object v1

    .line 998
    :pswitch_32
    new-instance v1, Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;

    .line 999
    .line 1000
    invoke-direct {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;-><init>(Landroid/os/Parcel;)V

    .line 1001
    .line 1002
    .line 1003
    return-object v1

    .line 1004
    :pswitch_33
    new-instance v1, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    .line 1005
    .line 1006
    invoke-direct {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;-><init>(Landroid/os/Parcel;)V

    .line 1007
    .line 1008
    .line 1009
    return-object v1

    .line 1010
    :pswitch_34
    new-instance v1, Landroid/support/v4/media/RatingCompat;

    .line 1011
    .line 1012
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 1013
    .line 1014
    .line 1015
    move-result v3

    .line 1016
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    .line 1017
    .line 1018
    .line 1019
    move-result v0

    .line 1020
    invoke-direct {v1, v0, v3}, Landroid/support/v4/media/RatingCompat;-><init>(FI)V

    .line 1021
    .line 1022
    .line 1023
    return-object v1

    .line 1024
    :pswitch_35
    new-instance v1, Landroid/support/v4/media/MediaMetadataCompat;

    .line 1025
    .line 1026
    invoke-direct {v1, v0}, Landroid/support/v4/media/MediaMetadataCompat;-><init>(Landroid/os/Parcel;)V

    .line 1027
    .line 1028
    .line 1029
    return-object v1

    .line 1030
    :pswitch_36
    sget-object v1, Landroid/media/MediaDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1031
    .line 1032
    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v0

    .line 1036
    if-eqz v0, :cond_33

    .line 1037
    .line 1038
    move-object v1, v0

    .line 1039
    check-cast v1, Landroid/media/MediaDescription;

    .line 1040
    .line 1041
    invoke-virtual {v1}, Landroid/media/MediaDescription;->getMediaId()Ljava/lang/String;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v14

    .line 1045
    invoke-virtual {v1}, Landroid/media/MediaDescription;->getTitle()Ljava/lang/CharSequence;

    .line 1046
    .line 1047
    .line 1048
    move-result-object v15

    .line 1049
    invoke-virtual {v1}, Landroid/media/MediaDescription;->getSubtitle()Ljava/lang/CharSequence;

    .line 1050
    .line 1051
    .line 1052
    move-result-object v16

    .line 1053
    invoke-virtual {v1}, Landroid/media/MediaDescription;->getDescription()Ljava/lang/CharSequence;

    .line 1054
    .line 1055
    .line 1056
    move-result-object v17

    .line 1057
    invoke-virtual {v1}, Landroid/media/MediaDescription;->getIconBitmap()Landroid/graphics/Bitmap;

    .line 1058
    .line 1059
    .line 1060
    move-result-object v18

    .line 1061
    invoke-virtual {v1}, Landroid/media/MediaDescription;->getIconUri()Landroid/net/Uri;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v19

    .line 1065
    invoke-virtual {v1}, Landroid/media/MediaDescription;->getExtras()Landroid/os/Bundle;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v3

    .line 1069
    const-string v4, "android.support.v4.media.description.MEDIA_URI"

    .line 1070
    .line 1071
    if-eqz v3, :cond_2f

    .line 1072
    .line 1073
    const-class v5, Lc1/b;

    .line 1074
    .line 1075
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 1076
    .line 1077
    .line 1078
    move-result-object v5

    .line 1079
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1080
    .line 1081
    .line 1082
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 1083
    .line 1084
    .line 1085
    move-result-object v5

    .line 1086
    check-cast v5, Landroid/net/Uri;

    .line 1087
    .line 1088
    goto :goto_c

    .line 1089
    :cond_2f
    move-object v5, v12

    .line 1090
    :goto_c
    if-eqz v5, :cond_31

    .line 1091
    .line 1092
    const-string v6, "android.support.v4.media.description.NULL_BUNDLE_FLAG"

    .line 1093
    .line 1094
    invoke-virtual {v3, v6}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 1095
    .line 1096
    .line 1097
    move-result v7

    .line 1098
    if-eqz v7, :cond_30

    .line 1099
    .line 1100
    invoke-virtual {v3}, Landroid/os/BaseBundle;->size()I

    .line 1101
    .line 1102
    .line 1103
    move-result v7

    .line 1104
    if-ne v7, v10, :cond_30

    .line 1105
    .line 1106
    move-object/from16 v20, v12

    .line 1107
    .line 1108
    goto :goto_d

    .line 1109
    :cond_30
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1110
    .line 1111
    .line 1112
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1113
    .line 1114
    .line 1115
    :cond_31
    move-object/from16 v20, v3

    .line 1116
    .line 1117
    :goto_d
    if-eqz v5, :cond_32

    .line 1118
    .line 1119
    move-object/from16 v21, v5

    .line 1120
    .line 1121
    goto :goto_e

    .line 1122
    :cond_32
    invoke-virtual {v1}, Landroid/media/MediaDescription;->getMediaUri()Landroid/net/Uri;

    .line 1123
    .line 1124
    .line 1125
    move-result-object v1

    .line 1126
    move-object/from16 v21, v1

    .line 1127
    .line 1128
    :goto_e
    new-instance v12, Landroid/support/v4/media/MediaDescriptionCompat;

    .line 1129
    .line 1130
    move-object v13, v12

    .line 1131
    invoke-direct/range {v13 .. v21}, Landroid/support/v4/media/MediaDescriptionCompat;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/os/Bundle;Landroid/net/Uri;)V

    .line 1132
    .line 1133
    .line 1134
    iput-object v0, v12, Landroid/support/v4/media/MediaDescriptionCompat;->i:Ljava/lang/Object;

    .line 1135
    .line 1136
    :cond_33
    return-object v12

    .line 1137
    :pswitch_37
    new-instance v1, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .line 1138
    .line 1139
    invoke-direct {v1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;-><init>(Landroid/os/Parcel;)V

    .line 1140
    .line 1141
    .line 1142
    return-object v1

    .line 1143
    :goto_f
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/play_billing/i0;->o0(Landroid/os/Parcel;)I

    .line 1144
    .line 1145
    .line 1146
    move-result v1

    .line 1147
    sget-object v3, Ly0/e;->o:[Lcom/google/android/gms/common/api/Scope;

    .line 1148
    .line 1149
    new-instance v4, Landroid/os/Bundle;

    .line 1150
    .line 1151
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1152
    .line 1153
    .line 1154
    sget-object v5, Ly0/e;->p:[Lv0/c;

    .line 1155
    .line 1156
    move-object/from16 v19, v3

    .line 1157
    .line 1158
    move-object/from16 v20, v4

    .line 1159
    .line 1160
    move-object/from16 v22, v5

    .line 1161
    .line 1162
    move-object/from16 v23, v22

    .line 1163
    .line 1164
    move v14, v11

    .line 1165
    move v15, v14

    .line 1166
    move/from16 v16, v15

    .line 1167
    .line 1168
    move/from16 v24, v16

    .line 1169
    .line 1170
    move/from16 v25, v24

    .line 1171
    .line 1172
    move/from16 v26, v25

    .line 1173
    .line 1174
    move-object/from16 v17, v12

    .line 1175
    .line 1176
    move-object/from16 v18, v17

    .line 1177
    .line 1178
    move-object/from16 v21, v18

    .line 1179
    .line 1180
    move-object/from16 v27, v21

    .line 1181
    .line 1182
    :goto_10
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 1183
    .line 1184
    .line 1185
    move-result v3

    .line 1186
    if-ge v3, v1, :cond_36

    .line 1187
    .line 1188
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 1189
    .line 1190
    .line 1191
    move-result v3

    .line 1192
    int-to-char v4, v3

    .line 1193
    packed-switch v4, :pswitch_data_4

    .line 1194
    .line 1195
    .line 1196
    :pswitch_38
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/i0;->l0(Landroid/os/Parcel;I)V

    .line 1197
    .line 1198
    .line 1199
    goto :goto_10

    .line 1200
    :pswitch_39
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/i0;->v(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 1201
    .line 1202
    .line 1203
    move-result-object v27

    .line 1204
    goto :goto_10

    .line 1205
    :pswitch_3a
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/i0;->Y(Landroid/os/Parcel;I)Z

    .line 1206
    .line 1207
    .line 1208
    move-result v26

    .line 1209
    goto :goto_10

    .line 1210
    :pswitch_3b
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/i0;->Z(Landroid/os/Parcel;I)I

    .line 1211
    .line 1212
    .line 1213
    move-result v25

    .line 1214
    goto :goto_10

    .line 1215
    :pswitch_3c
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/i0;->Y(Landroid/os/Parcel;I)Z

    .line 1216
    .line 1217
    .line 1218
    move-result v24

    .line 1219
    goto :goto_10

    .line 1220
    :pswitch_3d
    sget-object v4, Lv0/c;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1221
    .line 1222
    invoke-static {v0, v3, v4}, Lcom/google/android/gms/internal/play_billing/i0;->w(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 1223
    .line 1224
    .line 1225
    move-result-object v3

    .line 1226
    move-object/from16 v23, v3

    .line 1227
    .line 1228
    check-cast v23, [Lv0/c;

    .line 1229
    .line 1230
    goto :goto_10

    .line 1231
    :pswitch_3e
    sget-object v4, Lv0/c;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1232
    .line 1233
    invoke-static {v0, v3, v4}, Lcom/google/android/gms/internal/play_billing/i0;->w(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 1234
    .line 1235
    .line 1236
    move-result-object v3

    .line 1237
    move-object/from16 v22, v3

    .line 1238
    .line 1239
    check-cast v22, [Lv0/c;

    .line 1240
    .line 1241
    goto :goto_10

    .line 1242
    :pswitch_3f
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1243
    .line 1244
    invoke-static {v0, v3, v4}, Lcom/google/android/gms/internal/play_billing/i0;->u(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 1245
    .line 1246
    .line 1247
    move-result-object v3

    .line 1248
    move-object/from16 v21, v3

    .line 1249
    .line 1250
    check-cast v21, Landroid/accounts/Account;

    .line 1251
    .line 1252
    goto :goto_10

    .line 1253
    :pswitch_40
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/i0;->a0(Landroid/os/Parcel;I)I

    .line 1254
    .line 1255
    .line 1256
    move-result v3

    .line 1257
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 1258
    .line 1259
    .line 1260
    move-result v4

    .line 1261
    if-nez v3, :cond_34

    .line 1262
    .line 1263
    move-object/from16 v20, v12

    .line 1264
    .line 1265
    goto :goto_10

    .line 1266
    :cond_34
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    .line 1267
    .line 1268
    .line 1269
    move-result-object v5

    .line 1270
    add-int/2addr v4, v3

    .line 1271
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1272
    .line 1273
    .line 1274
    move-object/from16 v20, v5

    .line 1275
    .line 1276
    goto :goto_10

    .line 1277
    :pswitch_41
    sget-object v4, Lcom/google/android/gms/common/api/Scope;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1278
    .line 1279
    invoke-static {v0, v3, v4}, Lcom/google/android/gms/internal/play_billing/i0;->w(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 1280
    .line 1281
    .line 1282
    move-result-object v3

    .line 1283
    move-object/from16 v19, v3

    .line 1284
    .line 1285
    check-cast v19, [Lcom/google/android/gms/common/api/Scope;

    .line 1286
    .line 1287
    goto :goto_10

    .line 1288
    :pswitch_42
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/i0;->a0(Landroid/os/Parcel;I)I

    .line 1289
    .line 1290
    .line 1291
    move-result v3

    .line 1292
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 1293
    .line 1294
    .line 1295
    move-result v4

    .line 1296
    if-nez v3, :cond_35

    .line 1297
    .line 1298
    move-object/from16 v18, v12

    .line 1299
    .line 1300
    goto :goto_10

    .line 1301
    :cond_35
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1302
    .line 1303
    .line 1304
    move-result-object v5

    .line 1305
    add-int/2addr v4, v3

    .line 1306
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1307
    .line 1308
    .line 1309
    move-object/from16 v18, v5

    .line 1310
    .line 1311
    goto/16 :goto_10

    .line 1312
    .line 1313
    :pswitch_43
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/i0;->v(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 1314
    .line 1315
    .line 1316
    move-result-object v17

    .line 1317
    goto/16 :goto_10

    .line 1318
    .line 1319
    :pswitch_44
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/i0;->Z(Landroid/os/Parcel;I)I

    .line 1320
    .line 1321
    .line 1322
    move-result v16

    .line 1323
    goto/16 :goto_10

    .line 1324
    .line 1325
    :pswitch_45
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/i0;->Z(Landroid/os/Parcel;I)I

    .line 1326
    .line 1327
    .line 1328
    move-result v15

    .line 1329
    goto/16 :goto_10

    .line 1330
    .line 1331
    :pswitch_46
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/i0;->Z(Landroid/os/Parcel;I)I

    .line 1332
    .line 1333
    .line 1334
    move-result v14

    .line 1335
    goto/16 :goto_10

    .line 1336
    .line 1337
    :cond_36
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/i0;->D(Landroid/os/Parcel;I)V

    .line 1338
    .line 1339
    .line 1340
    new-instance v0, Ly0/e;

    .line 1341
    .line 1342
    move-object v13, v0

    .line 1343
    invoke-direct/range {v13 .. v27}, Ly0/e;-><init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;[Lv0/c;[Lv0/c;ZIZLjava/lang/String;)V

    .line 1344
    .line 1345
    .line 1346
    return-object v0

    .line 1347
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
    .end packed-switch

    .line 1348
    .line 1349
    .line 1350
    .line 1351
    .line 1352
    .line 1353
    .line 1354
    .line 1355
    .line 1356
    .line 1357
    .line 1358
    .line 1359
    .line 1360
    .line 1361
    .line 1362
    .line 1363
    .line 1364
    .line 1365
    .line 1366
    .line 1367
    .line 1368
    .line 1369
    .line 1370
    .line 1371
    .line 1372
    .line 1373
    .line 1374
    .line 1375
    .line 1376
    .line 1377
    .line 1378
    .line 1379
    .line 1380
    .line 1381
    .line 1382
    .line 1383
    .line 1384
    .line 1385
    .line 1386
    .line 1387
    .line 1388
    .line 1389
    .line 1390
    .line 1391
    .line 1392
    .line 1393
    .line 1394
    .line 1395
    .line 1396
    .line 1397
    .line 1398
    .line 1399
    .line 1400
    .line 1401
    .line 1402
    .line 1403
    .line 1404
    .line 1405
    .line 1406
    .line 1407
    .line 1408
    .line 1409
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 1410
    .line 1411
    .line 1412
    .line 1413
    .line 1414
    .line 1415
    .line 1416
    .line 1417
    .line 1418
    .line 1419
    .line 1420
    .line 1421
    .line 1422
    .line 1423
    .line 1424
    .line 1425
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    .line 1426
    .line 1427
    .line 1428
    .line 1429
    .line 1430
    .line 1431
    .line 1432
    .line 1433
    .line 1434
    .line 1435
    .line 1436
    .line 1437
    .line 1438
    .line 1439
    .line 1440
    .line 1441
    .line 1442
    .line 1443
    .line 1444
    .line 1445
    .line 1446
    .line 1447
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch

    .line 1448
    .line 1449
    .line 1450
    .line 1451
    .line 1452
    .line 1453
    .line 1454
    .line 1455
    .line 1456
    .line 1457
    .line 1458
    .line 1459
    .line 1460
    .line 1461
    .line 1462
    .line 1463
    .line 1464
    .line 1465
    .line 1466
    .line 1467
    .line 1468
    .line 1469
    .line 1470
    .line 1471
    .line 1472
    .line 1473
    .line 1474
    .line 1475
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_38
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
    .end packed-switch
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v4/media/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    new-array p1, p1, [Ly0/d;

    .line 8
    .line 9
    return-object p1

    .line 10
    :pswitch_1
    new-array p1, p1, [Ly0/e0;

    .line 11
    .line 12
    return-object p1

    .line 13
    :pswitch_2
    new-array p1, p1, [Ly0/j;

    .line 14
    .line 15
    return-object p1

    .line 16
    :pswitch_3
    new-array p1, p1, [Ly0/t;

    .line 17
    .line 18
    return-object p1

    .line 19
    :pswitch_4
    new-array p1, p1, [Ly0/s;

    .line 20
    .line 21
    return-object p1

    .line 22
    :pswitch_5
    new-array p1, p1, [Ly0/r;

    .line 23
    .line 24
    return-object p1

    .line 25
    :pswitch_6
    new-array p1, p1, [Ly0/h;

    .line 26
    .line 27
    return-object p1

    .line 28
    :pswitch_7
    new-array p1, p1, [Ly0/k;

    .line 29
    .line 30
    return-object p1

    .line 31
    :pswitch_8
    new-array p1, p1, [Lcom/google/android/gms/common/api/Status;

    .line 32
    .line 33
    return-object p1

    .line 34
    :pswitch_9
    new-array p1, p1, [Lcom/google/android/gms/common/api/Scope;

    .line 35
    .line 36
    return-object p1

    .line 37
    :pswitch_a
    new-array p1, p1, [Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 38
    .line 39
    return-object p1

    .line 40
    :pswitch_b
    new-array p1, p1, [Landroidx/versionedparcelable/ParcelImpl;

    .line 41
    .line 42
    return-object p1

    .line 43
    :pswitch_c
    new-array p1, p1, [Landroidx/fragment/app/l;

    .line 44
    .line 45
    return-object p1

    .line 46
    :pswitch_d
    new-array p1, p1, [Landroidx/fragment/app/k;

    .line 47
    .line 48
    return-object p1

    .line 49
    :pswitch_e
    new-array p1, p1, [Landroidx/fragment/app/j;

    .line 50
    .line 51
    return-object p1

    .line 52
    :pswitch_f
    new-array p1, p1, [Landroidx/fragment/app/a;

    .line 53
    .line 54
    return-object p1

    .line 55
    :pswitch_10
    new-array p1, p1, [Lr/d;

    .line 56
    .line 57
    return-object p1

    .line 58
    :pswitch_11
    new-array p1, p1, [Landroidx/activity/result/g;

    .line 59
    .line 60
    return-object p1

    .line 61
    :pswitch_12
    new-array p1, p1, [Landroidx/activity/result/a;

    .line 62
    .line 63
    return-object p1

    .line 64
    :pswitch_13
    new-array p1, p1, [La/e;

    .line 65
    .line 66
    return-object p1

    .line 67
    :pswitch_14
    new-array p1, p1, [Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 68
    .line 69
    return-object p1

    .line 70
    :pswitch_15
    new-array p1, p1, [Landroid/support/v4/media/session/ParcelableVolumeInfo;

    .line 71
    .line 72
    return-object p1

    .line 73
    :pswitch_16
    new-array p1, p1, [Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 74
    .line 75
    return-object p1

    .line 76
    :pswitch_17
    new-array p1, p1, [Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;

    .line 77
    .line 78
    return-object p1

    .line 79
    :pswitch_18
    new-array p1, p1, [Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    .line 80
    .line 81
    return-object p1

    .line 82
    :pswitch_19
    new-array p1, p1, [Landroid/support/v4/media/RatingCompat;

    .line 83
    .line 84
    return-object p1

    .line 85
    :pswitch_1a
    new-array p1, p1, [Landroid/support/v4/media/MediaMetadataCompat;

    .line 86
    .line 87
    return-object p1

    .line 88
    :pswitch_1b
    new-array p1, p1, [Landroid/support/v4/media/MediaDescriptionCompat;

    .line 89
    .line 90
    return-object p1

    .line 91
    :pswitch_1c
    new-array p1, p1, [Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .line 92
    .line 93
    return-object p1

    .line 94
    :goto_0
    new-array p1, p1, [Ly0/e;

    .line 95
    .line 96
    return-object p1

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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
