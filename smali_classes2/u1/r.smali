.class public final Lu1/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final a:Lu1/e;

.field public final b:Lo1/j0;

.field public final c:F

.field public final d:F

.field public e:J

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public final k:Ljava/util/LinkedList;

.field public final l:Lo0/n;


# direct methods
.method public constructor <init>(Lcom/nomone/vr_desktop/LaunchActivity;Lo1/j0;Lu1/e;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lu1/r;->k:Ljava/util/LinkedList;

    new-instance v0, Lo0/n;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Lo0/n;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lu1/r;->l:Lo0/n;

    iput-object p2, p0, Lu1/r;->b:Lo1/j0;

    iput-object p3, p0, Lu1/r;->a:Lu1/e;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x41100000    # 9.0f

    mul-float/2addr p1, p2

    iput p1, p0, Lu1/r;->c:F

    iput p1, p0, Lu1/r;->d:F

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/16 v0, 0x4002

    .line 6
    .line 7
    and-int/2addr p1, v0

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    move p1, v2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move p1, v1

    .line 15
    :goto_0
    if-eqz p1, :cond_b

    .line 16
    .line 17
    iget-object p1, p0, Lu1/r;->a:Lu1/e;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    const/high16 v0, 0x43700000    # 240.0f

    .line 27
    .line 28
    if-nez p1, :cond_3

    .line 29
    .line 30
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    .line 39
    .line 40
    .line 41
    move-result-wide v3

    .line 42
    iget-wide v5, p0, Lu1/r;->e:J

    .line 43
    .line 44
    sub-long v5, v3, v5

    .line 45
    .line 46
    long-to-float p2, v5

    .line 47
    iget v5, p0, Lu1/r;->f:F

    .line 48
    .line 49
    sub-float v5, p1, v5

    .line 50
    .line 51
    iget v6, p0, Lu1/r;->g:F

    .line 52
    .line 53
    sub-float v6, v1, v6

    .line 54
    .line 55
    mul-float/2addr v5, v5

    .line 56
    mul-float/2addr v6, v6

    .line 57
    add-float/2addr v6, v5

    .line 58
    float-to-double v5, v6

    .line 59
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    .line 60
    .line 61
    .line 62
    move-result-wide v5

    .line 63
    double-to-float v5, v5

    .line 64
    cmpl-float p2, p2, v0

    .line 65
    .line 66
    if-gtz p2, :cond_1

    .line 67
    .line 68
    iget p2, p0, Lu1/r;->c:F

    .line 69
    .line 70
    cmpl-float p2, v5, p2

    .line 71
    .line 72
    if-gtz p2, :cond_1

    .line 73
    .line 74
    iget p2, p0, Lu1/r;->j:F

    .line 75
    .line 76
    iget v0, p0, Lu1/r;->d:F

    .line 77
    .line 78
    cmpl-float p2, p2, v0

    .line 79
    .line 80
    if-lez p2, :cond_2

    .line 81
    .line 82
    :cond_1
    iget-object p2, p0, Lu1/r;->a:Lu1/e;

    .line 83
    .line 84
    invoke-virtual {p2, p1, v1}, Lu1/e;->b(FF)V

    .line 85
    .line 86
    .line 87
    iput p1, p0, Lu1/r;->f:F

    .line 88
    .line 89
    iput v1, p0, Lu1/r;->g:F

    .line 90
    .line 91
    :cond_2
    iget-object p2, p0, Lu1/r;->a:Lu1/e;

    .line 92
    .line 93
    invoke-virtual {p2, v2}, Lu1/e;->d(Z)V

    .line 94
    .line 95
    .line 96
    const/4 p2, 0x0

    .line 97
    iput p2, p0, Lu1/r;->j:F

    .line 98
    .line 99
    iput-wide v3, p0, Lu1/r;->e:J

    .line 100
    .line 101
    iput p1, p0, Lu1/r;->h:F

    .line 102
    .line 103
    iput v1, p0, Lu1/r;->i:F

    .line 104
    .line 105
    goto/16 :goto_3

    .line 106
    .line 107
    :cond_3
    const/4 v3, 0x5

    .line 108
    if-ne p1, v3, :cond_4

    .line 109
    .line 110
    const-string p1, "sdf"

    .line 111
    .line 112
    const-string p2, "Received ACTION_POINTER_DOWN in Stylus. This is abnormal?"

    .line 113
    .line 114
    invoke-static {p1, p2}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    goto/16 :goto_3

    .line 118
    .line 119
    :cond_4
    if-ne p1, v2, :cond_5

    .line 120
    .line 121
    iget-object p1, p0, Lu1/r;->l:Lo0/n;

    .line 122
    .line 123
    invoke-virtual {p1}, Lo0/n;->run()V

    .line 124
    .line 125
    .line 126
    iget-object v3, p0, Lu1/r;->k:Ljava/util/LinkedList;

    .line 127
    .line 128
    monitor-enter v3

    .line 129
    :try_start_0
    iget-object p1, p0, Lu1/r;->k:Ljava/util/LinkedList;

    .line 130
    .line 131
    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    .line 132
    .line 133
    .line 134
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    iget-object p1, p0, Lu1/r;->a:Lu1/e;

    .line 136
    .line 137
    invoke-virtual {p1, v2}, Lu1/e;->e(Z)V

    .line 138
    .line 139
    .line 140
    goto/16 :goto_3

    .line 141
    .line 142
    :catchall_0
    move-exception p1

    .line 143
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    throw p1

    .line 145
    :cond_5
    const/4 v3, 0x2

    .line 146
    if-ne p1, v3, :cond_8

    .line 147
    .line 148
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getHistorySize()I

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    add-int/lit8 v0, p1, 0x1

    .line 153
    .line 154
    :goto_1
    if-ge v1, v0, :cond_a

    .line 155
    .line 156
    if-ne v1, p1, :cond_6

    .line 157
    .line 158
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 163
    .line 164
    .line 165
    move-result v4

    .line 166
    goto :goto_2

    .line 167
    :cond_6
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    .line 172
    .line 173
    .line 174
    move-result v4

    .line 175
    :goto_2
    iget v5, p0, Lu1/r;->j:F

    .line 176
    .line 177
    iget v6, p0, Lu1/r;->h:F

    .line 178
    .line 179
    sub-float v6, v3, v6

    .line 180
    .line 181
    iget v7, p0, Lu1/r;->i:F

    .line 182
    .line 183
    sub-float v7, v4, v7

    .line 184
    .line 185
    mul-float/2addr v6, v6

    .line 186
    mul-float/2addr v7, v7

    .line 187
    add-float/2addr v7, v6

    .line 188
    float-to-double v6, v7

    .line 189
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    .line 190
    .line 191
    .line 192
    move-result-wide v6

    .line 193
    double-to-float v6, v6

    .line 194
    add-float/2addr v6, v5

    .line 195
    iput v6, p0, Lu1/r;->j:F

    .line 196
    .line 197
    iput v3, p0, Lu1/r;->h:F

    .line 198
    .line 199
    iput v4, p0, Lu1/r;->i:F

    .line 200
    .line 201
    new-instance v5, Lu1/q;

    .line 202
    .line 203
    invoke-direct {v5, v3, v4}, Lu1/q;-><init>(FF)V

    .line 204
    .line 205
    .line 206
    iget-object v3, p0, Lu1/r;->k:Ljava/util/LinkedList;

    .line 207
    .line 208
    monitor-enter v3

    .line 209
    :try_start_2
    iget-object v4, p0, Lu1/r;->k:Ljava/util/LinkedList;

    .line 210
    .line 211
    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    iget-object v4, p0, Lu1/r;->k:Ljava/util/LinkedList;

    .line 215
    .line 216
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    .line 217
    .line 218
    .line 219
    move-result v4

    .line 220
    if-ne v4, v2, :cond_7

    .line 221
    .line 222
    iget-object v4, p0, Lu1/r;->b:Lo1/j0;

    .line 223
    .line 224
    iget-object v5, p0, Lu1/r;->l:Lo0/n;

    .line 225
    .line 226
    invoke-virtual {v4, v5}, Lo1/j0;->c(Ljava/lang/Runnable;)V

    .line 227
    .line 228
    .line 229
    :cond_7
    monitor-exit v3

    .line 230
    add-int/lit8 v1, v1, 0x1

    .line 231
    .line 232
    goto :goto_1

    .line 233
    :catchall_1
    move-exception p1

    .line 234
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 235
    throw p1

    .line 236
    :cond_8
    const/4 v1, 0x7

    .line 237
    if-ne p1, v1, :cond_a

    .line 238
    .line 239
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 240
    .line 241
    .line 242
    move-result p1

    .line 243
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 244
    .line 245
    .line 246
    move-result v1

    .line 247
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    .line 248
    .line 249
    .line 250
    move-result-wide v3

    .line 251
    iget-wide v5, p0, Lu1/r;->e:J

    .line 252
    .line 253
    sub-long/2addr v3, v5

    .line 254
    long-to-float v3, v3

    .line 255
    iget v4, p0, Lu1/r;->f:F

    .line 256
    .line 257
    sub-float/2addr p1, v4

    .line 258
    iget v4, p0, Lu1/r;->g:F

    .line 259
    .line 260
    sub-float/2addr v1, v4

    .line 261
    mul-float/2addr p1, p1

    .line 262
    mul-float/2addr v1, v1

    .line 263
    add-float/2addr v1, p1

    .line 264
    float-to-double v4, v1

    .line 265
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    .line 266
    .line 267
    .line 268
    move-result-wide v4

    .line 269
    double-to-float p1, v4

    .line 270
    cmpl-float v0, v3, v0

    .line 271
    .line 272
    if-gtz v0, :cond_9

    .line 273
    .line 274
    iget v0, p0, Lu1/r;->c:F

    .line 275
    .line 276
    cmpl-float p1, p1, v0

    .line 277
    .line 278
    if-lez p1, :cond_a

    .line 279
    .line 280
    :cond_9
    iget-object p1, p0, Lu1/r;->a:Lu1/e;

    .line 281
    .line 282
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 287
    .line 288
    .line 289
    move-result p2

    .line 290
    invoke-virtual {p1, v0, p2}, Lu1/e;->b(FF)V

    .line 291
    .line 292
    .line 293
    :cond_a
    :goto_3
    return v2

    .line 294
    :cond_b
    return v1
.end method
