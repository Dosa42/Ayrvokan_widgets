.class public final Lo1/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field public final synthetic a:Lcom/nomone/browser_module/OpenGLView;


# direct methods
.method public constructor <init>(Lcom/nomone/browser_module/OpenGLView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo1/w;->a:Lcom/nomone/browser_module/OpenGLView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "OpenGLView.onSurfaceChanged: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "sdf"

    invoke-static {p2, p1}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lo1/w;->a:Lcom/nomone/browser_module/OpenGLView;

    iget-object p2, p1, Lcom/nomone/browser_module/OpenGLView;->o:Lo1/u;

    if-eqz p2, :cond_0

    new-instance p2, Lo1/v;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p3, p4, v0}, Lo1/v;-><init>(Ljava/lang/Object;III)V

    invoke-virtual {p1, p2}, Lcom/nomone/browser_module/OpenGLView;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "OpenGLView.onSurfaceCreated"

    .line 4
    .line 5
    const-string v2, "sdf"

    .line 6
    .line 7
    invoke-static {v2, v1}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sget v1, Lcom/nomone/browser_module/OpenGLView;->p:I

    .line 11
    .line 12
    iget-object v1, v0, Lo1/w;->a:Lcom/nomone/browser_module/OpenGLView;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-static {v3}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    iput-object v4, v1, Lcom/nomone/browser_module/OpenGLView;->a:Landroid/opengl/EGLDisplay;

    .line 23
    .line 24
    const/4 v5, 0x2

    .line 25
    new-array v6, v5, [I

    .line 26
    .line 27
    const/4 v7, 0x1

    .line 28
    invoke-static {v4, v6, v3, v6, v7}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    .line 29
    .line 30
    .line 31
    new-instance v4, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v8, "Initialized EGL version: "

    .line 34
    .line 35
    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    aget v8, v6, v3

    .line 39
    .line 40
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v8, "."

    .line 44
    .line 45
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    aget v6, v6, v7

    .line 49
    .line 50
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-static {v2, v4}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const/16 v2, 0x30a0

    .line 61
    .line 62
    invoke-static {v2}, Landroid/opengl/EGL14;->eglBindAPI(I)Z

    .line 63
    .line 64
    .line 65
    new-array v2, v7, [I

    .line 66
    .line 67
    iget-object v4, v1, Lcom/nomone/browser_module/OpenGLView;->a:Landroid/opengl/EGLDisplay;

    .line 68
    .line 69
    new-array v11, v7, [Landroid/opengl/EGLConfig;

    .line 70
    .line 71
    const/16 v6, 0xf

    .line 72
    .line 73
    new-array v6, v6, [I

    .line 74
    .line 75
    fill-array-data v6, :array_0

    .line 76
    .line 77
    .line 78
    const/4 v10, 0x0

    .line 79
    const/4 v12, 0x0

    .line 80
    const/4 v13, 0x1

    .line 81
    const/4 v15, 0x0

    .line 82
    move-object v8, v4

    .line 83
    move-object v9, v6

    .line 84
    move-object v14, v2

    .line 85
    invoke-static/range {v8 .. v15}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    .line 86
    .line 87
    .line 88
    move-result v8

    .line 89
    if-nez v8, :cond_0

    .line 90
    .line 91
    const-string v8, "Initial eglChooseConfig failed at MSAA 0x"

    .line 92
    .line 93
    const-string v9, "EGL"

    .line 94
    .line 95
    invoke-static {v9, v8}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :cond_0
    aget v13, v2, v3

    .line 99
    .line 100
    if-lez v13, :cond_3

    .line 101
    .line 102
    new-array v15, v13, [Landroid/opengl/EGLConfig;

    .line 103
    .line 104
    const/4 v10, 0x0

    .line 105
    const/4 v12, 0x0

    .line 106
    const/16 v16, 0x0

    .line 107
    .line 108
    move-object v8, v4

    .line 109
    move-object v9, v6

    .line 110
    move-object v11, v15

    .line 111
    move-object v14, v2

    .line 112
    move-object v2, v15

    .line 113
    move/from16 v15, v16

    .line 114
    .line 115
    invoke-static/range {v8 .. v15}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    if-eqz v4, :cond_2

    .line 120
    .line 121
    aget-object v2, v2, v3

    .line 122
    .line 123
    iget-object v4, v1, Lcom/nomone/browser_module/OpenGLView;->a:Landroid/opengl/EGLDisplay;

    .line 124
    .line 125
    const/4 v6, 0x0

    .line 126
    move-object/from16 v8, p1

    .line 127
    .line 128
    invoke-static {v4, v2, v8, v6, v3}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    iput-object v4, v1, Lcom/nomone/browser_module/OpenGLView;->c:Landroid/opengl/EGLSurface;

    .line 133
    .line 134
    const/16 v4, 0x3098

    .line 135
    .line 136
    const/16 v6, 0x3038

    .line 137
    .line 138
    filled-new-array {v4, v5, v6}, [I

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    iget-object v6, v1, Lcom/nomone/browser_module/OpenGLView;->a:Landroid/opengl/EGLDisplay;

    .line 143
    .line 144
    sget-object v8, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 145
    .line 146
    invoke-static {v6, v2, v8, v4, v3}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    iput-object v2, v1, Lcom/nomone/browser_module/OpenGLView;->b:Landroid/opengl/EGLContext;

    .line 151
    .line 152
    new-instance v2, Lo1/t;

    .line 153
    .line 154
    invoke-direct {v2, v1, v3}, Lo1/t;-><init>(Lcom/nomone/browser_module/OpenGLView;I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, v2}, Lcom/nomone/browser_module/OpenGLView;->a(Ljava/lang/Runnable;)V

    .line 158
    .line 159
    .line 160
    iget-object v2, v1, Lcom/nomone/browser_module/OpenGLView;->o:Lo1/u;

    .line 161
    .line 162
    if-eqz v2, :cond_1

    .line 163
    .line 164
    new-instance v2, Lo0/n;

    .line 165
    .line 166
    invoke-direct {v2, v0, v5}, Lo0/n;-><init>(Ljava/lang/Object;I)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1, v2}, Lcom/nomone/browser_module/OpenGLView;->a(Ljava/lang/Runnable;)V

    .line 170
    .line 171
    .line 172
    :cond_1
    new-instance v2, Ljava/lang/Thread;

    .line 173
    .line 174
    iget-object v3, v1, Lcom/nomone/browser_module/OpenGLView;->f:Ljava/lang/ThreadGroup;

    .line 175
    .line 176
    new-instance v4, Lo1/t;

    .line 177
    .line 178
    invoke-direct {v4, v1, v7}, Lo1/t;-><init>(Lcom/nomone/browser_module/OpenGLView;I)V

    .line 179
    .line 180
    .line 181
    const-string v5, "GLThread"

    .line 182
    .line 183
    invoke-direct {v2, v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    iput-object v2, v1, Lcom/nomone/browser_module/OpenGLView;->g:Ljava/lang/Thread;

    .line 187
    .line 188
    iget-object v2, v1, Lcom/nomone/browser_module/OpenGLView;->g:Ljava/lang/Thread;

    .line 189
    .line 190
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 191
    .line 192
    .line 193
    iput-boolean v7, v1, Lcom/nomone/browser_module/OpenGLView;->i:Z

    .line 194
    .line 195
    return-void

    .line 196
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 197
    .line 198
    const-string v2, "Actual configurations retreival using eglChooseConfig failed"

    .line 199
    .line 200
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    throw v1

    .line 204
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 205
    .line 206
    const-string v2, "No suitable EGL config found."

    .line 207
    .line 208
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    throw v1

    .line 212
    nop

    .line 213
    :array_0
    .array-data 4
        0x3024
        0x5
        0x3023
        0x6
        0x3022
        0x5
        0x3025
        0x0
        0x3040
        0x4
        0x3032
        0x0
        0x3031
        0x0
        0x3038
    .end array-data
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3

    .line 1
    const-string p1, "sdf"

    .line 2
    .line 3
    const-string v0, "OpenGLView.onSurfaceDestroyed"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lo1/w;->a:Lcom/nomone/browser_module/OpenGLView;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p1, Lcom/nomone/browser_module/OpenGLView;->m:Z

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p1, Lcom/nomone/browser_module/OpenGLView;->i:Z

    .line 15
    .line 16
    iget-object p1, p1, Lcom/nomone/browser_module/OpenGLView;->n:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter p1

    .line 19
    :try_start_0
    iget-object v0, p0, Lo1/w;->a:Lcom/nomone/browser_module/OpenGLView;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/nomone/browser_module/OpenGLView;->n:Ljava/lang/Object;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 24
    .line 25
    .line 26
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :try_start_1
    iget-object p1, p0, Lo1/w;->a:Lcom/nomone/browser_module/OpenGLView;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/nomone/browser_module/OpenGLView;->g:Ljava/lang/Thread;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 32
    .line 33
    .line 34
    :catch_0
    iget-object p1, p0, Lo1/w;->a:Lcom/nomone/browser_module/OpenGLView;

    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    iput-object v0, p1, Lcom/nomone/browser_module/OpenGLView;->g:Ljava/lang/Thread;

    .line 38
    .line 39
    iget-object v0, p1, Lcom/nomone/browser_module/OpenGLView;->a:Landroid/opengl/EGLDisplay;

    .line 40
    .line 41
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    .line 42
    .line 43
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 44
    .line 45
    invoke-static {v0, v1, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 46
    .line 47
    .line 48
    iget-object v0, p1, Lcom/nomone/browser_module/OpenGLView;->a:Landroid/opengl/EGLDisplay;

    .line 49
    .line 50
    iget-object v1, p1, Lcom/nomone/browser_module/OpenGLView;->b:Landroid/opengl/EGLContext;

    .line 51
    .line 52
    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 53
    .line 54
    .line 55
    iget-object v0, p1, Lcom/nomone/browser_module/OpenGLView;->a:Landroid/opengl/EGLDisplay;

    .line 56
    .line 57
    iget-object v1, p1, Lcom/nomone/browser_module/OpenGLView;->c:Landroid/opengl/EGLSurface;

    .line 58
    .line 59
    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 60
    .line 61
    .line 62
    iget-object p1, p1, Lcom/nomone/browser_module/OpenGLView;->a:Landroid/opengl/EGLDisplay;

    .line 63
    .line 64
    invoke-static {p1}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :catchall_0
    move-exception v0

    .line 69
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    throw v0
.end method
