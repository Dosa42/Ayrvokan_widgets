.class public abstract Ll/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/ThreadLocal;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Ll/a;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static a(III[F)V
    .locals 7

    .line 1
    int-to-float p0, p0

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p0, v0

    int-to-float p1, p1

    div-float/2addr p1, v0

    int-to-float p2, p2

    div-float/2addr p2, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {p0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    sub-float v2, v0, v1

    add-float v3, v0, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    cmpl-float v1, v0, v1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    if-nez v1, :cond_0

    move p1, v6

    move v2, p1

    goto :goto_1

    :cond_0
    cmpl-float v1, v0, p0

    if-nez v1, :cond_1

    sub-float/2addr p1, p2

    div-float/2addr p1, v2

    const/high16 p0, 0x40c00000    # 6.0f

    rem-float/2addr p1, p0

    goto :goto_0

    :cond_1
    cmpl-float v0, v0, p1

    if-nez v0, :cond_2

    sub-float/2addr p2, p0

    div-float/2addr p2, v2

    add-float p1, p2, v4

    goto :goto_0

    :cond_2
    sub-float/2addr p0, p1

    div-float/2addr p0, v2

    const/high16 p1, 0x40800000    # 4.0f

    add-float/2addr p1, p0

    :goto_0
    mul-float/2addr v4, v3

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result p0

    sub-float p0, v5, p0

    div-float/2addr v2, p0

    :goto_1
    const/high16 p0, 0x42700000    # 60.0f

    mul-float/2addr p1, p0

    const/high16 p0, 0x43b40000    # 360.0f

    rem-float/2addr p1, p0

    cmpg-float p2, p1, v6

    if-gez p2, :cond_3

    add-float/2addr p1, p0

    :cond_3
    cmpg-float p2, p1, v6

    if-gez p2, :cond_4

    move p0, v6

    goto :goto_2

    :cond_4
    cmpl-float p2, p1, p0

    if-lez p2, :cond_5

    goto :goto_2

    :cond_5
    move p0, p1

    :goto_2
    const/4 p1, 0x0

    aput p0, p3, p1

    cmpg-float p0, v2, v6

    if-gez p0, :cond_6

    move v2, v6

    goto :goto_3

    :cond_6
    cmpl-float p0, v2, v5

    if-lez p0, :cond_7

    move v2, v5

    :cond_7
    :goto_3
    const/4 p0, 0x1

    aput v2, p3, p0

    cmpg-float p0, v3, v6

    if-gez p0, :cond_8

    move v3, v6

    goto :goto_4

    :cond_8
    cmpl-float p0, v3, v5

    if-lez p0, :cond_9

    move v3, v5

    :cond_9
    :goto_4
    const/4 p0, 0x2

    aput v3, p3, p0

    return-void
.end method

.method public static b(II)D
    .locals 9

    .line 1
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xff

    .line 6
    .line 7
    if-ne v0, v1, :cond_4

    .line 8
    .line 9
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-ge v0, v1, :cond_3

    .line 14
    .line 15
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    rsub-int v3, v0, 0xff

    .line 24
    .line 25
    rsub-int v4, v2, 0xff

    .line 26
    .line 27
    mul-int/2addr v3, v4

    .line 28
    div-int/2addr v3, v1

    .line 29
    rsub-int v3, v3, 0xff

    .line 30
    .line 31
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    const/4 v7, 0x0

    .line 40
    if-nez v3, :cond_0

    .line 41
    .line 42
    move v6, v7

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    mul-int/2addr v5, v1

    .line 45
    mul-int/2addr v5, v2

    .line 46
    mul-int/2addr v6, v0

    .line 47
    mul-int/2addr v6, v4

    .line 48
    add-int/2addr v6, v5

    .line 49
    mul-int/lit16 v5, v3, 0xff

    .line 50
    .line 51
    div-int/2addr v6, v5

    .line 52
    :goto_0
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    .line 57
    .line 58
    .line 59
    move-result v8

    .line 60
    if-nez v3, :cond_1

    .line 61
    .line 62
    move v8, v7

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    mul-int/2addr v5, v1

    .line 65
    mul-int/2addr v5, v2

    .line 66
    mul-int/2addr v8, v0

    .line 67
    mul-int/2addr v8, v4

    .line 68
    add-int/2addr v8, v5

    .line 69
    mul-int/lit16 v5, v3, 0xff

    .line 70
    .line 71
    div-int/2addr v8, v5

    .line 72
    :goto_1
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    if-nez v3, :cond_2

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_2
    mul-int/2addr p0, v1

    .line 84
    mul-int/2addr p0, v2

    .line 85
    mul-int/2addr v5, v0

    .line 86
    mul-int/2addr v5, v4

    .line 87
    add-int/2addr v5, p0

    .line 88
    mul-int/lit16 p0, v3, 0xff

    .line 89
    .line 90
    div-int v7, v5, p0

    .line 91
    .line 92
    :goto_2
    invoke-static {v3, v6, v8, v7}, Landroid/graphics/Color;->argb(IIII)I

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    :cond_3
    invoke-static {p0}, Ll/a;->c(I)D

    .line 97
    .line 98
    .line 99
    move-result-wide v0

    .line 100
    const-wide v2, 0x3fa999999999999aL    # 0.05

    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    add-double/2addr v0, v2

    .line 106
    invoke-static {p1}, Ll/a;->c(I)D

    .line 107
    .line 108
    .line 109
    move-result-wide p0

    .line 110
    add-double/2addr p0, v2

    .line 111
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(DD)D

    .line 112
    .line 113
    .line 114
    move-result-wide v2

    .line 115
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(DD)D

    .line 116
    .line 117
    .line 118
    move-result-wide p0

    .line 119
    div-double/2addr v2, p0

    .line 120
    return-wide v2

    .line 121
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 122
    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    const-string v1, "background can not be translucent: #"

    .line 126
    .line 127
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    throw p0
.end method

.method public static c(I)D
    .locals 19

    .line 1
    sget-object v0, Ll/a;->a:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, [D

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-array v1, v2, [D

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->red(I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->green(I)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->blue(I)I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    array-length v5, v1

    .line 30
    if-ne v5, v2, :cond_4

    .line 31
    .line 32
    int-to-double v5, v0

    .line 33
    const-wide v7, 0x406fe00000000000L    # 255.0

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    div-double/2addr v5, v7

    .line 39
    const-wide v9, 0x3fa4b5dcc63f1412L    # 0.04045

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    cmpg-double v0, v5, v9

    .line 45
    .line 46
    const-wide v11, 0x4003333333333333L    # 2.4

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    const-wide v13, 0x3ff0e147ae147ae1L    # 1.055

    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    const-wide v15, 0x4029d70a3d70a3d7L    # 12.92

    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    const-wide v17, 0x3fac28f5c28f5c29L    # 0.055

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    if-gez v0, :cond_1

    .line 67
    .line 68
    div-double/2addr v5, v15

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    add-double v5, v5, v17

    .line 71
    .line 72
    div-double/2addr v5, v13

    .line 73
    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 74
    .line 75
    .line 76
    move-result-wide v5

    .line 77
    :goto_0
    int-to-double v2, v3

    .line 78
    div-double/2addr v2, v7

    .line 79
    cmpg-double v0, v2, v9

    .line 80
    .line 81
    if-gez v0, :cond_2

    .line 82
    .line 83
    div-double/2addr v2, v15

    .line 84
    goto :goto_1

    .line 85
    :cond_2
    add-double v2, v2, v17

    .line 86
    .line 87
    div-double/2addr v2, v13

    .line 88
    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 89
    .line 90
    .line 91
    move-result-wide v2

    .line 92
    :goto_1
    int-to-double v11, v4

    .line 93
    div-double/2addr v11, v7

    .line 94
    cmpg-double v0, v11, v9

    .line 95
    .line 96
    if-gez v0, :cond_3

    .line 97
    .line 98
    div-double/2addr v11, v15

    .line 99
    goto :goto_2

    .line 100
    :cond_3
    add-double v11, v11, v17

    .line 101
    .line 102
    div-double/2addr v11, v13

    .line 103
    const-wide v7, 0x4003333333333333L    # 2.4

    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->pow(DD)D

    .line 109
    .line 110
    .line 111
    move-result-wide v11

    .line 112
    :goto_2
    const-wide v7, 0x3fda64c2f837b4a2L    # 0.4124

    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    mul-double/2addr v7, v5

    .line 118
    const-wide v9, 0x3fd6e2eb1c432ca5L    # 0.3576

    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    mul-double/2addr v9, v2

    .line 124
    add-double/2addr v9, v7

    .line 125
    const-wide v7, 0x3fc71a9fbe76c8b4L    # 0.1805

    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    mul-double/2addr v7, v11

    .line 131
    add-double/2addr v7, v9

    .line 132
    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    .line 133
    .line 134
    mul-double/2addr v7, v9

    .line 135
    const/4 v0, 0x0

    .line 136
    aput-wide v7, v1, v0

    .line 137
    .line 138
    const-wide v7, 0x3fcb367a0f9096bcL    # 0.2126

    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    mul-double/2addr v7, v5

    .line 144
    const-wide v13, 0x3fe6e2eb1c432ca5L    # 0.7152

    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    mul-double/2addr v13, v2

    .line 150
    add-double/2addr v13, v7

    .line 151
    const-wide v7, 0x3fb27bb2fec56d5dL    # 0.0722

    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    mul-double/2addr v7, v11

    .line 157
    add-double/2addr v7, v13

    .line 158
    mul-double/2addr v7, v9

    .line 159
    const/4 v0, 0x1

    .line 160
    aput-wide v7, v1, v0

    .line 161
    .line 162
    const-wide v13, 0x3f93c36113404ea5L    # 0.0193

    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    mul-double/2addr v5, v13

    .line 168
    const-wide v13, 0x3fbe83e425aee632L    # 0.1192

    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    mul-double/2addr v2, v13

    .line 174
    add-double/2addr v2, v5

    .line 175
    const-wide v4, 0x3fee6a7ef9db22d1L    # 0.9505

    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    mul-double/2addr v11, v4

    .line 181
    add-double/2addr v11, v2

    .line 182
    mul-double/2addr v11, v9

    .line 183
    const/4 v0, 0x2

    .line 184
    aput-wide v11, v1, v0

    .line 185
    .line 186
    div-double/2addr v7, v9

    .line 187
    return-wide v7

    .line 188
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 189
    .line 190
    const-string v1, "outXyz must have a length of 3."

    .line 191
    .line 192
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    throw v0
.end method

.method public static d(FII)I
    .locals 8

    .line 1
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_3

    invoke-static {p1, v1}, Ll/a;->e(II)I

    move-result v0

    invoke-static {v0, p2}, Ll/a;->b(II)D

    move-result-wide v2

    float-to-double v4, p0

    cmpg-double p0, v2, v4

    if-gez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    move v0, p0

    :goto_0
    const/16 v2, 0xa

    if-gt p0, v2, :cond_2

    sub-int v2, v1, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    add-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    invoke-static {p1, v2}, Ll/a;->e(II)I

    move-result v3

    invoke-static {v3, p2}, Ll/a;->b(II)D

    move-result-wide v6

    cmpg-double v3, v6, v4

    if-gez v3, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "background can not be translucent: #"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(II)I
    .locals 1

    .line 1
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    const v0, 0xffffff

    and-int/2addr p0, v0

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "alpha must be between 0 and 255."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
