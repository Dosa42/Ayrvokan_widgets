.class public final Ls1/r;
.super Lc2/e;
.source "SourceFile"


# static fields
.field public static m0:Z

.field public static n0:Lq1/c0;


# instance fields
.field public final T:Landroidx/fragment/app/h;

.field public final U:La2/t;

.field public V:Lv1/b;

.field public W:I

.field public X:Z

.field public final Y:Ls1/o;

.field public Z:Z

.field public final a0:Z

.field public b0:Z

.field public final c0:Z

.field public final d0:Lz1/c;

.field public e0:I

.field public f0:I

.field public g0:Z

.field public h0:Z

.field public final i0:Lo0/n;

.field public j0:Z

.field public final k0:Lcom/nomone/vr_desktop/X11/NomX$RenderingInfo;

.field public l0:I


# direct methods
.method public constructor <init>(Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;Lq1/f;Lz1/c;Landroidx/fragment/app/h;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lc2/e;-><init>(Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;Lq1/f;Lz1/c;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, La2/t;

    .line 5
    .line 6
    const/4 p3, 0x0

    .line 7
    invoke-direct {p1, p3, p3, p3}, La2/t;-><init>(III)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Ls1/r;->U:La2/t;

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Ls1/r;->X:Z

    .line 14
    .line 15
    new-instance v0, Lz1/c;

    .line 16
    .line 17
    invoke-direct {v0, p1, p1}, Lz1/c;-><init>(II)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Ls1/r;->d0:Lz1/c;

    .line 21
    .line 22
    iput-boolean p1, p0, Ls1/r;->h0:Z

    .line 23
    .line 24
    new-instance v0, Lo0/n;

    .line 25
    .line 26
    const/16 v1, 0x9

    .line 27
    .line 28
    invoke-direct {v0, p0, v1}, Lo0/n;-><init>(Ljava/lang/Object;I)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Ls1/r;->i0:Lo0/n;

    .line 32
    .line 33
    new-instance v0, Lcom/nomone/vr_desktop/X11/NomX$RenderingInfo;

    .line 34
    .line 35
    invoke-direct {v0}, Lcom/nomone/vr_desktop/X11/NomX$RenderingInfo;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Ls1/r;->k0:Lcom/nomone/vr_desktop/X11/NomX$RenderingInfo;

    .line 39
    .line 40
    iput p1, p0, Ls1/r;->l0:I

    .line 41
    .line 42
    iput-object p4, p0, Ls1/r;->T:Landroidx/fragment/app/h;

    .line 43
    .line 44
    iput-boolean p3, p0, La2/v;->n:Z

    .line 45
    .line 46
    iget-object v0, p2, Lq1/f;->b:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 47
    .line 48
    sget-object v1, Lcom/nomone/vr_desktop/Applications/SettingsApplication;->g:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/i0;->R(Landroid/content/Context;)J

    .line 51
    .line 52
    .line 53
    move-result-wide v0

    .line 54
    const-wide v2, 0x12a05f200L

    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    cmp-long v0, v0, v2

    .line 60
    .line 61
    if-gez v0, :cond_0

    .line 62
    .line 63
    move v0, p1

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    move v0, p3

    .line 66
    :goto_0
    iput-boolean v0, p0, Ls1/r;->a0:Z

    .line 67
    .line 68
    invoke-static {}, Lcom/nomone/vr_desktop/Applications/SettingsApplication;->i()Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    iput-boolean v0, p0, Ls1/r;->Z:Z

    .line 73
    .line 74
    new-instance v0, Ls1/o;

    .line 75
    .line 76
    invoke-direct {v0, p0, p3}, Ls1/o;-><init>(La2/a;I)V

    .line 77
    .line 78
    .line 79
    iput-object v0, p0, Ls1/r;->Y:Ls1/o;

    .line 80
    .line 81
    const-string v1, "Settings_Linux_Sharpen"

    .line 82
    .line 83
    invoke-static {v1, v0}, Lo1/y;->d(Ljava/lang/String;Lo1/b;)V

    .line 84
    .line 85
    .line 86
    new-instance v0, Ls1/p;

    .line 87
    .line 88
    invoke-direct {v0, p0, p2}, Ls1/p;-><init>(Ls1/r;Lq1/f;)V

    .line 89
    .line 90
    .line 91
    iget-object v1, p2, Lq1/f;->k:Ljava/util/List;

    .line 92
    .line 93
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    new-instance v1, Ls1/q;

    .line 97
    .line 98
    invoke-direct {v1, p0, p2, v0, p4}, Ls1/q;-><init>(Ls1/r;Lq1/f;Ls1/p;Landroidx/fragment/app/h;)V

    .line 99
    .line 100
    .line 101
    iput-object v1, p0, La2/v;->j:La2/u;

    .line 102
    .line 103
    iput-object v1, p0, Lc2/e;->t:Lc2/c;

    .line 104
    .line 105
    sget-boolean p4, Ls1/r;->m0:Z

    .line 106
    .line 107
    if-eqz p4, :cond_1

    .line 108
    .line 109
    return-void

    .line 110
    :cond_1
    sput-boolean p1, Ls1/r;->m0:Z

    .line 111
    .line 112
    iget-object p4, p2, Lq1/f;->b:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 113
    .line 114
    invoke-static {p4, p3}, Lcom/google/android/gms/internal/play_billing/i0;->T(Landroid/content/Context;Z)V

    .line 115
    .line 116
    .line 117
    new-instance p4, Ljava/io/File;

    .line 118
    .line 119
    sget-object v0, Lcom/google/android/gms/internal/play_billing/i0;->s:Ljava/io/File;

    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-direct {p4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-nez v0, :cond_2

    .line 133
    .line 134
    invoke-virtual {p4}, Ljava/io/File;->mkdir()Z

    .line 135
    .line 136
    .line 137
    :cond_2
    const-string v0, "TMPDIR"

    .line 138
    .line 139
    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p4

    .line 143
    invoke-static {v0, p4, p1}, Lcom/nomone/vr_desktop/NativeUtils;->nativeSetEnv(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 144
    .line 145
    .line 146
    iget-object p1, p2, Lq1/f;->d:Lcom/nomone/browser_module/OpenGLView;

    .line 147
    .line 148
    sput-object p1, Lcom/nomone/vr_desktop/X11/NomX;->a:Lcom/nomone/browser_module/OpenGLView;

    .line 149
    .line 150
    new-instance p1, Ljava/util/ArrayList;

    .line 151
    .line 152
    const-string p2, ":0"

    .line 153
    .line 154
    const-string p4, "-nolock"

    .line 155
    .line 156
    filled-new-array {p2, p4}, [Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 165
    .line 166
    .line 167
    const-string p2, "Settings_Linux_16bitColor"

    .line 168
    .line 169
    invoke-static {p2, p3}, Lo1/y;->a(Ljava/lang/String;Z)Z

    .line 170
    .line 171
    .line 172
    move-result p2

    .line 173
    iput-boolean p2, p0, Ls1/r;->c0:Z

    .line 174
    .line 175
    if-eqz p2, :cond_3

    .line 176
    .line 177
    const-string p2, "-16bit"

    .line 178
    .line 179
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    :cond_3
    new-array p2, p3, [Ljava/lang/String;

    .line 183
    .line 184
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    check-cast p1, [Ljava/lang/String;

    .line 189
    .line 190
    invoke-static {p1}, Lcom/nomone/vr_desktop/X11/NomX;->startX11([Ljava/lang/String;)Z

    .line 191
    .line 192
    .line 193
    return-void
.end method


# virtual methods
.method public final A(Lo1/q;Z)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-static {}, Lcom/nomone/vr_desktop/X11/NomX;->readyToInitialize()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x1

    .line 10
    const/4 v4, 0x0

    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    iget-boolean v2, v0, Ls1/r;->j0:Z

    .line 14
    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    iput-boolean v3, v0, Ls1/r;->j0:Z

    .line 18
    .line 19
    iget-object v2, v0, Ls1/r;->T:Landroidx/fragment/app/h;

    .line 20
    .line 21
    iget-object v2, v2, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v2, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;

    .line 24
    .line 25
    iget-boolean v5, v2, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->t:Z

    .line 26
    .line 27
    const/4 v6, 0x2

    .line 28
    if-nez v5, :cond_0

    .line 29
    .line 30
    new-instance v5, Ljava/lang/Thread;

    .line 31
    .line 32
    sget-object v7, Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;->y:Ljava/lang/ThreadGroup;

    .line 33
    .line 34
    new-instance v8, Ls1/e;

    .line 35
    .line 36
    invoke-direct {v8, v2, v6}, Ls1/e;-><init>(Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;I)V

    .line 37
    .line 38
    .line 39
    const-string v2, "startLinuxThread"

    .line 40
    .line 41
    invoke-direct {v5, v7, v8, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-static {}, Lcom/nomone/vr_desktop/X11/NomX;->createNotifyFd()V

    .line 48
    .line 49
    .line 50
    sget-object v2, Lq1/f;->L:Lo1/j0;

    .line 51
    .line 52
    new-instance v5, Lw1/d;

    .line 53
    .line 54
    invoke-direct {v5, v0, v4, v6}, Lw1/d;-><init>(Ljava/lang/Object;ZI)V

    .line 55
    .line 56
    .line 57
    const-string v6, "setDisplayLoadingAnimation"

    .line 58
    .line 59
    const/16 v7, 0x3e8

    .line 60
    .line 61
    int-to-long v7, v7

    .line 62
    invoke-virtual {v2, v5, v6, v7, v8}, Lo1/j0;->b(Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 63
    .line 64
    .line 65
    :cond_1
    iget-boolean v2, v0, Lc2/e;->u:Z

    .line 66
    .line 67
    if-eqz v2, :cond_2

    .line 68
    .line 69
    invoke-super/range {p0 .. p2}, Lc2/e;->A(Lo1/q;Z)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    return v1

    .line 74
    :cond_2
    iget-boolean v2, v0, Ls1/r;->a0:Z

    .line 75
    .line 76
    if-eqz v2, :cond_3

    .line 77
    .line 78
    iget-boolean v2, v0, Ls1/r;->b0:Z

    .line 79
    .line 80
    if-nez v2, :cond_3

    .line 81
    .line 82
    iput-boolean v3, v0, Ls1/r;->b0:Z

    .line 83
    .line 84
    return v4

    .line 85
    :cond_3
    iget-object v2, v0, Lc2/e;->s:Lq1/f;

    .line 86
    .line 87
    invoke-virtual {v2}, Lq1/f;->b()Z

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    iget-object v6, v0, La2/v;->q:Lf0/c;

    .line 92
    .line 93
    if-eqz v5, :cond_4

    .line 94
    .line 95
    iput-boolean v3, v6, Lf0/c;->f:Z

    .line 96
    .line 97
    :cond_4
    iget-boolean v5, v6, Lf0/c;->f:Z

    .line 98
    .line 99
    if-nez v5, :cond_6

    .line 100
    .line 101
    iget-object v5, v6, Lf0/c;->i:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v5, Landroid/graphics/Rect;

    .line 104
    .line 105
    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    if-nez v5, :cond_5

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_5
    move v5, v4

    .line 113
    goto :goto_1

    .line 114
    :cond_6
    :goto_0
    move v5, v3

    .line 115
    :goto_1
    xor-int/2addr v5, v3

    .line 116
    iget v6, v0, Ls1/r;->l0:I

    .line 117
    .line 118
    if-nez v6, :cond_7

    .line 119
    .line 120
    iget-boolean v6, v0, Ls1/r;->g0:Z

    .line 121
    .line 122
    iget-boolean v7, v0, Ls1/r;->X:Z

    .line 123
    .line 124
    or-int/2addr v6, v7

    .line 125
    iput v6, v0, Ls1/r;->l0:I

    .line 126
    .line 127
    :cond_7
    if-eqz v5, :cond_8

    .line 128
    .line 129
    iget v5, v0, Ls1/r;->l0:I

    .line 130
    .line 131
    if-nez v5, :cond_8

    .line 132
    .line 133
    iput-boolean v3, v0, Ls1/r;->b0:Z

    .line 134
    .line 135
    return v4

    .line 136
    :cond_8
    invoke-static {}, Lcom/nomone/vr_desktop/X11/NomX;->triggerFdNotify()Z

    .line 137
    .line 138
    .line 139
    move-result v5

    .line 140
    const-string v6, "sdf"

    .line 141
    .line 142
    if-nez v5, :cond_9

    .line 143
    .line 144
    const-string v1, "Skipped gl frame!"

    .line 145
    .line 146
    invoke-static {v6, v1}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v2}, Lq1/f;->d()V

    .line 150
    .line 151
    .line 152
    iput-boolean v3, v0, Ls1/r;->b0:Z

    .line 153
    .line 154
    return v4

    .line 155
    :cond_9
    iput-boolean v4, v0, Ls1/r;->b0:Z

    .line 156
    .line 157
    iget-boolean v5, v0, Ls1/r;->g0:Z

    .line 158
    .line 159
    iget-object v7, v0, Ls1/r;->d0:Lz1/c;

    .line 160
    .line 161
    iget-object v8, v0, La2/v;->k:Lz1/g;

    .line 162
    .line 163
    iget-object v9, v0, Ls1/r;->U:La2/t;

    .line 164
    .line 165
    if-eqz v5, :cond_a

    .line 166
    .line 167
    iput-boolean v4, v0, Ls1/r;->g0:Z

    .line 168
    .line 169
    invoke-virtual/range {p0 .. p0}, Ls1/r;->E()F

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    invoke-interface {v8}, Lz1/g;->h()I

    .line 174
    .line 175
    .line 176
    move-result v10

    .line 177
    int-to-float v10, v10

    .line 178
    mul-float/2addr v10, v5

    .line 179
    float-to-int v10, v10

    .line 180
    invoke-interface {v8}, Lz1/g;->i()I

    .line 181
    .line 182
    .line 183
    move-result v11

    .line 184
    int-to-float v11, v11

    .line 185
    mul-float/2addr v5, v11

    .line 186
    float-to-int v5, v5

    .line 187
    iput v10, v9, La2/t;->b:I

    .line 188
    .line 189
    iput v5, v9, La2/t;->c:I

    .line 190
    .line 191
    const/16 v11, 0x3c

    .line 192
    .line 193
    invoke-static {v10, v5, v11}, Lcom/nomone/vr_desktop/X11/NomX;->updateMonitorConfiguration(III)V

    .line 194
    .line 195
    .line 196
    invoke-interface {v8}, Lz1/g;->k()I

    .line 197
    .line 198
    .line 199
    move-result v5

    .line 200
    invoke-interface {v8}, Lz1/g;->a()I

    .line 201
    .line 202
    .line 203
    move-result v10

    .line 204
    invoke-virtual {v7, v5, v10}, Lz1/c;->c(II)V

    .line 205
    .line 206
    .line 207
    new-instance v5, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    const-string v10, "New Linux dimensions: "

    .line 210
    .line 211
    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    iget v10, v9, La2/t;->b:I

    .line 215
    .line 216
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    const-string v10, ", "

    .line 220
    .line 221
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    iget v10, v9, La2/t;->c:I

    .line 225
    .line 226
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v5

    .line 233
    invoke-static {v6, v5}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    :cond_a
    iget-boolean v5, v0, Ls1/r;->X:Z

    .line 237
    .line 238
    if-eqz v5, :cond_b

    .line 239
    .line 240
    invoke-static {}, Lcom/nomone/vr_desktop/X11/NomX;->surfaceCreated()V

    .line 241
    .line 242
    .line 243
    iput-boolean v4, v0, Ls1/r;->X:Z

    .line 244
    .line 245
    :cond_b
    iget-object v5, v0, Ls1/r;->k0:Lcom/nomone/vr_desktop/X11/NomX$RenderingInfo;

    .line 246
    .line 247
    invoke-static {v5}, Lcom/nomone/vr_desktop/X11/NomX;->getRenderingInfo(Lcom/nomone/vr_desktop/X11/NomX$RenderingInfo;)V

    .line 248
    .line 249
    .line 250
    iget v6, v5, Lcom/nomone/vr_desktop/X11/NomX$RenderingInfo;->textureId:I

    .line 251
    .line 252
    iget v10, v9, La2/t;->a:I

    .line 253
    .line 254
    const/high16 v11, 0x3f800000    # 1.0f

    .line 255
    .line 256
    const/16 v12, 0xde1

    .line 257
    .line 258
    if-eq v6, v10, :cond_e

    .line 259
    .line 260
    iput v6, v9, La2/t;->a:I

    .line 261
    .line 262
    invoke-static {v12, v6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 263
    .line 264
    .line 265
    const v6, 0x8e45

    .line 266
    .line 267
    .line 268
    invoke-static {v12, v6, v11}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 269
    .line 270
    .line 271
    const v6, 0x45c81800    # 6403.0f

    .line 272
    .line 273
    .line 274
    const v9, 0x45c82800    # 6405.0f

    .line 275
    .line 276
    .line 277
    iget-boolean v10, v0, Ls1/r;->c0:Z

    .line 278
    .line 279
    if-eqz v10, :cond_c

    .line 280
    .line 281
    move v13, v6

    .line 282
    goto :goto_2

    .line 283
    :cond_c
    move v13, v9

    .line 284
    :goto_2
    const v14, 0x8e42

    .line 285
    .line 286
    .line 287
    invoke-static {v12, v14, v13}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 288
    .line 289
    .line 290
    if-eqz v10, :cond_d

    .line 291
    .line 292
    move v6, v9

    .line 293
    :cond_d
    const v9, 0x8e44

    .line 294
    .line 295
    .line 296
    invoke-static {v12, v9, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 297
    .line 298
    .line 299
    :cond_e
    iget v6, v0, Ls1/r;->l0:I

    .line 300
    .line 301
    if-gtz v6, :cond_10

    .line 302
    .line 303
    invoke-static {}, Lcom/nomone/vr_desktop/X11/NomX;->shouldUpdate()Z

    .line 304
    .line 305
    .line 306
    move-result v6

    .line 307
    if-eqz v6, :cond_f

    .line 308
    .line 309
    goto :goto_3

    .line 310
    :cond_f
    move v6, v4

    .line 311
    goto :goto_4

    .line 312
    :cond_10
    :goto_3
    move v6, v3

    .line 313
    :goto_4
    if-eqz v6, :cond_11

    .line 314
    .line 315
    invoke-static {}, Lcom/nomone/vr_desktop/X11/NomX;->unlockPixMap()V

    .line 316
    .line 317
    .line 318
    invoke-super/range {p0 .. p2}, Lc2/e;->A(Lo1/q;Z)Z

    .line 319
    .line 320
    .line 321
    move-result v9

    .line 322
    invoke-static {}, Lcom/nomone/vr_desktop/X11/NomX;->lockPixMapAndEmptyDamage()V

    .line 323
    .line 324
    .line 325
    iget v10, v0, Ls1/r;->l0:I

    .line 326
    .line 327
    if-lez v10, :cond_12

    .line 328
    .line 329
    sub-int/2addr v10, v3

    .line 330
    iput v10, v0, Ls1/r;->l0:I

    .line 331
    .line 332
    goto :goto_5

    .line 333
    :cond_11
    move v9, v4

    .line 334
    :cond_12
    :goto_5
    iget-boolean v10, v5, Lcom/nomone/vr_desktop/X11/NomX$RenderingInfo;->legacy:Z

    .line 335
    .line 336
    if-nez v10, :cond_13

    .line 337
    .line 338
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 339
    .line 340
    .line 341
    :cond_13
    iget-boolean v10, v5, Lcom/nomone/vr_desktop/X11/NomX$RenderingInfo;->cursorTextureUpdated:Z

    .line 342
    .line 343
    if-eqz v10, :cond_14

    .line 344
    .line 345
    invoke-static {}, Lcom/nomone/vr_desktop/X11/NomX;->updateCursorTexture()V

    .line 346
    .line 347
    .line 348
    :cond_14
    invoke-static {}, Lcom/nomone/vr_desktop/X11/NomX;->notifyX11Thread()V

    .line 349
    .line 350
    .line 351
    iget v10, v5, Lcom/nomone/vr_desktop/X11/NomX$RenderingInfo;->cursorWidth:I

    .line 352
    .line 353
    if-eqz v10, :cond_15

    .line 354
    .line 355
    iget v10, v5, Lcom/nomone/vr_desktop/X11/NomX$RenderingInfo;->cursorHeight:I

    .line 356
    .line 357
    if-eqz v10, :cond_15

    .line 358
    .line 359
    move v10, v3

    .line 360
    goto :goto_6

    .line 361
    :cond_15
    move v10, v4

    .line 362
    :goto_6
    iget-object v2, v2, Lq1/f;->F:Lu1/i;

    .line 363
    .line 364
    iget-boolean v2, v2, Lu1/i;->e:Z

    .line 365
    .line 366
    and-int/2addr v2, v10

    .line 367
    invoke-virtual/range {p0 .. p0}, Ls1/r;->E()F

    .line 368
    .line 369
    .line 370
    move-result v10

    .line 371
    div-float/2addr v11, v10

    .line 372
    if-nez v6, :cond_16

    .line 373
    .line 374
    if-eqz v2, :cond_18

    .line 375
    .line 376
    :cond_16
    if-nez v6, :cond_17

    .line 377
    .line 378
    iget-object v6, v0, Ls1/r;->V:Lv1/b;

    .line 379
    .line 380
    if-eqz v6, :cond_17

    .line 381
    .line 382
    iget v6, v6, Lv1/b;->d:I

    .line 383
    .line 384
    iget v10, v7, Lz1/c;->a:I

    .line 385
    .line 386
    iget v13, v7, Lz1/c;->b:I

    .line 387
    .line 388
    iget v14, v7, Lz1/c;->c:I

    .line 389
    .line 390
    iget v15, v7, Lz1/c;->d:I

    .line 391
    .line 392
    invoke-static {v6, v10, v13, v14, v15}, Lcom/nomone/vr_desktop/X11/NomX;->writeCursorBackground(IIIII)V

    .line 393
    .line 394
    .line 395
    :cond_17
    iget v6, v5, Lcom/nomone/vr_desktop/X11/NomX$RenderingInfo;->cursorX:I

    .line 396
    .line 397
    int-to-float v6, v6

    .line 398
    mul-float/2addr v6, v11

    .line 399
    float-to-int v6, v6

    .line 400
    iput v6, v5, Lcom/nomone/vr_desktop/X11/NomX$RenderingInfo;->cursorX:I

    .line 401
    .line 402
    iget v6, v5, Lcom/nomone/vr_desktop/X11/NomX$RenderingInfo;->cursorY:I

    .line 403
    .line 404
    int-to-float v6, v6

    .line 405
    mul-float/2addr v6, v11

    .line 406
    float-to-int v6, v6

    .line 407
    iput v6, v5, Lcom/nomone/vr_desktop/X11/NomX$RenderingInfo;->cursorY:I

    .line 408
    .line 409
    iget v6, v5, Lcom/nomone/vr_desktop/X11/NomX$RenderingInfo;->cursorHotX:I

    .line 410
    .line 411
    int-to-float v6, v6

    .line 412
    mul-float/2addr v6, v11

    .line 413
    float-to-int v6, v6

    .line 414
    iput v6, v5, Lcom/nomone/vr_desktop/X11/NomX$RenderingInfo;->cursorHotX:I

    .line 415
    .line 416
    iget v6, v5, Lcom/nomone/vr_desktop/X11/NomX$RenderingInfo;->cursorHotY:I

    .line 417
    .line 418
    int-to-float v6, v6

    .line 419
    mul-float/2addr v6, v11

    .line 420
    float-to-int v6, v6

    .line 421
    iput v6, v5, Lcom/nomone/vr_desktop/X11/NomX$RenderingInfo;->cursorHotY:I

    .line 422
    .line 423
    iget v6, v5, Lcom/nomone/vr_desktop/X11/NomX$RenderingInfo;->cursorWidth:I

    .line 424
    .line 425
    int-to-float v6, v6

    .line 426
    mul-float/2addr v6, v11

    .line 427
    float-to-int v6, v6

    .line 428
    iput v6, v5, Lcom/nomone/vr_desktop/X11/NomX$RenderingInfo;->cursorWidth:I

    .line 429
    .line 430
    iget v10, v5, Lcom/nomone/vr_desktop/X11/NomX$RenderingInfo;->cursorHeight:I

    .line 431
    .line 432
    int-to-float v10, v10

    .line 433
    mul-float/2addr v10, v11

    .line 434
    float-to-int v10, v10

    .line 435
    iput v10, v5, Lcom/nomone/vr_desktop/X11/NomX$RenderingInfo;->cursorHeight:I

    .line 436
    .line 437
    check-cast v8, Lz1/c;

    .line 438
    .line 439
    invoke-virtual {v7, v6, v10}, Lz1/c;->l(II)V

    .line 440
    .line 441
    .line 442
    iget v6, v8, Lz1/c;->a:I

    .line 443
    .line 444
    iget v10, v5, Lcom/nomone/vr_desktop/X11/NomX$RenderingInfo;->cursorX:I

    .line 445
    .line 446
    iget v13, v5, Lcom/nomone/vr_desktop/X11/NomX$RenderingInfo;->cursorHotX:I

    .line 447
    .line 448
    sub-int/2addr v10, v13

    .line 449
    add-int/2addr v10, v6

    .line 450
    iget v6, v8, Lz1/c;->b:I

    .line 451
    .line 452
    iget v8, v8, Lz1/c;->d:I

    .line 453
    .line 454
    add-int/2addr v6, v8

    .line 455
    iget v8, v5, Lcom/nomone/vr_desktop/X11/NomX$RenderingInfo;->cursorY:I

    .line 456
    .line 457
    iget v13, v5, Lcom/nomone/vr_desktop/X11/NomX$RenderingInfo;->cursorHeight:I

    .line 458
    .line 459
    add-int/2addr v8, v13

    .line 460
    iget v13, v5, Lcom/nomone/vr_desktop/X11/NomX$RenderingInfo;->cursorHotY:I

    .line 461
    .line 462
    sub-int/2addr v8, v13

    .line 463
    sub-int/2addr v6, v8

    .line 464
    invoke-virtual {v7, v10, v6}, Lz1/c;->n(II)V

    .line 465
    .line 466
    .line 467
    iget-object v6, v0, Ls1/r;->V:Lv1/b;

    .line 468
    .line 469
    if-eqz v6, :cond_18

    .line 470
    .line 471
    iget v6, v7, Lz1/c;->a:I

    .line 472
    .line 473
    iget v8, v7, Lz1/c;->b:I

    .line 474
    .line 475
    iget v10, v7, Lz1/c;->c:I

    .line 476
    .line 477
    iget v13, v7, Lz1/c;->d:I

    .line 478
    .line 479
    invoke-static {v6, v8, v10, v13}, Lcom/nomone/vr_desktop/X11/NomX;->readCursorBackground(IIII)V

    .line 480
    .line 481
    .line 482
    :cond_18
    if-eqz v2, :cond_1d

    .line 483
    .line 484
    iget v2, v5, Lcom/nomone/vr_desktop/X11/NomX$RenderingInfo;->cursorTextureId:I

    .line 485
    .line 486
    invoke-static {v12, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 487
    .line 488
    .line 489
    float-to-int v2, v11

    .line 490
    int-to-float v2, v2

    .line 491
    cmpl-float v2, v11, v2

    .line 492
    .line 493
    if-eqz v2, :cond_19

    .line 494
    .line 495
    const/high16 v2, 0x3f000000    # 0.5f

    .line 496
    .line 497
    cmpl-float v2, v11, v2

    .line 498
    .line 499
    if-eqz v2, :cond_19

    .line 500
    .line 501
    goto :goto_7

    .line 502
    :cond_19
    move v3, v4

    .line 503
    :goto_7
    const/16 v2, 0x2601

    .line 504
    .line 505
    const/16 v5, 0x2600

    .line 506
    .line 507
    if-eqz v3, :cond_1a

    .line 508
    .line 509
    move v6, v2

    .line 510
    goto :goto_8

    .line 511
    :cond_1a
    move v6, v5

    .line 512
    :goto_8
    const/16 v8, 0x2801

    .line 513
    .line 514
    invoke-static {v12, v8, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 515
    .line 516
    .line 517
    if-eqz v3, :cond_1b

    .line 518
    .line 519
    goto :goto_9

    .line 520
    :cond_1b
    move v2, v5

    .line 521
    :goto_9
    const/16 v3, 0x2800

    .line 522
    .line 523
    invoke-static {v12, v3, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 524
    .line 525
    .line 526
    iget-boolean v2, v1, Lo1/q;->f:Z

    .line 527
    .line 528
    iput-boolean v4, v1, Lo1/q;->f:Z

    .line 529
    .line 530
    or-int/2addr v9, v2

    .line 531
    invoke-virtual/range {p1 .. p1}, Lo1/q;->d()V

    .line 532
    .line 533
    .line 534
    const/16 v2, 0xbe2

    .line 535
    .line 536
    invoke-static {v2}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 537
    .line 538
    .line 539
    if-eqz p2, :cond_1c

    .line 540
    .line 541
    iget-object v3, v7, Lz1/c;->g:Lo1/p;

    .line 542
    .line 543
    iget-object v5, v7, Lz1/c;->i:Landroidx/fragment/app/h;

    .line 544
    .line 545
    iget-object v6, v7, Lz1/c;->h:Landroidx/fragment/app/h;

    .line 546
    .line 547
    goto :goto_a

    .line 548
    :cond_1c
    iget-object v3, v7, Lz1/c;->g:Lo1/p;

    .line 549
    .line 550
    iget-object v5, v7, Lz1/c;->i:Landroidx/fragment/app/h;

    .line 551
    .line 552
    iget-object v6, v7, Lz1/c;->h:Landroidx/fragment/app/h;

    .line 553
    .line 554
    :goto_a
    invoke-static {v3, v5, v6, v1, v4}, Lo1/r;->b(Lo1/p;Landroidx/fragment/app/h;Landroidx/fragment/app/h;Lo1/q;Z)V

    .line 555
    .line 556
    .line 557
    invoke-static {v2}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 558
    .line 559
    .line 560
    invoke-static {}, Lcom/nomone/vr_desktop/X11/NomX;->finishRendering()V

    .line 561
    .line 562
    .line 563
    :cond_1d
    return v9
.end method

.method public final E()F
    .locals 4

    .line 1
    iget-object v0, p0, Lc2/e;->s:Lq1/f;

    invoke-static {v0}, Lcom/nomone/vr_desktop/Applications/SettingsApplication;->h(Lq1/f;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    iget-object v0, p0, La2/v;->k:Lz1/g;

    invoke-interface {v0}, Lz1/g;->i()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    const/16 v3, 0x1e0

    if-ge v2, v3, :cond_0

    invoke-interface {v0}, Lz1/g;->i()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x43f00000    # 480.0f

    div-float/2addr v1, v0

    :cond_0
    return v1
.end method

.method public final u(Lu1/w;)Z
    .locals 2

    .line 1
    iget v0, p1, Lu1/w;->a:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v1, 0x6

    .line 7
    if-ne v0, v1, :cond_1

    .line 8
    .line 9
    :cond_0
    const/4 v0, 0x3

    .line 10
    iput v0, p0, Ls1/r;->W:I

    .line 11
    .line 12
    :cond_1
    invoke-super {p0, p1}, Lc2/e;->u(Lu1/w;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1
.end method
