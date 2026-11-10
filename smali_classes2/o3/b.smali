.class public final Lo3/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/io/Reader;

.field public b:[I

.field public c:I

.field public d:I

.field public e:Z

.field public f:I

.field public g:I

.field public h:I

.field public final i:[C


# direct methods
.method public constructor <init>(Lo3/c;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lo3/b;->d:I

    iput v0, p0, Lo3/b;->f:I

    iput v0, p0, Lo3/b;->g:I

    iput v0, p0, Lo3/b;->h:I

    new-array v1, v0, [I

    iput-object v1, p0, Lo3/b;->b:[I

    iput v0, p0, Lo3/b;->c:I

    iput-object p1, p0, Lo3/b;->a:Ljava/io/Reader;

    iput-boolean v0, p0, Lo3/b;->e:Z

    const/16 p1, 0x401

    new-array p1, p1, [C

    iput-object p1, p0, Lo3/b;->i:[C

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 10

    .line 1
    iget-boolean v0, p0, Lo3/b;->e:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_b

    .line 6
    .line 7
    iget v0, p0, Lo3/b;->d:I

    .line 8
    .line 9
    add-int/2addr v0, p1

    .line 10
    iget v3, p0, Lo3/b;->c:I

    .line 11
    .line 12
    if-lt v0, v3, :cond_b

    .line 13
    .line 14
    iget-object v0, p0, Lo3/b;->a:Ljava/io/Reader;

    .line 15
    .line 16
    iget-object v3, p0, Lo3/b;->i:[C

    .line 17
    .line 18
    const/16 v4, 0x400

    .line 19
    .line 20
    :try_start_0
    invoke-virtual {v0, v3, v1, v4}, Ljava/io/Reader;->read([CII)I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-lez v4, :cond_a

    .line 25
    .line 26
    iget v5, p0, Lo3/b;->c:I

    .line 27
    .line 28
    iget v6, p0, Lo3/b;->d:I

    .line 29
    .line 30
    sub-int v7, v5, v6

    .line 31
    .line 32
    iget-object v8, p0, Lo3/b;->b:[I

    .line 33
    .line 34
    add-int/2addr v5, v4

    .line 35
    invoke-static {v8, v6, v5}, Ljava/util/Arrays;->copyOfRange([III)[I

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    iput-object v5, p0, Lo3/b;->b:[I

    .line 40
    .line 41
    add-int/lit8 v5, v4, -0x1

    .line 42
    .line 43
    aget-char v5, v3, v5

    .line 44
    .line 45
    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-eqz v5, :cond_1

    .line 50
    .line 51
    invoke-virtual {v0, v3, v4, v2}, Ljava/io/Reader;->read([CII)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    const/4 v5, -0x1

    .line 56
    if-ne v0, v5, :cond_0

    .line 57
    .line 58
    iput-boolean v2, p0, Lo3/b;->e:Z

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 62
    .line 63
    :cond_1
    :goto_0
    const/16 v0, 0x20

    .line 64
    .line 65
    move v6, v0

    .line 66
    move v5, v1

    .line 67
    :goto_1
    if-ge v5, v4, :cond_8

    .line 68
    .line 69
    invoke-static {v3, v5}, Ljava/lang/Character;->codePointAt([CI)I

    .line 70
    .line 71
    .line 72
    move-result v8

    .line 73
    iget-object v9, p0, Lo3/b;->b:[I

    .line 74
    .line 75
    aput v8, v9, v7

    .line 76
    .line 77
    if-lt v8, v0, :cond_2

    .line 78
    .line 79
    const/16 v9, 0x7e

    .line 80
    .line 81
    if-le v8, v9, :cond_6

    .line 82
    .line 83
    :cond_2
    const/16 v9, 0x9

    .line 84
    .line 85
    if-eq v8, v9, :cond_6

    .line 86
    .line 87
    const/16 v9, 0xa

    .line 88
    .line 89
    if-eq v8, v9, :cond_6

    .line 90
    .line 91
    const/16 v9, 0xd

    .line 92
    .line 93
    if-eq v8, v9, :cond_6

    .line 94
    .line 95
    const/16 v9, 0x85

    .line 96
    .line 97
    if-eq v8, v9, :cond_6

    .line 98
    .line 99
    const/16 v9, 0xa0

    .line 100
    .line 101
    if-lt v8, v9, :cond_3

    .line 102
    .line 103
    const v9, 0xd7ff

    .line 104
    .line 105
    .line 106
    if-le v8, v9, :cond_6

    .line 107
    .line 108
    :cond_3
    const v9, 0xe000

    .line 109
    .line 110
    .line 111
    if-lt v8, v9, :cond_4

    .line 112
    .line 113
    const v9, 0xfffd

    .line 114
    .line 115
    .line 116
    if-le v8, v9, :cond_6

    .line 117
    .line 118
    :cond_4
    const/high16 v9, 0x10000

    .line 119
    .line 120
    if-lt v8, v9, :cond_5

    .line 121
    .line 122
    const v9, 0x10ffff

    .line 123
    .line 124
    .line 125
    if-gt v8, v9, :cond_5

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_5
    move v9, v1

    .line 129
    goto :goto_3

    .line 130
    :cond_6
    :goto_2
    move v9, v2

    .line 131
    :goto_3
    if-eqz v9, :cond_7

    .line 132
    .line 133
    invoke-static {v8}, Ljava/lang/Character;->charCount(I)I

    .line 134
    .line 135
    .line 136
    move-result v8

    .line 137
    add-int/2addr v5, v8

    .line 138
    goto :goto_4

    .line 139
    :cond_7
    move v5, v4

    .line 140
    move v6, v8

    .line 141
    :goto_4
    add-int/lit8 v7, v7, 0x1

    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_8
    iput v7, p0, Lo3/b;->c:I

    .line 145
    .line 146
    iput v1, p0, Lo3/b;->d:I

    .line 147
    .line 148
    if-ne v6, v0, :cond_9

    .line 149
    .line 150
    goto :goto_5

    .line 151
    :cond_9
    new-instance p1, Lo3/a;

    .line 152
    .line 153
    sub-int/2addr v7, v2

    .line 154
    invoke-direct {p1, v7, v6}, Lo3/a;-><init>(II)V

    .line 155
    .line 156
    .line 157
    throw p1

    .line 158
    :cond_a
    iput-boolean v2, p0, Lo3/b;->e:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .line 160
    goto :goto_5

    .line 161
    :catch_0
    move-exception p1

    .line 162
    new-instance v0, Lh3/c;

    .line 163
    .line 164
    invoke-direct {v0, p1}, Lh3/c;-><init>(Ljava/lang/Exception;)V

    .line 165
    .line 166
    .line 167
    throw v0

    .line 168
    :cond_b
    :goto_5
    iget v0, p0, Lo3/b;->d:I

    .line 169
    .line 170
    add-int/2addr v0, p1

    .line 171
    iget p1, p0, Lo3/b;->c:I

    .line 172
    .line 173
    if-ge v0, p1, :cond_c

    .line 174
    .line 175
    move v1, v2

    .line 176
    :cond_c
    return v1
.end method

.method public final b(I)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    if-ge v1, p1, :cond_3

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lo3/b;->a(I)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_3

    .line 10
    .line 11
    iget-object v2, p0, Lo3/b;->b:[I

    .line 12
    .line 13
    iget v3, p0, Lo3/b;->d:I

    .line 14
    .line 15
    add-int/lit8 v4, v3, 0x1

    .line 16
    .line 17
    iput v4, p0, Lo3/b;->d:I

    .line 18
    .line 19
    aget v2, v2, v3

    .line 20
    .line 21
    iget v3, p0, Lo3/b;->f:I

    .line 22
    .line 23
    add-int/lit8 v3, v3, 0x1

    .line 24
    .line 25
    iput v3, p0, Lo3/b;->f:I

    .line 26
    .line 27
    sget-object v3, Lr3/a;->d:Lr3/a;

    .line 28
    .line 29
    invoke-virtual {v3, v2}, Lr3/a;->a(I)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-nez v3, :cond_1

    .line 34
    .line 35
    const/16 v3, 0xd

    .line 36
    .line 37
    if-ne v2, v3, :cond_0

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Lo3/b;->a(I)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_0

    .line 44
    .line 45
    iget-object v3, p0, Lo3/b;->b:[I

    .line 46
    .line 47
    iget v4, p0, Lo3/b;->d:I

    .line 48
    .line 49
    aget v3, v3, v4

    .line 50
    .line 51
    const/16 v4, 0xa

    .line 52
    .line 53
    if-eq v3, v4, :cond_0

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_0
    const v3, 0xfeff

    .line 57
    .line 58
    .line 59
    if-eq v2, v3, :cond_2

    .line 60
    .line 61
    iget v2, p0, Lo3/b;->h:I

    .line 62
    .line 63
    add-int/lit8 v2, v2, 0x1

    .line 64
    .line 65
    iput v2, p0, Lo3/b;->h:I

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_1
    :goto_1
    iget v2, p0, Lo3/b;->g:I

    .line 69
    .line 70
    add-int/lit8 v2, v2, 0x1

    .line 71
    .line 72
    iput v2, p0, Lo3/b;->g:I

    .line 73
    .line 74
    iput v0, p0, Lo3/b;->h:I

    .line 75
    .line 76
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    return-void
.end method

.method public final c()Lh3/a;
    .locals 5

    .line 1
    new-instance v0, Lh3/a;

    iget v1, p0, Lo3/b;->g:I

    iget v2, p0, Lo3/b;->h:I

    iget-object v3, p0, Lo3/b;->b:[I

    iget v4, p0, Lo3/b;->d:I

    invoke-direct {v0, v1, v2, v3, v4}, Lh3/a;-><init>(II[II)V

    return-object v0
.end method

.method public final d()I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lo3/b;->a(I)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lo3/b;->b:[I

    .line 9
    .line 10
    iget v1, p0, Lo3/b;->d:I

    .line 11
    .line 12
    aget v0, v0, v1

    .line 13
    .line 14
    :cond_0
    return v0
.end method

.method public final e(I)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lo3/b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo3/b;->b:[I

    iget v1, p0, Lo3/b;->d:I

    add-int/2addr v1, p1

    aget p1, v0, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final f(I)Ljava/lang/String;
    .locals 4

    .line 1
    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lo3/b;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lo3/b;->b:[I

    iget v2, p0, Lo3/b;->d:I

    invoke-direct {v0, v1, v2, p1}, Ljava/lang/String;-><init>([III)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lo3/b;->b:[I

    iget v2, p0, Lo3/b;->d:I

    iget v3, p0, Lo3/b;->c:I

    sub-int/2addr v3, v2

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Ljava/lang/String;-><init>([III)V

    return-object v0
.end method

.method public final g(I)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lo3/b;->f(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lo3/b;->d:I

    add-int/2addr v1, p1

    iput v1, p0, Lo3/b;->d:I

    iget v1, p0, Lo3/b;->f:I

    add-int/2addr v1, p1

    iput v1, p0, Lo3/b;->f:I

    iget v1, p0, Lo3/b;->h:I

    add-int/2addr v1, p1

    iput v1, p0, Lo3/b;->h:I

    return-object v0
.end method
