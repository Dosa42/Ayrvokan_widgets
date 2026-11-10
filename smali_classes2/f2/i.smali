.class public final Lf2/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[Lf2/e0;

.field public final b:Lb3/a;

.field public c:Lz2/n;

.field public d:Lf2/e;

.field public final e:La3/d;

.field public final f:Landroid/os/Looper;

.field public g:Z


# direct methods
.method public varargs constructor <init>(Landroid/content/Context;[Lf2/e0;)V
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
    new-instance v3, Lz2/k;

    .line 8
    .line 9
    new-instance v4, Lz2/b;

    .line 10
    .line 11
    sget-object v11, Lb3/a;->a:Ly0/i;

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    invoke-direct {v4, v5}, Lz2/b;-><init>(La3/o;)V

    .line 15
    .line 16
    .line 17
    sget-object v5, Lz2/g;->B:Lz2/g;

    .line 18
    .line 19
    new-instance v5, Lz2/h;

    .line 20
    .line 21
    invoke-direct {v5, v0}, Lz2/h;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v5}, Lz2/h;->a()Lz2/g;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    invoke-direct {v3, v5, v4}, Lz2/k;-><init>(Lz2/g;Lz2/b;)V

    .line 29
    .line 30
    .line 31
    new-instance v4, Lf2/e;

    .line 32
    .line 33
    new-instance v13, La3/m;

    .line 34
    .line 35
    invoke-direct {v13}, La3/m;-><init>()V

    .line 36
    .line 37
    .line 38
    const/16 v14, 0x3a98

    .line 39
    .line 40
    const v15, 0xc350

    .line 41
    .line 42
    .line 43
    const v16, 0xc350

    .line 44
    .line 45
    .line 46
    const/16 v17, 0x9c4

    .line 47
    .line 48
    const/16 v18, 0x1388

    .line 49
    .line 50
    move-object v12, v4

    .line 51
    invoke-direct/range {v12 .. v18}, Lf2/e;-><init>(La3/m;IIIII)V

    .line 52
    .line 53
    .line 54
    sget-object v5, La3/o;->n:Ljava/util/Map;

    .line 55
    .line 56
    const-class v12, La3/o;

    .line 57
    .line 58
    monitor-enter v12

    .line 59
    :try_start_0
    sget-object v5, La3/o;->s:La3/o;

    .line 60
    .line 61
    const/4 v13, 0x1

    .line 62
    const/4 v14, 0x0

    .line 63
    if-nez v5, :cond_2

    .line 64
    .line 65
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    sget v5, Lb3/n;->a:I

    .line 70
    .line 71
    const-string v5, "phone"

    .line 72
    .line 73
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 78
    .line 79
    if-eqz v0, :cond_0

    .line 80
    .line 81
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    if-nez v5, :cond_0

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    :goto_0
    invoke-static {v0}, Lb3/n;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    sget-object v5, La3/o;->n:Ljava/util/Map;

    .line 105
    .line 106
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    check-cast v0, [I

    .line 111
    .line 112
    const/4 v5, 0x2

    .line 113
    if-nez v0, :cond_1

    .line 114
    .line 115
    filled-new-array {v5, v5, v5, v5}, [I

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    :cond_1
    new-instance v7, Landroid/util/SparseArray;

    .line 120
    .line 121
    const/4 v8, 0x6

    .line 122
    invoke-direct {v7, v8}, Landroid/util/SparseArray;-><init>(I)V

    .line 123
    .line 124
    .line 125
    const-wide/32 v8, 0xf4240

    .line 126
    .line 127
    .line 128
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 129
    .line 130
    .line 131
    move-result-object v8

    .line 132
    invoke-virtual {v7, v14, v8}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    sget-object v8, La3/o;->o:[J

    .line 136
    .line 137
    aget v9, v0, v14

    .line 138
    .line 139
    aget-wide v9, v8, v9

    .line 140
    .line 141
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 142
    .line 143
    .line 144
    move-result-object v9

    .line 145
    invoke-virtual {v7, v5, v9}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    sget-object v9, La3/o;->p:[J

    .line 149
    .line 150
    aget v10, v0, v13

    .line 151
    .line 152
    aget-wide v15, v9, v10

    .line 153
    .line 154
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 155
    .line 156
    .line 157
    move-result-object v9

    .line 158
    const/4 v10, 0x3

    .line 159
    invoke-virtual {v7, v10, v9}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    sget-object v9, La3/o;->q:[J

    .line 163
    .line 164
    aget v5, v0, v5

    .line 165
    .line 166
    aget-wide v15, v9, v5

    .line 167
    .line 168
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    const/4 v9, 0x4

    .line 173
    invoke-virtual {v7, v9, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    sget-object v5, La3/o;->r:[J

    .line 177
    .line 178
    aget v9, v0, v10

    .line 179
    .line 180
    aget-wide v9, v5, v9

    .line 181
    .line 182
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 183
    .line 184
    .line 185
    move-result-object v5

    .line 186
    const/4 v9, 0x5

    .line 187
    invoke-virtual {v7, v9, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    aget v5, v0, v14

    .line 191
    .line 192
    aget-wide v9, v8, v5

    .line 193
    .line 194
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    const/4 v9, 0x7

    .line 199
    invoke-virtual {v7, v9, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    aget v0, v0, v14

    .line 203
    .line 204
    aget-wide v9, v8, v0

    .line 205
    .line 206
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    const/16 v5, 0x9

    .line 211
    .line 212
    invoke-virtual {v7, v5, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    const/16 v8, 0x7d0

    .line 216
    .line 217
    new-instance v0, La3/o;

    .line 218
    .line 219
    const/4 v10, 0x1

    .line 220
    move-object v5, v0

    .line 221
    move-object v9, v11

    .line 222
    invoke-direct/range {v5 .. v10}, La3/o;-><init>(Landroid/content/Context;Landroid/util/SparseArray;ILb3/a;Z)V

    .line 223
    .line 224
    .line 225
    sput-object v0, La3/o;->s:La3/o;

    .line 226
    .line 227
    :cond_2
    sget-object v0, La3/o;->s:La3/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    .line 229
    monitor-exit v12

    .line 230
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 231
    .line 232
    .line 233
    move-result-object v5

    .line 234
    if-eqz v5, :cond_3

    .line 235
    .line 236
    goto :goto_1

    .line 237
    :cond_3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 238
    .line 239
    .line 240
    move-result-object v5

    .line 241
    :goto_1
    new-instance v6, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 242
    .line 243
    invoke-direct {v6}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 244
    .line 245
    .line 246
    new-instance v6, Ljava/util/ArrayList;

    .line 247
    .line 248
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 249
    .line 250
    .line 251
    new-instance v6, Ljava/util/HashMap;

    .line 252
    .line 253
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 254
    .line 255
    .line 256
    new-instance v6, Lf2/j0;

    .line 257
    .line 258
    invoke-direct {v6}, Lf2/j0;-><init>()V

    .line 259
    .line 260
    .line 261
    new-instance v6, Lf2/k0;

    .line 262
    .line 263
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 264
    .line 265
    .line 266
    array-length v6, v2

    .line 267
    if-lez v6, :cond_4

    .line 268
    .line 269
    goto :goto_2

    .line 270
    :cond_4
    move v13, v14

    .line 271
    :goto_2
    invoke-static {v13}, Lcom/google/android/gms/internal/play_billing/i0;->g(Z)V

    .line 272
    .line 273
    .line 274
    iput-object v2, v1, Lf2/i;->a:[Lf2/e0;

    .line 275
    .line 276
    iput-object v3, v1, Lf2/i;->c:Lz2/n;

    .line 277
    .line 278
    iput-object v4, v1, Lf2/i;->d:Lf2/e;

    .line 279
    .line 280
    iput-object v0, v1, Lf2/i;->e:La3/d;

    .line 281
    .line 282
    iput-object v5, v1, Lf2/i;->f:Landroid/os/Looper;

    .line 283
    .line 284
    iput-object v11, v1, Lf2/i;->b:Lb3/a;

    .line 285
    .line 286
    return-void

    .line 287
    :catchall_0
    move-exception v0

    .line 288
    monitor-exit v12

    .line 289
    throw v0
.end method
