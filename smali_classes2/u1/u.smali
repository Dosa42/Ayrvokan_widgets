.class public final Lu1/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public f:Z

.field public g:Z

.field public h:J

.field public i:Z

.field public final j:Lz1/a;

.field public k:F

.field public l:F

.field public m:I

.field public n:I

.field public final synthetic o:Lu1/v;


# direct methods
.method public constructor <init>(Lu1/v;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu1/u;->o:Lu1/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    new-instance p1, Lz1/a;

    invoke-direct {p1}, Lz1/a;-><init>()V

    iput-object p1, p0, Lu1/u;->j:Lz1/a;

    const/4 p1, 0x1

    iput p1, p0, Lu1/u;->n:I

    return-void
.end method


# virtual methods
.method public final a(FFZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lu1/u;->j:Lz1/a;

    .line 2
    .line 3
    iput p1, v0, Lz1/a;->a:F

    .line 4
    .line 5
    iput p2, v0, Lz1/a;->b:F

    .line 6
    .line 7
    iget-boolean p1, p0, Lu1/u;->i:Z

    .line 8
    .line 9
    const/4 p2, 0x6

    .line 10
    const/4 v0, 0x1

    .line 11
    if-ne p1, p3, :cond_0

    .line 12
    .line 13
    iget p1, p0, Lu1/u;->n:I

    .line 14
    .line 15
    if-ne p1, p2, :cond_0

    .line 16
    .line 17
    iget p1, p0, Lu1/u;->m:I

    .line 18
    .line 19
    add-int/2addr p1, v0

    .line 20
    iput p1, p0, Lu1/u;->m:I

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iput-boolean p3, p0, Lu1/u;->i:Z

    .line 24
    .line 25
    iput p2, p0, Lu1/u;->n:I

    .line 26
    .line 27
    iput v0, p0, Lu1/u;->m:I

    .line 28
    .line 29
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 30
    .line 31
    .line 32
    move-result-wide v1

    .line 33
    iput-wide v1, p0, Lu1/u;->h:J

    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    iput p1, p0, Lu1/u;->l:F

    .line 37
    .line 38
    iget-object p1, p0, Lu1/u;->o:Lu1/v;

    .line 39
    .line 40
    iget-object p3, p1, Lu1/v;->b:Lo/a;

    .line 41
    .line 42
    invoke-static {p2}, La1/b;->b(I)F

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    iput p2, p0, Lu1/u;->k:F

    .line 47
    .line 48
    const/4 p2, 0x0

    .line 49
    iput-boolean p2, p0, Lu1/u;->g:Z

    .line 50
    .line 51
    iput-boolean v0, p0, Lu1/u;->f:Z

    .line 52
    .line 53
    iget-object p1, p1, Lu1/v;->a:Lo1/j0;

    .line 54
    .line 55
    invoke-virtual {p1, p0}, Lo1/j0;->c(Ljava/lang/Runnable;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final b()Z
    .locals 6

    .line 1
    iget v0, p0, Lu1/u;->l:F

    .line 2
    .line 3
    iget v1, p0, Lu1/u;->n:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    iget-object v3, p0, Lu1/u;->o:Lu1/v;

    .line 7
    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget v2, p0, Lu1/u;->m:I

    .line 13
    .line 14
    int-to-float v2, v2

    .line 15
    iget-object v4, v3, Lu1/v;->b:Lo/a;

    .line 16
    .line 17
    const/4 v5, 0x5

    .line 18
    if-ne v1, v5, :cond_1

    .line 19
    .line 20
    iget-object v1, v4, Lo/a;->g:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v1, Lu1/i;

    .line 23
    .line 24
    iget-object v1, v1, Lu1/i;->a:Lq1/f;

    .line 25
    .line 26
    iget v1, v1, Lq1/f;->z:I

    .line 27
    .line 28
    int-to-float v1, v1

    .line 29
    const v4, 0x3f333333    # 0.7f

    .line 30
    .line 31
    .line 32
    mul-float/2addr v1, v4

    .line 33
    mul-float/2addr v1, v4

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-static {v1}, La1/b;->c(I)F

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    :goto_0
    mul-float/2addr v1, v2

    .line 40
    :goto_1
    const/high16 v2, 0x3f800000    # 1.0f

    .line 41
    .line 42
    sub-float/2addr v1, v2

    .line 43
    cmpl-float v0, v0, v1

    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    const/4 v2, 0x0

    .line 47
    if-lez v0, :cond_2

    .line 48
    .line 49
    iput v1, p0, Lu1/u;->n:I

    .line 50
    .line 51
    iput-boolean v2, p0, Lu1/u;->f:Z

    .line 52
    .line 53
    iget-object v0, v3, Lu1/v;->a:Lo1/j0;

    .line 54
    .line 55
    invoke-virtual {v0, p0}, Lo1/j0;->d(Ljava/lang/Runnable;)V

    .line 56
    .line 57
    .line 58
    return v1

    .line 59
    :cond_2
    iput-boolean v1, p0, Lu1/u;->g:Z

    .line 60
    .line 61
    return v2
.end method

.method public final run()V
    .locals 12

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lu1/u;->h:J

    .line 6
    .line 7
    sub-long v2, v0, v2

    .line 8
    .line 9
    long-to-float v2, v2

    .line 10
    const v3, 0x4e6e6b28    # 1.0E9f

    .line 11
    .line 12
    .line 13
    div-float/2addr v2, v3

    .line 14
    const v3, 0x3a83126f    # 0.001f

    .line 15
    .line 16
    .line 17
    cmpl-float v3, v2, v3

    .line 18
    .line 19
    iget-object v4, p0, Lu1/u;->o:Lu1/v;

    .line 20
    .line 21
    if-ltz v3, :cond_5

    .line 22
    .line 23
    iput-wide v0, p0, Lu1/u;->h:J

    .line 24
    .line 25
    iget v0, p0, Lu1/u;->k:F

    .line 26
    .line 27
    iget v1, p0, Lu1/u;->n:I

    .line 28
    .line 29
    invoke-static {v1}, La1/b;->a(I)F

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    mul-float/2addr v1, v2

    .line 34
    add-float/2addr v1, v0

    .line 35
    add-float/2addr v0, v1

    .line 36
    const/high16 v3, 0x3f000000    # 0.5f

    .line 37
    .line 38
    mul-float/2addr v0, v3

    .line 39
    iget v3, p0, Lu1/u;->n:I

    .line 40
    .line 41
    const/4 v5, 0x0

    .line 42
    const/4 v6, 0x2

    .line 43
    if-ne v3, v6, :cond_0

    .line 44
    .line 45
    move v3, v5

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    iget v7, p0, Lu1/u;->m:I

    .line 48
    .line 49
    int-to-float v7, v7

    .line 50
    iget-object v8, v4, Lu1/v;->b:Lo/a;

    .line 51
    .line 52
    const/4 v9, 0x5

    .line 53
    if-ne v3, v9, :cond_1

    .line 54
    .line 55
    iget-object v3, v8, Lo/a;->g:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v3, Lu1/i;

    .line 58
    .line 59
    iget-object v3, v3, Lu1/i;->a:Lq1/f;

    .line 60
    .line 61
    iget v3, v3, Lq1/f;->z:I

    .line 62
    .line 63
    int-to-float v3, v3

    .line 64
    const v8, 0x3f333333    # 0.7f

    .line 65
    .line 66
    .line 67
    mul-float/2addr v3, v8

    .line 68
    mul-float/2addr v3, v8

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    invoke-static {v3}, La1/b;->c(I)F

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    :goto_0
    mul-float/2addr v3, v7

    .line 75
    :goto_1
    cmpl-float v5, v3, v5

    .line 76
    .line 77
    const/high16 v7, 0x3f800000    # 1.0f

    .line 78
    .line 79
    if-eqz v5, :cond_3

    .line 80
    .line 81
    iget-boolean v5, p0, Lu1/u;->g:Z

    .line 82
    .line 83
    if-nez v5, :cond_2

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_2
    iget v5, p0, Lu1/u;->m:I

    .line 87
    .line 88
    int-to-float v5, v5

    .line 89
    iget v8, p0, Lu1/u;->l:F

    .line 90
    .line 91
    div-float/2addr v8, v3

    .line 92
    float-to-double v8, v8

    .line 93
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 94
    .line 95
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 96
    .line 97
    .line 98
    move-result-wide v8

    .line 99
    double-to-float v3, v8

    .line 100
    sub-float/2addr v7, v3

    .line 101
    mul-float/2addr v7, v5

    .line 102
    :cond_3
    :goto_2
    mul-float/2addr v0, v7

    .line 103
    iput v1, p0, Lu1/u;->k:F

    .line 104
    .line 105
    mul-float/2addr v0, v2

    .line 106
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    const/high16 v2, 0x40000000    # 2.0f

    .line 111
    .line 112
    mul-float/2addr v1, v2

    .line 113
    const v2, 0x3ee706d5    # 0.451224f

    .line 114
    .line 115
    .line 116
    mul-float/2addr v1, v2

    .line 117
    const v2, 0x3ba3d70a    # 0.005f

    .line 118
    .line 119
    .line 120
    mul-float/2addr v1, v2

    .line 121
    iget-object v2, v4, Lu1/v;->e:Lu1/w;

    .line 122
    .line 123
    iget-boolean v3, p0, Lu1/u;->i:Z

    .line 124
    .line 125
    if-eqz v3, :cond_4

    .line 126
    .line 127
    neg-float v1, v1

    .line 128
    :cond_4
    const/4 v3, 0x1

    .line 129
    iput v3, v2, Lu1/w;->a:I

    .line 130
    .line 131
    iput v6, v2, Lu1/w;->f:I

    .line 132
    .line 133
    sget-wide v5, Lu1/w;->l:J

    .line 134
    .line 135
    const-wide/16 v7, 0x2710

    .line 136
    .line 137
    add-long/2addr v5, v7

    .line 138
    sput-wide v5, Lu1/w;->l:J

    .line 139
    .line 140
    const-wide/16 v7, 0x0

    .line 141
    .line 142
    iput-wide v7, v2, Lu1/w;->g:J

    .line 143
    .line 144
    iput-wide v5, v2, Lu1/w;->h:J

    .line 145
    .line 146
    iput v1, v2, Lu1/w;->i:F

    .line 147
    .line 148
    iget-object v1, p0, Lu1/u;->j:Lz1/a;

    .line 149
    .line 150
    iput-object v1, v2, Lu1/w;->b:Lz1/b;

    .line 151
    .line 152
    iget-object v1, v4, Lu1/v;->b:Lo/a;

    .line 153
    .line 154
    invoke-virtual {v1, v2}, Lo/a;->d(Lu1/w;)V

    .line 155
    .line 156
    .line 157
    iget-object v1, v4, Lu1/v;->e:Lu1/w;

    .line 158
    .line 159
    iget-object v2, v4, Lu1/v;->c:Lz1/a;

    .line 160
    .line 161
    iput-object v2, v1, Lu1/w;->b:Lz1/b;

    .line 162
    .line 163
    iget v1, p0, Lu1/u;->l:F

    .line 164
    .line 165
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    add-float/2addr v0, v1

    .line 170
    iput v0, p0, Lu1/u;->l:F

    .line 171
    .line 172
    :cond_5
    iget-boolean v0, p0, Lu1/u;->g:Z

    .line 173
    .line 174
    if-eqz v0, :cond_6

    .line 175
    .line 176
    invoke-virtual {p0}, Lu1/u;->b()Z

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    if-nez v0, :cond_7

    .line 181
    .line 182
    :cond_6
    iget-object v0, v4, Lu1/v;->a:Lo1/j0;

    .line 183
    .line 184
    invoke-virtual {v0, p0}, Lo1/j0;->c(Ljava/lang/Runnable;)V

    .line 185
    .line 186
    .line 187
    :cond_7
    return-void
.end method
