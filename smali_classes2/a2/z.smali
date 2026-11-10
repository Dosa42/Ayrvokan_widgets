.class public final La2/z;
.super La2/a0;
.source "SourceFile"

# interfaces
.implements La2/a;


# instance fields
.field public final A:Lv1/b;

.field public B:Z

.field public C:F

.field public D:F

.field public final s:Lcom/nomone/vr_desktop/LaunchActivity;

.field public t:La2/y;

.field public final u:Landroidx/fragment/app/h;

.field public final v:Lv1/a;

.field public final w:Z

.field public final x:I

.field public final y:Lo1/p;

.field public final z:Lo1/p;


# direct methods
.method public constructor <init>(Lq1/f;La2/x;Lq1/r;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct/range {p0 .. p3}, La2/a0;-><init>(Lq1/f;La2/x;Lq1/r;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroidx/fragment/app/h;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v1, v2}, Landroidx/fragment/app/h;-><init>(Landroidx/fragment/app/g;)V

    .line 10
    .line 11
    .line 12
    iput-object v1, v0, La2/z;->u:Landroidx/fragment/app/h;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    iput-boolean v1, v0, La2/z;->B:Z

    .line 16
    .line 17
    move-object/from16 v2, p1

    .line 18
    .line 19
    iget-object v2, v2, Lq1/f;->b:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 20
    .line 21
    iput-object v2, v0, La2/z;->s:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 22
    .line 23
    new-instance v3, La2/y;

    .line 24
    .line 25
    invoke-direct {v3, v0, v2}, La2/y;-><init>(La2/z;Lcom/nomone/vr_desktop/LaunchActivity;)V

    .line 26
    .line 27
    .line 28
    iput-object v3, v0, La2/z;->t:La2/y;

    .line 29
    .line 30
    new-instance v3, Lv1/a;

    .line 31
    .line 32
    const-string v4, "wallpaper360Stereo.pkm"

    .line 33
    .line 34
    const/4 v5, 0x0

    .line 35
    invoke-direct {v3, v2, v4, v5}, Lv1/a;-><init>(Lcom/nomone/vr_desktop/LaunchActivity;Ljava/lang/String;Z)V

    .line 36
    .line 37
    .line 38
    iput-object v3, v0, La2/z;->v:Lv1/a;

    .line 39
    .line 40
    iput-boolean v1, v0, La2/z;->w:Z

    .line 41
    .line 42
    new-instance v1, Lo1/p;

    .line 43
    .line 44
    const/high16 v7, 0x3f800000    # 1.0f

    .line 45
    .line 46
    const/high16 v8, 0x3f800000    # 1.0f

    .line 47
    .line 48
    const/high16 v9, 0x3f800000    # 1.0f

    .line 49
    .line 50
    const/high16 v10, 0x3f000000    # 0.5f

    .line 51
    .line 52
    const/4 v11, 0x0

    .line 53
    move-object v6, v1

    .line 54
    invoke-direct/range {v6 .. v11}, Lo1/p;-><init>(FFFFF)V

    .line 55
    .line 56
    .line 57
    iput-object v1, v0, La2/z;->y:Lo1/p;

    .line 58
    .line 59
    new-instance v1, Lo1/p;

    .line 60
    .line 61
    const/high16 v13, 0x3f800000    # 1.0f

    .line 62
    .line 63
    const/high16 v14, 0x3f800000    # 1.0f

    .line 64
    .line 65
    const/high16 v15, 0x3f800000    # 1.0f

    .line 66
    .line 67
    const/high16 v16, 0x3f000000    # 0.5f

    .line 68
    .line 69
    const/high16 v17, 0x3f000000    # 0.5f

    .line 70
    .line 71
    move-object v12, v1

    .line 72
    invoke-direct/range {v12 .. v17}, Lo1/p;-><init>(FFFFF)V

    .line 73
    .line 74
    .line 75
    iput-object v1, v0, La2/z;->z:Lo1/p;

    .line 76
    .line 77
    const/4 v1, 0x2

    .line 78
    iput v1, v0, La2/z;->x:I

    .line 79
    .line 80
    new-instance v2, Lv1/b;

    .line 81
    .line 82
    iget-object v3, v0, La2/a0;->k:La2/j;

    .line 83
    .line 84
    iget v4, v3, Lz1/c;->c:I

    .line 85
    .line 86
    iget v3, v3, Lz1/c;->d:I

    .line 87
    .line 88
    mul-int/2addr v3, v1

    .line 89
    invoke-direct {v2, v4, v3}, Lv1/b;-><init>(II)V

    .line 90
    .line 91
    .line 92
    iput-object v2, v0, La2/z;->A:Lv1/b;

    .line 93
    .line 94
    return-void
.end method


# virtual methods
.method public final A(Lo1/q;Z)Z
    .locals 4

    .line 1
    sget-boolean v0, Lcom/google/android/gms/internal/play_billing/i0;->i:Z

    .line 2
    .line 3
    iget-boolean v1, p1, Lo1/q;->f:Z

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eq v1, v0, :cond_0

    .line 8
    .line 9
    move v1, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v1, v3

    .line 12
    :goto_0
    iput-boolean v0, p1, Lo1/q;->f:Z

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Lo1/q;->d()V

    .line 17
    .line 18
    .line 19
    move v3, v2

    .line 20
    :cond_1
    iget-object v0, p0, La2/z;->A:Lv1/b;

    .line 21
    .line 22
    invoke-virtual {v0}, Lv1/b;->d()V

    .line 23
    .line 24
    .line 25
    iget-boolean v0, p0, La2/z;->w:Z

    .line 26
    .line 27
    iget-object v1, p0, La2/a0;->k:La2/j;

    .line 28
    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    iget-object p2, v1, Lz1/c;->g:Lo1/p;

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    if-eqz p2, :cond_3

    .line 35
    .line 36
    iget-object p2, p0, La2/z;->y:Lo1/p;

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_3
    iget-object p2, p0, La2/z;->z:Lo1/p;

    .line 40
    .line 41
    :goto_1
    iget-object v0, v1, Lz1/c;->i:Landroidx/fragment/app/h;

    .line 42
    .line 43
    iget-object v1, p0, La2/z;->u:Landroidx/fragment/app/h;

    .line 44
    .line 45
    invoke-static {p2, v0, v1, p1, v2}, Lo1/r;->b(Lo1/p;Landroidx/fragment/app/h;Landroidx/fragment/app/h;Lo1/q;Z)V

    .line 46
    .line 47
    .line 48
    return v3
.end method

.method public final a()V
    .locals 2

    .line 1
    new-instance v0, La2/y;

    .line 2
    .line 3
    iget-object v1, p0, La2/z;->s:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, La2/y;-><init>(La2/z;Lcom/nomone/vr_desktop/LaunchActivity;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, La2/z;->t:La2/y;

    .line 9
    .line 10
    iget-object v0, p0, La2/z;->v:Lv1/a;

    .line 11
    .line 12
    invoke-virtual {v0}, Lv1/d;->g()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, La2/z;->A:Lv1/b;

    .line 16
    .line 17
    invoke-virtual {v0}, Lv1/b;->e()V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, La2/z;->B:Z

    .line 22
    .line 23
    return-void
.end method

.method public final g(Landroidx/fragment/app/h;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public final i(Lo1/q;)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, La2/z;->A(Lo1/q;Z)Z

    move-result p1

    return p1
.end method

.method public final j()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public final k()Z
    .locals 9

    .line 1
    sget-object v0, Lz1/f;->w:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, La2/z;->B:Z

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    iget v1, p0, La2/z;->C:F

    .line 11
    .line 12
    sget v4, Lz1/f;->x:F

    .line 13
    .line 14
    cmpl-float v1, v1, v4

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    iget v1, p0, La2/z;->D:F

    .line 19
    .line 20
    sget v4, Lz1/f;->y:F

    .line 21
    .line 22
    cmpl-float v1, v1, v4

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v1, v2

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    move v1, v3

    .line 30
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 31
    if-eqz v1, :cond_6

    .line 32
    .line 33
    iget-object v1, p0, La2/z;->A:Lv1/b;

    .line 34
    .line 35
    iget v4, v1, Lv1/b;->a:I

    .line 36
    .line 37
    iget-object v5, p0, La2/a0;->k:La2/j;

    .line 38
    .line 39
    iget v6, v5, Lz1/c;->c:I

    .line 40
    .line 41
    if-ne v4, v6, :cond_2

    .line 42
    .line 43
    iget v4, v1, Lv1/b;->b:I

    .line 44
    .line 45
    iget v7, v5, Lz1/c;->d:I

    .line 46
    .line 47
    iget v8, p0, La2/z;->x:I

    .line 48
    .line 49
    mul-int/2addr v7, v8

    .line 50
    if-eq v4, v7, :cond_3

    .line 51
    .line 52
    :cond_2
    iget v4, v5, Lz1/c;->d:I

    .line 53
    .line 54
    iget v5, p0, La2/z;->x:I

    .line 55
    .line 56
    mul-int/2addr v4, v5

    .line 57
    invoke-virtual {v1, v6, v4}, Lv1/b;->f(II)V

    .line 58
    .line 59
    .line 60
    :cond_3
    iget-object v1, p0, La2/z;->A:Lv1/b;

    .line 61
    .line 62
    iget v4, v1, Lv1/b;->c:I

    .line 63
    .line 64
    if-nez v4, :cond_4

    .line 65
    .line 66
    invoke-virtual {v1}, Lv1/b;->e()V

    .line 67
    .line 68
    .line 69
    :cond_4
    const v4, 0x8d40

    .line 70
    .line 71
    .line 72
    iget v1, v1, Lv1/b;->c:I

    .line 73
    .line 74
    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 75
    .line 76
    .line 77
    const/16 v1, 0xc11

    .line 78
    .line 79
    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 80
    .line 81
    .line 82
    monitor-enter v0

    .line 83
    :try_start_1
    sget v1, Lz1/f;->x:F

    .line 84
    .line 85
    iput v1, p0, La2/z;->C:F

    .line 86
    .line 87
    sget v1, Lz1/f;->y:F

    .line 88
    .line 89
    iput v1, p0, La2/z;->D:F

    .line 90
    .line 91
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    iget-object v0, p0, La2/z;->v:Lv1/a;

    .line 93
    .line 94
    invoke-virtual {v0}, Lv1/d;->d()V

    .line 95
    .line 96
    .line 97
    iget-boolean v0, p0, La2/z;->w:Z

    .line 98
    .line 99
    const v1, 0x3c8efa35

    .line 100
    .line 101
    .line 102
    if-nez v0, :cond_5

    .line 103
    .line 104
    iget-object v0, p0, La2/z;->A:Lv1/b;

    .line 105
    .line 106
    iget v4, v0, Lv1/b;->a:I

    .line 107
    .line 108
    iget v0, v0, Lv1/b;->b:I

    .line 109
    .line 110
    invoke-static {v2, v2, v4, v0}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, La2/z;->t:La2/y;

    .line 114
    .line 115
    iget v4, p0, La2/z;->C:F

    .line 116
    .line 117
    mul-float/2addr v4, v1

    .line 118
    iget v5, p0, La2/z;->D:F

    .line 119
    .line 120
    mul-float/2addr v5, v1

    .line 121
    iget-boolean v1, p0, La2/z;->w:Z

    .line 122
    .line 123
    invoke-virtual {v0, v4, v5, v1, v3}, La2/y;->e(FFZZ)V

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, La2/a0;->k:La2/j;

    .line 127
    .line 128
    iget-object v1, v0, Lz1/c;->g:Lo1/p;

    .line 129
    .line 130
    iget-object v4, v0, Lz1/c;->i:Landroidx/fragment/app/h;

    .line 131
    .line 132
    invoke-virtual {v0}, La2/j;->b()Landroidx/fragment/app/h;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    iget-object v5, p0, La2/z;->t:La2/y;

    .line 137
    .line 138
    invoke-static {v1, v4, v0, v5, v3}, Lo1/r;->b(Lo1/p;Landroidx/fragment/app/h;Landroidx/fragment/app/h;Lo1/q;Z)V

    .line 139
    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_5
    iget-object v0, p0, La2/z;->A:Lv1/b;

    .line 143
    .line 144
    iget v4, v0, Lv1/b;->b:I

    .line 145
    .line 146
    div-int/lit8 v4, v4, 0x2

    .line 147
    .line 148
    iget v0, v0, Lv1/b;->a:I

    .line 149
    .line 150
    invoke-static {v2, v4, v0, v4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 151
    .line 152
    .line 153
    iget-object v0, p0, La2/z;->t:La2/y;

    .line 154
    .line 155
    iget v4, p0, La2/z;->C:F

    .line 156
    .line 157
    mul-float/2addr v4, v1

    .line 158
    iget v5, p0, La2/z;->D:F

    .line 159
    .line 160
    mul-float/2addr v5, v1

    .line 161
    iget-boolean v6, p0, La2/z;->w:Z

    .line 162
    .line 163
    invoke-virtual {v0, v4, v5, v6, v3}, La2/y;->e(FFZZ)V

    .line 164
    .line 165
    .line 166
    iget-object v0, p0, La2/z;->y:Lo1/p;

    .line 167
    .line 168
    iget-object v4, p0, La2/a0;->k:La2/j;

    .line 169
    .line 170
    iget-object v5, v4, Lz1/c;->i:Landroidx/fragment/app/h;

    .line 171
    .line 172
    invoke-virtual {v4}, La2/j;->m()Landroidx/fragment/app/h;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    iget-object v6, p0, La2/z;->t:La2/y;

    .line 177
    .line 178
    invoke-static {v0, v5, v4, v6, v3}, Lo1/r;->b(Lo1/p;Landroidx/fragment/app/h;Landroidx/fragment/app/h;Lo1/q;Z)V

    .line 179
    .line 180
    .line 181
    iget-object v0, p0, La2/z;->A:Lv1/b;

    .line 182
    .line 183
    iget v4, v0, Lv1/b;->a:I

    .line 184
    .line 185
    iget v0, v0, Lv1/b;->b:I

    .line 186
    .line 187
    div-int/lit8 v0, v0, 0x2

    .line 188
    .line 189
    invoke-static {v2, v2, v4, v0}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 190
    .line 191
    .line 192
    iget-object v0, p0, La2/z;->t:La2/y;

    .line 193
    .line 194
    iget v4, p0, La2/z;->C:F

    .line 195
    .line 196
    mul-float/2addr v4, v1

    .line 197
    iget v5, p0, La2/z;->D:F

    .line 198
    .line 199
    mul-float/2addr v5, v1

    .line 200
    iget-boolean v1, p0, La2/z;->w:Z

    .line 201
    .line 202
    invoke-virtual {v0, v4, v5, v1, v2}, La2/y;->e(FFZZ)V

    .line 203
    .line 204
    .line 205
    iget-object v0, p0, La2/z;->z:Lo1/p;

    .line 206
    .line 207
    iget-object v1, p0, La2/a0;->k:La2/j;

    .line 208
    .line 209
    iget-object v4, v1, Lz1/c;->i:Landroidx/fragment/app/h;

    .line 210
    .line 211
    invoke-virtual {v1}, La2/j;->b()Landroidx/fragment/app/h;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    iget-object v5, p0, La2/z;->t:La2/y;

    .line 216
    .line 217
    invoke-static {v0, v4, v1, v5, v3}, Lo1/r;->b(Lo1/p;Landroidx/fragment/app/h;Landroidx/fragment/app/h;Lo1/q;Z)V

    .line 218
    .line 219
    .line 220
    :goto_2
    iget-object v0, p0, La2/z;->t:La2/y;

    .line 221
    .line 222
    invoke-virtual {v0}, Lo1/q;->b()V

    .line 223
    .line 224
    .line 225
    iput-boolean v2, p0, La2/z;->B:Z

    .line 226
    .line 227
    return v3

    .line 228
    :catchall_0
    move-exception v1

    .line 229
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 230
    throw v1

    .line 231
    :cond_6
    return v2

    .line 232
    :catchall_1
    move-exception v1

    .line 233
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 234
    throw v1
.end method

.method public final l()Landroid/graphics/Rect;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final t(Lo1/q;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, La2/z;->A(Lo1/q;Z)Z

    move-result p1

    return p1
.end method
