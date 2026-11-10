.class public abstract Lv1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv1/c;


# instance fields
.field public final a:Z

.field public final b:Z

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lv1/d;->a:Z

    iput-boolean p2, p0, Lv1/d;->b:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lv1/d;->g()V

    return-void
.end method

.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Lv1/d;->d:I

    return v0
.end method

.method public final c()I
    .locals 1

    .line 1
    iget v0, p0, Lv1/d;->e:I

    return v0
.end method

.method public final d()V
    .locals 2

    .line 1
    iget v0, p0, Lv1/d;->c:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lv1/d;->g()V

    :cond_0
    const/16 v0, 0xde1

    iget v1, p0, Lv1/d;->c:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method

.method public e()Landroid/graphics/Bitmap;
    .locals 5

    .line 1
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lv1/d;->f()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    invoke-static {v1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    return-object v2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-object v2, v0

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1

    :catch_2
    move-object v1, v0

    move-object v2, v1

    :catch_3
    :goto_0
    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :goto_1
    if-eqz v1, :cond_0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :catch_4
    :cond_0
    throw v0

    :cond_1
    :goto_2
    if-eqz v1, :cond_2

    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :catch_5
    :cond_2
    return-object v0
.end method

.method public abstract f()Ljava/io/InputStream;
.end method

.method public final g()V
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-boolean v1, p0, Lv1/d;->a:Z

    .line 3
    .line 4
    const/16 v2, 0xde1

    .line 5
    .line 6
    iget-boolean v3, p0, Lv1/d;->b:Z

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    if-eqz v1, :cond_5

    .line 10
    .line 11
    :try_start_0
    invoke-static {}, Lo1/r;->d()I

    .line 12
    .line 13
    .line 14
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    :try_start_1
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 18
    .line 19
    .line 20
    const v5, 0x47012f00    # 33071.0f

    .line 21
    .line 22
    .line 23
    const v6, 0x46240400    # 10497.0f

    .line 24
    .line 25
    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    move v7, v5

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v7, v6

    .line 31
    :goto_0
    const/16 v8, 0x2802

    .line 32
    .line 33
    invoke-static {v2, v8, v7}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 34
    .line 35
    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move v5, v6

    .line 40
    :goto_1
    const/16 v3, 0x2803

    .line 41
    .line 42
    invoke-static {v2, v3, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 43
    .line 44
    .line 45
    const/16 v3, 0x2801

    .line 46
    .line 47
    const v5, 0x46180400    # 9729.0f

    .line 48
    .line 49
    .line 50
    invoke-static {v2, v3, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 51
    .line 52
    .line 53
    const/16 v3, 0x2800

    .line 54
    .line 55
    invoke-static {v2, v3, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lv1/d;->f()Ljava/io/InputStream;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    const/16 v6, 0xde1

    .line 63
    .line 64
    const/4 v7, 0x0

    .line 65
    const/4 v8, 0x0

    .line 66
    const/16 v9, 0x1907

    .line 67
    .line 68
    const v10, 0x8363

    .line 69
    .line 70
    .line 71
    move-object v11, v4

    .line 72
    invoke-static/range {v6 .. v11}, Landroid/opengl/ETC1Util;->loadTexture(IIIIILjava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    .line 74
    .line 75
    if-eqz v4, :cond_6

    .line 76
    .line 77
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 78
    .line 79
    .line 80
    goto :goto_4

    .line 81
    :cond_2
    :try_start_3
    new-instance v2, Ljava/lang/RuntimeException;

    .line 82
    .line 83
    const-string v3, "Failed to create texture"

    .line 84
    .line 85
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 89
    :catchall_0
    move-exception v0

    .line 90
    goto :goto_2

    .line 91
    :catch_0
    move v1, v0

    .line 92
    :catch_1
    if-eqz v1, :cond_4

    .line 93
    .line 94
    :try_start_4
    filled-new-array {v1}, [I

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    const/4 v2, 0x1

    .line 99
    invoke-static {v2, v1, v0}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 100
    .line 101
    .line 102
    goto :goto_3

    .line 103
    :goto_2
    if-eqz v4, :cond_3

    .line 104
    .line 105
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 106
    .line 107
    .line 108
    :catch_2
    :cond_3
    throw v0

    .line 109
    :cond_4
    :goto_3
    if-eqz v4, :cond_7

    .line 110
    .line 111
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 112
    .line 113
    .line 114
    goto :goto_5

    .line 115
    :cond_5
    :try_start_7
    new-instance v10, Landroid/graphics/Matrix;

    .line 116
    .line 117
    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 118
    .line 119
    .line 120
    const/high16 v1, 0x3f800000    # 1.0f

    .line 121
    .line 122
    const/high16 v5, -0x40800000    # -1.0f

    .line 123
    .line 124
    invoke-virtual {v10, v1, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Lv1/d;->e()Landroid/graphics/Bitmap;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 132
    .line 133
    .line 134
    move-result v5

    .line 135
    iput v5, p0, Lv1/d;->d:I

    .line 136
    .line 137
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 138
    .line 139
    .line 140
    move-result v9

    .line 141
    iput v9, p0, Lv1/d;->e:I

    .line 142
    .line 143
    const/4 v6, 0x0

    .line 144
    const/4 v7, 0x0

    .line 145
    iget v8, p0, Lv1/d;->d:I

    .line 146
    .line 147
    const/4 v11, 0x1

    .line 148
    move-object v5, v1

    .line 149
    invoke-static/range {v5 .. v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    invoke-virtual {p0, v1}, Lv1/d;->i(Landroid/graphics/Bitmap;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 154
    .line 155
    .line 156
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    .line 161
    .line 162
    .line 163
    move-result v5

    .line 164
    invoke-static {v2, v1, v5, v3, v0}, Lo1/r;->a(IIIZZ)I

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    invoke-static {v2, v0, v4, v0}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 172
    .line 173
    .line 174
    :catch_3
    :cond_6
    :goto_4
    move v0, v1

    .line 175
    goto :goto_5

    .line 176
    :catch_4
    if-eqz v4, :cond_7

    .line 177
    .line 178
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 179
    .line 180
    .line 181
    :catch_5
    :cond_7
    :goto_5
    iput v0, p0, Lv1/d;->c:I

    .line 182
    .line 183
    if-nez v0, :cond_8

    .line 184
    .line 185
    invoke-virtual {p0}, Lv1/d;->h()V

    .line 186
    .line 187
    .line 188
    :cond_8
    return-void
.end method

.method public abstract h()V
.end method

.method public i(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method
