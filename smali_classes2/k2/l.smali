.class public final Lk2/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:[Ljava/lang/String;

.field public static final i:[I

.field public static final j:[I

.field public static final k:[I

.field public static final l:[I

.field public static final m:[I

.field public static final n:[I


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "audio/mpeg-L2"

    const-string v1, "audio/mpeg"

    const-string v2, "audio/mpeg-L1"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lk2/l;->h:[Ljava/lang/String;

    const v0, 0xbb80

    const/16 v1, 0x7d00

    const v2, 0xac44

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lk2/l;->i:[I

    const/16 v0, 0xe

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lk2/l;->j:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lk2/l;->k:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lk2/l;->l:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_3

    sput-object v1, Lk2/l;->m:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lk2/l;->n:[I

    return-void

    :array_0
    .array-data 4
        0x7d00
        0xfa00
        0x17700
        0x1f400
        0x27100
        0x2ee00
        0x36b00
        0x3e800
        0x46500
        0x4e200
        0x55f00
        0x5dc00
        0x65900
        0x6d600
    .end array-data

    :array_1
    .array-data 4
        0x7d00
        0xbb80
        0xdac0
        0xfa00
        0x13880
        0x17700
        0x1b580
        0x1f400
        0x23280
        0x27100
        0x2af80
        0x2ee00
        0x36b00
        0x3e800
    .end array-data

    :array_2
    .array-data 4
        0x7d00
        0xbb80
        0xdac0
        0xfa00
        0x13880
        0x17700
        0x1b580
        0x1f400
        0x27100
        0x2ee00
        0x36b00
        0x3e800
        0x4e200
        0x5dc00
    .end array-data

    :array_3
    .array-data 4
        0x7d00
        0x9c40
        0xbb80
        0xdac0
        0xfa00
        0x13880
        0x17700
        0x1b580
        0x1f400
        0x27100
        0x2ee00
        0x36b00
        0x3e800
        0x4e200
    .end array-data

    :array_4
    .array-data 4
        0x1f40
        0x3e80
        0x5dc0
        0x7d00
        0x9c40
        0xbb80
        0xdac0
        0xfa00
        0x13880
        0x17700
        0x1b580
        0x1f400
        0x23280
        0x27100
    .end array-data
.end method

.method public static a(I)I
    .locals 7

    .line 1
    const/high16 v0, -0x200000

    and-int v1, p0, v0

    const/4 v2, 0x1

    if-ne v1, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, -0x1

    if-nez v0, :cond_1

    return v1

    :cond_1
    ushr-int/lit8 v0, p0, 0x13

    const/4 v3, 0x3

    and-int/2addr v0, v3

    if-ne v0, v2, :cond_2

    return v1

    :cond_2
    ushr-int/lit8 v4, p0, 0x11

    and-int/2addr v4, v3

    if-nez v4, :cond_3

    return v1

    :cond_3
    ushr-int/lit8 v5, p0, 0xc

    const/16 v6, 0xf

    and-int/2addr v5, v6

    if-eqz v5, :cond_e

    if-ne v5, v6, :cond_4

    goto :goto_4

    :cond_4
    ushr-int/lit8 v6, p0, 0xa

    and-int/2addr v6, v3

    if-ne v6, v3, :cond_5

    return v1

    :cond_5
    sget-object v1, Lk2/l;->i:[I

    aget v1, v1, v6

    const/4 v6, 0x2

    if-ne v0, v6, :cond_6

    div-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_6
    if-nez v0, :cond_7

    div-int/lit8 v1, v1, 0x4

    :cond_7
    :goto_1
    ushr-int/lit8 p0, p0, 0x9

    and-int/2addr p0, v2

    if-ne v4, v3, :cond_9

    if-ne v0, v3, :cond_8

    sget-object v0, Lk2/l;->j:[I

    sub-int/2addr v5, v2

    aget v0, v0, v5

    goto :goto_2

    :cond_8
    sget-object v0, Lk2/l;->k:[I

    sub-int/2addr v5, v2

    aget v0, v0, v5

    :goto_2
    mul-int/lit8 v0, v0, 0xc

    div-int/2addr v0, v1

    add-int/2addr v0, p0

    mul-int/lit8 v0, v0, 0x4

    return v0

    :cond_9
    if-ne v0, v3, :cond_b

    if-ne v4, v6, :cond_a

    sget-object v6, Lk2/l;->l:[I

    sub-int/2addr v5, v2

    aget v5, v6, v5

    goto :goto_3

    :cond_a
    sget-object v6, Lk2/l;->m:[I

    sub-int/2addr v5, v2

    aget v5, v6, v5

    goto :goto_3

    :cond_b
    sget-object v6, Lk2/l;->n:[I

    sub-int/2addr v5, v2

    aget v5, v6, v5

    :goto_3
    const/16 v6, 0x90

    if-ne v0, v3, :cond_c

    mul-int/2addr v5, v6

    div-int/2addr v5, v1

    add-int/2addr v5, p0

    return v5

    :cond_c
    if-ne v4, v2, :cond_d

    const/16 v6, 0x48

    :cond_d
    mul-int/2addr v6, v5

    div-int/2addr v6, v1

    add-int/2addr v6, p0

    return v6

    :cond_e
    :goto_4
    return v1
.end method

.method public static b(ILk2/l;)Z
    .locals 10

    .line 1
    const/high16 v0, -0x200000

    .line 2
    .line 3
    and-int v1, p0, v0

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-ne v1, v0, :cond_0

    .line 8
    .line 9
    move v0, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v3

    .line 12
    :goto_0
    if-nez v0, :cond_1

    .line 13
    .line 14
    return v3

    .line 15
    :cond_1
    ushr-int/lit8 v0, p0, 0x13

    .line 16
    .line 17
    const/4 v1, 0x3

    .line 18
    and-int/2addr v0, v1

    .line 19
    if-ne v0, v2, :cond_2

    .line 20
    .line 21
    return v3

    .line 22
    :cond_2
    ushr-int/lit8 v4, p0, 0x11

    .line 23
    .line 24
    and-int/2addr v4, v1

    .line 25
    if-nez v4, :cond_3

    .line 26
    .line 27
    return v3

    .line 28
    :cond_3
    ushr-int/lit8 v5, p0, 0xc

    .line 29
    .line 30
    const/16 v6, 0xf

    .line 31
    .line 32
    and-int/2addr v5, v6

    .line 33
    if-eqz v5, :cond_12

    .line 34
    .line 35
    if-ne v5, v6, :cond_4

    .line 36
    .line 37
    goto/16 :goto_8

    .line 38
    .line 39
    :cond_4
    ushr-int/lit8 v6, p0, 0xa

    .line 40
    .line 41
    and-int/2addr v6, v1

    .line 42
    if-ne v6, v1, :cond_5

    .line 43
    .line 44
    return v3

    .line 45
    :cond_5
    sget-object v3, Lk2/l;->i:[I

    .line 46
    .line 47
    aget v3, v3, v6

    .line 48
    .line 49
    const/4 v6, 0x2

    .line 50
    if-ne v0, v6, :cond_6

    .line 51
    .line 52
    div-int/lit8 v3, v3, 0x2

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_6
    if-nez v0, :cond_7

    .line 56
    .line 57
    div-int/lit8 v3, v3, 0x4

    .line 58
    .line 59
    :cond_7
    :goto_1
    ushr-int/lit8 v7, p0, 0x9

    .line 60
    .line 61
    and-int/2addr v7, v2

    .line 62
    if-eq v4, v2, :cond_9

    .line 63
    .line 64
    if-eq v4, v6, :cond_a

    .line 65
    .line 66
    if-ne v4, v1, :cond_8

    .line 67
    .line 68
    const/16 v8, 0x180

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 72
    .line 73
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 74
    .line 75
    .line 76
    throw p0

    .line 77
    :cond_9
    if-ne v0, v1, :cond_b

    .line 78
    .line 79
    :cond_a
    const/16 v8, 0x480

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_b
    const/16 v8, 0x240

    .line 83
    .line 84
    :goto_2
    if-ne v4, v1, :cond_d

    .line 85
    .line 86
    if-ne v0, v1, :cond_c

    .line 87
    .line 88
    sget-object v9, Lk2/l;->j:[I

    .line 89
    .line 90
    sub-int/2addr v5, v2

    .line 91
    aget v5, v9, v5

    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_c
    sget-object v9, Lk2/l;->k:[I

    .line 95
    .line 96
    sub-int/2addr v5, v2

    .line 97
    aget v5, v9, v5

    .line 98
    .line 99
    :goto_3
    mul-int/lit8 v9, v5, 0xc

    .line 100
    .line 101
    div-int/2addr v9, v3

    .line 102
    add-int/2addr v9, v7

    .line 103
    mul-int/lit8 v9, v9, 0x4

    .line 104
    .line 105
    goto :goto_7

    .line 106
    :cond_d
    if-ne v0, v1, :cond_f

    .line 107
    .line 108
    if-ne v4, v6, :cond_e

    .line 109
    .line 110
    sget-object v9, Lk2/l;->l:[I

    .line 111
    .line 112
    sub-int/2addr v5, v2

    .line 113
    aget v5, v9, v5

    .line 114
    .line 115
    goto :goto_4

    .line 116
    :cond_e
    sget-object v9, Lk2/l;->m:[I

    .line 117
    .line 118
    sub-int/2addr v5, v2

    .line 119
    aget v5, v9, v5

    .line 120
    .line 121
    :goto_4
    mul-int/lit16 v9, v5, 0x90

    .line 122
    .line 123
    goto :goto_6

    .line 124
    :cond_f
    sget-object v9, Lk2/l;->n:[I

    .line 125
    .line 126
    sub-int/2addr v5, v2

    .line 127
    aget v5, v9, v5

    .line 128
    .line 129
    if-ne v4, v2, :cond_10

    .line 130
    .line 131
    const/16 v9, 0x48

    .line 132
    .line 133
    goto :goto_5

    .line 134
    :cond_10
    const/16 v9, 0x90

    .line 135
    .line 136
    :goto_5
    mul-int/2addr v9, v5

    .line 137
    :goto_6
    div-int/2addr v9, v3

    .line 138
    add-int/2addr v9, v7

    .line 139
    :goto_7
    sget-object v7, Lk2/l;->h:[Ljava/lang/String;

    .line 140
    .line 141
    rsub-int/lit8 v4, v4, 0x3

    .line 142
    .line 143
    aget-object v4, v7, v4

    .line 144
    .line 145
    shr-int/lit8 p0, p0, 0x6

    .line 146
    .line 147
    and-int/2addr p0, v1

    .line 148
    if-ne p0, v1, :cond_11

    .line 149
    .line 150
    move v6, v2

    .line 151
    :cond_11
    iput v0, p1, Lk2/l;->a:I

    .line 152
    .line 153
    iput-object v4, p1, Lk2/l;->b:Ljava/lang/String;

    .line 154
    .line 155
    iput v9, p1, Lk2/l;->c:I

    .line 156
    .line 157
    iput v3, p1, Lk2/l;->d:I

    .line 158
    .line 159
    iput v6, p1, Lk2/l;->e:I

    .line 160
    .line 161
    iput v5, p1, Lk2/l;->f:I

    .line 162
    .line 163
    iput v8, p1, Lk2/l;->g:I

    .line 164
    .line 165
    return v2

    .line 166
    :cond_12
    :goto_8
    return v3
.end method
