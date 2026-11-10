.class public final Lb3/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lb3/n;->e:[B

    iput-object v0, p0, Lb3/h;->c:Ljava/io/Serializable;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [B

    iput-object v0, p0, Lb3/h;->c:Ljava/io/Serializable;

    iput p1, p0, Lb3/h;->b:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lb3/h;->a:I

    iput p2, p0, Lb3/h;->b:I

    iput-object p3, p0, Lb3/h;->c:Ljava/io/Serializable;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb3/h;->c:Ljava/io/Serializable;

    array-length p1, p1

    iput p1, p0, Lb3/h;->b:I

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb3/h;->c:Ljava/io/Serializable;

    iput p2, p0, Lb3/h;->b:I

    return-void
.end method


# virtual methods
.method public final a([BII)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb3/h;->c:Ljava/io/Serializable;

    check-cast v0, [B

    iget v1, p0, Lb3/h;->a:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lb3/h;->a:I

    add-int/2addr p1, p3

    iput p1, p0, Lb3/h;->a:I

    return-void
.end method

.method public final b()I
    .locals 5

    .line 1
    iget-object v0, p0, Lb3/h;->c:Ljava/io/Serializable;

    move-object v1, v0

    check-cast v1, [B

    iget v2, p0, Lb3/h;->a:I

    add-int/lit8 v3, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    move-object v2, v0

    check-cast v2, [B

    add-int/lit8 v4, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    move-object v2, v0

    check-cast v2, [B

    add-int/lit8 v3, v4, 0x1

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    check-cast v0, [B

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lb3/h;->a:I

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 9

    .line 1
    iget v0, p0, Lb3/h;->b:I

    .line 2
    .line 3
    iget v1, p0, Lb3/h;->a:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    return-object v0

    .line 10
    :cond_0
    :goto_0
    iget v0, p0, Lb3/h;->b:I

    .line 11
    .line 12
    const/16 v2, 0xd

    .line 13
    .line 14
    const/16 v3, 0xa

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    if-ge v1, v0, :cond_3

    .line 18
    .line 19
    iget-object v0, p0, Lb3/h;->c:Ljava/io/Serializable;

    .line 20
    .line 21
    check-cast v0, [B

    .line 22
    .line 23
    aget-byte v0, v0, v1

    .line 24
    .line 25
    sget v5, Lb3/n;->a:I

    .line 26
    .line 27
    if-eq v0, v3, :cond_2

    .line 28
    .line 29
    if-ne v0, v2, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const/4 v0, 0x0

    .line 33
    goto :goto_2

    .line 34
    :cond_2
    :goto_1
    move v0, v4

    .line 35
    :goto_2
    if-nez v0, :cond_3

    .line 36
    .line 37
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    iget v0, p0, Lb3/h;->a:I

    .line 41
    .line 42
    sub-int v5, v1, v0

    .line 43
    .line 44
    const/4 v6, 0x3

    .line 45
    if-lt v5, v6, :cond_4

    .line 46
    .line 47
    iget-object v5, p0, Lb3/h;->c:Ljava/io/Serializable;

    .line 48
    .line 49
    check-cast v5, [B

    .line 50
    .line 51
    aget-byte v7, v5, v0

    .line 52
    .line 53
    const/16 v8, -0x11

    .line 54
    .line 55
    if-ne v7, v8, :cond_4

    .line 56
    .line 57
    add-int/lit8 v7, v0, 0x1

    .line 58
    .line 59
    aget-byte v7, v5, v7

    .line 60
    .line 61
    const/16 v8, -0x45

    .line 62
    .line 63
    if-ne v7, v8, :cond_4

    .line 64
    .line 65
    add-int/lit8 v7, v0, 0x2

    .line 66
    .line 67
    aget-byte v5, v5, v7

    .line 68
    .line 69
    const/16 v7, -0x41

    .line 70
    .line 71
    if-ne v5, v7, :cond_4

    .line 72
    .line 73
    add-int/2addr v0, v6

    .line 74
    iput v0, p0, Lb3/h;->a:I

    .line 75
    .line 76
    :cond_4
    iget-object v0, p0, Lb3/h;->c:Ljava/io/Serializable;

    .line 77
    .line 78
    check-cast v0, [B

    .line 79
    .line 80
    iget v5, p0, Lb3/h;->a:I

    .line 81
    .line 82
    sub-int v6, v1, v5

    .line 83
    .line 84
    sget v7, Lb3/n;->a:I

    .line 85
    .line 86
    new-instance v7, Ljava/lang/String;

    .line 87
    .line 88
    const-string v8, "UTF-8"

    .line 89
    .line 90
    invoke-static {v8}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    invoke-direct {v7, v0, v5, v6, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 95
    .line 96
    .line 97
    iput v1, p0, Lb3/h;->a:I

    .line 98
    .line 99
    iget v0, p0, Lb3/h;->b:I

    .line 100
    .line 101
    if-ne v1, v0, :cond_5

    .line 102
    .line 103
    return-object v7

    .line 104
    :cond_5
    iget-object v5, p0, Lb3/h;->c:Ljava/io/Serializable;

    .line 105
    .line 106
    check-cast v5, [B

    .line 107
    .line 108
    aget-byte v6, v5, v1

    .line 109
    .line 110
    if-ne v6, v2, :cond_6

    .line 111
    .line 112
    add-int/2addr v1, v4

    .line 113
    iput v1, p0, Lb3/h;->a:I

    .line 114
    .line 115
    if-ne v1, v0, :cond_6

    .line 116
    .line 117
    return-object v7

    .line 118
    :cond_6
    iget v0, p0, Lb3/h;->a:I

    .line 119
    .line 120
    aget-byte v1, v5, v0

    .line 121
    .line 122
    if-ne v1, v3, :cond_7

    .line 123
    .line 124
    add-int/2addr v0, v4

    .line 125
    iput v0, p0, Lb3/h;->a:I

    .line 126
    .line 127
    :cond_7
    return-object v7
.end method

.method public final d()J
    .locals 10

    .line 1
    iget-object v0, p0, Lb3/h;->c:Ljava/io/Serializable;

    move-object v1, v0

    check-cast v1, [B

    iget v2, p0, Lb3/h;->a:I

    add-int/lit8 v3, v2, 0x1

    aget-byte v1, v1, v2

    int-to-long v1, v1

    const-wide/16 v4, 0xff

    and-long/2addr v1, v4

    const/16 v6, 0x38

    shl-long/2addr v1, v6

    move-object v6, v0

    check-cast v6, [B

    add-int/lit8 v7, v3, 0x1

    aget-byte v3, v6, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    const/16 v3, 0x30

    shl-long/2addr v8, v3

    or-long/2addr v1, v8

    move-object v3, v0

    check-cast v3, [B

    add-int/lit8 v6, v7, 0x1

    aget-byte v3, v3, v7

    int-to-long v7, v3

    and-long/2addr v7, v4

    const/16 v3, 0x28

    shl-long/2addr v7, v3

    or-long/2addr v1, v7

    move-object v3, v0

    check-cast v3, [B

    add-int/lit8 v7, v6, 0x1

    aget-byte v3, v3, v6

    int-to-long v8, v3

    and-long/2addr v8, v4

    const/16 v3, 0x20

    shl-long/2addr v8, v3

    or-long/2addr v1, v8

    move-object v3, v0

    check-cast v3, [B

    add-int/lit8 v6, v7, 0x1

    aget-byte v3, v3, v7

    int-to-long v7, v3

    and-long/2addr v7, v4

    const/16 v3, 0x18

    shl-long/2addr v7, v3

    or-long/2addr v1, v7

    move-object v3, v0

    check-cast v3, [B

    add-int/lit8 v7, v6, 0x1

    aget-byte v3, v3, v6

    int-to-long v8, v3

    and-long/2addr v8, v4

    const/16 v3, 0x10

    shl-long/2addr v8, v3

    or-long/2addr v1, v8

    move-object v3, v0

    check-cast v3, [B

    add-int/lit8 v6, v7, 0x1

    aget-byte v3, v3, v7

    int-to-long v7, v3

    and-long/2addr v7, v4

    const/16 v3, 0x8

    shl-long/2addr v7, v3

    or-long/2addr v1, v7

    check-cast v0, [B

    add-int/lit8 v3, v6, 0x1

    iput v3, p0, Lb3/h;->a:I

    aget-byte v0, v0, v6

    int-to-long v6, v0

    and-long v3, v6, v4

    or-long v0, v1, v3

    return-wide v0
.end method

.method public final e()Ljava/lang/String;
    .locals 6

    .line 1
    iget v0, p0, Lb3/h;->b:I

    .line 2
    .line 3
    iget v1, p0, Lb3/h;->a:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    return-object v0

    .line 10
    :cond_0
    :goto_0
    iget v0, p0, Lb3/h;->b:I

    .line 11
    .line 12
    if-ge v1, v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lb3/h;->c:Ljava/io/Serializable;

    .line 15
    .line 16
    check-cast v0, [B

    .line 17
    .line 18
    aget-byte v0, v0, v1

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object v0, p0, Lb3/h;->c:Ljava/io/Serializable;

    .line 26
    .line 27
    check-cast v0, [B

    .line 28
    .line 29
    iget v2, p0, Lb3/h;->a:I

    .line 30
    .line 31
    sub-int v3, v1, v2

    .line 32
    .line 33
    sget v4, Lb3/n;->a:I

    .line 34
    .line 35
    new-instance v4, Ljava/lang/String;

    .line 36
    .line 37
    const-string v5, "UTF-8"

    .line 38
    .line 39
    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-direct {v4, v0, v2, v3, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 44
    .line 45
    .line 46
    iput v1, p0, Lb3/h;->a:I

    .line 47
    .line 48
    iget v0, p0, Lb3/h;->b:I

    .line 49
    .line 50
    if-ge v1, v0, :cond_2

    .line 51
    .line 52
    add-int/lit8 v1, v1, 0x1

    .line 53
    .line 54
    iput v1, p0, Lb3/h;->a:I

    .line 55
    .line 56
    :cond_2
    return-object v4
.end method

.method public final f(I)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "UTF-8"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/String;

    .line 8
    .line 9
    iget-object v2, p0, Lb3/h;->c:Ljava/io/Serializable;

    .line 10
    .line 11
    check-cast v2, [B

    .line 12
    .line 13
    iget v3, p0, Lb3/h;->a:I

    .line 14
    .line 15
    invoke-direct {v1, v2, v3, p1, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 16
    .line 17
    .line 18
    iget v0, p0, Lb3/h;->a:I

    .line 19
    .line 20
    add-int/2addr v0, p1

    .line 21
    iput v0, p0, Lb3/h;->a:I

    .line 22
    .line 23
    return-object v1
.end method

.method public final g()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lb3/h;->h()I

    move-result v0

    invoke-virtual {p0}, Lb3/h;->h()I

    move-result v1

    invoke-virtual {p0}, Lb3/h;->h()I

    move-result v2

    invoke-virtual {p0}, Lb3/h;->h()I

    move-result v3

    shl-int/lit8 v0, v0, 0x15

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x7

    or-int/2addr v0, v1

    or-int/2addr v0, v3

    return v0
.end method

.method public final h()I
    .locals 3

    .line 1
    iget-object v0, p0, Lb3/h;->c:Ljava/io/Serializable;

    check-cast v0, [B

    iget v1, p0, Lb3/h;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lb3/h;->a:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final i()J
    .locals 10

    .line 1
    iget-object v0, p0, Lb3/h;->c:Ljava/io/Serializable;

    move-object v1, v0

    check-cast v1, [B

    iget v2, p0, Lb3/h;->a:I

    add-int/lit8 v3, v2, 0x1

    aget-byte v1, v1, v2

    int-to-long v1, v1

    const-wide/16 v4, 0xff

    and-long/2addr v1, v4

    const/16 v6, 0x18

    shl-long/2addr v1, v6

    move-object v6, v0

    check-cast v6, [B

    add-int/lit8 v7, v3, 0x1

    aget-byte v3, v6, v3

    int-to-long v8, v3

    and-long/2addr v8, v4

    const/16 v3, 0x10

    shl-long/2addr v8, v3

    or-long/2addr v1, v8

    move-object v3, v0

    check-cast v3, [B

    add-int/lit8 v6, v7, 0x1

    aget-byte v3, v3, v7

    int-to-long v7, v3

    and-long/2addr v7, v4

    const/16 v3, 0x8

    shl-long/2addr v7, v3

    or-long/2addr v1, v7

    check-cast v0, [B

    add-int/lit8 v3, v6, 0x1

    iput v3, p0, Lb3/h;->a:I

    aget-byte v0, v0, v6

    int-to-long v6, v0

    and-long v3, v6, v4

    or-long v0, v1, v3

    return-wide v0
.end method

.method public final j()I
    .locals 5

    .line 1
    iget-object v0, p0, Lb3/h;->c:Ljava/io/Serializable;

    move-object v1, v0

    check-cast v1, [B

    iget v2, p0, Lb3/h;->a:I

    add-int/lit8 v3, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    move-object v2, v0

    check-cast v2, [B

    add-int/lit8 v4, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    check-cast v0, [B

    add-int/lit8 v2, v4, 0x1

    iput v2, p0, Lb3/h;->a:I

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public final k()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lb3/h;->b()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    const-string v2, "Top bit not zero: "

    .line 11
    .line 12
    invoke-static {v2, v0}, La1/b;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw v1
.end method

.method public final l()J
    .locals 5

    .line 1
    invoke-virtual {p0}, Lb3/h;->d()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    return-wide v0

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Top bit not zero: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final m()I
    .locals 4

    .line 1
    iget-object v0, p0, Lb3/h;->c:Ljava/io/Serializable;

    move-object v1, v0

    check-cast v1, [B

    iget v2, p0, Lb3/h;->a:I

    add-int/lit8 v3, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    check-cast v0, [B

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lb3/h;->a:I

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public final n(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb3/h;->c:Ljava/io/Serializable;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, [B

    .line 5
    .line 6
    array-length v1, v1

    .line 7
    if-ge v1, p1, :cond_0

    .line 8
    .line 9
    new-array v0, p1, [B

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    check-cast v0, [B

    .line 13
    .line 14
    :goto_0
    invoke-virtual {p0, v0, p1}, Lb3/h;->o([BI)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final o([BI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb3/h;->c:Ljava/io/Serializable;

    iput p2, p0, Lb3/h;->b:I

    const/4 p1, 0x0

    iput p1, p0, Lb3/h;->a:I

    return-void
.end method

.method public final p(I)V
    .locals 1

    .line 1
    if-ltz p1, :cond_0

    iget-object v0, p0, Lb3/h;->c:Ljava/io/Serializable;

    check-cast v0, [B

    array-length v0, v0

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/i0;->g(Z)V

    iput p1, p0, Lb3/h;->b:I

    return-void
.end method

.method public final q(I)V
    .locals 1

    .line 1
    if-ltz p1, :cond_0

    iget v0, p0, Lb3/h;->b:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/i0;->g(Z)V

    iput p1, p0, Lb3/h;->a:I

    return-void
.end method

.method public final r(I)V
    .locals 1

    .line 1
    iget v0, p0, Lb3/h;->a:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lb3/h;->q(I)V

    return-void
.end method
