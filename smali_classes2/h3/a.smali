.class public final Lh3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:[I

.field public final d:I


# direct methods
.method public constructor <init>(II[II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lh3/a;->a:I

    iput p2, p0, Lh3/a;->b:I

    iput-object p3, p0, Lh3/a;->c:[I

    iput p4, p0, Lh3/a;->d:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 12

    .line 1
    const/16 v0, 0x4b

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    const/high16 v1, 0x40000000    # 2.0f

    .line 5
    .line 6
    div-float/2addr v0, v1

    .line 7
    const/high16 v1, 0x3f800000    # 1.0f

    .line 8
    .line 9
    sub-float/2addr v0, v1

    .line 10
    iget v1, p0, Lh3/a;->d:I

    .line 11
    .line 12
    move v2, v1

    .line 13
    :goto_0
    const-string v3, " ... "

    .line 14
    .line 15
    iget-object v4, p0, Lh3/a;->c:[I

    .line 16
    .line 17
    const-string v5, ""

    .line 18
    .line 19
    if-lez v2, :cond_1

    .line 20
    .line 21
    add-int/lit8 v6, v2, -0x1

    .line 22
    .line 23
    aget v7, v4, v6

    .line 24
    .line 25
    sget-object v8, Lr3/a;->e:Lr3/a;

    .line 26
    .line 27
    invoke-virtual {v8, v7}, Lr3/a;->a(I)Z

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    if-nez v7, :cond_1

    .line 32
    .line 33
    sub-int v2, v1, v6

    .line 34
    .line 35
    int-to-float v2, v2

    .line 36
    cmpl-float v2, v2, v0

    .line 37
    .line 38
    if-lez v2, :cond_0

    .line 39
    .line 40
    add-int/lit8 v2, v6, 0x5

    .line 41
    .line 42
    move-object v6, v3

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    move v2, v6

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    move-object v6, v5

    .line 47
    :goto_1
    move v7, v1

    .line 48
    :cond_2
    array-length v8, v4

    .line 49
    if-ge v7, v8, :cond_3

    .line 50
    .line 51
    aget v8, v4, v7

    .line 52
    .line 53
    sget-object v9, Lr3/a;->e:Lr3/a;

    .line 54
    .line 55
    invoke-virtual {v9, v8}, Lr3/a;->a(I)Z

    .line 56
    .line 57
    .line 58
    move-result v8

    .line 59
    if-nez v8, :cond_3

    .line 60
    .line 61
    add-int/lit8 v7, v7, 0x1

    .line 62
    .line 63
    sub-int v8, v7, v1

    .line 64
    .line 65
    int-to-float v8, v8

    .line 66
    cmpl-float v8, v8, v0

    .line 67
    .line 68
    if-lez v8, :cond_2

    .line 69
    .line 70
    add-int/lit8 v7, v7, -0x5

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_3
    move-object v3, v5

    .line 74
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    const/4 v5, 0x0

    .line 80
    move v8, v5

    .line 81
    :goto_3
    const/4 v9, 0x4

    .line 82
    const-string v10, " "

    .line 83
    .line 84
    if-ge v8, v9, :cond_4

    .line 85
    .line 86
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    add-int/lit8 v8, v8, 0x1

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_4
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    move v8, v2

    .line 96
    :goto_4
    if-ge v8, v7, :cond_5

    .line 97
    .line 98
    aget v11, v4, v8

    .line 99
    .line 100
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    add-int/lit8 v8, v8, 0x1

    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v3, "\n"

    .line 110
    .line 111
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    :goto_5
    add-int v3, v9, v1

    .line 115
    .line 116
    sub-int/2addr v3, v2

    .line 117
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    add-int/2addr v4, v3

    .line 122
    if-ge v5, v4, :cond_6

    .line 123
    .line 124
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    add-int/lit8 v5, v5, 0x1

    .line 128
    .line 129
    goto :goto_5

    .line 130
    :cond_6
    const-string v1, "^"

    .line 131
    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    const-string v2, " in \'reader\', line "

    .line 142
    .line 143
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    iget v2, p0, Lh3/a;->a:I

    .line 147
    .line 148
    add-int/lit8 v2, v2, 0x1

    .line 149
    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v2, ", column "

    .line 154
    .line 155
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    iget v2, p0, Lh3/a;->b:I

    .line 159
    .line 160
    add-int/lit8 v2, v2, 0x1

    .line 161
    .line 162
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    const-string v2, ":\n"

    .line 166
    .line 167
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    return-object v0
.end method
