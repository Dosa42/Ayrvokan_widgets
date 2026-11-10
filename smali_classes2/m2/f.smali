.class public final Lm2/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lk2/o;

.field public final b:Lm2/j;

.field public final c:Lb3/h;

.field public d:Lm2/h;

.field public e:Lm2/d;

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public final j:Lb3/h;

.field public final k:Lb3/h;


# direct methods
.method public constructor <init>(Lk2/o;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm2/f;->a:Lk2/o;

    new-instance p1, Lm2/j;

    invoke-direct {p1}, Lm2/j;-><init>()V

    iput-object p1, p0, Lm2/f;->b:Lm2/j;

    new-instance p1, Lb3/h;

    invoke-direct {p1}, Lb3/h;-><init>()V

    iput-object p1, p0, Lm2/f;->c:Lb3/h;

    new-instance p1, Lb3/h;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lb3/h;-><init>(I)V

    iput-object p1, p0, Lm2/f;->j:Lb3/h;

    new-instance p1, Lb3/h;

    invoke-direct {p1}, Lb3/h;-><init>()V

    iput-object p1, p0, Lm2/f;->k:Lb3/h;

    return-void
.end method


# virtual methods
.method public final a()Lm2/i;
    .locals 3

    .line 1
    iget-object v0, p0, Lm2/f;->b:Lm2/j;

    .line 2
    .line 3
    iget-object v1, v0, Lm2/j;->a:Lm2/d;

    .line 4
    .line 5
    iget v1, v1, Lm2/d;->a:I

    .line 6
    .line 7
    iget-object v0, v0, Lm2/j;->n:Lm2/i;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lm2/f;->d:Lm2/h;

    .line 14
    .line 15
    iget-object v0, v0, Lm2/h;->j:[Lm2/i;

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    move-object v0, v2

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    aget-object v0, v0, v1

    .line 22
    .line 23
    :goto_0
    if-eqz v0, :cond_2

    .line 24
    .line 25
    iget-boolean v1, v0, Lm2/i;->a:Z

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    move-object v2, v0

    .line 30
    :cond_2
    return-object v2
.end method

.method public final b()Z
    .locals 4

    .line 1
    iget v0, p0, Lm2/f;->f:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lm2/f;->f:I

    iget v0, p0, Lm2/f;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lm2/f;->g:I

    iget-object v2, p0, Lm2/f;->b:Lm2/j;

    iget-object v2, v2, Lm2/j;->g:[I

    iget v3, p0, Lm2/f;->h:I

    aget v2, v2, v3

    if-ne v0, v2, :cond_0

    add-int/2addr v3, v1

    iput v3, p0, Lm2/f;->h:I

    const/4 v0, 0x0

    iput v0, p0, Lm2/f;->g:I

    return v0

    :cond_0
    return v1
.end method

.method public final c(II)I
    .locals 11

    .line 1
    invoke-virtual {p0}, Lm2/f;->a()Lm2/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object v2, p0, Lm2/f;->b:Lm2/j;

    .line 10
    .line 11
    iget v3, v0, Lm2/i;->d:I

    .line 12
    .line 13
    if-eqz v3, :cond_1

    .line 14
    .line 15
    iget-object v0, v2, Lm2/j;->p:Lb3/h;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iget-object v0, v0, Lm2/i;->e:[B

    .line 19
    .line 20
    array-length v3, v0

    .line 21
    iget-object v4, p0, Lm2/f;->k:Lb3/h;

    .line 22
    .line 23
    invoke-virtual {v4, v0, v3}, Lb3/h;->o([BI)V

    .line 24
    .line 25
    .line 26
    array-length v3, v0

    .line 27
    move-object v0, v4

    .line 28
    :goto_0
    iget v4, p0, Lm2/f;->f:I

    .line 29
    .line 30
    iget-boolean v5, v2, Lm2/j;->l:Z

    .line 31
    .line 32
    const/4 v6, 0x1

    .line 33
    if-eqz v5, :cond_2

    .line 34
    .line 35
    iget-object v5, v2, Lm2/j;->m:[Z

    .line 36
    .line 37
    aget-boolean v4, v5, v4

    .line 38
    .line 39
    if-eqz v4, :cond_2

    .line 40
    .line 41
    move v4, v6

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    move v4, v1

    .line 44
    :goto_1
    if-nez v4, :cond_4

    .line 45
    .line 46
    if-eqz p2, :cond_3

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_3
    move v5, v1

    .line 50
    goto :goto_3

    .line 51
    :cond_4
    :goto_2
    move v5, v6

    .line 52
    :goto_3
    iget-object v7, p0, Lm2/f;->j:Lb3/h;

    .line 53
    .line 54
    iget-object v8, v7, Lb3/h;->c:Ljava/io/Serializable;

    .line 55
    .line 56
    check-cast v8, [B

    .line 57
    .line 58
    if-eqz v5, :cond_5

    .line 59
    .line 60
    const/16 v9, 0x80

    .line 61
    .line 62
    goto :goto_4

    .line 63
    :cond_5
    move v9, v1

    .line 64
    :goto_4
    or-int/2addr v9, v3

    .line 65
    int-to-byte v9, v9

    .line 66
    aput-byte v9, v8, v1

    .line 67
    .line 68
    invoke-virtual {v7, v1}, Lb3/h;->q(I)V

    .line 69
    .line 70
    .line 71
    iget-object v8, p0, Lm2/f;->a:Lk2/o;

    .line 72
    .line 73
    invoke-interface {v8, v6, v7}, Lk2/o;->d(ILb3/h;)V

    .line 74
    .line 75
    .line 76
    invoke-interface {v8, v3, v0}, Lk2/o;->d(ILb3/h;)V

    .line 77
    .line 78
    .line 79
    if-nez v5, :cond_6

    .line 80
    .line 81
    add-int/2addr v3, v6

    .line 82
    return v3

    .line 83
    :cond_6
    const/16 v0, 0x8

    .line 84
    .line 85
    const/4 v5, 0x6

    .line 86
    const/4 v7, 0x3

    .line 87
    const/4 v9, 0x2

    .line 88
    iget-object v10, p0, Lm2/f;->c:Lb3/h;

    .line 89
    .line 90
    if-nez v4, :cond_7

    .line 91
    .line 92
    invoke-virtual {v10, v0}, Lb3/h;->n(I)V

    .line 93
    .line 94
    .line 95
    iget-object v2, v10, Lb3/h;->c:Ljava/io/Serializable;

    .line 96
    .line 97
    check-cast v2, [B

    .line 98
    .line 99
    aput-byte v1, v2, v1

    .line 100
    .line 101
    aput-byte v6, v2, v6

    .line 102
    .line 103
    shr-int/lit8 v1, p2, 0x8

    .line 104
    .line 105
    and-int/lit16 v1, v1, 0xff

    .line 106
    .line 107
    int-to-byte v1, v1

    .line 108
    aput-byte v1, v2, v9

    .line 109
    .line 110
    and-int/lit16 p2, p2, 0xff

    .line 111
    .line 112
    int-to-byte p2, p2

    .line 113
    aput-byte p2, v2, v7

    .line 114
    .line 115
    shr-int/lit8 p2, p1, 0x18

    .line 116
    .line 117
    and-int/lit16 p2, p2, 0xff

    .line 118
    .line 119
    int-to-byte p2, p2

    .line 120
    const/4 v1, 0x4

    .line 121
    aput-byte p2, v2, v1

    .line 122
    .line 123
    shr-int/lit8 p2, p1, 0x10

    .line 124
    .line 125
    and-int/lit16 p2, p2, 0xff

    .line 126
    .line 127
    int-to-byte p2, p2

    .line 128
    const/4 v1, 0x5

    .line 129
    aput-byte p2, v2, v1

    .line 130
    .line 131
    shr-int/lit8 p2, p1, 0x8

    .line 132
    .line 133
    and-int/lit16 p2, p2, 0xff

    .line 134
    .line 135
    int-to-byte p2, p2

    .line 136
    aput-byte p2, v2, v5

    .line 137
    .line 138
    and-int/lit16 p1, p1, 0xff

    .line 139
    .line 140
    int-to-byte p1, p1

    .line 141
    const/4 p2, 0x7

    .line 142
    aput-byte p1, v2, p2

    .line 143
    .line 144
    invoke-interface {v8, v0, v10}, Lk2/o;->d(ILb3/h;)V

    .line 145
    .line 146
    .line 147
    add-int/2addr v3, v6

    .line 148
    add-int/2addr v3, v0

    .line 149
    return v3

    .line 150
    :cond_7
    iget-object p1, v2, Lm2/j;->p:Lb3/h;

    .line 151
    .line 152
    invoke-virtual {p1}, Lb3/h;->m()I

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    const/4 v4, -0x2

    .line 157
    invoke-virtual {p1, v4}, Lb3/h;->r(I)V

    .line 158
    .line 159
    .line 160
    mul-int/2addr v2, v5

    .line 161
    add-int/2addr v2, v9

    .line 162
    if-eqz p2, :cond_8

    .line 163
    .line 164
    invoke-virtual {v10, v2}, Lb3/h;->n(I)V

    .line 165
    .line 166
    .line 167
    iget-object v4, p1, Lb3/h;->c:Ljava/io/Serializable;

    .line 168
    .line 169
    check-cast v4, [B

    .line 170
    .line 171
    invoke-virtual {v10, v4, v1, v2}, Lb3/h;->a([BII)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1, v2}, Lb3/h;->r(I)V

    .line 175
    .line 176
    .line 177
    iget-object p1, v10, Lb3/h;->c:Ljava/io/Serializable;

    .line 178
    .line 179
    check-cast p1, [B

    .line 180
    .line 181
    aget-byte v1, p1, v9

    .line 182
    .line 183
    and-int/lit16 v1, v1, 0xff

    .line 184
    .line 185
    shl-int/lit8 v0, v1, 0x8

    .line 186
    .line 187
    aget-byte v1, p1, v7

    .line 188
    .line 189
    and-int/lit16 v1, v1, 0xff

    .line 190
    .line 191
    or-int/2addr v0, v1

    .line 192
    add-int/2addr v0, p2

    .line 193
    shr-int/lit8 p2, v0, 0x8

    .line 194
    .line 195
    and-int/lit16 p2, p2, 0xff

    .line 196
    .line 197
    int-to-byte p2, p2

    .line 198
    aput-byte p2, p1, v9

    .line 199
    .line 200
    and-int/lit16 p2, v0, 0xff

    .line 201
    .line 202
    int-to-byte p2, p2

    .line 203
    aput-byte p2, p1, v7

    .line 204
    .line 205
    goto :goto_5

    .line 206
    :cond_8
    move-object v10, p1

    .line 207
    :goto_5
    invoke-interface {v8, v2, v10}, Lk2/o;->d(ILb3/h;)V

    .line 208
    .line 209
    .line 210
    add-int/2addr v3, v6

    .line 211
    add-int/2addr v3, v2

    .line 212
    return v3
.end method
