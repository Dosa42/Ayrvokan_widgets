.class public final Lw2/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk2/o;


# instance fields
.field public A:Z

.field public B:Lf2/t;

.field public C:J

.field public D:Z

.field public final E:Ljava/util/Map;

.field public F:Lj2/b;

.field public final a:Lt2/p;

.field public final b:Lt2/q;

.field public final c:Lj2/d;

.field public d:Lt2/r;

.field public e:Lf2/t;

.field public f:Lh/a;

.field public g:I

.field public h:[I

.field public i:[J

.field public j:[I

.field public k:[I

.field public l:[J

.field public m:[Lk2/n;

.field public n:[Lf2/t;

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:J

.field public t:J

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Lf2/t;

.field public y:Lf2/t;

.field public z:I


# direct methods
.method public constructor <init>(La3/b;Lj2/d;Ljava/util/Map;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lt2/p;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lt2/p;-><init>(La3/b;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lw2/o;->a:Lt2/p;

    .line 10
    .line 11
    iput-object p2, p0, Lw2/o;->c:Lj2/d;

    .line 12
    .line 13
    new-instance p1, Lt2/q;

    .line 14
    .line 15
    invoke-direct {p1}, Lt2/q;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lw2/o;->b:Lt2/q;

    .line 19
    .line 20
    const/16 p1, 0x3e8

    .line 21
    .line 22
    iput p1, p0, Lw2/o;->g:I

    .line 23
    .line 24
    new-array p2, p1, [I

    .line 25
    .line 26
    iput-object p2, p0, Lw2/o;->h:[I

    .line 27
    .line 28
    new-array p2, p1, [J

    .line 29
    .line 30
    iput-object p2, p0, Lw2/o;->i:[J

    .line 31
    .line 32
    new-array p2, p1, [J

    .line 33
    .line 34
    iput-object p2, p0, Lw2/o;->l:[J

    .line 35
    .line 36
    new-array p2, p1, [I

    .line 37
    .line 38
    iput-object p2, p0, Lw2/o;->k:[I

    .line 39
    .line 40
    new-array p2, p1, [I

    .line 41
    .line 42
    iput-object p2, p0, Lw2/o;->j:[I

    .line 43
    .line 44
    new-array p2, p1, [Lk2/n;

    .line 45
    .line 46
    iput-object p2, p0, Lw2/o;->m:[Lk2/n;

    .line 47
    .line 48
    new-array p1, p1, [Lf2/t;

    .line 49
    .line 50
    iput-object p1, p0, Lw2/o;->n:[Lf2/t;

    .line 51
    .line 52
    const-wide/high16 p1, -0x8000000000000000L

    .line 53
    .line 54
    iput-wide p1, p0, Lw2/o;->s:J

    .line 55
    .line 56
    iput-wide p1, p0, Lw2/o;->t:J

    .line 57
    .line 58
    const/4 p1, 0x1

    .line 59
    iput-boolean p1, p0, Lw2/o;->w:Z

    .line 60
    .line 61
    iput-boolean p1, p0, Lw2/o;->v:Z

    .line 62
    .line 63
    iput-object p3, p0, Lw2/o;->E:Ljava/util/Map;

    .line 64
    .line 65
    return-void
.end method


# virtual methods
.method public final a(Lk2/f;IZ)I
    .locals 8

    .line 1
    iget-object v0, p0, Lw2/o;->a:Lt2/p;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Lt2/p;->b(I)I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    iget-object v1, v0, Lt2/p;->f:Lt2/o;

    .line 8
    .line 9
    iget-object v2, v1, Lt2/o;->d:Ljava/lang/Object;

    .line 10
    .line 11
    move-object v3, v2

    .line 12
    check-cast v3, La3/a;

    .line 13
    .line 14
    iget-object v3, v3, La3/a;->a:[B

    .line 15
    .line 16
    iget-wide v4, v0, Lt2/p;->g:J

    .line 17
    .line 18
    iget-wide v6, v1, Lt2/o;->b:J

    .line 19
    .line 20
    sub-long/2addr v4, v6

    .line 21
    long-to-int v1, v4

    .line 22
    check-cast v2, La3/a;

    .line 23
    .line 24
    iget v2, v2, La3/a;->b:I

    .line 25
    .line 26
    add-int/2addr v1, v2

    .line 27
    invoke-virtual {p1, v3, v1, p2}, Lk2/f;->c([BII)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    const/4 p2, -0x1

    .line 32
    if-ne p1, p2, :cond_1

    .line 33
    .line 34
    if-eqz p3, :cond_0

    .line 35
    .line 36
    move p1, p2

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    .line 39
    .line 40
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 41
    .line 42
    .line 43
    throw p1

    .line 44
    :cond_1
    iget-wide p2, v0, Lt2/p;->g:J

    .line 45
    .line 46
    int-to-long v1, p1

    .line 47
    add-long/2addr p2, v1

    .line 48
    iput-wide p2, v0, Lt2/p;->g:J

    .line 49
    .line 50
    iget-object v1, v0, Lt2/p;->f:Lt2/o;

    .line 51
    .line 52
    iget-wide v2, v1, Lt2/o;->c:J

    .line 53
    .line 54
    cmp-long p2, p2, v2

    .line 55
    .line 56
    if-nez p2, :cond_2

    .line 57
    .line 58
    iget-object p2, v1, Lt2/o;->e:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast p2, Lt2/o;

    .line 61
    .line 62
    iput-object p2, v0, Lt2/p;->f:Lt2/o;

    .line 63
    .line 64
    :cond_2
    :goto_0
    return p1
.end method

.method public final b(JIIILk2/n;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lw2/o;->A:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lw2/o;->B:Lf2/t;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lw2/o;->c(Lf2/t;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-wide v0, p0, Lw2/o;->C:J

    .line 11
    .line 12
    add-long/2addr p1, v0

    .line 13
    iget-boolean v0, p0, Lw2/o;->D:Z

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v0, :cond_7

    .line 18
    .line 19
    and-int/lit8 v0, p3, 0x1

    .line 20
    .line 21
    if-eqz v0, :cond_d

    .line 22
    .line 23
    monitor-enter p0

    .line 24
    :try_start_0
    iget v0, p0, Lw2/o;->o:I

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    iget-wide v3, p0, Lw2/o;->s:J

    .line 29
    .line 30
    cmp-long v0, p1, v3

    .line 31
    .line 32
    if-lez v0, :cond_2

    .line 33
    .line 34
    move v0, v1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-wide v3, p0, Lw2/o;->s:J

    .line 37
    .line 38
    iget v0, p0, Lw2/o;->r:I

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Lw2/o;->h(I)J

    .line 41
    .line 42
    .line 43
    move-result-wide v5

    .line 44
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 45
    .line 46
    .line 47
    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    cmp-long v0, v3, p1

    .line 49
    .line 50
    if-ltz v0, :cond_3

    .line 51
    .line 52
    :cond_2
    move v0, v2

    .line 53
    :goto_0
    monitor-exit p0

    .line 54
    goto :goto_2

    .line 55
    :cond_3
    :try_start_1
    iget v0, p0, Lw2/o;->o:I

    .line 56
    .line 57
    add-int/lit8 v3, v0, -0x1

    .line 58
    .line 59
    invoke-virtual {p0, v3}, Lw2/o;->i(I)I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    :cond_4
    :goto_1
    iget v4, p0, Lw2/o;->r:I

    .line 64
    .line 65
    if-le v0, v4, :cond_5

    .line 66
    .line 67
    iget-object v4, p0, Lw2/o;->l:[J

    .line 68
    .line 69
    aget-wide v5, v4, v3

    .line 70
    .line 71
    cmp-long v4, v5, p1

    .line 72
    .line 73
    if-ltz v4, :cond_5

    .line 74
    .line 75
    add-int/lit8 v0, v0, -0x1

    .line 76
    .line 77
    add-int/lit8 v3, v3, -0x1

    .line 78
    .line 79
    const/4 v4, -0x1

    .line 80
    if-ne v3, v4, :cond_4

    .line 81
    .line 82
    iget v3, p0, Lw2/o;->g:I

    .line 83
    .line 84
    sub-int/2addr v3, v1

    .line 85
    goto :goto_1

    .line 86
    :cond_5
    iget v3, p0, Lw2/o;->p:I

    .line 87
    .line 88
    add-int/2addr v3, v0

    .line 89
    invoke-virtual {p0, v3}, Lw2/o;->f(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    .line 91
    .line 92
    monitor-exit p0

    .line 93
    move v0, v1

    .line 94
    :goto_2
    if-nez v0, :cond_6

    .line 95
    .line 96
    goto/16 :goto_7

    .line 97
    .line 98
    :cond_6
    iput-boolean v2, p0, Lw2/o;->D:Z

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :catchall_0
    move-exception p1

    .line 102
    monitor-exit p0

    .line 103
    throw p1

    .line 104
    :cond_7
    :goto_3
    iget-object v0, p0, Lw2/o;->a:Lt2/p;

    .line 105
    .line 106
    iget-wide v3, v0, Lt2/p;->g:J

    .line 107
    .line 108
    int-to-long v5, p4

    .line 109
    sub-long/2addr v3, v5

    .line 110
    int-to-long v5, p5

    .line 111
    sub-long/2addr v3, v5

    .line 112
    monitor-enter p0

    .line 113
    :try_start_2
    iget-boolean p5, p0, Lw2/o;->v:Z

    .line 114
    .line 115
    if-eqz p5, :cond_9

    .line 116
    .line 117
    and-int/lit8 p5, p3, 0x1

    .line 118
    .line 119
    if-nez p5, :cond_8

    .line 120
    .line 121
    goto/16 :goto_6

    .line 122
    .line 123
    :cond_8
    iput-boolean v2, p0, Lw2/o;->v:Z

    .line 124
    .line 125
    :cond_9
    iget-boolean p5, p0, Lw2/o;->w:Z

    .line 126
    .line 127
    if-nez p5, :cond_a

    .line 128
    .line 129
    move p5, v1

    .line 130
    goto :goto_4

    .line 131
    :cond_a
    move p5, v2

    .line 132
    :goto_4
    invoke-static {p5}, Lcom/google/android/gms/internal/play_billing/i0;->m(Z)V

    .line 133
    .line 134
    .line 135
    const/high16 p5, 0x20000000

    .line 136
    .line 137
    and-int/2addr p5, p3

    .line 138
    if-eqz p5, :cond_b

    .line 139
    .line 140
    move p5, v1

    .line 141
    goto :goto_5

    .line 142
    :cond_b
    move p5, v2

    .line 143
    :goto_5
    iput-boolean p5, p0, Lw2/o;->u:Z

    .line 144
    .line 145
    iget-wide v5, p0, Lw2/o;->t:J

    .line 146
    .line 147
    invoke-static {v5, v6, p1, p2}, Ljava/lang/Math;->max(JJ)J

    .line 148
    .line 149
    .line 150
    move-result-wide v5

    .line 151
    iput-wide v5, p0, Lw2/o;->t:J

    .line 152
    .line 153
    iget p5, p0, Lw2/o;->o:I

    .line 154
    .line 155
    invoke-virtual {p0, p5}, Lw2/o;->i(I)I

    .line 156
    .line 157
    .line 158
    move-result p5

    .line 159
    iget-object v0, p0, Lw2/o;->l:[J

    .line 160
    .line 161
    aput-wide p1, v0, p5

    .line 162
    .line 163
    iget-object p1, p0, Lw2/o;->i:[J

    .line 164
    .line 165
    aput-wide v3, p1, p5

    .line 166
    .line 167
    iget-object p2, p0, Lw2/o;->j:[I

    .line 168
    .line 169
    aput p4, p2, p5

    .line 170
    .line 171
    iget-object p2, p0, Lw2/o;->k:[I

    .line 172
    .line 173
    aput p3, p2, p5

    .line 174
    .line 175
    iget-object p2, p0, Lw2/o;->m:[Lk2/n;

    .line 176
    .line 177
    aput-object p6, p2, p5

    .line 178
    .line 179
    iget-object p2, p0, Lw2/o;->n:[Lf2/t;

    .line 180
    .line 181
    iget-object p3, p0, Lw2/o;->x:Lf2/t;

    .line 182
    .line 183
    aput-object p3, p2, p5

    .line 184
    .line 185
    iget-object p2, p0, Lw2/o;->h:[I

    .line 186
    .line 187
    iget p4, p0, Lw2/o;->z:I

    .line 188
    .line 189
    aput p4, p2, p5

    .line 190
    .line 191
    iput-object p3, p0, Lw2/o;->y:Lf2/t;

    .line 192
    .line 193
    iget p2, p0, Lw2/o;->o:I

    .line 194
    .line 195
    add-int/2addr p2, v1

    .line 196
    iput p2, p0, Lw2/o;->o:I

    .line 197
    .line 198
    iget p3, p0, Lw2/o;->g:I

    .line 199
    .line 200
    if-ne p2, p3, :cond_c

    .line 201
    .line 202
    add-int/lit16 p2, p3, 0x3e8

    .line 203
    .line 204
    new-array p4, p2, [I

    .line 205
    .line 206
    new-array p5, p2, [J

    .line 207
    .line 208
    new-array p6, p2, [J

    .line 209
    .line 210
    new-array v0, p2, [I

    .line 211
    .line 212
    new-array v1, p2, [I

    .line 213
    .line 214
    new-array v3, p2, [Lk2/n;

    .line 215
    .line 216
    new-array v4, p2, [Lf2/t;

    .line 217
    .line 218
    iget v5, p0, Lw2/o;->q:I

    .line 219
    .line 220
    sub-int/2addr p3, v5

    .line 221
    invoke-static {p1, v5, p5, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    .line 223
    .line 224
    iget-object p1, p0, Lw2/o;->l:[J

    .line 225
    .line 226
    iget v5, p0, Lw2/o;->q:I

    .line 227
    .line 228
    invoke-static {p1, v5, p6, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    .line 230
    .line 231
    iget-object p1, p0, Lw2/o;->k:[I

    .line 232
    .line 233
    iget v5, p0, Lw2/o;->q:I

    .line 234
    .line 235
    invoke-static {p1, v5, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 236
    .line 237
    .line 238
    iget-object p1, p0, Lw2/o;->j:[I

    .line 239
    .line 240
    iget v5, p0, Lw2/o;->q:I

    .line 241
    .line 242
    invoke-static {p1, v5, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    .line 244
    .line 245
    iget-object p1, p0, Lw2/o;->m:[Lk2/n;

    .line 246
    .line 247
    iget v5, p0, Lw2/o;->q:I

    .line 248
    .line 249
    invoke-static {p1, v5, v3, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 250
    .line 251
    .line 252
    iget-object p1, p0, Lw2/o;->n:[Lf2/t;

    .line 253
    .line 254
    iget v5, p0, Lw2/o;->q:I

    .line 255
    .line 256
    invoke-static {p1, v5, v4, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 257
    .line 258
    .line 259
    iget-object p1, p0, Lw2/o;->h:[I

    .line 260
    .line 261
    iget v5, p0, Lw2/o;->q:I

    .line 262
    .line 263
    invoke-static {p1, v5, p4, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 264
    .line 265
    .line 266
    iget p1, p0, Lw2/o;->q:I

    .line 267
    .line 268
    iget-object v5, p0, Lw2/o;->i:[J

    .line 269
    .line 270
    invoke-static {v5, v2, p5, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 271
    .line 272
    .line 273
    iget-object v5, p0, Lw2/o;->l:[J

    .line 274
    .line 275
    invoke-static {v5, v2, p6, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    .line 277
    .line 278
    iget-object v5, p0, Lw2/o;->k:[I

    .line 279
    .line 280
    invoke-static {v5, v2, v0, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 281
    .line 282
    .line 283
    iget-object v5, p0, Lw2/o;->j:[I

    .line 284
    .line 285
    invoke-static {v5, v2, v1, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 286
    .line 287
    .line 288
    iget-object v5, p0, Lw2/o;->m:[Lk2/n;

    .line 289
    .line 290
    invoke-static {v5, v2, v3, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 291
    .line 292
    .line 293
    iget-object v5, p0, Lw2/o;->n:[Lf2/t;

    .line 294
    .line 295
    invoke-static {v5, v2, v4, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 296
    .line 297
    .line 298
    iget-object v5, p0, Lw2/o;->h:[I

    .line 299
    .line 300
    invoke-static {v5, v2, p4, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 301
    .line 302
    .line 303
    iput-object p5, p0, Lw2/o;->i:[J

    .line 304
    .line 305
    iput-object p6, p0, Lw2/o;->l:[J

    .line 306
    .line 307
    iput-object v0, p0, Lw2/o;->k:[I

    .line 308
    .line 309
    iput-object v1, p0, Lw2/o;->j:[I

    .line 310
    .line 311
    iput-object v3, p0, Lw2/o;->m:[Lk2/n;

    .line 312
    .line 313
    iput-object v4, p0, Lw2/o;->n:[Lf2/t;

    .line 314
    .line 315
    iput-object p4, p0, Lw2/o;->h:[I

    .line 316
    .line 317
    iput v2, p0, Lw2/o;->q:I

    .line 318
    .line 319
    iput p2, p0, Lw2/o;->g:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 320
    .line 321
    :cond_c
    :goto_6
    monitor-exit p0

    .line 322
    :cond_d
    :goto_7
    return-void

    .line 323
    :catchall_1
    move-exception p1

    .line 324
    monitor-exit p0

    .line 325
    throw p1
.end method

.method public final c(Lf2/t;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lw2/o;->F:Lj2/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p1, Lf2/t;->l:Lj2/b;

    .line 7
    .line 8
    :goto_0
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lw2/o;->E:Ljava/util/Map;

    .line 11
    .line 12
    iget-object v2, v0, Lj2/b;->c:Ljava/lang/String;

    .line 13
    .line 14
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lj2/b;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    move-object v0, v1

    .line 23
    :cond_1
    iget-object v1, p1, Lf2/t;->g:Lp2/b;

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    const/4 v3, 0x0

    .line 27
    if-nez v1, :cond_2

    .line 28
    .line 29
    goto :goto_3

    .line 30
    :cond_2
    iget-object v4, v1, Lp2/b;->a:[Lp2/a;

    .line 31
    .line 32
    array-length v5, v4

    .line 33
    move v6, v3

    .line 34
    :goto_1
    const/4 v7, -0x1

    .line 35
    if-ge v6, v5, :cond_4

    .line 36
    .line 37
    aget-object v8, v4, v6

    .line 38
    .line 39
    instance-of v9, v8, Lr2/m;

    .line 40
    .line 41
    if-eqz v9, :cond_3

    .line 42
    .line 43
    check-cast v8, Lr2/m;

    .line 44
    .line 45
    const-string v9, "com.apple.streaming.transportStreamTimestamp"

    .line 46
    .line 47
    iget-object v8, v8, Lr2/m;->b:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v8

    .line 53
    if-eqz v8, :cond_3

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_4
    move v6, v7

    .line 60
    :goto_2
    if-ne v6, v7, :cond_5

    .line 61
    .line 62
    goto :goto_6

    .line 63
    :cond_5
    if-ne v5, v2, :cond_6

    .line 64
    .line 65
    :goto_3
    const/4 v1, 0x0

    .line 66
    goto :goto_6

    .line 67
    :cond_6
    add-int/lit8 v1, v5, -0x1

    .line 68
    .line 69
    new-array v1, v1, [Lp2/a;

    .line 70
    .line 71
    move v7, v3

    .line 72
    :goto_4
    if-ge v7, v5, :cond_9

    .line 73
    .line 74
    if-eq v7, v6, :cond_8

    .line 75
    .line 76
    if-ge v7, v6, :cond_7

    .line 77
    .line 78
    move v8, v7

    .line 79
    goto :goto_5

    .line 80
    :cond_7
    add-int/lit8 v8, v7, -0x1

    .line 81
    .line 82
    :goto_5
    aget-object v9, v4, v7

    .line 83
    .line 84
    aput-object v9, v1, v8

    .line 85
    .line 86
    :cond_8
    add-int/lit8 v7, v7, 0x1

    .line 87
    .line 88
    goto :goto_4

    .line 89
    :cond_9
    new-instance v4, Lp2/b;

    .line 90
    .line 91
    invoke-direct {v4, v1}, Lp2/b;-><init>([Lp2/a;)V

    .line 92
    .line 93
    .line 94
    move-object v1, v4

    .line 95
    :goto_6
    invoke-virtual {p1, v0, v1}, Lf2/t;->a(Lj2/b;Lp2/b;)Lf2/t;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    iget-wide v4, p0, Lw2/o;->C:J

    .line 100
    .line 101
    const-wide/16 v6, 0x0

    .line 102
    .line 103
    cmp-long v1, v4, v6

    .line 104
    .line 105
    if-eqz v1, :cond_a

    .line 106
    .line 107
    iget-wide v6, v0, Lf2/t;->m:J

    .line 108
    .line 109
    const-wide v8, 0x7fffffffffffffffL

    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    cmp-long v1, v6, v8

    .line 115
    .line 116
    if-eqz v1, :cond_a

    .line 117
    .line 118
    add-long/2addr v6, v4

    .line 119
    invoke-virtual {v0, v6, v7}, Lf2/t;->c(J)Lf2/t;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    :cond_a
    iput-boolean v3, p0, Lw2/o;->A:Z

    .line 124
    .line 125
    iput-object p1, p0, Lw2/o;->B:Lf2/t;

    .line 126
    .line 127
    monitor-enter p0

    .line 128
    :try_start_0
    iput-boolean v3, p0, Lw2/o;->w:Z

    .line 129
    .line 130
    iget-object p1, p0, Lw2/o;->x:Lf2/t;

    .line 131
    .line 132
    invoke-static {v0, p1}, Lb3/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    if-eqz p1, :cond_b

    .line 137
    .line 138
    monitor-exit p0

    .line 139
    move v2, v3

    .line 140
    goto :goto_7

    .line 141
    :cond_b
    :try_start_1
    iget-object p1, p0, Lw2/o;->y:Lf2/t;

    .line 142
    .line 143
    invoke-static {v0, p1}, Lb3/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    if-eqz p1, :cond_c

    .line 148
    .line 149
    iget-object v0, p0, Lw2/o;->y:Lf2/t;

    .line 150
    .line 151
    :cond_c
    iput-object v0, p0, Lw2/o;->x:Lf2/t;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    .line 153
    monitor-exit p0

    .line 154
    :goto_7
    iget-object p1, p0, Lw2/o;->d:Lt2/r;

    .line 155
    .line 156
    if-eqz p1, :cond_d

    .line 157
    .line 158
    if-eqz v2, :cond_d

    .line 159
    .line 160
    check-cast p1, Lw2/p;

    .line 161
    .line 162
    iget-object v0, p1, Lw2/p;->u:Landroid/os/Handler;

    .line 163
    .line 164
    iget-object p1, p1, Lw2/p;->s:Lw2/m;

    .line 165
    .line 166
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 167
    .line 168
    .line 169
    :cond_d
    return-void

    .line 170
    :catchall_0
    move-exception p1

    .line 171
    monitor-exit p0

    .line 172
    throw p1
.end method

.method public final d(ILb3/h;)V
    .locals 9

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lw2/o;->a:Lt2/p;

    .line 2
    .line 3
    if-lez p1, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lt2/p;->b(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, v0, Lt2/p;->f:Lt2/o;

    .line 10
    .line 11
    iget-object v3, v2, Lt2/o;->d:Ljava/lang/Object;

    .line 12
    .line 13
    move-object v4, v3

    .line 14
    check-cast v4, La3/a;

    .line 15
    .line 16
    iget-object v4, v4, La3/a;->a:[B

    .line 17
    .line 18
    iget-wide v5, v0, Lt2/p;->g:J

    .line 19
    .line 20
    iget-wide v7, v2, Lt2/o;->b:J

    .line 21
    .line 22
    sub-long/2addr v5, v7

    .line 23
    long-to-int v2, v5

    .line 24
    check-cast v3, La3/a;

    .line 25
    .line 26
    iget v3, v3, La3/a;->b:I

    .line 27
    .line 28
    add-int/2addr v2, v3

    .line 29
    invoke-virtual {p2, v4, v2, v1}, Lb3/h;->a([BII)V

    .line 30
    .line 31
    .line 32
    sub-int/2addr p1, v1

    .line 33
    iget-wide v2, v0, Lt2/p;->g:J

    .line 34
    .line 35
    int-to-long v4, v1

    .line 36
    add-long/2addr v2, v4

    .line 37
    iput-wide v2, v0, Lt2/p;->g:J

    .line 38
    .line 39
    iget-object v1, v0, Lt2/p;->f:Lt2/o;

    .line 40
    .line 41
    iget-wide v4, v1, Lt2/o;->c:J

    .line 42
    .line 43
    cmp-long v2, v2, v4

    .line 44
    .line 45
    if-nez v2, :cond_0

    .line 46
    .line 47
    iget-object v1, v1, Lt2/o;->e:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v1, Lt2/o;

    .line 50
    .line 51
    iput-object v1, v0, Lt2/p;->f:Lt2/o;

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final e(I)J
    .locals 4

    .line 1
    iget-wide v0, p0, Lw2/o;->s:J

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lw2/o;->h(I)J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iput-wide v0, p0, Lw2/o;->s:J

    .line 12
    .line 13
    iget v0, p0, Lw2/o;->o:I

    .line 14
    .line 15
    sub-int/2addr v0, p1

    .line 16
    iput v0, p0, Lw2/o;->o:I

    .line 17
    .line 18
    iget v1, p0, Lw2/o;->p:I

    .line 19
    .line 20
    add-int/2addr v1, p1

    .line 21
    iput v1, p0, Lw2/o;->p:I

    .line 22
    .line 23
    iget v1, p0, Lw2/o;->q:I

    .line 24
    .line 25
    add-int/2addr v1, p1

    .line 26
    iput v1, p0, Lw2/o;->q:I

    .line 27
    .line 28
    iget v2, p0, Lw2/o;->g:I

    .line 29
    .line 30
    if-lt v1, v2, :cond_0

    .line 31
    .line 32
    sub-int/2addr v1, v2

    .line 33
    iput v1, p0, Lw2/o;->q:I

    .line 34
    .line 35
    :cond_0
    iget v1, p0, Lw2/o;->r:I

    .line 36
    .line 37
    sub-int/2addr v1, p1

    .line 38
    iput v1, p0, Lw2/o;->r:I

    .line 39
    .line 40
    if-gez v1, :cond_1

    .line 41
    .line 42
    const/4 p1, 0x0

    .line 43
    iput p1, p0, Lw2/o;->r:I

    .line 44
    .line 45
    :cond_1
    if-nez v0, :cond_3

    .line 46
    .line 47
    iget p1, p0, Lw2/o;->q:I

    .line 48
    .line 49
    if-nez p1, :cond_2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    move v2, p1

    .line 53
    :goto_0
    add-int/lit8 v2, v2, -0x1

    .line 54
    .line 55
    iget-object p1, p0, Lw2/o;->i:[J

    .line 56
    .line 57
    aget-wide v0, p1, v2

    .line 58
    .line 59
    iget-object p1, p0, Lw2/o;->j:[I

    .line 60
    .line 61
    aget p1, p1, v2

    .line 62
    .line 63
    int-to-long v2, p1

    .line 64
    add-long/2addr v0, v2

    .line 65
    goto :goto_1

    .line 66
    :cond_3
    iget-object p1, p0, Lw2/o;->i:[J

    .line 67
    .line 68
    iget v0, p0, Lw2/o;->q:I

    .line 69
    .line 70
    aget-wide v0, p1, v0

    .line 71
    .line 72
    :goto_1
    return-wide v0
.end method

.method public final f(I)V
    .locals 7

    .line 1
    iget v0, p0, Lw2/o;->p:I

    .line 2
    .line 3
    iget v1, p0, Lw2/o;->o:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    sub-int/2addr v0, p1

    .line 7
    const/4 p1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-ltz v0, :cond_0

    .line 10
    .line 11
    iget v3, p0, Lw2/o;->r:I

    .line 12
    .line 13
    sub-int/2addr v1, v3

    .line 14
    if-gt v0, v1, :cond_0

    .line 15
    .line 16
    move v1, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v1, p1

    .line 19
    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/i0;->g(Z)V

    .line 20
    .line 21
    .line 22
    iget v1, p0, Lw2/o;->o:I

    .line 23
    .line 24
    sub-int/2addr v1, v0

    .line 25
    iput v1, p0, Lw2/o;->o:I

    .line 26
    .line 27
    iget-wide v3, p0, Lw2/o;->s:J

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lw2/o;->h(I)J

    .line 30
    .line 31
    .line 32
    move-result-wide v5

    .line 33
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 34
    .line 35
    .line 36
    move-result-wide v3

    .line 37
    iput-wide v3, p0, Lw2/o;->t:J

    .line 38
    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    iget-boolean v0, p0, Lw2/o;->u:Z

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    move p1, v2

    .line 46
    :cond_1
    iput-boolean p1, p0, Lw2/o;->u:Z

    .line 47
    .line 48
    iget p1, p0, Lw2/o;->o:I

    .line 49
    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    sub-int/2addr p1, v2

    .line 53
    invoke-virtual {p0, p1}, Lw2/o;->i(I)I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    iget-object v0, p0, Lw2/o;->i:[J

    .line 58
    .line 59
    aget-wide v1, v0, p1

    .line 60
    .line 61
    iget-object v0, p0, Lw2/o;->j:[I

    .line 62
    .line 63
    aget p1, v0, p1

    .line 64
    .line 65
    :cond_2
    return-void
.end method

.method public final g(IIJZ)I
    .locals 6

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v2, p2, :cond_3

    .line 5
    .line 6
    iget-object v3, p0, Lw2/o;->l:[J

    .line 7
    .line 8
    aget-wide v4, v3, p1

    .line 9
    .line 10
    cmp-long v3, v4, p3

    .line 11
    .line 12
    if-gtz v3, :cond_3

    .line 13
    .line 14
    if-eqz p5, :cond_0

    .line 15
    .line 16
    iget-object v3, p0, Lw2/o;->k:[I

    .line 17
    .line 18
    aget v3, v3, p1

    .line 19
    .line 20
    and-int/lit8 v3, v3, 0x1

    .line 21
    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    :cond_0
    move v0, v2

    .line 25
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 26
    .line 27
    iget v3, p0, Lw2/o;->g:I

    .line 28
    .line 29
    if-ne p1, v3, :cond_2

    .line 30
    .line 31
    move p1, v1

    .line 32
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_3
    return v0
.end method

.method public final h(I)J
    .locals 7

    .line 1
    const-wide/high16 v0, -0x8000000000000000L

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    add-int/lit8 v2, p1, -0x1

    .line 7
    .line 8
    invoke-virtual {p0, v2}, Lw2/o;->i(I)I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    if-ge v3, p1, :cond_3

    .line 14
    .line 15
    iget-object v4, p0, Lw2/o;->l:[J

    .line 16
    .line 17
    aget-wide v5, v4, v2

    .line 18
    .line 19
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    iget-object v4, p0, Lw2/o;->k:[I

    .line 24
    .line 25
    aget v4, v4, v2

    .line 26
    .line 27
    and-int/lit8 v4, v4, 0x1

    .line 28
    .line 29
    if-eqz v4, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 33
    .line 34
    const/4 v4, -0x1

    .line 35
    if-ne v2, v4, :cond_2

    .line 36
    .line 37
    iget v2, p0, Lw2/o;->g:I

    .line 38
    .line 39
    add-int/2addr v2, v4

    .line 40
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    :goto_1
    return-wide v0
.end method

.method public final i(I)I
    .locals 1

    .line 1
    iget v0, p0, Lw2/o;->q:I

    .line 2
    .line 3
    add-int/2addr v0, p1

    .line 4
    iget p1, p0, Lw2/o;->g:I

    .line 5
    .line 6
    if-ge v0, p1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sub-int/2addr v0, p1

    .line 10
    :goto_0
    return v0
.end method

.method public final declared-synchronized j()Lf2/t;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lw2/o;->w:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lw2/o;->x:Lf2/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    :goto_0
    monitor-exit p0

    .line 11
    return-object v0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    monitor-exit p0

    .line 14
    throw v0
.end method

.method public final k(Z)V
    .locals 12

    .line 1
    iget-object v0, p0, Lw2/o;->a:Lt2/p;

    .line 2
    .line 3
    iget-object v1, v0, Lt2/p;->d:Lt2/o;

    .line 4
    .line 5
    iget-boolean v2, v1, Lt2/o;->a:Z

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    iget-object v5, v0, Lt2/p;->a:La3/b;

    .line 10
    .line 11
    iget v6, v0, Lt2/p;->b:I

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    iget-object v2, v0, Lt2/p;->f:Lt2/o;

    .line 17
    .line 18
    iget-boolean v7, v2, Lt2/o;->a:Z

    .line 19
    .line 20
    iget-wide v8, v2, Lt2/o;->b:J

    .line 21
    .line 22
    iget-wide v10, v1, Lt2/o;->b:J

    .line 23
    .line 24
    sub-long/2addr v8, v10

    .line 25
    long-to-int v2, v8

    .line 26
    div-int/2addr v2, v6

    .line 27
    add-int/2addr v2, v7

    .line 28
    new-array v7, v2, [La3/a;

    .line 29
    .line 30
    move v8, v4

    .line 31
    :goto_0
    if-ge v8, v2, :cond_1

    .line 32
    .line 33
    iget-object v9, v1, Lt2/o;->d:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v9, La3/a;

    .line 36
    .line 37
    aput-object v9, v7, v8

    .line 38
    .line 39
    iput-object v3, v1, Lt2/o;->d:Ljava/lang/Object;

    .line 40
    .line 41
    iget-object v9, v1, Lt2/o;->e:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v9, Lt2/o;

    .line 44
    .line 45
    iput-object v3, v1, Lt2/o;->e:Ljava/lang/Object;

    .line 46
    .line 47
    add-int/lit8 v8, v8, 0x1

    .line 48
    .line 49
    move-object v1, v9

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    move-object v1, v5

    .line 52
    check-cast v1, La3/m;

    .line 53
    .line 54
    invoke-virtual {v1, v7}, La3/m;->a([La3/a;)V

    .line 55
    .line 56
    .line 57
    :goto_1
    new-instance v1, Lt2/o;

    .line 58
    .line 59
    const-wide/16 v7, 0x0

    .line 60
    .line 61
    invoke-direct {v1, v7, v8, v6}, Lt2/o;-><init>(JI)V

    .line 62
    .line 63
    .line 64
    iput-object v1, v0, Lt2/p;->d:Lt2/o;

    .line 65
    .line 66
    iput-object v1, v0, Lt2/p;->e:Lt2/o;

    .line 67
    .line 68
    iput-object v1, v0, Lt2/p;->f:Lt2/o;

    .line 69
    .line 70
    iput-wide v7, v0, Lt2/p;->g:J

    .line 71
    .line 72
    check-cast v5, La3/m;

    .line 73
    .line 74
    invoke-virtual {v5}, La3/m;->b()V

    .line 75
    .line 76
    .line 77
    iput v4, p0, Lw2/o;->o:I

    .line 78
    .line 79
    iput v4, p0, Lw2/o;->p:I

    .line 80
    .line 81
    iput v4, p0, Lw2/o;->q:I

    .line 82
    .line 83
    iput v4, p0, Lw2/o;->r:I

    .line 84
    .line 85
    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lw2/o;->v:Z

    .line 87
    .line 88
    const-wide/high16 v1, -0x8000000000000000L

    .line 89
    .line 90
    iput-wide v1, p0, Lw2/o;->s:J

    .line 91
    .line 92
    iput-wide v1, p0, Lw2/o;->t:J

    .line 93
    .line 94
    iput-boolean v4, p0, Lw2/o;->u:Z

    .line 95
    .line 96
    iput-object v3, p0, Lw2/o;->y:Lf2/t;

    .line 97
    .line 98
    if-eqz p1, :cond_2

    .line 99
    .line 100
    iput-object v3, p0, Lw2/o;->B:Lf2/t;

    .line 101
    .line 102
    iput-object v3, p0, Lw2/o;->x:Lf2/t;

    .line 103
    .line 104
    iput-boolean v0, p0, Lw2/o;->w:Z

    .line 105
    .line 106
    :cond_2
    return-void
.end method

.method public final declared-synchronized l(JZ)Z
    .locals 10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    const/4 v0, 0x0

    .line 4
    :try_start_1
    iput v0, p0, Lw2/o;->r:I

    .line 5
    .line 6
    iget-object v1, p0, Lw2/o;->a:Lt2/p;

    .line 7
    .line 8
    iget-object v2, v1, Lt2/p;->d:Lt2/o;

    .line 9
    .line 10
    iput-object v2, v1, Lt2/p;->e:Lt2/o;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    .line 12
    :try_start_2
    monitor-exit p0

    .line 13
    invoke-virtual {p0, v0}, Lw2/o;->i(I)I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    iget v1, p0, Lw2/o;->r:I

    .line 18
    .line 19
    iget v2, p0, Lw2/o;->o:I

    .line 20
    .line 21
    const/4 v9, 0x1

    .line 22
    if-eq v1, v2, :cond_0

    .line 23
    .line 24
    move v3, v9

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v3, v0

    .line 27
    :goto_0
    if-eqz v3, :cond_3

    .line 28
    .line 29
    iget-object v3, p0, Lw2/o;->l:[J

    .line 30
    .line 31
    aget-wide v5, v3, v4

    .line 32
    .line 33
    cmp-long v3, p1, v5

    .line 34
    .line 35
    if-ltz v3, :cond_3

    .line 36
    .line 37
    iget-wide v5, p0, Lw2/o;->t:J

    .line 38
    .line 39
    cmp-long v3, p1, v5

    .line 40
    .line 41
    if-lez v3, :cond_1

    .line 42
    .line 43
    if-nez p3, :cond_1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    sub-int v5, v2, v1

    .line 47
    .line 48
    const/4 v8, 0x1

    .line 49
    move-object v3, p0

    .line 50
    move-wide v6, p1

    .line 51
    invoke-virtual/range {v3 .. v8}, Lw2/o;->g(IIJZ)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    const/4 p2, -0x1

    .line 56
    if-ne p1, p2, :cond_2

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    iget p2, p0, Lw2/o;->r:I

    .line 60
    .line 61
    add-int/2addr p2, p1

    .line 62
    iput p2, p0, Lw2/o;->r:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 63
    .line 64
    monitor-exit p0

    .line 65
    move v0, v9

    .line 66
    goto :goto_2

    .line 67
    :cond_3
    :goto_1
    monitor-exit p0

    .line 68
    :goto_2
    return v0

    .line 69
    :catchall_0
    move-exception p1

    .line 70
    :try_start_3
    monitor-exit p0

    .line 71
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 72
    :catchall_1
    move-exception p1

    .line 73
    monitor-exit p0

    .line 74
    throw p1
.end method
