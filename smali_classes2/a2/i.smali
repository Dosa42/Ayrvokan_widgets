.class public La2/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La2/a;


# instance fields
.field public A:La2/g;

.field public B:I

.field public final C:La2/h;

.field public D:I

.field public E:I

.field public F:Lo0/j;

.field public final G:Lq1/s;

.field public H:J

.field public I:I

.field public J:I

.field public final c:Lz1/c;

.field public d:La2/c0;

.field public e:La2/q;

.field public final f:Lcom/nomone/GeckoView/MyGeckoView;

.field public final g:Landroid/widget/FrameLayout$LayoutParams;

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public final m:Lq1/f;

.field public n:Lo1/q;

.field public o:Landroid/graphics/SurfaceTexture;

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public final u:Ljava/lang/Object;

.field public v:Z

.field public final w:Lf0/c;

.field public final x:Lu1/z;

.field public y:Z

.field public z:Lq1/b0;


# direct methods
.method public constructor <init>(Lq1/f;Lcom/nomone/GeckoView/MyGeckoView;Lz1/c;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, La2/i;->h:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, La2/i;->i:Z

    .line 9
    .line 10
    iput-boolean v0, p0, La2/i;->k:Z

    .line 11
    .line 12
    iput-boolean v0, p0, La2/i;->l:Z

    .line 13
    .line 14
    const/4 v2, 0x3

    .line 15
    iput v2, p0, La2/i;->I:I

    .line 16
    .line 17
    new-instance v3, Ljava/lang/Object;

    .line 18
    .line 19
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v3, p0, La2/i;->u:Ljava/lang/Object;

    .line 23
    .line 24
    iput v0, p0, La2/i;->J:I

    .line 25
    .line 26
    iput v2, p0, La2/i;->B:I

    .line 27
    .line 28
    new-instance v2, La2/h;

    .line 29
    .line 30
    invoke-direct {v2, p0, v1}, La2/h;-><init>(La2/i;I)V

    .line 31
    .line 32
    .line 33
    iput-object v2, p0, La2/i;->C:La2/h;

    .line 34
    .line 35
    const/16 v2, 0xc

    .line 36
    .line 37
    iput v2, p0, La2/i;->D:I

    .line 38
    .line 39
    new-instance v2, Lq1/s;

    .line 40
    .line 41
    new-instance v3, La2/d;

    .line 42
    .line 43
    invoke-direct {v3, p0, v1}, La2/d;-><init>(La2/i;I)V

    .line 44
    .line 45
    .line 46
    invoke-direct {v2, v3}, Lq1/s;-><init>(Ljava/lang/Runnable;)V

    .line 47
    .line 48
    .line 49
    iput-object v2, p0, La2/i;->G:Lq1/s;

    .line 50
    .line 51
    iput-object p3, p0, La2/i;->c:Lz1/c;

    .line 52
    .line 53
    iput-object p1, p0, La2/i;->m:Lq1/f;

    .line 54
    .line 55
    iput-object p2, p0, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 56
    .line 57
    new-instance v2, Lr1/j;

    .line 58
    .line 59
    const/4 v3, 0x2

    .line 60
    invoke-direct {v2, p0, v3}, Lr1/j;-><init>(Ljava/lang/Object;I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, v2}, Lcom/nomone/GeckoView/MyGeckoView;->a(Ln1/m;)V

    .line 64
    .line 65
    .line 66
    iget v2, p3, Lz1/c;->c:I

    .line 67
    .line 68
    iput v2, p0, La2/i;->q:I

    .line 69
    .line 70
    iget v2, p3, Lz1/c;->d:I

    .line 71
    .line 72
    iput v2, p0, La2/i;->r:I

    .line 73
    .line 74
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 75
    .line 76
    iget v3, p0, La2/i;->q:I

    .line 77
    .line 78
    iget v4, p0, La2/i;->r:I

    .line 79
    .line 80
    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 81
    .line 82
    .line 83
    iput-object v2, p0, La2/i;->g:Landroid/widget/FrameLayout$LayoutParams;

    .line 84
    .line 85
    invoke-virtual {p2, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    .line 87
    .line 88
    iget-object v2, p1, Lq1/f;->c:Landroid/view/ViewGroup;

    .line 89
    .line 90
    invoke-virtual {v2, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 91
    .line 92
    .line 93
    new-instance v1, Lf0/c;

    .line 94
    .line 95
    new-instance v2, Lf0/k;

    .line 96
    .line 97
    invoke-direct {v2, p0, p3}, Lf0/k;-><init>(La2/i;Lz1/c;)V

    .line 98
    .line 99
    .line 100
    invoke-direct {v1, v2, p3}, Lf0/c;-><init>(Lq1/h;Lz1/g;)V

    .line 101
    .line 102
    .line 103
    iput-object v1, p0, La2/i;->w:Lf0/c;

    .line 104
    .line 105
    new-instance v1, Lu1/z;

    .line 106
    .line 107
    new-instance v2, Lo0/j;

    .line 108
    .line 109
    const/4 v3, 0x5

    .line 110
    invoke-direct {v2, v3, p0, p2}, Lo0/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    invoke-direct {v1, p1, p0, p3, v2}, Lu1/z;-><init>(Lq1/f;La2/r;Lz1/c;Lu1/y;)V

    .line 114
    .line 115
    .line 116
    iput-object v1, p0, La2/i;->x:Lu1/z;

    .line 117
    .line 118
    sget-object p1, Lq1/f;->L:Lo1/j0;

    .line 119
    .line 120
    new-instance p2, La2/d;

    .line 121
    .line 122
    invoke-direct {p2, p0, v0}, La2/d;-><init>(La2/i;I)V

    .line 123
    .line 124
    .line 125
    const-string p3, "Enable loading animation"

    .line 126
    .line 127
    const-wide/16 v0, 0x3e8

    .line 128
    .line 129
    invoke-virtual {p1, p2, p3, v0, v1}, Lo1/j0;->b(Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 130
    .line 131
    .line 132
    return-void
.end method

.method public static A(La2/i;II)V
    .locals 3

    .line 1
    iget-object v0, p0, La2/i;->g:Landroid/widget/FrameLayout$LayoutParams;

    .line 2
    .line 3
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 4
    .line 5
    if-ne p1, v1, :cond_0

    .line 6
    .line 7
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 8
    .line 9
    if-eq p2, v1, :cond_1

    .line 10
    .line 11
    :cond_0
    const/16 v1, 0xc

    .line 12
    .line 13
    iput v1, p0, La2/i;->E:I

    .line 14
    .line 15
    iget-object v1, p0, La2/i;->c:Lz1/c;

    .line 16
    .line 17
    invoke-virtual {v1, p1, p2}, Lz1/c;->l(II)V

    .line 18
    .line 19
    .line 20
    iput p1, p0, La2/i;->q:I

    .line 21
    .line 22
    iput p2, p0, La2/i;->r:I

    .line 23
    .line 24
    new-instance v1, La2/e;

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-direct {v1, p0, p1, p2, v2}, La2/e;-><init>(La2/i;III)V

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 31
    .line 32
    invoke-virtual {v2, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 33
    .line 34
    .line 35
    new-instance v1, La2/h;

    .line 36
    .line 37
    invoke-direct {v1, p0, p1, p2}, La2/h;-><init>(La2/i;II)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, La2/h;->run()V

    .line 41
    .line 42
    .line 43
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 44
    .line 45
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 46
    .line 47
    new-instance v0, La2/d;

    .line 48
    .line 49
    const/4 v1, 0x7

    .line 50
    invoke-direct {v0, p0, v1}, La2/d;-><init>(La2/i;I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, La2/i;->D()V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, La2/i;->F:Lo0/j;

    .line 60
    .line 61
    if-eqz v0, :cond_1

    .line 62
    .line 63
    new-instance v0, La2/e;

    .line 64
    .line 65
    const/4 v1, 0x0

    .line 66
    invoke-direct {v0, p0, p1, p2, v1}, La2/e;-><init>(La2/i;III)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 70
    .line 71
    .line 72
    :cond_1
    return-void
.end method


# virtual methods
.method public final B(Lo1/q;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, La2/i;->i:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p0, La2/i;->j:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, La2/i;->D()V

    .line 11
    .line 12
    .line 13
    iput-boolean v1, p0, La2/i;->j:Z

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, La2/i;->o:Landroid/graphics/SurfaceTexture;

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, La2/i;->a()V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, La2/i;->o:Landroid/graphics/SurfaceTexture;

    .line 23
    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    return-void

    .line 27
    :cond_2
    invoke-virtual {p0}, La2/i;->p()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_3

    .line 32
    .line 33
    return-void

    .line 34
    :cond_3
    iget-object v0, p0, La2/i;->w:Lf0/c;

    .line 35
    .line 36
    iget-object v0, v0, Lf0/c;->i:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v0, Landroid/graphics/Rect;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_4

    .line 45
    .line 46
    return-void

    .line 47
    :cond_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 48
    .line 49
    .line 50
    move-result-wide v2

    .line 51
    iget-wide v4, p0, La2/i;->H:J

    .line 52
    .line 53
    sub-long v4, v2, v4

    .line 54
    .line 55
    const-wide/32 v6, 0xf4240

    .line 56
    .line 57
    .line 58
    div-long/2addr v4, v6

    .line 59
    iput-wide v2, p0, La2/i;->H:J

    .line 60
    .line 61
    iget-object v0, p0, La2/i;->g:Landroid/widget/FrameLayout$LayoutParams;

    .line 62
    .line 63
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 64
    .line 65
    iget-object v3, p0, La2/i;->c:Lz1/c;

    .line 66
    .line 67
    iget v4, v3, Lz1/c;->c:I

    .line 68
    .line 69
    if-ne v2, v4, :cond_5

    .line 70
    .line 71
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 72
    .line 73
    iget v2, v3, Lz1/c;->d:I

    .line 74
    .line 75
    if-eq v0, v2, :cond_8

    .line 76
    .line 77
    :cond_5
    iget-object v0, p0, La2/i;->C:La2/h;

    .line 78
    .line 79
    monitor-enter v0

    .line 80
    :try_start_0
    iget-object v2, v0, La2/h;->i:La2/i;

    .line 81
    .line 82
    iget-object v3, v2, La2/i;->c:Lz1/c;

    .line 83
    .line 84
    iget v4, v3, Lz1/c;->c:I

    .line 85
    .line 86
    iget v3, v3, Lz1/c;->d:I

    .line 87
    .line 88
    iget v5, v0, La2/h;->g:I

    .line 89
    .line 90
    if-ne v4, v5, :cond_6

    .line 91
    .line 92
    iget v5, v0, La2/h;->h:I

    .line 93
    .line 94
    if-ne v3, v5, :cond_6

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_6
    iput v4, v0, La2/h;->g:I

    .line 98
    .line 99
    iput v3, v0, La2/h;->h:I

    .line 100
    .line 101
    iget v5, v2, La2/i;->B:I

    .line 102
    .line 103
    if-lez v5, :cond_7

    .line 104
    .line 105
    add-int/lit8 v5, v5, -0x1

    .line 106
    .line 107
    iput v5, v2, La2/i;->B:I

    .line 108
    .line 109
    invoke-static {v2, v4, v3}, La2/i;->A(La2/i;II)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_7
    sget-object v2, Lq1/f;->L:Lo1/j0;

    .line 114
    .line 115
    invoke-virtual {v2, v0}, Lo1/j0;->d(Ljava/lang/Runnable;)V

    .line 116
    .line 117
    .line 118
    sget-object v2, Lq1/f;->L:Lo1/j0;

    .line 119
    .line 120
    const-string v3, "Throttled resize"

    .line 121
    .line 122
    const-wide/16 v4, 0x138

    .line 123
    .line 124
    invoke-virtual {v2, v0, v3, v4, v5}, Lo1/j0;->b(Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 125
    .line 126
    .line 127
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :cond_8
    instance-of v0, p0, La2/p;

    .line 129
    .line 130
    xor-int/lit8 v2, v0, 0x1

    .line 131
    .line 132
    if-nez v2, :cond_9

    .line 133
    .line 134
    const/16 v2, 0xbe2

    .line 135
    .line 136
    invoke-static {v2}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 137
    .line 138
    .line 139
    :cond_9
    const/16 v2, 0xc11

    .line 140
    .line 141
    invoke-static {v2}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 142
    .line 143
    .line 144
    iget-boolean v2, p0, La2/i;->i:Z

    .line 145
    .line 146
    if-eqz v2, :cond_d

    .line 147
    .line 148
    iget v2, p0, La2/i;->D:I

    .line 149
    .line 150
    if-nez v2, :cond_d

    .line 151
    .line 152
    iget v0, p0, La2/i;->p:I

    .line 153
    .line 154
    if-nez v0, :cond_b

    .line 155
    .line 156
    invoke-static {}, Lo1/r;->d()I

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    iput v0, p0, La2/i;->p:I

    .line 161
    .line 162
    if-nez v0, :cond_a

    .line 163
    .line 164
    const-string v0, "sdf"

    .line 165
    .line 166
    const-string v1, "Couldn\'t create texture for texture surface (GeckoViewWindow)"

    .line 167
    .line 168
    invoke-static {v0, v1}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_a
    invoke-static {v0}, Lo1/r;->c(I)Lo1/o;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    if-nez v1, :cond_b

    .line 177
    .line 178
    sget-object v1, Lo1/r;->a:Ljava/util/ArrayList;

    .line 179
    .line 180
    new-instance v2, Lo1/o;

    .line 181
    .line 182
    invoke-direct {v2, v0}, Lo1/o;-><init>(I)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    :cond_b
    :goto_1
    const v0, 0x84c1

    .line 189
    .line 190
    .line 191
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 192
    .line 193
    .line 194
    const v0, 0x8d65

    .line 195
    .line 196
    .line 197
    iget v1, p0, La2/i;->p:I

    .line 198
    .line 199
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 200
    .line 201
    .line 202
    iget v0, p0, La2/i;->p:I

    .line 203
    .line 204
    :try_start_1
    iget-object v1, p0, La2/i;->o:Landroid/graphics/SurfaceTexture;

    .line 205
    .line 206
    invoke-virtual {v1, v0}, Landroid/graphics/SurfaceTexture;->attachToGLContext(I)V

    .line 207
    .line 208
    .line 209
    iget v0, p0, La2/i;->E:I

    .line 210
    .line 211
    if-lez v0, :cond_c

    .line 212
    .line 213
    add-int/lit8 v0, v0, -0x1

    .line 214
    .line 215
    iput v0, p0, La2/i;->E:I

    .line 216
    .line 217
    invoke-virtual {p0}, La2/i;->D()V

    .line 218
    .line 219
    .line 220
    goto :goto_2

    .line 221
    :cond_c
    iget-object v0, p0, La2/i;->o:Landroid/graphics/SurfaceTexture;

    .line 222
    .line 223
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 224
    .line 225
    .line 226
    :catch_0
    :goto_2
    iget-object v0, p0, La2/i;->n:Lo1/q;

    .line 227
    .line 228
    iget v1, p0, La2/i;->p:I

    .line 229
    .line 230
    invoke-virtual {p0, v0, v1}, La2/i;->C(Lo1/q;I)V

    .line 231
    .line 232
    .line 233
    :try_start_2
    iget-object v0, p0, La2/i;->o:Landroid/graphics/SurfaceTexture;

    .line 234
    .line 235
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 236
    .line 237
    .line 238
    goto :goto_3

    .line 239
    :cond_d
    iget v2, p0, La2/i;->D:I

    .line 240
    .line 241
    if-lez v2, :cond_e

    .line 242
    .line 243
    add-int/lit8 v2, v2, -0x1

    .line 244
    .line 245
    iput v2, p0, La2/i;->D:I

    .line 246
    .line 247
    :cond_e
    iget-boolean v2, p0, La2/i;->j:Z

    .line 248
    .line 249
    if-eqz v2, :cond_f

    .line 250
    .line 251
    if-nez v0, :cond_f

    .line 252
    .line 253
    iget-object v0, p0, La2/i;->m:Lq1/f;

    .line 254
    .line 255
    iget-object v0, v0, Lq1/f;->s:Lq1/i;

    .line 256
    .line 257
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 258
    .line 259
    .line 260
    move-result-wide v2

    .line 261
    long-to-double v2, v2

    .line 262
    const-wide v4, 0x41cdcd6500000000L    # 1.0E9

    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    div-double/2addr v2, v4

    .line 268
    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    .line 269
    .line 270
    rem-double/2addr v2, v4

    .line 271
    double-to-float v2, v2

    .line 272
    iget v3, p0, La2/i;->s:I

    .line 273
    .line 274
    int-to-float v3, v3

    .line 275
    iget v4, p0, La2/i;->t:I

    .line 276
    .line 277
    int-to-float v4, v4

    .line 278
    invoke-virtual {v0}, Lo1/q;->d()V

    .line 279
    .line 280
    .line 281
    iget v5, v0, Lq1/i;->p:I

    .line 282
    .line 283
    invoke-static {v5, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 284
    .line 285
    .line 286
    iget v2, v0, Lq1/i;->q:I

    .line 287
    .line 288
    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 289
    .line 290
    .line 291
    iget-object v2, p0, La2/i;->c:Lz1/c;

    .line 292
    .line 293
    iget-object v3, v2, Lz1/c;->g:Lo1/p;

    .line 294
    .line 295
    iget-object v4, v2, Lz1/c;->i:Landroidx/fragment/app/h;

    .line 296
    .line 297
    invoke-virtual {v2}, Lz1/c;->b()Landroidx/fragment/app/h;

    .line 298
    .line 299
    .line 300
    move-result-object v2

    .line 301
    invoke-static {v3, v4, v2, v0, v1}, Lo1/r;->b(Lo1/p;Landroidx/fragment/app/h;Landroidx/fragment/app/h;Lo1/q;Z)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v0}, Lo1/q;->b()V

    .line 305
    .line 306
    .line 307
    :cond_f
    invoke-virtual {p0}, La2/i;->D()V

    .line 308
    .line 309
    .line 310
    :catch_1
    :goto_3
    invoke-virtual {p1}, Lo1/q;->d()V

    .line 311
    .line 312
    .line 313
    iget p1, p0, La2/i;->I:I

    .line 314
    .line 315
    const/4 v0, 0x3

    .line 316
    const/4 v1, 0x1

    .line 317
    if-ne p1, v0, :cond_10

    .line 318
    .line 319
    iput v1, p0, La2/i;->I:I

    .line 320
    .line 321
    :cond_10
    iget p1, p0, La2/i;->I:I

    .line 322
    .line 323
    if-eq p1, v1, :cond_11

    .line 324
    .line 325
    iget-object p1, p0, La2/i;->m:Lq1/f;

    .line 326
    .line 327
    invoke-virtual {p1}, Lq1/f;->d()V

    .line 328
    .line 329
    .line 330
    :cond_11
    iget-object p1, p0, La2/i;->w:Lf0/c;

    .line 331
    .line 332
    iget-object p1, p1, Lf0/c;->i:Ljava/lang/Object;

    .line 333
    .line 334
    check-cast p1, Landroid/graphics/Rect;

    .line 335
    .line 336
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 337
    .line 338
    .line 339
    return-void

    .line 340
    :catchall_0
    move-exception p1

    .line 341
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 342
    throw p1
.end method

.method public C(Lo1/q;I)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lo1/q;->d()V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Lo1/q;->n:I

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 8
    .line 9
    .line 10
    const v0, 0x84c1

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 14
    .line 15
    .line 16
    const v0, 0x8d65

    .line 17
    .line 18
    .line 19
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 20
    .line 21
    .line 22
    iget-object p2, p0, La2/i;->c:Lz1/c;

    .line 23
    .line 24
    iget-object v0, p2, Lz1/c;->g:Lo1/p;

    .line 25
    .line 26
    invoke-virtual {p2}, Lz1/c;->b()Landroidx/fragment/app/h;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const/4 v2, 0x0

    .line 31
    iget-object p2, p2, Lz1/c;->i:Landroidx/fragment/app/h;

    .line 32
    .line 33
    invoke-static {v0, p2, v1, p1, v2}, Lo1/r;->b(Lo1/p;Landroidx/fragment/app/h;Landroidx/fragment/app/h;Lo1/q;Z)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lo1/q;->b()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final D()V
    .locals 1

    .line 1
    const/4 v0, 0x2

    iput v0, p0, La2/i;->I:I

    iget-object v0, p0, La2/i;->m:Lq1/f;

    invoke-virtual {v0}, Lq1/f;->d()V

    return-void
.end method

.method public a()V
    .locals 6

    .line 1
    iget-object v0, p0, La2/i;->w:Lf0/c;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lf0/c;->f:Z

    .line 5
    .line 6
    iget-object v0, p0, La2/i;->m:Lq1/f;

    .line 7
    .line 8
    iget-object v0, v0, Lq1/f;->r:Lo1/q;

    .line 9
    .line 10
    iput-object v0, p0, La2/i;->n:Lo1/q;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput v0, p0, La2/i;->p:I

    .line 14
    .line 15
    iget-object v0, p0, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/nomone/GeckoView/MyGeckoView;->getTextureView()Landroid/view/TextureView;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iput-object v2, p0, La2/i;->o:Landroid/graphics/SurfaceTexture;

    .line 26
    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    iget-object v2, p0, La2/i;->u:Ljava/lang/Object;

    .line 30
    .line 31
    monitor-enter v2

    .line 32
    :try_start_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    if-nez v3, :cond_0

    .line 37
    .line 38
    iget-boolean v3, p0, La2/i;->v:Z

    .line 39
    .line 40
    if-nez v3, :cond_0

    .line 41
    .line 42
    iget-object v3, p0, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 43
    .line 44
    new-instance v4, Lo0/e;

    .line 45
    .line 46
    const/16 v5, 0x9

    .line 47
    .line 48
    invoke-direct {v4, v5, p0, v0}, Lo0/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 52
    .line 53
    .line 54
    iput-boolean v1, p0, La2/i;->v:Z

    .line 55
    .line 56
    :cond_0
    monitor-exit v2

    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    .line 59
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    throw v0

    .line 61
    :cond_1
    iget-object v2, p0, La2/i;->u:Ljava/lang/Object;

    .line 62
    .line 63
    monitor-enter v2

    .line 64
    :try_start_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    if-eqz v3, :cond_2

    .line 69
    .line 70
    iget-boolean v3, p0, La2/i;->v:Z

    .line 71
    .line 72
    if-nez v3, :cond_2

    .line 73
    .line 74
    new-instance v3, La2/d;

    .line 75
    .line 76
    const/16 v4, 0x8

    .line 77
    .line 78
    invoke-direct {v3, p0, v4}, La2/d;-><init>(La2/i;I)V

    .line 79
    .line 80
    .line 81
    new-instance v4, Ln1/a;

    .line 82
    .line 83
    const/4 v5, 0x5

    .line 84
    invoke-direct {v4, p0, v0, v3, v5}, Ln1/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 88
    .line 89
    .line 90
    iput-boolean v1, p0, La2/i;->v:Z

    .line 91
    .line 92
    :cond_2
    monitor-exit v2

    .line 93
    :goto_0
    return-void

    .line 94
    :catchall_1
    move-exception v0

    .line 95
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 96
    throw v0
.end method

.method public final b(Lu1/x;)Z
    .locals 1

    .line 1
    iget-object v0, p0, La2/i;->e:La2/q;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, La2/q;->b(Lu1/x;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    iget-object p1, p1, Lu1/x;->a:Landroid/view/KeyEvent;

    .line 16
    .line 17
    iget-object v0, p0, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    :goto_1
    return p1
.end method

.method public final c(II)V
    .locals 1

    .line 1
    iput p1, p0, La2/i;->s:I

    iput p2, p0, La2/i;->t:I

    iget-object v0, p0, La2/i;->c:Lz1/c;

    invoke-virtual {v0, p1, p2}, Lz1/c;->c(II)V

    return-void
.end method

.method public final d()Lz1/g;
    .locals 1

    .line 1
    iget-object v0, p0, La2/i;->c:Lz1/c;

    return-object v0
.end method

.method public final e(Lr1/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, La2/i;->e:La2/q;

    return-void
.end method

.method public final f()V
    .locals 0

    .line 1
    return-void
.end method

.method public g(Landroidx/fragment/app/h;)Z
    .locals 2

    .line 1
    iget-object v0, p0, La2/i;->w:Lf0/c;

    invoke-virtual {v0, p1}, Lf0/c;->b(Landroidx/fragment/app/h;)Z

    move-result p1

    iget v0, p0, La2/i;->I:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    iput v0, p0, La2/i;->I:I

    :cond_0
    return p1
.end method

.method public final getParent()La2/c0;
    .locals 1

    .line 1
    iget-object v0, p0, La2/i;->d:La2/c0;

    return-object v0
.end method

.method public i(Lo1/q;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, La2/i;->B(Lo1/q;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final j()I
    .locals 1

    .line 1
    iget v0, p0, La2/i;->J:I

    return v0
.end method

.method public final k()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final l()Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, La2/i;->w:Lf0/c;

    .line 2
    .line 3
    iget-object v0, v0, Lf0/c;->i:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroid/graphics/Rect;

    .line 6
    .line 7
    return-object v0
.end method

.method public final o(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, La2/i;->p()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eq v0, p1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    iput-boolean p1, p0, La2/i;->k:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    sget-object p1, Lq1/f;->L:Lo1/j0;

    .line 15
    .line 16
    new-instance v0, La2/d;

    .line 17
    .line 18
    const/4 v1, 0x6

    .line 19
    invoke-direct {v0, p0, v1}, La2/d;-><init>(La2/i;I)V

    .line 20
    .line 21
    .line 22
    const-string v1, "WebViewWindow updateVisibility"

    .line 23
    .line 24
    invoke-virtual {p1, v1, v0}, Lo1/j0;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public final p()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, La2/i;->k:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, La2/i;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final q()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0}, La2/r;->w(La2/r;Z)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, La2/i;->D()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final r()V
    .locals 0

    .line 1
    return-void
.end method

.method public final s()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, La2/i;->l:Z

    return v0
.end method

.method public t(Lo1/q;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, La2/i;->B(Lo1/q;)V

    const/4 p1, 0x0

    return p1
.end method

.method public u(Lu1/w;)Z
    .locals 2

    .line 1
    iget v0, p1, Lu1/w;->a:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/nomone/GeckoView/MyGeckoView;->setLastHoverEvent(Lu1/w;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, La2/i;->x:Lu1/z;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lu1/z;->a(Lu1/w;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1
.end method

.method public final v(La2/c0;)V
    .locals 0

    .line 1
    iput-object p1, p0, La2/i;->d:La2/c0;

    return-void
.end method

.method public y()V
    .locals 3

    .line 1
    iget-object v0, p0, La2/i;->d:La2/c0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0}, La2/c0;->x(La2/r;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    sget-object v0, Lq1/f;->L:Lo1/j0;

    .line 9
    .line 10
    new-instance v1, La2/d;

    .line 11
    .line 12
    const/4 v2, 0x3

    .line 13
    invoke-direct {v1, p0, v2}, La2/d;-><init>(La2/i;I)V

    .line 14
    .line 15
    .line 16
    const-string v2, "AndroidViewWindow onDestroy"

    .line 17
    .line 18
    invoke-virtual {v0, v2, v1}, Lo1/j0;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    :try_start_0
    iget-object v0, p0, La2/i;->o:Landroid/graphics/SurfaceTexture;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    :catch_0
    iget-object v0, p0, La2/i;->m:Lq1/f;

    .line 27
    .line 28
    iget-object v0, v0, Lq1/f;->d:Lcom/nomone/browser_module/OpenGLView;

    .line 29
    .line 30
    new-instance v1, La2/d;

    .line 31
    .line 32
    const/4 v2, 0x4

    .line 33
    invoke-direct {v1, p0, v2}, La2/d;-><init>(La2/i;I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/nomone/browser_module/OpenGLView;->a(Ljava/lang/Runnable;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, La2/i;->e:La2/q;

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-interface {v0}, La2/q;->s()V

    .line 44
    .line 45
    .line 46
    :cond_1
    return-void
.end method
