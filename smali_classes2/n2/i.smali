.class public final Ln2/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln2/j;


# instance fields
.field public final synthetic a:I

.field public b:Z

.field public c:J

.field public d:I

.field public e:I

.field public final f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Ln2/i;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb3/h;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lb3/h;-><init>(I)V

    iput-object v0, p0, Ln2/i;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ln2/i;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln2/i;->f:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lk2/o;

    iput-object p1, p0, Ln2/i;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final b(Lb3/h;)V
    .locals 9

    .line 1
    iget v0, p0, Ln2/i;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    goto/16 :goto_4

    .line 8
    .line 9
    :pswitch_0
    iget-boolean v0, p0, Ln2/i;->b:Z

    .line 10
    .line 11
    if-eqz v0, :cond_7

    .line 12
    .line 13
    iget v0, p0, Ln2/i;->d:I

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    if-ne v0, v2, :cond_2

    .line 17
    .line 18
    iget v0, p1, Lb3/h;->b:I

    .line 19
    .line 20
    iget v2, p1, Lb3/h;->a:I

    .line 21
    .line 22
    sub-int/2addr v0, v2

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    move v0, v1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p1}, Lb3/h;->h()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/16 v2, 0x20

    .line 32
    .line 33
    if-eq v0, v2, :cond_1

    .line 34
    .line 35
    iput-boolean v1, p0, Ln2/i;->b:Z

    .line 36
    .line 37
    :cond_1
    iget v0, p0, Ln2/i;->d:I

    .line 38
    .line 39
    add-int/lit8 v0, v0, -0x1

    .line 40
    .line 41
    iput v0, p0, Ln2/i;->d:I

    .line 42
    .line 43
    iget-boolean v0, p0, Ln2/i;->b:Z

    .line 44
    .line 45
    :goto_0
    if-nez v0, :cond_2

    .line 46
    .line 47
    goto :goto_3

    .line 48
    :cond_2
    iget v0, p0, Ln2/i;->d:I

    .line 49
    .line 50
    const/4 v2, 0x1

    .line 51
    if-ne v0, v2, :cond_5

    .line 52
    .line 53
    iget v0, p1, Lb3/h;->b:I

    .line 54
    .line 55
    iget v2, p1, Lb3/h;->a:I

    .line 56
    .line 57
    sub-int/2addr v0, v2

    .line 58
    if-nez v0, :cond_3

    .line 59
    .line 60
    move v0, v1

    .line 61
    goto :goto_1

    .line 62
    :cond_3
    invoke-virtual {p1}, Lb3/h;->h()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_4

    .line 67
    .line 68
    iput-boolean v1, p0, Ln2/i;->b:Z

    .line 69
    .line 70
    :cond_4
    iget v0, p0, Ln2/i;->d:I

    .line 71
    .line 72
    add-int/lit8 v0, v0, -0x1

    .line 73
    .line 74
    iput v0, p0, Ln2/i;->d:I

    .line 75
    .line 76
    iget-boolean v0, p0, Ln2/i;->b:Z

    .line 77
    .line 78
    :goto_1
    if-nez v0, :cond_5

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_5
    iget v0, p1, Lb3/h;->a:I

    .line 82
    .line 83
    iget v2, p1, Lb3/h;->b:I

    .line 84
    .line 85
    sub-int/2addr v2, v0

    .line 86
    iget-object v3, p0, Ln2/i;->g:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v3, [Lk2/o;

    .line 89
    .line 90
    array-length v4, v3

    .line 91
    :goto_2
    if-ge v1, v4, :cond_6

    .line 92
    .line 93
    aget-object v5, v3, v1

    .line 94
    .line 95
    invoke-virtual {p1, v0}, Lb3/h;->q(I)V

    .line 96
    .line 97
    .line 98
    invoke-interface {v5, v2, p1}, Lk2/o;->d(ILb3/h;)V

    .line 99
    .line 100
    .line 101
    add-int/lit8 v1, v1, 0x1

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_6
    iget p1, p0, Ln2/i;->e:I

    .line 105
    .line 106
    add-int/2addr p1, v2

    .line 107
    iput p1, p0, Ln2/i;->e:I

    .line 108
    .line 109
    :cond_7
    :goto_3
    return-void

    .line 110
    :goto_4
    iget-boolean v0, p0, Ln2/i;->b:Z

    .line 111
    .line 112
    if-nez v0, :cond_8

    .line 113
    .line 114
    goto :goto_7

    .line 115
    :cond_8
    iget v0, p1, Lb3/h;->b:I

    .line 116
    .line 117
    iget v2, p1, Lb3/h;->a:I

    .line 118
    .line 119
    sub-int/2addr v0, v2

    .line 120
    iget v2, p0, Ln2/i;->e:I

    .line 121
    .line 122
    const/16 v3, 0xa

    .line 123
    .line 124
    if-ge v2, v3, :cond_b

    .line 125
    .line 126
    rsub-int/lit8 v2, v2, 0xa

    .line 127
    .line 128
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    iget-object v4, p1, Lb3/h;->c:Ljava/io/Serializable;

    .line 133
    .line 134
    check-cast v4, [B

    .line 135
    .line 136
    iget v5, p1, Lb3/h;->a:I

    .line 137
    .line 138
    iget-object v6, p0, Ln2/i;->f:Ljava/lang/Object;

    .line 139
    .line 140
    check-cast v6, Lb3/h;

    .line 141
    .line 142
    iget-object v7, v6, Lb3/h;->c:Ljava/io/Serializable;

    .line 143
    .line 144
    check-cast v7, [B

    .line 145
    .line 146
    iget v8, p0, Ln2/i;->e:I

    .line 147
    .line 148
    invoke-static {v4, v5, v7, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    .line 150
    .line 151
    iget v4, p0, Ln2/i;->e:I

    .line 152
    .line 153
    add-int/2addr v4, v2

    .line 154
    if-ne v4, v3, :cond_b

    .line 155
    .line 156
    invoke-virtual {v6, v1}, Lb3/h;->q(I)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v6}, Lb3/h;->h()I

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    const/16 v4, 0x49

    .line 164
    .line 165
    if-ne v4, v2, :cond_a

    .line 166
    .line 167
    invoke-virtual {v6}, Lb3/h;->h()I

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    const/16 v4, 0x44

    .line 172
    .line 173
    if-ne v4, v2, :cond_a

    .line 174
    .line 175
    invoke-virtual {v6}, Lb3/h;->h()I

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    const/16 v4, 0x33

    .line 180
    .line 181
    if-eq v4, v2, :cond_9

    .line 182
    .line 183
    goto :goto_5

    .line 184
    :cond_9
    const/4 v1, 0x3

    .line 185
    invoke-virtual {v6, v1}, Lb3/h;->r(I)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v6}, Lb3/h;->g()I

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    add-int/2addr v1, v3

    .line 193
    iput v1, p0, Ln2/i;->d:I

    .line 194
    .line 195
    goto :goto_6

    .line 196
    :cond_a
    :goto_5
    iput-boolean v1, p0, Ln2/i;->b:Z

    .line 197
    .line 198
    goto :goto_7

    .line 199
    :cond_b
    :goto_6
    iget v1, p0, Ln2/i;->d:I

    .line 200
    .line 201
    iget v2, p0, Ln2/i;->e:I

    .line 202
    .line 203
    sub-int/2addr v1, v2

    .line 204
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    iget-object v1, p0, Ln2/i;->g:Ljava/lang/Object;

    .line 209
    .line 210
    check-cast v1, Lk2/o;

    .line 211
    .line 212
    invoke-interface {v1, v0, p1}, Lk2/o;->d(ILb3/h;)V

    .line 213
    .line 214
    .line 215
    iget p1, p0, Ln2/i;->e:I

    .line 216
    .line 217
    add-int/2addr p1, v0

    .line 218
    iput p1, p0, Ln2/i;->e:I

    .line 219
    .line 220
    :goto_7
    return-void

    .line 221
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c()V
    .locals 11

    .line 1
    iget v0, p0, Ln2/i;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    goto :goto_1

    .line 8
    :pswitch_0
    iget-boolean v0, p0, Ln2/i;->b:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Ln2/i;->g:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, [Lk2/o;

    .line 15
    .line 16
    array-length v2, v0

    .line 17
    move v3, v1

    .line 18
    :goto_0
    if-ge v3, v2, :cond_0

    .line 19
    .line 20
    aget-object v4, v0, v3

    .line 21
    .line 22
    iget-wide v5, p0, Ln2/i;->c:J

    .line 23
    .line 24
    const/4 v7, 0x1

    .line 25
    iget v8, p0, Ln2/i;->e:I

    .line 26
    .line 27
    const/4 v9, 0x0

    .line 28
    const/4 v10, 0x0

    .line 29
    invoke-interface/range {v4 .. v10}, Lk2/o;->b(JIIILk2/n;)V

    .line 30
    .line 31
    .line 32
    add-int/lit8 v3, v3, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iput-boolean v1, p0, Ln2/i;->b:Z

    .line 36
    .line 37
    :cond_1
    return-void

    .line 38
    :goto_1
    iget-boolean v0, p0, Ln2/i;->b:Z

    .line 39
    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    iget v6, p0, Ln2/i;->d:I

    .line 43
    .line 44
    if-eqz v6, :cond_3

    .line 45
    .line 46
    iget v0, p0, Ln2/i;->e:I

    .line 47
    .line 48
    if-eq v0, v6, :cond_2

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    iget-object v0, p0, Ln2/i;->g:Ljava/lang/Object;

    .line 52
    .line 53
    move-object v2, v0

    .line 54
    check-cast v2, Lk2/o;

    .line 55
    .line 56
    iget-wide v3, p0, Ln2/i;->c:J

    .line 57
    .line 58
    const/4 v5, 0x1

    .line 59
    const/4 v7, 0x0

    .line 60
    const/4 v8, 0x0

    .line 61
    invoke-interface/range {v2 .. v8}, Lk2/o;->b(JIIILk2/n;)V

    .line 62
    .line 63
    .line 64
    iput-boolean v1, p0, Ln2/i;->b:Z

    .line 65
    .line 66
    :cond_3
    :goto_2
    return-void

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d(JI)V
    .locals 3

    .line 1
    iget v0, p0, Ln2/i;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_1

    .line 9
    :pswitch_0
    and-int/lit8 p3, p3, 0x4

    .line 10
    .line 11
    if-nez p3, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iput-boolean v2, p0, Ln2/i;->b:Z

    .line 15
    .line 16
    iput-wide p1, p0, Ln2/i;->c:J

    .line 17
    .line 18
    iput v1, p0, Ln2/i;->e:I

    .line 19
    .line 20
    const/4 p1, 0x2

    .line 21
    iput p1, p0, Ln2/i;->d:I

    .line 22
    .line 23
    :goto_0
    return-void

    .line 24
    :goto_1
    and-int/lit8 p3, p3, 0x4

    .line 25
    .line 26
    if-nez p3, :cond_1

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_1
    iput-boolean v2, p0, Ln2/i;->b:Z

    .line 30
    .line 31
    iput-wide p1, p0, Ln2/i;->c:J

    .line 32
    .line 33
    iput v1, p0, Ln2/i;->d:I

    .line 34
    .line 35
    iput v1, p0, Ln2/i;->e:I

    .line 36
    .line 37
    :goto_2
    return-void

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Lk2/i;Ln2/e0;)V
    .locals 36

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget v2, v0, Ln2/i;->a:I

    .line 6
    .line 7
    packed-switch v2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto :goto_1

    .line 11
    :pswitch_0
    const/4 v2, 0x0

    .line 12
    :goto_0
    iget-object v3, v0, Ln2/i;->g:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v3, [Lk2/o;

    .line 15
    .line 16
    array-length v3, v3

    .line 17
    if-ge v2, v3, :cond_0

    .line 18
    .line 19
    iget-object v3, v0, Ln2/i;->f:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v3, Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Ln2/d0;

    .line 28
    .line 29
    invoke-virtual/range {p2 .. p2}, Ln2/e0;->a()V

    .line 30
    .line 31
    .line 32
    invoke-virtual/range {p2 .. p2}, Ln2/e0;->b()V

    .line 33
    .line 34
    .line 35
    iget v4, v1, Ln2/e0;->d:I

    .line 36
    .line 37
    const/4 v5, 0x3

    .line 38
    move-object/from16 v6, p1

    .line 39
    .line 40
    check-cast v6, Lw2/p;

    .line 41
    .line 42
    invoke-virtual {v6, v4, v5}, Lw2/p;->C(II)Lk2/o;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-virtual/range {p2 .. p2}, Ln2/e0;->b()V

    .line 47
    .line 48
    .line 49
    iget-object v6, v1, Ln2/e0;->e:Ljava/lang/String;

    .line 50
    .line 51
    const-string v14, "application/dvbsubs"

    .line 52
    .line 53
    const/4 v11, 0x0

    .line 54
    const/4 v10, -0x1

    .line 55
    const/4 v8, 0x0

    .line 56
    iget-object v5, v3, Ln2/d0;->b:[B

    .line 57
    .line 58
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v16

    .line 62
    iget-object v3, v3, Ln2/d0;->a:Ljava/lang/String;

    .line 63
    .line 64
    move-object/from16 v33, v3

    .line 65
    .line 66
    const/16 v17, 0x0

    .line 67
    .line 68
    new-instance v3, Lf2/t;

    .line 69
    .line 70
    move-object v5, v3

    .line 71
    const/4 v7, 0x0

    .line 72
    const/4 v9, 0x0

    .line 73
    const/4 v12, 0x0

    .line 74
    const/4 v13, 0x0

    .line 75
    const/4 v15, -0x1

    .line 76
    const-wide v18, 0x7fffffffffffffffL

    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    const/16 v20, -0x1

    .line 82
    .line 83
    const/16 v21, -0x1

    .line 84
    .line 85
    const/high16 v22, -0x40800000    # -1.0f

    .line 86
    .line 87
    const/16 v23, -0x1

    .line 88
    .line 89
    const/high16 v24, -0x40800000    # -1.0f

    .line 90
    .line 91
    const/16 v25, 0x0

    .line 92
    .line 93
    const/16 v26, -0x1

    .line 94
    .line 95
    const/16 v27, 0x0

    .line 96
    .line 97
    const/16 v28, -0x1

    .line 98
    .line 99
    const/16 v29, -0x1

    .line 100
    .line 101
    const/16 v30, -0x1

    .line 102
    .line 103
    const/16 v31, -0x1

    .line 104
    .line 105
    const/16 v32, -0x1

    .line 106
    .line 107
    const/16 v34, -0x1

    .line 108
    .line 109
    const/16 v35, 0x0

    .line 110
    .line 111
    invoke-direct/range {v5 .. v35}, Lf2/t;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lp2/b;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lj2/b;JIIFIF[BILc3/a;IIIIILjava/lang/String;ILjava/lang/Class;)V

    .line 112
    .line 113
    .line 114
    invoke-interface {v4, v3}, Lk2/o;->c(Lf2/t;)V

    .line 115
    .line 116
    .line 117
    iget-object v3, v0, Ln2/i;->g:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v3, [Lk2/o;

    .line 120
    .line 121
    aput-object v4, v3, v2

    .line 122
    .line 123
    add-int/lit8 v2, v2, 0x1

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_0
    return-void

    .line 127
    :goto_1
    invoke-virtual/range {p2 .. p2}, Ln2/e0;->a()V

    .line 128
    .line 129
    .line 130
    invoke-virtual/range {p2 .. p2}, Ln2/e0;->b()V

    .line 131
    .line 132
    .line 133
    iget v2, v1, Ln2/e0;->d:I

    .line 134
    .line 135
    const/4 v3, 0x4

    .line 136
    move-object/from16 v4, p1

    .line 137
    .line 138
    check-cast v4, Lw2/p;

    .line 139
    .line 140
    invoke-virtual {v4, v2, v3}, Lw2/p;->C(II)Lk2/o;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    iput-object v2, v0, Ln2/i;->g:Ljava/lang/Object;

    .line 145
    .line 146
    invoke-virtual/range {p2 .. p2}, Ln2/e0;->b()V

    .line 147
    .line 148
    .line 149
    iget-object v1, v1, Ln2/e0;->e:Ljava/lang/String;

    .line 150
    .line 151
    const-string v3, "application/id3"

    .line 152
    .line 153
    invoke-static {v1, v3}, Lf2/t;->i(Ljava/lang/String;Ljava/lang/String;)Lf2/t;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-interface {v2, v1}, Lk2/o;->c(Lf2/t;)V

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
