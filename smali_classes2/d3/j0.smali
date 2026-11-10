.class public final Ld3/j0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g:Ljava/nio/FloatBuffer;

.field public static final h:Ljava/nio/FloatBuffer;


# instance fields
.field public final a:Ld3/i0;

.field public b:I

.field public c:La3/r;

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v1, v0, [F

    .line 4
    .line 5
    fill-array-data v1, :array_0

    .line 6
    .line 7
    .line 8
    const/16 v2, 0x20

    .line 9
    .line 10
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v3, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 26
    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {v3, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 30
    .line 31
    .line 32
    sput-object v3, Ld3/j0;->g:Ljava/nio/FloatBuffer;

    .line 33
    .line 34
    new-array v0, v0, [F

    .line 35
    .line 36
    fill-array-data v0, :array_1

    .line 37
    .line 38
    .line 39
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v2, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 58
    .line 59
    .line 60
    sput-object v2, Ld3/j0;->h:Ljava/nio/FloatBuffer;

    .line 61
    .line 62
    return-void

    .line 63
    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    :array_1
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Ld3/x0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ld3/j0;->a:Ld3/i0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(I[FI)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget v3, v0, Ld3/j0;->b:I

    .line 8
    .line 9
    if-eqz v1, :cond_9

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x1

    .line 13
    if-ne v1, v3, :cond_0

    .line 14
    .line 15
    move v3, v5

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v3, v4

    .line 18
    :goto_0
    const-string v6, "glUseProgram"

    .line 19
    .line 20
    const-string v7, "The program has been released"

    .line 21
    .line 22
    const/4 v8, -0x1

    .line 23
    iget-object v9, v0, Ld3/j0;->a:Ld3/i0;

    .line 24
    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    iget-object v1, v0, Ld3/j0;->c:La3/r;

    .line 28
    .line 29
    goto/16 :goto_4

    .line 30
    .line 31
    :cond_1
    iput v1, v0, Ld3/j0;->b:I

    .line 32
    .line 33
    iget-object v3, v0, Ld3/j0;->c:La3/r;

    .line 34
    .line 35
    if-eqz v3, :cond_2

    .line 36
    .line 37
    const-string v10, "GlShader"

    .line 38
    .line 39
    const-string v11, "Deleting shader."

    .line 40
    .line 41
    invoke-static {v10, v11}, Lorg/webrtc/Logging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget v10, v3, La3/r;->a:I

    .line 45
    .line 46
    if-eq v10, v8, :cond_2

    .line 47
    .line 48
    invoke-static {v10}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 49
    .line 50
    .line 51
    iput v8, v3, La3/r;->a:I

    .line 52
    .line 53
    :cond_2
    new-instance v3, La3/r;

    .line 54
    .line 55
    new-instance v10, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    if-ne v1, v5, :cond_3

    .line 61
    .line 62
    const-string v11, "#extension GL_OES_EGL_image_external : require\n"

    .line 63
    .line 64
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    :cond_3
    const-string v11, "precision mediump float;\nvarying vec2 tc;\n"

    .line 68
    .line 69
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const/4 v11, 0x3

    .line 73
    const-string v12, "uniform vec2 xUnit;\nuniform vec4 coeffs;\n\nvoid main() {\n  gl_FragColor.r = coeffs.a + dot(coeffs.rgb,\n      sample(tc - 1.5 * xUnit).rgb);\n  gl_FragColor.g = coeffs.a + dot(coeffs.rgb,\n      sample(tc - 0.5 * xUnit).rgb);\n  gl_FragColor.b = coeffs.a + dot(coeffs.rgb,\n      sample(tc + 0.5 * xUnit).rgb);\n  gl_FragColor.a = coeffs.a + dot(coeffs.rgb,\n      sample(tc + 1.5 * xUnit).rgb);\n}\n"

    .line 74
    .line 75
    if-ne v1, v11, :cond_4

    .line 76
    .line 77
    const-string v13, "uniform sampler2D y_tex;\nuniform sampler2D u_tex;\nuniform sampler2D v_tex;\nvec4 sample(vec2 p) {\n  float y = texture2D(y_tex, p).r * 1.16438;\n  float u = texture2D(u_tex, p).r;\n  float v = texture2D(v_tex, p).r;\n  return vec4(y + 1.59603 * v - 0.874202,\n    y - 0.391762 * u - 0.812968 * v + 0.531668,\n    y + 2.01723 * u - 1.08563, 1);\n}\n"

    .line 78
    .line 79
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_4
    if-ne v1, v5, :cond_5

    .line 84
    .line 85
    const-string v13, "samplerExternalOES"

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_5
    const-string v13, "sampler2D"

    .line 89
    .line 90
    :goto_1
    const-string v14, "uniform "

    .line 91
    .line 92
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v13, " tex;\n"

    .line 99
    .line 100
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v13, "sample("

    .line 104
    .line 105
    const-string v14, "texture2D(tex, "

    .line 106
    .line 107
    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v12

    .line 111
    :goto_2
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v10

    .line 118
    invoke-direct {v3, v10}, La3/r;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iput-object v3, v0, Ld3/j0;->c:La3/r;

    .line 122
    .line 123
    iget v10, v3, La3/r;->a:I

    .line 124
    .line 125
    if-eq v10, v8, :cond_8

    .line 126
    .line 127
    invoke-static {v10}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 128
    .line 129
    .line 130
    invoke-static {v6}, Lcom/google/android/gms/internal/play_billing/i0;->j(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    if-ne v1, v11, :cond_6

    .line 134
    .line 135
    const-string v1, "y_tex"

    .line 136
    .line 137
    invoke-virtual {v3, v1}, La3/r;->e(Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 142
    .line 143
    .line 144
    const-string v1, "u_tex"

    .line 145
    .line 146
    invoke-virtual {v3, v1}, La3/r;->e(Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    invoke-static {v1, v5}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 151
    .line 152
    .line 153
    const-string v1, "v_tex"

    .line 154
    .line 155
    invoke-virtual {v3, v1}, La3/r;->e(Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    const/4 v10, 0x2

    .line 160
    invoke-static {v1, v10}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 161
    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_6
    const-string v1, "tex"

    .line 165
    .line 166
    invoke-virtual {v3, v1}, La3/r;->e(Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 171
    .line 172
    .line 173
    :goto_3
    const-string v1, "Create shader"

    .line 174
    .line 175
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/i0;->j(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    move-object v1, v9

    .line 179
    check-cast v1, Ld3/x0;

    .line 180
    .line 181
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    .line 183
    .line 184
    const-string v10, "xUnit"

    .line 185
    .line 186
    invoke-virtual {v3, v10}, La3/r;->e(Ljava/lang/String;)I

    .line 187
    .line 188
    .line 189
    move-result v10

    .line 190
    iput v10, v1, Ld3/x0;->a:I

    .line 191
    .line 192
    const-string v10, "coeffs"

    .line 193
    .line 194
    invoke-virtual {v3, v10}, La3/r;->e(Ljava/lang/String;)I

    .line 195
    .line 196
    .line 197
    move-result v10

    .line 198
    iput v10, v1, Ld3/x0;->b:I

    .line 199
    .line 200
    const-string v1, "tex_mat"

    .line 201
    .line 202
    invoke-virtual {v3, v1}, La3/r;->e(Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    iput v1, v0, Ld3/j0;->f:I

    .line 207
    .line 208
    const-string v1, "in_pos"

    .line 209
    .line 210
    invoke-virtual {v3, v1}, La3/r;->b(Ljava/lang/String;)I

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    iput v1, v0, Ld3/j0;->d:I

    .line 215
    .line 216
    const-string v1, "in_tc"

    .line 217
    .line 218
    invoke-virtual {v3, v1}, La3/r;->b(Ljava/lang/String;)I

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    iput v1, v0, Ld3/j0;->e:I

    .line 223
    .line 224
    move-object v1, v3

    .line 225
    :goto_4
    iget v1, v1, La3/r;->a:I

    .line 226
    .line 227
    if-eq v1, v8, :cond_7

    .line 228
    .line 229
    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 230
    .line 231
    .line 232
    invoke-static {v6}, Lcom/google/android/gms/internal/play_billing/i0;->j(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    iget v1, v0, Ld3/j0;->d:I

    .line 236
    .line 237
    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 238
    .line 239
    .line 240
    iget v10, v0, Ld3/j0;->d:I

    .line 241
    .line 242
    const/4 v11, 0x2

    .line 243
    const/16 v12, 0x1406

    .line 244
    .line 245
    const/4 v13, 0x0

    .line 246
    const/4 v14, 0x0

    .line 247
    sget-object v15, Ld3/j0;->g:Ljava/nio/FloatBuffer;

    .line 248
    .line 249
    invoke-static/range {v10 .. v15}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 250
    .line 251
    .line 252
    iget v1, v0, Ld3/j0;->e:I

    .line 253
    .line 254
    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 255
    .line 256
    .line 257
    iget v10, v0, Ld3/j0;->e:I

    .line 258
    .line 259
    sget-object v15, Ld3/j0;->h:Ljava/nio/FloatBuffer;

    .line 260
    .line 261
    invoke-static/range {v10 .. v15}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 262
    .line 263
    .line 264
    iget v1, v0, Ld3/j0;->f:I

    .line 265
    .line 266
    invoke-static {v1, v5, v4, v2, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 267
    .line 268
    .line 269
    check-cast v9, Ld3/x0;

    .line 270
    .line 271
    iget v1, v9, Ld3/x0;->b:I

    .line 272
    .line 273
    iget-object v3, v9, Ld3/x0;->c:[F

    .line 274
    .line 275
    invoke-static {v1, v5, v3, v4}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    .line 276
    .line 277
    .line 278
    iget v1, v9, Ld3/x0;->a:I

    .line 279
    .line 280
    iget v3, v9, Ld3/x0;->d:F

    .line 281
    .line 282
    aget v4, v2, v4

    .line 283
    .line 284
    mul-float/2addr v4, v3

    .line 285
    move/from16 v6, p3

    .line 286
    .line 287
    int-to-float v6, v6

    .line 288
    div-float/2addr v4, v6

    .line 289
    aget v2, v2, v5

    .line 290
    .line 291
    mul-float/2addr v3, v2

    .line 292
    div-float/2addr v3, v6

    .line 293
    invoke-static {v1, v4, v3}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 294
    .line 295
    .line 296
    const-string v1, "Prepare shader"

    .line 297
    .line 298
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/i0;->j(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    return-void

    .line 302
    :cond_7
    new-instance v1, Ljava/lang/RuntimeException;

    .line 303
    .line 304
    invoke-direct {v1, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    throw v1

    .line 308
    :cond_8
    new-instance v1, Ljava/lang/RuntimeException;

    .line 309
    .line 310
    invoke-direct {v1, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    throw v1

    .line 314
    :cond_9
    const/4 v1, 0x0

    .line 315
    throw v1
.end method
