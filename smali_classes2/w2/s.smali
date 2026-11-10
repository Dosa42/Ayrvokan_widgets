.class public final Lw2/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk2/h;


# static fields
.field public static final g:Ljava/util/regex/Pattern;

.field public static final h:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lb3/l;

.field public final c:Lb3/h;

.field public d:Lk2/i;

.field public e:[B

.field public f:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "LOCAL:([^,]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lw2/s;->g:Ljava/util/regex/Pattern;

    const-string v0, "MPEGTS:(-?\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lw2/s;->h:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lb3/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw2/s;->a:Ljava/lang/String;

    iput-object p2, p0, Lw2/s;->b:Lb3/l;

    new-instance p1, Lb3/h;

    invoke-direct {p1}, Lb3/h;-><init>()V

    iput-object p1, p0, Lw2/s;->c:Lb3/h;

    const/16 p1, 0x400

    new-array p1, p1, [B

    iput-object p1, p0, Lw2/s;->e:[B

    return-void
.end method


# virtual methods
.method public final a(Lk2/f;)I
    .locals 14

    .line 1
    iget-object v0, p0, Lw2/s;->d:Lk2/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-wide v0, p1, Lk2/f;->c:J

    .line 7
    .line 8
    long-to-int v0, v0

    .line 9
    iget v1, p0, Lw2/s;->f:I

    .line 10
    .line 11
    iget-object v2, p0, Lw2/s;->e:[B

    .line 12
    .line 13
    array-length v3, v2

    .line 14
    const/4 v4, -0x1

    .line 15
    if-ne v1, v3, :cond_1

    .line 16
    .line 17
    if-eq v0, v4, :cond_0

    .line 18
    .line 19
    move v1, v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    array-length v1, v2

    .line 22
    :goto_0
    mul-int/lit8 v1, v1, 0x3

    .line 23
    .line 24
    div-int/lit8 v1, v1, 0x2

    .line 25
    .line 26
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iput-object v1, p0, Lw2/s;->e:[B

    .line 31
    .line 32
    :cond_1
    iget-object v1, p0, Lw2/s;->e:[B

    .line 33
    .line 34
    iget v2, p0, Lw2/s;->f:I

    .line 35
    .line 36
    array-length v3, v1

    .line 37
    sub-int/2addr v3, v2

    .line 38
    invoke-virtual {p1, v1, v2, v3}, Lk2/f;->c([BII)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eq p1, v4, :cond_3

    .line 43
    .line 44
    iget v1, p0, Lw2/s;->f:I

    .line 45
    .line 46
    add-int/2addr v1, p1

    .line 47
    iput v1, p0, Lw2/s;->f:I

    .line 48
    .line 49
    if-eq v0, v4, :cond_2

    .line 50
    .line 51
    if-eq v1, v0, :cond_3

    .line 52
    .line 53
    :cond_2
    const/4 p1, 0x0

    .line 54
    return p1

    .line 55
    :cond_3
    new-instance p1, Lb3/h;

    .line 56
    .line 57
    iget-object v0, p0, Lw2/s;->e:[B

    .line 58
    .line 59
    invoke-direct {p1, v0}, Lb3/h;-><init>([B)V

    .line 60
    .line 61
    .line 62
    sget-object v0, Ly2/b;->a:Ljava/util/regex/Pattern;

    .line 63
    .line 64
    iget v0, p1, Lb3/h;->a:I

    .line 65
    .line 66
    invoke-static {p1}, Ly2/b;->a(Lb3/h;)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_b

    .line 71
    .line 72
    invoke-virtual {p1}, Lb3/h;->c()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    const-wide/16 v1, 0x0

    .line 77
    .line 78
    move-wide v5, v1

    .line 79
    move-wide v7, v5

    .line 80
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    const-wide/32 v9, 0xf4240

    .line 85
    .line 86
    .line 87
    const-wide/32 v11, 0x15f90

    .line 88
    .line 89
    .line 90
    const/4 v13, 0x1

    .line 91
    if-nez v3, :cond_7

    .line 92
    .line 93
    const-string v3, "X-TIMESTAMP-MAP"

    .line 94
    .line 95
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    if-eqz v3, :cond_6

    .line 100
    .line 101
    sget-object v3, Lw2/s;->g:Ljava/util/regex/Pattern;

    .line 102
    .line 103
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    if-eqz v5, :cond_5

    .line 112
    .line 113
    sget-object v5, Lw2/s;->h:Ljava/util/regex/Pattern;

    .line 114
    .line 115
    invoke-virtual {v5, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    .line 120
    .line 121
    .line 122
    move-result v6

    .line 123
    if-eqz v6, :cond_4

    .line 124
    .line 125
    invoke-virtual {v3, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-static {v0}, Ly2/b;->b(Ljava/lang/String;)J

    .line 130
    .line 131
    .line 132
    move-result-wide v7

    .line 133
    invoke-virtual {v5, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 138
    .line 139
    .line 140
    move-result-wide v5

    .line 141
    mul-long/2addr v5, v9

    .line 142
    div-long/2addr v5, v11

    .line 143
    goto :goto_2

    .line 144
    :cond_4
    new-instance p1, Lf2/z;

    .line 145
    .line 146
    const-string v1, "X-TIMESTAMP-MAP doesn\'t contain media timestamp: "

    .line 147
    .line 148
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-direct {p1, v0}, Lf2/z;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    throw p1

    .line 156
    :cond_5
    new-instance p1, Lf2/z;

    .line 157
    .line 158
    const-string v1, "X-TIMESTAMP-MAP doesn\'t contain local timestamp: "

    .line 159
    .line 160
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-direct {p1, v0}, Lf2/z;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw p1

    .line 168
    :cond_6
    :goto_2
    invoke-virtual {p1}, Lb3/h;->c()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    goto :goto_1

    .line 173
    :cond_7
    invoke-virtual {p1}, Lb3/h;->c()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    if-eqz v0, :cond_9

    .line 178
    .line 179
    sget-object v3, Ly2/b;->a:Ljava/util/regex/Pattern;

    .line 180
    .line 181
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    .line 186
    .line 187
    .line 188
    move-result v3

    .line 189
    if-eqz v3, :cond_8

    .line 190
    .line 191
    :goto_3
    invoke-virtual {p1}, Lb3/h;->c()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    if-eqz v0, :cond_7

    .line 196
    .line 197
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    if-nez v0, :cond_7

    .line 202
    .line 203
    goto :goto_3

    .line 204
    :cond_8
    sget-object v3, Ly2/a;->a:Ljava/util/regex/Pattern;

    .line 205
    .line 206
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 211
    .line 212
    .line 213
    move-result v3

    .line 214
    if-eqz v3, :cond_7

    .line 215
    .line 216
    goto :goto_4

    .line 217
    :cond_9
    const/4 v0, 0x0

    .line 218
    :goto_4
    if-nez v0, :cond_a

    .line 219
    .line 220
    invoke-virtual {p0, v1, v2}, Lw2/s;->d(J)Lk2/o;

    .line 221
    .line 222
    .line 223
    goto :goto_5

    .line 224
    :cond_a
    invoke-virtual {v0, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    invoke-static {p1}, Ly2/b;->b(Ljava/lang/String;)J

    .line 229
    .line 230
    .line 231
    move-result-wide v0

    .line 232
    add-long/2addr v5, v0

    .line 233
    sub-long/2addr v5, v7

    .line 234
    mul-long/2addr v5, v11

    .line 235
    div-long/2addr v5, v9

    .line 236
    iget-object p1, p0, Lw2/s;->b:Lb3/l;

    .line 237
    .line 238
    invoke-virtual {p1, v5, v6}, Lb3/l;->b(J)J

    .line 239
    .line 240
    .line 241
    move-result-wide v8

    .line 242
    sub-long v0, v8, v0

    .line 243
    .line 244
    invoke-virtual {p0, v0, v1}, Lw2/s;->d(J)Lk2/o;

    .line 245
    .line 246
    .line 247
    move-result-object v7

    .line 248
    iget-object p1, p0, Lw2/s;->e:[B

    .line 249
    .line 250
    iget v0, p0, Lw2/s;->f:I

    .line 251
    .line 252
    iget-object v1, p0, Lw2/s;->c:Lb3/h;

    .line 253
    .line 254
    invoke-virtual {v1, p1, v0}, Lb3/h;->o([BI)V

    .line 255
    .line 256
    .line 257
    iget p1, p0, Lw2/s;->f:I

    .line 258
    .line 259
    invoke-interface {v7, p1, v1}, Lk2/o;->d(ILb3/h;)V

    .line 260
    .line 261
    .line 262
    const/4 v10, 0x1

    .line 263
    iget v11, p0, Lw2/s;->f:I

    .line 264
    .line 265
    const/4 v12, 0x0

    .line 266
    const/4 v13, 0x0

    .line 267
    invoke-interface/range {v7 .. v13}, Lk2/o;->b(JIIILk2/n;)V

    .line 268
    .line 269
    .line 270
    :goto_5
    return v4

    .line 271
    :cond_b
    invoke-virtual {p1, v0}, Lb3/h;->q(I)V

    .line 272
    .line 273
    .line 274
    new-instance v0, Lf2/z;

    .line 275
    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    .line 277
    .line 278
    const-string v2, "Expected WEBVTT. Got "

    .line 279
    .line 280
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {p1}, Lb3/h;->c()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    invoke-direct {v0, p1}, Lf2/z;-><init>(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    throw v0
.end method

.method public final b(Lw2/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lw2/s;->d:Lk2/i;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final c(Lk2/f;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lw2/s;->e:[B

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-virtual {p1, v0, v1, v2, v1}, Lk2/f;->b([BIIZ)Z

    iget-object v0, p0, Lw2/s;->e:[B

    iget-object v3, p0, Lw2/s;->c:Lb3/h;

    invoke-virtual {v3, v0, v2}, Lb3/h;->o([BI)V

    invoke-static {v3}, Ly2/b;->a(Lb3/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object v0, p0, Lw2/s;->e:[B

    const/4 v4, 0x3

    invoke-virtual {p1, v0, v2, v4, v1}, Lk2/f;->b([BIIZ)Z

    iget-object p1, p0, Lw2/s;->e:[B

    const/16 v0, 0x9

    invoke-virtual {v3, p1, v0}, Lb3/h;->o([BI)V

    invoke-static {v3}, Ly2/b;->a(Lb3/h;)Z

    move-result p1

    return p1
.end method

.method public final d(J)Lk2/o;
    .locals 9

    .line 1
    iget-object v0, p0, Lw2/s;->d:Lk2/i;

    .line 2
    .line 3
    check-cast v0, Lw2/p;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x3

    .line 7
    invoke-virtual {v0, v1, v2}, Lw2/p;->C(II)Lk2/o;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    const-string v2, "text/vtt"

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    iget-object v4, p0, Lw2/s;->a:Ljava/lang/String;

    .line 16
    .line 17
    const/4 v5, -0x1

    .line 18
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v8

    .line 22
    move-wide v6, p1

    .line 23
    invoke-static/range {v1 .. v8}, Lf2/t;->k(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IJLjava/util/List;)Lf2/t;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {v0, p1}, Lk2/o;->c(Lf2/t;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lw2/s;->d:Lk2/i;

    .line 31
    .line 32
    check-cast p1, Lw2/p;

    .line 33
    .line 34
    invoke-virtual {p1}, Lw2/p;->j()V

    .line 35
    .line 36
    .line 37
    return-object v0
.end method
