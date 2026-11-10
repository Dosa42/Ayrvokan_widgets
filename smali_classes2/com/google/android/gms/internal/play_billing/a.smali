.class public final enum Lcom/google/android/gms/internal/play_billing/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum b:Lcom/google/android/gms/internal/play_billing/a;

.field public static final c:Lcom/google/android/gms/internal/play_billing/o;

.field public static final synthetic d:[Lcom/google/android/gms/internal/play_billing/a;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 19

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/a;

    .line 2
    .line 3
    const-string v1, "RESPONSE_CODE_UNSPECIFIED"

    .line 4
    .line 5
    const/4 v15, 0x0

    .line 6
    const/16 v2, -0x3e7

    .line 7
    .line 8
    invoke-direct {v0, v1, v15, v2}, Lcom/google/android/gms/internal/play_billing/a;-><init>(Ljava/lang/String;II)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/google/android/gms/internal/play_billing/a;->b:Lcom/google/android/gms/internal/play_billing/a;

    .line 12
    .line 13
    new-instance v1, Lcom/google/android/gms/internal/play_billing/a;

    .line 14
    .line 15
    const-string v2, "SERVICE_TIMEOUT"

    .line 16
    .line 17
    const/4 v14, 0x1

    .line 18
    const/4 v3, -0x3

    .line 19
    invoke-direct {v1, v2, v14, v3}, Lcom/google/android/gms/internal/play_billing/a;-><init>(Ljava/lang/String;II)V

    .line 20
    .line 21
    .line 22
    new-instance v2, Lcom/google/android/gms/internal/play_billing/a;

    .line 23
    .line 24
    const-string v3, "FEATURE_NOT_SUPPORTED"

    .line 25
    .line 26
    const/4 v4, 0x2

    .line 27
    const/4 v5, -0x2

    .line 28
    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gms/internal/play_billing/a;-><init>(Ljava/lang/String;II)V

    .line 29
    .line 30
    .line 31
    new-instance v3, Lcom/google/android/gms/internal/play_billing/a;

    .line 32
    .line 33
    const-string v5, "SERVICE_DISCONNECTED"

    .line 34
    .line 35
    const/4 v6, 0x3

    .line 36
    const/4 v7, -0x1

    .line 37
    invoke-direct {v3, v5, v6, v7}, Lcom/google/android/gms/internal/play_billing/a;-><init>(Ljava/lang/String;II)V

    .line 38
    .line 39
    .line 40
    new-instance v5, Lcom/google/android/gms/internal/play_billing/a;

    .line 41
    .line 42
    const-string v7, "OK"

    .line 43
    .line 44
    const/4 v8, 0x4

    .line 45
    invoke-direct {v5, v7, v8, v15}, Lcom/google/android/gms/internal/play_billing/a;-><init>(Ljava/lang/String;II)V

    .line 46
    .line 47
    .line 48
    new-instance v7, Lcom/google/android/gms/internal/play_billing/a;

    .line 49
    .line 50
    const-string v9, "USER_CANCELED"

    .line 51
    .line 52
    const/4 v10, 0x5

    .line 53
    invoke-direct {v7, v9, v10, v14}, Lcom/google/android/gms/internal/play_billing/a;-><init>(Ljava/lang/String;II)V

    .line 54
    .line 55
    .line 56
    new-instance v9, Lcom/google/android/gms/internal/play_billing/a;

    .line 57
    .line 58
    const-string v11, "SERVICE_UNAVAILABLE"

    .line 59
    .line 60
    const/4 v12, 0x6

    .line 61
    invoke-direct {v9, v11, v12, v4}, Lcom/google/android/gms/internal/play_billing/a;-><init>(Ljava/lang/String;II)V

    .line 62
    .line 63
    .line 64
    new-instance v11, Lcom/google/android/gms/internal/play_billing/a;

    .line 65
    .line 66
    const-string v4, "BILLING_UNAVAILABLE"

    .line 67
    .line 68
    const/4 v13, 0x7

    .line 69
    invoke-direct {v11, v4, v13, v6}, Lcom/google/android/gms/internal/play_billing/a;-><init>(Ljava/lang/String;II)V

    .line 70
    .line 71
    .line 72
    new-instance v6, Lcom/google/android/gms/internal/play_billing/a;

    .line 73
    .line 74
    const-string v4, "ITEM_UNAVAILABLE"

    .line 75
    .line 76
    const/16 v14, 0x8

    .line 77
    .line 78
    invoke-direct {v6, v4, v14, v8}, Lcom/google/android/gms/internal/play_billing/a;-><init>(Ljava/lang/String;II)V

    .line 79
    .line 80
    .line 81
    new-instance v8, Lcom/google/android/gms/internal/play_billing/a;

    .line 82
    .line 83
    const-string v4, "DEVELOPER_ERROR"

    .line 84
    .line 85
    const/16 v15, 0x9

    .line 86
    .line 87
    invoke-direct {v8, v4, v15, v10}, Lcom/google/android/gms/internal/play_billing/a;-><init>(Ljava/lang/String;II)V

    .line 88
    .line 89
    .line 90
    new-instance v10, Lcom/google/android/gms/internal/play_billing/a;

    .line 91
    .line 92
    const-string v4, "ERROR"

    .line 93
    .line 94
    const/16 v15, 0xa

    .line 95
    .line 96
    invoke-direct {v10, v4, v15, v12}, Lcom/google/android/gms/internal/play_billing/a;-><init>(Ljava/lang/String;II)V

    .line 97
    .line 98
    .line 99
    new-instance v12, Lcom/google/android/gms/internal/play_billing/a;

    .line 100
    .line 101
    const-string v4, "ITEM_ALREADY_OWNED"

    .line 102
    .line 103
    const/16 v15, 0xb

    .line 104
    .line 105
    invoke-direct {v12, v4, v15, v13}, Lcom/google/android/gms/internal/play_billing/a;-><init>(Ljava/lang/String;II)V

    .line 106
    .line 107
    .line 108
    new-instance v13, Lcom/google/android/gms/internal/play_billing/a;

    .line 109
    .line 110
    const-string v4, "ITEM_NOT_OWNED"

    .line 111
    .line 112
    const/16 v15, 0xc

    .line 113
    .line 114
    invoke-direct {v13, v4, v15, v14}, Lcom/google/android/gms/internal/play_billing/a;-><init>(Ljava/lang/String;II)V

    .line 115
    .line 116
    .line 117
    new-instance v14, Lcom/google/android/gms/internal/play_billing/a;

    .line 118
    .line 119
    const-string v4, "EXPIRED_OFFER_TOKEN"

    .line 120
    .line 121
    const/16 v15, 0xd

    .line 122
    .line 123
    move-object/from16 v18, v6

    .line 124
    .line 125
    const/16 v6, 0xb

    .line 126
    .line 127
    invoke-direct {v14, v4, v15, v6}, Lcom/google/android/gms/internal/play_billing/a;-><init>(Ljava/lang/String;II)V

    .line 128
    .line 129
    .line 130
    new-instance v15, Lcom/google/android/gms/internal/play_billing/a;

    .line 131
    .line 132
    const-string v4, "NETWORK_ERROR"

    .line 133
    .line 134
    const/16 v6, 0xe

    .line 135
    .line 136
    move-object/from16 v17, v8

    .line 137
    .line 138
    const/16 v8, 0xc

    .line 139
    .line 140
    invoke-direct {v15, v4, v6, v8}, Lcom/google/android/gms/internal/play_billing/a;-><init>(Ljava/lang/String;II)V

    .line 141
    .line 142
    .line 143
    move-object v4, v5

    .line 144
    move-object v5, v7

    .line 145
    move-object/from16 v8, v18

    .line 146
    .line 147
    move-object v6, v9

    .line 148
    move-object v7, v11

    .line 149
    move-object/from16 v9, v17

    .line 150
    .line 151
    move-object v11, v12

    .line 152
    move-object v12, v13

    .line 153
    move-object v13, v14

    .line 154
    const/16 v16, 0x1

    .line 155
    .line 156
    move-object v14, v15

    .line 157
    filled-new-array/range {v0 .. v14}, [Lcom/google/android/gms/internal/play_billing/a;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    sput-object v0, Lcom/google/android/gms/internal/play_billing/a;->d:[Lcom/google/android/gms/internal/play_billing/a;

    .line 162
    .line 163
    new-instance v0, Lf0/e;

    .line 164
    .line 165
    invoke-direct {v0}, Lf0/e;-><init>()V

    .line 166
    .line 167
    .line 168
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/a;->values()[Lcom/google/android/gms/internal/play_billing/a;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    array-length v2, v1

    .line 173
    const/4 v15, 0x0

    .line 174
    :goto_0
    if-ge v15, v2, :cond_4

    .line 175
    .line 176
    aget-object v3, v1, v15

    .line 177
    .line 178
    iget v4, v3, Lcom/google/android/gms/internal/play_billing/a;->a:I

    .line 179
    .line 180
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    iget v5, v0, Lf0/e;->a:I

    .line 185
    .line 186
    add-int/lit8 v5, v5, 0x1

    .line 187
    .line 188
    iget-object v6, v0, Lf0/e;->b:Ljava/io/Serializable;

    .line 189
    .line 190
    check-cast v6, [Ljava/lang/Object;

    .line 191
    .line 192
    array-length v7, v6

    .line 193
    add-int/2addr v5, v5

    .line 194
    if-le v5, v7, :cond_2

    .line 195
    .line 196
    shr-int/lit8 v8, v7, 0x1

    .line 197
    .line 198
    add-int/2addr v7, v8

    .line 199
    add-int/lit8 v7, v7, 0x1

    .line 200
    .line 201
    if-ge v7, v5, :cond_0

    .line 202
    .line 203
    add-int/lit8 v5, v5, -0x1

    .line 204
    .line 205
    invoke-static {v5}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 206
    .line 207
    .line 208
    move-result v5

    .line 209
    add-int v7, v5, v5

    .line 210
    .line 211
    :cond_0
    if-gez v7, :cond_1

    .line 212
    .line 213
    const v7, 0x7fffffff

    .line 214
    .line 215
    .line 216
    :cond_1
    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v5

    .line 220
    iput-object v5, v0, Lf0/e;->b:Ljava/io/Serializable;

    .line 221
    .line 222
    :cond_2
    if-eqz v4, :cond_3

    .line 223
    .line 224
    iget-object v5, v0, Lf0/e;->b:Ljava/io/Serializable;

    .line 225
    .line 226
    check-cast v5, [Ljava/lang/Object;

    .line 227
    .line 228
    iget v6, v0, Lf0/e;->a:I

    .line 229
    .line 230
    add-int v7, v6, v6

    .line 231
    .line 232
    aput-object v4, v5, v7

    .line 233
    .line 234
    add-int/lit8 v7, v7, 0x1

    .line 235
    .line 236
    aput-object v3, v5, v7

    .line 237
    .line 238
    add-int/lit8 v6, v6, 0x1

    .line 239
    .line 240
    iput v6, v0, Lf0/e;->a:I

    .line 241
    .line 242
    add-int/lit8 v15, v15, 0x1

    .line 243
    .line 244
    goto :goto_0

    .line 245
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    .line 246
    .line 247
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    const-string v2, "null key in entry: null="

    .line 252
    .line 253
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    throw v0

    .line 261
    :cond_4
    iget-object v1, v0, Lf0/e;->c:Ljava/lang/Object;

    .line 262
    .line 263
    check-cast v1, Lcom/google/android/gms/internal/play_billing/g;

    .line 264
    .line 265
    if-nez v1, :cond_6

    .line 266
    .line 267
    iget v1, v0, Lf0/e;->a:I

    .line 268
    .line 269
    iget-object v2, v0, Lf0/e;->b:Ljava/io/Serializable;

    .line 270
    .line 271
    check-cast v2, [Ljava/lang/Object;

    .line 272
    .line 273
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/play_billing/o;->a(I[Ljava/lang/Object;Lf0/e;)Lcom/google/android/gms/internal/play_billing/o;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    iget-object v0, v0, Lf0/e;->c:Ljava/lang/Object;

    .line 278
    .line 279
    check-cast v0, Lcom/google/android/gms/internal/play_billing/g;

    .line 280
    .line 281
    if-nez v0, :cond_5

    .line 282
    .line 283
    sput-object v1, Lcom/google/android/gms/internal/play_billing/a;->c:Lcom/google/android/gms/internal/play_billing/o;

    .line 284
    .line 285
    return-void

    .line 286
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/g;->a()Ljava/lang/IllegalArgumentException;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    throw v0

    .line 291
    :cond_6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/g;->a()Ljava/lang/IllegalArgumentException;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/play_billing/a;->a:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/play_billing/a;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/play_billing/a;->d:[Lcom/google/android/gms/internal/play_billing/a;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/play_billing/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/play_billing/a;

    return-object v0
.end method
