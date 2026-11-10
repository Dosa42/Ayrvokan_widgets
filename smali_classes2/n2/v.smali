.class public final Ln2/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln2/f0;


# instance fields
.field public final a:Ln2/u;

.field public final b:Lb3/h;

.field public c:I

.field public d:I

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Ln2/u;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln2/v;->a:Ln2/u;

    new-instance p1, Lb3/h;

    const/16 v0, 0x20

    invoke-direct {p1, v0}, Lb3/h;-><init>(I)V

    iput-object p1, p0, Ln2/v;->b:Lb3/h;

    return-void
.end method


# virtual methods
.method public final a(Lb3/l;Lk2/i;Ln2/e0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln2/v;->a:Ln2/u;

    invoke-interface {v0, p1, p2, p3}, Ln2/u;->a(Lb3/l;Lk2/i;Ln2/e0;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Ln2/v;->f:Z

    return-void
.end method

.method public final b(ILb3/h;)V
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    and-int/2addr p1, v0

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    move p1, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move p1, v1

    .line 9
    :goto_0
    const/4 v2, -0x1

    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-virtual {p2}, Lb3/h;->h()I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    iget v4, p2, Lb3/h;->a:I

    .line 17
    .line 18
    add-int/2addr v4, v3

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    move v4, v2

    .line 21
    :goto_1
    iget-boolean v3, p0, Ln2/v;->f:Z

    .line 22
    .line 23
    if-eqz v3, :cond_3

    .line 24
    .line 25
    if-nez p1, :cond_2

    .line 26
    .line 27
    return-void

    .line 28
    :cond_2
    iput-boolean v1, p0, Ln2/v;->f:Z

    .line 29
    .line 30
    invoke-virtual {p2, v4}, Lb3/h;->q(I)V

    .line 31
    .line 32
    .line 33
    :goto_2
    iput v1, p0, Ln2/v;->d:I

    .line 34
    .line 35
    :cond_3
    :goto_3
    iget p1, p2, Lb3/h;->b:I

    .line 36
    .line 37
    iget v3, p2, Lb3/h;->a:I

    .line 38
    .line 39
    sub-int v4, p1, v3

    .line 40
    .line 41
    if-lez v4, :cond_a

    .line 42
    .line 43
    iget v4, p0, Ln2/v;->d:I

    .line 44
    .line 45
    const/16 v5, 0xff

    .line 46
    .line 47
    const/4 v6, 0x3

    .line 48
    iget-object v7, p0, Ln2/v;->b:Lb3/h;

    .line 49
    .line 50
    if-ge v4, v6, :cond_6

    .line 51
    .line 52
    if-nez v4, :cond_4

    .line 53
    .line 54
    invoke-virtual {p2}, Lb3/h;->h()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    iget v3, p2, Lb3/h;->a:I

    .line 59
    .line 60
    sub-int/2addr v3, v0

    .line 61
    invoke-virtual {p2, v3}, Lb3/h;->q(I)V

    .line 62
    .line 63
    .line 64
    if-ne p1, v5, :cond_4

    .line 65
    .line 66
    iput-boolean v0, p0, Ln2/v;->f:Z

    .line 67
    .line 68
    return-void

    .line 69
    :cond_4
    iget p1, p2, Lb3/h;->b:I

    .line 70
    .line 71
    iget v3, p2, Lb3/h;->a:I

    .line 72
    .line 73
    sub-int/2addr p1, v3

    .line 74
    iget v3, p0, Ln2/v;->d:I

    .line 75
    .line 76
    rsub-int/lit8 v3, v3, 0x3

    .line 77
    .line 78
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    iget-object v3, v7, Lb3/h;->c:Ljava/io/Serializable;

    .line 83
    .line 84
    check-cast v3, [B

    .line 85
    .line 86
    iget v4, p0, Ln2/v;->d:I

    .line 87
    .line 88
    invoke-virtual {p2, v3, v4, p1}, Lb3/h;->a([BII)V

    .line 89
    .line 90
    .line 91
    iget v3, p0, Ln2/v;->d:I

    .line 92
    .line 93
    add-int/2addr v3, p1

    .line 94
    iput v3, p0, Ln2/v;->d:I

    .line 95
    .line 96
    if-ne v3, v6, :cond_3

    .line 97
    .line 98
    invoke-virtual {v7, v6}, Lb3/h;->n(I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v7, v0}, Lb3/h;->r(I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v7}, Lb3/h;->h()I

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    invoke-virtual {v7}, Lb3/h;->h()I

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    and-int/lit16 v4, p1, 0x80

    .line 113
    .line 114
    if-eqz v4, :cond_5

    .line 115
    .line 116
    move v4, v0

    .line 117
    goto :goto_4

    .line 118
    :cond_5
    move v4, v1

    .line 119
    :goto_4
    iput-boolean v4, p0, Ln2/v;->e:Z

    .line 120
    .line 121
    and-int/lit8 p1, p1, 0xf

    .line 122
    .line 123
    shl-int/lit8 p1, p1, 0x8

    .line 124
    .line 125
    or-int/2addr p1, v3

    .line 126
    add-int/2addr p1, v6

    .line 127
    iput p1, p0, Ln2/v;->c:I

    .line 128
    .line 129
    iget-object v3, v7, Lb3/h;->c:Ljava/io/Serializable;

    .line 130
    .line 131
    move-object v4, v3

    .line 132
    check-cast v4, [B

    .line 133
    .line 134
    array-length v4, v4

    .line 135
    if-ge v4, p1, :cond_3

    .line 136
    .line 137
    check-cast v3, [B

    .line 138
    .line 139
    array-length v4, v3

    .line 140
    mul-int/lit8 v4, v4, 0x2

    .line 141
    .line 142
    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    const/16 v4, 0x1002

    .line 147
    .line 148
    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    invoke-virtual {v7, p1}, Lb3/h;->n(I)V

    .line 153
    .line 154
    .line 155
    iget-object p1, v7, Lb3/h;->c:Ljava/io/Serializable;

    .line 156
    .line 157
    check-cast p1, [B

    .line 158
    .line 159
    invoke-static {v3, v1, p1, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_6
    sub-int/2addr p1, v3

    .line 164
    iget v3, p0, Ln2/v;->c:I

    .line 165
    .line 166
    sub-int/2addr v3, v4

    .line 167
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    iget-object v3, v7, Lb3/h;->c:Ljava/io/Serializable;

    .line 172
    .line 173
    check-cast v3, [B

    .line 174
    .line 175
    iget v4, p0, Ln2/v;->d:I

    .line 176
    .line 177
    invoke-virtual {p2, v3, v4, p1}, Lb3/h;->a([BII)V

    .line 178
    .line 179
    .line 180
    iget v3, p0, Ln2/v;->d:I

    .line 181
    .line 182
    add-int/2addr v3, p1

    .line 183
    iput v3, p0, Ln2/v;->d:I

    .line 184
    .line 185
    iget p1, p0, Ln2/v;->c:I

    .line 186
    .line 187
    if-ne v3, p1, :cond_3

    .line 188
    .line 189
    iget-boolean v3, p0, Ln2/v;->e:Z

    .line 190
    .line 191
    if-eqz v3, :cond_9

    .line 192
    .line 193
    iget-object v3, v7, Lb3/h;->c:Ljava/io/Serializable;

    .line 194
    .line 195
    check-cast v3, [B

    .line 196
    .line 197
    sget v4, Lb3/n;->a:I

    .line 198
    .line 199
    move v4, v1

    .line 200
    move v6, v2

    .line 201
    :goto_5
    if-ge v4, p1, :cond_7

    .line 202
    .line 203
    shl-int/lit8 v8, v6, 0x8

    .line 204
    .line 205
    ushr-int/lit8 v6, v6, 0x18

    .line 206
    .line 207
    aget-byte v9, v3, v4

    .line 208
    .line 209
    and-int/2addr v9, v5

    .line 210
    xor-int/2addr v6, v9

    .line 211
    and-int/2addr v6, v5

    .line 212
    sget-object v9, Lb3/n;->j:[I

    .line 213
    .line 214
    aget v6, v9, v6

    .line 215
    .line 216
    xor-int/2addr v6, v8

    .line 217
    add-int/lit8 v4, v4, 0x1

    .line 218
    .line 219
    goto :goto_5

    .line 220
    :cond_7
    if-eqz v6, :cond_8

    .line 221
    .line 222
    iput-boolean v0, p0, Ln2/v;->f:Z

    .line 223
    .line 224
    return-void

    .line 225
    :cond_8
    iget p1, p0, Ln2/v;->c:I

    .line 226
    .line 227
    add-int/lit8 p1, p1, -0x4

    .line 228
    .line 229
    :cond_9
    invoke-virtual {v7, p1}, Lb3/h;->n(I)V

    .line 230
    .line 231
    .line 232
    iget-object p1, p0, Ln2/v;->a:Ln2/u;

    .line 233
    .line 234
    invoke-interface {p1, v7}, Ln2/u;->b(Lb3/h;)V

    .line 235
    .line 236
    .line 237
    goto/16 :goto_2

    .line 238
    .line 239
    :cond_a
    return-void
.end method
