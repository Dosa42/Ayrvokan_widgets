.class public final Lz2/k;
.super Lz2/n;
.source "SourceFile"


# static fields
.field public static final d:[I


# instance fields
.field public final b:Lz2/b;

.field public final c:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lz2/k;->d:[I

    return-void
.end method

.method public constructor <init>(Lz2/g;Lz2/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lz2/n;-><init>()V

    iput-object p2, p0, Lz2/k;->b:Lz2/b;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lz2/k;->c:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static a(II)I
    .locals 0

    .line 1
    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    if-le p1, p0, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(II)I
    .locals 1

    .line 1
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    if-ne p1, v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    sub-int v0, p0, p1

    :cond_2
    :goto_0
    return v0
.end method

.method public static c(Lf2/t;Ljava/lang/String;Z)I
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lf2/t;->A:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x4

    .line 16
    return p0

    .line 17
    :cond_0
    invoke-static {p1}, Lz2/k;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object p0, p0, Lf2/t;->A:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {p0}, Lz2/k;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    const/4 v0, 0x0

    .line 28
    if-eqz p0, :cond_5

    .line 29
    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    if-nez p2, :cond_4

    .line 38
    .line 39
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    if-eqz p2, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    sget p2, Lb3/n;->a:I

    .line 47
    .line 48
    const-string p2, "-"

    .line 49
    .line 50
    const/4 v1, 0x2

    .line 51
    invoke-virtual {p0, p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    aget-object p0, p0, v0

    .line 56
    .line 57
    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    aget-object p1, p1, v0

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    if-eqz p0, :cond_3

    .line 68
    .line 69
    return v1

    .line 70
    :cond_3
    return v0

    .line 71
    :cond_4
    :goto_0
    const/4 p0, 0x3

    .line 72
    return p0

    .line 73
    :cond_5
    :goto_1
    if-eqz p2, :cond_6

    .line 74
    .line 75
    if-nez p0, :cond_6

    .line 76
    .line 77
    const/4 v0, 0x1

    .line 78
    :cond_6
    return v0
.end method

.method public static d(Lt2/w;IIZ)Ljava/util/ArrayList;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    new-instance v3, Ljava/util/ArrayList;

    .line 8
    .line 9
    iget v4, v0, Lt2/w;->a:I

    .line 10
    .line 11
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    :goto_0
    iget v6, v0, Lt2/w;->a:I

    .line 16
    .line 17
    if-ge v5, v6, :cond_0

    .line 18
    .line 19
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    add-int/lit8 v5, v5, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const v5, 0x7fffffff

    .line 30
    .line 31
    .line 32
    if-eq v1, v5, :cond_c

    .line 33
    .line 34
    if-ne v2, v5, :cond_1

    .line 35
    .line 36
    goto/16 :goto_9

    .line 37
    .line 38
    :cond_1
    move v8, v5

    .line 39
    const/4 v7, 0x0

    .line 40
    :goto_1
    const/4 v9, -0x1

    .line 41
    const/4 v10, 0x1

    .line 42
    iget-object v11, v0, Lt2/w;->b:[Lf2/t;

    .line 43
    .line 44
    if-ge v7, v6, :cond_7

    .line 45
    .line 46
    aget-object v11, v11, v7

    .line 47
    .line 48
    iget v12, v11, Lf2/t;->n:I

    .line 49
    .line 50
    if-lez v12, :cond_6

    .line 51
    .line 52
    iget v13, v11, Lf2/t;->o:I

    .line 53
    .line 54
    if-lez v13, :cond_6

    .line 55
    .line 56
    if-eqz p3, :cond_4

    .line 57
    .line 58
    if-le v12, v13, :cond_2

    .line 59
    .line 60
    move v14, v10

    .line 61
    goto :goto_2

    .line 62
    :cond_2
    const/4 v14, 0x0

    .line 63
    :goto_2
    if-le v1, v2, :cond_3

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_3
    const/4 v10, 0x0

    .line 67
    :goto_3
    if-eq v14, v10, :cond_4

    .line 68
    .line 69
    move v10, v1

    .line 70
    move v14, v2

    .line 71
    goto :goto_4

    .line 72
    :cond_4
    move v14, v1

    .line 73
    move v10, v2

    .line 74
    :goto_4
    mul-int v15, v12, v10

    .line 75
    .line 76
    mul-int v4, v13, v14

    .line 77
    .line 78
    if-lt v15, v4, :cond_5

    .line 79
    .line 80
    new-instance v10, Landroid/graphics/Point;

    .line 81
    .line 82
    sget v15, Lb3/n;->a:I

    .line 83
    .line 84
    add-int/2addr v4, v12

    .line 85
    add-int/2addr v4, v9

    .line 86
    div-int/2addr v4, v12

    .line 87
    invoke-direct {v10, v14, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 88
    .line 89
    .line 90
    goto :goto_5

    .line 91
    :cond_5
    new-instance v4, Landroid/graphics/Point;

    .line 92
    .line 93
    sget v12, Lb3/n;->a:I

    .line 94
    .line 95
    add-int/2addr v15, v13

    .line 96
    add-int/2addr v15, v9

    .line 97
    div-int/2addr v15, v13

    .line 98
    invoke-direct {v4, v15, v10}, Landroid/graphics/Point;-><init>(II)V

    .line 99
    .line 100
    .line 101
    move-object v10, v4

    .line 102
    :goto_5
    iget v4, v11, Lf2/t;->n:I

    .line 103
    .line 104
    mul-int v9, v4, v13

    .line 105
    .line 106
    iget v11, v10, Landroid/graphics/Point;->x:I

    .line 107
    .line 108
    int-to-float v11, v11

    .line 109
    const v12, 0x3f7ae148    # 0.98f

    .line 110
    .line 111
    .line 112
    mul-float/2addr v11, v12

    .line 113
    float-to-int v11, v11

    .line 114
    if-lt v4, v11, :cond_6

    .line 115
    .line 116
    iget v4, v10, Landroid/graphics/Point;->y:I

    .line 117
    .line 118
    int-to-float v4, v4

    .line 119
    mul-float/2addr v4, v12

    .line 120
    float-to-int v4, v4

    .line 121
    if-lt v13, v4, :cond_6

    .line 122
    .line 123
    if-ge v9, v8, :cond_6

    .line 124
    .line 125
    move v8, v9

    .line 126
    :cond_6
    add-int/lit8 v7, v7, 0x1

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_7
    if-eq v8, v5, :cond_c

    .line 130
    .line 131
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    sub-int/2addr v0, v10

    .line 136
    :goto_6
    if-ltz v0, :cond_c

    .line 137
    .line 138
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    check-cast v1, Ljava/lang/Integer;

    .line 143
    .line 144
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    aget-object v1, v11, v1

    .line 149
    .line 150
    iget v2, v1, Lf2/t;->n:I

    .line 151
    .line 152
    if-eq v2, v9, :cond_9

    .line 153
    .line 154
    iget v1, v1, Lf2/t;->o:I

    .line 155
    .line 156
    if-ne v1, v9, :cond_8

    .line 157
    .line 158
    goto :goto_7

    .line 159
    :cond_8
    mul-int/2addr v2, v1

    .line 160
    goto :goto_8

    .line 161
    :cond_9
    :goto_7
    move v2, v9

    .line 162
    :goto_8
    if-eq v2, v9, :cond_a

    .line 163
    .line 164
    if-le v2, v8, :cond_b

    .line 165
    .line 166
    :cond_a
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    :cond_b
    add-int/lit8 v0, v0, -0x1

    .line 170
    .line 171
    goto :goto_6

    .line 172
    :cond_c
    :goto_9
    return-object v3
.end method

.method public static e(IZ)Z
    .locals 1

    .line 1
    and-int/lit8 p0, p0, 0x7

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static f(Lf2/t;ILz2/e;IZZZ)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lz2/k;->e(IZ)Z

    move-result p1

    if-eqz p1, :cond_4

    iget p1, p0, Lf2/t;->e:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    if-gt p1, p3, :cond_4

    :cond_0
    if-nez p6, :cond_1

    iget p1, p0, Lf2/t;->v:I

    if-eq p1, v1, :cond_4

    iget p3, p2, Lz2/e;->a:I

    if-ne p1, p3, :cond_4

    :cond_1
    if-nez p4, :cond_2

    iget-object p1, p0, Lf2/t;->i:Ljava/lang/String;

    if-eqz p1, :cond_4

    iget-object p3, p2, Lz2/e;->c:Ljava/lang/String;

    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_2
    if-nez p5, :cond_3

    iget p0, p0, Lf2/t;->w:I

    if-eq p0, v1, :cond_4

    iget p1, p2, Lz2/e;->b:I

    if-ne p0, p1, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method public static g(Lf2/t;Ljava/lang/String;IIIIII)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lz2/k;->e(IZ)Z

    move-result v1

    if-eqz v1, :cond_5

    and-int/2addr p2, p3

    if-eqz p2, :cond_5

    if-eqz p1, :cond_0

    iget-object p2, p0, Lf2/t;->i:Ljava/lang/String;

    invoke-static {p2, p1}, Lb3/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_0
    iget p1, p0, Lf2/t;->n:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    if-gt p1, p4, :cond_5

    :cond_1
    iget p1, p0, Lf2/t;->o:I

    if-eq p1, p2, :cond_2

    if-gt p1, p5, :cond_5

    :cond_2
    const/high16 p1, -0x40800000    # -1.0f

    iget p3, p0, Lf2/t;->p:F

    cmpl-float p1, p3, p1

    if-eqz p1, :cond_3

    int-to-float p1, p6

    cmpg-float p1, p3, p1

    if-gtz p1, :cond_5

    :cond_3
    iget p0, p0, Lf2/t;->e:I

    if-eq p0, p2, :cond_4

    if-gt p0, p7, :cond_5

    :cond_4
    const/4 v0, 0x1

    :cond_5
    return v0
.end method

.method public static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "und"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p0, 0x0

    :cond_1
    return-object p0
.end method
