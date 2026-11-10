.class public final Lb3/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public b:[B

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lb3/g;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lb3/n;->e:[B

    iput-object v0, p0, Lb3/g;->b:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lb3/g;->a:I

    .line 2
    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lb3/g;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lb3/g;->a:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb3/g;->b:[B

    iput p2, p0, Lb3/g;->e:I

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lb3/g;->a:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lb3/g;->b:[B

    iput p2, p0, Lb3/g;->d:I

    iput p3, p0, Lb3/g;->c:I

    const/4 p1, 0x0

    iput p1, p0, Lb3/g;->e:I

    invoke-virtual {p0}, Lb3/g;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget v0, p0, Lb3/g;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_1

    .line 9
    :pswitch_0
    iget v0, p0, Lb3/g;->c:I

    .line 10
    .line 11
    if-ltz v0, :cond_0

    .line 12
    .line 13
    iget v3, p0, Lb3/g;->e:I

    .line 14
    .line 15
    if-lt v0, v3, :cond_1

    .line 16
    .line 17
    if-ne v0, v3, :cond_0

    .line 18
    .line 19
    iget v0, p0, Lb3/g;->d:I

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v1, v2

    .line 25
    :cond_1
    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/i0;->m(Z)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :goto_1
    iget v0, p0, Lb3/g;->d:I

    .line 30
    .line 31
    if-ltz v0, :cond_2

    .line 32
    .line 33
    iget v3, p0, Lb3/g;->c:I

    .line 34
    .line 35
    if-lt v0, v3, :cond_3

    .line 36
    .line 37
    if-ne v0, v3, :cond_2

    .line 38
    .line 39
    iget v0, p0, Lb3/g;->e:I

    .line 40
    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_2
    move v1, v2

    .line 45
    :cond_3
    :goto_2
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/i0;->m(Z)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(I)Z
    .locals 4

    .line 1
    iget v0, p0, Lb3/g;->d:I

    div-int/lit8 v1, p1, 0x8

    add-int v2, v0, v1

    iget v3, p0, Lb3/g;->e:I

    add-int/2addr v3, p1

    mul-int/lit8 v1, v1, 0x8

    sub-int/2addr v3, v1

    const/4 p1, 0x7

    if-le v3, p1, :cond_0

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, -0x8

    :cond_0
    const/4 p1, 0x1

    :cond_1
    :goto_0
    add-int/2addr v0, p1

    if-gt v0, v2, :cond_2

    iget v1, p0, Lb3/g;->c:I

    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v0}, Lb3/g;->j(I)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_2
    iget v0, p0, Lb3/g;->c:I

    if-lt v2, v0, :cond_4

    if-ne v2, v0, :cond_3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :cond_4
    :goto_1
    return p1
.end method

.method public final c()Z
    .locals 7

    .line 1
    iget v0, p0, Lb3/g;->d:I

    iget v1, p0, Lb3/g;->e:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, p0, Lb3/g;->d:I

    iget v5, p0, Lb3/g;->c:I

    if-ge v4, v5, :cond_0

    invoke-virtual {p0}, Lb3/g;->d()Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget v4, p0, Lb3/g;->d:I

    iget v5, p0, Lb3/g;->c:I

    const/4 v6, 0x1

    if-ne v4, v5, :cond_1

    move v4, v6

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    iput v0, p0, Lb3/g;->d:I

    iput v1, p0, Lb3/g;->e:I

    if-nez v4, :cond_2

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v6

    invoke-virtual {p0, v3}, Lb3/g;->b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v2, v6

    :cond_2
    return v2
.end method

.method public final d()Z
    .locals 5

    .line 1
    iget v0, p0, Lb3/g;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/16 v3, 0x80

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto :goto_1

    .line 11
    :pswitch_0
    iget-object v0, p0, Lb3/g;->b:[B

    .line 12
    .line 13
    iget v4, p0, Lb3/g;->c:I

    .line 14
    .line 15
    aget-byte v0, v0, v4

    .line 16
    .line 17
    iget v4, p0, Lb3/g;->d:I

    .line 18
    .line 19
    shr-int/2addr v3, v4

    .line 20
    and-int/2addr v0, v3

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v1, v2

    .line 25
    :goto_0
    invoke-virtual {p0}, Lb3/g;->k()V

    .line 26
    .line 27
    .line 28
    return v1

    .line 29
    :goto_1
    iget-object v0, p0, Lb3/g;->b:[B

    .line 30
    .line 31
    iget v4, p0, Lb3/g;->d:I

    .line 32
    .line 33
    aget-byte v0, v0, v4

    .line 34
    .line 35
    iget v4, p0, Lb3/g;->e:I

    .line 36
    .line 37
    shr-int/2addr v3, v4

    .line 38
    and-int/2addr v0, v3

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_1
    move v1, v2

    .line 43
    :goto_2
    invoke-virtual {p0}, Lb3/g;->k()V

    .line 44
    .line 45
    .line 46
    return v1

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e(I)I
    .locals 10

    .line 1
    iget v0, p0, Lb3/g;->a:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/16 v3, 0x8

    .line 6
    .line 7
    const/4 v4, 0x1

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    goto :goto_2

    .line 12
    :pswitch_0
    if-nez p1, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    iget v0, p0, Lb3/g;->d:I

    .line 16
    .line 17
    add-int/2addr v0, p1

    .line 18
    iput v0, p0, Lb3/g;->d:I

    .line 19
    .line 20
    move v0, v2

    .line 21
    :goto_0
    iget v5, p0, Lb3/g;->d:I

    .line 22
    .line 23
    if-le v5, v3, :cond_1

    .line 24
    .line 25
    add-int/lit8 v5, v5, -0x8

    .line 26
    .line 27
    iput v5, p0, Lb3/g;->d:I

    .line 28
    .line 29
    iget-object v6, p0, Lb3/g;->b:[B

    .line 30
    .line 31
    iget v7, p0, Lb3/g;->c:I

    .line 32
    .line 33
    add-int/lit8 v8, v7, 0x1

    .line 34
    .line 35
    iput v8, p0, Lb3/g;->c:I

    .line 36
    .line 37
    aget-byte v6, v6, v7

    .line 38
    .line 39
    and-int/lit16 v6, v6, 0xff

    .line 40
    .line 41
    shl-int v5, v6, v5

    .line 42
    .line 43
    or-int/2addr v0, v5

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object v6, p0, Lb3/g;->b:[B

    .line 46
    .line 47
    iget v7, p0, Lb3/g;->c:I

    .line 48
    .line 49
    aget-byte v6, v6, v7

    .line 50
    .line 51
    and-int/lit16 v6, v6, 0xff

    .line 52
    .line 53
    rsub-int/lit8 v8, v5, 0x8

    .line 54
    .line 55
    shr-int/2addr v6, v8

    .line 56
    or-int/2addr v0, v6

    .line 57
    rsub-int/lit8 p1, p1, 0x20

    .line 58
    .line 59
    ushr-int p1, v1, p1

    .line 60
    .line 61
    and-int/2addr p1, v0

    .line 62
    if-ne v5, v3, :cond_2

    .line 63
    .line 64
    iput v2, p0, Lb3/g;->d:I

    .line 65
    .line 66
    add-int/2addr v7, v4

    .line 67
    iput v7, p0, Lb3/g;->c:I

    .line 68
    .line 69
    :cond_2
    invoke-virtual {p0}, Lb3/g;->a()V

    .line 70
    .line 71
    .line 72
    move v2, p1

    .line 73
    :goto_1
    return v2

    .line 74
    :goto_2
    iget v0, p0, Lb3/g;->e:I

    .line 75
    .line 76
    add-int/2addr v0, p1

    .line 77
    iput v0, p0, Lb3/g;->e:I

    .line 78
    .line 79
    move v0, v2

    .line 80
    :goto_3
    iget v5, p0, Lb3/g;->e:I

    .line 81
    .line 82
    const/4 v6, 0x2

    .line 83
    if-le v5, v3, :cond_4

    .line 84
    .line 85
    add-int/lit8 v5, v5, -0x8

    .line 86
    .line 87
    iput v5, p0, Lb3/g;->e:I

    .line 88
    .line 89
    iget-object v7, p0, Lb3/g;->b:[B

    .line 90
    .line 91
    iget v8, p0, Lb3/g;->d:I

    .line 92
    .line 93
    aget-byte v7, v7, v8

    .line 94
    .line 95
    and-int/lit16 v7, v7, 0xff

    .line 96
    .line 97
    shl-int v5, v7, v5

    .line 98
    .line 99
    or-int/2addr v0, v5

    .line 100
    add-int/lit8 v5, v8, 0x1

    .line 101
    .line 102
    invoke-virtual {p0, v5}, Lb3/g;->j(I)Z

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    if-eqz v5, :cond_3

    .line 107
    .line 108
    goto :goto_4

    .line 109
    :cond_3
    move v6, v4

    .line 110
    :goto_4
    add-int/2addr v8, v6

    .line 111
    iput v8, p0, Lb3/g;->d:I

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_4
    iget-object v7, p0, Lb3/g;->b:[B

    .line 115
    .line 116
    iget v8, p0, Lb3/g;->d:I

    .line 117
    .line 118
    aget-byte v7, v7, v8

    .line 119
    .line 120
    and-int/lit16 v7, v7, 0xff

    .line 121
    .line 122
    rsub-int/lit8 v9, v5, 0x8

    .line 123
    .line 124
    shr-int/2addr v7, v9

    .line 125
    or-int/2addr v0, v7

    .line 126
    rsub-int/lit8 p1, p1, 0x20

    .line 127
    .line 128
    ushr-int p1, v1, p1

    .line 129
    .line 130
    and-int/2addr p1, v0

    .line 131
    if-ne v5, v3, :cond_6

    .line 132
    .line 133
    iput v2, p0, Lb3/g;->e:I

    .line 134
    .line 135
    add-int/lit8 v0, v8, 0x1

    .line 136
    .line 137
    invoke-virtual {p0, v0}, Lb3/g;->j(I)Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-eqz v0, :cond_5

    .line 142
    .line 143
    move v4, v6

    .line 144
    :cond_5
    add-int/2addr v8, v4

    .line 145
    iput v8, p0, Lb3/g;->d:I

    .line 146
    .line 147
    :cond_6
    invoke-virtual {p0}, Lb3/g;->a()V

    .line 148
    .line 149
    .line 150
    return p1

    .line 151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final f([BI)V
    .locals 9

    .line 1
    shr-int/lit8 v0, p2, 0x3

    const/4 v1, 0x0

    add-int/2addr v0, v1

    move v2, v1

    :goto_0
    const/16 v3, 0x8

    const/16 v4, 0xff

    if-ge v2, v0, :cond_0

    iget-object v5, p0, Lb3/g;->b:[B

    iget v6, p0, Lb3/g;->c:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lb3/g;->c:I

    aget-byte v6, v5, v6

    iget v8, p0, Lb3/g;->d:I

    shl-int/2addr v6, v8

    int-to-byte v6, v6

    aput-byte v6, p1, v2

    aget-byte v5, v5, v7

    and-int/2addr v4, v5

    sub-int/2addr v3, v8

    shr-int v3, v4, v3

    or-int/2addr v3, v6

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    and-int/lit8 p2, p2, 0x7

    if-nez p2, :cond_1

    return-void

    :cond_1
    aget-byte v2, p1, v0

    shr-int v5, v4, p2

    and-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    iget v5, p0, Lb3/g;->d:I

    add-int v6, v5, p2

    if-le v6, v3, :cond_2

    iget-object v6, p0, Lb3/g;->b:[B

    iget v7, p0, Lb3/g;->c:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lb3/g;->c:I

    aget-byte v6, v6, v7

    and-int/2addr v6, v4

    shl-int/2addr v6, v5

    or-int/2addr v2, v6

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    sub-int/2addr v5, v3

    iput v5, p0, Lb3/g;->d:I

    :cond_2
    iget v2, p0, Lb3/g;->d:I

    add-int/2addr v2, p2

    iput v2, p0, Lb3/g;->d:I

    iget-object v5, p0, Lb3/g;->b:[B

    iget v6, p0, Lb3/g;->c:I

    aget-byte v5, v5, v6

    and-int/2addr v4, v5

    rsub-int/lit8 v5, v2, 0x8

    shr-int/2addr v4, v5

    aget-byte v5, p1, v0

    rsub-int/lit8 p2, p2, 0x8

    shl-int p2, v4, p2

    int-to-byte p2, p2

    or-int/2addr p2, v5

    int-to-byte p2, p2

    aput-byte p2, p1, v0

    if-ne v2, v3, :cond_3

    iput v1, p0, Lb3/g;->d:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lb3/g;->c:I

    :cond_3
    invoke-virtual {p0}, Lb3/g;->a()V

    return-void
.end method

.method public final g()I
    .locals 4

    .line 1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lb3/g;->d()Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    shl-int v3, v2, v1

    sub-int/2addr v3, v2

    if-lez v1, :cond_1

    invoke-virtual {p0, v1}, Lb3/g;->e(I)I

    move-result v0

    :cond_1
    add-int/2addr v3, v0

    return v3
.end method

.method public final h()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lb3/g;->g()I

    move-result v0

    rem-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    mul-int/2addr v0, v1

    return v0
.end method

.method public final i(I)V
    .locals 1

    .line 1
    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Lb3/g;->c:I

    mul-int/lit8 v0, v0, 0x8

    sub-int/2addr p1, v0

    iput p1, p0, Lb3/g;->d:I

    invoke-virtual {p0}, Lb3/g;->a()V

    return-void
.end method

.method public final j(I)Z
    .locals 3

    .line 1
    const/4 v0, 0x2

    if-gt v0, p1, :cond_0

    iget v0, p0, Lb3/g;->c:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lb3/g;->b:[B

    aget-byte v1, v0, p1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, p1, -0x2

    aget-byte v1, v0, v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    aget-byte p1, v0, p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final k()V
    .locals 4

    .line 1
    iget v0, p0, Lb3/g;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x8

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :pswitch_0
    iget v0, p0, Lb3/g;->d:I

    .line 12
    .line 13
    add-int/2addr v0, v3

    .line 14
    iput v0, p0, Lb3/g;->d:I

    .line 15
    .line 16
    if-ne v0, v2, :cond_0

    .line 17
    .line 18
    iput v1, p0, Lb3/g;->d:I

    .line 19
    .line 20
    iget v0, p0, Lb3/g;->c:I

    .line 21
    .line 22
    add-int/2addr v0, v3

    .line 23
    iput v0, p0, Lb3/g;->c:I

    .line 24
    .line 25
    :cond_0
    invoke-virtual {p0}, Lb3/g;->a()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :goto_0
    iget v0, p0, Lb3/g;->e:I

    .line 30
    .line 31
    add-int/2addr v0, v3

    .line 32
    iput v0, p0, Lb3/g;->e:I

    .line 33
    .line 34
    if-ne v0, v2, :cond_2

    .line 35
    .line 36
    iput v1, p0, Lb3/g;->e:I

    .line 37
    .line 38
    iget v0, p0, Lb3/g;->d:I

    .line 39
    .line 40
    add-int/lit8 v1, v0, 0x1

    .line 41
    .line 42
    invoke-virtual {p0, v1}, Lb3/g;->j(I)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    const/4 v3, 0x2

    .line 49
    :cond_1
    add-int/2addr v0, v3

    .line 50
    iput v0, p0, Lb3/g;->d:I

    .line 51
    .line 52
    :cond_2
    invoke-virtual {p0}, Lb3/g;->a()V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final l(I)V
    .locals 5

    .line 1
    iget v0, p0, Lb3/g;->a:I

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :pswitch_0
    div-int/lit8 v0, p1, 0x8

    .line 9
    .line 10
    iget v2, p0, Lb3/g;->c:I

    .line 11
    .line 12
    add-int/2addr v2, v0

    .line 13
    iput v2, p0, Lb3/g;->c:I

    .line 14
    .line 15
    iget v3, p0, Lb3/g;->d:I

    .line 16
    .line 17
    mul-int/lit8 v0, v0, 0x8

    .line 18
    .line 19
    sub-int/2addr p1, v0

    .line 20
    add-int/2addr p1, v3

    .line 21
    iput p1, p0, Lb3/g;->d:I

    .line 22
    .line 23
    if-le p1, v1, :cond_0

    .line 24
    .line 25
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    iput v2, p0, Lb3/g;->c:I

    .line 28
    .line 29
    add-int/lit8 p1, p1, -0x8

    .line 30
    .line 31
    iput p1, p0, Lb3/g;->d:I

    .line 32
    .line 33
    :cond_0
    invoke-virtual {p0}, Lb3/g;->a()V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :goto_0
    iget v0, p0, Lb3/g;->d:I

    .line 38
    .line 39
    div-int/lit8 v2, p1, 0x8

    .line 40
    .line 41
    add-int v3, v0, v2

    .line 42
    .line 43
    iput v3, p0, Lb3/g;->d:I

    .line 44
    .line 45
    iget v4, p0, Lb3/g;->e:I

    .line 46
    .line 47
    mul-int/lit8 v2, v2, 0x8

    .line 48
    .line 49
    sub-int/2addr p1, v2

    .line 50
    add-int/2addr p1, v4

    .line 51
    iput p1, p0, Lb3/g;->e:I

    .line 52
    .line 53
    if-le p1, v1, :cond_1

    .line 54
    .line 55
    add-int/lit8 v3, v3, 0x1

    .line 56
    .line 57
    iput v3, p0, Lb3/g;->d:I

    .line 58
    .line 59
    add-int/lit8 p1, p1, -0x8

    .line 60
    .line 61
    iput p1, p0, Lb3/g;->e:I

    .line 62
    .line 63
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 64
    .line 65
    iget p1, p0, Lb3/g;->d:I

    .line 66
    .line 67
    if-gt v0, p1, :cond_2

    .line 68
    .line 69
    invoke-virtual {p0, v0}, Lb3/g;->j(I)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_1

    .line 74
    .line 75
    iget p1, p0, Lb3/g;->d:I

    .line 76
    .line 77
    add-int/lit8 p1, p1, 0x1

    .line 78
    .line 79
    iput p1, p0, Lb3/g;->d:I

    .line 80
    .line 81
    add-int/lit8 v0, v0, 0x2

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    invoke-virtual {p0}, Lb3/g;->a()V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    nop

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
