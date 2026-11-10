.class public final Ln2/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/util/List;

.field public final c:[Lk2/o;


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 1

    .line 1
    iput p1, p0, Ln2/w;->a:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Ln2/w;->b:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    new-array p1, p1, [Lk2/o;

    .line 16
    .line 17
    iput-object p1, p0, Ln2/w;->c:[Lk2/o;

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p2, p0, Ln2/w;->b:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    new-array p1, p1, [Lk2/o;

    .line 30
    .line 31
    iput-object p1, p0, Ln2/w;->c:[Lk2/o;

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final a(JLb3/h;)V
    .locals 5

    .line 1
    iget v0, p0, Ln2/w;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Ln2/w;->c:[Lk2/o;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    invoke-static {p1, p2, p3, v1}, Lcom/google/android/gms/internal/play_billing/i0;->n(JLb3/h;[Lk2/o;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :goto_0
    iget v0, p3, Lb3/h;->b:I

    .line 14
    .line 15
    iget v2, p3, Lb3/h;->a:I

    .line 16
    .line 17
    sub-int/2addr v0, v2

    .line 18
    const/16 v2, 0x9

    .line 19
    .line 20
    if-ge v0, v2, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    invoke-virtual {p3}, Lb3/h;->b()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p3}, Lb3/h;->b()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-virtual {p3}, Lb3/h;->h()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    const/16 v4, 0x1b2

    .line 36
    .line 37
    if-ne v0, v4, :cond_1

    .line 38
    .line 39
    const v0, 0x47413934

    .line 40
    .line 41
    .line 42
    if-ne v2, v0, :cond_1

    .line 43
    .line 44
    const/4 v0, 0x3

    .line 45
    if-ne v3, v0, :cond_1

    .line 46
    .line 47
    invoke-static {p1, p2, p3, v1}, Lcom/google/android/gms/internal/play_billing/i0;->o(JLb3/h;[Lk2/o;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    :goto_1
    return-void

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lk2/i;Ln2/e0;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    iget v5, v0, Ln2/w;->a:I

    .line 7
    .line 8
    const-string v6, "Invalid closed caption mime type provided: "

    .line 9
    .line 10
    const-string v7, "application/cea-708"

    .line 11
    .line 12
    const-string v8, "application/cea-608"

    .line 13
    .line 14
    iget-object v9, v0, Ln2/w;->b:Ljava/util/List;

    .line 15
    .line 16
    iget-object v10, v0, Ln2/w;->c:[Lk2/o;

    .line 17
    .line 18
    packed-switch v5, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    goto :goto_4

    .line 22
    :pswitch_0
    const/4 v5, 0x0

    .line 23
    :goto_0
    array-length v11, v10

    .line 24
    if-ge v5, v11, :cond_3

    .line 25
    .line 26
    invoke-virtual/range {p2 .. p2}, Ln2/e0;->a()V

    .line 27
    .line 28
    .line 29
    invoke-virtual/range {p2 .. p2}, Ln2/e0;->b()V

    .line 30
    .line 31
    .line 32
    iget v11, v1, Ln2/e0;->d:I

    .line 33
    .line 34
    move-object/from16 v12, p1

    .line 35
    .line 36
    check-cast v12, Lw2/p;

    .line 37
    .line 38
    invoke-virtual {v12, v11, v2}, Lw2/p;->C(II)Lk2/o;

    .line 39
    .line 40
    .line 41
    move-result-object v11

    .line 42
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v12

    .line 46
    check-cast v12, Lf2/t;

    .line 47
    .line 48
    iget-object v14, v12, Lf2/t;->i:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v13

    .line 54
    if-nez v13, :cond_1

    .line 55
    .line 56
    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v13

    .line 60
    if-eqz v13, :cond_0

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_0
    const/4 v13, 0x0

    .line 64
    goto :goto_2

    .line 65
    :cond_1
    :goto_1
    const/4 v13, 0x1

    .line 66
    :goto_2
    new-instance v15, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v15, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v15

    .line 78
    invoke-static {v15, v13}, Lcom/google/android/gms/internal/play_billing/i0;->f(Ljava/lang/String;Z)V

    .line 79
    .line 80
    .line 81
    iget-object v13, v12, Lf2/t;->a:Ljava/lang/String;

    .line 82
    .line 83
    if-eqz v13, :cond_2

    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_2
    invoke-virtual/range {p2 .. p2}, Ln2/e0;->b()V

    .line 87
    .line 88
    .line 89
    iget-object v13, v1, Ln2/e0;->e:Ljava/lang/String;

    .line 90
    .line 91
    :goto_3
    iget v15, v12, Lf2/t;->c:I

    .line 92
    .line 93
    iget-object v3, v12, Lf2/t;->A:Ljava/lang/String;

    .line 94
    .line 95
    iget v4, v12, Lf2/t;->B:I

    .line 96
    .line 97
    const-wide v18, 0x7fffffffffffffffL

    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    iget-object v12, v12, Lf2/t;->k:Ljava/util/List;

    .line 103
    .line 104
    move-object/from16 v16, v3

    .line 105
    .line 106
    move/from16 v17, v4

    .line 107
    .line 108
    move-object/from16 v20, v12

    .line 109
    .line 110
    invoke-static/range {v13 .. v20}, Lf2/t;->k(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IJLjava/util/List;)Lf2/t;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-interface {v11, v3}, Lk2/o;->c(Lf2/t;)V

    .line 115
    .line 116
    .line 117
    aput-object v11, v10, v5

    .line 118
    .line 119
    add-int/lit8 v5, v5, 0x1

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_3
    return-void

    .line 123
    :goto_4
    const/4 v3, 0x0

    .line 124
    :goto_5
    array-length v4, v10

    .line 125
    if-ge v3, v4, :cond_6

    .line 126
    .line 127
    invoke-virtual/range {p2 .. p2}, Ln2/e0;->a()V

    .line 128
    .line 129
    .line 130
    invoke-virtual/range {p2 .. p2}, Ln2/e0;->b()V

    .line 131
    .line 132
    .line 133
    iget v4, v1, Ln2/e0;->d:I

    .line 134
    .line 135
    move-object/from16 v5, p1

    .line 136
    .line 137
    check-cast v5, Lw2/p;

    .line 138
    .line 139
    invoke-virtual {v5, v4, v2}, Lw2/p;->C(II)Lk2/o;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    check-cast v5, Lf2/t;

    .line 148
    .line 149
    iget-object v12, v5, Lf2/t;->i:Ljava/lang/String;

    .line 150
    .line 151
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v11

    .line 155
    if-nez v11, :cond_5

    .line 156
    .line 157
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v11

    .line 161
    if-eqz v11, :cond_4

    .line 162
    .line 163
    goto :goto_6

    .line 164
    :cond_4
    const/4 v11, 0x0

    .line 165
    goto :goto_7

    .line 166
    :cond_5
    :goto_6
    const/4 v11, 0x1

    .line 167
    :goto_7
    new-instance v13, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {v13, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v13

    .line 179
    invoke-static {v13, v11}, Lcom/google/android/gms/internal/play_billing/i0;->f(Ljava/lang/String;Z)V

    .line 180
    .line 181
    .line 182
    invoke-virtual/range {p2 .. p2}, Ln2/e0;->b()V

    .line 183
    .line 184
    .line 185
    iget-object v11, v1, Ln2/e0;->e:Ljava/lang/String;

    .line 186
    .line 187
    iget v13, v5, Lf2/t;->c:I

    .line 188
    .line 189
    iget-object v14, v5, Lf2/t;->A:Ljava/lang/String;

    .line 190
    .line 191
    iget v15, v5, Lf2/t;->B:I

    .line 192
    .line 193
    const-wide v16, 0x7fffffffffffffffL

    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    iget-object v5, v5, Lf2/t;->k:Ljava/util/List;

    .line 199
    .line 200
    move-object/from16 v18, v5

    .line 201
    .line 202
    invoke-static/range {v11 .. v18}, Lf2/t;->k(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IJLjava/util/List;)Lf2/t;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    invoke-interface {v4, v5}, Lk2/o;->c(Lf2/t;)V

    .line 207
    .line 208
    .line 209
    aput-object v4, v10, v3

    .line 210
    .line 211
    add-int/lit8 v3, v3, 0x1

    .line 212
    .line 213
    goto :goto_5

    .line 214
    :cond_6
    return-void

    .line 215
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
