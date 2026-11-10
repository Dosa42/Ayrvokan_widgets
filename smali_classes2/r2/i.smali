.class public final Lr2/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr2/g;


# direct methods
.method public constructor <init>(Lh0/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr2/i;->a:Lr2/g;

    return-void
.end method

.method public static b(Lb3/h;II)Lr2/a;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lb3/h;->h()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lr2/i;->p(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, -0x1

    .line 10
    add-int/2addr p1, v2

    .line 11
    new-array v3, p1, [B

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    invoke-virtual {p0, v3, v4, p1}, Lb3/h;->a([BII)V

    .line 15
    .line 16
    .line 17
    const-string p0, "image/"

    .line 18
    .line 19
    const-string v5, "ISO-8859-1"

    .line 20
    .line 21
    const/4 v6, 0x2

    .line 22
    if-ne p2, v6, :cond_1

    .line 23
    .line 24
    new-instance p2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {p2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance p0, Ljava/lang/String;

    .line 30
    .line 31
    const/4 v2, 0x3

    .line 32
    invoke-direct {p0, v3, v4, v2, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p0}, Lb3/n;->k(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    const-string p2, "image/jpg"

    .line 47
    .line 48
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-eqz p2, :cond_0

    .line 53
    .line 54
    const-string p0, "image/jpeg"

    .line 55
    .line 56
    :cond_0
    move p2, v6

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    invoke-static {v3, v4}, Lr2/i;->s([BI)I

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    new-instance v7, Ljava/lang/String;

    .line 63
    .line 64
    invoke-direct {v7, v3, v4, p2, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-static {v7}, Lb3/n;->k(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    const/16 v5, 0x2f

    .line 72
    .line 73
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    if-ne v5, v2, :cond_2

    .line 78
    .line 79
    invoke-virtual {p0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    goto :goto_0

    .line 84
    :cond_2
    move-object p0, v4

    .line 85
    :goto_0
    add-int/lit8 v2, p2, 0x1

    .line 86
    .line 87
    aget-byte v2, v3, v2

    .line 88
    .line 89
    and-int/lit16 v2, v2, 0xff

    .line 90
    .line 91
    add-int/2addr p2, v6

    .line 92
    invoke-static {v3, p2, v0}, Lr2/i;->r([BII)I

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    new-instance v5, Ljava/lang/String;

    .line 97
    .line 98
    sub-int v6, v4, p2

    .line 99
    .line 100
    invoke-direct {v5, v3, p2, v6, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-static {v0}, Lr2/i;->o(I)I

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    add-int/2addr p2, v4

    .line 108
    if-gt p1, p2, :cond_3

    .line 109
    .line 110
    sget-object p1, Lb3/n;->e:[B

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_3
    invoke-static {v3, p2, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    :goto_1
    new-instance p2, Lr2/a;

    .line 118
    .line 119
    invoke-direct {p2, p0, v5, v2, p1}, Lr2/a;-><init>(Ljava/lang/String;Ljava/lang/String;I[B)V

    .line 120
    .line 121
    .line 122
    return-object p2
.end method

.method public static c(Lb3/h;IIZILr2/g;)Lr2/c;
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    iget v1, v0, Lb3/h;->a:I

    .line 3
    .line 4
    iget-object v2, v0, Lb3/h;->c:Ljava/io/Serializable;

    .line 5
    .line 6
    check-cast v2, [B

    .line 7
    .line 8
    invoke-static {v2, v1}, Lr2/i;->s([BI)I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    new-instance v4, Ljava/lang/String;

    .line 13
    .line 14
    iget-object v3, v0, Lb3/h;->c:Ljava/io/Serializable;

    .line 15
    .line 16
    check-cast v3, [B

    .line 17
    .line 18
    sub-int v5, v2, v1

    .line 19
    .line 20
    const-string v6, "ISO-8859-1"

    .line 21
    .line 22
    invoke-direct {v4, v3, v1, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    invoke-virtual {p0, v2}, Lb3/h;->q(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lb3/h;->b()I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    invoke-virtual {p0}, Lb3/h;->b()I

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    invoke-virtual {p0}, Lb3/h;->i()J

    .line 39
    .line 40
    .line 41
    move-result-wide v2

    .line 42
    const-wide v7, 0xffffffffL

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    cmp-long v9, v2, v7

    .line 48
    .line 49
    const-wide/16 v10, -0x1

    .line 50
    .line 51
    if-nez v9, :cond_0

    .line 52
    .line 53
    move-wide v12, v10

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    move-wide v12, v2

    .line 56
    :goto_0
    invoke-virtual {p0}, Lb3/h;->i()J

    .line 57
    .line 58
    .line 59
    move-result-wide v2

    .line 60
    cmp-long v7, v2, v7

    .line 61
    .line 62
    if-nez v7, :cond_1

    .line 63
    .line 64
    move-wide v9, v10

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    move-wide v9, v2

    .line 67
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .line 71
    .line 72
    add-int v1, v1, p1

    .line 73
    .line 74
    :cond_2
    :goto_2
    iget v3, v0, Lb3/h;->a:I

    .line 75
    .line 76
    if-ge v3, v1, :cond_3

    .line 77
    .line 78
    move/from16 v3, p2

    .line 79
    .line 80
    move/from16 v7, p3

    .line 81
    .line 82
    move/from16 v8, p4

    .line 83
    .line 84
    move-object/from16 v11, p5

    .line 85
    .line 86
    invoke-static {v3, p0, v7, v8, v11}, Lr2/i;->f(ILb3/h;ZILr2/g;)Lr2/j;

    .line 87
    .line 88
    .line 89
    move-result-object v14

    .line 90
    if-eqz v14, :cond_2

    .line 91
    .line 92
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    new-array v11, v0, [Lr2/j;

    .line 101
    .line 102
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    new-instance v0, Lr2/c;

    .line 106
    .line 107
    move-object v3, v0

    .line 108
    move-wide v7, v12

    .line 109
    invoke-direct/range {v3 .. v11}, Lr2/c;-><init>(Ljava/lang/String;IIJJ[Lr2/j;)V

    .line 110
    .line 111
    .line 112
    return-object v0
.end method

.method public static d(Lb3/h;IIZILr2/g;)Lr2/d;
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    iget v1, v0, Lb3/h;->a:I

    .line 3
    .line 4
    iget-object v2, v0, Lb3/h;->c:Ljava/io/Serializable;

    .line 5
    .line 6
    check-cast v2, [B

    .line 7
    .line 8
    invoke-static {v2, v1}, Lr2/i;->s([BI)I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    new-instance v3, Ljava/lang/String;

    .line 13
    .line 14
    iget-object v4, v0, Lb3/h;->c:Ljava/io/Serializable;

    .line 15
    .line 16
    check-cast v4, [B

    .line 17
    .line 18
    sub-int v5, v2, v1

    .line 19
    .line 20
    const-string v6, "ISO-8859-1"

    .line 21
    .line 22
    invoke-direct {v3, v4, v1, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 v4, 0x1

    .line 26
    add-int/2addr v2, v4

    .line 27
    invoke-virtual {p0, v2}, Lb3/h;->q(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lb3/h;->h()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    and-int/lit8 v5, v2, 0x2

    .line 35
    .line 36
    const/4 v7, 0x0

    .line 37
    if-eqz v5, :cond_0

    .line 38
    .line 39
    move v5, v4

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move v5, v7

    .line 42
    :goto_0
    and-int/2addr v2, v4

    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    move v2, v4

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    move v2, v7

    .line 48
    :goto_1
    invoke-virtual {p0}, Lb3/h;->h()I

    .line 49
    .line 50
    .line 51
    move-result v8

    .line 52
    new-array v9, v8, [Ljava/lang/String;

    .line 53
    .line 54
    :goto_2
    if-ge v7, v8, :cond_2

    .line 55
    .line 56
    iget v10, v0, Lb3/h;->a:I

    .line 57
    .line 58
    iget-object v11, v0, Lb3/h;->c:Ljava/io/Serializable;

    .line 59
    .line 60
    check-cast v11, [B

    .line 61
    .line 62
    invoke-static {v11, v10}, Lr2/i;->s([BI)I

    .line 63
    .line 64
    .line 65
    move-result v11

    .line 66
    new-instance v12, Ljava/lang/String;

    .line 67
    .line 68
    iget-object v13, v0, Lb3/h;->c:Ljava/io/Serializable;

    .line 69
    .line 70
    check-cast v13, [B

    .line 71
    .line 72
    sub-int v14, v11, v10

    .line 73
    .line 74
    invoke-direct {v12, v13, v10, v14, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 75
    .line 76
    .line 77
    aput-object v12, v9, v7

    .line 78
    .line 79
    add-int/2addr v11, v4

    .line 80
    invoke-virtual {p0, v11}, Lb3/h;->q(I)V

    .line 81
    .line 82
    .line 83
    add-int/lit8 v7, v7, 0x1

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .line 90
    .line 91
    add-int v1, v1, p1

    .line 92
    .line 93
    :cond_3
    :goto_3
    iget v6, v0, Lb3/h;->a:I

    .line 94
    .line 95
    if-ge v6, v1, :cond_4

    .line 96
    .line 97
    move/from16 v6, p2

    .line 98
    .line 99
    move/from16 v7, p3

    .line 100
    .line 101
    move/from16 v8, p4

    .line 102
    .line 103
    move-object/from16 v10, p5

    .line 104
    .line 105
    invoke-static {v6, p0, v7, v8, v10}, Lr2/i;->f(ILb3/h;ZILr2/g;)Lr2/j;

    .line 106
    .line 107
    .line 108
    move-result-object v11

    .line 109
    if-eqz v11, :cond_3

    .line 110
    .line 111
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    new-array v0, v0, [Lr2/j;

    .line 120
    .line 121
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    new-instance v1, Lr2/d;

    .line 125
    .line 126
    move-object p0, v1

    .line 127
    move-object/from16 p1, v3

    .line 128
    .line 129
    move/from16 p2, v5

    .line 130
    .line 131
    move/from16 p3, v2

    .line 132
    .line 133
    move-object/from16 p4, v9

    .line 134
    .line 135
    move-object/from16 p5, v0

    .line 136
    .line 137
    invoke-direct/range {p0 .. p5}, Lr2/d;-><init>(Ljava/lang/String;ZZ[Ljava/lang/String;[Lr2/j;)V

    .line 138
    .line 139
    .line 140
    return-object v1
.end method

.method public static e(ILb3/h;)Lr2/e;
    .locals 7

    .line 1
    const/4 v0, 0x4

    if-ge p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lb3/h;->h()I

    move-result v1

    invoke-static {v1}, Lr2/i;->p(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v4, v3, [B

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5, v3}, Lb3/h;->a([BII)V

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v4, v5, v3}, Ljava/lang/String;-><init>([BII)V

    sub-int/2addr p0, v0

    new-array v0, p0, [B

    invoke-virtual {p1, v0, v5, p0}, Lb3/h;->a([BII)V

    invoke-static {v0, v5, v1}, Lr2/i;->r([BII)I

    move-result p0

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, v5, p0, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v1}, Lr2/i;->o(I)I

    move-result v3

    add-int/2addr v3, p0

    invoke-static {v0, v3, v1}, Lr2/i;->r([BII)I

    move-result p0

    invoke-static {v3, p0, v2, v0}, Lr2/i;->j(IILjava/lang/String;[B)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lr2/e;

    invoke-direct {v0, v6, p1, p0}, Lr2/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static f(ILb3/h;ZILr2/g;)Lr2/j;
    .locals 21

    .line 1
    move/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Lb3/h;->h()I

    .line 6
    .line 7
    .line 8
    move-result v8

    .line 9
    invoke-virtual/range {p1 .. p1}, Lb3/h;->h()I

    .line 10
    .line 11
    .line 12
    move-result v9

    .line 13
    invoke-virtual/range {p1 .. p1}, Lb3/h;->h()I

    .line 14
    .line 15
    .line 16
    move-result v10

    .line 17
    const/4 v2, 0x3

    .line 18
    if-lt v0, v2, :cond_0

    .line 19
    .line 20
    invoke-virtual/range {p1 .. p1}, Lb3/h;->h()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    move v11, v3

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v11, 0x0

    .line 27
    :goto_0
    const/4 v3, 0x4

    .line 28
    if-ne v0, v3, :cond_1

    .line 29
    .line 30
    invoke-virtual/range {p1 .. p1}, Lb3/h;->k()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-nez p2, :cond_3

    .line 35
    .line 36
    and-int/lit16 v5, v4, 0xff

    .line 37
    .line 38
    shr-int/lit8 v6, v4, 0x8

    .line 39
    .line 40
    and-int/lit16 v6, v6, 0xff

    .line 41
    .line 42
    shl-int/lit8 v6, v6, 0x7

    .line 43
    .line 44
    or-int/2addr v5, v6

    .line 45
    shr-int/lit8 v6, v4, 0x10

    .line 46
    .line 47
    and-int/lit16 v6, v6, 0xff

    .line 48
    .line 49
    shl-int/lit8 v6, v6, 0xe

    .line 50
    .line 51
    or-int/2addr v5, v6

    .line 52
    shr-int/lit8 v4, v4, 0x18

    .line 53
    .line 54
    and-int/lit16 v4, v4, 0xff

    .line 55
    .line 56
    shl-int/lit8 v4, v4, 0x15

    .line 57
    .line 58
    or-int/2addr v4, v5

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    if-ne v0, v2, :cond_2

    .line 61
    .line 62
    invoke-virtual/range {p1 .. p1}, Lb3/h;->k()I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lb3/h;->j()I

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    :cond_3
    :goto_1
    if-lt v0, v2, :cond_4

    .line 72
    .line 73
    invoke-virtual/range {p1 .. p1}, Lb3/h;->m()I

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    goto :goto_2

    .line 78
    :cond_4
    const/4 v5, 0x0

    .line 79
    :goto_2
    const/4 v12, 0x0

    .line 80
    if-nez v8, :cond_5

    .line 81
    .line 82
    if-nez v9, :cond_5

    .line 83
    .line 84
    if-nez v10, :cond_5

    .line 85
    .line 86
    if-nez v11, :cond_5

    .line 87
    .line 88
    if-nez v4, :cond_5

    .line 89
    .line 90
    if-nez v5, :cond_5

    .line 91
    .line 92
    iget v0, v7, Lb3/h;->b:I

    .line 93
    .line 94
    invoke-virtual {v7, v0}, Lb3/h;->q(I)V

    .line 95
    .line 96
    .line 97
    return-object v12

    .line 98
    :cond_5
    iget v6, v7, Lb3/h;->a:I

    .line 99
    .line 100
    add-int v13, v6, v4

    .line 101
    .line 102
    iget v6, v7, Lb3/h;->b:I

    .line 103
    .line 104
    if-le v13, v6, :cond_6

    .line 105
    .line 106
    invoke-virtual {v7, v6}, Lb3/h;->q(I)V

    .line 107
    .line 108
    .line 109
    return-object v12

    .line 110
    :cond_6
    const/4 v6, 0x2

    .line 111
    const/16 v14, 0x4c

    .line 112
    .line 113
    const/16 v12, 0x4f

    .line 114
    .line 115
    const/16 v1, 0x4d

    .line 116
    .line 117
    const/16 v15, 0x54

    .line 118
    .line 119
    const/16 v3, 0x43

    .line 120
    .line 121
    if-eqz p4, :cond_b

    .line 122
    .line 123
    move-object/from16 v2, p4

    .line 124
    .line 125
    check-cast v2, Lh0/c;

    .line 126
    .line 127
    iget v2, v2, Lh0/c;->f:I

    .line 128
    .line 129
    packed-switch v2, :pswitch_data_0

    .line 130
    .line 131
    .line 132
    goto :goto_3

    .line 133
    :pswitch_0
    if-ne v8, v3, :cond_7

    .line 134
    .line 135
    if-ne v9, v12, :cond_7

    .line 136
    .line 137
    if-ne v10, v1, :cond_7

    .line 138
    .line 139
    if-eq v11, v1, :cond_8

    .line 140
    .line 141
    if-eq v0, v6, :cond_8

    .line 142
    .line 143
    :cond_7
    if-ne v8, v1, :cond_9

    .line 144
    .line 145
    if-ne v9, v14, :cond_9

    .line 146
    .line 147
    if-ne v10, v14, :cond_9

    .line 148
    .line 149
    if-eq v11, v15, :cond_8

    .line 150
    .line 151
    if-ne v0, v6, :cond_9

    .line 152
    .line 153
    :cond_8
    const/4 v2, 0x1

    .line 154
    goto :goto_4

    .line 155
    :cond_9
    :goto_3
    const/4 v2, 0x0

    .line 156
    :goto_4
    if-nez v2, :cond_a

    .line 157
    .line 158
    goto/16 :goto_12

    .line 159
    .line 160
    :cond_a
    const/4 v2, 0x3

    .line 161
    :cond_b
    if-ne v0, v2, :cond_f

    .line 162
    .line 163
    and-int/lit16 v2, v5, 0x80

    .line 164
    .line 165
    if-eqz v2, :cond_c

    .line 166
    .line 167
    const/4 v2, 0x1

    .line 168
    goto :goto_5

    .line 169
    :cond_c
    const/4 v2, 0x0

    .line 170
    :goto_5
    and-int/lit8 v17, v5, 0x40

    .line 171
    .line 172
    if-eqz v17, :cond_d

    .line 173
    .line 174
    const/16 v17, 0x1

    .line 175
    .line 176
    goto :goto_6

    .line 177
    :cond_d
    const/16 v17, 0x0

    .line 178
    .line 179
    :goto_6
    and-int/lit8 v5, v5, 0x20

    .line 180
    .line 181
    if-eqz v5, :cond_e

    .line 182
    .line 183
    const/4 v5, 0x1

    .line 184
    goto :goto_7

    .line 185
    :cond_e
    const/4 v5, 0x0

    .line 186
    :goto_7
    move/from16 v18, v17

    .line 187
    .line 188
    const/16 v19, 0x0

    .line 189
    .line 190
    move/from16 v17, v5

    .line 191
    .line 192
    move v5, v2

    .line 193
    goto :goto_d

    .line 194
    :cond_f
    const/4 v2, 0x4

    .line 195
    if-ne v0, v2, :cond_15

    .line 196
    .line 197
    and-int/lit8 v2, v5, 0x40

    .line 198
    .line 199
    if-eqz v2, :cond_10

    .line 200
    .line 201
    const/4 v2, 0x1

    .line 202
    goto :goto_8

    .line 203
    :cond_10
    const/4 v2, 0x0

    .line 204
    :goto_8
    and-int/lit8 v17, v5, 0x8

    .line 205
    .line 206
    if-eqz v17, :cond_11

    .line 207
    .line 208
    const/16 v17, 0x1

    .line 209
    .line 210
    goto :goto_9

    .line 211
    :cond_11
    const/16 v17, 0x0

    .line 212
    .line 213
    :goto_9
    and-int/lit8 v18, v5, 0x4

    .line 214
    .line 215
    if-eqz v18, :cond_12

    .line 216
    .line 217
    const/16 v18, 0x1

    .line 218
    .line 219
    goto :goto_a

    .line 220
    :cond_12
    const/16 v18, 0x0

    .line 221
    .line 222
    :goto_a
    and-int/lit8 v19, v5, 0x2

    .line 223
    .line 224
    const/16 v16, 0x1

    .line 225
    .line 226
    if-eqz v19, :cond_13

    .line 227
    .line 228
    const/16 v19, 0x1

    .line 229
    .line 230
    goto :goto_b

    .line 231
    :cond_13
    const/16 v19, 0x0

    .line 232
    .line 233
    :goto_b
    and-int/lit8 v5, v5, 0x1

    .line 234
    .line 235
    if-eqz v5, :cond_14

    .line 236
    .line 237
    const/4 v5, 0x1

    .line 238
    goto :goto_c

    .line 239
    :cond_14
    const/4 v5, 0x0

    .line 240
    :goto_c
    move/from16 v20, v17

    .line 241
    .line 242
    move/from16 v17, v2

    .line 243
    .line 244
    move/from16 v2, v20

    .line 245
    .line 246
    goto :goto_d

    .line 247
    :cond_15
    const/4 v2, 0x0

    .line 248
    const/4 v5, 0x0

    .line 249
    const/16 v17, 0x0

    .line 250
    .line 251
    const/16 v18, 0x0

    .line 252
    .line 253
    const/16 v19, 0x0

    .line 254
    .line 255
    :goto_d
    if-nez v2, :cond_2b

    .line 256
    .line 257
    if-eqz v18, :cond_16

    .line 258
    .line 259
    goto/16 :goto_13

    .line 260
    .line 261
    :cond_16
    if-eqz v17, :cond_17

    .line 262
    .line 263
    add-int/lit8 v4, v4, -0x1

    .line 264
    .line 265
    const/4 v2, 0x1

    .line 266
    invoke-virtual {v7, v2}, Lb3/h;->r(I)V

    .line 267
    .line 268
    .line 269
    :cond_17
    if-eqz v5, :cond_18

    .line 270
    .line 271
    add-int/lit8 v4, v4, -0x4

    .line 272
    .line 273
    const/4 v2, 0x4

    .line 274
    invoke-virtual {v7, v2}, Lb3/h;->r(I)V

    .line 275
    .line 276
    .line 277
    :cond_18
    if-eqz v19, :cond_19

    .line 278
    .line 279
    invoke-static {v4, v7}, Lr2/i;->t(ILb3/h;)I

    .line 280
    .line 281
    .line 282
    move-result v2

    .line 283
    goto :goto_e

    .line 284
    :cond_19
    move v2, v4

    .line 285
    :goto_e
    const/16 v4, 0x58

    .line 286
    .line 287
    if-ne v8, v15, :cond_1b

    .line 288
    .line 289
    if-ne v9, v4, :cond_1b

    .line 290
    .line 291
    if-ne v10, v4, :cond_1b

    .line 292
    .line 293
    if-eq v0, v6, :cond_1a

    .line 294
    .line 295
    if-ne v11, v4, :cond_1b

    .line 296
    .line 297
    :cond_1a
    :try_start_0
    invoke-static {v2, v7}, Lr2/i;->l(ILb3/h;)Lr2/n;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    goto/16 :goto_10

    .line 302
    .line 303
    :cond_1b
    if-ne v8, v15, :cond_1c

    .line 304
    .line 305
    invoke-static {v0, v8, v9, v10, v11}, Lr2/i;->q(IIIII)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    invoke-static {v7, v2, v1}, Lr2/i;->k(Lb3/h;ILjava/lang/String;)Lr2/n;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    goto/16 :goto_10

    .line 314
    .line 315
    :catchall_0
    move-exception v0

    .line 316
    goto/16 :goto_11

    .line 317
    .line 318
    :cond_1c
    const/16 v5, 0x57

    .line 319
    .line 320
    if-ne v8, v5, :cond_1e

    .line 321
    .line 322
    if-ne v9, v4, :cond_1e

    .line 323
    .line 324
    if-ne v10, v4, :cond_1e

    .line 325
    .line 326
    if-eq v0, v6, :cond_1d

    .line 327
    .line 328
    if-ne v11, v4, :cond_1e

    .line 329
    .line 330
    :cond_1d
    invoke-static {v2, v7}, Lr2/i;->n(ILb3/h;)Lr2/o;

    .line 331
    .line 332
    .line 333
    move-result-object v1

    .line 334
    goto/16 :goto_10

    .line 335
    .line 336
    :cond_1e
    if-ne v8, v5, :cond_1f

    .line 337
    .line 338
    invoke-static {v0, v8, v9, v10, v11}, Lr2/i;->q(IIIII)Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v1

    .line 342
    invoke-static {v7, v2, v1}, Lr2/i;->m(Lb3/h;ILjava/lang/String;)Lr2/o;

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    goto/16 :goto_10

    .line 347
    .line 348
    :cond_1f
    const/16 v4, 0x49

    .line 349
    .line 350
    const/16 v5, 0x50

    .line 351
    .line 352
    if-ne v8, v5, :cond_20

    .line 353
    .line 354
    const/16 v14, 0x52

    .line 355
    .line 356
    if-ne v9, v14, :cond_20

    .line 357
    .line 358
    if-ne v10, v4, :cond_20

    .line 359
    .line 360
    const/16 v14, 0x56

    .line 361
    .line 362
    if-ne v11, v14, :cond_20

    .line 363
    .line 364
    invoke-static {v2, v7}, Lr2/i;->i(ILb3/h;)Lr2/m;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    goto/16 :goto_10

    .line 369
    .line 370
    :cond_20
    const/16 v14, 0x47

    .line 371
    .line 372
    if-ne v8, v14, :cond_22

    .line 373
    .line 374
    const/16 v14, 0x45

    .line 375
    .line 376
    if-ne v9, v14, :cond_22

    .line 377
    .line 378
    if-ne v10, v12, :cond_22

    .line 379
    .line 380
    const/16 v14, 0x42

    .line 381
    .line 382
    if-eq v11, v14, :cond_21

    .line 383
    .line 384
    if-ne v0, v6, :cond_22

    .line 385
    .line 386
    :cond_21
    invoke-static {v2, v7}, Lr2/i;->g(ILb3/h;)Lr2/f;

    .line 387
    .line 388
    .line 389
    move-result-object v1

    .line 390
    goto/16 :goto_10

    .line 391
    .line 392
    :cond_22
    const/16 v14, 0x41

    .line 393
    .line 394
    if-ne v0, v6, :cond_23

    .line 395
    .line 396
    if-ne v8, v5, :cond_24

    .line 397
    .line 398
    if-ne v9, v4, :cond_24

    .line 399
    .line 400
    if-ne v10, v3, :cond_24

    .line 401
    .line 402
    goto :goto_f

    .line 403
    :cond_23
    if-ne v8, v14, :cond_24

    .line 404
    .line 405
    if-ne v9, v5, :cond_24

    .line 406
    .line 407
    if-ne v10, v4, :cond_24

    .line 408
    .line 409
    if-ne v11, v3, :cond_24

    .line 410
    .line 411
    :goto_f
    invoke-static {v7, v2, v0}, Lr2/i;->b(Lb3/h;II)Lr2/a;

    .line 412
    .line 413
    .line 414
    move-result-object v1

    .line 415
    goto/16 :goto_10

    .line 416
    .line 417
    :cond_24
    if-ne v8, v3, :cond_26

    .line 418
    .line 419
    if-ne v9, v12, :cond_26

    .line 420
    .line 421
    if-ne v10, v1, :cond_26

    .line 422
    .line 423
    if-eq v11, v1, :cond_25

    .line 424
    .line 425
    if-ne v0, v6, :cond_26

    .line 426
    .line 427
    :cond_25
    invoke-static {v2, v7}, Lr2/i;->e(ILb3/h;)Lr2/e;

    .line 428
    .line 429
    .line 430
    move-result-object v1

    .line 431
    goto :goto_10

    .line 432
    :cond_26
    if-ne v8, v3, :cond_27

    .line 433
    .line 434
    const/16 v4, 0x48

    .line 435
    .line 436
    if-ne v9, v4, :cond_27

    .line 437
    .line 438
    if-ne v10, v14, :cond_27

    .line 439
    .line 440
    if-ne v11, v5, :cond_27

    .line 441
    .line 442
    move-object/from16 v1, p1

    .line 443
    .line 444
    move/from16 v3, p0

    .line 445
    .line 446
    move/from16 v4, p2

    .line 447
    .line 448
    move/from16 v5, p3

    .line 449
    .line 450
    move-object/from16 v6, p4

    .line 451
    .line 452
    invoke-static/range {v1 .. v6}, Lr2/i;->c(Lb3/h;IIZILr2/g;)Lr2/c;

    .line 453
    .line 454
    .line 455
    move-result-object v1

    .line 456
    goto :goto_10

    .line 457
    :cond_27
    if-ne v8, v3, :cond_28

    .line 458
    .line 459
    if-ne v9, v15, :cond_28

    .line 460
    .line 461
    if-ne v10, v12, :cond_28

    .line 462
    .line 463
    if-ne v11, v3, :cond_28

    .line 464
    .line 465
    move-object/from16 v1, p1

    .line 466
    .line 467
    move/from16 v3, p0

    .line 468
    .line 469
    move/from16 v4, p2

    .line 470
    .line 471
    move/from16 v5, p3

    .line 472
    .line 473
    move-object/from16 v6, p4

    .line 474
    .line 475
    invoke-static/range {v1 .. v6}, Lr2/i;->d(Lb3/h;IIZILr2/g;)Lr2/d;

    .line 476
    .line 477
    .line 478
    move-result-object v1

    .line 479
    goto :goto_10

    .line 480
    :cond_28
    if-ne v8, v1, :cond_29

    .line 481
    .line 482
    const/16 v1, 0x4c

    .line 483
    .line 484
    if-ne v9, v1, :cond_29

    .line 485
    .line 486
    if-ne v10, v1, :cond_29

    .line 487
    .line 488
    if-ne v11, v15, :cond_29

    .line 489
    .line 490
    invoke-static {v2, v7}, Lr2/i;->h(ILb3/h;)Lr2/l;

    .line 491
    .line 492
    .line 493
    move-result-object v1

    .line 494
    goto :goto_10

    .line 495
    :cond_29
    invoke-static {v0, v8, v9, v10, v11}, Lr2/i;->q(IIIII)Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v1

    .line 499
    new-array v3, v2, [B

    .line 500
    .line 501
    const/4 v4, 0x0

    .line 502
    invoke-virtual {v7, v3, v4, v2}, Lb3/h;->a([BII)V

    .line 503
    .line 504
    .line 505
    new-instance v2, Lr2/b;

    .line 506
    .line 507
    invoke-direct {v2, v1, v3}, Lr2/b;-><init>(Ljava/lang/String;[B)V

    .line 508
    .line 509
    .line 510
    move-object v1, v2

    .line 511
    :goto_10
    if-nez v1, :cond_2a

    .line 512
    .line 513
    invoke-static {v0, v8, v9, v10, v11}, Lr2/i;->q(IIIII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 514
    .line 515
    .line 516
    :cond_2a
    invoke-virtual {v7, v13}, Lb3/h;->q(I)V

    .line 517
    .line 518
    .line 519
    return-object v1

    .line 520
    :goto_11
    invoke-virtual {v7, v13}, Lb3/h;->q(I)V

    .line 521
    .line 522
    .line 523
    throw v0

    .line 524
    :catch_0
    :goto_12
    invoke-virtual {v7, v13}, Lb3/h;->q(I)V

    .line 525
    .line 526
    .line 527
    const/4 v0, 0x0

    .line 528
    return-object v0

    .line 529
    :cond_2b
    :goto_13
    const/4 v0, 0x0

    .line 530
    invoke-virtual {v7, v13}, Lb3/h;->q(I)V

    .line 531
    .line 532
    .line 533
    return-object v0

    .line 534
    nop

    .line 535
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method public static g(ILb3/h;)Lr2/f;
    .locals 6

    .line 1
    invoke-virtual {p1}, Lb3/h;->h()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lr2/i;->p(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    add-int/lit8 p0, p0, -0x1

    .line 10
    .line 11
    new-array v2, p0, [B

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-virtual {p1, v2, v3, p0}, Lb3/h;->a([BII)V

    .line 15
    .line 16
    .line 17
    invoke-static {v2, v3}, Lr2/i;->s([BI)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    new-instance v4, Ljava/lang/String;

    .line 22
    .line 23
    const-string v5, "ISO-8859-1"

    .line 24
    .line 25
    invoke-direct {v4, v2, v3, p1, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    add-int/lit8 p1, p1, 0x1

    .line 29
    .line 30
    invoke-static {v2, p1, v0}, Lr2/i;->r([BII)I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    invoke-static {p1, v3, v1, v2}, Lr2/i;->j(IILjava/lang/String;[B)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {v0}, Lr2/i;->o(I)I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    add-int/2addr v5, v3

    .line 43
    invoke-static {v2, v5, v0}, Lr2/i;->r([BII)I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    invoke-static {v5, v3, v1, v2}, Lr2/i;->j(IILjava/lang/String;[B)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {v0}, Lr2/i;->o(I)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    add-int/2addr v0, v3

    .line 56
    if-gt p0, v0, :cond_0

    .line 57
    .line 58
    sget-object p0, Lb3/n;->e:[B

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    invoke-static {v2, v0, p0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    :goto_0
    new-instance v0, Lr2/f;

    .line 66
    .line 67
    invoke-direct {v0, v4, p1, v1, p0}, Lr2/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 68
    .line 69
    .line 70
    return-object v0
.end method

.method public static h(ILb3/h;)Lr2/l;
    .locals 10

    .line 1
    invoke-virtual {p1}, Lb3/h;->m()I

    .line 2
    .line 3
    .line 4
    move-result v1

    .line 5
    invoke-virtual {p1}, Lb3/h;->j()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-virtual {p1}, Lb3/h;->j()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-virtual {p1}, Lb3/h;->h()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p1}, Lb3/h;->h()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    new-instance v5, Lb3/g;

    .line 22
    .line 23
    invoke-direct {v5}, Lb3/g;-><init>()V

    .line 24
    .line 25
    .line 26
    iget-object v6, p1, Lb3/h;->c:Ljava/io/Serializable;

    .line 27
    .line 28
    check-cast v6, [B

    .line 29
    .line 30
    iget v7, p1, Lb3/h;->b:I

    .line 31
    .line 32
    iput-object v6, v5, Lb3/g;->b:[B

    .line 33
    .line 34
    const/4 v6, 0x0

    .line 35
    iput v6, v5, Lb3/g;->c:I

    .line 36
    .line 37
    iput v6, v5, Lb3/g;->d:I

    .line 38
    .line 39
    iput v7, v5, Lb3/g;->e:I

    .line 40
    .line 41
    iget p1, p1, Lb3/h;->a:I

    .line 42
    .line 43
    mul-int/lit8 p1, p1, 0x8

    .line 44
    .line 45
    invoke-virtual {v5, p1}, Lb3/g;->i(I)V

    .line 46
    .line 47
    .line 48
    add-int/lit8 p0, p0, -0xa

    .line 49
    .line 50
    mul-int/lit8 p0, p0, 0x8

    .line 51
    .line 52
    add-int p1, v0, v4

    .line 53
    .line 54
    div-int/2addr p0, p1

    .line 55
    new-array p1, p0, [I

    .line 56
    .line 57
    new-array v7, p0, [I

    .line 58
    .line 59
    :goto_0
    if-ge v6, p0, :cond_0

    .line 60
    .line 61
    invoke-virtual {v5, v0}, Lb3/g;->e(I)I

    .line 62
    .line 63
    .line 64
    move-result v8

    .line 65
    invoke-virtual {v5, v4}, Lb3/g;->e(I)I

    .line 66
    .line 67
    .line 68
    move-result v9

    .line 69
    aput v8, p1, v6

    .line 70
    .line 71
    aput v9, v7, v6

    .line 72
    .line 73
    add-int/lit8 v6, v6, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    new-instance p0, Lr2/l;

    .line 77
    .line 78
    move-object v0, p0

    .line 79
    move-object v4, p1

    .line 80
    move-object v5, v7

    .line 81
    invoke-direct/range {v0 .. v5}, Lr2/l;-><init>(III[I[I)V

    .line 82
    .line 83
    .line 84
    return-object p0
.end method

.method public static i(ILb3/h;)Lr2/m;
    .locals 4

    .line 1
    new-array v0, p0, [B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1, p0}, Lb3/h;->a([BII)V

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lr2/i;->s([BI)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    new-instance v2, Ljava/lang/String;

    .line 12
    .line 13
    const-string v3, "ISO-8859-1"

    .line 14
    .line 15
    invoke-direct {v2, v0, v1, p1, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    add-int/lit8 p1, p1, 0x1

    .line 19
    .line 20
    if-gt p0, p1, :cond_0

    .line 21
    .line 22
    sget-object p0, Lb3/n;->e:[B

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-static {v0, p1, p0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    :goto_0
    new-instance p1, Lr2/m;

    .line 30
    .line 31
    invoke-direct {p1, v2, p0}, Lr2/m;-><init>(Ljava/lang/String;[B)V

    .line 32
    .line 33
    .line 34
    return-object p1
.end method

.method public static j(IILjava/lang/String;[B)Ljava/lang/String;
    .locals 1

    .line 1
    if-le p1, p0, :cond_1

    array-length v0, p3

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    sub-int/2addr p1, p0

    invoke-direct {v0, p3, p0, p1, p2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public static k(Lb3/h;ILjava/lang/String;)Lr2/n;
    .locals 5

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lb3/h;->h()I

    move-result v2

    invoke-static {v2}, Lr2/i;->p(I)Ljava/lang/String;

    move-result-object v3

    sub-int/2addr p1, v1

    new-array v1, p1, [B

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4, p1}, Lb3/h;->a([BII)V

    invoke-static {v1, v4, v2}, Lr2/i;->r([BII)I

    move-result p0

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1, v4, p0, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    new-instance p0, Lr2/n;

    invoke-direct {p0, p2, v0, p1}, Lr2/n;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static l(ILb3/h;)Lr2/n;
    .locals 4

    .line 1
    const/4 v0, 0x1

    if-ge p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lb3/h;->h()I

    move-result v1

    invoke-static {v1}, Lr2/i;->p(I)Ljava/lang/String;

    move-result-object v2

    sub-int/2addr p0, v0

    new-array v0, p0, [B

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, p0}, Lb3/h;->a([BII)V

    invoke-static {v0, v3, v1}, Lr2/i;->r([BII)I

    move-result p0

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, v3, p0, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v1}, Lr2/i;->o(I)I

    move-result v3

    add-int/2addr v3, p0

    invoke-static {v0, v3, v1}, Lr2/i;->r([BII)I

    move-result p0

    invoke-static {v3, p0, v2, v0}, Lr2/i;->j(IILjava/lang/String;[B)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lr2/n;

    const-string v1, "TXXX"

    invoke-direct {v0, v1, p1, p0}, Lr2/n;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static m(Lb3/h;ILjava/lang/String;)Lr2/o;
    .locals 3

    .line 1
    new-array v0, p1, [B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lb3/h;->a([BII)V

    invoke-static {v0, v1}, Lr2/i;->s([BI)I

    move-result p0

    new-instance p1, Ljava/lang/String;

    const-string v2, "ISO-8859-1"

    invoke-direct {p1, v0, v1, p0, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    new-instance p0, Lr2/o;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p1}, Lr2/o;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static n(ILb3/h;)Lr2/o;
    .locals 4

    .line 1
    const/4 v0, 0x1

    if-ge p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lb3/h;->h()I

    move-result v1

    invoke-static {v1}, Lr2/i;->p(I)Ljava/lang/String;

    move-result-object v2

    sub-int/2addr p0, v0

    new-array v0, p0, [B

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, p0}, Lb3/h;->a([BII)V

    invoke-static {v0, v3, v1}, Lr2/i;->r([BII)I

    move-result p0

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, v3, p0, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v1}, Lr2/i;->o(I)I

    move-result v1

    add-int/2addr v1, p0

    invoke-static {v0, v1}, Lr2/i;->s([BI)I

    move-result p0

    const-string v2, "ISO-8859-1"

    invoke-static {v1, p0, v2, v0}, Lr2/i;->j(IILjava/lang/String;[B)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lr2/o;

    const-string v1, "WXXX"

    invoke-direct {v0, v1, p1, p0}, Lr2/o;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static o(I)I
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static p(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "ISO-8859-1"

    return-object p0

    :cond_0
    const-string p0, "UTF-8"

    return-object p0

    :cond_1
    const-string p0, "UTF-16BE"

    return-object p0

    :cond_2
    const-string p0, "UTF-16"

    return-object p0
.end method

.method public static q(IIIII)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%c%c%c"

    invoke-static {p0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%c%c%c%c"

    invoke-static {p0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static r([BII)I
    .locals 1

    .line 1
    invoke-static {p0, p1}, Lr2/i;->s([BI)I

    move-result p1

    if-eqz p2, :cond_3

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    array-length p2, p0

    add-int/lit8 p2, p2, -0x1

    if-ge p1, p2, :cond_2

    rem-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_1

    add-int/lit8 p2, p1, 0x1

    aget-byte p2, p0, p2

    if-nez p2, :cond_1

    return p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lr2/i;->s([BI)I

    move-result p1

    goto :goto_0

    :cond_2
    array-length p0, p0

    return p0

    :cond_3
    :goto_1
    return p1
.end method

.method public static s([BI)I
    .locals 1

    .line 1
    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v0, p0, p1

    if-nez v0, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    array-length p0, p0

    return p0
.end method

.method public static t(ILb3/h;)I
    .locals 5

    .line 1
    iget-object v0, p1, Lb3/h;->c:Ljava/io/Serializable;

    .line 2
    .line 3
    check-cast v0, [B

    .line 4
    .line 5
    iget p1, p1, Lb3/h;->a:I

    .line 6
    .line 7
    move v1, p1

    .line 8
    :goto_0
    add-int/lit8 v2, v1, 0x1

    .line 9
    .line 10
    add-int v3, p1, p0

    .line 11
    .line 12
    if-ge v2, v3, :cond_1

    .line 13
    .line 14
    aget-byte v3, v0, v1

    .line 15
    .line 16
    const/16 v4, 0xff

    .line 17
    .line 18
    and-int/2addr v3, v4

    .line 19
    if-ne v3, v4, :cond_0

    .line 20
    .line 21
    aget-byte v3, v0, v2

    .line 22
    .line 23
    if-nez v3, :cond_0

    .line 24
    .line 25
    sub-int v3, v1, p1

    .line 26
    .line 27
    add-int/lit8 v1, v1, 0x2

    .line 28
    .line 29
    sub-int v3, p0, v3

    .line 30
    .line 31
    add-int/lit8 v3, v3, -0x2

    .line 32
    .line 33
    invoke-static {v0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    .line 35
    .line 36
    add-int/lit8 p0, p0, -0x1

    .line 37
    .line 38
    :cond_0
    move v1, v2

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    return p0
.end method

.method public static u(Lb3/h;IIZ)Z
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    iget v2, v1, Lb3/h;->a:I

    .line 6
    .line 7
    :goto_0
    :try_start_0
    iget v3, v1, Lb3/h;->b:I

    .line 8
    .line 9
    iget v4, v1, Lb3/h;->a:I

    .line 10
    .line 11
    sub-int/2addr v3, v4

    .line 12
    const/4 v4, 0x1

    .line 13
    move/from16 v5, p2

    .line 14
    .line 15
    if-lt v3, v5, :cond_c

    .line 16
    .line 17
    const/4 v3, 0x3

    .line 18
    const/4 v6, 0x0

    .line 19
    if-lt v0, v3, :cond_0

    .line 20
    .line 21
    invoke-virtual/range {p0 .. p0}, Lb3/h;->b()I

    .line 22
    .line 23
    .line 24
    move-result v7

    .line 25
    invoke-virtual/range {p0 .. p0}, Lb3/h;->i()J

    .line 26
    .line 27
    .line 28
    move-result-wide v8

    .line 29
    invoke-virtual/range {p0 .. p0}, Lb3/h;->m()I

    .line 30
    .line 31
    .line 32
    move-result v10

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lb3/h;->j()I

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    invoke-virtual/range {p0 .. p0}, Lb3/h;->j()I

    .line 39
    .line 40
    .line 41
    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    int-to-long v8, v8

    .line 43
    move v10, v6

    .line 44
    :goto_1
    const-wide/16 v11, 0x0

    .line 45
    .line 46
    if-nez v7, :cond_1

    .line 47
    .line 48
    cmp-long v7, v8, v11

    .line 49
    .line 50
    if-nez v7, :cond_1

    .line 51
    .line 52
    if-nez v10, :cond_1

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Lb3/h;->q(I)V

    .line 55
    .line 56
    .line 57
    return v4

    .line 58
    :cond_1
    const/4 v7, 0x4

    .line 59
    if-ne v0, v7, :cond_3

    .line 60
    .line 61
    if-nez p3, :cond_3

    .line 62
    .line 63
    const-wide/32 v13, 0x808080

    .line 64
    .line 65
    .line 66
    and-long/2addr v13, v8

    .line 67
    cmp-long v11, v13, v11

    .line 68
    .line 69
    if-eqz v11, :cond_2

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Lb3/h;->q(I)V

    .line 72
    .line 73
    .line 74
    return v6

    .line 75
    :cond_2
    const-wide/16 v11, 0xff

    .line 76
    .line 77
    and-long v13, v8, v11

    .line 78
    .line 79
    const/16 v15, 0x8

    .line 80
    .line 81
    shr-long v15, v8, v15

    .line 82
    .line 83
    and-long/2addr v15, v11

    .line 84
    const/16 v17, 0x7

    .line 85
    .line 86
    shl-long v15, v15, v17

    .line 87
    .line 88
    or-long/2addr v13, v15

    .line 89
    const/16 v15, 0x10

    .line 90
    .line 91
    shr-long v15, v8, v15

    .line 92
    .line 93
    and-long/2addr v15, v11

    .line 94
    const/16 v17, 0xe

    .line 95
    .line 96
    shl-long v15, v15, v17

    .line 97
    .line 98
    or-long/2addr v13, v15

    .line 99
    const/16 v15, 0x18

    .line 100
    .line 101
    shr-long/2addr v8, v15

    .line 102
    and-long/2addr v8, v11

    .line 103
    const/16 v11, 0x15

    .line 104
    .line 105
    shl-long/2addr v8, v11

    .line 106
    or-long/2addr v8, v13

    .line 107
    :cond_3
    if-ne v0, v7, :cond_5

    .line 108
    .line 109
    and-int/lit8 v3, v10, 0x40

    .line 110
    .line 111
    if-eqz v3, :cond_4

    .line 112
    .line 113
    move v3, v4

    .line 114
    goto :goto_2

    .line 115
    :cond_4
    move v3, v6

    .line 116
    :goto_2
    and-int/lit8 v7, v10, 0x1

    .line 117
    .line 118
    if-eqz v7, :cond_7

    .line 119
    .line 120
    goto :goto_4

    .line 121
    :cond_5
    if-ne v0, v3, :cond_8

    .line 122
    .line 123
    and-int/lit8 v3, v10, 0x20

    .line 124
    .line 125
    if-eqz v3, :cond_6

    .line 126
    .line 127
    move v3, v4

    .line 128
    goto :goto_3

    .line 129
    :cond_6
    move v3, v6

    .line 130
    :goto_3
    and-int/lit16 v7, v10, 0x80

    .line 131
    .line 132
    if-eqz v7, :cond_7

    .line 133
    .line 134
    goto :goto_4

    .line 135
    :cond_7
    move v4, v6

    .line 136
    goto :goto_4

    .line 137
    :cond_8
    move v3, v6

    .line 138
    move v4, v3

    .line 139
    :goto_4
    if-eqz v4, :cond_9

    .line 140
    .line 141
    add-int/lit8 v3, v3, 0x4

    .line 142
    .line 143
    :cond_9
    int-to-long v3, v3

    .line 144
    cmp-long v3, v8, v3

    .line 145
    .line 146
    if-gez v3, :cond_a

    .line 147
    .line 148
    invoke-virtual {v1, v2}, Lb3/h;->q(I)V

    .line 149
    .line 150
    .line 151
    return v6

    .line 152
    :cond_a
    :try_start_1
    iget v3, v1, Lb3/h;->b:I

    .line 153
    .line 154
    iget v4, v1, Lb3/h;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    .line 156
    sub-int/2addr v3, v4

    .line 157
    int-to-long v3, v3

    .line 158
    cmp-long v3, v3, v8

    .line 159
    .line 160
    if-gez v3, :cond_b

    .line 161
    .line 162
    invoke-virtual {v1, v2}, Lb3/h;->q(I)V

    .line 163
    .line 164
    .line 165
    return v6

    .line 166
    :cond_b
    long-to-int v3, v8

    .line 167
    :try_start_2
    invoke-virtual {v1, v3}, Lb3/h;->r(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 168
    .line 169
    .line 170
    goto/16 :goto_0

    .line 171
    .line 172
    :cond_c
    invoke-virtual {v1, v2}, Lb3/h;->q(I)V

    .line 173
    .line 174
    .line 175
    return v4

    .line 176
    :catchall_0
    move-exception v0

    .line 177
    invoke-virtual {v1, v2}, Lb3/h;->q(I)V

    .line 178
    .line 179
    .line 180
    throw v0
.end method


# virtual methods
.method public final a([BI)Lp2/b;
    .locals 11

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lb3/h;

    .line 7
    .line 8
    invoke-direct {v1, p1, p2}, Lb3/h;-><init>([BI)V

    .line 9
    .line 10
    .line 11
    iget p1, v1, Lb3/h;->b:I

    .line 12
    .line 13
    iget p2, v1, Lb3/h;->a:I

    .line 14
    .line 15
    sub-int/2addr p1, p2

    .line 16
    const/4 p2, 0x2

    .line 17
    const/16 v2, 0xa

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    const/4 v4, 0x4

    .line 21
    const/4 v5, 0x1

    .line 22
    const/4 v6, 0x0

    .line 23
    if-ge p1, v2, :cond_0

    .line 24
    .line 25
    goto/16 :goto_6

    .line 26
    .line 27
    :cond_0
    invoke-virtual {v1}, Lb3/h;->j()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    const v7, 0x494433

    .line 32
    .line 33
    .line 34
    if-eq p1, v7, :cond_1

    .line 35
    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const-string v7, "%06X"

    .line 45
    .line 46
    invoke-static {v7, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    goto/16 :goto_6

    .line 50
    .line 51
    :cond_1
    invoke-virtual {v1}, Lb3/h;->h()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    invoke-virtual {v1, v5}, Lb3/h;->r(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Lb3/h;->h()I

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    invoke-virtual {v1}, Lb3/h;->g()I

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    if-ne p1, p2, :cond_3

    .line 67
    .line 68
    and-int/lit8 v9, v7, 0x40

    .line 69
    .line 70
    if-eqz v9, :cond_2

    .line 71
    .line 72
    move v9, v5

    .line 73
    goto :goto_0

    .line 74
    :cond_2
    move v9, v3

    .line 75
    :goto_0
    if-eqz v9, :cond_9

    .line 76
    .line 77
    goto :goto_6

    .line 78
    :cond_3
    const/4 v9, 0x3

    .line 79
    if-ne p1, v9, :cond_5

    .line 80
    .line 81
    and-int/lit8 v9, v7, 0x40

    .line 82
    .line 83
    if-eqz v9, :cond_4

    .line 84
    .line 85
    move v9, v5

    .line 86
    goto :goto_1

    .line 87
    :cond_4
    move v9, v3

    .line 88
    :goto_1
    if-eqz v9, :cond_9

    .line 89
    .line 90
    invoke-virtual {v1}, Lb3/h;->b()I

    .line 91
    .line 92
    .line 93
    move-result v9

    .line 94
    invoke-virtual {v1, v9}, Lb3/h;->r(I)V

    .line 95
    .line 96
    .line 97
    add-int/2addr v9, v4

    .line 98
    sub-int/2addr v8, v9

    .line 99
    goto :goto_4

    .line 100
    :cond_5
    if-ne p1, v4, :cond_b

    .line 101
    .line 102
    and-int/lit8 v9, v7, 0x40

    .line 103
    .line 104
    if-eqz v9, :cond_6

    .line 105
    .line 106
    move v9, v5

    .line 107
    goto :goto_2

    .line 108
    :cond_6
    move v9, v3

    .line 109
    :goto_2
    if-eqz v9, :cond_7

    .line 110
    .line 111
    invoke-virtual {v1}, Lb3/h;->g()I

    .line 112
    .line 113
    .line 114
    move-result v9

    .line 115
    add-int/lit8 v10, v9, -0x4

    .line 116
    .line 117
    invoke-virtual {v1, v10}, Lb3/h;->r(I)V

    .line 118
    .line 119
    .line 120
    sub-int/2addr v8, v9

    .line 121
    :cond_7
    and-int/lit8 v9, v7, 0x10

    .line 122
    .line 123
    if-eqz v9, :cond_8

    .line 124
    .line 125
    move v9, v5

    .line 126
    goto :goto_3

    .line 127
    :cond_8
    move v9, v3

    .line 128
    :goto_3
    if-eqz v9, :cond_9

    .line 129
    .line 130
    add-int/lit8 v8, v8, -0xa

    .line 131
    .line 132
    :cond_9
    :goto_4
    if-ge p1, v4, :cond_a

    .line 133
    .line 134
    and-int/lit16 v7, v7, 0x80

    .line 135
    .line 136
    if-eqz v7, :cond_a

    .line 137
    .line 138
    move v7, v5

    .line 139
    goto :goto_5

    .line 140
    :cond_a
    move v7, v3

    .line 141
    :goto_5
    new-instance v9, Lr2/h;

    .line 142
    .line 143
    invoke-direct {v9, p1, v8, v7}, Lr2/h;-><init>(IIZ)V

    .line 144
    .line 145
    .line 146
    goto :goto_7

    .line 147
    :cond_b
    :goto_6
    move-object v9, v6

    .line 148
    :goto_7
    if-nez v9, :cond_c

    .line 149
    .line 150
    return-object v6

    .line 151
    :cond_c
    iget p1, v1, Lb3/h;->a:I

    .line 152
    .line 153
    iget v7, v9, Lr2/h;->a:I

    .line 154
    .line 155
    if-ne v7, p2, :cond_d

    .line 156
    .line 157
    const/4 v2, 0x6

    .line 158
    :cond_d
    iget-boolean p2, v9, Lr2/h;->b:Z

    .line 159
    .line 160
    iget v8, v9, Lr2/h;->c:I

    .line 161
    .line 162
    if-eqz p2, :cond_e

    .line 163
    .line 164
    invoke-static {v8, v1}, Lr2/i;->t(ILb3/h;)I

    .line 165
    .line 166
    .line 167
    move-result v8

    .line 168
    :cond_e
    add-int/2addr p1, v8

    .line 169
    invoke-virtual {v1, p1}, Lb3/h;->p(I)V

    .line 170
    .line 171
    .line 172
    invoke-static {v1, v7, v2, v3}, Lr2/i;->u(Lb3/h;IIZ)Z

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    if-nez p1, :cond_10

    .line 177
    .line 178
    if-ne v7, v4, :cond_f

    .line 179
    .line 180
    invoke-static {v1, v4, v2, v5}, Lr2/i;->u(Lb3/h;IIZ)Z

    .line 181
    .line 182
    .line 183
    move-result p1

    .line 184
    if-eqz p1, :cond_f

    .line 185
    .line 186
    move v3, v5

    .line 187
    goto :goto_8

    .line 188
    :cond_f
    return-object v6

    .line 189
    :cond_10
    :goto_8
    iget p1, v1, Lb3/h;->b:I

    .line 190
    .line 191
    iget p2, v1, Lb3/h;->a:I

    .line 192
    .line 193
    sub-int/2addr p1, p2

    .line 194
    if-lt p1, v2, :cond_11

    .line 195
    .line 196
    iget-object p1, p0, Lr2/i;->a:Lr2/g;

    .line 197
    .line 198
    invoke-static {v7, v1, v3, v2, p1}, Lr2/i;->f(ILb3/h;ZILr2/g;)Lr2/j;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    if-eqz p1, :cond_10

    .line 203
    .line 204
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    goto :goto_8

    .line 208
    :cond_11
    new-instance p1, Lp2/b;

    .line 209
    .line 210
    invoke-direct {p1, v0}, Lp2/b;-><init>(Ljava/util/ArrayList;)V

    .line 211
    .line 212
    .line 213
    return-object p1
.end method
