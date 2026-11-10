.class public abstract La2/a0;
.super La2/s;
.source "SourceFile"


# instance fields
.field public final h:La2/x;

.field public final i:Lq1/r;

.field public j:Lq1/n;

.field public final k:La2/j;

.field public l:Z

.field public m:Z

.field public n:F

.field public o:F

.field public p:J

.field public q:F

.field public r:F


# direct methods
.method public constructor <init>(Lq1/f;La2/x;Lq1/r;)V
    .locals 1

    .line 1
    invoke-direct {p0}, La2/s;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, La2/a0;->l:Z

    iput-object p2, p0, La2/a0;->h:La2/x;

    iput-object p3, p0, La2/a0;->i:Lq1/r;

    new-instance p2, La2/j;

    invoke-direct {p2, v0, v0, p1, v0}, La2/j;-><init>(IILq1/f;I)V

    iput-object p2, p0, La2/a0;->k:La2/j;

    return-void
.end method


# virtual methods
.method public final c(II)V
    .locals 1

    .line 1
    iget-object v0, p0, La2/a0;->k:La2/j;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lz1/c;->l(II)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Lz1/c;->c(II)V

    .line 7
    .line 8
    .line 9
    move-object p1, p0

    .line 10
    check-cast p1, La2/z;

    .line 11
    .line 12
    const/4 p2, 0x1

    .line 13
    iput-boolean p2, p1, La2/z;->B:Z

    .line 14
    .line 15
    return-void
.end method

.method public final u(Lu1/w;)Z
    .locals 11

    .line 1
    iget-boolean v0, p0, La2/s;->f:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p1, Lu1/w;->b:Lz1/b;

    .line 8
    .line 9
    instance-of v2, v0, Lz1/e;

    .line 10
    .line 11
    if-nez v2, :cond_1

    .line 12
    .line 13
    return v1

    .line 14
    :cond_1
    iget p1, p1, Lu1/w;->a:I

    .line 15
    .line 16
    check-cast v0, Lz1/e;

    .line 17
    .line 18
    iget v2, v0, Lz1/e;->a:F

    .line 19
    .line 20
    iget v0, v0, Lz1/e;->b:F

    .line 21
    .line 22
    const/4 v3, 0x4

    .line 23
    const/4 v4, 0x1

    .line 24
    if-eq p1, v3, :cond_8

    .line 25
    .line 26
    const/4 v3, 0x6

    .line 27
    if-ne p1, v3, :cond_2

    .line 28
    .line 29
    goto/16 :goto_3

    .line 30
    .line 31
    :cond_2
    const/4 v3, 0x5

    .line 32
    iget-object v5, p0, La2/a0;->i:Lq1/r;

    .line 33
    .line 34
    iget-object v6, p0, La2/a0;->h:La2/x;

    .line 35
    .line 36
    if-eq p1, v3, :cond_6

    .line 37
    .line 38
    const/4 v3, 0x7

    .line 39
    if-ne p1, v3, :cond_3

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_3
    const/4 v1, 0x2

    .line 43
    if-ne p1, v1, :cond_9

    .line 44
    .line 45
    iget-boolean p1, p0, La2/a0;->m:Z

    .line 46
    .line 47
    if-eqz p1, :cond_9

    .line 48
    .line 49
    iget p1, p0, La2/a0;->n:F

    .line 50
    .line 51
    sub-float p1, v2, p1

    .line 52
    .line 53
    iget v1, p0, La2/a0;->o:F

    .line 54
    .line 55
    sub-float v1, v0, v1

    .line 56
    .line 57
    iget v3, v6, La2/x;->r:F

    .line 58
    .line 59
    add-float/2addr v3, p1

    .line 60
    iget-object v5, v5, Lq1/r;->f:Lq1/x;

    .line 61
    .line 62
    iget-object v5, v5, Lq1/x;->d:Lq1/f;

    .line 63
    .line 64
    iget v5, v5, Lq1/f;->i:F

    .line 65
    .line 66
    mul-float/2addr p1, v5

    .line 67
    add-float/2addr p1, v3

    .line 68
    iget v3, v6, La2/x;->s:F

    .line 69
    .line 70
    add-float/2addr v3, v1

    .line 71
    mul-float/2addr v5, v1

    .line 72
    add-float/2addr v5, v3

    .line 73
    const/high16 v1, 0x42b40000    # 90.0f

    .line 74
    .line 75
    cmpl-float v3, v5, v1

    .line 76
    .line 77
    if-lez v3, :cond_4

    .line 78
    .line 79
    :goto_0
    move v5, v1

    .line 80
    goto :goto_1

    .line 81
    :cond_4
    const/high16 v1, -0x3d4c0000    # -90.0f

    .line 82
    .line 83
    cmpg-float v3, v5, v1

    .line 84
    .line 85
    if-gez v3, :cond_5

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_5
    :goto_1
    iput p1, v6, La2/x;->r:F

    .line 89
    .line 90
    iput v5, v6, La2/x;->s:F

    .line 91
    .line 92
    iput v2, p0, La2/a0;->n:F

    .line 93
    .line 94
    iput v0, p0, La2/a0;->o:F

    .line 95
    .line 96
    goto/16 :goto_4

    .line 97
    .line 98
    :cond_6
    :goto_2
    iput-boolean v1, p0, La2/a0;->m:Z

    .line 99
    .line 100
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 101
    .line 102
    .line 103
    move-result-wide v7

    .line 104
    iget-object p1, p0, La2/a0;->j:Lq1/n;

    .line 105
    .line 106
    if-eqz p1, :cond_9

    .line 107
    .line 108
    iget-wide v9, p0, La2/a0;->p:J

    .line 109
    .line 110
    sub-long/2addr v7, v9

    .line 111
    const-wide/16 v9, 0xfa

    .line 112
    .line 113
    cmp-long p1, v7, v9

    .line 114
    .line 115
    if-gtz p1, :cond_9

    .line 116
    .line 117
    iget p1, p0, La2/a0;->q:F

    .line 118
    .line 119
    sub-float/2addr p1, v2

    .line 120
    iget v2, p0, La2/a0;->r:F

    .line 121
    .line 122
    sub-float/2addr v2, v0

    .line 123
    mul-float/2addr p1, p1

    .line 124
    mul-float/2addr v2, v2

    .line 125
    add-float/2addr v2, p1

    .line 126
    float-to-double v2, v2

    .line 127
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 128
    .line 129
    .line 130
    move-result-wide v2

    .line 131
    double-to-float p1, v2

    .line 132
    const v0, 0x3f8faace    # 1.1224f

    .line 133
    .line 134
    .line 135
    cmpg-float p1, p1, v0

    .line 136
    .line 137
    if-gez p1, :cond_9

    .line 138
    .line 139
    iget-object p1, p0, La2/a0;->j:Lq1/n;

    .line 140
    .line 141
    iget v0, p0, La2/a0;->q:F

    .line 142
    .line 143
    iget-object v2, v5, Lq1/r;->f:Lq1/x;

    .line 144
    .line 145
    iget-object v2, v2, Lq1/x;->d:Lq1/f;

    .line 146
    .line 147
    iget v2, v2, Lq1/f;->i:F

    .line 148
    .line 149
    const/high16 v3, 0x3f800000    # 1.0f

    .line 150
    .line 151
    add-float v5, v2, v3

    .line 152
    .line 153
    mul-float/2addr v5, v0

    .line 154
    iget v0, v6, La2/x;->r:F

    .line 155
    .line 156
    sub-float/2addr v5, v0

    .line 157
    iget v0, p0, La2/a0;->r:F

    .line 158
    .line 159
    add-float/2addr v2, v3

    .line 160
    mul-float/2addr v2, v0

    .line 161
    iget v0, v6, La2/x;->s:F

    .line 162
    .line 163
    sub-float/2addr v2, v0

    .line 164
    iget-object p1, p1, Lq1/n;->g:Lq1/x;

    .line 165
    .line 166
    iget-object v0, p1, Lq1/x;->i:La2/b0;

    .line 167
    .line 168
    iget-object v3, p1, Lq1/x;->n:Lcom/nomone/vr_desktop/Applications/LauncherApplication;

    .line 169
    .line 170
    iget-object v3, v3, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->c:La2/b;

    .line 171
    .line 172
    iget-object v0, v0, La2/e0;->e:Ljava/util/List;

    .line 173
    .line 174
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-nez v0, :cond_7

    .line 179
    .line 180
    goto :goto_4

    .line 181
    :cond_7
    iget-object v0, p1, Lq1/x;->n:Lcom/nomone/vr_desktop/Applications/LauncherApplication;

    .line 182
    .line 183
    iget-object v0, v0, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->b:Lz1/f;

    .line 184
    .line 185
    invoke-virtual {v0, v5, v2}, Lz1/f;->q(FF)V

    .line 186
    .line 187
    .line 188
    iget-object v0, p1, Lq1/x;->d:Lq1/f;

    .line 189
    .line 190
    iget-object v2, p1, Lq1/x;->n:Lcom/nomone/vr_desktop/Applications/LauncherApplication;

    .line 191
    .line 192
    invoke-static {v0, v2}, Lcom/nomone/vr_desktop/Applications/LauncherApplication;->e(Lq1/f;Lr1/c;)V

    .line 193
    .line 194
    .line 195
    iget-object v0, p1, Lq1/x;->n:Lcom/nomone/vr_desktop/Applications/LauncherApplication;

    .line 196
    .line 197
    iget-object v0, v0, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->c:La2/b;

    .line 198
    .line 199
    iget-object v0, v0, La2/b;->f:Lq1/u;

    .line 200
    .line 201
    invoke-virtual {v0, v4}, La2/e0;->B(Z)V

    .line 202
    .line 203
    .line 204
    iget-object v0, p1, Lq1/x;->n:Lcom/nomone/vr_desktop/Applications/LauncherApplication;

    .line 205
    .line 206
    iget-object v2, v0, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->c:La2/b;

    .line 207
    .line 208
    iget-object v2, v2, La2/b;->f:Lq1/u;

    .line 209
    .line 210
    iput-boolean v4, v2, La2/e0;->m:Z

    .line 211
    .line 212
    iget-object v0, v0, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->d:La2/p;

    .line 213
    .line 214
    invoke-virtual {v0}, La2/i;->q()V

    .line 215
    .line 216
    .line 217
    iget-object v0, p1, Lq1/x;->d:Lq1/f;

    .line 218
    .line 219
    iget-object v0, v0, Lq1/f;->G:Lu1/o;

    .line 220
    .line 221
    const/4 v2, 0x0

    .line 222
    invoke-virtual {v0, v1, v2}, Lu1/o;->a(ILjava/lang/String;)V

    .line 223
    .line 224
    .line 225
    iget-object v0, p1, Lq1/x;->k:Lu1/i;

    .line 226
    .line 227
    iget-object v0, v0, Lu1/i;->u:La2/l;

    .line 228
    .line 229
    move-object v1, v0

    .line 230
    check-cast v1, La2/k;

    .line 231
    .line 232
    iget-object v1, v1, La2/k;->i:Lz1/f;

    .line 233
    .line 234
    iget v1, v1, Lz1/f;->e:F

    .line 235
    .line 236
    check-cast v0, La2/k;

    .line 237
    .line 238
    iget-object v0, v0, La2/k;->i:Lz1/f;

    .line 239
    .line 240
    iget v0, v0, Lz1/f;->f:F

    .line 241
    .line 242
    invoke-virtual {p1, v1, v0, v4}, Lq1/x;->j(FFZ)V

    .line 243
    .line 244
    .line 245
    goto :goto_4

    .line 246
    :cond_8
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 247
    .line 248
    .line 249
    move-result-wide v5

    .line 250
    iput-wide v5, p0, La2/a0;->p:J

    .line 251
    .line 252
    iget-boolean p1, p0, La2/a0;->l:Z

    .line 253
    .line 254
    iput-boolean p1, p0, La2/a0;->m:Z

    .line 255
    .line 256
    iput v2, p0, La2/a0;->n:F

    .line 257
    .line 258
    iput v2, p0, La2/a0;->q:F

    .line 259
    .line 260
    iput v0, p0, La2/a0;->o:F

    .line 261
    .line 262
    iput v0, p0, La2/a0;->r:F

    .line 263
    .line 264
    :cond_9
    :goto_4
    return v4
.end method
