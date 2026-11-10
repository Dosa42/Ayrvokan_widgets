.class public final Lo1/v0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final a:Lo1/j0;

.field public final b:Lu1/e;

.field public final c:[Lo1/r0;

.field public final d:[Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public final h:Lo1/p0;

.field public final i:Lo1/p0;

.field public final j:Lo1/p0;

.field public k:Z

.field public final l:I

.field public final m:Lo1/q0;

.field public n:Z

.field public final o:Lo1/o0;

.field public final p:F

.field public final q:F

.field public r:J

.field public final s:Ljava/util/LinkedList;

.field public t:Z

.field public final u:Lo1/o0;


# direct methods
.method public constructor <init>(Lcom/nomone/vr_desktop/LaunchActivity;Lq1/c;ILu1/e;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lo1/r0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lo1/r0;-><init>(Z)V

    new-instance v2, Lo1/r0;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lo1/r0;-><init>(Z)V

    new-instance v4, Lo1/r0;

    invoke-direct {v4, v3}, Lo1/r0;-><init>(Z)V

    new-instance v5, Lo1/r0;

    invoke-direct {v5, v3}, Lo1/r0;-><init>(Z)V

    filled-new-array {v0, v2, v4, v5}, [Lo1/r0;

    move-result-object v0

    iput-object v0, p0, Lo1/v0;->c:[Lo1/r0;

    const/4 v0, 0x2

    new-array v2, v0, [Z

    iput-object v2, p0, Lo1/v0;->d:[Z

    new-instance v2, Lo1/p0;

    const-string v4, "sendPrimaryTapTask"

    invoke-direct {v2, p0, v4, v3}, Lo1/p0;-><init>(Lo1/v0;Ljava/lang/String;I)V

    iput-object v2, p0, Lo1/v0;->h:Lo1/p0;

    new-instance v2, Lo1/p0;

    const-string v4, "sendSecondaryTapTask"

    invoke-direct {v2, p0, v4, v1}, Lo1/p0;-><init>(Lo1/v0;Ljava/lang/String;I)V

    iput-object v2, p0, Lo1/v0;->i:Lo1/p0;

    new-instance v2, Lo1/p0;

    const-string v4, "sendPrimaryDownTask"

    invoke-direct {v2, p0, v4, v0}, Lo1/p0;-><init>(Lo1/v0;Ljava/lang/String;I)V

    iput-object v2, p0, Lo1/v0;->j:Lo1/p0;

    iput-boolean v1, p0, Lo1/v0;->k:Z

    new-instance v0, Lo1/q0;

    invoke-direct {v0, p0}, Lo1/q0;-><init>(Lo1/v0;)V

    iput-object v0, p0, Lo1/v0;->m:Lo1/q0;

    new-instance v0, Lo1/o0;

    invoke-direct {v0, p0, v3}, Lo1/o0;-><init>(Lo1/v0;I)V

    iput-object v0, p0, Lo1/v0;->o:Lo1/o0;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lo1/v0;->s:Ljava/util/LinkedList;

    new-instance v0, Lo1/o0;

    invoke-direct {v0, p0, v1}, Lo1/o0;-><init>(Lo1/v0;I)V

    iput-object v0, p0, Lo1/v0;->u:Lo1/o0;

    iput-object p2, p0, Lo1/v0;->a:Lo1/j0;

    iput-object p4, p0, Lo1/v0;->b:Lu1/e;

    iput p3, p0, Lo1/v0;->l:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x41900000    # 18.0f

    mul-float/2addr p1, p2

    iput p1, p0, Lo1/v0;->p:F

    iput p1, p0, Lo1/v0;->q:F

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lo1/v0;->s:Ljava/util/LinkedList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo1/v0;->s:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final b(Lo1/r0;Landroid/view/MotionEvent;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->getX(I)F

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->getY(I)F

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    iget-boolean v6, v1, Lo1/r0;->b:Z

    .line 20
    .line 21
    const/4 v7, 0x1

    .line 22
    iget-object v8, v0, Lo1/v0;->m:Lo1/q0;

    .line 23
    .line 24
    if-eqz v6, :cond_0

    .line 25
    .line 26
    iget v6, v0, Lo1/v0;->l:I

    .line 27
    .line 28
    int-to-float v6, v6

    .line 29
    cmpg-float v9, v4, v6

    .line 30
    .line 31
    if-gez v9, :cond_0

    .line 32
    .line 33
    cmpg-float v6, v5, v6

    .line 34
    .line 35
    if-gez v6, :cond_0

    .line 36
    .line 37
    iput-boolean v7, v8, Lo1/t0;->g:Z

    .line 38
    .line 39
    iget-object v6, v8, Lo1/t0;->h:Lo1/v0;

    .line 40
    .line 41
    iget-object v6, v6, Lo1/v0;->a:Lo1/j0;

    .line 42
    .line 43
    iget-object v9, v8, Lo1/t0;->f:Ljava/lang/String;

    .line 44
    .line 45
    const-wide/16 v10, 0x1f4

    .line 46
    .line 47
    invoke-virtual {v6, v8, v9, v10, v11}, Lo1/j0;->b(Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 48
    .line 49
    .line 50
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    .line 51
    .line 52
    .line 53
    move-result-wide v9

    .line 54
    iget-boolean v6, v0, Lo1/v0;->k:Z

    .line 55
    .line 56
    const-wide/16 v12, 0xf0

    .line 57
    .line 58
    iget-object v14, v0, Lo1/v0;->i:Lo1/p0;

    .line 59
    .line 60
    iget-object v15, v0, Lo1/v0;->h:Lo1/p0;

    .line 61
    .line 62
    iget-object v11, v0, Lo1/v0;->j:Lo1/p0;

    .line 63
    .line 64
    iget-boolean v7, v1, Lo1/r0;->b:Z

    .line 65
    .line 66
    if-eqz v6, :cond_2

    .line 67
    .line 68
    if-eqz v6, :cond_1

    .line 69
    .line 70
    if-nez v7, :cond_1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    move/from16 v16, v3

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_2
    :goto_0
    move/from16 v16, v3

    .line 77
    .line 78
    iget-wide v2, v1, Lo1/r0;->d:J

    .line 79
    .line 80
    sub-long v2, v9, v2

    .line 81
    .line 82
    cmp-long v2, v2, v12

    .line 83
    .line 84
    if-gez v2, :cond_5

    .line 85
    .line 86
    const/4 v2, 0x1

    .line 87
    iput-boolean v2, v0, Lo1/v0;->f:Z

    .line 88
    .line 89
    if-eqz v7, :cond_3

    .line 90
    .line 91
    invoke-virtual {v15}, Lo1/t0;->b()V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_3
    invoke-virtual {v11}, Lo1/t0;->b()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v14}, Lo1/t0;->b()V

    .line 99
    .line 100
    .line 101
    iget-object v2, v0, Lo1/v0;->c:[Lo1/r0;

    .line 102
    .line 103
    const/4 v3, 0x0

    .line 104
    aget-object v2, v2, v3

    .line 105
    .line 106
    const-wide/16 v11, 0x0

    .line 107
    .line 108
    iput-wide v11, v2, Lo1/r0;->d:J

    .line 109
    .line 110
    invoke-virtual {v0, v4, v5}, Lo1/v0;->c(FF)V

    .line 111
    .line 112
    .line 113
    :goto_1
    iget-boolean v2, v0, Lo1/v0;->n:Z

    .line 114
    .line 115
    if-nez v2, :cond_f

    .line 116
    .line 117
    if-eqz v7, :cond_4

    .line 118
    .line 119
    iget-boolean v2, v14, Lo1/t0;->g:Z

    .line 120
    .line 121
    if-nez v2, :cond_f

    .line 122
    .line 123
    :cond_4
    iget v2, v1, Lo1/r0;->j:I

    .line 124
    .line 125
    const/4 v3, 0x1

    .line 126
    add-int/2addr v2, v3

    .line 127
    iput v2, v1, Lo1/r0;->j:I

    .line 128
    .line 129
    iget-object v2, v0, Lo1/v0;->b:Lu1/e;

    .line 130
    .line 131
    invoke-virtual {v2, v7}, Lu1/e;->d(Z)V

    .line 132
    .line 133
    .line 134
    xor-int/lit8 v2, v7, 0x1

    .line 135
    .line 136
    iget-object v6, v0, Lo1/v0;->d:[Z

    .line 137
    .line 138
    aput-boolean v3, v6, v2

    .line 139
    .line 140
    move v2, v3

    .line 141
    goto/16 :goto_6

    .line 142
    .line 143
    :cond_5
    :goto_2
    iget-wide v2, v1, Lo1/r0;->d:J

    .line 144
    .line 145
    sub-long v2, v9, v2

    .line 146
    .line 147
    cmp-long v2, v2, v12

    .line 148
    .line 149
    const-wide/16 v17, 0x2e4

    .line 150
    .line 151
    if-gez v2, :cond_b

    .line 152
    .line 153
    iget-boolean v2, v15, Lo1/t0;->g:Z

    .line 154
    .line 155
    if-eqz v2, :cond_6

    .line 156
    .line 157
    invoke-virtual {v15}, Lo1/t0;->b()V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v15}, Lo1/t0;->run()V

    .line 161
    .line 162
    .line 163
    :cond_6
    iget-boolean v2, v14, Lo1/t0;->g:Z

    .line 164
    .line 165
    if-eqz v2, :cond_7

    .line 166
    .line 167
    invoke-virtual {v14}, Lo1/t0;->b()V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v14}, Lo1/t0;->run()V

    .line 171
    .line 172
    .line 173
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 174
    .line 175
    .line 176
    move-result-wide v2

    .line 177
    sub-long/2addr v2, v9

    .line 178
    iget v6, v1, Lo1/r0;->g:F

    .line 179
    .line 180
    sub-float/2addr v6, v4

    .line 181
    iget v7, v1, Lo1/r0;->h:F

    .line 182
    .line 183
    sub-float/2addr v7, v5

    .line 184
    mul-float/2addr v6, v6

    .line 185
    mul-float/2addr v7, v7

    .line 186
    add-float/2addr v7, v6

    .line 187
    float-to-double v6, v7

    .line 188
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    .line 189
    .line 190
    .line 191
    move-result-wide v6

    .line 192
    double-to-float v6, v6

    .line 193
    iget v7, v0, Lo1/v0;->p:F

    .line 194
    .line 195
    cmpg-float v6, v6, v7

    .line 196
    .line 197
    if-gez v6, :cond_8

    .line 198
    .line 199
    const/4 v6, 0x1

    .line 200
    goto :goto_3

    .line 201
    :cond_8
    const/4 v6, 0x0

    .line 202
    :goto_3
    if-eqz v6, :cond_a

    .line 203
    .line 204
    iget v6, v15, Lo1/u0;->i:F

    .line 205
    .line 206
    iget v7, v15, Lo1/u0;->j:F

    .line 207
    .line 208
    iget-boolean v8, v8, Lo1/t0;->g:Z

    .line 209
    .line 210
    if-eqz v8, :cond_9

    .line 211
    .line 212
    move-wide/from16 v12, v17

    .line 213
    .line 214
    :cond_9
    sub-long/2addr v12, v2

    .line 215
    invoke-virtual {v11, v6, v7, v12, v13}, Lo1/u0;->c(FFJ)V

    .line 216
    .line 217
    .line 218
    goto :goto_5

    .line 219
    :cond_a
    iget-boolean v6, v8, Lo1/t0;->g:Z

    .line 220
    .line 221
    if-eqz v6, :cond_c

    .line 222
    .line 223
    move-wide/from16 v12, v17

    .line 224
    .line 225
    goto :goto_4

    .line 226
    :cond_b
    if-eqz v6, :cond_e

    .line 227
    .line 228
    if-eqz v7, :cond_d

    .line 229
    .line 230
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 231
    .line 232
    .line 233
    move-result-wide v2

    .line 234
    sub-long/2addr v2, v9

    .line 235
    iget-boolean v6, v8, Lo1/t0;->g:Z

    .line 236
    .line 237
    if-eqz v6, :cond_c

    .line 238
    .line 239
    move-wide/from16 v12, v17

    .line 240
    .line 241
    :cond_c
    :goto_4
    sub-long/2addr v12, v2

    .line 242
    invoke-virtual {v11, v4, v5, v12, v13}, Lo1/u0;->c(FFJ)V

    .line 243
    .line 244
    .line 245
    goto :goto_5

    .line 246
    :cond_d
    invoke-virtual {v0, v4, v5}, Lo1/v0;->c(FF)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v11}, Lo1/t0;->b()V

    .line 250
    .line 251
    .line 252
    :cond_e
    :goto_5
    const/4 v2, 0x0

    .line 253
    iput v2, v1, Lo1/r0;->j:I

    .line 254
    .line 255
    :cond_f
    const/4 v2, 0x1

    .line 256
    :goto_6
    iput-boolean v2, v1, Lo1/r0;->c:Z

    .line 257
    .line 258
    move-object/from16 v2, p2

    .line 259
    .line 260
    move/from16 v3, v16

    .line 261
    .line 262
    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 263
    .line 264
    .line 265
    move-result v2

    .line 266
    iput v2, v1, Lo1/r0;->a:I

    .line 267
    .line 268
    iput v4, v1, Lo1/r0;->e:F

    .line 269
    .line 270
    iput v5, v1, Lo1/r0;->f:F

    .line 271
    .line 272
    iput v4, v1, Lo1/r0;->g:F

    .line 273
    .line 274
    iput v5, v1, Lo1/r0;->h:F

    .line 275
    .line 276
    iput-wide v9, v1, Lo1/r0;->d:J

    .line 277
    .line 278
    const/4 v2, 0x0

    .line 279
    iput v2, v1, Lo1/r0;->i:F

    .line 280
    .line 281
    return-void
.end method

.method public final c(FF)V
    .locals 9

    .line 1
    iget-object v0, p0, Lo1/v0;->c:[Lo1/r0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    iget v2, v0, Lo1/r0;->e:F

    .line 7
    .line 8
    add-float/2addr v2, p1

    .line 9
    const/high16 p1, 0x40000000    # 2.0f

    .line 10
    .line 11
    div-float/2addr v2, p1

    .line 12
    iget v0, v0, Lo1/r0;->f:F

    .line 13
    .line 14
    add-float/2addr v0, p2

    .line 15
    div-float/2addr v0, p1

    .line 16
    iget-object p1, p0, Lo1/v0;->i:Lo1/p0;

    .line 17
    .line 18
    iget p2, p1, Lo1/u0;->i:F

    .line 19
    .line 20
    sub-float/2addr p2, v2

    .line 21
    iget v3, p1, Lo1/u0;->j:F

    .line 22
    .line 23
    sub-float/2addr v3, v0

    .line 24
    mul-float/2addr p2, p2

    .line 25
    mul-float/2addr v3, v3

    .line 26
    add-float/2addr v3, p2

    .line 27
    float-to-double v3, v3

    .line 28
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    .line 29
    .line 30
    .line 31
    move-result-wide v3

    .line 32
    double-to-float p2, v3

    .line 33
    iget v3, p0, Lo1/v0;->p:F

    .line 34
    .line 35
    cmpg-float p2, p2, v3

    .line 36
    .line 37
    if-gez p2, :cond_0

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 41
    .line 42
    .line 43
    move-result-wide v3

    .line 44
    iget-wide v5, p0, Lo1/v0;->r:J

    .line 45
    .line 46
    sub-long v5, v3, v5

    .line 47
    .line 48
    const-wide/16 v7, 0xf0

    .line 49
    .line 50
    cmp-long p2, v5, v7

    .line 51
    .line 52
    if-gtz p2, :cond_1

    .line 53
    .line 54
    if-nez v1, :cond_2

    .line 55
    .line 56
    :cond_1
    iput v2, p1, Lo1/u0;->i:F

    .line 57
    .line 58
    iput v0, p1, Lo1/u0;->j:F

    .line 59
    .line 60
    :cond_2
    iput-wide v3, p0, Lo1/v0;->r:J

    .line 61
    .line 62
    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    iget-object v2, v1, Lo1/v0;->b:Lu1/e;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x1

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    iput-boolean v3, v1, Lo1/v0;->e:Z

    .line 19
    .line 20
    iget-object v2, v1, Lo1/v0;->c:[Lo1/r0;

    .line 21
    .line 22
    aget-object v2, v2, v3

    .line 23
    .line 24
    invoke-virtual {v1, v2, v0}, Lo1/v0;->b(Lo1/r0;Landroid/view/MotionEvent;)V

    .line 25
    .line 26
    .line 27
    goto/16 :goto_d

    .line 28
    .line 29
    :cond_0
    const/4 v6, 0x5

    .line 30
    const/4 v7, 0x3

    .line 31
    if-ne v2, v6, :cond_9

    .line 32
    .line 33
    iput-boolean v4, v1, Lo1/v0;->e:Z

    .line 34
    .line 35
    move v2, v4

    .line 36
    :goto_0
    iget-object v6, v1, Lo1/v0;->c:[Lo1/r0;

    .line 37
    .line 38
    array-length v8, v6

    .line 39
    if-ge v2, v8, :cond_2

    .line 40
    .line 41
    aget-object v6, v6, v2

    .line 42
    .line 43
    iget-boolean v8, v6, Lo1/r0;->c:Z

    .line 44
    .line 45
    if-nez v8, :cond_1

    .line 46
    .line 47
    move-object v5, v6

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const/4 v5, 0x0

    .line 53
    :goto_1
    if-nez v5, :cond_3

    .line 54
    .line 55
    return v4

    .line 56
    :cond_3
    invoke-virtual {v1, v5, v0}, Lo1/v0;->b(Lo1/r0;Landroid/view/MotionEvent;)V

    .line 57
    .line 58
    .line 59
    move v0, v3

    .line 60
    move v2, v0

    .line 61
    :goto_2
    iget-object v5, v1, Lo1/v0;->c:[Lo1/r0;

    .line 62
    .line 63
    array-length v6, v5

    .line 64
    if-ge v0, v6, :cond_5

    .line 65
    .line 66
    aget-object v5, v5, v0

    .line 67
    .line 68
    iget-boolean v5, v5, Lo1/r0;->c:Z

    .line 69
    .line 70
    if-eqz v5, :cond_4

    .line 71
    .line 72
    add-int/lit8 v2, v2, 0x1

    .line 73
    .line 74
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_5
    if-ne v2, v7, :cond_1e

    .line 78
    .line 79
    iget-boolean v0, v1, Lo1/v0;->k:Z

    .line 80
    .line 81
    if-eqz v0, :cond_8

    .line 82
    .line 83
    const/4 v0, 0x0

    .line 84
    move v2, v0

    .line 85
    :goto_3
    iget-object v5, v1, Lo1/v0;->c:[Lo1/r0;

    .line 86
    .line 87
    array-length v6, v5

    .line 88
    if-ge v3, v6, :cond_7

    .line 89
    .line 90
    aget-object v5, v5, v3

    .line 91
    .line 92
    iget-boolean v6, v5, Lo1/r0;->c:Z

    .line 93
    .line 94
    if-eqz v6, :cond_6

    .line 95
    .line 96
    iget v6, v5, Lo1/r0;->e:F

    .line 97
    .line 98
    add-float/2addr v0, v6

    .line 99
    iget v5, v5, Lo1/r0;->f:F

    .line 100
    .line 101
    add-float/2addr v2, v5

    .line 102
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_7
    iget-object v3, v1, Lo1/v0;->b:Lu1/e;

    .line 106
    .line 107
    const/high16 v5, 0x40400000    # 3.0f

    .line 108
    .line 109
    div-float/2addr v0, v5

    .line 110
    div-float/2addr v2, v5

    .line 111
    invoke-virtual {v3, v0, v2}, Lu1/e;->c(FF)V

    .line 112
    .line 113
    .line 114
    :cond_8
    iput-boolean v4, v1, Lo1/v0;->g:Z

    .line 115
    .line 116
    iget-object v0, v1, Lo1/v0;->b:Lu1/e;

    .line 117
    .line 118
    invoke-virtual {v0, v4}, Lu1/e;->f(Z)V

    .line 119
    .line 120
    .line 121
    goto/16 :goto_d

    .line 122
    .line 123
    :cond_9
    const/4 v6, 0x2

    .line 124
    if-eq v2, v4, :cond_24

    .line 125
    .line 126
    const/4 v10, 0x6

    .line 127
    if-ne v2, v10, :cond_a

    .line 128
    .line 129
    goto/16 :goto_10

    .line 130
    .line 131
    :cond_a
    if-ne v2, v6, :cond_1f

    .line 132
    .line 133
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    move v6, v3

    .line 138
    :goto_4
    if-ge v6, v2, :cond_1e

    .line 139
    .line 140
    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 141
    .line 142
    .line 143
    move-result v7

    .line 144
    move v10, v3

    .line 145
    :goto_5
    iget-object v11, v1, Lo1/v0;->c:[Lo1/r0;

    .line 146
    .line 147
    array-length v12, v11

    .line 148
    if-ge v10, v12, :cond_c

    .line 149
    .line 150
    aget-object v11, v11, v10

    .line 151
    .line 152
    iget v12, v11, Lo1/r0;->a:I

    .line 153
    .line 154
    if-ne v12, v7, :cond_b

    .line 155
    .line 156
    goto :goto_6

    .line 157
    :cond_b
    add-int/lit8 v10, v10, 0x1

    .line 158
    .line 159
    goto :goto_5

    .line 160
    :cond_c
    const/4 v11, 0x0

    .line 161
    :goto_6
    if-nez v11, :cond_d

    .line 162
    .line 163
    goto/16 :goto_c

    .line 164
    .line 165
    :cond_d
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getHistorySize()I

    .line 166
    .line 167
    .line 168
    move-result v7

    .line 169
    add-int/lit8 v10, v7, 0x1

    .line 170
    .line 171
    move v12, v3

    .line 172
    :goto_7
    if-ge v12, v10, :cond_1d

    .line 173
    .line 174
    if-ne v12, v7, :cond_e

    .line 175
    .line 176
    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getX(I)F

    .line 177
    .line 178
    .line 179
    move-result v13

    .line 180
    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getY(I)F

    .line 181
    .line 182
    .line 183
    move-result v14

    .line 184
    goto :goto_8

    .line 185
    :cond_e
    invoke-virtual {v0, v6, v12}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    .line 186
    .line 187
    .line 188
    move-result v13

    .line 189
    invoke-virtual {v0, v6, v12}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    .line 190
    .line 191
    .line 192
    move-result v14

    .line 193
    :goto_8
    iget v15, v11, Lo1/r0;->g:F

    .line 194
    .line 195
    sub-float v15, v13, v15

    .line 196
    .line 197
    iget v5, v11, Lo1/r0;->h:F

    .line 198
    .line 199
    sub-float v5, v14, v5

    .line 200
    .line 201
    iput v13, v11, Lo1/r0;->g:F

    .line 202
    .line 203
    iput v14, v11, Lo1/r0;->h:F

    .line 204
    .line 205
    mul-float v13, v15, v15

    .line 206
    .line 207
    mul-float v14, v5, v5

    .line 208
    .line 209
    add-float/2addr v14, v13

    .line 210
    float-to-double v13, v14

    .line 211
    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    .line 212
    .line 213
    .line 214
    move-result-wide v13

    .line 215
    double-to-float v13, v13

    .line 216
    iget v14, v11, Lo1/r0;->i:F

    .line 217
    .line 218
    add-float/2addr v14, v13

    .line 219
    iget-boolean v3, v1, Lo1/v0;->e:Z

    .line 220
    .line 221
    if-eqz v3, :cond_f

    .line 222
    .line 223
    iget-boolean v3, v1, Lo1/v0;->f:Z

    .line 224
    .line 225
    if-nez v3, :cond_f

    .line 226
    .line 227
    move v3, v4

    .line 228
    goto :goto_9

    .line 229
    :cond_f
    const/4 v3, 0x0

    .line 230
    :goto_9
    if-eqz v3, :cond_10

    .line 231
    .line 232
    iget v4, v1, Lo1/v0;->p:F

    .line 233
    .line 234
    cmpl-float v4, v14, v4

    .line 235
    .line 236
    if-ltz v4, :cond_10

    .line 237
    .line 238
    invoke-virtual/range {p0 .. p0}, Lo1/v0;->a()V

    .line 239
    .line 240
    .line 241
    :cond_10
    iput v14, v11, Lo1/r0;->i:F

    .line 242
    .line 243
    iget-boolean v4, v11, Lo1/r0;->b:Z

    .line 244
    .line 245
    if-eqz v4, :cond_11

    .line 246
    .line 247
    iget v4, v1, Lo1/v0;->p:F

    .line 248
    .line 249
    cmpl-float v4, v14, v4

    .line 250
    .line 251
    if-lez v4, :cond_11

    .line 252
    .line 253
    iget-object v4, v1, Lo1/v0;->m:Lo1/q0;

    .line 254
    .line 255
    invoke-virtual {v4}, Lo1/t0;->b()V

    .line 256
    .line 257
    .line 258
    :cond_11
    const/high16 v4, 0x447a0000    # 1000.0f

    .line 259
    .line 260
    cmpg-float v4, v13, v4

    .line 261
    .line 262
    if-gez v4, :cond_1c

    .line 263
    .line 264
    const v4, 0x3c23d70a    # 0.01f

    .line 265
    .line 266
    .line 267
    cmpl-float v4, v13, v4

    .line 268
    .line 269
    if-lez v4, :cond_1c

    .line 270
    .line 271
    if-nez v3, :cond_12

    .line 272
    .line 273
    iget-boolean v4, v1, Lo1/v0;->k:Z

    .line 274
    .line 275
    if-nez v4, :cond_17

    .line 276
    .line 277
    :cond_12
    const/high16 v4, 0x3f800000    # 1.0f

    .line 278
    .line 279
    cmpl-float v13, v15, v4

    .line 280
    .line 281
    const/high16 v14, -0x40800000    # -1.0f

    .line 282
    .line 283
    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    .line 284
    .line 285
    if-gtz v13, :cond_13

    .line 286
    .line 287
    cmpg-float v13, v15, v14

    .line 288
    .line 289
    if-gez v13, :cond_14

    .line 290
    .line 291
    :cond_13
    invoke-static {v15}, Ljava/lang/Math;->signum(F)F

    .line 292
    .line 293
    .line 294
    move-result v13

    .line 295
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    .line 296
    .line 297
    .line 298
    move-result v15

    .line 299
    float-to-double v14, v15

    .line 300
    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 301
    .line 302
    .line 303
    move-result-wide v14

    .line 304
    double-to-float v14, v14

    .line 305
    mul-float v15, v14, v13

    .line 306
    .line 307
    :cond_14
    cmpl-float v4, v5, v4

    .line 308
    .line 309
    if-gtz v4, :cond_15

    .line 310
    .line 311
    const/high16 v4, -0x40800000    # -1.0f

    .line 312
    .line 313
    cmpg-float v4, v5, v4

    .line 314
    .line 315
    if-gez v4, :cond_16

    .line 316
    .line 317
    :cond_15
    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    .line 318
    .line 319
    .line 320
    move-result v4

    .line 321
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 322
    .line 323
    .line 324
    move-result v5

    .line 325
    float-to-double v13, v5

    .line 326
    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 327
    .line 328
    .line 329
    move-result-wide v8

    .line 330
    double-to-float v5, v8

    .line 331
    mul-float/2addr v5, v4

    .line 332
    :cond_16
    iget-object v4, v1, Lo1/v0;->b:Lu1/e;

    .line 333
    .line 334
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 335
    .line 336
    .line 337
    const v4, 0x3e76fd22    # 0.2412f

    .line 338
    .line 339
    .line 340
    mul-float/2addr v15, v4

    .line 341
    mul-float/2addr v5, v4

    .line 342
    :cond_17
    if-eqz v3, :cond_19

    .line 343
    .line 344
    iget-object v3, v1, Lo1/v0;->b:Lu1/e;

    .line 345
    .line 346
    const v4, 0x3d4ccccd    # 0.05f

    .line 347
    .line 348
    .line 349
    mul-float/2addr v5, v4

    .line 350
    iget-object v3, v3, Lu1/e;->b:Lu1/i;

    .line 351
    .line 352
    invoke-virtual {v3}, Lu1/i;->i()V

    .line 353
    .line 354
    .line 355
    invoke-static {v3, v5}, Lu1/i;->c(Lu1/i;F)V

    .line 356
    .line 357
    .line 358
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    .line 359
    .line 360
    .line 361
    move-result-wide v3

    .line 362
    iget-wide v8, v11, Lo1/r0;->d:J

    .line 363
    .line 364
    sub-long/2addr v3, v8

    .line 365
    const-wide/16 v8, 0xf0

    .line 366
    .line 367
    cmp-long v3, v3, v8

    .line 368
    .line 369
    if-gez v3, :cond_18

    .line 370
    .line 371
    iget v3, v11, Lo1/r0;->i:F

    .line 372
    .line 373
    iget v4, v1, Lo1/v0;->p:F

    .line 374
    .line 375
    cmpl-float v3, v3, v4

    .line 376
    .line 377
    if-ltz v3, :cond_1c

    .line 378
    .line 379
    :cond_18
    iget-object v3, v1, Lo1/v0;->a:Lo1/j0;

    .line 380
    .line 381
    iget-object v4, v1, Lo1/v0;->o:Lo1/o0;

    .line 382
    .line 383
    invoke-virtual {v3, v4}, Lo1/j0;->d(Ljava/lang/Runnable;)V

    .line 384
    .line 385
    .line 386
    const/4 v3, 0x1

    .line 387
    iput-boolean v3, v1, Lo1/v0;->n:Z

    .line 388
    .line 389
    goto :goto_b

    .line 390
    :cond_19
    if-ne v12, v7, :cond_1a

    .line 391
    .line 392
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    .line 393
    .line 394
    .line 395
    move-result-wide v3

    .line 396
    goto :goto_a

    .line 397
    :cond_1a
    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    .line 398
    .line 399
    .line 400
    move-result-wide v3

    .line 401
    :goto_a
    iget-boolean v8, v11, Lo1/r0;->b:Z

    .line 402
    .line 403
    if-eqz v8, :cond_1c

    .line 404
    .line 405
    new-instance v8, Lo1/s0;

    .line 406
    .line 407
    neg-float v9, v15

    .line 408
    neg-float v5, v5

    .line 409
    invoke-direct {v8, v9, v5, v3, v4}, Lo1/s0;-><init>(FFJ)V

    .line 410
    .line 411
    .line 412
    iget-object v3, v1, Lo1/v0;->s:Ljava/util/LinkedList;

    .line 413
    .line 414
    monitor-enter v3

    .line 415
    :try_start_0
    iget-object v4, v1, Lo1/v0;->s:Ljava/util/LinkedList;

    .line 416
    .line 417
    invoke-virtual {v4, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 418
    .line 419
    .line 420
    iget-object v4, v1, Lo1/v0;->s:Ljava/util/LinkedList;

    .line 421
    .line 422
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    .line 423
    .line 424
    .line 425
    move-result v4

    .line 426
    const/4 v5, 0x1

    .line 427
    if-ne v4, v5, :cond_1b

    .line 428
    .line 429
    iget-object v4, v1, Lo1/v0;->a:Lo1/j0;

    .line 430
    .line 431
    iget-object v5, v1, Lo1/v0;->u:Lo1/o0;

    .line 432
    .line 433
    const-string v8, "dispatch touchpad move event"

    .line 434
    .line 435
    invoke-virtual {v4, v8, v5}, Lo1/j0;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 436
    .line 437
    .line 438
    :cond_1b
    monitor-exit v3

    .line 439
    goto :goto_b

    .line 440
    :catchall_0
    move-exception v0

    .line 441
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    throw v0

    .line 443
    :cond_1c
    :goto_b
    add-int/lit8 v12, v12, 0x1

    .line 444
    .line 445
    const/4 v3, 0x0

    .line 446
    const/4 v4, 0x1

    .line 447
    goto/16 :goto_7

    .line 448
    .line 449
    :cond_1d
    :goto_c
    add-int/lit8 v6, v6, 0x1

    .line 450
    .line 451
    const/4 v3, 0x0

    .line 452
    const/4 v4, 0x1

    .line 453
    goto/16 :goto_4

    .line 454
    .line 455
    :cond_1e
    :goto_d
    const/4 v0, 0x1

    .line 456
    goto/16 :goto_18

    .line 457
    .line 458
    :cond_1f
    if-ne v2, v7, :cond_1e

    .line 459
    .line 460
    iget-boolean v0, v1, Lo1/v0;->g:Z

    .line 461
    .line 462
    if-eqz v0, :cond_20

    .line 463
    .line 464
    const/4 v0, 0x0

    .line 465
    iput-boolean v0, v1, Lo1/v0;->g:Z

    .line 466
    .line 467
    iget-object v2, v1, Lo1/v0;->b:Lu1/e;

    .line 468
    .line 469
    invoke-virtual {v2, v0}, Lu1/e;->f(Z)V

    .line 470
    .line 471
    .line 472
    :cond_20
    const/4 v0, 0x0

    .line 473
    :goto_e
    iget-object v2, v1, Lo1/v0;->d:[Z

    .line 474
    .line 475
    array-length v3, v2

    .line 476
    if-ge v0, v3, :cond_23

    .line 477
    .line 478
    aget-boolean v2, v2, v0

    .line 479
    .line 480
    if-eqz v2, :cond_22

    .line 481
    .line 482
    iget-object v2, v1, Lo1/v0;->b:Lu1/e;

    .line 483
    .line 484
    if-nez v0, :cond_21

    .line 485
    .line 486
    const/4 v3, 0x1

    .line 487
    goto :goto_f

    .line 488
    :cond_21
    const/4 v3, 0x0

    .line 489
    :goto_f
    invoke-virtual {v2, v3}, Lu1/e;->e(Z)V

    .line 490
    .line 491
    .line 492
    iget-object v2, v1, Lo1/v0;->d:[Z

    .line 493
    .line 494
    const/4 v3, 0x0

    .line 495
    aput-boolean v3, v2, v0

    .line 496
    .line 497
    :cond_22
    add-int/lit8 v0, v0, 0x1

    .line 498
    .line 499
    goto :goto_e

    .line 500
    :cond_23
    iget-object v0, v1, Lo1/v0;->h:Lo1/p0;

    .line 501
    .line 502
    invoke-virtual {v0}, Lo1/t0;->b()V

    .line 503
    .line 504
    .line 505
    iget-object v0, v1, Lo1/v0;->j:Lo1/p0;

    .line 506
    .line 507
    invoke-virtual {v0}, Lo1/t0;->b()V

    .line 508
    .line 509
    .line 510
    iget-object v0, v1, Lo1/v0;->i:Lo1/p0;

    .line 511
    .line 512
    invoke-virtual {v0}, Lo1/t0;->b()V

    .line 513
    .line 514
    .line 515
    goto :goto_d

    .line 516
    :cond_24
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 517
    .line 518
    .line 519
    move-result v3

    .line 520
    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 521
    .line 522
    .line 523
    move-result v3

    .line 524
    const/4 v4, 0x0

    .line 525
    :goto_11
    iget-object v5, v1, Lo1/v0;->c:[Lo1/r0;

    .line 526
    .line 527
    array-length v7, v5

    .line 528
    if-ge v4, v7, :cond_26

    .line 529
    .line 530
    aget-object v5, v5, v4

    .line 531
    .line 532
    iget v7, v5, Lo1/r0;->a:I

    .line 533
    .line 534
    if-ne v7, v3, :cond_25

    .line 535
    .line 536
    goto :goto_12

    .line 537
    :cond_25
    add-int/lit8 v4, v4, 0x1

    .line 538
    .line 539
    goto :goto_11

    .line 540
    :cond_26
    const/4 v5, 0x0

    .line 541
    :goto_12
    if-nez v5, :cond_27

    .line 542
    .line 543
    const/4 v3, 0x1

    .line 544
    return v3

    .line 545
    :cond_27
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    .line 546
    .line 547
    .line 548
    move-result-wide v3

    .line 549
    const/4 v7, 0x0

    .line 550
    iput-boolean v7, v5, Lo1/r0;->c:Z

    .line 551
    .line 552
    const/4 v7, -0x1

    .line 553
    iput v7, v5, Lo1/r0;->a:I

    .line 554
    .line 555
    iget-boolean v7, v5, Lo1/r0;->b:Z

    .line 556
    .line 557
    if-eqz v7, :cond_28

    .line 558
    .line 559
    iget-object v8, v1, Lo1/v0;->m:Lo1/q0;

    .line 560
    .line 561
    invoke-virtual {v8}, Lo1/t0;->b()V

    .line 562
    .line 563
    .line 564
    :cond_28
    const/4 v8, 0x0

    .line 565
    const/4 v9, 0x0

    .line 566
    :goto_13
    iget-object v10, v1, Lo1/v0;->c:[Lo1/r0;

    .line 567
    .line 568
    array-length v11, v10

    .line 569
    if-ge v8, v11, :cond_2a

    .line 570
    .line 571
    aget-object v10, v10, v8

    .line 572
    .line 573
    iget-boolean v10, v10, Lo1/r0;->c:Z

    .line 574
    .line 575
    if-eqz v10, :cond_29

    .line 576
    .line 577
    add-int/lit8 v9, v9, 0x1

    .line 578
    .line 579
    :cond_29
    add-int/lit8 v8, v8, 0x1

    .line 580
    .line 581
    goto :goto_13

    .line 582
    :cond_2a
    iget-object v8, v1, Lo1/v0;->b:Lu1/e;

    .line 583
    .line 584
    if-ne v9, v6, :cond_2b

    .line 585
    .line 586
    iget-boolean v6, v1, Lo1/v0;->g:Z

    .line 587
    .line 588
    if-eqz v6, :cond_2b

    .line 589
    .line 590
    const/4 v6, 0x0

    .line 591
    invoke-virtual {v8, v6}, Lu1/e;->f(Z)V

    .line 592
    .line 593
    .line 594
    iput-boolean v6, v1, Lo1/v0;->g:Z

    .line 595
    .line 596
    :cond_2b
    iget-wide v9, v5, Lo1/r0;->d:J

    .line 597
    .line 598
    sub-long v9, v3, v9

    .line 599
    .line 600
    iget v6, v5, Lo1/r0;->j:I

    .line 601
    .line 602
    iget v11, v1, Lo1/v0;->p:F

    .line 603
    .line 604
    iget-object v12, v1, Lo1/v0;->i:Lo1/p0;

    .line 605
    .line 606
    iget-object v13, v1, Lo1/v0;->d:[Z

    .line 607
    .line 608
    if-nez v6, :cond_33

    .line 609
    .line 610
    iget-boolean v3, v1, Lo1/v0;->n:Z

    .line 611
    .line 612
    if-eqz v3, :cond_2d

    .line 613
    .line 614
    iget-boolean v3, v1, Lo1/v0;->k:Z

    .line 615
    .line 616
    if-eqz v3, :cond_2c

    .line 617
    .line 618
    if-eqz v7, :cond_2c

    .line 619
    .line 620
    const/4 v3, 0x0

    .line 621
    aget-boolean v4, v13, v3

    .line 622
    .line 623
    if-eqz v4, :cond_2c

    .line 624
    .line 625
    const/4 v4, 0x1

    .line 626
    invoke-virtual {v8, v4}, Lu1/e;->e(Z)V

    .line 627
    .line 628
    .line 629
    aput-boolean v3, v13, v3

    .line 630
    .line 631
    :cond_2c
    :goto_14
    const/4 v13, 0x1

    .line 632
    goto/16 :goto_16

    .line 633
    .line 634
    :cond_2d
    iget-object v3, v1, Lo1/v0;->h:Lo1/p0;

    .line 635
    .line 636
    if-eqz v7, :cond_2e

    .line 637
    .line 638
    iget-boolean v4, v1, Lo1/v0;->e:Z

    .line 639
    .line 640
    if-eqz v4, :cond_2f

    .line 641
    .line 642
    iget-boolean v4, v12, Lo1/t0;->g:Z

    .line 643
    .line 644
    if-eqz v4, :cond_2f

    .line 645
    .line 646
    goto :goto_14

    .line 647
    :cond_2e
    invoke-virtual {v3}, Lo1/t0;->b()V

    .line 648
    .line 649
    .line 650
    :cond_2f
    const-wide/16 v14, 0xf0

    .line 651
    .line 652
    cmp-long v4, v9, v14

    .line 653
    .line 654
    if-gez v4, :cond_32

    .line 655
    .line 656
    iget v4, v5, Lo1/r0;->i:F

    .line 657
    .line 658
    cmpg-float v4, v4, v11

    .line 659
    .line 660
    if-gez v4, :cond_32

    .line 661
    .line 662
    invoke-virtual/range {p0 .. p0}, Lo1/v0;->a()V

    .line 663
    .line 664
    .line 665
    iget-object v4, v1, Lo1/v0;->j:Lo1/p0;

    .line 666
    .line 667
    iget-boolean v6, v4, Lo1/t0;->g:Z

    .line 668
    .line 669
    invoke-virtual {v4}, Lo1/t0;->b()V

    .line 670
    .line 671
    .line 672
    if-eqz v7, :cond_31

    .line 673
    .line 674
    if-eqz v6, :cond_30

    .line 675
    .line 676
    iget v5, v4, Lo1/u0;->i:F

    .line 677
    .line 678
    iget v4, v4, Lo1/u0;->j:F

    .line 679
    .line 680
    const-wide/16 v6, 0xf0

    .line 681
    .line 682
    sub-long v8, v6, v9

    .line 683
    .line 684
    invoke-virtual {v3, v5, v4, v8, v9}, Lo1/u0;->c(FFJ)V

    .line 685
    .line 686
    .line 687
    goto :goto_14

    .line 688
    :cond_30
    const-wide/16 v6, 0xf0

    .line 689
    .line 690
    iget v4, v5, Lo1/r0;->e:F

    .line 691
    .line 692
    iget v5, v5, Lo1/r0;->f:F

    .line 693
    .line 694
    sub-long v8, v6, v9

    .line 695
    .line 696
    invoke-virtual {v3, v4, v5, v8, v9}, Lo1/u0;->c(FFJ)V

    .line 697
    .line 698
    .line 699
    goto :goto_14

    .line 700
    :cond_31
    const-wide/16 v6, 0xf0

    .line 701
    .line 702
    iget v3, v12, Lo1/u0;->i:F

    .line 703
    .line 704
    iget v4, v12, Lo1/u0;->j:F

    .line 705
    .line 706
    sub-long v8, v6, v9

    .line 707
    .line 708
    invoke-virtual {v12, v3, v4, v8, v9}, Lo1/u0;->c(FFJ)V

    .line 709
    .line 710
    .line 711
    goto :goto_14

    .line 712
    :cond_32
    iget-boolean v3, v1, Lo1/v0;->k:Z

    .line 713
    .line 714
    if-eqz v3, :cond_2c

    .line 715
    .line 716
    if-eqz v7, :cond_2c

    .line 717
    .line 718
    iget-object v3, v1, Lo1/v0;->u:Lo1/o0;

    .line 719
    .line 720
    invoke-virtual {v3}, Lo1/o0;->run()V

    .line 721
    .line 722
    .line 723
    const/4 v6, 0x0

    .line 724
    aget-boolean v3, v13, v6

    .line 725
    .line 726
    if-eqz v3, :cond_2c

    .line 727
    .line 728
    const/4 v3, 0x1

    .line 729
    invoke-virtual {v8, v3}, Lu1/e;->e(Z)V

    .line 730
    .line 731
    .line 732
    aput-boolean v6, v13, v6

    .line 733
    .line 734
    goto :goto_14

    .line 735
    :cond_33
    const/4 v6, 0x0

    .line 736
    invoke-virtual/range {p0 .. p0}, Lo1/v0;->a()V

    .line 737
    .line 738
    .line 739
    xor-int/lit8 v14, v7, 0x1

    .line 740
    .line 741
    aget-boolean v15, v13, v14

    .line 742
    .line 743
    if-eqz v15, :cond_34

    .line 744
    .line 745
    invoke-virtual {v8, v7}, Lu1/e;->e(Z)V

    .line 746
    .line 747
    .line 748
    aput-boolean v6, v13, v14

    .line 749
    .line 750
    :cond_34
    iget-boolean v6, v1, Lo1/v0;->n:Z

    .line 751
    .line 752
    if-eqz v6, :cond_35

    .line 753
    .line 754
    goto :goto_14

    .line 755
    :cond_35
    iget v6, v5, Lo1/r0;->j:I

    .line 756
    .line 757
    const/4 v13, 0x1

    .line 758
    if-ne v6, v13, :cond_37

    .line 759
    .line 760
    const-wide/16 v14, 0xf0

    .line 761
    .line 762
    cmp-long v6, v9, v14

    .line 763
    .line 764
    if-gez v6, :cond_37

    .line 765
    .line 766
    iget v6, v5, Lo1/r0;->i:F

    .line 767
    .line 768
    cmpg-float v6, v6, v11

    .line 769
    .line 770
    if-gez v6, :cond_37

    .line 771
    .line 772
    if-eqz v7, :cond_36

    .line 773
    .line 774
    invoke-virtual {v8, v13}, Lu1/e;->d(Z)V

    .line 775
    .line 776
    .line 777
    invoke-virtual {v8, v13}, Lu1/e;->e(Z)V

    .line 778
    .line 779
    .line 780
    goto :goto_15

    .line 781
    :cond_36
    invoke-virtual {v12}, Lo1/t0;->run()V

    .line 782
    .line 783
    .line 784
    :cond_37
    :goto_15
    const-wide/16 v6, 0x96

    .line 785
    .line 786
    sub-long/2addr v3, v6

    .line 787
    iput-wide v3, v5, Lo1/r0;->d:J

    .line 788
    .line 789
    :goto_16
    if-ne v2, v13, :cond_1e

    .line 790
    .line 791
    const/4 v2, 0x0

    .line 792
    iput-boolean v2, v1, Lo1/v0;->f:Z

    .line 793
    .line 794
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 795
    .line 796
    .line 797
    move-result-wide v2

    .line 798
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    .line 799
    .line 800
    .line 801
    move-result-wide v4

    .line 802
    sub-long/2addr v2, v4

    .line 803
    iget-object v0, v1, Lo1/v0;->a:Lo1/j0;

    .line 804
    .line 805
    iget-object v4, v1, Lo1/v0;->o:Lo1/o0;

    .line 806
    .line 807
    const-string v5, "disableScrolling"

    .line 808
    .line 809
    const-wide/16 v6, 0xf0

    .line 810
    .line 811
    sub-long v8, v6, v2

    .line 812
    .line 813
    invoke-virtual {v0, v4, v5, v8, v9}, Lo1/j0;->b(Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 814
    .line 815
    .line 816
    const/4 v0, 0x0

    .line 817
    :goto_17
    iget-object v2, v1, Lo1/v0;->c:[Lo1/r0;

    .line 818
    .line 819
    array-length v3, v2

    .line 820
    if-ge v0, v3, :cond_1e

    .line 821
    .line 822
    aget-object v2, v2, v0

    .line 823
    .line 824
    const/4 v3, 0x0

    .line 825
    iput-boolean v3, v2, Lo1/r0;->c:Z

    .line 826
    .line 827
    add-int/lit8 v0, v0, 0x1

    .line 828
    .line 829
    goto :goto_17

    .line 830
    :goto_18
    return v0
.end method
