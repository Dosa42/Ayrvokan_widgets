.class public final Ln2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk2/h;


# instance fields
.field public final a:Ln2/b;

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
    new-instance v0, Ln2/b;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ln2/b;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Ln2/a;->a:Ln2/b;

    .line 11
    .line 12
    new-instance v0, Lb3/h;

    .line 13
    .line 14
    const/16 v1, 0xae2

    .line 15
    .line 16
    invoke-direct {v0, v1}, Lb3/h;-><init>(I)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Ln2/a;->b:Lb3/h;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final a(Lk2/f;)I
    .locals 5

    .line 1
    iget-object v0, p0, Ln2/a;->b:Lb3/h;

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
    const/16 v3, 0xae2

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
    iget-boolean p1, p0, Ln2/a;->c:Z

    .line 25
    .line 26
    iget-object v1, p0, Ln2/a;->a:Ln2/b;

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    const-wide/16 v3, 0x0

    .line 31
    .line 32
    iput-wide v3, v1, Ln2/b;->l:J

    .line 33
    .line 34
    const/4 p1, 0x1

    .line 35
    iput-boolean p1, p0, Ln2/a;->c:Z

    .line 36
    .line 37
    :cond_1
    invoke-virtual {v1, v0}, Ln2/b;->b(Lb3/h;)V

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

    iget-object v1, p0, Ln2/a;->a:Ln2/b;

    invoke-virtual {v1, p1, v0}, Ln2/b;->e(Lk2/i;Ln2/e0;)V

    invoke-virtual {p1}, Lw2/p;->j()V

    return-void
.end method

.method public final c(Lk2/f;)Z
    .locals 13

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
    move v4, v2

    .line 36
    move v5, v3

    .line 37
    :goto_1
    iget-object v7, v0, Lb3/h;->c:Ljava/io/Serializable;

    .line 38
    .line 39
    check-cast v7, [B

    .line 40
    .line 41
    const/4 v8, 0x6

    .line 42
    invoke-virtual {p1, v7, v2, v8, v2}, Lk2/f;->b([BIIZ)Z

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
    move-result v7

    .line 52
    const/16 v9, 0xb77

    .line 53
    .line 54
    if-eq v7, v9, :cond_1

    .line 55
    .line 56
    iput v2, p1, Lk2/f;->f:I

    .line 57
    .line 58
    add-int/lit8 v5, v5, 0x1

    .line 59
    .line 60
    sub-int v4, v5, v3

    .line 61
    .line 62
    const/16 v7, 0x2000

    .line 63
    .line 64
    if-lt v4, v7, :cond_0

    .line 65
    .line 66
    return v2

    .line 67
    :cond_0
    invoke-virtual {p1, v5, v2}, Lk2/f;->a(IZ)Z

    .line 68
    .line 69
    .line 70
    move v4, v2

    .line 71
    goto :goto_1

    .line 72
    :cond_1
    const/4 v7, 0x1

    .line 73
    add-int/2addr v4, v7

    .line 74
    const/4 v9, 0x4

    .line 75
    if-lt v4, v9, :cond_2

    .line 76
    .line 77
    return v7

    .line 78
    :cond_2
    iget-object v10, v0, Lb3/h;->c:Ljava/io/Serializable;

    .line 79
    .line 80
    check-cast v10, [B

    .line 81
    .line 82
    array-length v11, v10

    .line 83
    const/4 v12, -0x1

    .line 84
    if-ge v11, v8, :cond_3

    .line 85
    .line 86
    move v9, v12

    .line 87
    goto :goto_3

    .line 88
    :cond_3
    const/4 v11, 0x5

    .line 89
    aget-byte v11, v10, v11

    .line 90
    .line 91
    and-int/lit16 v11, v11, 0xf8

    .line 92
    .line 93
    shr-int/2addr v11, v6

    .line 94
    if-le v11, v1, :cond_4

    .line 95
    .line 96
    move v11, v7

    .line 97
    goto :goto_2

    .line 98
    :cond_4
    move v11, v2

    .line 99
    :goto_2
    if-eqz v11, :cond_5

    .line 100
    .line 101
    const/4 v8, 0x2

    .line 102
    aget-byte v9, v10, v8

    .line 103
    .line 104
    and-int/lit8 v9, v9, 0x7

    .line 105
    .line 106
    shl-int/lit8 v9, v9, 0x8

    .line 107
    .line 108
    aget-byte v10, v10, v6

    .line 109
    .line 110
    and-int/lit16 v10, v10, 0xff

    .line 111
    .line 112
    or-int/2addr v9, v10

    .line 113
    add-int/2addr v9, v7

    .line 114
    mul-int/2addr v9, v8

    .line 115
    goto :goto_3

    .line 116
    :cond_5
    aget-byte v7, v10, v9

    .line 117
    .line 118
    and-int/lit16 v9, v7, 0xc0

    .line 119
    .line 120
    shr-int/lit8 v8, v9, 0x6

    .line 121
    .line 122
    and-int/lit8 v7, v7, 0x3f

    .line 123
    .line 124
    invoke-static {v8, v7}, Lc1/b;->h(II)I

    .line 125
    .line 126
    .line 127
    move-result v9

    .line 128
    :goto_3
    if-ne v9, v12, :cond_6

    .line 129
    .line 130
    return v2

    .line 131
    :cond_6
    add-int/lit8 v9, v9, -0x6

    .line 132
    .line 133
    invoke-virtual {p1, v9, v2}, Lk2/f;->a(IZ)Z

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_7
    invoke-virtual {v0, v6}, Lb3/h;->r(I)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0}, Lb3/h;->g()I

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    add-int/lit8 v5, v4, 0xa

    .line 145
    .line 146
    add-int/2addr v3, v5

    .line 147
    invoke-virtual {p1, v4, v2}, Lk2/f;->a(IZ)Z

    .line 148
    .line 149
    .line 150
    goto/16 :goto_0
.end method
