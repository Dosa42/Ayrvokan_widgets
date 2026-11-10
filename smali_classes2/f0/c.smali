.class public final Lf0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly0/b;


# instance fields
.field public f:Z

.field public final g:Ljava/lang/Object;

.field public final h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public j:Ljava/lang/Object;

.field public final k:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lq1/h;Lz1/g;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lf0/c;->i:Ljava/lang/Object;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lf0/c;->j:Ljava/lang/Object;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lf0/c;->k:Ljava/lang/Object;

    iput-object p1, p0, Lf0/c;->g:Ljava/lang/Object;

    iput-object p2, p0, Lf0/c;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lx0/d;Ly0/f;Lx0/a;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lf0/c;->k:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lf0/c;->i:Ljava/lang/Object;

    iput-object p1, p0, Lf0/c;->j:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lf0/c;->f:Z

    iput-object p2, p0, Lf0/c;->g:Ljava/lang/Object;

    iput-object p3, p0, Lf0/c;->h:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lv0/a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lf0/c;->k:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lx0/d;

    .line 4
    .line 5
    iget-object v0, v0, Lx0/d;->r:Le1/d;

    .line 6
    .line 7
    new-instance v1, Lf0/m;

    .line 8
    .line 9
    const/4 v2, 0x5

    .line 10
    invoke-direct {v1, p0, p1, v2}, Lf0/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final b(Landroidx/fragment/app/h;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lf0/c;->j:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/graphics/Rect;

    .line 4
    .line 5
    iget-object v1, p0, Lf0/c;->i:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Landroid/graphics/Rect;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lf0/c;->i:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Landroid/graphics/Rect;

    .line 15
    .line 16
    iget-object v1, p0, Lf0/c;->h:Ljava/lang/Object;

    .line 17
    .line 18
    move-object v2, v1

    .line 19
    check-cast v2, Lz1/g;

    .line 20
    .line 21
    invoke-interface {v2}, Lz1/g;->h()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-interface {v2}, Lz1/g;->i()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    const/4 v5, 0x0

    .line 30
    invoke-virtual {v0, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lf0/c;->i:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v0, Landroid/graphics/Rect;

    .line 36
    .line 37
    move-object v3, v1

    .line 38
    check-cast v3, Lz1/g;

    .line 39
    .line 40
    instance-of v4, v3, Lz1/c;

    .line 41
    .line 42
    if-eqz v4, :cond_0

    .line 43
    .line 44
    check-cast v3, Lz1/c;

    .line 45
    .line 46
    iget v4, v3, Lz1/c;->a:I

    .line 47
    .line 48
    iget v3, v3, Lz1/c;->b:I

    .line 49
    .line 50
    invoke-virtual {v0, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 51
    .line 52
    .line 53
    :cond_0
    iget-boolean v0, p0, Lf0/c;->f:Z

    .line 54
    .line 55
    iget-object v3, p0, Lf0/c;->g:Ljava/lang/Object;

    .line 56
    .line 57
    iget-object v4, p0, Lf0/c;->k:Ljava/lang/Object;

    .line 58
    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    iget-object v0, p0, Lf0/c;->i:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v0, Landroid/graphics/Rect;

    .line 64
    .line 65
    invoke-interface {v2}, Lz1/g;->h()I

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    invoke-interface {v2}, Lz1/g;->i()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    invoke-virtual {v0, v5, v5, v6, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 74
    .line 75
    .line 76
    iput-boolean v5, p0, Lf0/c;->f:Z

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    move-object v0, v4

    .line 80
    check-cast v0, Landroid/graphics/Rect;

    .line 81
    .line 82
    move-object v2, v3

    .line 83
    check-cast v2, Lq1/h;

    .line 84
    .line 85
    invoke-interface {v2}, Lq1/h;->h()Landroid/graphics/Rect;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 90
    .line 91
    .line 92
    :goto_0
    check-cast v4, Landroid/graphics/Rect;

    .line 93
    .line 94
    check-cast v1, Lz1/g;

    .line 95
    .line 96
    instance-of v0, v1, Lz1/c;

    .line 97
    .line 98
    if-eqz v0, :cond_2

    .line 99
    .line 100
    check-cast v1, Lz1/c;

    .line 101
    .line 102
    iget v0, v1, Lz1/c;->a:I

    .line 103
    .line 104
    iget v1, v1, Lz1/c;->b:I

    .line 105
    .line 106
    invoke-virtual {v4, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 107
    .line 108
    .line 109
    :cond_2
    iget-object v0, p0, Lf0/c;->i:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast v0, Landroid/graphics/Rect;

    .line 112
    .line 113
    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    const/4 v1, 0x1

    .line 118
    if-nez v0, :cond_8

    .line 119
    .line 120
    move-object v0, v3

    .line 121
    check-cast v0, Lq1/h;

    .line 122
    .line 123
    invoke-interface {v0}, Lq1/h;->c()Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_6

    .line 128
    .line 129
    iget-object v0, p0, Lf0/c;->i:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast v0, Landroid/graphics/Rect;

    .line 132
    .line 133
    iget-object v2, p1, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast v2, Landroid/graphics/Rect;

    .line 136
    .line 137
    iget-object v6, p1, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast v6, Lo1/e;

    .line 140
    .line 141
    iget v7, v6, Lo1/e;->a:I

    .line 142
    .line 143
    if-nez v7, :cond_3

    .line 144
    .line 145
    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 146
    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_3
    invoke-virtual {v6}, Lo1/e;->c()Lo1/d;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    iget-object v6, v6, Lo1/d;->a:Ljava/lang/Object;

    .line 154
    .line 155
    check-cast v6, Lq1/g;

    .line 156
    .line 157
    iget-object v6, v6, Lq1/g;->a:Landroid/graphics/Rect;

    .line 158
    .line 159
    invoke-virtual {v2, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 160
    .line 161
    .line 162
    sub-int/2addr v7, v1

    .line 163
    :goto_1
    if-lez v7, :cond_4

    .line 164
    .line 165
    iget-object v6, p1, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 166
    .line 167
    check-cast v6, Lo1/e;

    .line 168
    .line 169
    invoke-virtual {v6}, Lo1/e;->c()Lo1/d;

    .line 170
    .line 171
    .line 172
    move-result-object v6

    .line 173
    iget-object v6, v6, Lo1/d;->a:Ljava/lang/Object;

    .line 174
    .line 175
    check-cast v6, Lq1/g;

    .line 176
    .line 177
    iget-object v6, v6, Lq1/g;->a:Landroid/graphics/Rect;

    .line 178
    .line 179
    invoke-virtual {v2, v6}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 180
    .line 181
    .line 182
    add-int/lit8 v7, v7, -0x1

    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_4
    :goto_2
    iget-object v2, p1, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    .line 186
    .line 187
    check-cast v2, Landroid/graphics/Rect;

    .line 188
    .line 189
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    if-eqz v2, :cond_5

    .line 194
    .line 195
    goto :goto_3

    .line 196
    :cond_5
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 197
    .line 198
    .line 199
    :goto_3
    iget-object v0, p0, Lf0/c;->i:Ljava/lang/Object;

    .line 200
    .line 201
    check-cast v0, Landroid/graphics/Rect;

    .line 202
    .line 203
    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 204
    .line 205
    .line 206
    goto :goto_4

    .line 207
    :cond_6
    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    if-eqz v0, :cond_8

    .line 212
    .line 213
    iget-object v0, p0, Lf0/c;->i:Ljava/lang/Object;

    .line 214
    .line 215
    check-cast v0, Landroid/graphics/Rect;

    .line 216
    .line 217
    invoke-virtual {p1, v0}, Landroidx/fragment/app/h;->n(Landroid/graphics/Rect;)Z

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    if-eqz v0, :cond_7

    .line 222
    .line 223
    goto :goto_4

    .line 224
    :cond_7
    iget-object v0, p0, Lf0/c;->i:Ljava/lang/Object;

    .line 225
    .line 226
    check-cast v0, Landroid/graphics/Rect;

    .line 227
    .line 228
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 229
    .line 230
    .line 231
    :cond_8
    :goto_4
    iget-object v0, p0, Lf0/c;->j:Ljava/lang/Object;

    .line 232
    .line 233
    check-cast v0, Landroid/graphics/Rect;

    .line 234
    .line 235
    iget-object v2, p0, Lf0/c;->i:Ljava/lang/Object;

    .line 236
    .line 237
    check-cast v2, Landroid/graphics/Rect;

    .line 238
    .line 239
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    if-nez v0, :cond_9

    .line 244
    .line 245
    iget-object v0, p0, Lf0/c;->i:Ljava/lang/Object;

    .line 246
    .line 247
    check-cast v0, Landroid/graphics/Rect;

    .line 248
    .line 249
    invoke-virtual {p1, v0}, Landroidx/fragment/app/h;->h(Landroid/graphics/Rect;)V

    .line 250
    .line 251
    .line 252
    return v1

    .line 253
    :cond_9
    check-cast v3, Lq1/h;

    .line 254
    .line 255
    invoke-interface {v3}, Lq1/h;->i()Z

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    if-eqz v0, :cond_a

    .line 260
    .line 261
    return v5

    .line 262
    :cond_a
    iget-object v0, p0, Lf0/c;->i:Ljava/lang/Object;

    .line 263
    .line 264
    check-cast v0, Landroid/graphics/Rect;

    .line 265
    .line 266
    invoke-virtual {p1, v0}, Landroidx/fragment/app/h;->q(Landroid/graphics/Rect;)V

    .line 267
    .line 268
    .line 269
    return v5
.end method

.method public final c(Lv0/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf0/c;->k:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lx0/d;

    .line 4
    .line 5
    iget-object v0, v0, Lx0/d;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    iget-object v1, p0, Lf0/c;->h:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Lx0/a;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lx0/o;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lx0/o;->p(Lv0/a;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
