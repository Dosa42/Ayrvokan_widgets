.class public final La2/p;
.super La2/i;
.source "SourceFile"


# instance fields
.field public final A0:Lz1/e;

.field public final B0:Lz1/a;

.field public final C0:Lz1/e;

.field public final D0:Landroid/graphics/Rect;

.field public final E0:Landroid/graphics/Rect;

.field public final F0:Landroid/graphics/Rect;

.field public final G0:Landroid/graphics/Rect;

.field public final H0:Landroid/graphics/Rect;

.field public final I0:Landroid/graphics/Rect;

.field public final J0:Landroid/graphics/Rect;

.field public final K:Ly1/a;

.field public final K0:Landroid/graphics/Rect;

.field public L:Ljava/lang/String;

.field public final L0:La2/o;

.field public final M:Lc1/b;

.field public M0:Z

.field public final N:Z

.field public final N0:Lo1/p;

.field public O:F

.field public O0:F

.field public P:Lz1/g;

.field public Q:Z

.field public R:Z

.field public final S:Lz1/a;

.field public T:Z

.field public U:I

.field public V:I

.field public W:I

.field public X:Z

.field public Y:Z

.field public Z:I

.field public a0:I

.field public b0:F

.field public c0:F

.field public d0:F

.field public e0:F

.field public f0:I

.field public g0:I

.field public h0:I

.field public i0:I

.field public j0:F

.field public k0:F

.field public l0:F

.field public m0:F

.field public n0:Z

.field public o0:I

.field public p0:I

.field public q0:F

.field public r0:F

.field public final s0:Ls1/o;

.field public t0:I

.field public u0:I

.field public v0:F

.field public w0:F

.field public x0:F

.field public y0:F

.field public final z0:Lz1/a;


# direct methods
.method public constructor <init>(Lq1/f;Lz1/c;Ly1/a;Lc1/b;)V
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/nomone/GeckoView/MyGeckoView;->b(Lq1/f;)Lcom/nomone/GeckoView/MyGeckoView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, p1, v0, p2}, La2/i;-><init>(Lq1/f;Lcom/nomone/GeckoView/MyGeckoView;Lz1/c;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, La2/p;->N:Z

    .line 10
    .line 11
    new-instance v1, Lz1/a;

    .line 12
    .line 13
    invoke-direct {v1}, Lz1/a;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, La2/p;->S:Lz1/a;

    .line 17
    .line 18
    iput-boolean v0, p0, La2/p;->T:Z

    .line 19
    .line 20
    const/16 v1, 0xc8

    .line 21
    .line 22
    iput v1, p0, La2/p;->U:I

    .line 23
    .line 24
    iput v1, p0, La2/p;->V:I

    .line 25
    .line 26
    const/high16 v1, 0x3f800000    # 1.0f

    .line 27
    .line 28
    iput v1, p0, La2/p;->j0:F

    .line 29
    .line 30
    iput v1, p0, La2/p;->k0:F

    .line 31
    .line 32
    iput v1, p0, La2/p;->l0:F

    .line 33
    .line 34
    iput v1, p0, La2/p;->m0:F

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    iput-boolean v2, p0, La2/p;->n0:Z

    .line 38
    .line 39
    new-instance v3, Ls1/o;

    .line 40
    .line 41
    const/4 v4, 0x2

    .line 42
    invoke-direct {v3, p0, v4}, Ls1/o;-><init>(La2/a;I)V

    .line 43
    .line 44
    .line 45
    iput-object v3, p0, La2/p;->s0:Ls1/o;

    .line 46
    .line 47
    new-instance v4, Lz1/a;

    .line 48
    .line 49
    invoke-direct {v4}, Lz1/a;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object v4, p0, La2/p;->z0:Lz1/a;

    .line 53
    .line 54
    new-instance v4, Lz1/e;

    .line 55
    .line 56
    invoke-direct {v4}, Lz1/e;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object v4, p0, La2/p;->A0:Lz1/e;

    .line 60
    .line 61
    new-instance v4, Lz1/a;

    .line 62
    .line 63
    invoke-direct {v4}, Lz1/a;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object v4, p0, La2/p;->B0:Lz1/a;

    .line 67
    .line 68
    new-instance v4, Lz1/e;

    .line 69
    .line 70
    invoke-direct {v4}, Lz1/e;-><init>()V

    .line 71
    .line 72
    .line 73
    iput-object v4, p0, La2/p;->C0:Lz1/e;

    .line 74
    .line 75
    new-instance v4, Landroid/graphics/Rect;

    .line 76
    .line 77
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 78
    .line 79
    .line 80
    iput-object v4, p0, La2/p;->D0:Landroid/graphics/Rect;

    .line 81
    .line 82
    new-instance v4, Landroid/graphics/Rect;

    .line 83
    .line 84
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 85
    .line 86
    .line 87
    iput-object v4, p0, La2/p;->E0:Landroid/graphics/Rect;

    .line 88
    .line 89
    new-instance v4, Landroid/graphics/Rect;

    .line 90
    .line 91
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 92
    .line 93
    .line 94
    iput-object v4, p0, La2/p;->F0:Landroid/graphics/Rect;

    .line 95
    .line 96
    new-instance v4, Landroid/graphics/Rect;

    .line 97
    .line 98
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 99
    .line 100
    .line 101
    iput-object v4, p0, La2/p;->G0:Landroid/graphics/Rect;

    .line 102
    .line 103
    new-instance v4, Landroid/graphics/Rect;

    .line 104
    .line 105
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 106
    .line 107
    .line 108
    iput-object v4, p0, La2/p;->H0:Landroid/graphics/Rect;

    .line 109
    .line 110
    new-instance v5, Landroid/graphics/Rect;

    .line 111
    .line 112
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 113
    .line 114
    .line 115
    iput-object v5, p0, La2/p;->I0:Landroid/graphics/Rect;

    .line 116
    .line 117
    new-instance v5, Landroid/graphics/Rect;

    .line 118
    .line 119
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 120
    .line 121
    .line 122
    iput-object v5, p0, La2/p;->J0:Landroid/graphics/Rect;

    .line 123
    .line 124
    new-instance v5, Landroid/graphics/Rect;

    .line 125
    .line 126
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 127
    .line 128
    .line 129
    iput-object v5, p0, La2/p;->K0:Landroid/graphics/Rect;

    .line 130
    .line 131
    new-instance v5, La2/o;

    .line 132
    .line 133
    iget-object v6, p0, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 134
    .line 135
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 136
    .line 137
    .line 138
    invoke-direct {v5, p0}, La2/o;-><init>(La2/p;)V

    .line 139
    .line 140
    .line 141
    iput-object v5, p0, La2/p;->L0:La2/o;

    .line 142
    .line 143
    iput-boolean v2, p0, La2/p;->M0:Z

    .line 144
    .line 145
    new-instance v2, Lo1/p;

    .line 146
    .line 147
    invoke-direct {v2}, Lo1/p;-><init>()V

    .line 148
    .line 149
    .line 150
    iput-object v2, p0, La2/p;->N0:Lo1/p;

    .line 151
    .line 152
    iput-object p3, p0, La2/p;->K:Ly1/a;

    .line 153
    .line 154
    iput-object p4, p0, La2/p;->M:Lc1/b;

    .line 155
    .line 156
    iput-boolean v0, p0, La2/i;->y:Z

    .line 157
    .line 158
    iget-object p4, p0, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 159
    .line 160
    invoke-virtual {p4}, Lcom/nomone/GeckoView/MyGeckoView;->getSession()Lorg/mozilla/geckoview/GeckoSession;

    .line 161
    .line 162
    .line 163
    move-result-object p4

    .line 164
    iget-object v0, p1, Lq1/f;->b:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 165
    .line 166
    invoke-interface {p3, v0}, Ly1/a;->i(Lcom/nomone/vr_desktop/LaunchActivity;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-virtual {p4, v2}, Lorg/mozilla/geckoview/GeckoSession;->loadUri(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p4}, Lorg/mozilla/geckoview/GeckoSession;->getCompositorController()Lorg/mozilla/geckoview/CompositorController;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    invoke-interface {p3}, Ly1/a;->H()I

    .line 178
    .line 179
    .line 180
    move-result p3

    .line 181
    invoke-virtual {v2, p3}, Lorg/mozilla/geckoview/CompositorController;->setClearColor(I)V

    .line 182
    .line 183
    .line 184
    invoke-static {p1}, Lcom/nomone/vr_desktop/Applications/SettingsApplication;->h(Lq1/f;)F

    .line 185
    .line 186
    .line 187
    move-result p1

    .line 188
    invoke-static {v0, p1}, Lcom/nomone/GeckoView/MyGeckoView;->c(Lcom/nomone/vr_desktop/LaunchActivity;F)Lorg/mozilla/geckoview/GeckoRuntime;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-virtual {p4, p1}, Lorg/mozilla/geckoview/GeckoSession;->open(Lorg/mozilla/geckoview/GeckoRuntime;)V

    .line 193
    .line 194
    .line 195
    iget p1, p2, Lz1/c;->c:I

    .line 196
    .line 197
    iput p1, p0, La2/p;->Z:I

    .line 198
    .line 199
    iget p1, p2, Lz1/c;->d:I

    .line 200
    .line 201
    iput p1, p0, La2/p;->a0:I

    .line 202
    .line 203
    invoke-virtual {p0, v1, v1}, La2/p;->O(FF)V

    .line 204
    .line 205
    .line 206
    new-instance p1, Lo0/j;

    .line 207
    .line 208
    const/4 p3, 0x6

    .line 209
    invoke-direct {p1, p3, p0, p2}, Lo0/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    iput-object p1, p0, La2/i;->F:Lo0/j;

    .line 213
    .line 214
    iget-object p1, p0, La2/i;->w:Lf0/c;

    .line 215
    .line 216
    iput-object v4, p1, Lf0/c;->i:Ljava/lang/Object;

    .line 217
    .line 218
    new-instance p1, Lr1/j;

    .line 219
    .line 220
    const/4 p3, 0x3

    .line 221
    invoke-direct {p1, p0, p3}, Lr1/j;-><init>(Ljava/lang/Object;I)V

    .line 222
    .line 223
    .line 224
    iget-object p3, p0, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 225
    .line 226
    invoke-virtual {p3, p1}, Lcom/nomone/GeckoView/MyGeckoView;->a(Ln1/m;)V

    .line 227
    .line 228
    .line 229
    iput-object p2, p0, La2/p;->P:Lz1/g;

    .line 230
    .line 231
    const-string p1, "Settings_General_LookingAround"

    .line 232
    .line 233
    invoke-static {p1, v3}, Lo1/y;->d(Ljava/lang/String;Lo1/b;)V

    .line 234
    .line 235
    .line 236
    const-string p1, "Settings_FullscreenWidth"

    .line 237
    .line 238
    invoke-static {p1, v3}, Lo1/y;->d(Ljava/lang/String;Lo1/b;)V

    .line 239
    .line 240
    .line 241
    const-string p1, "Settings_FullscreenHeight"

    .line 242
    .line 243
    invoke-static {p1, v3}, Lo1/y;->d(Ljava/lang/String;Lo1/b;)V

    .line 244
    .line 245
    .line 246
    const-string p1, "Settings_VR_Stereo"

    .line 247
    .line 248
    invoke-static {p1, v3}, Lo1/y;->d(Ljava/lang/String;Lo1/b;)V

    .line 249
    .line 250
    .line 251
    const-string p1, "Settings_VR_LookingAround"

    .line 252
    .line 253
    invoke-static {p1, v3}, Lo1/y;->d(Ljava/lang/String;Lo1/b;)V

    .line 254
    .line 255
    .line 256
    const-string p1, "Settings_VR_FullscreenWidth"

    .line 257
    .line 258
    invoke-static {p1, v3}, Lo1/y;->d(Ljava/lang/String;Lo1/b;)V

    .line 259
    .line 260
    .line 261
    const-string p1, "Settings_VR_FullscreenHeight"

    .line 262
    .line 263
    invoke-static {p1, v3}, Lo1/y;->d(Ljava/lang/String;Lo1/b;)V

    .line 264
    .line 265
    .line 266
    const-string p1, "DesktopMode_Fullscreen"

    .line 267
    .line 268
    invoke-static {p1, v3}, Lo1/y;->d(Ljava/lang/String;Lo1/b;)V

    .line 269
    .line 270
    .line 271
    return-void
.end method

.method public static H(Lq1/f;)F
    .locals 2

    .line 1
    iget-boolean v0, p0, Lq1/f;->h:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lq1/f;->b()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const v1, 0x3fa66666    # 1.3f

    .line 8
    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    sget-object p0, Lcom/nomone/vr_desktop/Applications/SettingsApplication;->g:Ljava/lang/String;

    .line 15
    .line 16
    const-string p0, "Settings_VR_FullscreenWidth"

    .line 17
    .line 18
    invoke-static {p0, v1}, Lo1/y;->b(Ljava/lang/String;F)F

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0

    .line 23
    :cond_0
    const p0, 0x3f4ccccd    # 0.8f

    .line 24
    .line 25
    .line 26
    return p0

    .line 27
    :cond_1
    if-eqz p0, :cond_2

    .line 28
    .line 29
    sget-object p0, Lcom/nomone/vr_desktop/Applications/SettingsApplication;->g:Ljava/lang/String;

    .line 30
    .line 31
    const-string p0, "Settings_FullscreenWidth"

    .line 32
    .line 33
    invoke-static {p0, v1}, Lo1/y;->b(Ljava/lang/String;F)F

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    return p0

    .line 38
    :cond_2
    const/high16 p0, 0x3f800000    # 1.0f

    .line 39
    .line 40
    return p0
.end method


# virtual methods
.method public final C(Lo1/q;I)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, La2/i;->c:Lz1/c;

    .line 4
    .line 5
    iget v2, v1, Lz1/c;->c:I

    .line 6
    .line 7
    iget v1, v1, Lz1/c;->d:I

    .line 8
    .line 9
    invoke-virtual/range {p0 .. p0}, La2/p;->I()F

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-virtual/range {p0 .. p0}, La2/p;->J()F

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    iget-object v5, v0, La2/p;->K:Ly1/a;

    .line 18
    .line 19
    invoke-interface {v5}, Ly1/a;->e()I

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    int-to-float v6, v6

    .line 24
    mul-float/2addr v6, v3

    .line 25
    float-to-int v6, v6

    .line 26
    invoke-interface {v5}, Ly1/a;->I()I

    .line 27
    .line 28
    .line 29
    move-result v7

    .line 30
    int-to-float v7, v7

    .line 31
    mul-float/2addr v7, v3

    .line 32
    float-to-int v7, v7

    .line 33
    invoke-interface {v5}, Ly1/a;->E()I

    .line 34
    .line 35
    .line 36
    move-result v8

    .line 37
    int-to-float v8, v8

    .line 38
    mul-float/2addr v8, v4

    .line 39
    float-to-int v8, v8

    .line 40
    iget v9, v0, La2/p;->O0:F

    .line 41
    .line 42
    invoke-interface {v5, v9}, Ly1/a;->f(F)I

    .line 43
    .line 44
    .line 45
    move-result v9

    .line 46
    int-to-float v9, v9

    .line 47
    mul-float/2addr v9, v4

    .line 48
    float-to-int v9, v9

    .line 49
    invoke-interface {v5}, Ly1/a;->d()I

    .line 50
    .line 51
    .line 52
    move-result v10

    .line 53
    int-to-float v10, v10

    .line 54
    mul-float/2addr v10, v3

    .line 55
    float-to-int v10, v10

    .line 56
    invoke-interface {v5}, Ly1/a;->C()I

    .line 57
    .line 58
    .line 59
    move-result v11

    .line 60
    int-to-float v11, v11

    .line 61
    mul-float/2addr v11, v4

    .line 62
    float-to-int v11, v11

    .line 63
    invoke-interface {v5}, Ly1/a;->r()I

    .line 64
    .line 65
    .line 66
    move-result v12

    .line 67
    int-to-float v12, v12

    .line 68
    mul-float/2addr v3, v12

    .line 69
    float-to-int v3, v3

    .line 70
    invoke-interface {v5}, Ly1/a;->D()I

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    int-to-float v5, v5

    .line 75
    mul-float/2addr v4, v5

    .line 76
    float-to-int v4, v4

    .line 77
    iget-object v5, v0, La2/p;->L0:La2/o;

    .line 78
    .line 79
    invoke-virtual {v5}, Lo1/q;->d()V

    .line 80
    .line 81
    .line 82
    iget v12, v5, La2/o;->p:I

    .line 83
    .line 84
    int-to-float v3, v3

    .line 85
    int-to-float v4, v4

    .line 86
    sub-int v10, v2, v10

    .line 87
    .line 88
    neg-int v10, v10

    .line 89
    int-to-float v10, v10

    .line 90
    iget-object v13, v5, La2/o;->q:La2/p;

    .line 91
    .line 92
    iget-boolean v13, v13, La2/p;->M0:Z

    .line 93
    .line 94
    if-eqz v13, :cond_0

    .line 95
    .line 96
    const/4 v11, 0x0

    .line 97
    goto :goto_0

    .line 98
    :cond_0
    sub-int v11, v1, v11

    .line 99
    .line 100
    neg-int v11, v11

    .line 101
    int-to-float v11, v11

    .line 102
    :goto_0
    invoke-static {v12, v3, v4, v10, v11}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 103
    .line 104
    .line 105
    iget v3, v5, Lo1/q;->n:I

    .line 106
    .line 107
    const/4 v4, 0x1

    .line 108
    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 109
    .line 110
    .line 111
    const v3, 0x84c1

    .line 112
    .line 113
    .line 114
    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 115
    .line 116
    .line 117
    const v3, 0x8d65

    .line 118
    .line 119
    .line 120
    move/from16 v4, p2

    .line 121
    .line 122
    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 123
    .line 124
    .line 125
    int-to-float v3, v9

    .line 126
    int-to-float v1, v1

    .line 127
    div-float/2addr v3, v1

    .line 128
    const/high16 v4, 0x3f800000    # 1.0f

    .line 129
    .line 130
    sub-float v15, v4, v3

    .line 131
    .line 132
    iget-object v10, v0, La2/p;->N0:Lo1/p;

    .line 133
    .line 134
    const/high16 v11, 0x3f800000    # 1.0f

    .line 135
    .line 136
    const/high16 v23, 0x3f800000    # 1.0f

    .line 137
    .line 138
    const/4 v14, 0x0

    .line 139
    const/high16 v21, 0x3f800000    # 1.0f

    .line 140
    .line 141
    const/high16 v17, 0x3f800000    # 1.0f

    .line 142
    .line 143
    const/16 v19, 0x0

    .line 144
    .line 145
    const/16 v20, 0x0

    .line 146
    .line 147
    const/high16 v13, 0x3f800000    # 1.0f

    .line 148
    .line 149
    const/high16 v16, 0x3f800000    # 1.0f

    .line 150
    .line 151
    move v12, v3

    .line 152
    move/from16 v18, v3

    .line 153
    .line 154
    invoke-virtual/range {v10 .. v20}, Lo1/p;->a(FFFFFFFFFF)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, v5}, La2/p;->G(La2/o;)V

    .line 158
    .line 159
    .line 160
    int-to-float v7, v7

    .line 161
    int-to-float v2, v2

    .line 162
    div-float v17, v7, v2

    .line 163
    .line 164
    sub-float v19, v4, v17

    .line 165
    .line 166
    add-int/2addr v9, v8

    .line 167
    int-to-float v7, v9

    .line 168
    div-float/2addr v7, v1

    .line 169
    sub-float v9, v4, v7

    .line 170
    .line 171
    iget-object v10, v0, La2/p;->N0:Lo1/p;

    .line 172
    .line 173
    const/high16 v11, 0x40000000    # 2.0f

    .line 174
    .line 175
    mul-float/2addr v11, v3

    .line 176
    sub-float/2addr v7, v11

    .line 177
    move/from16 v11, v17

    .line 178
    .line 179
    move v12, v9

    .line 180
    move/from16 v14, v19

    .line 181
    .line 182
    move v15, v7

    .line 183
    move/from16 v18, v9

    .line 184
    .line 185
    move/from16 v20, v3

    .line 186
    .line 187
    invoke-virtual/range {v10 .. v20}, Lo1/p;->a(FFFFFFFFFF)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0, v5}, La2/p;->G(La2/o;)V

    .line 191
    .line 192
    .line 193
    int-to-float v6, v6

    .line 194
    div-float v17, v6, v2

    .line 195
    .line 196
    sub-float v2, v4, v17

    .line 197
    .line 198
    iget-object v10, v0, La2/p;->N0:Lo1/p;

    .line 199
    .line 200
    neg-float v14, v2

    .line 201
    const/16 v19, 0x0

    .line 202
    .line 203
    move/from16 v11, v17

    .line 204
    .line 205
    move/from16 v16, v21

    .line 206
    .line 207
    invoke-virtual/range {v10 .. v20}, Lo1/p;->a(FFFFFFFFFF)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0, v5}, La2/p;->G(La2/o;)V

    .line 211
    .line 212
    .line 213
    int-to-float v2, v8

    .line 214
    div-float v24, v2, v1

    .line 215
    .line 216
    sub-float v1, v4, v24

    .line 217
    .line 218
    iget-object v2, v0, La2/p;->N0:Lo1/p;

    .line 219
    .line 220
    const/high16 v17, 0x3f800000    # 1.0f

    .line 221
    .line 222
    const/high16 v19, 0x3f800000    # 1.0f

    .line 223
    .line 224
    const/16 v20, 0x0

    .line 225
    .line 226
    neg-float v3, v1

    .line 227
    const/high16 v22, 0x3f800000    # 1.0f

    .line 228
    .line 229
    const/16 v25, 0x0

    .line 230
    .line 231
    move-object/from16 v16, v2

    .line 232
    .line 233
    move/from16 v18, v24

    .line 234
    .line 235
    move/from16 v21, v3

    .line 236
    .line 237
    move/from16 v26, v1

    .line 238
    .line 239
    invoke-virtual/range {v16 .. v26}, Lo1/p;->a(FFFFFFFFFF)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0, v5}, La2/p;->G(La2/o;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v5}, Lo1/q;->b()V

    .line 246
    .line 247
    .line 248
    return-void
.end method

.method public final E()V
    .locals 5

    .line 1
    iget-object v0, p0, La2/i;->c:Lz1/c;

    .line 2
    .line 3
    iget v1, v0, Lz1/c;->c:I

    .line 4
    .line 5
    iget v2, v0, Lz1/c;->d:I

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iget-object v4, p0, La2/p;->K0:Landroid/graphics/Rect;

    .line 9
    .line 10
    invoke-virtual {v4, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 11
    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget v1, v0, Lz1/c;->a:I

    .line 16
    .line 17
    iget v0, v0, Lz1/c;->b:I

    .line 18
    .line 19
    invoke-virtual {v4, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, La2/p;->J0:Landroid/graphics/Rect;

    .line 23
    .line 24
    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final F()V
    .locals 10

    .line 1
    const/16 v0, 0xc11

    .line 2
    .line 3
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, La2/i;->c:Lz1/c;

    .line 11
    .line 12
    iget v1, v0, Lz1/c;->a:I

    .line 13
    .line 14
    iget v2, v0, Lz1/c;->b:I

    .line 15
    .line 16
    iget v3, v0, Lz1/c;->c:I

    .line 17
    .line 18
    iget v0, v0, Lz1/c;->d:I

    .line 19
    .line 20
    invoke-virtual {p0}, La2/p;->I()F

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    invoke-virtual {p0}, La2/p;->J()F

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    iget-object v6, p0, La2/p;->K:Ly1/a;

    .line 29
    .line 30
    invoke-interface {v6, v4}, Ly1/a;->u(F)I

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    invoke-interface {v6, v4}, Ly1/a;->g(F)I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    invoke-interface {v6, v5}, Ly1/a;->l(F)I

    .line 39
    .line 40
    .line 41
    move-result v8

    .line 42
    iget v9, p0, La2/p;->O0:F

    .line 43
    .line 44
    invoke-interface {v6, v5, v9}, Ly1/a;->w(FF)I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    invoke-static {v1, v2, v3, v8}, Landroid/opengl/GLES20;->glScissor(IIII)V

    .line 49
    .line 50
    .line 51
    const/16 v6, 0x4000

    .line 52
    .line 53
    invoke-static {v6}, Landroid/opengl/GLES20;->glClear(I)V

    .line 54
    .line 55
    .line 56
    add-int v8, v2, v0

    .line 57
    .line 58
    sub-int/2addr v8, v5

    .line 59
    invoke-static {v1, v8, v3, v5}, Landroid/opengl/GLES20;->glScissor(IIII)V

    .line 60
    .line 61
    .line 62
    invoke-static {v6}, Landroid/opengl/GLES20;->glClear(I)V

    .line 63
    .line 64
    .line 65
    invoke-static {v1, v2, v4, v0}, Landroid/opengl/GLES20;->glScissor(IIII)V

    .line 66
    .line 67
    .line 68
    invoke-static {v6}, Landroid/opengl/GLES20;->glClear(I)V

    .line 69
    .line 70
    .line 71
    add-int/2addr v1, v3

    .line 72
    sub-int/2addr v1, v7

    .line 73
    invoke-static {v1, v2, v7, v0}, Landroid/opengl/GLES20;->glScissor(IIII)V

    .line 74
    .line 75
    .line 76
    invoke-static {v6}, Landroid/opengl/GLES20;->glClear(I)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public final G(La2/o;)V
    .locals 4

    .line 1
    iget-object v0, p0, La2/i;->c:Lz1/c;

    .line 2
    .line 3
    iget-object v1, v0, Lz1/c;->i:Landroidx/fragment/app/h;

    .line 4
    .line 5
    invoke-virtual {v0}, Lz1/c;->b()Landroidx/fragment/app/h;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v2, 0x0

    .line 10
    iget-object v3, p0, La2/p;->N0:Lo1/p;

    .line 11
    .line 12
    invoke-static {v3, v1, v0, p1, v2}, Lo1/r;->b(Lo1/p;Landroidx/fragment/app/h;Landroidx/fragment/app/h;Lo1/q;Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final I()F
    .locals 6

    .line 1
    iget-object v0, p0, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/nomone/GeckoView/MyGeckoView;->getScale()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, La2/p;->j0:F

    .line 8
    .line 9
    mul-float/2addr v0, v1

    .line 10
    const/high16 v1, 0x3f000000    # 0.5f

    .line 11
    .line 12
    add-float/2addr v1, v0

    .line 13
    float-to-int v1, v1

    .line 14
    int-to-float v1, v1

    .line 15
    sub-float v2, v1, v0

    .line 16
    .line 17
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    float-to-double v2, v2

    .line 22
    const-wide v4, 0x3f789374bc6a7efaL    # 0.006

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    cmpg-double v2, v2, v4

    .line 28
    .line 29
    if-gez v2, :cond_0

    .line 30
    .line 31
    move v0, v1

    .line 32
    :cond_0
    return v0
.end method

.method public final J()F
    .locals 6

    .line 1
    iget-object v0, p0, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/nomone/GeckoView/MyGeckoView;->getScale()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, La2/p;->k0:F

    .line 8
    .line 9
    mul-float/2addr v0, v1

    .line 10
    const/high16 v1, 0x3f000000    # 0.5f

    .line 11
    .line 12
    add-float/2addr v1, v0

    .line 13
    float-to-int v1, v1

    .line 14
    int-to-float v1, v1

    .line 15
    sub-float v2, v1, v0

    .line 16
    .line 17
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    float-to-double v2, v2

    .line 22
    const-wide v4, 0x3f789374bc6a7efaL    # 0.006

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    cmpg-double v2, v2, v4

    .line 28
    .line 29
    if-gez v2, :cond_0

    .line 30
    .line 31
    move v0, v1

    .line 32
    :cond_0
    return v0
.end method

.method public final K(Lu1/w;)V
    .locals 14

    .line 1
    iget-object p1, p1, Lu1/w;->b:Lz1/b;

    .line 2
    .line 3
    iget-object v0, p0, La2/i;->c:Lz1/c;

    .line 4
    .line 5
    iget-object v1, p0, La2/p;->S:Lz1/a;

    .line 6
    .line 7
    invoke-virtual {v0, p1, v1}, Lz1/c;->d(Lz1/b;Lz1/b;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, La2/p;->P:Lz1/g;

    .line 11
    .line 12
    instance-of v2, p1, Lz1/c;

    .line 13
    .line 14
    const-string v3, "Don\'t know how to handle this anchor value"

    .line 15
    .line 16
    const/high16 v4, 0x3f800000    # 1.0f

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    if-eqz v2, :cond_7

    .line 20
    .line 21
    iget-boolean v2, p0, La2/p;->X:Z

    .line 22
    .line 23
    const/4 v6, 0x0

    .line 24
    if-eqz v2, :cond_4

    .line 25
    .line 26
    iget v2, v1, Lz1/a;->a:F

    .line 27
    .line 28
    iget v1, v1, Lz1/a;->b:F

    .line 29
    .line 30
    iget-boolean v7, p0, La2/p;->Y:Z

    .line 31
    .line 32
    if-eqz v7, :cond_0

    .line 33
    .line 34
    move-object v7, p1

    .line 35
    check-cast v7, Lz1/c;

    .line 36
    .line 37
    iget v8, v7, Lz1/c;->a:I

    .line 38
    .line 39
    iput v8, p0, La2/p;->t0:I

    .line 40
    .line 41
    iget v7, v7, Lz1/c;->b:I

    .line 42
    .line 43
    iput v7, p0, La2/p;->u0:I

    .line 44
    .line 45
    iput v2, p0, La2/p;->v0:F

    .line 46
    .line 47
    iput v1, p0, La2/p;->w0:F

    .line 48
    .line 49
    sub-float v7, v2, v2

    .line 50
    .line 51
    iput v7, p0, La2/p;->x0:F

    .line 52
    .line 53
    iput v6, p0, La2/p;->y0:F

    .line 54
    .line 55
    iget v6, v0, Lz1/c;->c:I

    .line 56
    .line 57
    iput v6, p0, La2/p;->Z:I

    .line 58
    .line 59
    iget v6, v0, Lz1/c;->d:I

    .line 60
    .line 61
    iput v6, p0, La2/p;->a0:I

    .line 62
    .line 63
    iput v4, p0, La2/p;->m0:F

    .line 64
    .line 65
    iput v4, p0, La2/p;->l0:F

    .line 66
    .line 67
    iput-boolean v5, p0, La2/p;->Y:Z

    .line 68
    .line 69
    :cond_0
    iget v4, p0, La2/p;->v0:F

    .line 70
    .line 71
    sub-float/2addr v2, v4

    .line 72
    iget v4, p0, La2/p;->w0:F

    .line 73
    .line 74
    sub-float/2addr v1, v4

    .line 75
    iget v4, p0, La2/p;->x0:F

    .line 76
    .line 77
    sub-float v4, v2, v4

    .line 78
    .line 79
    iget v6, p0, La2/p;->y0:F

    .line 80
    .line 81
    sub-float v6, v1, v6

    .line 82
    .line 83
    iput v2, p0, La2/p;->x0:F

    .line 84
    .line 85
    iput v1, p0, La2/p;->y0:F

    .line 86
    .line 87
    if-ne p1, v0, :cond_1

    .line 88
    .line 89
    invoke-virtual {p0}, La2/p;->E()V

    .line 90
    .line 91
    .line 92
    :cond_1
    float-to-int p1, v2

    .line 93
    float-to-int v0, v1

    .line 94
    iget v1, p0, La2/p;->W:I

    .line 95
    .line 96
    packed-switch v1, :pswitch_data_0

    .line 97
    .line 98
    .line 99
    new-instance p1, Ljava/lang/RuntimeException;

    .line 100
    .line 101
    invoke-direct {p1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw p1

    .line 105
    :pswitch_0
    neg-int v1, p1

    .line 106
    move v13, v5

    .line 107
    move v5, p1

    .line 108
    move p1, v1

    .line 109
    move v1, v0

    .line 110
    move v0, v13

    .line 111
    goto :goto_0

    .line 112
    :pswitch_1
    neg-int v0, p1

    .line 113
    move v1, v5

    .line 114
    move v5, p1

    .line 115
    move p1, v0

    .line 116
    move v0, v1

    .line 117
    goto :goto_0

    .line 118
    :pswitch_2
    neg-int v5, p1

    .line 119
    neg-int v1, v0

    .line 120
    move v13, v5

    .line 121
    move v5, p1

    .line 122
    move p1, v13

    .line 123
    goto :goto_0

    .line 124
    :pswitch_3
    neg-int p1, v0

    .line 125
    move v1, p1

    .line 126
    move p1, v5

    .line 127
    goto :goto_0

    .line 128
    :pswitch_4
    neg-int v1, v0

    .line 129
    goto :goto_0

    .line 130
    :pswitch_5
    move v0, v5

    .line 131
    move v1, v0

    .line 132
    goto :goto_0

    .line 133
    :pswitch_6
    move v1, v0

    .line 134
    move v0, v5

    .line 135
    goto :goto_0

    .line 136
    :pswitch_7
    move v1, v0

    .line 137
    move p1, v5

    .line 138
    move v0, p1

    .line 139
    :goto_0
    iget-object v2, p0, La2/p;->P:Lz1/g;

    .line 140
    .line 141
    check-cast v2, Lz1/c;

    .line 142
    .line 143
    iget v3, p0, La2/p;->t0:I

    .line 144
    .line 145
    add-int/2addr v3, v5

    .line 146
    iget v7, p0, La2/p;->u0:I

    .line 147
    .line 148
    add-int/2addr v7, v0

    .line 149
    invoke-virtual {v2, v3, v7}, Lz1/c;->n(II)V

    .line 150
    .line 151
    .line 152
    if-eqz v5, :cond_2

    .line 153
    .line 154
    iget v2, p0, La2/p;->v0:F

    .line 155
    .line 156
    sub-float/2addr v2, v4

    .line 157
    iput v2, p0, La2/p;->v0:F

    .line 158
    .line 159
    :cond_2
    if-eqz v0, :cond_3

    .line 160
    .line 161
    iget v0, p0, La2/p;->w0:F

    .line 162
    .line 163
    sub-float/2addr v0, v6

    .line 164
    iput v0, p0, La2/p;->w0:F

    .line 165
    .line 166
    :cond_3
    iget v0, p0, La2/p;->Z:I

    .line 167
    .line 168
    add-int/2addr v0, p1

    .line 169
    iget p1, p0, La2/p;->a0:I

    .line 170
    .line 171
    add-int/2addr p1, v1

    .line 172
    invoke-virtual {p0, v0, p1}, La2/p;->M(II)V

    .line 173
    .line 174
    .line 175
    goto/16 :goto_4

    .line 176
    .line 177
    :cond_4
    iget-boolean v2, p0, La2/p;->Q:Z

    .line 178
    .line 179
    if-eqz v2, :cond_d

    .line 180
    .line 181
    iget v2, v1, Lz1/a;->a:F

    .line 182
    .line 183
    iget v1, v1, Lz1/a;->b:F

    .line 184
    .line 185
    iget-boolean v3, p0, La2/p;->R:Z

    .line 186
    .line 187
    if-eqz v3, :cond_5

    .line 188
    .line 189
    move-object v3, p1

    .line 190
    check-cast v3, Lz1/c;

    .line 191
    .line 192
    iget v4, v3, Lz1/c;->a:I

    .line 193
    .line 194
    iput v4, p0, La2/p;->t0:I

    .line 195
    .line 196
    iget v3, v3, Lz1/c;->b:I

    .line 197
    .line 198
    iput v3, p0, La2/p;->u0:I

    .line 199
    .line 200
    iput v2, p0, La2/p;->v0:F

    .line 201
    .line 202
    iput v1, p0, La2/p;->w0:F

    .line 203
    .line 204
    iput v6, p0, La2/p;->y0:F

    .line 205
    .line 206
    iput v6, p0, La2/p;->x0:F

    .line 207
    .line 208
    iput-boolean v5, p0, La2/p;->R:Z

    .line 209
    .line 210
    :cond_5
    iget v3, p0, La2/p;->x0:F

    .line 211
    .line 212
    iget v4, p0, La2/p;->v0:F

    .line 213
    .line 214
    sub-float/2addr v2, v4

    .line 215
    add-float/2addr v2, v3

    .line 216
    iput v2, p0, La2/p;->x0:F

    .line 217
    .line 218
    iget v2, p0, La2/p;->y0:F

    .line 219
    .line 220
    iget v3, p0, La2/p;->w0:F

    .line 221
    .line 222
    sub-float/2addr v1, v3

    .line 223
    add-float/2addr v1, v2

    .line 224
    iput v1, p0, La2/p;->y0:F

    .line 225
    .line 226
    if-ne p1, v0, :cond_6

    .line 227
    .line 228
    invoke-virtual {p0}, La2/p;->E()V

    .line 229
    .line 230
    .line 231
    :cond_6
    iget-object p1, p0, La2/p;->P:Lz1/g;

    .line 232
    .line 233
    check-cast p1, Lz1/c;

    .line 234
    .line 235
    iget v1, p0, La2/p;->t0:I

    .line 236
    .line 237
    iget v2, p0, La2/p;->x0:F

    .line 238
    .line 239
    float-to-int v2, v2

    .line 240
    add-int/2addr v1, v2

    .line 241
    iget v2, p0, La2/p;->u0:I

    .line 242
    .line 243
    iget v3, p0, La2/p;->y0:F

    .line 244
    .line 245
    float-to-int v3, v3

    .line 246
    add-int/2addr v2, v3

    .line 247
    invoke-virtual {p1, v1, v2}, Lz1/c;->n(II)V

    .line 248
    .line 249
    .line 250
    iget-object p1, p0, La2/p;->P:Lz1/g;

    .line 251
    .line 252
    if-ne p1, v0, :cond_d

    .line 253
    .line 254
    invoke-virtual {p0}, La2/p;->E()V

    .line 255
    .line 256
    .line 257
    goto/16 :goto_4

    .line 258
    .line 259
    :cond_7
    instance-of v2, p1, Lz1/f;

    .line 260
    .line 261
    if-eqz v2, :cond_e

    .line 262
    .line 263
    iget-boolean v2, p0, La2/p;->X:Z

    .line 264
    .line 265
    iget-object v6, p0, La2/p;->A0:Lz1/e;

    .line 266
    .line 267
    iget-object v7, p0, La2/p;->B0:Lz1/a;

    .line 268
    .line 269
    if-eqz v2, :cond_b

    .line 270
    .line 271
    iget v2, v1, Lz1/a;->a:F

    .line 272
    .line 273
    iget v1, v1, Lz1/a;->b:F

    .line 274
    .line 275
    move-object v8, p1

    .line 276
    check-cast v8, Lz1/f;

    .line 277
    .line 278
    iget-boolean v9, p0, La2/p;->Y:Z

    .line 279
    .line 280
    const/high16 v10, 0x3f000000    # 0.5f

    .line 281
    .line 282
    if-eqz v9, :cond_8

    .line 283
    .line 284
    iput v2, p0, La2/p;->v0:F

    .line 285
    .line 286
    iput v2, p0, La2/p;->b0:F

    .line 287
    .line 288
    iput v1, p0, La2/p;->w0:F

    .line 289
    .line 290
    iput v1, p0, La2/p;->c0:F

    .line 291
    .line 292
    iget v9, v0, Lz1/c;->c:I

    .line 293
    .line 294
    iput v9, p0, La2/p;->Z:I

    .line 295
    .line 296
    iget v11, v0, Lz1/c;->d:I

    .line 297
    .line 298
    iput v11, p0, La2/p;->a0:I

    .line 299
    .line 300
    iput v4, p0, La2/p;->m0:F

    .line 301
    .line 302
    iput v4, p0, La2/p;->l0:F

    .line 303
    .line 304
    iput-boolean v5, p0, La2/p;->Y:Z

    .line 305
    .line 306
    iput v5, p0, La2/p;->i0:I

    .line 307
    .line 308
    iput v5, p0, La2/p;->h0:I

    .line 309
    .line 310
    iput v5, p0, La2/p;->g0:I

    .line 311
    .line 312
    iput v5, p0, La2/p;->f0:I

    .line 313
    .line 314
    iget v4, p0, La2/p;->W:I

    .line 315
    .line 316
    const/4 v5, -0x1

    .line 317
    const/4 v12, 0x1

    .line 318
    packed-switch v4, :pswitch_data_1

    .line 319
    .line 320
    .line 321
    new-instance p1, Ljava/lang/RuntimeException;

    .line 322
    .line 323
    invoke-direct {p1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    throw p1

    .line 327
    :pswitch_8
    iput v5, p0, La2/p;->f0:I

    .line 328
    .line 329
    iput v12, p0, La2/p;->g0:I

    .line 330
    .line 331
    goto :goto_1

    .line 332
    :pswitch_9
    iput v5, p0, La2/p;->f0:I

    .line 333
    .line 334
    :goto_1
    iput v12, p0, La2/p;->h0:I

    .line 335
    .line 336
    goto :goto_3

    .line 337
    :pswitch_a
    iput v5, p0, La2/p;->f0:I

    .line 338
    .line 339
    iput v5, p0, La2/p;->g0:I

    .line 340
    .line 341
    iput v12, p0, La2/p;->h0:I

    .line 342
    .line 343
    goto :goto_2

    .line 344
    :pswitch_b
    iput v12, p0, La2/p;->f0:I

    .line 345
    .line 346
    :pswitch_c
    iput v5, p0, La2/p;->g0:I

    .line 347
    .line 348
    :goto_2
    iput v12, p0, La2/p;->i0:I

    .line 349
    .line 350
    goto :goto_3

    .line 351
    :pswitch_d
    iput v12, p0, La2/p;->f0:I

    .line 352
    .line 353
    goto :goto_3

    .line 354
    :pswitch_e
    iput v12, p0, La2/p;->f0:I

    .line 355
    .line 356
    :pswitch_f
    iput v12, p0, La2/p;->g0:I

    .line 357
    .line 358
    :goto_3
    int-to-float v3, v9

    .line 359
    mul-float/2addr v3, v10

    .line 360
    int-to-float v4, v11

    .line 361
    mul-float/2addr v4, v10

    .line 362
    iget v5, p0, La2/p;->f0:I

    .line 363
    .line 364
    int-to-float v5, v5

    .line 365
    mul-float/2addr v5, v3

    .line 366
    neg-float v3, v5

    .line 367
    iput v3, p0, La2/p;->d0:F

    .line 368
    .line 369
    iget v3, p0, La2/p;->g0:I

    .line 370
    .line 371
    int-to-float v3, v3

    .line 372
    mul-float/2addr v3, v4

    .line 373
    neg-float v3, v3

    .line 374
    iput v3, p0, La2/p;->e0:F

    .line 375
    .line 376
    :cond_8
    iget v3, p0, La2/p;->v0:F

    .line 377
    .line 378
    sub-float/2addr v2, v3

    .line 379
    iget v3, p0, La2/p;->w0:F

    .line 380
    .line 381
    sub-float/2addr v1, v3

    .line 382
    if-ne p1, v0, :cond_9

    .line 383
    .line 384
    invoke-virtual {p0}, La2/p;->E()V

    .line 385
    .line 386
    .line 387
    :cond_9
    iget p1, p0, La2/p;->f0:I

    .line 388
    .line 389
    int-to-float p1, p1

    .line 390
    mul-float/2addr p1, v2

    .line 391
    float-to-int p1, p1

    .line 392
    iget v2, p0, La2/p;->g0:I

    .line 393
    .line 394
    int-to-float v2, v2

    .line 395
    mul-float/2addr v2, v1

    .line 396
    float-to-int v1, v2

    .line 397
    iget v2, p0, La2/p;->Z:I

    .line 398
    .line 399
    add-int/2addr v2, p1

    .line 400
    iget v3, p0, La2/p;->a0:I

    .line 401
    .line 402
    add-int/2addr v3, v1

    .line 403
    invoke-virtual {p0, v2, v3}, La2/p;->M(II)V

    .line 404
    .line 405
    .line 406
    iget v2, v0, Lz1/c;->c:I

    .line 407
    .line 408
    iget v0, v0, Lz1/c;->d:I

    .line 409
    .line 410
    int-to-float v2, v2

    .line 411
    mul-float/2addr v2, v10

    .line 412
    int-to-float v0, v0

    .line 413
    mul-float/2addr v0, v10

    .line 414
    iget v3, p0, La2/p;->d0:F

    .line 415
    .line 416
    add-float/2addr v3, v2

    .line 417
    iget v4, p0, La2/p;->e0:F

    .line 418
    .line 419
    add-float/2addr v4, v0

    .line 420
    iput v3, v7, Lz1/a;->a:F

    .line 421
    .line 422
    iput v4, v7, Lz1/a;->b:F

    .line 423
    .line 424
    invoke-virtual {v8, v7, v6}, Lz1/f;->d(Lz1/b;Lz1/b;)V

    .line 425
    .line 426
    .line 427
    iget v3, v6, Lz1/e;->a:F

    .line 428
    .line 429
    iget v4, v6, Lz1/e;->b:F

    .line 430
    .line 431
    iget v5, p0, La2/p;->f0:I

    .line 432
    .line 433
    int-to-float v5, v5

    .line 434
    mul-float/2addr v5, v2

    .line 435
    neg-float v5, v5

    .line 436
    iget v9, p0, La2/p;->g0:I

    .line 437
    .line 438
    int-to-float v9, v9

    .line 439
    mul-float/2addr v9, v0

    .line 440
    neg-float v9, v9

    .line 441
    add-float/2addr v2, v5

    .line 442
    add-float/2addr v0, v9

    .line 443
    iput v2, v7, Lz1/a;->a:F

    .line 444
    .line 445
    iput v0, v7, Lz1/a;->b:F

    .line 446
    .line 447
    invoke-virtual {v8, v7, v6}, Lz1/f;->d(Lz1/b;Lz1/b;)V

    .line 448
    .line 449
    .line 450
    iget v0, v6, Lz1/e;->a:F

    .line 451
    .line 452
    iget v2, v6, Lz1/e;->b:F

    .line 453
    .line 454
    iget v6, v8, Lz1/f;->e:F

    .line 455
    .line 456
    sub-float/2addr v3, v0

    .line 457
    add-float/2addr v3, v6

    .line 458
    iget v0, v8, Lz1/f;->f:F

    .line 459
    .line 460
    sub-float/2addr v4, v2

    .line 461
    add-float/2addr v4, v0

    .line 462
    invoke-virtual {v8, v3, v4}, Lz1/f;->q(FF)V

    .line 463
    .line 464
    .line 465
    iput v5, p0, La2/p;->d0:F

    .line 466
    .line 467
    iput v9, p0, La2/p;->e0:F

    .line 468
    .line 469
    iget v0, p0, La2/p;->h0:I

    .line 470
    .line 471
    if-eqz v0, :cond_a

    .line 472
    .line 473
    iget v0, p0, La2/p;->b0:F

    .line 474
    .line 475
    int-to-float p1, p1

    .line 476
    add-float/2addr v0, p1

    .line 477
    iput v0, p0, La2/p;->v0:F

    .line 478
    .line 479
    :cond_a
    iget p1, p0, La2/p;->i0:I

    .line 480
    .line 481
    if-eqz p1, :cond_d

    .line 482
    .line 483
    iget p1, p0, La2/p;->c0:F

    .line 484
    .line 485
    int-to-float v0, v1

    .line 486
    add-float/2addr p1, v0

    .line 487
    iput p1, p0, La2/p;->w0:F

    .line 488
    .line 489
    goto :goto_4

    .line 490
    :cond_b
    iget-boolean v0, p0, La2/p;->Q:Z

    .line 491
    .line 492
    if-eqz v0, :cond_d

    .line 493
    .line 494
    iget v0, v1, Lz1/a;->a:F

    .line 495
    .line 496
    iget v1, v1, Lz1/a;->b:F

    .line 497
    .line 498
    iget-boolean v2, p0, La2/p;->R:Z

    .line 499
    .line 500
    iget-object v3, p0, La2/p;->z0:Lz1/a;

    .line 501
    .line 502
    if-eqz v2, :cond_c

    .line 503
    .line 504
    iput v0, v3, Lz1/a;->a:F

    .line 505
    .line 506
    iput v1, v3, Lz1/a;->b:F

    .line 507
    .line 508
    iput-boolean v5, p0, La2/p;->R:Z

    .line 509
    .line 510
    :cond_c
    check-cast p1, Lz1/f;

    .line 511
    .line 512
    invoke-virtual {p1, v3, v6}, Lz1/f;->d(Lz1/b;Lz1/b;)V

    .line 513
    .line 514
    .line 515
    iput v0, v7, Lz1/a;->a:F

    .line 516
    .line 517
    iput v1, v7, Lz1/a;->b:F

    .line 518
    .line 519
    iget-object v0, p0, La2/p;->C0:Lz1/e;

    .line 520
    .line 521
    invoke-virtual {p1, v7, v0}, Lz1/f;->d(Lz1/b;Lz1/b;)V

    .line 522
    .line 523
    .line 524
    iget v1, v0, Lz1/e;->a:F

    .line 525
    .line 526
    iget v2, v6, Lz1/e;->a:F

    .line 527
    .line 528
    sub-float/2addr v1, v2

    .line 529
    iget v0, v0, Lz1/e;->b:F

    .line 530
    .line 531
    iget v2, v6, Lz1/e;->b:F

    .line 532
    .line 533
    sub-float/2addr v0, v2

    .line 534
    iget v2, p1, Lz1/f;->e:F

    .line 535
    .line 536
    add-float/2addr v2, v1

    .line 537
    iget v1, p1, Lz1/f;->f:F

    .line 538
    .line 539
    add-float/2addr v1, v0

    .line 540
    invoke-virtual {p1, v2, v1}, Lz1/f;->q(FF)V

    .line 541
    .line 542
    .line 543
    :cond_d
    :goto_4
    return-void

    .line 544
    :cond_e
    new-instance p1, Ljava/lang/RuntimeException;

    .line 545
    .line 546
    const-string v0, "Don\'t know how to handle this type of transformation"

    .line 547
    .line 548
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 549
    .line 550
    .line 551
    throw p1

    .line 552
    nop

    .line 553
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_b
        :pswitch_c
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public final L(II)V
    .locals 3

    .line 1
    iget-object v0, p0, La2/i;->c:Lz1/c;

    invoke-virtual {v0, p1, p2}, Lz1/c;->l(II)V

    iget v1, p0, La2/p;->l0:F

    int-to-float v2, p1

    mul-float/2addr v1, v2

    iget v2, p0, La2/p;->Z:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, La2/p;->j0:F

    iget v1, p0, La2/p;->m0:F

    int-to-float v2, p2

    mul-float/2addr v1, v2

    iget v2, p0, La2/p;->a0:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, La2/p;->k0:F

    iget-object v1, p0, La2/p;->P:Lz1/g;

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, La2/p;->E()V

    goto :goto_0

    :cond_0
    invoke-interface {v1, p1, p2}, Lz1/g;->l(II)V

    :goto_0
    iget p1, p0, La2/p;->j0:F

    iget p2, p0, La2/p;->k0:F

    invoke-virtual {p0, p1, p2}, La2/p;->O(FF)V

    return-void
.end method

.method public final M(II)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/nomone/GeckoView/MyGeckoView;->getGlobalDisplayDensity()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    int-to-float v1, p1

    iget v2, p0, La2/p;->U:I

    int-to-float v3, v2

    mul-float/2addr v3, v0

    cmpg-float v1, v1, v3

    if-gez v1, :cond_0

    int-to-float p1, v2

    mul-float/2addr p1, v0

    float-to-int p1, p1

    :cond_0
    int-to-float v1, p2

    iget v2, p0, La2/p;->V:I

    int-to-float v3, v2

    mul-float/2addr v3, v0

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    int-to-float p2, v2

    mul-float/2addr p2, v0

    float-to-int p2, p2

    :cond_1
    invoke-virtual {p0, p1, p2}, La2/p;->L(II)V

    return-void
.end method

.method public final N(ZZZ)V
    .locals 9

    .line 1
    iget-boolean v0, p0, La2/p;->T:Z

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    iget-boolean v0, p0, La2/p;->n0:Z

    .line 6
    .line 7
    if-ne v0, p1, :cond_0

    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    goto/16 :goto_3

    .line 12
    .line 13
    :cond_0
    iget-object p2, p0, La2/p;->P:Lz1/g;

    .line 14
    .line 15
    check-cast p2, Lz1/f;

    .line 16
    .line 17
    iget-object v0, p0, La2/i;->m:Lq1/f;

    .line 18
    .line 19
    if-eqz p1, :cond_6

    .line 20
    .line 21
    if-eqz p3, :cond_1

    .line 22
    .line 23
    iget p3, p2, Lz1/f;->j:I

    .line 24
    .line 25
    iput p3, p0, La2/p;->o0:I

    .line 26
    .line 27
    iget p3, p2, Lz1/f;->k:I

    .line 28
    .line 29
    iput p3, p0, La2/p;->p0:I

    .line 30
    .line 31
    iget p3, p2, Lz1/f;->e:F

    .line 32
    .line 33
    iput p3, p0, La2/p;->q0:F

    .line 34
    .line 35
    iget p3, p2, Lz1/f;->f:F

    .line 36
    .line 37
    iput p3, p0, La2/p;->r0:F

    .line 38
    .line 39
    :cond_1
    iget-object p3, p0, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 40
    .line 41
    invoke-virtual {p3}, Lcom/nomone/GeckoView/MyGeckoView;->getScale()F

    .line 42
    .line 43
    .line 44
    move-result p3

    .line 45
    iget-object v1, p0, La2/p;->K:Ly1/a;

    .line 46
    .line 47
    invoke-interface {v1, p3}, Ly1/a;->g(F)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-interface {v1, p3}, Ly1/a;->l(F)I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    iget v4, p0, La2/p;->O0:F

    .line 56
    .line 57
    invoke-interface {v1, p3, v4}, Ly1/a;->w(FF)I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    add-int/2addr v4, v3

    .line 62
    invoke-interface {v1, p3}, Ly1/a;->u(F)I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    add-int/2addr v5, v2

    .line 67
    invoke-static {v0}, La2/p;->H(Lq1/f;)F

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    iget-boolean v7, v0, Lq1/f;->h:Z

    .line 72
    .line 73
    invoke-virtual {v0}, Lq1/f;->b()Z

    .line 74
    .line 75
    .line 76
    move-result v8

    .line 77
    if-eqz v7, :cond_2

    .line 78
    .line 79
    if-eqz v8, :cond_3

    .line 80
    .line 81
    sget-object v7, Lcom/nomone/vr_desktop/Applications/SettingsApplication;->g:Ljava/lang/String;

    .line 82
    .line 83
    const-string v7, "Settings_VR_FullscreenHeight"

    .line 84
    .line 85
    const v8, 0x3f99999a    # 1.2f

    .line 86
    .line 87
    .line 88
    invoke-static {v7, v8}, Lo1/y;->b(Ljava/lang/String;F)F

    .line 89
    .line 90
    .line 91
    move-result v7

    .line 92
    goto :goto_0

    .line 93
    :cond_2
    if-eqz v8, :cond_3

    .line 94
    .line 95
    sget-object v7, Lcom/nomone/vr_desktop/Applications/SettingsApplication;->g:Ljava/lang/String;

    .line 96
    .line 97
    const-string v7, "Settings_FullscreenHeight"

    .line 98
    .line 99
    const v8, 0x3fa66666    # 1.3f

    .line 100
    .line 101
    .line 102
    invoke-static {v7, v8}, Lo1/y;->b(Ljava/lang/String;F)F

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    goto :goto_0

    .line 107
    :cond_3
    const/high16 v7, 0x3f800000    # 1.0f

    .line 108
    .line 109
    :goto_0
    invoke-virtual {v0}, Lq1/f;->a()I

    .line 110
    .line 111
    .line 112
    move-result v8

    .line 113
    int-to-float v8, v8

    .line 114
    mul-float/2addr v8, v6

    .line 115
    float-to-int v8, v8

    .line 116
    add-int/2addr v8, v5

    .line 117
    iget v5, v0, Lq1/f;->z:I

    .line 118
    .line 119
    int-to-float v5, v5

    .line 120
    mul-float/2addr v5, v7

    .line 121
    float-to-int v5, v5

    .line 122
    add-int/2addr v5, v4

    .line 123
    invoke-virtual {p0, v8, v5}, La2/p;->L(II)V

    .line 124
    .line 125
    .line 126
    const v4, 0x40066666    # 2.1f

    .line 127
    .line 128
    .line 129
    iget v5, p0, La2/p;->O0:F

    .line 130
    .line 131
    mul-float/2addr v5, v4

    .line 132
    invoke-interface {v1, p3, v5}, Ly1/a;->w(FF)I

    .line 133
    .line 134
    .line 135
    move-result p3

    .line 136
    add-int/lit8 p3, p3, 0xe

    .line 137
    .line 138
    add-int/2addr p3, v3

    .line 139
    iget-object v1, p0, La2/i;->d:La2/c0;

    .line 140
    .line 141
    :goto_1
    if-eqz v1, :cond_4

    .line 142
    .line 143
    instance-of v4, v1, La2/x;

    .line 144
    .line 145
    if-nez v4, :cond_4

    .line 146
    .line 147
    invoke-interface {v1}, La2/r;->getParent()La2/c0;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    goto :goto_1

    .line 152
    :cond_4
    check-cast v1, La2/x;

    .line 153
    .line 154
    if-eqz v1, :cond_5

    .line 155
    .line 156
    sub-int/2addr p3, v3

    .line 157
    int-to-float p3, p3

    .line 158
    const/high16 v4, 0x40000000    # 2.0f

    .line 159
    .line 160
    div-float/2addr p3, v4

    .line 161
    neg-float p3, p3

    .line 162
    iget v4, v1, La2/x;->r:F

    .line 163
    .line 164
    invoke-static {v4}, Lz1/f;->p(F)F

    .line 165
    .line 166
    .line 167
    move-result v4

    .line 168
    mul-float/2addr v4, p3

    .line 169
    iget p3, v0, Lq1/f;->z:I

    .line 170
    .line 171
    int-to-float p3, p3

    .line 172
    div-float/2addr v4, p3

    .line 173
    iget p3, v1, La2/x;->r:F

    .line 174
    .line 175
    neg-float p3, p3

    .line 176
    iget v1, v1, La2/x;->s:F

    .line 177
    .line 178
    sub-float/2addr v4, v1

    .line 179
    invoke-virtual {p2, p3, v4}, Lz1/f;->q(FF)V

    .line 180
    .line 181
    .line 182
    :cond_5
    new-instance p3, Lu1/h;

    .line 183
    .line 184
    invoke-direct {p3, p2}, Lu1/h;-><init>(Lz1/f;)V

    .line 185
    .line 186
    .line 187
    int-to-float p2, v2

    .line 188
    iput p2, p3, Lu1/h;->b:F

    .line 189
    .line 190
    int-to-float p2, v3

    .line 191
    iput p2, p3, Lu1/h;->c:F

    .line 192
    .line 193
    invoke-virtual {v0}, Lq1/f;->a()I

    .line 194
    .line 195
    .line 196
    move-result p2

    .line 197
    int-to-float p2, p2

    .line 198
    mul-float/2addr p2, v6

    .line 199
    iput p2, p3, Lu1/h;->d:F

    .line 200
    .line 201
    iget p2, v0, Lq1/f;->z:I

    .line 202
    .line 203
    int-to-float p2, p2

    .line 204
    mul-float/2addr p2, v7

    .line 205
    iput p2, p3, Lu1/h;->e:F

    .line 206
    .line 207
    iget-object p2, v0, Lq1/f;->F:Lu1/i;

    .line 208
    .line 209
    invoke-virtual {p2, p3}, Lu1/i;->h(Lu1/h;)V

    .line 210
    .line 211
    .line 212
    goto :goto_2

    .line 213
    :cond_6
    iget p3, p0, La2/p;->o0:I

    .line 214
    .line 215
    iget v1, p0, La2/p;->p0:I

    .line 216
    .line 217
    iget v2, p0, La2/p;->q0:F

    .line 218
    .line 219
    iget v3, p0, La2/p;->r0:F

    .line 220
    .line 221
    iget-object v4, v0, Lq1/f;->F:Lu1/i;

    .line 222
    .line 223
    const/4 v5, 0x0

    .line 224
    invoke-virtual {v4, v5}, Lu1/i;->h(Lu1/h;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {p0, p3, v1}, La2/p;->L(II)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p2, v2, v3}, Lz1/f;->q(FF)V

    .line 231
    .line 232
    .line 233
    :goto_2
    iput-boolean p1, p0, La2/p;->n0:Z

    .line 234
    .line 235
    invoke-virtual {v0}, Lq1/f;->d()V

    .line 236
    .line 237
    .line 238
    :cond_7
    :goto_3
    return-void
.end method

.method public final O(FF)V
    .locals 6

    .line 1
    iput p1, p0, La2/p;->j0:F

    .line 2
    .line 3
    iput p2, p0, La2/p;->k0:F

    .line 4
    .line 5
    invoke-virtual {p0}, La2/p;->I()F

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0}, La2/p;->J()F

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    iget-object v0, p0, La2/i;->c:Lz1/c;

    .line 14
    .line 15
    iget v1, v0, Lz1/c;->c:I

    .line 16
    .line 17
    iget v0, v0, Lz1/c;->d:I

    .line 18
    .line 19
    iget-object v2, p0, La2/p;->K:Ly1/a;

    .line 20
    .line 21
    invoke-interface {v2, p1}, Ly1/a;->u(F)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-interface {v2, p1}, Ly1/a;->g(F)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-interface {v2, p2}, Ly1/a;->l(F)I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    iget v5, p0, La2/p;->O0:F

    .line 34
    .line 35
    invoke-interface {v2, p2, v5}, Ly1/a;->w(FF)I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    iget-object v2, p0, La2/p;->M:Lc1/b;

    .line 40
    .line 41
    invoke-virtual {v2, p1, v4}, Lc1/b;->n(II)V

    .line 42
    .line 43
    .line 44
    add-int/2addr v3, p1

    .line 45
    sub-int p1, v1, v3

    .line 46
    .line 47
    add-int/2addr p2, v4

    .line 48
    sub-int p2, v0, p2

    .line 49
    .line 50
    invoke-virtual {v2, v1, v0, p1, p2}, Lc1/b;->r(IIII)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final P(Ljava/lang/String;)V
    .locals 2

    .line 1
    iput-object p1, p0, La2/p;->L:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v1, "document.getElementById(\'titleBar\').textContent = `"

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    const-string p1, ""

    .line 13
    .line 14
    :cond_0
    const-string v1, "`"

    .line 15
    .line 16
    invoke-static {v0, p1, v1}, La1/b;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object v0, p0, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lcom/nomone/GeckoView/MyGeckoView;->e(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final a()V
    .locals 2

    .line 1
    invoke-super {p0}, La2/i;->a()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iget-object v1, p0, La2/p;->L0:La2/o;

    .line 6
    .line 7
    iput-boolean v0, v1, Lo1/q;->c:Z

    .line 8
    .line 9
    return-void
.end method

.method public final g(Landroidx/fragment/app/h;)Z
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, La2/i;->f:Lcom/nomone/GeckoView/MyGeckoView;

    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/nomone/GeckoView/MyGeckoView;->getScale()F

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-static {}, Lcom/nomone/GeckoView/MyGeckoView;->getGlobalDisplayDensity()F

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    mul-float/2addr v3, v2

    .line 16
    iget v2, v0, La2/p;->O:F

    .line 17
    .line 18
    cmpl-float v4, v3, v2

    .line 19
    .line 20
    iget-object v5, v0, La2/i;->c:Lz1/c;

    .line 21
    .line 22
    if-eqz v4, :cond_1

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    cmpl-float v4, v2, v4

    .line 26
    .line 27
    if-lez v4, :cond_0

    .line 28
    .line 29
    div-float v2, v3, v2

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    .line 33
    .line 34
    :goto_0
    iget v4, v5, Lz1/c;->c:I

    .line 35
    .line 36
    int-to-float v4, v4

    .line 37
    mul-float/2addr v4, v2

    .line 38
    float-to-int v4, v4

    .line 39
    iget v6, v5, Lz1/c;->d:I

    .line 40
    .line 41
    int-to-float v6, v6

    .line 42
    mul-float/2addr v6, v2

    .line 43
    float-to-int v2, v6

    .line 44
    invoke-virtual {v0, v4, v2}, La2/p;->L(II)V

    .line 45
    .line 46
    .line 47
    iput v3, v0, La2/p;->O:F

    .line 48
    .line 49
    :cond_1
    iget-object v2, v0, La2/p;->I0:Landroid/graphics/Rect;

    .line 50
    .line 51
    iget-object v3, v0, La2/p;->H0:Landroid/graphics/Rect;

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 54
    .line 55
    .line 56
    iget v4, v0, La2/i;->I:I

    .line 57
    .line 58
    const/4 v6, 0x1

    .line 59
    iget-object v8, v0, La2/p;->F0:Landroid/graphics/Rect;

    .line 60
    .line 61
    iget-object v9, v0, La2/p;->G0:Landroid/graphics/Rect;

    .line 62
    .line 63
    iget-object v10, v0, La2/p;->E0:Landroid/graphics/Rect;

    .line 64
    .line 65
    iget-object v11, v0, La2/p;->D0:Landroid/graphics/Rect;

    .line 66
    .line 67
    iget-object v12, v0, La2/p;->J0:Landroid/graphics/Rect;

    .line 68
    .line 69
    if-ne v4, v6, :cond_8

    .line 70
    .line 71
    iget v4, v5, Lz1/c;->a:I

    .line 72
    .line 73
    iget v13, v5, Lz1/c;->b:I

    .line 74
    .line 75
    iget v14, v5, Lz1/c;->c:I

    .line 76
    .line 77
    iget v15, v5, Lz1/c;->d:I

    .line 78
    .line 79
    invoke-virtual/range {p0 .. p0}, La2/p;->I()F

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    invoke-virtual/range {p0 .. p0}, La2/p;->J()F

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    move-object/from16 v16, v2

    .line 88
    .line 89
    iget-object v2, v0, La2/p;->K:Ly1/a;

    .line 90
    .line 91
    invoke-interface {v2, v6}, Ly1/a;->u(F)I

    .line 92
    .line 93
    .line 94
    move-result v17

    .line 95
    invoke-interface {v2, v6}, Ly1/a;->g(F)I

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    invoke-interface {v2, v7}, Ly1/a;->l(F)I

    .line 100
    .line 101
    .line 102
    move-result v18

    .line 103
    move-object/from16 v19, v5

    .line 104
    .line 105
    iget v5, v0, La2/p;->O0:F

    .line 106
    .line 107
    invoke-interface {v2, v7, v5}, Ly1/a;->w(FF)I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    add-int/2addr v14, v4

    .line 112
    sub-int v5, v14, v17

    .line 113
    .line 114
    add-int v7, v17, v5

    .line 115
    .line 116
    add-int/2addr v15, v13

    .line 117
    invoke-virtual {v11, v5, v13, v7, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v11}, Landroidx/fragment/app/h;->n(Landroid/graphics/Rect;)Z

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    if-eqz v5, :cond_2

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_2
    sub-int v5, v15, v2

    .line 128
    .line 129
    add-int/2addr v2, v5

    .line 130
    invoke-virtual {v10, v4, v5, v14, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1, v10}, Landroidx/fragment/app/h;->n(Landroid/graphics/Rect;)Z

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    if-eqz v2, :cond_3

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_3
    add-int v2, v18, v13

    .line 141
    .line 142
    invoke-virtual {v9, v4, v13, v14, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, v9}, Landroidx/fragment/app/h;->n(Landroid/graphics/Rect;)Z

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    if-eqz v2, :cond_4

    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_4
    add-int/2addr v6, v4

    .line 153
    invoke-virtual {v8, v4, v13, v6, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, v8}, Landroidx/fragment/app/h;->n(Landroid/graphics/Rect;)Z

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    if-eqz v2, :cond_5

    .line 161
    .line 162
    :goto_1
    const/4 v2, 0x1

    .line 163
    goto :goto_2

    .line 164
    :cond_5
    const/4 v2, 0x0

    .line 165
    :goto_2
    if-nez v2, :cond_7

    .line 166
    .line 167
    invoke-virtual {v12}, Landroid/graphics/Rect;->isEmpty()Z

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    if-nez v2, :cond_6

    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_6
    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    .line 175
    .line 176
    .line 177
    goto :goto_5

    .line 178
    :cond_7
    :goto_3
    move-object/from16 v2, v19

    .line 179
    .line 180
    goto :goto_4

    .line 181
    :cond_8
    move-object/from16 v16, v2

    .line 182
    .line 183
    move-object v2, v5

    .line 184
    :goto_4
    iget v4, v2, Lz1/c;->c:I

    .line 185
    .line 186
    iget v5, v2, Lz1/c;->d:I

    .line 187
    .line 188
    const/4 v6, 0x0

    .line 189
    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 190
    .line 191
    .line 192
    if-eqz v2, :cond_9

    .line 193
    .line 194
    iget v4, v2, Lz1/c;->a:I

    .line 195
    .line 196
    iget v2, v2, Lz1/c;->b:I

    .line 197
    .line 198
    invoke-virtual {v3, v4, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 199
    .line 200
    .line 201
    :cond_9
    invoke-virtual {v3, v12}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 202
    .line 203
    .line 204
    :goto_5
    iget v2, v0, La2/i;->I:I

    .line 205
    .line 206
    const/4 v4, 0x2

    .line 207
    if-ne v2, v4, :cond_a

    .line 208
    .line 209
    const/4 v2, 0x3

    .line 210
    iput v2, v0, La2/i;->I:I

    .line 211
    .line 212
    :cond_a
    move-object/from16 v2, v16

    .line 213
    .line 214
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v2

    .line 218
    if-nez v2, :cond_b

    .line 219
    .line 220
    invoke-virtual {v1, v11}, Landroidx/fragment/app/h;->h(Landroid/graphics/Rect;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1, v10}, Landroidx/fragment/app/h;->h(Landroid/graphics/Rect;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1, v8}, Landroidx/fragment/app/h;->h(Landroid/graphics/Rect;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v1, v9}, Landroidx/fragment/app/h;->h(Landroid/graphics/Rect;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v1, v12}, Landroidx/fragment/app/h;->h(Landroid/graphics/Rect;)V

    .line 233
    .line 234
    .line 235
    const/4 v1, 0x1

    .line 236
    return v1

    .line 237
    :cond_b
    invoke-virtual {v12}, Landroid/graphics/Rect;->isEmpty()Z

    .line 238
    .line 239
    .line 240
    move-result v2

    .line 241
    if-nez v2, :cond_c

    .line 242
    .line 243
    const/4 v2, 0x0

    .line 244
    return v2

    .line 245
    :cond_c
    const/4 v2, 0x0

    .line 246
    invoke-virtual {v1, v11}, Landroidx/fragment/app/h;->q(Landroid/graphics/Rect;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v1, v10}, Landroidx/fragment/app/h;->q(Landroid/graphics/Rect;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v1, v8}, Landroidx/fragment/app/h;->q(Landroid/graphics/Rect;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v1, v9}, Landroidx/fragment/app/h;->q(Landroid/graphics/Rect;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v1, v12}, Landroidx/fragment/app/h;->q(Landroid/graphics/Rect;)V

    .line 259
    .line 260
    .line 261
    return v2
.end method

.method public final i(Lo1/q;)Z
    .locals 2

    .line 1
    iget-object v0, p0, La2/p;->H0:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    invoke-virtual {p0}, La2/i;->p()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, La2/p;->K:Ly1/a;

    .line 18
    .line 19
    invoke-interface {v0}, Ly1/a;->z()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move v0, v1

    .line 28
    :goto_0
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0}, La2/p;->F()V

    .line 31
    .line 32
    .line 33
    :cond_2
    invoke-virtual {p0, p1}, La2/i;->B(Lo1/q;)V

    .line 34
    .line 35
    .line 36
    return v1
.end method

.method public final t(Lo1/q;)Z
    .locals 2

    .line 1
    iget-object v0, p0, La2/p;->H0:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    invoke-virtual {p0}, La2/i;->p()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, La2/p;->K:Ly1/a;

    .line 18
    .line 19
    invoke-interface {v0}, Ly1/a;->z()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move v0, v1

    .line 28
    :goto_0
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0}, La2/p;->F()V

    .line 31
    .line 32
    .line 33
    :cond_2
    iget-object v0, p0, La2/p;->J0:Landroid/graphics/Rect;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1}, La2/i;->B(Lo1/q;)V

    .line 39
    .line 40
    .line 41
    return v1
.end method

.method public final u(Lu1/w;)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    iget-boolean v3, v0, La2/p;->N:Z

    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    if-eqz v3, :cond_d

    .line 10
    .line 11
    iget v3, v1, Lu1/w;->a:I

    .line 12
    .line 13
    const/4 v5, 0x5

    .line 14
    const/4 v6, 0x0

    .line 15
    if-ne v3, v5, :cond_0

    .line 16
    .line 17
    iput-boolean v6, v0, La2/p;->Q:Z

    .line 18
    .line 19
    iput-boolean v6, v0, La2/p;->X:Z

    .line 20
    .line 21
    :cond_0
    const/4 v7, 0x4

    .line 22
    if-eq v3, v7, :cond_1

    .line 23
    .line 24
    goto/16 :goto_3

    .line 25
    .line 26
    :cond_1
    iget-object v3, v1, Lu1/w;->b:Lz1/b;

    .line 27
    .line 28
    iget-object v8, v0, La2/i;->c:Lz1/c;

    .line 29
    .line 30
    iget-object v9, v0, La2/p;->S:Lz1/a;

    .line 31
    .line 32
    invoke-virtual {v8, v3, v9}, Lz1/c;->d(Lz1/b;Lz1/b;)V

    .line 33
    .line 34
    .line 35
    iget v3, v9, Lz1/a;->a:F

    .line 36
    .line 37
    iget v9, v9, Lz1/a;->b:F

    .line 38
    .line 39
    iget v10, v8, Lz1/c;->c:I

    .line 40
    .line 41
    iget v8, v8, Lz1/c;->d:I

    .line 42
    .line 43
    invoke-virtual/range {p0 .. p0}, La2/p;->I()F

    .line 44
    .line 45
    .line 46
    move-result v11

    .line 47
    invoke-virtual/range {p0 .. p0}, La2/p;->J()F

    .line 48
    .line 49
    .line 50
    move-result v12

    .line 51
    const/4 v13, 0x0

    .line 52
    cmpg-float v14, v3, v13

    .line 53
    .line 54
    if-ltz v14, :cond_c

    .line 55
    .line 56
    int-to-float v10, v10

    .line 57
    cmpl-float v14, v3, v10

    .line 58
    .line 59
    if-gez v14, :cond_c

    .line 60
    .line 61
    cmpg-float v14, v9, v13

    .line 62
    .line 63
    if-ltz v14, :cond_c

    .line 64
    .line 65
    int-to-float v8, v8

    .line 66
    cmpl-float v14, v9, v8

    .line 67
    .line 68
    if-ltz v14, :cond_2

    .line 69
    .line 70
    goto/16 :goto_3

    .line 71
    .line 72
    :cond_2
    invoke-static {}, Lcom/nomone/GeckoView/MyGeckoView;->getGlobalDisplayDensity()F

    .line 73
    .line 74
    .line 75
    move-result v14

    .line 76
    const/high16 v15, 0x40400000    # 3.0f

    .line 77
    .line 78
    mul-float/2addr v14, v15

    .line 79
    iget-object v15, v0, La2/p;->K:Ly1/a;

    .line 80
    .line 81
    invoke-interface {v15}, Ly1/a;->C()I

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    int-to-float v5, v5

    .line 86
    add-float/2addr v5, v14

    .line 87
    mul-float/2addr v5, v12

    .line 88
    sub-float v5, v8, v5

    .line 89
    .line 90
    cmpl-float v5, v9, v5

    .line 91
    .line 92
    if-lez v5, :cond_5

    .line 93
    .line 94
    invoke-interface {v15}, Ly1/a;->d()I

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    int-to-float v5, v5

    .line 99
    add-float/2addr v5, v14

    .line 100
    mul-float/2addr v5, v11

    .line 101
    sub-float/2addr v10, v5

    .line 102
    cmpl-float v5, v3, v10

    .line 103
    .line 104
    if-lez v5, :cond_3

    .line 105
    .line 106
    move v5, v2

    .line 107
    goto :goto_1

    .line 108
    :cond_3
    invoke-interface {v15}, Ly1/a;->r()I

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    int-to-float v5, v5

    .line 113
    add-float/2addr v14, v5

    .line 114
    mul-float/2addr v14, v11

    .line 115
    cmpg-float v3, v3, v14

    .line 116
    .line 117
    if-gez v3, :cond_4

    .line 118
    .line 119
    const/16 v5, 0x8

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_4
    iget-boolean v3, v0, La2/p;->T:Z

    .line 123
    .line 124
    if-eqz v3, :cond_a

    .line 125
    .line 126
    iput v4, v0, La2/p;->W:I

    .line 127
    .line 128
    :goto_0
    iput-boolean v4, v0, La2/p;->Y:Z

    .line 129
    .line 130
    iput-boolean v4, v0, La2/p;->X:Z

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_5
    invoke-interface {v15}, Ly1/a;->d()I

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    int-to-float v5, v5

    .line 138
    add-float/2addr v5, v14

    .line 139
    mul-float/2addr v5, v11

    .line 140
    sub-float/2addr v10, v5

    .line 141
    cmpl-float v5, v3, v10

    .line 142
    .line 143
    if-lez v5, :cond_7

    .line 144
    .line 145
    invoke-interface {v15}, Ly1/a;->D()I

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    int-to-float v3, v3

    .line 150
    add-float/2addr v14, v3

    .line 151
    mul-float/2addr v14, v12

    .line 152
    cmpl-float v3, v9, v14

    .line 153
    .line 154
    if-lez v3, :cond_6

    .line 155
    .line 156
    const/4 v5, 0x3

    .line 157
    goto :goto_1

    .line 158
    :cond_6
    move v5, v7

    .line 159
    goto :goto_1

    .line 160
    :cond_7
    invoke-interface {v15}, Ly1/a;->r()I

    .line 161
    .line 162
    .line 163
    move-result v5

    .line 164
    int-to-float v5, v5

    .line 165
    add-float/2addr v5, v14

    .line 166
    mul-float/2addr v5, v11

    .line 167
    cmpg-float v3, v3, v5

    .line 168
    .line 169
    if-gez v3, :cond_9

    .line 170
    .line 171
    invoke-interface {v15}, Ly1/a;->D()I

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    int-to-float v3, v3

    .line 176
    add-float/2addr v14, v3

    .line 177
    mul-float/2addr v14, v12

    .line 178
    cmpl-float v3, v9, v14

    .line 179
    .line 180
    if-lez v3, :cond_8

    .line 181
    .line 182
    const/4 v5, 0x7

    .line 183
    goto :goto_1

    .line 184
    :cond_8
    const/4 v5, 0x6

    .line 185
    goto :goto_1

    .line 186
    :cond_9
    invoke-interface {v15}, Ly1/a;->D()I

    .line 187
    .line 188
    .line 189
    move-result v3

    .line 190
    int-to-float v3, v3

    .line 191
    add-float/2addr v14, v3

    .line 192
    mul-float/2addr v14, v12

    .line 193
    cmpg-float v3, v9, v14

    .line 194
    .line 195
    if-gez v3, :cond_b

    .line 196
    .line 197
    const/4 v5, 0x5

    .line 198
    :goto_1
    iget-boolean v3, v0, La2/p;->T:Z

    .line 199
    .line 200
    if-eqz v3, :cond_a

    .line 201
    .line 202
    iput v5, v0, La2/p;->W:I

    .line 203
    .line 204
    goto :goto_0

    .line 205
    :cond_a
    :goto_2
    iget-boolean v6, v0, La2/p;->T:Z

    .line 206
    .line 207
    goto :goto_3

    .line 208
    :cond_b
    invoke-interface {v15, v13}, Ly1/a;->f(F)I

    .line 209
    .line 210
    .line 211
    move-result v3

    .line 212
    int-to-float v3, v3

    .line 213
    mul-float/2addr v12, v3

    .line 214
    sub-float/2addr v8, v12

    .line 215
    cmpl-float v3, v9, v8

    .line 216
    .line 217
    if-lez v3, :cond_c

    .line 218
    .line 219
    iput-boolean v6, v0, La2/p;->X:Z

    .line 220
    .line 221
    iput-boolean v4, v0, La2/p;->R:Z

    .line 222
    .line 223
    iput-boolean v4, v0, La2/p;->Q:Z

    .line 224
    .line 225
    move v6, v4

    .line 226
    :cond_c
    :goto_3
    if-eqz v6, :cond_d

    .line 227
    .line 228
    invoke-virtual/range {p0 .. p1}, La2/p;->K(Lu1/w;)V

    .line 229
    .line 230
    .line 231
    goto :goto_4

    .line 232
    :cond_d
    iget-boolean v3, v0, La2/p;->X:Z

    .line 233
    .line 234
    if-nez v3, :cond_e

    .line 235
    .line 236
    iget-boolean v3, v0, La2/p;->Q:Z

    .line 237
    .line 238
    if-eqz v3, :cond_f

    .line 239
    .line 240
    iget-object v3, v0, La2/p;->P:Lz1/g;

    .line 241
    .line 242
    if-eqz v3, :cond_f

    .line 243
    .line 244
    :cond_e
    iget v3, v1, Lu1/w;->a:I

    .line 245
    .line 246
    if-ne v3, v2, :cond_f

    .line 247
    .line 248
    invoke-virtual/range {p0 .. p1}, La2/p;->K(Lu1/w;)V

    .line 249
    .line 250
    .line 251
    return v4

    .line 252
    :cond_f
    :goto_4
    invoke-super/range {p0 .. p1}, La2/i;->u(Lu1/w;)Z

    .line 253
    .line 254
    .line 255
    move-result v1

    .line 256
    return v1
.end method

.method public final y()V
    .locals 2

    .line 1
    invoke-super {p0}, La2/i;->y()V

    const-string v0, "Settings_General_LookingAround"

    iget-object v1, p0, La2/p;->s0:Ls1/o;

    invoke-static {v0, v1}, Lo1/y;->i(Ljava/lang/String;Lo1/b;)V

    const-string v0, "Settings_FullscreenWidth"

    invoke-static {v0, v1}, Lo1/y;->i(Ljava/lang/String;Lo1/b;)V

    const-string v0, "Settings_FullscreenHeight"

    invoke-static {v0, v1}, Lo1/y;->i(Ljava/lang/String;Lo1/b;)V

    const-string v0, "Settings_VR_Stereo"

    invoke-static {v0, v1}, Lo1/y;->i(Ljava/lang/String;Lo1/b;)V

    const-string v0, "Settings_VR_LookingAround"

    invoke-static {v0, v1}, Lo1/y;->i(Ljava/lang/String;Lo1/b;)V

    const-string v0, "Settings_VR_FullscreenWidth"

    invoke-static {v0, v1}, Lo1/y;->i(Ljava/lang/String;Lo1/b;)V

    const-string v0, "Settings_VR_FullscreenHeight"

    invoke-static {v0, v1}, Lo1/y;->i(Ljava/lang/String;Lo1/b;)V

    const-string v0, "DesktopMode_Fullscreen"

    invoke-static {v0, v1}, Lo1/y;->i(Ljava/lang/String;Lo1/b;)V

    return-void
.end method
