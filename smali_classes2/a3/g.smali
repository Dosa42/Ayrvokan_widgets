.class public final La3/g;
.super La3/e;
.source "SourceFile"


# instance fields
.field public d:La3/l;

.field public e:[B

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, La3/e;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final b(La3/l;)J
    .locals 4

    .line 1
    invoke-virtual {p0}, La3/e;->g()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, La3/g;->d:La3/l;

    .line 5
    .line 6
    iget-wide v0, p1, La3/l;->f:J

    .line 7
    .line 8
    long-to-int v0, v0

    .line 9
    iput v0, p0, La3/g;->g:I

    .line 10
    .line 11
    iget-object v0, p1, La3/l;->a:Landroid/net/Uri;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "data"

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_4

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    sget v2, Lb3/n;->a:I

    .line 30
    .line 31
    const/4 v2, -0x1

    .line 32
    const-string v3, ","

    .line 33
    .line 34
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    array-length v2, v1

    .line 39
    const/4 v3, 0x2

    .line 40
    if-ne v2, v3, :cond_3

    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    aget-object v0, v1, v0

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    aget-object v1, v1, v2

    .line 47
    .line 48
    const-string v3, ";base64"

    .line 49
    .line 50
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_0

    .line 55
    .line 56
    :try_start_0
    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    iput-object v1, p0, La3/g;->e:[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catch_0
    move-exception p1

    .line 64
    new-instance v1, Lf2/z;

    .line 65
    .line 66
    const-string v2, "Error while parsing Base64 encoded string: "

    .line 67
    .line 68
    invoke-static {v2, v0}, La1/b;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-direct {v1, v0, p1}, Lf2/z;-><init>(Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 73
    .line 74
    .line 75
    throw v1

    .line 76
    :cond_0
    const-string v1, "US-ASCII"

    .line 77
    .line 78
    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    const-string v1, "UTF-8"

    .line 83
    .line 84
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    iput-object v0, p0, La3/g;->e:[B

    .line 93
    .line 94
    :goto_0
    iget-wide v0, p1, La3/l;->g:J

    .line 95
    .line 96
    const-wide/16 v2, -0x1

    .line 97
    .line 98
    cmp-long v2, v0, v2

    .line 99
    .line 100
    if-eqz v2, :cond_1

    .line 101
    .line 102
    long-to-int v0, v0

    .line 103
    iget v1, p0, La3/g;->g:I

    .line 104
    .line 105
    add-int/2addr v0, v1

    .line 106
    goto :goto_1

    .line 107
    :cond_1
    iget-object v0, p0, La3/g;->e:[B

    .line 108
    .line 109
    array-length v0, v0

    .line 110
    :goto_1
    iput v0, p0, La3/g;->f:I

    .line 111
    .line 112
    iget-object v1, p0, La3/g;->e:[B

    .line 113
    .line 114
    array-length v1, v1

    .line 115
    if-gt v0, v1, :cond_2

    .line 116
    .line 117
    iget v1, p0, La3/g;->g:I

    .line 118
    .line 119
    if-gt v1, v0, :cond_2

    .line 120
    .line 121
    invoke-virtual {p0, p1}, La3/e;->h(La3/l;)V

    .line 122
    .line 123
    .line 124
    iget p1, p0, La3/g;->f:I

    .line 125
    .line 126
    int-to-long v0, p1

    .line 127
    iget p1, p0, La3/g;->g:I

    .line 128
    .line 129
    int-to-long v2, p1

    .line 130
    sub-long/2addr v0, v2

    .line 131
    return-wide v0

    .line 132
    :cond_2
    const/4 p1, 0x0

    .line 133
    iput-object p1, p0, La3/g;->e:[B

    .line 134
    .line 135
    new-instance p1, La3/j;

    .line 136
    .line 137
    invoke-direct {p1}, La3/j;-><init>()V

    .line 138
    .line 139
    .line 140
    throw p1

    .line 141
    :cond_3
    new-instance p1, Lf2/z;

    .line 142
    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    const-string v2, "Unexpected URI format: "

    .line 146
    .line 147
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-direct {p1, v0}, Lf2/z;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    throw p1

    .line 161
    :cond_4
    new-instance p1, Lf2/z;

    .line 162
    .line 163
    const-string v0, "Unsupported scheme: "

    .line 164
    .line 165
    invoke-static {v0, v1}, La1/b;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-direct {p1, v0}, Lf2/z;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    throw p1
.end method

.method public final close()V
    .locals 2

    .line 1
    iget-object v0, p0, La3/g;->e:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, La3/g;->e:[B

    invoke-virtual {p0}, La3/e;->f()V

    :cond_0
    iput-object v1, p0, La3/g;->d:La3/l;

    return-void
.end method

.method public final d([BII)I
    .locals 2

    .line 1
    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget v0, p0, La3/g;->f:I

    iget v1, p0, La3/g;->g:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p0, La3/g;->e:[B

    sget v1, Lb3/n;->a:I

    iget v1, p0, La3/g;->g:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, La3/g;->g:I

    add-int/2addr p1, p3

    iput p1, p0, La3/g;->g:I

    invoke-virtual {p0, p3}, La3/e;->e(I)V

    return p3
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, La3/g;->d:La3/l;

    if-eqz v0, :cond_0

    iget-object v0, v0, La3/l;->a:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
