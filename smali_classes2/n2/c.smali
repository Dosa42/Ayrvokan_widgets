.class public final Ln2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk2/h;


# instance fields
.field public final a:Ln2/d;

.field public final b:Lb3/h;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ln2/d;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ln2/d;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Ln2/c;->a:Ln2/d;

    .line 11
    .line 12
    new-instance v0, Lb3/h;

    .line 13
    .line 14
    const/16 v1, 0x4000

    .line 15
    .line 16
    invoke-direct {v0, v1}, Lb3/h;-><init>(I)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Ln2/c;->b:Lb3/h;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final a(Lk2/f;)I
    .locals 5

    .line 1
    iget-object v0, p0, Ln2/c;->b:Lb3/h;

    .line 2
    .line 3
    iget-object v1, v0, Lb3/h;->c:Ljava/io/Serializable;

    .line 4
    .line 5
    check-cast v1, [B

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/16 v3, 0x4000

    .line 9
    .line 10
    invoke-virtual {p1, v1, v2, v3}, Lk2/f;->c([BII)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const/4 v1, -0x1

    .line 15
    if-ne p1, v1, :cond_0

    .line 16
    .line 17
    return v1

    .line 18
    :cond_0
    invoke-virtual {v0, v2}, Lb3/h;->q(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lb3/h;->p(I)V

    .line 22
    .line 23
    .line 24
    iget-boolean p1, p0, Ln2/c;->c:Z

    .line 25
    .line 26
    iget-object v1, p0, Ln2/c;->a:Ln2/d;

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    const-wide/16 v3, 0x0

    .line 31
    .line 32
    iput-wide v3, v1, Ln2/d;->m:J

    .line 33
    .line 34
    const/4 p1, 0x1

    .line 35
    iput-boolean p1, p0, Ln2/c;->c:Z

    .line 36
    .line 37
    :cond_1
    invoke-virtual {v1, v0}, Ln2/d;->b(Lb3/h;)V

    .line 38
    .line 39
    .line 40
    return v2
.end method

.method public final b(Lw2/p;)V
    .locals 2

    .line 1
    new-instance v0, Ln2/e0;

    invoke-direct {v0}, Ln2/e0;-><init>()V

    iget-object v1, p0, Ln2/c;->a:Ln2/d;

    invoke-virtual {v1, p1, v0}, Ln2/d;->e(Lk2/i;Ln2/e0;)V

    invoke-virtual {p1}, Lw2/p;->j()V

    return-void
.end method

.method public final c(Lk2/f;)Z
    .locals 14

    .line 1
    new-instance v0, Lb3/h;

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lb3/h;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    move v3, v2

    .line 10
    :goto_0
    iget-object v4, v0, Lb3/h;->c:Ljava/io/Serializable;

    .line 11
    .line 12
    check-cast v4, [B

    .line 13
    .line 14
    invoke-virtual {p1, v4, v2, v1, v2}, Lk2/f;->b([BIIZ)Z

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v2}, Lb3/h;->q(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lb3/h;->j()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    const v5, 0x494433

    .line 25
    .line 26
    .line 27
    const/4 v6, 0x3

    .line 28
    if-eq v4, v5, :cond_7

    .line 29
    .line 30
    iput v2, p1, Lk2/f;->f:I

    .line 31
    .line 32
    invoke-virtual {p1, v3, v2}, Lk2/f;->a(IZ)Z

    .line 33
    .line 34
    .line 35
    move v1, v2

    .line 36
    move v4, v3

    .line 37
    :goto_1
    iget-object v5, v0, Lb3/h;->c:Ljava/io/Serializable;

    .line 38
    .line 39
    check-cast v5, [B

    .line 40
    .line 41
    const/4 v7, 0x7

    .line 42
    invoke-virtual {p1, v5, v2, v7, v2}, Lk2/f;->b([BIIZ)Z

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v2}, Lb3/h;->q(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lb3/h;->m()I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    const v8, 0xac40

    .line 53
    .line 54
    .line 55
    const v9, 0xac41

    .line 56
    .line 57
    .line 58
    if-eq v5, v8, :cond_1

    .line 59
    .line 60
    if-eq v5, v9, :cond_1

    .line 61
    .line 62
    iput v2, p1, Lk2/f;->f:I

    .line 63
    .line 64
    add-int/lit8 v4, v4, 0x1

    .line 65
    .line 66
    sub-int v1, v4, v3

    .line 67
    .line 68
    const/16 v5, 0x2000

    .line 69
    .line 70
    if-lt v1, v5, :cond_0

    .line 71
    .line 72
    return v2

    .line 73
    :cond_0
    invoke-virtual {p1, v4, v2}, Lk2/f;->a(IZ)Z

    .line 74
    .line 75
    .line 76
    move v1, v2

    .line 77
    goto :goto_1

    .line 78
    :cond_1
    const/4 v8, 0x1

    .line 79
    add-int/2addr v1, v8

    .line 80
    const/4 v10, 0x4

    .line 81
    if-lt v1, v10, :cond_2

    .line 82
    .line 83
    return v8

    .line 84
    :cond_2
    iget-object v8, v0, Lb3/h;->c:Ljava/io/Serializable;

    .line 85
    .line 86
    check-cast v8, [B

    .line 87
    .line 88
    array-length v11, v8

    .line 89
    const/4 v12, -0x1

    .line 90
    if-ge v11, v7, :cond_3

    .line 91
    .line 92
    move v11, v12

    .line 93
    goto :goto_3

    .line 94
    :cond_3
    const/4 v11, 0x2

    .line 95
    aget-byte v11, v8, v11

    .line 96
    .line 97
    and-int/lit16 v11, v11, 0xff

    .line 98
    .line 99
    shl-int/lit8 v11, v11, 0x8

    .line 100
    .line 101
    aget-byte v13, v8, v6

    .line 102
    .line 103
    and-int/lit16 v13, v13, 0xff

    .line 104
    .line 105
    or-int/2addr v11, v13

    .line 106
    const v13, 0xffff

    .line 107
    .line 108
    .line 109
    if-ne v11, v13, :cond_4

    .line 110
    .line 111
    aget-byte v10, v8, v10

    .line 112
    .line 113
    and-int/lit16 v10, v10, 0xff

    .line 114
    .line 115
    shl-int/lit8 v10, v10, 0x10

    .line 116
    .line 117
    const/4 v11, 0x5

    .line 118
    aget-byte v11, v8, v11

    .line 119
    .line 120
    and-int/lit16 v11, v11, 0xff

    .line 121
    .line 122
    shl-int/lit8 v11, v11, 0x8

    .line 123
    .line 124
    or-int/2addr v10, v11

    .line 125
    const/4 v11, 0x6

    .line 126
    aget-byte v8, v8, v11

    .line 127
    .line 128
    and-int/lit16 v8, v8, 0xff

    .line 129
    .line 130
    or-int v11, v10, v8

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_4
    move v7, v10

    .line 134
    :goto_2
    if-ne v5, v9, :cond_5

    .line 135
    .line 136
    add-int/lit8 v7, v7, 0x2

    .line 137
    .line 138
    :cond_5
    add-int/2addr v11, v7

    .line 139
    :goto_3
    if-ne v11, v12, :cond_6

    .line 140
    .line 141
    return v2

    .line 142
    :cond_6
    add-int/lit8 v11, v11, -0x7

    .line 143
    .line 144
    invoke-virtual {p1, v11, v2}, Lk2/f;->a(IZ)Z

    .line 145
    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_7
    invoke-virtual {v0, v6}, Lb3/h;->r(I)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0}, Lb3/h;->g()I

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    add-int/lit8 v5, v4, 0xa

    .line 156
    .line 157
    add-int/2addr v3, v5

    .line 158
    invoke-virtual {p1, v4, v2}, Lk2/f;->a(IZ)Z

    .line 159
    .line 160
    .line 161
    goto/16 :goto_0
.end method
