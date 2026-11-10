.class public final Ln2/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ljava/util/List;


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ln2/g;->a:I

    iput-object p2, p0, Ln2/g;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(ILn2/y;)Ln2/f0;
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    if-eq p1, v1, :cond_10

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    iget-object v3, p2, Ln2/y;->b:Ljava/lang/Object;

    .line 7
    .line 8
    if-eq p1, v2, :cond_f

    .line 9
    .line 10
    const/4 v2, 0x4

    .line 11
    if-eq p1, v2, :cond_f

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    const/16 v5, 0xf

    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    if-eq p1, v5, :cond_d

    .line 18
    .line 19
    const/16 v5, 0x11

    .line 20
    .line 21
    if-eq p1, v5, :cond_b

    .line 22
    .line 23
    const/16 v1, 0x15

    .line 24
    .line 25
    if-eq p1, v1, :cond_a

    .line 26
    .line 27
    const/16 v1, 0x1b

    .line 28
    .line 29
    if-eq p1, v1, :cond_8

    .line 30
    .line 31
    const/16 v0, 0x24

    .line 32
    .line 33
    if-eq p1, v0, :cond_7

    .line 34
    .line 35
    const/16 v0, 0x59

    .line 36
    .line 37
    if-eq p1, v0, :cond_6

    .line 38
    .line 39
    const/16 p2, 0x8a

    .line 40
    .line 41
    if-eq p1, p2, :cond_5

    .line 42
    .line 43
    const/16 p2, 0xac

    .line 44
    .line 45
    if-eq p1, p2, :cond_4

    .line 46
    .line 47
    const/16 p2, 0x81

    .line 48
    .line 49
    if-eq p1, p2, :cond_3

    .line 50
    .line 51
    const/16 p2, 0x82

    .line 52
    .line 53
    if-eq p1, p2, :cond_2

    .line 54
    .line 55
    const/16 p2, 0x86

    .line 56
    .line 57
    if-eq p1, p2, :cond_0

    .line 58
    .line 59
    const/16 p2, 0x87

    .line 60
    .line 61
    if-eq p1, p2, :cond_3

    .line 62
    .line 63
    return-object v6

    .line 64
    :cond_0
    const/16 p1, 0x10

    .line 65
    .line 66
    invoke-virtual {p0, p1}, Ln2/g;->c(I)Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    new-instance v6, Ln2/v;

    .line 74
    .line 75
    new-instance p1, Ly0/j0;

    .line 76
    .line 77
    invoke-direct {p1, v2}, Ly0/j0;-><init>(I)V

    .line 78
    .line 79
    .line 80
    invoke-direct {v6, p1}, Ln2/v;-><init>(Ln2/u;)V

    .line 81
    .line 82
    .line 83
    :goto_0
    return-object v6

    .line 84
    :cond_2
    const/16 p1, 0x40

    .line 85
    .line 86
    invoke-virtual {p0, p1}, Ln2/g;->c(I)Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-nez p1, :cond_5

    .line 91
    .line 92
    return-object v6

    .line 93
    :cond_3
    new-instance p1, Ln2/t;

    .line 94
    .line 95
    new-instance p2, Ln2/b;

    .line 96
    .line 97
    check-cast v3, Ljava/lang/String;

    .line 98
    .line 99
    invoke-direct {p2, v3}, Ln2/b;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-direct {p1, p2}, Ln2/t;-><init>(Ln2/j;)V

    .line 103
    .line 104
    .line 105
    return-object p1

    .line 106
    :cond_4
    new-instance p1, Ln2/t;

    .line 107
    .line 108
    new-instance p2, Ln2/d;

    .line 109
    .line 110
    check-cast v3, Ljava/lang/String;

    .line 111
    .line 112
    invoke-direct {p2, v3}, Ln2/d;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-direct {p1, p2}, Ln2/t;-><init>(Ln2/j;)V

    .line 116
    .line 117
    .line 118
    return-object p1

    .line 119
    :cond_5
    new-instance p1, Ln2/t;

    .line 120
    .line 121
    new-instance p2, Ln2/h;

    .line 122
    .line 123
    check-cast v3, Ljava/lang/String;

    .line 124
    .line 125
    invoke-direct {p2, v3}, Ln2/h;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-direct {p1, p2}, Ln2/t;-><init>(Ln2/j;)V

    .line 129
    .line 130
    .line 131
    return-object p1

    .line 132
    :cond_6
    new-instance p1, Ln2/t;

    .line 133
    .line 134
    new-instance v0, Ln2/i;

    .line 135
    .line 136
    iget-object p2, p2, Ln2/y;->c:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast p2, Ljava/util/List;

    .line 139
    .line 140
    invoke-direct {v0, p2}, Ln2/i;-><init>(Ljava/util/List;)V

    .line 141
    .line 142
    .line 143
    invoke-direct {p1, v0}, Ln2/t;-><init>(Ln2/j;)V

    .line 144
    .line 145
    .line 146
    return-object p1

    .line 147
    :cond_7
    new-instance p1, Ln2/t;

    .line 148
    .line 149
    new-instance v0, Ln2/q;

    .line 150
    .line 151
    new-instance v1, Ln2/w;

    .line 152
    .line 153
    invoke-virtual {p0, p2}, Ln2/g;->b(Ln2/y;)Ljava/util/List;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    invoke-direct {v1, v4, p2}, Ln2/w;-><init>(ILjava/util/List;)V

    .line 158
    .line 159
    .line 160
    invoke-direct {v0, v1}, Ln2/q;-><init>(Ln2/w;)V

    .line 161
    .line 162
    .line 163
    invoke-direct {p1, v0}, Ln2/t;-><init>(Ln2/j;)V

    .line 164
    .line 165
    .line 166
    return-object p1

    .line 167
    :cond_8
    invoke-virtual {p0, v2}, Ln2/g;->c(I)Z

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    if-eqz p1, :cond_9

    .line 172
    .line 173
    goto :goto_1

    .line 174
    :cond_9
    new-instance v6, Ln2/t;

    .line 175
    .line 176
    new-instance p1, Ln2/o;

    .line 177
    .line 178
    new-instance v1, Ln2/w;

    .line 179
    .line 180
    invoke-virtual {p0, p2}, Ln2/g;->b(Ln2/y;)Ljava/util/List;

    .line 181
    .line 182
    .line 183
    move-result-object p2

    .line 184
    invoke-direct {v1, v4, p2}, Ln2/w;-><init>(ILjava/util/List;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0, v0}, Ln2/g;->c(I)Z

    .line 188
    .line 189
    .line 190
    move-result p2

    .line 191
    const/16 v0, 0x8

    .line 192
    .line 193
    invoke-virtual {p0, v0}, Ln2/g;->c(I)Z

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    invoke-direct {p1, v1, p2, v0}, Ln2/o;-><init>(Ln2/w;ZZ)V

    .line 198
    .line 199
    .line 200
    invoke-direct {v6, p1}, Ln2/t;-><init>(Ln2/j;)V

    .line 201
    .line 202
    .line 203
    :goto_1
    return-object v6

    .line 204
    :cond_a
    new-instance p1, Ln2/t;

    .line 205
    .line 206
    new-instance p2, Ln2/i;

    .line 207
    .line 208
    invoke-direct {p2}, Ln2/i;-><init>()V

    .line 209
    .line 210
    .line 211
    invoke-direct {p1, p2}, Ln2/t;-><init>(Ln2/j;)V

    .line 212
    .line 213
    .line 214
    return-object p1

    .line 215
    :cond_b
    invoke-virtual {p0, v1}, Ln2/g;->c(I)Z

    .line 216
    .line 217
    .line 218
    move-result p1

    .line 219
    if-eqz p1, :cond_c

    .line 220
    .line 221
    goto :goto_2

    .line 222
    :cond_c
    new-instance v6, Ln2/t;

    .line 223
    .line 224
    new-instance p1, Ln2/r;

    .line 225
    .line 226
    check-cast v3, Ljava/lang/String;

    .line 227
    .line 228
    invoke-direct {p1, v3}, Ln2/r;-><init>(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-direct {v6, p1}, Ln2/t;-><init>(Ln2/j;)V

    .line 232
    .line 233
    .line 234
    :goto_2
    return-object v6

    .line 235
    :cond_d
    invoke-virtual {p0, v1}, Ln2/g;->c(I)Z

    .line 236
    .line 237
    .line 238
    move-result p1

    .line 239
    if-eqz p1, :cond_e

    .line 240
    .line 241
    goto :goto_3

    .line 242
    :cond_e
    new-instance v6, Ln2/t;

    .line 243
    .line 244
    new-instance p1, Ln2/f;

    .line 245
    .line 246
    check-cast v3, Ljava/lang/String;

    .line 247
    .line 248
    invoke-direct {p1, v3, v4}, Ln2/f;-><init>(Ljava/lang/String;Z)V

    .line 249
    .line 250
    .line 251
    invoke-direct {v6, p1}, Ln2/t;-><init>(Ln2/j;)V

    .line 252
    .line 253
    .line 254
    :goto_3
    return-object v6

    .line 255
    :cond_f
    new-instance p1, Ln2/t;

    .line 256
    .line 257
    new-instance p2, Ln2/s;

    .line 258
    .line 259
    check-cast v3, Ljava/lang/String;

    .line 260
    .line 261
    invoke-direct {p2, v3}, Ln2/s;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    invoke-direct {p1, p2}, Ln2/t;-><init>(Ln2/j;)V

    .line 265
    .line 266
    .line 267
    return-object p1

    .line 268
    :cond_10
    new-instance p1, Ln2/t;

    .line 269
    .line 270
    new-instance v1, Ln2/l;

    .line 271
    .line 272
    new-instance v2, Ln2/w;

    .line 273
    .line 274
    invoke-virtual {p0, p2}, Ln2/g;->b(Ln2/y;)Ljava/util/List;

    .line 275
    .line 276
    .line 277
    move-result-object p2

    .line 278
    invoke-direct {v2, v0, p2}, Ln2/w;-><init>(ILjava/util/List;)V

    .line 279
    .line 280
    .line 281
    invoke-direct {v1, v2}, Ln2/l;-><init>(Ln2/w;)V

    .line 282
    .line 283
    .line 284
    invoke-direct {p1, v1}, Ln2/t;-><init>(Ln2/j;)V

    .line 285
    .line 286
    .line 287
    return-object p1
.end method

.method public final b(Ln2/y;)Ljava/util/List;
    .locals 14

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ln2/g;->c(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Ln2/g;->b:Ljava/util/List;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-object v1

    .line 12
    :cond_0
    new-instance v0, Lb3/h;

    .line 13
    .line 14
    iget-object p1, p1, Ln2/y;->d:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p1, [B

    .line 17
    .line 18
    invoke-direct {v0, p1}, Lb3/h;-><init>([B)V

    .line 19
    .line 20
    .line 21
    :goto_0
    iget p1, v0, Lb3/h;->b:I

    .line 22
    .line 23
    iget v2, v0, Lb3/h;->a:I

    .line 24
    .line 25
    sub-int/2addr p1, v2

    .line 26
    if-lez p1, :cond_7

    .line 27
    .line 28
    invoke-virtual {v0}, Lb3/h;->h()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    invoke-virtual {v0}, Lb3/h;->h()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    iget v3, v0, Lb3/h;->a:I

    .line 37
    .line 38
    add-int/2addr v3, v2

    .line 39
    const/16 v2, 0x86

    .line 40
    .line 41
    if-ne p1, v2, :cond_6

    .line 42
    .line 43
    new-instance p1, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lb3/h;->h()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    and-int/lit8 v1, v1, 0x1f

    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    move v4, v2

    .line 56
    :goto_1
    if-ge v4, v1, :cond_5

    .line 57
    .line 58
    const/4 v5, 0x3

    .line 59
    invoke-virtual {v0, v5}, Lb3/h;->f(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v9

    .line 63
    invoke-virtual {v0}, Lb3/h;->h()I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    and-int/lit16 v6, v5, 0x80

    .line 68
    .line 69
    const/4 v7, 0x1

    .line 70
    if-eqz v6, :cond_1

    .line 71
    .line 72
    move v6, v7

    .line 73
    goto :goto_2

    .line 74
    :cond_1
    move v6, v2

    .line 75
    :goto_2
    if-eqz v6, :cond_2

    .line 76
    .line 77
    and-int/lit8 v5, v5, 0x3f

    .line 78
    .line 79
    const-string v8, "application/cea-708"

    .line 80
    .line 81
    move v10, v5

    .line 82
    move-object v5, v8

    .line 83
    goto :goto_3

    .line 84
    :cond_2
    const-string v5, "application/cea-608"

    .line 85
    .line 86
    move v10, v7

    .line 87
    :goto_3
    invoke-virtual {v0}, Lb3/h;->h()I

    .line 88
    .line 89
    .line 90
    move-result v8

    .line 91
    int-to-byte v8, v8

    .line 92
    invoke-virtual {v0, v7}, Lb3/h;->r(I)V

    .line 93
    .line 94
    .line 95
    if-eqz v6, :cond_4

    .line 96
    .line 97
    and-int/lit8 v6, v8, 0x40

    .line 98
    .line 99
    if-eqz v6, :cond_3

    .line 100
    .line 101
    move v6, v7

    .line 102
    goto :goto_4

    .line 103
    :cond_3
    move v6, v2

    .line 104
    :goto_4
    new-array v7, v7, [B

    .line 105
    .line 106
    int-to-byte v6, v6

    .line 107
    aput-byte v6, v7, v2

    .line 108
    .line 109
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    goto :goto_5

    .line 114
    :cond_4
    const/4 v6, 0x0

    .line 115
    :goto_5
    move-object v13, v6

    .line 116
    const/4 v6, 0x0

    .line 117
    const/4 v8, 0x0

    .line 118
    const-wide v11, 0x7fffffffffffffffL

    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    move-object v7, v5

    .line 124
    invoke-static/range {v6 .. v13}, Lf2/t;->k(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IJLjava/util/List;)Lf2/t;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    add-int/lit8 v4, v4, 0x1

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_5
    move-object v1, p1

    .line 135
    :cond_6
    invoke-virtual {v0, v3}, Lb3/h;->q(I)V

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_7
    return-object v1
.end method

.method public final c(I)Z
    .locals 1

    .line 1
    iget v0, p0, Ln2/g;->a:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
