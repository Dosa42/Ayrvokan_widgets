.class public final Ld3/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld3/h0;


# static fields
.field public static final h:I


# instance fields
.field public d:Landroid/opengl/EGLContext;

.field public e:Landroid/opengl/EGLConfig;

.field public f:Landroid/opengl/EGLDisplay;

.field public g:Landroid/opengl/EGLSurface;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Ld3/g0;->h:I

    return-void
.end method

.method public constructor <init>(Landroid/opengl/EGLContext;[I)V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 5
    .line 6
    iput-object v0, p0, Ld3/g0;->g:Landroid/opengl/EGLSurface;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    .line 14
    .line 15
    if-eq v1, v2, :cond_8

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    new-array v2, v2, [I

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    invoke-static {v1, v2, v0, v2, v3}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_7

    .line 26
    .line 27
    iput-object v1, p0, Ld3/g0;->f:Landroid/opengl/EGLDisplay;

    .line 28
    .line 29
    new-array v9, v3, [Landroid/opengl/EGLConfig;

    .line 30
    .line 31
    new-array v10, v3, [I

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v5, 0x0

    .line 35
    const/4 v8, 0x0

    .line 36
    const/4 v6, 0x1

    .line 37
    move-object v2, p2

    .line 38
    move-object v4, v9

    .line 39
    move-object v7, v10

    .line 40
    invoke-static/range {v1 .. v8}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_6

    .line 45
    .line 46
    aget v1, v10, v0

    .line 47
    .line 48
    if-lez v1, :cond_5

    .line 49
    .line 50
    aget-object v1, v9, v0

    .line 51
    .line 52
    if-eqz v1, :cond_4

    .line 53
    .line 54
    iput-object v1, p0, Ld3/g0;->e:Landroid/opengl/EGLConfig;

    .line 55
    .line 56
    invoke-static {p2}, Ld3/h0;->c([I)I

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    const-string v1, "EglBase14Impl"

    .line 61
    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v3, "Using OpenGL ES version "

    .line 65
    .line 66
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-static {v1, v2}, Lorg/webrtc/Logging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Ld3/g0;->f:Landroid/opengl/EGLDisplay;

    .line 80
    .line 81
    iget-object v2, p0, Ld3/g0;->e:Landroid/opengl/EGLConfig;

    .line 82
    .line 83
    if-eqz p1, :cond_1

    .line 84
    .line 85
    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 86
    .line 87
    if-eq p1, v3, :cond_0

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 91
    .line 92
    const-string p2, "Invalid sharedContext"

    .line 93
    .line 94
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p1

    .line 98
    :cond_1
    :goto_0
    const/16 v3, 0x3098

    .line 99
    .line 100
    const/16 v4, 0x3038

    .line 101
    .line 102
    filled-new-array {v3, p2, v4}, [I

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    if-nez p1, :cond_2

    .line 107
    .line 108
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 109
    .line 110
    :cond_2
    sget-object v3, Ld3/h0;->a:Ljava/lang/Object;

    .line 111
    .line 112
    monitor-enter v3

    .line 113
    :try_start_0
    invoke-static {v1, v2, p1, p2, v0}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    sget-object p2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 119
    .line 120
    if-eq p1, p2, :cond_3

    .line 121
    .line 122
    iput-object p1, p0, Ld3/g0;->d:Landroid/opengl/EGLContext;

    .line 123
    .line 124
    return-void

    .line 125
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    .line 126
    .line 127
    new-instance p2, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    const-string v0, "Failed to create EGL context: 0x"

    .line 130
    .line 131
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    throw p1

    .line 153
    :catchall_0
    move-exception p1

    .line 154
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    throw p1

    .line 156
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    .line 157
    .line 158
    const-string p2, "eglChooseConfig returned null"

    .line 159
    .line 160
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    throw p1

    .line 164
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    .line 165
    .line 166
    const-string p2, "Unable to find any matching EGL config"

    .line 167
    .line 168
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    throw p1

    .line 172
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    .line 173
    .line 174
    new-instance p2, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    const-string v0, "eglChooseConfig failed: 0x"

    .line 177
    .line 178
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p2

    .line 196
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    throw p1

    .line 200
    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    .line 201
    .line 202
    new-instance p2, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    const-string v0, "Unable to initialize EGL14: 0x"

    .line 205
    .line 206
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p2

    .line 224
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    throw p1

    .line 228
    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    .line 229
    .line 230
    new-instance p2, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    const-string v0, "Unable to get EGL14 display: 0x"

    .line 233
    .line 234
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object p2

    .line 252
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    throw p1
.end method


# virtual methods
.method public final d()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ld3/g0;->g()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ld3/g0;->g:Landroid/opengl/EGLSurface;

    .line 5
    .line 6
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 7
    .line 8
    if-ne v0, v1, :cond_1

    .line 9
    .line 10
    const/16 v0, 0x3038

    .line 11
    .line 12
    const/16 v1, 0x3057

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    const/16 v3, 0x3056

    .line 16
    .line 17
    filled-new-array {v1, v2, v3, v2, v0}, [I

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Ld3/g0;->f:Landroid/opengl/EGLDisplay;

    .line 22
    .line 23
    iget-object v2, p0, Ld3/g0;->e:Landroid/opengl/EGLConfig;

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-static {v1, v2, v0, v3}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Ld3/g0;->g:Landroid/opengl/EGLSurface;

    .line 31
    .line 32
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 33
    .line 34
    if-eq v0, v1, :cond_0

    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 38
    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v2, "Failed to create pixel buffer surface with size 1x1: 0x"

    .line 42
    .line 43
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw v0

    .line 65
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 66
    .line 67
    const-string v1, "Already has an EGLSurface"

    .line 68
    .line 69
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw v0
.end method

.method public final e()V
    .locals 5

    .line 1
    const-string v0, "eglMakeCurrent failed: 0x"

    invoke-virtual {p0}, Ld3/g0;->g()V

    iget-object v1, p0, Ld3/g0;->g:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v1, v2, :cond_1

    sget-object v1, Ld3/h0;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Ld3/g0;->f:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Ld3/g0;->g:Landroid/opengl/EGLSurface;

    iget-object v4, p0, Ld3/g0;->d:Landroid/opengl/EGLContext;

    invoke-static {v2, v3, v3, v4}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No EGLSurface - can\'t make current"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final f()Ld3/d0;
    .locals 2

    .line 1
    new-instance v0, Ld3/f0;

    .line 2
    .line 3
    iget-object v1, p0, Ld3/g0;->d:Landroid/opengl/EGLContext;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ld3/f0;-><init>(Landroid/opengl/EGLContext;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final g()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld3/g0;->f:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Ld3/g0;->d:Landroid/opengl/EGLContext;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Ld3/g0;->e:Landroid/opengl/EGLConfig;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This object has been released"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final release()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ld3/g0;->g()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ld3/g0;->g:Landroid/opengl/EGLSurface;

    .line 5
    .line 6
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 7
    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Ld3/g0;->f:Landroid/opengl/EGLDisplay;

    .line 11
    .line 12
    invoke-static {v1, v0}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 13
    .line 14
    .line 15
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 16
    .line 17
    iput-object v0, p0, Ld3/g0;->g:Landroid/opengl/EGLSurface;

    .line 18
    .line 19
    :cond_0
    const-string v0, "eglDetachCurrent failed: 0x"

    .line 20
    .line 21
    sget-object v1, Ld3/h0;->a:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter v1

    .line 24
    :try_start_0
    iget-object v2, p0, Ld3/g0;->f:Landroid/opengl/EGLDisplay;

    .line 25
    .line 26
    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 27
    .line 28
    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 29
    .line 30
    invoke-static {v2, v3, v3, v4}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    iget-object v0, p0, Ld3/g0;->f:Landroid/opengl/EGLDisplay;

    .line 38
    .line 39
    iget-object v1, p0, Ld3/g0;->d:Landroid/opengl/EGLContext;

    .line 40
    .line 41
    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 42
    .line 43
    .line 44
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Ld3/g0;->f:Landroid/opengl/EGLDisplay;

    .line 48
    .line 49
    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 50
    .line 51
    .line 52
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 53
    .line 54
    iput-object v0, p0, Ld3/g0;->d:Landroid/opengl/EGLContext;

    .line 55
    .line 56
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    .line 57
    .line 58
    iput-object v0, p0, Ld3/g0;->f:Landroid/opengl/EGLDisplay;

    .line 59
    .line 60
    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Ld3/g0;->e:Landroid/opengl/EGLConfig;

    .line 62
    .line 63
    return-void

    .line 64
    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/RuntimeException;

    .line 65
    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw v2

    .line 90
    :catchall_0
    move-exception v0

    .line 91
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    throw v0
.end method
