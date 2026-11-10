.class public final Lu1/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final A:Lz1/e;

.field public final B:Lz1/a;

.field public C:J

.field public D:Z

.field public E:Z

.field public F:J

.field public final G:Lu1/a;

.field public final H:Lh/a;

.field public final I:Lu1/x;

.field public J:Z

.field public final K:Lu1/a;

.field public L:F

.field public M:I

.field public N:I

.field public final a:Lq1/f;

.field public final b:Lq1/r;

.field public final c:La2/x;

.field public final d:La2/x;

.field public e:Z

.field public f:Z

.field public g:F

.field public h:F

.field public i:Lo1/l;

.field public j:Lu1/d;

.field public k:Lu1/r;

.field public l:Z

.field public m:Lo1/v0;

.field public n:Lo1/h0;

.field public o:Lo1/g0;

.field public p:Lu1/k;

.field public q:Landroid/media/session/MediaSession;

.field public r:Lu1/v;

.field public final s:Lz1/e;

.field public final t:Lu1/w;

.field public u:La2/l;

.field public v:La2/k;

.field public w:Lv1/a;

.field public x:Lv1/a;

.field public y:Lv1/a;

.field public z:Lu1/h;


# direct methods
.method public constructor <init>(Lq1/f;La2/x;La2/x;Lq1/r;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lu1/i;->M:I

    .line 6
    .line 7
    iput v0, p0, Lu1/i;->N:I

    .line 8
    .line 9
    iput-boolean v0, p0, Lu1/i;->e:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lu1/i;->f:Z

    .line 12
    .line 13
    const/high16 v1, 0x3f800000    # 1.0f

    .line 14
    .line 15
    iput v1, p0, Lu1/i;->g:F

    .line 16
    .line 17
    iput v1, p0, Lu1/i;->h:F

    .line 18
    .line 19
    new-instance v1, Lz1/e;

    .line 20
    .line 21
    invoke-direct {v1}, Lz1/e;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lu1/i;->s:Lz1/e;

    .line 25
    .line 26
    new-instance v2, Lu1/w;

    .line 27
    .line 28
    invoke-direct {v2, v1}, Lu1/w;-><init>(Lz1/b;)V

    .line 29
    .line 30
    .line 31
    iput-object v2, p0, Lu1/i;->t:Lu1/w;

    .line 32
    .line 33
    new-instance v1, Lz1/e;

    .line 34
    .line 35
    invoke-direct {v1}, Lz1/e;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, Lu1/i;->A:Lz1/e;

    .line 39
    .line 40
    new-instance v1, Lz1/a;

    .line 41
    .line 42
    invoke-direct {v1}, Lz1/a;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v1, p0, Lu1/i;->B:Lz1/a;

    .line 46
    .line 47
    new-instance v1, Lu1/a;

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    invoke-direct {v1, p0, v2}, Lu1/a;-><init>(Lu1/i;I)V

    .line 51
    .line 52
    .line 53
    iput-object v1, p0, Lu1/i;->G:Lu1/a;

    .line 54
    .line 55
    new-instance v1, Lh/a;

    .line 56
    .line 57
    const/16 v3, 0xe

    .line 58
    .line 59
    invoke-direct {v1, v3}, Lh/a;-><init>(I)V

    .line 60
    .line 61
    .line 62
    iput-object v1, p0, Lu1/i;->H:Lh/a;

    .line 63
    .line 64
    iget-object v1, v1, Lh/a;->g:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v1, Lu1/x;

    .line 67
    .line 68
    iput-object v1, p0, Lu1/i;->I:Lu1/x;

    .line 69
    .line 70
    new-instance v1, Lu1/a;

    .line 71
    .line 72
    invoke-direct {v1, p0, v0}, Lu1/a;-><init>(Lu1/i;I)V

    .line 73
    .line 74
    .line 75
    iput-object v1, p0, Lu1/i;->K:Lu1/a;

    .line 76
    .line 77
    iput-object p1, p0, Lu1/i;->a:Lq1/f;

    .line 78
    .line 79
    iput-object p2, p0, Lu1/i;->c:La2/x;

    .line 80
    .line 81
    iput-object p3, p0, Lu1/i;->d:La2/x;

    .line 82
    .line 83
    iput-object p4, p0, Lu1/i;->b:Lq1/r;

    .line 84
    .line 85
    iput-object p0, p1, Lq1/f;->F:Lu1/i;

    .line 86
    .line 87
    new-instance p2, Lu1/v;

    .line 88
    .line 89
    new-instance p3, Lo/a;

    .line 90
    .line 91
    invoke-direct {p3, p0}, Lo/a;-><init>(Lu1/i;)V

    .line 92
    .line 93
    .line 94
    iget-object p4, p1, Lq1/f;->a:Lq1/c;

    .line 95
    .line 96
    invoke-direct {p2, p4, p3}, Lu1/v;-><init>(Lq1/c;Lo/a;)V

    .line 97
    .line 98
    .line 99
    iput-object p2, p0, Lu1/i;->r:Lu1/v;

    .line 100
    .line 101
    iput-boolean v0, p2, Lu1/v;->h:Z

    .line 102
    .line 103
    new-instance p2, Lu1/d;

    .line 104
    .line 105
    invoke-direct {p2, p0}, Lu1/d;-><init>(Lu1/i;)V

    .line 106
    .line 107
    .line 108
    iput-object p2, p0, Lu1/i;->j:Lu1/d;

    .line 109
    .line 110
    new-instance p2, Lo1/l;

    .line 111
    .line 112
    iget-object p3, p0, Lu1/i;->j:Lu1/d;

    .line 113
    .line 114
    iget-object v1, p1, Lq1/f;->b:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 115
    .line 116
    invoke-direct {p2, v1, p4, p3}, Lo1/l;-><init>(Lcom/nomone/vr_desktop/LaunchActivity;Lq1/c;Lu1/d;)V

    .line 117
    .line 118
    .line 119
    iput-object p2, p0, Lu1/i;->i:Lo1/l;

    .line 120
    .line 121
    invoke-virtual {p0}, Lu1/i;->i()V

    .line 122
    .line 123
    .line 124
    iget-object p2, p0, Lu1/i;->r:Lu1/v;

    .line 125
    .line 126
    iget-object p2, p2, Lu1/v;->b:Lo/a;

    .line 127
    .line 128
    iget-object p2, p2, Lo/a;->g:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast p2, Lu1/i;

    .line 131
    .line 132
    iget-object p2, p2, Lu1/i;->a:Lq1/f;

    .line 133
    .line 134
    invoke-virtual {p2}, Lq1/f;->a()I

    .line 135
    .line 136
    .line 137
    move-result p2

    .line 138
    iget-object p3, p0, Lu1/i;->r:Lu1/v;

    .line 139
    .line 140
    iget-object p3, p3, Lu1/v;->b:Lo/a;

    .line 141
    .line 142
    iget-object p3, p3, Lo/a;->g:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast p3, Lu1/i;

    .line 145
    .line 146
    iget-object p3, p3, Lu1/i;->a:Lq1/f;

    .line 147
    .line 148
    iget p3, p3, Lq1/f;->z:I

    .line 149
    .line 150
    if-ge p2, p3, :cond_0

    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_0
    move p2, p3

    .line 154
    :goto_0
    div-int/lit8 p2, p2, 0x5

    .line 155
    .line 156
    new-instance p3, Lo1/v0;

    .line 157
    .line 158
    new-instance v3, Lu1/e;

    .line 159
    .line 160
    invoke-direct {v3, p0, v0}, Lu1/e;-><init>(Lu1/i;I)V

    .line 161
    .line 162
    .line 163
    invoke-direct {p3, v1, p4, p2, v3}, Lo1/v0;-><init>(Lcom/nomone/vr_desktop/LaunchActivity;Lq1/c;ILu1/e;)V

    .line 164
    .line 165
    .line 166
    iput-object p3, p0, Lu1/i;->m:Lo1/v0;

    .line 167
    .line 168
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 169
    .line 170
    .line 171
    move-result-object p2

    .line 172
    check-cast p2, Lcom/nomone/vr_desktop/MyApplication;

    .line 173
    .line 174
    iget-object p2, p2, Lcom/nomone/vr_desktop/MyApplication;->b:Ljava/lang/ThreadGroup;

    .line 175
    .line 176
    new-instance p3, Lo1/h0;

    .line 177
    .line 178
    new-instance v3, Lu1/f;

    .line 179
    .line 180
    invoke-direct {v3, p0, v2}, Lu1/f;-><init>(Lu1/i;I)V

    .line 181
    .line 182
    .line 183
    sget-object v2, Lcom/nomone/vr_desktop/Applications/SettingsApplication;->g:Ljava/lang/String;

    .line 184
    .line 185
    const-string v2, "Settings_Remote_Cursor_TCP_Port"

    .line 186
    .line 187
    const/16 v4, 0x2ef8

    .line 188
    .line 189
    invoke-static {v2, v4}, Lo1/y;->c(Ljava/lang/String;I)I

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    invoke-direct {p3, p4, p2, v3, v2}, Lo1/h0;-><init>(Lq1/c;Ljava/lang/ThreadGroup;Lu1/f;I)V

    .line 194
    .line 195
    .line 196
    iput-object p3, p0, Lu1/i;->n:Lo1/h0;

    .line 197
    .line 198
    new-instance p3, Lo1/g0;

    .line 199
    .line 200
    new-instance v2, Lu1/f;

    .line 201
    .line 202
    invoke-direct {v2, p0, v0}, Lu1/f;-><init>(Lu1/i;I)V

    .line 203
    .line 204
    .line 205
    invoke-direct {p3, v1, p4, p2, v2}, Lo1/g0;-><init>(Lcom/nomone/vr_desktop/LaunchActivity;Lq1/c;Ljava/lang/ThreadGroup;Lu1/f;)V

    .line 206
    .line 207
    .line 208
    iput-object p3, p0, Lu1/i;->o:Lo1/g0;

    .line 209
    .line 210
    iget-object p2, p0, Lu1/i;->n:Lo1/h0;

    .line 211
    .line 212
    iget-boolean p3, p2, Lo1/e0;->c:Z

    .line 213
    .line 214
    if-ne p3, v0, :cond_1

    .line 215
    .line 216
    goto :goto_1

    .line 217
    :cond_1
    invoke-virtual {p2}, Lo1/e0;->h()V

    .line 218
    .line 219
    .line 220
    iput-boolean v0, p2, Lo1/e0;->c:Z

    .line 221
    .line 222
    :goto_1
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 223
    .line 224
    const/16 p3, 0x1e

    .line 225
    .line 226
    if-gt p2, p3, :cond_3

    .line 227
    .line 228
    iget-object p2, p0, Lu1/i;->o:Lo1/g0;

    .line 229
    .line 230
    iget-boolean p3, p2, Lo1/e0;->c:Z

    .line 231
    .line 232
    if-ne p3, v0, :cond_2

    .line 233
    .line 234
    goto :goto_2

    .line 235
    :cond_2
    invoke-virtual {p2}, Lo1/e0;->h()V

    .line 236
    .line 237
    .line 238
    iput-boolean v0, p2, Lo1/e0;->c:Z

    .line 239
    .line 240
    :cond_3
    :goto_2
    new-instance p2, Lu1/k;

    .line 241
    .line 242
    iget-object p3, p0, Lu1/i;->r:Lu1/v;

    .line 243
    .line 244
    sget-object p4, Lq1/f;->L:Lo1/j0;

    .line 245
    .line 246
    new-instance v2, Lu1/e;

    .line 247
    .line 248
    const/4 v3, 0x2

    .line 249
    invoke-direct {v2, p0, v3}, Lu1/e;-><init>(Lu1/i;I)V

    .line 250
    .line 251
    .line 252
    invoke-direct {p2, p3, p4, v2}, Lu1/k;-><init>(Lu1/v;Lo1/j0;Lu1/e;)V

    .line 253
    .line 254
    .line 255
    iput-object p2, p0, Lu1/i;->p:Lu1/k;

    .line 256
    .line 257
    new-instance p2, Landroid/media/session/MediaSession;

    .line 258
    .line 259
    const-string p3, "sdf"

    .line 260
    .line 261
    invoke-direct {p2, v1, p3}, Landroid/media/session/MediaSession;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    iput-object p2, p0, Lu1/i;->q:Landroid/media/session/MediaSession;

    .line 265
    .line 266
    new-instance p3, Lu1/g;

    .line 267
    .line 268
    invoke-direct {p3, p0}, Lu1/g;-><init>(Lu1/i;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {p2, p3}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;)V

    .line 272
    .line 273
    .line 274
    iget-object p2, p0, Lu1/i;->q:Landroid/media/session/MediaSession;

    .line 275
    .line 276
    invoke-virtual {p2, v0}, Landroid/media/session/MediaSession;->setFlags(I)V

    .line 277
    .line 278
    .line 279
    iget-object p2, p0, Lu1/i;->q:Landroid/media/session/MediaSession;

    .line 280
    .line 281
    new-instance p3, Landroid/media/session/PlaybackState$Builder;

    .line 282
    .line 283
    invoke-direct {p3}, Landroid/media/session/PlaybackState$Builder;-><init>()V

    .line 284
    .line 285
    .line 286
    const-wide/16 v0, 0x200

    .line 287
    .line 288
    invoke-virtual {p3, v0, v1}, Landroid/media/session/PlaybackState$Builder;->setActions(J)Landroid/media/session/PlaybackState$Builder;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    const/4 v3, 0x3

    .line 293
    const-wide/16 v4, 0x0

    .line 294
    .line 295
    const/4 v6, 0x0

    .line 296
    const-wide/16 v7, 0x0

    .line 297
    .line 298
    invoke-virtual/range {v2 .. v8}, Landroid/media/session/PlaybackState$Builder;->setState(IJFJ)Landroid/media/session/PlaybackState$Builder;

    .line 299
    .line 300
    .line 301
    move-result-object p3

    .line 302
    invoke-virtual {p3}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    .line 303
    .line 304
    .line 305
    move-result-object p3

    .line 306
    invoke-virtual {p2, p3}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {p0}, Lu1/i;->f()V

    .line 310
    .line 311
    .line 312
    new-instance p2, Lu1/b;

    .line 313
    .line 314
    invoke-direct {p2, p0}, Lu1/b;-><init>(Lu1/i;)V

    .line 315
    .line 316
    .line 317
    iget-object p1, p1, Lq1/f;->k:Ljava/util/List;

    .line 318
    .line 319
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    .line 321
    .line 322
    return-void
.end method

.method public static a(Lu1/i;Z)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lu1/i;->m()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lu1/i;->r:Lu1/v;

    .line 7
    .line 8
    invoke-virtual {p1}, Lu1/v;->a()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Lu1/i;->r:Lu1/v;

    .line 13
    .line 14
    iget-object v0, p1, Lu1/v;->b:Lo/a;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iget-object p1, p1, Lu1/v;->e:Lu1/w;

    .line 20
    .line 21
    const/4 v1, 0x6

    .line 22
    iput v1, p1, Lu1/w;->a:I

    .line 23
    .line 24
    const/4 v1, 0x2

    .line 25
    iput v1, p1, Lu1/w;->f:I

    .line 26
    .line 27
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    const-wide/32 v3, 0xf4240

    .line 32
    .line 33
    .line 34
    div-long/2addr v1, v3

    .line 35
    sput-wide v1, Lu1/w;->k:J

    .line 36
    .line 37
    iput-wide v1, p1, Lu1/w;->h:J

    .line 38
    .line 39
    iput-wide v1, p1, Lu1/w;->g:J

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Lo/a;->d(Lu1/w;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    const/4 p1, 0x1

    .line 45
    invoke-virtual {p0, p1}, Lu1/i;->k(Z)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public static b(Lu1/i;Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lu1/i;->m()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lu1/i;->r:Lu1/v;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lu1/v;->b()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Lu1/v;->e:Lu1/w;

    .line 13
    .line 14
    const/4 v0, 0x7

    .line 15
    iput v0, p1, Lu1/w;->a:I

    .line 16
    .line 17
    const/4 v0, 0x2

    .line 18
    iput v0, p1, Lu1/w;->f:I

    .line 19
    .line 20
    sget-wide v0, Lu1/w;->k:J

    .line 21
    .line 22
    iput-wide v0, p1, Lu1/w;->g:J

    .line 23
    .line 24
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    const-wide/32 v2, 0xf4240

    .line 29
    .line 30
    .line 31
    div-long/2addr v0, v2

    .line 32
    iput-wide v0, p1, Lu1/w;->h:J

    .line 33
    .line 34
    iget-object p0, p0, Lu1/v;->b:Lo/a;

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lo/a;->d(Lu1/w;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void
.end method

.method public static c(Lu1/i;F)V
    .locals 5

    .line 1
    iget v0, p0, Lu1/i;->h:F

    .line 2
    .line 3
    mul-float/2addr p1, v0

    .line 4
    invoke-virtual {p0}, Lu1/i;->m()V

    .line 5
    .line 6
    .line 7
    iget v0, p0, Lu1/i;->L:F

    .line 8
    .line 9
    add-float/2addr v0, p1

    .line 10
    iput v0, p0, Lu1/i;->L:F

    .line 11
    .line 12
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    const/high16 v0, 0x3f800000    # 1.0f

    .line 17
    .line 18
    cmpg-float p1, p1, v0

    .line 19
    .line 20
    if-gez p1, :cond_0

    .line 21
    .line 22
    goto :goto_3

    .line 23
    :cond_0
    iget p1, p0, Lu1/i;->L:F

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    cmpl-float v0, p1, v0

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    if-lez v0, :cond_2

    .line 30
    .line 31
    iget-object v0, p0, Lu1/i;->r:Lu1/v;

    .line 32
    .line 33
    float-to-int p1, p1

    .line 34
    :goto_0
    add-int/lit8 v2, p1, -0x1

    .line 35
    .line 36
    iget-object v3, v0, Lu1/v;->m:Lu1/u;

    .line 37
    .line 38
    if-lez p1, :cond_1

    .line 39
    .line 40
    iget-object p1, v0, Lu1/v;->c:Lz1/a;

    .line 41
    .line 42
    iget v4, p1, Lz1/a;->a:F

    .line 43
    .line 44
    iget p1, p1, Lz1/a;->b:F

    .line 45
    .line 46
    invoke-virtual {v3, v4, p1, v1}, Lu1/u;->a(FFZ)V

    .line 47
    .line 48
    .line 49
    move p1, v2

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {v3}, Lu1/u;->b()Z

    .line 52
    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_2
    iget-object v0, p0, Lu1/i;->r:Lu1/v;

    .line 56
    .line 57
    float-to-int p1, p1

    .line 58
    sub-int/2addr v1, p1

    .line 59
    :goto_1
    add-int/lit8 p1, v1, -0x1

    .line 60
    .line 61
    iget-object v2, v0, Lu1/v;->m:Lu1/u;

    .line 62
    .line 63
    if-lez v1, :cond_3

    .line 64
    .line 65
    iget-object v1, v0, Lu1/v;->c:Lz1/a;

    .line 66
    .line 67
    iget v3, v1, Lz1/a;->a:F

    .line 68
    .line 69
    iget v1, v1, Lz1/a;->b:F

    .line 70
    .line 71
    const/4 v4, 0x1

    .line 72
    invoke-virtual {v2, v3, v1, v4}, Lu1/u;->a(FFZ)V

    .line 73
    .line 74
    .line 75
    move v1, p1

    .line 76
    goto :goto_1

    .line 77
    :cond_3
    invoke-virtual {v2}, Lu1/u;->b()Z

    .line 78
    .line 79
    .line 80
    :goto_2
    iget p1, p0, Lu1/i;->L:F

    .line 81
    .line 82
    float-to-int v0, p1

    .line 83
    int-to-float v0, v0

    .line 84
    sub-float/2addr p1, v0

    .line 85
    iput p1, p0, Lu1/i;->L:F

    .line 86
    .line 87
    :goto_3
    return-void
.end method

.method public static d(Lu1/i;I)V
    .locals 1

    .line 1
    iput p1, p0, Lu1/i;->M:I

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    if-eq p1, v0, :cond_2

    .line 5
    .line 6
    const/4 v0, 0x3

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x4

    .line 11
    if-ne p1, v0, :cond_1

    .line 12
    .line 13
    iget-object p1, p0, Lu1/i;->v:La2/k;

    .line 14
    .line 15
    iget-object p0, p0, Lu1/i;->y:Lv1/a;

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    const/4 v0, 0x1

    .line 19
    if-ne p1, v0, :cond_4

    .line 20
    .line 21
    iget-object p1, p0, Lu1/i;->v:La2/k;

    .line 22
    .line 23
    iget-object v0, p0, Lu1/i;->m:Lo1/v0;

    .line 24
    .line 25
    iget-boolean v0, v0, Lo1/v0;->k:Z

    .line 26
    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    iget-object p0, p0, Lu1/i;->x:Lv1/a;

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    :goto_0
    iget-object p1, p0, Lu1/i;->v:La2/k;

    .line 33
    .line 34
    :cond_3
    iget-object p0, p0, Lu1/i;->w:Lv1/a;

    .line 35
    .line 36
    :goto_1
    iput-object p0, p1, La2/k;->h:Lv1/c;

    .line 37
    .line 38
    :cond_4
    return-void
.end method


# virtual methods
.method public final e(FF)Z
    .locals 13

    .line 1
    iget-boolean v0, p0, Lu1/i;->J:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_e

    .line 5
    .line 6
    iget-object v0, p0, Lu1/i;->z:Lu1/h;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    move v0, v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v1

    .line 14
    :goto_0
    if-nez v0, :cond_1

    .line 15
    .line 16
    goto/16 :goto_9

    .line 17
    .line 18
    :cond_1
    iget-object v0, p0, Lu1/i;->A:Lz1/e;

    .line 19
    .line 20
    iput p1, v0, Lz1/e;->a:F

    .line 21
    .line 22
    iput p2, v0, Lz1/e;->b:F

    .line 23
    .line 24
    sget-object p1, Lz1/f;->w:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter p1

    .line 27
    :try_start_0
    sget p2, Lz1/f;->x:F

    .line 28
    .line 29
    sget v0, Lz1/f;->y:F

    .line 30
    .line 31
    iget-object v3, p0, Lu1/i;->d:La2/x;

    .line 32
    .line 33
    iget v4, v3, La2/x;->r:F

    .line 34
    .line 35
    iget-object v5, p0, Lu1/i;->c:La2/x;

    .line 36
    .line 37
    iget v6, v5, La2/x;->r:F

    .line 38
    .line 39
    add-float/2addr v4, v6

    .line 40
    sput v4, Lz1/f;->x:F

    .line 41
    .line 42
    iget v3, v3, La2/x;->s:F

    .line 43
    .line 44
    iget v4, v5, La2/x;->s:F

    .line 45
    .line 46
    add-float/2addr v3, v4

    .line 47
    sput v3, Lz1/f;->y:F

    .line 48
    .line 49
    iget-object v3, p0, Lu1/i;->z:Lu1/h;

    .line 50
    .line 51
    iget-object v3, v3, Lu1/h;->a:Lz1/f;

    .line 52
    .line 53
    iget-object v4, p0, Lu1/i;->A:Lz1/e;

    .line 54
    .line 55
    iget-object v5, p0, Lu1/i;->B:Lz1/a;

    .line 56
    .line 57
    invoke-virtual {v3, v4, v5}, Lz1/f;->d(Lz1/b;Lz1/b;)V

    .line 58
    .line 59
    .line 60
    iget-object v3, p0, Lu1/i;->B:Lz1/a;

    .line 61
    .line 62
    iget v4, v3, Lz1/a;->a:F

    .line 63
    .line 64
    iget v5, v3, Lz1/a;->b:F

    .line 65
    .line 66
    iget-object v6, p0, Lu1/i;->z:Lu1/h;

    .line 67
    .line 68
    iget v7, v6, Lu1/h;->b:F

    .line 69
    .line 70
    const v8, 0x3ecccccd    # 0.4f

    .line 71
    .line 72
    .line 73
    add-float v9, v7, v8

    .line 74
    .line 75
    cmpg-float v10, v4, v9

    .line 76
    .line 77
    const/4 v11, 0x0

    .line 78
    const/high16 v12, 0x3f800000    # 1.0f

    .line 79
    .line 80
    if-gez v10, :cond_2

    .line 81
    .line 82
    iput v9, v3, Lz1/a;->a:F

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_2
    iget v9, v6, Lu1/h;->d:F

    .line 86
    .line 87
    cmpl-float v10, v9, v11

    .line 88
    .line 89
    if-nez v10, :cond_3

    .line 90
    .line 91
    iget-object v10, v6, Lu1/h;->a:Lz1/f;

    .line 92
    .line 93
    iget v10, v10, Lz1/f;->j:I

    .line 94
    .line 95
    int-to-float v10, v10

    .line 96
    goto :goto_1

    .line 97
    :catchall_0
    move-exception p2

    .line 98
    goto/16 :goto_8

    .line 99
    .line 100
    :cond_3
    move v10, v9

    .line 101
    :goto_1
    add-float/2addr v10, v7

    .line 102
    sub-float/2addr v10, v12

    .line 103
    cmpl-float v4, v4, v10

    .line 104
    .line 105
    if-lez v4, :cond_5

    .line 106
    .line 107
    cmpl-float v4, v9, v11

    .line 108
    .line 109
    if-nez v4, :cond_4

    .line 110
    .line 111
    iget-object v4, v6, Lu1/h;->a:Lz1/f;

    .line 112
    .line 113
    iget v4, v4, Lz1/f;->j:I

    .line 114
    .line 115
    int-to-float v9, v4

    .line 116
    :cond_4
    add-float/2addr v7, v9

    .line 117
    sub-float/2addr v7, v12

    .line 118
    iput v7, v3, Lz1/a;->a:F

    .line 119
    .line 120
    :goto_2
    move v4, v2

    .line 121
    goto :goto_3

    .line 122
    :cond_5
    move v4, v1

    .line 123
    :goto_3
    iget v7, v6, Lu1/h;->c:F

    .line 124
    .line 125
    add-float/2addr v8, v7

    .line 126
    cmpg-float v9, v5, v8

    .line 127
    .line 128
    if-gez v9, :cond_6

    .line 129
    .line 130
    iput v8, v3, Lz1/a;->b:F

    .line 131
    .line 132
    goto :goto_5

    .line 133
    :cond_6
    iget v8, v6, Lu1/h;->e:F

    .line 134
    .line 135
    cmpl-float v9, v8, v11

    .line 136
    .line 137
    if-nez v9, :cond_7

    .line 138
    .line 139
    iget-object v9, v6, Lu1/h;->a:Lz1/f;

    .line 140
    .line 141
    iget v9, v9, Lz1/f;->k:I

    .line 142
    .line 143
    int-to-float v9, v9

    .line 144
    goto :goto_4

    .line 145
    :cond_7
    move v9, v8

    .line 146
    :goto_4
    add-float/2addr v9, v7

    .line 147
    sub-float/2addr v9, v12

    .line 148
    cmpl-float v5, v5, v9

    .line 149
    .line 150
    if-lez v5, :cond_9

    .line 151
    .line 152
    cmpl-float v4, v8, v11

    .line 153
    .line 154
    if-nez v4, :cond_8

    .line 155
    .line 156
    iget-object v4, v6, Lu1/h;->a:Lz1/f;

    .line 157
    .line 158
    iget v4, v4, Lz1/f;->k:I

    .line 159
    .line 160
    int-to-float v8, v4

    .line 161
    :cond_8
    add-float/2addr v7, v8

    .line 162
    sub-float/2addr v7, v12

    .line 163
    iput v7, v3, Lz1/a;->b:F

    .line 164
    .line 165
    :goto_5
    move v4, v2

    .line 166
    :cond_9
    if-eqz v4, :cond_b

    .line 167
    .line 168
    iget-object v5, v6, Lu1/h;->a:Lz1/f;

    .line 169
    .line 170
    iget-object v6, p0, Lu1/i;->A:Lz1/e;

    .line 171
    .line 172
    invoke-virtual {v5, v3, v6}, Lz1/f;->d(Lz1/b;Lz1/b;)V

    .line 173
    .line 174
    .line 175
    iget-object v3, p0, Lu1/i;->A:Lz1/e;

    .line 176
    .line 177
    iget v5, v3, Lz1/e;->a:F

    .line 178
    .line 179
    iget v3, v3, Lz1/e;->b:F

    .line 180
    .line 181
    move v6, v1

    .line 182
    :goto_6
    const/16 v7, 0x64

    .line 183
    .line 184
    if-ge v6, v7, :cond_b

    .line 185
    .line 186
    iget-object v7, p0, Lu1/i;->a:Lq1/f;

    .line 187
    .line 188
    iget v7, v7, Lq1/f;->i:F

    .line 189
    .line 190
    neg-float v7, v7

    .line 191
    mul-float v8, v7, v5

    .line 192
    .line 193
    mul-float/2addr v7, v3

    .line 194
    iget-object v9, p0, Lu1/i;->c:La2/x;

    .line 195
    .line 196
    iget v10, v9, La2/x;->r:F

    .line 197
    .line 198
    add-float/2addr v8, v10

    .line 199
    sput v8, Lz1/f;->x:F

    .line 200
    .line 201
    iget v8, v9, La2/x;->s:F

    .line 202
    .line 203
    add-float/2addr v7, v8

    .line 204
    sput v7, Lz1/f;->y:F

    .line 205
    .line 206
    iget-object v7, p0, Lu1/i;->z:Lu1/h;

    .line 207
    .line 208
    iget-object v7, v7, Lu1/h;->a:Lz1/f;

    .line 209
    .line 210
    iget-object v8, p0, Lu1/i;->B:Lz1/a;

    .line 211
    .line 212
    iget-object v9, p0, Lu1/i;->A:Lz1/e;

    .line 213
    .line 214
    invoke-virtual {v7, v8, v9}, Lz1/f;->d(Lz1/b;Lz1/b;)V

    .line 215
    .line 216
    .line 217
    iget-object v7, p0, Lu1/i;->A:Lz1/e;

    .line 218
    .line 219
    iget v7, v7, Lz1/e;->a:F

    .line 220
    .line 221
    sub-float/2addr v7, v5

    .line 222
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 223
    .line 224
    .line 225
    move-result v5

    .line 226
    const v7, 0x3d4ccccd    # 0.05f

    .line 227
    .line 228
    .line 229
    cmpg-float v5, v5, v7

    .line 230
    .line 231
    if-gez v5, :cond_a

    .line 232
    .line 233
    iget-object v5, p0, Lu1/i;->A:Lz1/e;

    .line 234
    .line 235
    iget v5, v5, Lz1/e;->b:F

    .line 236
    .line 237
    sub-float/2addr v5, v3

    .line 238
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 239
    .line 240
    .line 241
    move-result v3

    .line 242
    cmpg-float v3, v3, v7

    .line 243
    .line 244
    if-gez v3, :cond_a

    .line 245
    .line 246
    goto :goto_7

    .line 247
    :cond_a
    iget-object v3, p0, Lu1/i;->A:Lz1/e;

    .line 248
    .line 249
    iget v5, v3, Lz1/e;->a:F

    .line 250
    .line 251
    iget v3, v3, Lz1/e;->b:F

    .line 252
    .line 253
    add-int/lit8 v6, v6, 0x1

    .line 254
    .line 255
    goto :goto_6

    .line 256
    :cond_b
    :goto_7
    sput p2, Lz1/f;->x:F

    .line 257
    .line 258
    sput v0, Lz1/f;->y:F

    .line 259
    .line 260
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    if-nez v4, :cond_c

    .line 262
    .line 263
    return v1

    .line 264
    :cond_c
    iput-boolean v2, p0, Lu1/i;->J:Z

    .line 265
    .line 266
    iget-object p1, p0, Lu1/i;->u:La2/l;

    .line 267
    .line 268
    iget-object p2, p0, Lu1/i;->A:Lz1/e;

    .line 269
    .line 270
    iget v0, p2, Lz1/e;->a:F

    .line 271
    .line 272
    iget p2, p2, Lz1/e;->b:F

    .line 273
    .line 274
    check-cast p1, La2/k;

    .line 275
    .line 276
    invoke-virtual {p1, v0, p2}, La2/k;->B(FF)V

    .line 277
    .line 278
    .line 279
    iget-object p1, p0, Lu1/i;->u:La2/l;

    .line 280
    .line 281
    check-cast p1, La2/k;

    .line 282
    .line 283
    iget v4, p1, La2/k;->p:F

    .line 284
    .line 285
    iget v5, p1, La2/k;->q:F

    .line 286
    .line 287
    invoke-virtual {p0}, Lu1/i;->m()V

    .line 288
    .line 289
    .line 290
    invoke-virtual {p0, v1}, Lu1/i;->k(Z)V

    .line 291
    .line 292
    .line 293
    iget-object v3, p0, Lu1/i;->r:Lu1/v;

    .line 294
    .line 295
    const/4 v9, 0x1

    .line 296
    const/4 v6, 0x1

    .line 297
    const/4 v7, 0x1

    .line 298
    iget-boolean v8, v3, Lu1/v;->j:Z

    .line 299
    .line 300
    invoke-virtual/range {v3 .. v9}, Lu1/v;->d(FFZZZZ)V

    .line 301
    .line 302
    .line 303
    iget-object p1, p0, Lu1/i;->b:Lq1/r;

    .line 304
    .line 305
    iget-object p2, p0, Lu1/i;->u:La2/l;

    .line 306
    .line 307
    check-cast p2, La2/k;

    .line 308
    .line 309
    iget-object p2, p2, La2/k;->i:Lz1/f;

    .line 310
    .line 311
    iget v0, p2, Lz1/f;->e:F

    .line 312
    .line 313
    iget p2, p2, Lz1/f;->f:F

    .line 314
    .line 315
    iget-object p1, p1, Lq1/r;->f:Lq1/x;

    .line 316
    .line 317
    iget-object p2, p1, Lq1/x;->k:Lu1/i;

    .line 318
    .line 319
    if-eqz p2, :cond_d

    .line 320
    .line 321
    iget-boolean p2, p2, Lu1/i;->f:Z

    .line 322
    .line 323
    if-eqz p2, :cond_d

    .line 324
    .line 325
    iget-object p1, p1, Lq1/x;->d:Lq1/f;

    .line 326
    .line 327
    invoke-virtual {p1}, Lq1/f;->d()V

    .line 328
    .line 329
    .line 330
    :cond_d
    iput-boolean v1, p0, Lu1/i;->J:Z

    .line 331
    .line 332
    return v2

    .line 333
    :goto_8
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    throw p2

    .line 335
    :cond_e
    :goto_9
    return v1
.end method

.method public final f()V
    .locals 9

    .line 1
    iget-object v0, p0, Lu1/i;->a:Lq1/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lq1/f;->a()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    div-int/lit8 v1, v1, 0x2

    .line 8
    .line 9
    int-to-float v3, v1

    .line 10
    iget v0, v0, Lq1/f;->z:I

    .line 11
    .line 12
    div-int/lit8 v0, v0, 0x2

    .line 13
    .line 14
    int-to-float v4, v0

    .line 15
    const/4 v7, 0x1

    .line 16
    invoke-virtual {p0}, Lu1/i;->m()V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, v0}, Lu1/i;->k(Z)V

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lu1/i;->r:Lu1/v;

    .line 24
    .line 25
    const/4 v8, 0x1

    .line 26
    const/4 v5, 0x1

    .line 27
    const/4 v6, 0x1

    .line 28
    invoke-virtual/range {v2 .. v8}, Lu1/v;->d(FFZZZZ)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lu1/i;->d:La2/x;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    iput v1, v0, La2/x;->r:F

    .line 35
    .line 36
    iput v1, v0, La2/x;->s:F

    .line 37
    .line 38
    return-void
.end method

.method public final g(Landroid/view/MotionEvent;)Z
    .locals 14

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    iget-object v1, p0, Lu1/i;->a:Lq1/f;

    .line 4
    .line 5
    const v2, 0x100008

    .line 6
    .line 7
    .line 8
    const/16 v3, 0x1a

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x1

    .line 12
    if-ge v0, v3, :cond_0

    .line 13
    .line 14
    goto/16 :goto_4

    .line 15
    .line 16
    :cond_0
    sget-object v0, Lo1/l;->h:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    and-int/2addr v0, v2

    .line 23
    if-ne v0, v2, :cond_1

    .line 24
    .line 25
    move v0, v5

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move v0, v4

    .line 28
    :goto_0
    if-eqz v0, :cond_2

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    invoke-virtual {p1}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/i0;->K()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    const-string v6, "Pico"

    .line 42
    .line 43
    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_3

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const-string v3, "virtual-input"

    .line 54
    .line 55
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    :goto_1
    move v0, v5

    .line 62
    goto :goto_2

    .line 63
    :cond_3
    move v0, v4

    .line 64
    :goto_2
    iget-object v3, p0, Lu1/i;->i:Lo1/l;

    .line 65
    .line 66
    iget-boolean v3, v3, Lo1/l;->d:Z

    .line 67
    .line 68
    if-eqz v3, :cond_4

    .line 69
    .line 70
    if-eqz v0, :cond_4

    .line 71
    .line 72
    iget-object v3, v1, Lq1/f;->c:Landroid/view/ViewGroup;

    .line 73
    .line 74
    invoke-static {v3}, Lorg/mozilla/geckoview/b;->g(Landroid/view/ViewGroup;)V

    .line 75
    .line 76
    .line 77
    :cond_4
    iget-object v3, p0, Lu1/i;->r:Lu1/v;

    .line 78
    .line 79
    iget-object v3, v3, Lu1/v;->c:Lz1/a;

    .line 80
    .line 81
    iget v3, v3, Lz1/a;->b:F

    .line 82
    .line 83
    iget v6, v1, Lq1/f;->z:I

    .line 84
    .line 85
    int-to-float v6, v6

    .line 86
    sub-float/2addr v6, v3

    .line 87
    iget-boolean v7, p0, Lu1/i;->D:Z

    .line 88
    .line 89
    iget-object v8, p0, Lu1/i;->G:Lu1/a;

    .line 90
    .line 91
    if-eqz v7, :cond_6

    .line 92
    .line 93
    iget-boolean v7, v1, Lq1/f;->A:Z

    .line 94
    .line 95
    if-eqz v7, :cond_6

    .line 96
    .line 97
    const/high16 v7, 0x40400000    # 3.0f

    .line 98
    .line 99
    cmpg-float v6, v6, v7

    .line 100
    .line 101
    if-ltz v6, :cond_5

    .line 102
    .line 103
    cmpg-float v3, v3, v7

    .line 104
    .line 105
    if-gez v3, :cond_6

    .line 106
    .line 107
    :cond_5
    iget-boolean v3, v1, Lq1/f;->h:Z

    .line 108
    .line 109
    if-nez v3, :cond_6

    .line 110
    .line 111
    iget-boolean v3, p0, Lu1/i;->E:Z

    .line 112
    .line 113
    if-nez v3, :cond_7

    .line 114
    .line 115
    iput-boolean v5, p0, Lu1/i;->E:Z

    .line 116
    .line 117
    sget-object v3, Lq1/f;->L:Lo1/j0;

    .line 118
    .line 119
    const-string v6, "releasePointerTask"

    .line 120
    .line 121
    const-wide/16 v9, 0x3e8

    .line 122
    .line 123
    invoke-virtual {v3, v8, v6, v9, v10}, Lo1/j0;->b(Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 124
    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_6
    iget-boolean v3, p0, Lu1/i;->E:Z

    .line 128
    .line 129
    if-eqz v3, :cond_7

    .line 130
    .line 131
    sget-object v3, Lq1/f;->L:Lo1/j0;

    .line 132
    .line 133
    invoke-virtual {v3, v8}, Lo1/j0;->d(Ljava/lang/Runnable;)V

    .line 134
    .line 135
    .line 136
    iput-boolean v4, p0, Lu1/i;->E:Z

    .line 137
    .line 138
    :cond_7
    :goto_3
    if-nez v0, :cond_8

    .line 139
    .line 140
    invoke-static {p1}, Lo1/l;->c(Landroid/view/MotionEvent;)Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-eqz v0, :cond_8

    .line 145
    .line 146
    iget-boolean v0, v1, Lq1/f;->A:Z

    .line 147
    .line 148
    if-eqz v0, :cond_8

    .line 149
    .line 150
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-ne v0, v5, :cond_8

    .line 155
    .line 156
    iget-object v0, v1, Lq1/f;->c:Landroid/view/ViewGroup;

    .line 157
    .line 158
    invoke-static {v0}, Lorg/mozilla/geckoview/b;->o(Landroid/view/ViewGroup;)V

    .line 159
    .line 160
    .line 161
    :cond_8
    :goto_4
    iget-object v0, v1, Lq1/f;->b:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 162
    .line 163
    invoke-static {v0}, Lnom/vrd/Launch;->a(Lcom/nomone/vr_desktop/LaunchActivity;)V

    .line 164
    .line 165
    .line 166
    iget-object v0, p0, Lu1/i;->i:Lo1/l;

    .line 167
    .line 168
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    .line 170
    .line 171
    invoke-static {p1}, Lo1/l;->c(Landroid/view/MotionEvent;)Z

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    if-nez v3, :cond_a

    .line 176
    .line 177
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    and-int/2addr v3, v2

    .line 182
    if-ne v3, v2, :cond_9

    .line 183
    .line 184
    move v2, v5

    .line 185
    goto :goto_5

    .line 186
    :cond_9
    move v2, v4

    .line 187
    :goto_5
    if-nez v2, :cond_a

    .line 188
    .line 189
    goto/16 :goto_11

    .line 190
    .line 191
    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 192
    .line 193
    .line 194
    move-result-wide v2

    .line 195
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    .line 196
    .line 197
    .line 198
    move-result v6

    .line 199
    invoke-static {v6}, Lo1/l;->b(I)Lo1/k;

    .line 200
    .line 201
    .line 202
    move-result-object v6

    .line 203
    if-nez v6, :cond_b

    .line 204
    .line 205
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    .line 206
    .line 207
    .line 208
    move-result v6

    .line 209
    invoke-static {v6}, Lo1/l;->a(I)Lo1/k;

    .line 210
    .line 211
    .line 212
    move-result-object v6

    .line 213
    :cond_b
    iget-boolean v7, v6, Lo1/k;->b:Z

    .line 214
    .line 215
    iget-object v8, v0, Lo1/l;->c:Lu1/d;

    .line 216
    .line 217
    if-nez v7, :cond_c

    .line 218
    .line 219
    iput-boolean v5, v6, Lo1/k;->b:Z

    .line 220
    .line 221
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    .line 222
    .line 223
    .line 224
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    .line 226
    .line 227
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 228
    .line 229
    .line 230
    move-result v7

    .line 231
    const/4 v9, 0x2

    .line 232
    const/16 v10, 0x8

    .line 233
    .line 234
    if-eq v7, v9, :cond_1f

    .line 235
    .line 236
    const/4 v11, 0x7

    .line 237
    if-ne v7, v11, :cond_d

    .line 238
    .line 239
    goto/16 :goto_c

    .line 240
    .line 241
    :cond_d
    const/16 v2, 0xb

    .line 242
    .line 243
    if-ne v7, v2, :cond_10

    .line 244
    .line 245
    iget-boolean v2, v0, Lo1/l;->d:Z

    .line 246
    .line 247
    if-eqz v2, :cond_e

    .line 248
    .line 249
    iput-boolean v5, v6, Lo1/k;->c:Z

    .line 250
    .line 251
    goto :goto_6

    .line 252
    :cond_e
    iput-boolean v5, v6, Lo1/k;->d:Z

    .line 253
    .line 254
    :goto_6
    iget-object v2, v0, Lo1/l;->f:Ljava/util/LinkedList;

    .line 255
    .line 256
    monitor-enter v2

    .line 257
    :try_start_0
    iget-object v0, v0, Lo1/l;->f:Ljava/util/LinkedList;

    .line 258
    .line 259
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 260
    .line 261
    .line 262
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionButton()I

    .line 264
    .line 265
    .line 266
    move-result v0

    .line 267
    if-ne v0, v5, :cond_f

    .line 268
    .line 269
    invoke-virtual {v8, v5}, Lu1/d;->a(I)V

    .line 270
    .line 271
    .line 272
    goto/16 :goto_10

    .line 273
    .line 274
    :cond_f
    if-ne v0, v9, :cond_29

    .line 275
    .line 276
    iput-boolean v4, v6, Lo1/k;->h:Z

    .line 277
    .line 278
    invoke-virtual {v8, v9}, Lu1/d;->a(I)V

    .line 279
    .line 280
    .line 281
    goto/16 :goto_10

    .line 282
    .line 283
    :catchall_0
    move-exception p1

    .line 284
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 285
    throw p1

    .line 286
    :cond_10
    const/16 v2, 0xc

    .line 287
    .line 288
    if-ne v7, v2, :cond_12

    .line 289
    .line 290
    iget-object v2, v0, Lo1/l;->f:Ljava/util/LinkedList;

    .line 291
    .line 292
    monitor-enter v2

    .line 293
    :try_start_2
    iget-object v0, v0, Lo1/l;->f:Ljava/util/LinkedList;

    .line 294
    .line 295
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 296
    .line 297
    .line 298
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 299
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionButton()I

    .line 300
    .line 301
    .line 302
    move-result v0

    .line 303
    if-ne v0, v5, :cond_11

    .line 304
    .line 305
    invoke-virtual {v8, v5}, Lu1/d;->b(I)V

    .line 306
    .line 307
    .line 308
    goto/16 :goto_10

    .line 309
    .line 310
    :cond_11
    if-ne v0, v9, :cond_29

    .line 311
    .line 312
    iput-boolean v4, v6, Lo1/k;->h:Z

    .line 313
    .line 314
    goto :goto_7

    .line 315
    :catchall_1
    move-exception p1

    .line 316
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 317
    throw p1

    .line 318
    :cond_12
    if-eqz v7, :cond_15

    .line 319
    .line 320
    if-ne v7, v5, :cond_13

    .line 321
    .line 322
    goto :goto_8

    .line 323
    :cond_13
    const/4 v0, 0x3

    .line 324
    if-ne v7, v0, :cond_14

    .line 325
    .line 326
    const-string v0, "sdf"

    .line 327
    .line 328
    const-string v2, "Mouse gesture canceled"

    .line 329
    .line 330
    invoke-static {v0, v2}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v8, v5}, Lu1/d;->b(I)V

    .line 334
    .line 335
    .line 336
    :goto_7
    invoke-virtual {v8, v9}, Lu1/d;->b(I)V

    .line 337
    .line 338
    .line 339
    goto/16 :goto_10

    .line 340
    .line 341
    :cond_14
    if-ne v7, v10, :cond_29

    .line 342
    .line 343
    const/16 v0, 0x9

    .line 344
    .line 345
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 346
    .line 347
    .line 348
    move-result v0

    .line 349
    float-to-int v0, v0

    .line 350
    iget-object v2, v8, Lu1/d;->c:Ljava/lang/Object;

    .line 351
    .line 352
    check-cast v2, Lu1/i;

    .line 353
    .line 354
    invoke-static {v2, v9}, Lu1/i;->d(Lu1/i;I)V

    .line 355
    .line 356
    .line 357
    int-to-float v0, v0

    .line 358
    invoke-static {v2, v0}, Lu1/i;->c(Lu1/i;F)V

    .line 359
    .line 360
    .line 361
    goto/16 :goto_10

    .line 362
    .line 363
    :cond_15
    :goto_8
    iget-boolean v2, v0, Lo1/l;->d:Z

    .line 364
    .line 365
    if-eqz v2, :cond_17

    .line 366
    .line 367
    iget-boolean v2, v6, Lo1/k;->f:Z

    .line 368
    .line 369
    if-nez v2, :cond_16

    .line 370
    .line 371
    iget-boolean v2, v6, Lo1/k;->c:Z

    .line 372
    .line 373
    if-eqz v2, :cond_18

    .line 374
    .line 375
    :cond_16
    if-ne v7, v5, :cond_29

    .line 376
    .line 377
    iput-boolean v4, v6, Lo1/k;->f:Z

    .line 378
    .line 379
    goto/16 :goto_10

    .line 380
    .line 381
    :cond_17
    iget-boolean v2, v6, Lo1/k;->e:Z

    .line 382
    .line 383
    if-nez v2, :cond_1e

    .line 384
    .line 385
    iget-boolean v2, v6, Lo1/k;->d:Z

    .line 386
    .line 387
    if-eqz v2, :cond_18

    .line 388
    .line 389
    goto :goto_b

    .line 390
    :cond_18
    iget-boolean v2, v6, Lo1/k;->g:Z

    .line 391
    .line 392
    if-eqz v2, :cond_1c

    .line 393
    .line 394
    iget-boolean v2, v6, Lo1/k;->i:Z

    .line 395
    .line 396
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    .line 397
    .line 398
    .line 399
    move-result v3

    .line 400
    and-int/2addr v3, v5

    .line 401
    if-lez v3, :cond_19

    .line 402
    .line 403
    move v3, v5

    .line 404
    goto :goto_9

    .line 405
    :cond_19
    move v3, v4

    .line 406
    :goto_9
    invoke-virtual {v0, v2, v3, v5}, Lo1/l;->e(ZZZ)Z

    .line 407
    .line 408
    .line 409
    move-result v2

    .line 410
    iput-boolean v2, v6, Lo1/k;->i:Z

    .line 411
    .line 412
    iget-boolean v2, v6, Lo1/k;->j:Z

    .line 413
    .line 414
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    .line 415
    .line 416
    .line 417
    move-result v3

    .line 418
    and-int/2addr v3, v9

    .line 419
    if-lez v3, :cond_1a

    .line 420
    .line 421
    move v3, v5

    .line 422
    goto :goto_a

    .line 423
    :cond_1a
    move v3, v4

    .line 424
    :goto_a
    invoke-virtual {v0, v2, v3, v4}, Lo1/l;->e(ZZZ)Z

    .line 425
    .line 426
    .line 427
    move-result v2

    .line 428
    iput-boolean v2, v6, Lo1/k;->j:Z

    .line 429
    .line 430
    if-eqz v2, :cond_1b

    .line 431
    .line 432
    iput-boolean v4, v6, Lo1/k;->h:Z

    .line 433
    .line 434
    :cond_1b
    if-nez v7, :cond_1c

    .line 435
    .line 436
    iget-boolean v3, v6, Lo1/k;->i:Z

    .line 437
    .line 438
    if-nez v3, :cond_1c

    .line 439
    .line 440
    if-nez v2, :cond_1c

    .line 441
    .line 442
    iput-boolean v4, v6, Lo1/k;->g:Z

    .line 443
    .line 444
    :cond_1c
    iget-boolean v2, v6, Lo1/k;->g:Z

    .line 445
    .line 446
    if-nez v2, :cond_29

    .line 447
    .line 448
    iget-boolean v2, v6, Lo1/k;->i:Z

    .line 449
    .line 450
    if-nez v7, :cond_1d

    .line 451
    .line 452
    move v4, v5

    .line 453
    :cond_1d
    invoke-virtual {v0, v2, v4, v5}, Lo1/l;->e(ZZZ)Z

    .line 454
    .line 455
    .line 456
    move-result v0

    .line 457
    iput-boolean v0, v6, Lo1/k;->i:Z

    .line 458
    .line 459
    goto/16 :goto_10

    .line 460
    .line 461
    :cond_1e
    :goto_b
    if-ne v7, v5, :cond_29

    .line 462
    .line 463
    iput-boolean v4, v6, Lo1/k;->e:Z

    .line 464
    .line 465
    goto/16 :goto_10

    .line 466
    .line 467
    :cond_1f
    :goto_c
    iget-boolean v7, v6, Lo1/k;->h:Z

    .line 468
    .line 469
    if-eqz v7, :cond_21

    .line 470
    .line 471
    iget-boolean v7, v6, Lo1/k;->j:Z

    .line 472
    .line 473
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    .line 474
    .line 475
    .line 476
    move-result v9

    .line 477
    and-int/2addr v9, v10

    .line 478
    if-lez v9, :cond_20

    .line 479
    .line 480
    move v9, v5

    .line 481
    goto :goto_d

    .line 482
    :cond_20
    move v9, v4

    .line 483
    :goto_d
    invoke-virtual {v0, v7, v9, v4}, Lo1/l;->e(ZZZ)Z

    .line 484
    .line 485
    .line 486
    move-result v7

    .line 487
    iput-boolean v7, v6, Lo1/k;->j:Z

    .line 488
    .line 489
    :cond_21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    .line 490
    .line 491
    .line 492
    move-result v6

    .line 493
    const v7, 0x20004

    .line 494
    .line 495
    .line 496
    and-int/2addr v6, v7

    .line 497
    if-ne v6, v7, :cond_22

    .line 498
    .line 499
    move v6, v5

    .line 500
    goto :goto_e

    .line 501
    :cond_22
    move v6, v4

    .line 502
    :goto_e
    if-eqz v6, :cond_23

    .line 503
    .line 504
    iput-boolean v5, v0, Lo1/l;->d:Z

    .line 505
    .line 506
    new-instance v4, Lo1/h;

    .line 507
    .line 508
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 509
    .line 510
    .line 511
    move-result v6

    .line 512
    const/high16 v7, 0x3f800000    # 1.0f

    .line 513
    .line 514
    mul-float/2addr v6, v7

    .line 515
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 516
    .line 517
    .line 518
    move-result v8

    .line 519
    mul-float/2addr v8, v7

    .line 520
    invoke-direct {v4, v6, v8, v2, v3}, Lo1/h;-><init>(FFJ)V

    .line 521
    .line 522
    .line 523
    goto/16 :goto_f

    .line 524
    .line 525
    :cond_23
    iput-boolean v4, v0, Lo1/l;->d:Z

    .line 526
    .line 527
    iget-object v6, v8, Lu1/d;->c:Ljava/lang/Object;

    .line 528
    .line 529
    check-cast v6, Lu1/i;

    .line 530
    .line 531
    iget-object v7, v6, Lu1/i;->a:Lq1/f;

    .line 532
    .line 533
    iget-boolean v7, v7, Lq1/f;->A:Z

    .line 534
    .line 535
    if-eqz v7, :cond_24

    .line 536
    .line 537
    iget-object v6, v6, Lu1/i;->i:Lo1/l;

    .line 538
    .line 539
    iget-boolean v6, v6, Lo1/l;->d:Z

    .line 540
    .line 541
    if-nez v6, :cond_25

    .line 542
    .line 543
    :cond_24
    move v4, v5

    .line 544
    :cond_25
    const/4 v12, 0x0

    .line 545
    if-eqz v4, :cond_26

    .line 546
    .line 547
    new-instance v4, Lo1/j;

    .line 548
    .line 549
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 550
    .line 551
    .line 552
    move-result v6

    .line 553
    const/4 v7, 0x0

    .line 554
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 555
    .line 556
    .line 557
    int-to-float v7, v7

    .line 558
    sub-float v7, v6, v7

    .line 559
    .line 560
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 561
    .line 562
    .line 563
    move-result v6

    .line 564
    const/4 v8, 0x0

    .line 565
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 566
    .line 567
    .line 568
    int-to-float v8, v8

    .line 569
    sub-float v8, v6, v8

    .line 570
    .line 571
    const/4 v9, 0x0

    .line 572
    move-object v6, v4

    .line 573
    move-wide v10, v2

    .line 574
    invoke-direct/range {v6 .. v11}, Lo1/j;-><init>(FFZJ)V

    .line 575
    .line 576
    .line 577
    invoke-virtual {v0, v4}, Lo1/l;->d(Lo1/i;)V

    .line 578
    .line 579
    .line 580
    new-instance v4, Lo1/h;

    .line 581
    .line 582
    invoke-direct {v4, v12, v12, v2, v3}, Lo1/h;-><init>(FFJ)V

    .line 583
    .line 584
    .line 585
    goto :goto_f

    .line 586
    :cond_26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 587
    .line 588
    .line 589
    move-result v4

    .line 590
    iget v6, v0, Lo1/l;->e:F

    .line 591
    .line 592
    const/high16 v7, -0x40800000    # -1.0f

    .line 593
    .line 594
    cmpl-float v6, v6, v7

    .line 595
    .line 596
    if-nez v6, :cond_27

    .line 597
    .line 598
    iput v4, v0, Lo1/l;->e:F

    .line 599
    .line 600
    :cond_27
    const/16 v6, 0x1b

    .line 601
    .line 602
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 603
    .line 604
    .line 605
    move-result v6

    .line 606
    iget v7, v0, Lo1/l;->e:F

    .line 607
    .line 608
    sub-float v7, v4, v7

    .line 609
    .line 610
    iput v4, v0, Lo1/l;->e:F

    .line 611
    .line 612
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 613
    .line 614
    .line 615
    move-result v4

    .line 616
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 617
    .line 618
    .line 619
    move-result v8

    .line 620
    cmpl-float v4, v4, v8

    .line 621
    .line 622
    if-lez v4, :cond_28

    .line 623
    .line 624
    const v4, 0x3f8ccccd    # 1.1f

    .line 625
    .line 626
    .line 627
    mul-float v6, v7, v4

    .line 628
    .line 629
    :cond_28
    move v4, v6

    .line 630
    new-instance v13, Lo1/j;

    .line 631
    .line 632
    const/high16 v7, -0x40800000    # -1.0f

    .line 633
    .line 634
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 635
    .line 636
    .line 637
    move-result v6

    .line 638
    const/4 v8, 0x0

    .line 639
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 640
    .line 641
    .line 642
    int-to-float v8, v8

    .line 643
    sub-float v8, v6, v8

    .line 644
    .line 645
    const/4 v9, 0x1

    .line 646
    move-object v6, v13

    .line 647
    move-wide v10, v2

    .line 648
    invoke-direct/range {v6 .. v11}, Lo1/j;-><init>(FFZJ)V

    .line 649
    .line 650
    .line 651
    invoke-virtual {v0, v13}, Lo1/l;->d(Lo1/i;)V

    .line 652
    .line 653
    .line 654
    new-instance v6, Lo1/h;

    .line 655
    .line 656
    invoke-direct {v6, v4, v12, v2, v3}, Lo1/h;-><init>(FFJ)V

    .line 657
    .line 658
    .line 659
    move-object v4, v6

    .line 660
    :goto_f
    invoke-virtual {v0, v4}, Lo1/l;->d(Lo1/i;)V

    .line 661
    .line 662
    .line 663
    :cond_29
    :goto_10
    move v4, v5

    .line 664
    :goto_11
    if-eqz v4, :cond_2a

    .line 665
    .line 666
    return v5

    .line 667
    :cond_2a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    .line 668
    .line 669
    .line 670
    move-result v0

    .line 671
    const/16 v2, 0x4002

    .line 672
    .line 673
    and-int/2addr v0, v2

    .line 674
    if-ne v0, v2, :cond_2b

    .line 675
    .line 676
    move v0, v5

    .line 677
    goto :goto_12

    .line 678
    :cond_2b
    const/4 v0, 0x0

    .line 679
    :goto_12
    const/4 v2, 0x0

    .line 680
    if-eqz v0, :cond_2e

    .line 681
    .line 682
    iget-boolean v0, v1, Lq1/f;->h:Z

    .line 683
    .line 684
    if-nez v0, :cond_2e

    .line 685
    .line 686
    iget-object v0, p0, Lu1/i;->k:Lu1/r;

    .line 687
    .line 688
    if-nez v0, :cond_2d

    .line 689
    .line 690
    if-eqz v0, :cond_2c

    .line 691
    .line 692
    goto :goto_13

    .line 693
    :cond_2c
    new-instance v0, Lu1/r;

    .line 694
    .line 695
    iget-object v1, v1, Lq1/f;->b:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 696
    .line 697
    sget-object v3, Lq1/f;->L:Lo1/j0;

    .line 698
    .line 699
    new-instance v4, Lu1/e;

    .line 700
    .line 701
    const/4 v6, 0x0

    .line 702
    invoke-direct {v4, p0, v6}, Lu1/e;-><init>(Lu1/i;I)V

    .line 703
    .line 704
    .line 705
    invoke-direct {v0, v1, v3, v4}, Lu1/r;-><init>(Lcom/nomone/vr_desktop/LaunchActivity;Lo1/j0;Lu1/e;)V

    .line 706
    .line 707
    .line 708
    iput-object v0, p0, Lu1/i;->k:Lu1/r;

    .line 709
    .line 710
    :cond_2d
    :goto_13
    iget-object v0, p0, Lu1/i;->k:Lu1/r;

    .line 711
    .line 712
    invoke-virtual {v0, v2, p1}, Lu1/r;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 713
    .line 714
    .line 715
    move-result v0

    .line 716
    if-eqz v0, :cond_2e

    .line 717
    .line 718
    return v5

    .line 719
    :cond_2e
    iput-boolean v5, p0, Lu1/i;->l:Z

    .line 720
    .line 721
    iget-object v0, p0, Lu1/i;->m:Lo1/v0;

    .line 722
    .line 723
    if-eqz v0, :cond_2f

    .line 724
    .line 725
    invoke-virtual {v0, v2, p1}, Lo1/v0;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 726
    .line 727
    .line 728
    return v5

    .line 729
    :cond_2f
    const/4 p1, 0x0

    .line 730
    return p1
.end method

.method public final h(Lu1/h;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lu1/i;->z:Lu1/h;

    .line 2
    .line 3
    iget-object p1, p0, Lu1/i;->u:La2/l;

    .line 4
    .line 5
    check-cast p1, La2/k;

    .line 6
    .line 7
    iget-object p1, p1, La2/k;->i:Lz1/f;

    .line 8
    .line 9
    iget v0, p1, Lz1/f;->e:F

    .line 10
    .line 11
    iget p1, p1, Lz1/f;->f:F

    .line 12
    .line 13
    invoke-virtual {p0, v0, p1}, Lu1/i;->e(FF)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final i()V
    .locals 5

    .line 1
    iget-object v0, p0, Lu1/i;->v:La2/k;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lu1/i;->a:Lq1/f;

    .line 6
    .line 7
    iget-object v1, v0, Lq1/f;->b:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 18
    .line 19
    float-to-double v1, v1

    .line 20
    const-wide/high16 v3, 0x4006000000000000L    # 2.75

    .line 21
    .line 22
    cmpg-double v1, v1, v3

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    iget-object v3, v0, Lq1/f;->b:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 26
    .line 27
    if-gez v1, :cond_0

    .line 28
    .line 29
    new-instance v1, Lv1/a;

    .line 30
    .line 31
    const-string v4, "cursorPointerSmall.png"

    .line 32
    .line 33
    invoke-direct {v1, v3, v4, v2}, Lv1/a;-><init>(Lcom/nomone/vr_desktop/LaunchActivity;Ljava/lang/String;Z)V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lu1/i;->w:Lv1/a;

    .line 37
    .line 38
    new-instance v1, Lv1/a;

    .line 39
    .line 40
    const-string v4, "cursorFingerSmall.png"

    .line 41
    .line 42
    invoke-direct {v1, v3, v4, v2}, Lv1/a;-><init>(Lcom/nomone/vr_desktop/LaunchActivity;Ljava/lang/String;Z)V

    .line 43
    .line 44
    .line 45
    iput-object v1, p0, Lu1/i;->x:Lv1/a;

    .line 46
    .line 47
    new-instance v1, Lv1/a;

    .line 48
    .line 49
    const-string v4, "cursorStylusSmall.png"

    .line 50
    .line 51
    invoke-direct {v1, v3, v4, v2}, Lv1/a;-><init>(Lcom/nomone/vr_desktop/LaunchActivity;Ljava/lang/String;Z)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    new-instance v1, Lv1/a;

    .line 56
    .line 57
    const-string v4, "cursorPointerLarge.png"

    .line 58
    .line 59
    invoke-direct {v1, v3, v4, v2}, Lv1/a;-><init>(Lcom/nomone/vr_desktop/LaunchActivity;Ljava/lang/String;Z)V

    .line 60
    .line 61
    .line 62
    iput-object v1, p0, Lu1/i;->w:Lv1/a;

    .line 63
    .line 64
    new-instance v1, Lv1/a;

    .line 65
    .line 66
    const-string v4, "cursorFingerLarge.png"

    .line 67
    .line 68
    invoke-direct {v1, v3, v4, v2}, Lv1/a;-><init>(Lcom/nomone/vr_desktop/LaunchActivity;Ljava/lang/String;Z)V

    .line 69
    .line 70
    .line 71
    iput-object v1, p0, Lu1/i;->x:Lv1/a;

    .line 72
    .line 73
    new-instance v1, Lv1/a;

    .line 74
    .line 75
    const-string v4, "cursorStylusLarge.png"

    .line 76
    .line 77
    invoke-direct {v1, v3, v4, v2}, Lv1/a;-><init>(Lcom/nomone/vr_desktop/LaunchActivity;Ljava/lang/String;Z)V

    .line 78
    .line 79
    .line 80
    :goto_0
    iput-object v1, p0, Lu1/i;->y:Lv1/a;

    .line 81
    .line 82
    new-instance v1, La2/k;

    .line 83
    .line 84
    iget-object v2, p0, Lu1/i;->w:Lv1/a;

    .line 85
    .line 86
    invoke-direct {v1, v0, v2}, La2/k;-><init>(Lq1/f;Lv1/c;)V

    .line 87
    .line 88
    .line 89
    iput-object v1, p0, Lu1/i;->v:La2/k;

    .line 90
    .line 91
    iget-object v0, v0, Lq1/f;->e:La2/c0;

    .line 92
    .line 93
    invoke-interface {v0, v1}, La2/c0;->z(La2/r;)V

    .line 94
    .line 95
    .line 96
    :cond_1
    iget-object v0, p0, Lu1/i;->v:La2/k;

    .line 97
    .line 98
    iget-boolean v1, p0, Lu1/i;->f:Z

    .line 99
    .line 100
    iput-boolean v1, v0, La2/k;->r:Z

    .line 101
    .line 102
    iput-boolean v1, v0, La2/k;->s:Z

    .line 103
    .line 104
    iput-object v0, p0, Lu1/i;->u:La2/l;

    .line 105
    .line 106
    return-void
.end method

.method public final j(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lu1/i;->m:Lo1/v0;

    .line 2
    .line 3
    iget-boolean v0, v0, Lo1/v0;->k:Z

    .line 4
    .line 5
    if-ne v0, p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lu1/i;->a:Lq1/f;

    .line 9
    .line 10
    if-eqz p1, :cond_2

    .line 11
    .line 12
    iget-boolean v1, v0, Lq1/f;->h:Z

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iget-object p1, v0, Lq1/f;->H:Lo1/n0;

    .line 17
    .line 18
    const-string v0, "Touch mode is not supported in VR"

    .line 19
    .line 20
    const/16 v1, 0x6a4

    .line 21
    .line 22
    invoke-virtual {p1, v1, v0}, Lo1/n0;->c(ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    iget-object v1, v0, Lq1/f;->H:Lo1/n0;

    .line 27
    .line 28
    const-string v2, "Touch mode enabled"

    .line 29
    .line 30
    const/16 v3, 0x3e8

    .line 31
    .line 32
    invoke-virtual {v1, v3, v2}, Lo1/n0;->c(ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    iget-object v1, v0, Lq1/f;->H:Lo1/n0;

    .line 37
    .line 38
    const-string v2, "Virtual mouse mode enabled"

    .line 39
    .line 40
    const/16 v3, 0x4b0

    .line 41
    .line 42
    invoke-virtual {v1, v3, v2}, Lo1/n0;->c(ILjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lu1/i;->f()V

    .line 46
    .line 47
    .line 48
    :goto_0
    iget-object v1, v0, Lq1/f;->b:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 49
    .line 50
    const-string v2, "audio"

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Landroid/media/AudioManager;

    .line 57
    .line 58
    if-eqz p1, :cond_3

    .line 59
    .line 60
    const/16 v2, 0x8

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    const/4 v2, 0x7

    .line 64
    :goto_1
    const/high16 v3, 0x3f800000    # 1.0f

    .line 65
    .line 66
    invoke-virtual {v1, v2, v3}, Landroid/media/AudioManager;->playSoundEffect(IF)V

    .line 67
    .line 68
    .line 69
    iget-object v1, v0, Lq1/f;->c:Landroid/view/ViewGroup;

    .line 70
    .line 71
    const/4 v2, 0x1

    .line 72
    invoke-virtual {v1, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 73
    .line 74
    .line 75
    iget-object v1, p0, Lu1/i;->m:Lo1/v0;

    .line 76
    .line 77
    iput-boolean p1, v1, Lo1/v0;->k:Z

    .line 78
    .line 79
    iget-object v1, p0, Lu1/i;->v:La2/k;

    .line 80
    .line 81
    if-eqz p1, :cond_4

    .line 82
    .line 83
    iget-object p1, p0, Lu1/i;->x:Lv1/a;

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_4
    iget-object p1, p0, Lu1/i;->w:Lv1/a;

    .line 87
    .line 88
    :goto_2
    iput-object p1, v1, La2/k;->h:Lv1/c;

    .line 89
    .line 90
    invoke-virtual {v0}, Lq1/f;->d()V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method public final k(Z)V
    .locals 5

    .line 1
    iget v0, p0, Lu1/i;->M:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lu1/i;->m:Lo1/v0;

    .line 8
    .line 9
    iget-boolean v0, v0, Lo1/v0;->k:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    move v0, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v2

    .line 16
    :goto_0
    iget-object v3, p0, Lu1/i;->a:Lq1/f;

    .line 17
    .line 18
    invoke-virtual {v3}, Lq1/f;->b()Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-eqz v4, :cond_2

    .line 23
    .line 24
    iget-boolean v3, v3, Lq1/f;->h:Z

    .line 25
    .line 26
    if-eqz v3, :cond_2

    .line 27
    .line 28
    iget-object v3, p0, Lu1/i;->z:Lu1/h;

    .line 29
    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    move v3, v1

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move v3, v2

    .line 35
    :goto_1
    if-eqz v3, :cond_2

    .line 36
    .line 37
    move v2, v1

    .line 38
    :cond_2
    if-eqz v0, :cond_3

    .line 39
    .line 40
    const/16 p1, 0x1f4

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_3
    if-eqz v2, :cond_4

    .line 44
    .line 45
    const/16 v0, 0x2710

    .line 46
    .line 47
    goto :goto_3

    .line 48
    :cond_4
    const/16 p1, 0x3a98

    .line 49
    .line 50
    :goto_2
    move v0, p1

    .line 51
    move p1, v1

    .line 52
    :goto_3
    if-eqz p1, :cond_5

    .line 53
    .line 54
    iput-boolean v1, p0, Lu1/i;->e:Z

    .line 55
    .line 56
    invoke-virtual {p0}, Lu1/i;->l()V

    .line 57
    .line 58
    .line 59
    :cond_5
    sget-object p1, Lq1/f;->L:Lo1/j0;

    .line 60
    .line 61
    iget-object v1, p0, Lu1/i;->K:Lu1/a;

    .line 62
    .line 63
    invoke-virtual {p1, v1}, Lo1/j0;->d(Ljava/lang/Runnable;)V

    .line 64
    .line 65
    .line 66
    sget-object p1, Lq1/f;->L:Lo1/j0;

    .line 67
    .line 68
    const-string v2, "mouseVisibilityResetTask"

    .line 69
    .line 70
    int-to-long v3, v0

    .line 71
    invoke-virtual {p1, v1, v2, v3, v4}, Lo1/j0;->b(Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public final l()V
    .locals 2

    .line 1
    iget v0, p0, Lu1/i;->N:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x3

    .line 8
    if-ne v0, v1, :cond_1

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_1
    iget-boolean v0, p0, Lu1/i;->e:Z

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    :goto_0
    const/4 v0, 0x1

    .line 16
    goto :goto_2

    .line 17
    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 18
    :goto_2
    iget-boolean v1, p0, Lu1/i;->f:Z

    .line 19
    .line 20
    if-eq v1, v0, :cond_3

    .line 21
    .line 22
    iput-boolean v0, p0, Lu1/i;->f:Z

    .line 23
    .line 24
    iget-object v1, p0, Lu1/i;->u:La2/l;

    .line 25
    .line 26
    check-cast v1, La2/k;

    .line 27
    .line 28
    iput-boolean v0, v1, La2/k;->r:Z

    .line 29
    .line 30
    iput-boolean v0, v1, La2/k;->s:Z

    .line 31
    .line 32
    iget-object v0, p0, Lu1/i;->a:Lq1/f;

    .line 33
    .line 34
    invoke-virtual {v0}, Lq1/f;->d()V

    .line 35
    .line 36
    .line 37
    :cond_3
    return-void
.end method

.method public final m()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lu1/i;->C:J

    return-void
.end method
