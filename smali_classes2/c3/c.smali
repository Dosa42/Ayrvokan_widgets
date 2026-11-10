.class public final Lc3/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lc3/b;


# static fields
.field public static final g:[Ljava/lang/String;

.field public static final h:Ljava/nio/FloatBuffer;


# instance fields
.field public final a:[I

.field public final b:Ljava/util/concurrent/atomic/AtomicReference;

.field public c:I

.field public final d:[I

.field public final e:[I

.field public final f:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "v_tex"

    .line 2
    .line 3
    const-string v1, "y_tex"

    .line 4
    .line 5
    const-string v2, "u_tex"

    .line 6
    .line 7
    filled-new-array {v1, v2, v0}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lc3/c;->g:[Ljava/lang/String;

    .line 12
    .line 13
    const/16 v0, 0x8

    .line 14
    .line 15
    new-array v0, v0, [F

    .line 16
    .line 17
    fill-array-data v0, :array_0

    .line 18
    .line 19
    .line 20
    const/16 v1, 0x20

    .line 21
    .line 22
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Ljava/nio/FloatBuffer;

    .line 47
    .line 48
    sput-object v0, Lc3/c;->h:Ljava/nio/FloatBuffer;

    .line 49
    .line 50
    return-void

    .line 51
    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [I

    iput-object v1, p0, Lc3/c;->a:[I

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Lc3/c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    new-array v1, v0, [I

    iput-object v1, p0, Lc3/c;->d:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lc3/c;->e:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lc3/c;->f:[I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lc3/c;->e:[I

    iget-object v3, p0, Lc3/c;->f:[I

    const/4 v4, -0x1

    aput v4, v3, v1

    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lc3/c;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, La1/b;->j(Ljava/lang/Object;)V

    return-void
.end method

.method public final onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    invoke-static {p1, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    return-void
.end method

.method public final onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 8

    .line 1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/i0;->h()V

    .line 6
    .line 7
    .line 8
    const p2, 0x8b31

    .line 9
    .line 10
    .line 11
    const-string v0, "varying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nattribute vec4 in_pos;\nattribute vec2 in_tc_y;\nattribute vec2 in_tc_u;\nattribute vec2 in_tc_v;\nvoid main() {\n  gl_Position = in_pos;\n  interp_tc_y = in_tc_y;\n  interp_tc_u = in_tc_u;\n  interp_tc_v = in_tc_v;\n}\n"

    .line 12
    .line 13
    invoke-static {p2, p1, v0}, Lcom/google/android/gms/internal/play_billing/i0;->b(IILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const p2, 0x8b30

    .line 17
    .line 18
    .line 19
    const-string v0, "precision mediump float;\nvarying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nuniform sampler2D y_tex;\nuniform sampler2D u_tex;\nuniform sampler2D v_tex;\nuniform mat3 mColorConversion;\nvoid main() {\n  vec3 yuv;\n  yuv.x = texture2D(y_tex, interp_tc_y).r - 0.0625;\n  yuv.y = texture2D(u_tex, interp_tc_u).r - 0.5;\n  yuv.z = texture2D(v_tex, interp_tc_v).r - 0.5;\n  gl_FragColor = vec4(mColorConversion * yuv, 1.0);\n}\n"

    .line 20
    .line 21
    invoke-static {p2, p1, v0}, Lcom/google/android/gms/internal/play_billing/i0;->b(IILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 25
    .line 26
    .line 27
    const/4 p2, 0x0

    .line 28
    filled-new-array {p2}, [I

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const v1, 0x8b82

    .line 33
    .line 34
    .line 35
    invoke-static {p1, v1, v0, p2}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 36
    .line 37
    .line 38
    aget v0, v0, p2

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    if-eq v0, v1, :cond_0

    .line 42
    .line 43
    invoke-static {p1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/i0;->h()V

    .line 47
    .line 48
    .line 49
    iput p1, p0, Lc3/c;->c:I

    .line 50
    .line 51
    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 52
    .line 53
    .line 54
    iget p1, p0, Lc3/c;->c:I

    .line 55
    .line 56
    const-string v0, "in_pos"

    .line 57
    .line 58
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 63
    .line 64
    .line 65
    const/4 v3, 0x2

    .line 66
    const/16 v4, 0x1406

    .line 67
    .line 68
    const/4 v5, 0x0

    .line 69
    const/4 v6, 0x0

    .line 70
    sget-object v7, Lc3/c;->h:Ljava/nio/FloatBuffer;

    .line 71
    .line 72
    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 73
    .line 74
    .line 75
    iget p1, p0, Lc3/c;->c:I

    .line 76
    .line 77
    const-string v0, "in_tc_y"

    .line 78
    .line 79
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    iget-object v0, p0, Lc3/c;->d:[I

    .line 84
    .line 85
    aput p1, v0, p2

    .line 86
    .line 87
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 88
    .line 89
    .line 90
    iget p1, p0, Lc3/c;->c:I

    .line 91
    .line 92
    const-string v2, "in_tc_u"

    .line 93
    .line 94
    invoke-static {p1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    aput p1, v0, v1

    .line 99
    .line 100
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 101
    .line 102
    .line 103
    iget p1, p0, Lc3/c;->c:I

    .line 104
    .line 105
    const-string v1, "in_tc_v"

    .line 106
    .line 107
    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    const/4 v1, 0x2

    .line 112
    aput p1, v0, v1

    .line 113
    .line 114
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 115
    .line 116
    .line 117
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/i0;->h()V

    .line 118
    .line 119
    .line 120
    iget p1, p0, Lc3/c;->c:I

    .line 121
    .line 122
    const-string v0, "mColorConversion"

    .line 123
    .line 124
    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 125
    .line 126
    .line 127
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/i0;->h()V

    .line 128
    .line 129
    .line 130
    const/4 p1, 0x3

    .line 131
    iget-object v0, p0, Lc3/c;->a:[I

    .line 132
    .line 133
    invoke-static {p1, v0, p2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 134
    .line 135
    .line 136
    :goto_0
    if-ge p2, p1, :cond_1

    .line 137
    .line 138
    iget v1, p0, Lc3/c;->c:I

    .line 139
    .line 140
    sget-object v2, Lc3/c;->g:[Ljava/lang/String;

    .line 141
    .line 142
    aget-object v2, v2, p2

    .line 143
    .line 144
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 149
    .line 150
    .line 151
    const v1, 0x84c0

    .line 152
    .line 153
    .line 154
    add-int/2addr v1, p2

    .line 155
    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 156
    .line 157
    .line 158
    aget v1, v0, p2

    .line 159
    .line 160
    const/16 v2, 0xde1

    .line 161
    .line 162
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 163
    .line 164
    .line 165
    const/16 v1, 0x2801

    .line 166
    .line 167
    const v3, 0x46180400    # 9729.0f

    .line 168
    .line 169
    .line 170
    invoke-static {v2, v1, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 171
    .line 172
    .line 173
    const/16 v1, 0x2800

    .line 174
    .line 175
    invoke-static {v2, v1, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 176
    .line 177
    .line 178
    const/16 v1, 0x2802

    .line 179
    .line 180
    const v3, 0x47012f00    # 33071.0f

    .line 181
    .line 182
    .line 183
    invoke-static {v2, v1, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 184
    .line 185
    .line 186
    const/16 v1, 0x2803

    .line 187
    .line 188
    invoke-static {v2, v1, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 189
    .line 190
    .line 191
    add-int/lit8 p2, p2, 0x1

    .line 192
    .line 193
    goto :goto_0

    .line 194
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/i0;->h()V

    .line 195
    .line 196
    .line 197
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/i0;->h()V

    .line 198
    .line 199
    .line 200
    return-void
.end method
