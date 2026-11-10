.class public final Lw2/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk2/o;


# static fields
.field public static final g:Lf2/t;

.field public static final h:Lf2/t;


# instance fields
.field public final a:Lc/a;

.field public final b:Lk2/o;

.field public final c:Lf2/t;

.field public d:Lf2/t;

.field public e:[B

.field public f:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "application/id3"

    const-wide v1, 0x7fffffffffffffffL

    invoke-static {v0, v1, v2}, Lf2/t;->h(Ljava/lang/String;J)Lf2/t;

    move-result-object v0

    sput-object v0, Lw2/n;->g:Lf2/t;

    const-string v0, "application/x-emsg"

    invoke-static {v0, v1, v2}, Lf2/t;->h(Ljava/lang/String;J)Lf2/t;

    move-result-object v0

    sput-object v0, Lw2/n;->h:Lf2/t;

    return-void
.end method

.method public constructor <init>(Lk2/o;I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lc/a;

    .line 5
    .line 6
    const/16 v1, 0x10

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v0, v1, v2}, Lc/a;-><init>(II)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lw2/n;->a:Lc/a;

    .line 13
    .line 14
    iput-object p1, p0, Lw2/n;->b:Lk2/o;

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    if-eq p2, p1, :cond_1

    .line 18
    .line 19
    const/4 p1, 0x3

    .line 20
    if-ne p2, p1, :cond_0

    .line 21
    .line 22
    sget-object p1, Lw2/n;->h:Lf2/t;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 26
    .line 27
    const-string v0, "Unknown metadataType: "

    .line 28
    .line 29
    invoke-static {v0, p2}, La1/b;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p1

    .line 37
    :cond_1
    sget-object p1, Lw2/n;->g:Lf2/t;

    .line 38
    .line 39
    :goto_0
    iput-object p1, p0, Lw2/n;->c:Lf2/t;

    .line 40
    .line 41
    new-array p1, v2, [B

    .line 42
    .line 43
    iput-object p1, p0, Lw2/n;->e:[B

    .line 44
    .line 45
    iput v2, p0, Lw2/n;->f:I

    .line 46
    .line 47
    return-void
.end method


# virtual methods
.method public final a(Lk2/f;IZ)I
    .locals 3

    .line 1
    iget v0, p0, Lw2/n;->f:I

    .line 2
    .line 3
    add-int/2addr v0, p2

    .line 4
    iget-object v1, p0, Lw2/n;->e:[B

    .line 5
    .line 6
    array-length v2, v1

    .line 7
    if-ge v2, v0, :cond_0

    .line 8
    .line 9
    div-int/lit8 v2, v0, 0x2

    .line 10
    .line 11
    add-int/2addr v2, v0

    .line 12
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lw2/n;->e:[B

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lw2/n;->e:[B

    .line 19
    .line 20
    iget v1, p0, Lw2/n;->f:I

    .line 21
    .line 22
    invoke-virtual {p1, v0, v1, p2}, Lk2/f;->c([BII)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    const/4 p2, -0x1

    .line 27
    if-ne p1, p2, :cond_2

    .line 28
    .line 29
    if-eqz p3, :cond_1

    .line 30
    .line 31
    return p2

    .line 32
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    .line 33
    .line 34
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 35
    .line 36
    .line 37
    throw p1

    .line 38
    :cond_2
    iget p2, p0, Lw2/n;->f:I

    .line 39
    .line 40
    add-int/2addr p2, p1

    .line 41
    iput p2, p0, Lw2/n;->f:I

    .line 42
    .line 43
    return p1
.end method

.method public final b(JIIILk2/n;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v6, p5

    .line 3
    .line 4
    iget-object v1, v0, Lw2/n;->d:Lf2/t;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iget v1, v0, Lw2/n;->f:I

    .line 10
    .line 11
    sub-int/2addr v1, v6

    .line 12
    sub-int v2, v1, p4

    .line 13
    .line 14
    iget-object v3, v0, Lw2/n;->e:[B

    .line 15
    .line 16
    invoke-static {v3, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    new-instance v3, Lb3/h;

    .line 21
    .line 22
    invoke-direct {v3, v2}, Lb3/h;-><init>([B)V

    .line 23
    .line 24
    .line 25
    iget-object v2, v0, Lw2/n;->e:[B

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    invoke-static {v2, v1, v2, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    .line 30
    .line 31
    iput v6, v0, Lw2/n;->f:I

    .line 32
    .line 33
    iget-object v1, v0, Lw2/n;->d:Lf2/t;

    .line 34
    .line 35
    iget-object v1, v1, Lf2/t;->i:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v2, v0, Lw2/n;->c:Lf2/t;

    .line 38
    .line 39
    iget-object v5, v2, Lf2/t;->i:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v1, v5}, Lb3/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_0
    iget-object v1, v0, Lw2/n;->d:Lf2/t;

    .line 49
    .line 50
    iget-object v1, v1, Lf2/t;->i:Ljava/lang/String;

    .line 51
    .line 52
    const-string v5, "application/x-emsg"

    .line 53
    .line 54
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_4

    .line 59
    .line 60
    iget-object v1, v0, Lw2/n;->a:Lc/a;

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Lb3/h;->e()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v8

    .line 69
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3}, Lb3/h;->e()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v9

    .line 76
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3}, Lb3/h;->i()J

    .line 80
    .line 81
    .line 82
    move-result-wide v10

    .line 83
    invoke-virtual {v3}, Lb3/h;->i()J

    .line 84
    .line 85
    .line 86
    move-result-wide v12

    .line 87
    iget-object v1, v3, Lb3/h;->c:Ljava/io/Serializable;

    .line 88
    .line 89
    check-cast v1, [B

    .line 90
    .line 91
    iget v5, v3, Lb3/h;->a:I

    .line 92
    .line 93
    iget v3, v3, Lb3/h;->b:I

    .line 94
    .line 95
    invoke-static {v1, v5, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    new-instance v3, Lq2/a;

    .line 100
    .line 101
    move-object v7, v3

    .line 102
    move-object v14, v1

    .line 103
    invoke-direct/range {v7 .. v14}, Lq2/a;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3}, Lq2/a;->a()Lf2/t;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    if-eqz v5, :cond_1

    .line 111
    .line 112
    iget-object v7, v2, Lf2/t;->i:Ljava/lang/String;

    .line 113
    .line 114
    iget-object v5, v5, Lf2/t;->i:Ljava/lang/String;

    .line 115
    .line 116
    invoke-static {v7, v5}, Lb3/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    if-eqz v5, :cond_1

    .line 121
    .line 122
    const/4 v4, 0x1

    .line 123
    :cond_1
    if-nez v4, :cond_2

    .line 124
    .line 125
    iget-object v1, v2, Lf2/t;->i:Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {v3}, Lq2/a;->a()Lf2/t;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    const-string v2, "Ignoring EMSG. Expected it to contain wrapped %s but actual wrapped format: %s"

    .line 136
    .line 137
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :cond_2
    new-instance v2, Lb3/h;

    .line 142
    .line 143
    invoke-virtual {v3}, Lq2/a;->a()Lf2/t;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    if-eqz v3, :cond_3

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_3
    const/4 v1, 0x0

    .line 151
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    invoke-direct {v2, v1}, Lb3/h;-><init>([B)V

    .line 155
    .line 156
    .line 157
    move-object v3, v2

    .line 158
    :goto_1
    iget v1, v3, Lb3/h;->b:I

    .line 159
    .line 160
    iget v2, v3, Lb3/h;->a:I

    .line 161
    .line 162
    sub-int v5, v1, v2

    .line 163
    .line 164
    iget-object v1, v0, Lw2/n;->b:Lk2/o;

    .line 165
    .line 166
    invoke-interface {v1, v5, v3}, Lk2/o;->d(ILb3/h;)V

    .line 167
    .line 168
    .line 169
    iget-object v1, v0, Lw2/n;->b:Lk2/o;

    .line 170
    .line 171
    move-wide/from16 v2, p1

    .line 172
    .line 173
    move/from16 v4, p3

    .line 174
    .line 175
    move/from16 v6, p5

    .line 176
    .line 177
    move-object/from16 v7, p6

    .line 178
    .line 179
    invoke-interface/range {v1 .. v7}, Lk2/o;->b(JIIILk2/n;)V

    .line 180
    .line 181
    .line 182
    return-void

    .line 183
    :cond_4
    iget-object v1, v0, Lw2/n;->d:Lf2/t;

    .line 184
    .line 185
    iget-object v1, v1, Lf2/t;->i:Ljava/lang/String;

    .line 186
    .line 187
    return-void
.end method

.method public final c(Lf2/t;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lw2/n;->d:Lf2/t;

    iget-object p1, p0, Lw2/n;->b:Lk2/o;

    iget-object v0, p0, Lw2/n;->c:Lf2/t;

    invoke-interface {p1, v0}, Lk2/o;->c(Lf2/t;)V

    return-void
.end method

.method public final d(ILb3/h;)V
    .locals 3

    .line 1
    iget v0, p0, Lw2/n;->f:I

    .line 2
    .line 3
    add-int/2addr v0, p1

    .line 4
    iget-object v1, p0, Lw2/n;->e:[B

    .line 5
    .line 6
    array-length v2, v1

    .line 7
    if-ge v2, v0, :cond_0

    .line 8
    .line 9
    div-int/lit8 v2, v0, 0x2

    .line 10
    .line 11
    add-int/2addr v2, v0

    .line 12
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lw2/n;->e:[B

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lw2/n;->e:[B

    .line 19
    .line 20
    iget v1, p0, Lw2/n;->f:I

    .line 21
    .line 22
    invoke-virtual {p2, v0, v1, p1}, Lb3/h;->a([BII)V

    .line 23
    .line 24
    .line 25
    iget p2, p0, Lw2/n;->f:I

    .line 26
    .line 27
    add-int/2addr p2, p1

    .line 28
    iput p2, p0, Lw2/n;->f:I

    .line 29
    .line 30
    return-void
.end method
