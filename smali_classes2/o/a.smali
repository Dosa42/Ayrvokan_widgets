.class public Lo/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo2/e;


# instance fields
.field public f:I

.field public g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_0

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lo/a;->g:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The max pool size must be > 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lo/a;->f:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 3
    iput-object p1, p0, Lo/a;->g:Ljava/lang/Object;

    iput p2, p0, Lo/a;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lu1/i;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lo/a;->g:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lo/a;->f:I

    return-void
.end method


# virtual methods
.method public final F()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public a()Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lo/a;->f:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    add-int/lit8 v2, v0, -0x1

    iget-object v3, p0, Lo/a;->g:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    aget-object v4, v4, v2

    check-cast v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo/a;->f:I

    return-object v4

    :cond_0
    return-object v1
.end method

.method public final b(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 0

    .line 1
    invoke-virtual {p2, p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureRequired(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final c()I
    .locals 2

    .line 1
    iget-object v0, p0, Lo/a;->g:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [Landroid/media/MediaCodecInfo;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroid/media/MediaCodecList;

    .line 8
    .line 9
    iget v1, p0, Lo/a;->f:I

    .line 10
    .line 11
    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lo/a;->g:Ljava/lang/Object;

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lo/a;->g:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, [Landroid/media/MediaCodecInfo;

    .line 23
    .line 24
    array-length v0, v0

    .line 25
    return v0
.end method

.method public final d(Lu1/w;)V
    .locals 6

    .line 1
    iget-object v0, p1, Lu1/w;->b:Lz1/b;

    .line 2
    .line 3
    instance-of v0, v0, Lz1/a;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p1, "sdf"

    .line 8
    .line 9
    const-string v0, "Can\'t handle virtual cursor events with coordinates of type other than cartesian"

    .line 10
    .line 11
    invoke-static {p1, v0}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    goto/16 :goto_4

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lo/a;->g:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Lu1/i;

    .line 19
    .line 20
    iget-object v0, v0, Lu1/i;->t:Lu1/w;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lu1/w;->b(Lu1/w;)V

    .line 23
    .line 24
    .line 25
    iget v0, p1, Lu1/w;->a:I

    .line 26
    .line 27
    const/4 v1, 0x4

    .line 28
    const/4 v2, 0x1

    .line 29
    if-eq v0, v1, :cond_1

    .line 30
    .line 31
    const/4 v1, 0x6

    .line 32
    if-ne v0, v1, :cond_2

    .line 33
    .line 34
    :cond_1
    iget v0, p0, Lo/a;->f:I

    .line 35
    .line 36
    add-int/2addr v0, v2

    .line 37
    iput v0, p0, Lo/a;->f:I

    .line 38
    .line 39
    :cond_2
    iget-object p1, p1, Lu1/w;->b:Lz1/b;

    .line 40
    .line 41
    check-cast p1, Lz1/a;

    .line 42
    .line 43
    iget-object v0, p0, Lo/a;->g:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Lu1/i;

    .line 46
    .line 47
    iget-object v1, v0, Lu1/i;->s:Lz1/e;

    .line 48
    .line 49
    iget-object v0, v0, Lu1/i;->u:La2/l;

    .line 50
    .line 51
    iget v3, p1, Lz1/a;->a:F

    .line 52
    .line 53
    check-cast v0, La2/k;

    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    invoke-static {}, Lz1/f;->o()F

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    neg-float v4, v4

    .line 63
    iget v0, v0, La2/k;->l:I

    .line 64
    .line 65
    int-to-float v0, v0

    .line 66
    div-float/2addr v3, v0

    .line 67
    const/high16 v0, 0x40000000    # 2.0f

    .line 68
    .line 69
    mul-float/2addr v3, v0

    .line 70
    const/high16 v5, 0x3f800000    # 1.0f

    .line 71
    .line 72
    sub-float/2addr v3, v5

    .line 73
    mul-float/2addr v3, v4

    .line 74
    iput v3, v1, Lz1/e;->a:F

    .line 75
    .line 76
    iget-object v1, p0, Lo/a;->g:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v1, Lu1/i;

    .line 79
    .line 80
    iget-object v3, v1, Lu1/i;->s:Lz1/e;

    .line 81
    .line 82
    iget-object v1, v1, Lu1/i;->u:La2/l;

    .line 83
    .line 84
    iget p1, p1, Lz1/a;->b:F

    .line 85
    .line 86
    check-cast v1, La2/k;

    .line 87
    .line 88
    iget-object v4, v1, La2/k;->i:Lz1/f;

    .line 89
    .line 90
    iget v4, v4, Lz1/f;->e:F

    .line 91
    .line 92
    invoke-static {v4}, Lz1/f;->p(F)F

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    iget v1, v1, La2/k;->m:I

    .line 97
    .line 98
    int-to-float v1, v1

    .line 99
    div-float/2addr p1, v1

    .line 100
    mul-float/2addr p1, v0

    .line 101
    sub-float/2addr p1, v5

    .line 102
    mul-float/2addr p1, v4

    .line 103
    iput p1, v3, Lz1/e;->b:F

    .line 104
    .line 105
    iget-object p1, p0, Lo/a;->g:Ljava/lang/Object;

    .line 106
    .line 107
    move-object v0, p1

    .line 108
    check-cast v0, Lu1/i;

    .line 109
    .line 110
    iget-object v0, v0, Lu1/i;->t:Lu1/w;

    .line 111
    .line 112
    iget v0, v0, Lu1/w;->a:I

    .line 113
    .line 114
    const/4 v1, 0x0

    .line 115
    if-eq v0, v2, :cond_4

    .line 116
    .line 117
    const/4 v3, 0x3

    .line 118
    if-eq v0, v3, :cond_4

    .line 119
    .line 120
    const/16 v3, 0x8

    .line 121
    .line 122
    if-ne v0, v3, :cond_3

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_3
    move v0, v1

    .line 126
    goto :goto_1

    .line 127
    :cond_4
    :goto_0
    move v0, v2

    .line 128
    :goto_1
    if-eqz v0, :cond_5

    .line 129
    .line 130
    move v0, v1

    .line 131
    goto :goto_2

    .line 132
    :cond_5
    iget v0, p0, Lo/a;->f:I

    .line 133
    .line 134
    :goto_2
    check-cast p1, Lu1/i;

    .line 135
    .line 136
    iget-object v3, p1, Lu1/i;->a:Lq1/f;

    .line 137
    .line 138
    invoke-virtual {v3}, Lq1/f;->b()Z

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    if-eqz v4, :cond_7

    .line 143
    .line 144
    iget-boolean v3, v3, Lq1/f;->h:Z

    .line 145
    .line 146
    if-eqz v3, :cond_7

    .line 147
    .line 148
    iget-object v3, p1, Lu1/i;->z:Lu1/h;

    .line 149
    .line 150
    if-eqz v3, :cond_6

    .line 151
    .line 152
    move v3, v2

    .line 153
    goto :goto_3

    .line 154
    :cond_6
    move v3, v1

    .line 155
    :goto_3
    if-eqz v3, :cond_7

    .line 156
    .line 157
    iget-boolean p1, p1, Lu1/i;->e:Z

    .line 158
    .line 159
    if-nez p1, :cond_7

    .line 160
    .line 161
    move v1, v2

    .line 162
    :cond_7
    if-eqz v1, :cond_8

    .line 163
    .line 164
    iget-object p1, p0, Lo/a;->g:Ljava/lang/Object;

    .line 165
    .line 166
    check-cast p1, Lu1/i;

    .line 167
    .line 168
    iget-object p1, p1, Lu1/i;->t:Lu1/w;

    .line 169
    .line 170
    iget p1, p1, Lu1/w;->a:I

    .line 171
    .line 172
    if-eq p1, v2, :cond_8

    .line 173
    .line 174
    const/4 v0, -0x1

    .line 175
    iput v0, p0, Lo/a;->f:I

    .line 176
    .line 177
    :cond_8
    iget-object p1, p0, Lo/a;->g:Ljava/lang/Object;

    .line 178
    .line 179
    check-cast p1, Lu1/i;

    .line 180
    .line 181
    iget-object v1, p1, Lu1/i;->t:Lu1/w;

    .line 182
    .line 183
    iput v0, v1, Lu1/w;->e:I

    .line 184
    .line 185
    iget-object p1, p1, Lu1/i;->a:Lq1/f;

    .line 186
    .line 187
    iget-object p1, p1, Lq1/f;->e:La2/c0;

    .line 188
    .line 189
    invoke-interface {p1, v1}, La2/r;->u(Lu1/w;)Z

    .line 190
    .line 191
    .line 192
    :goto_4
    return-void
.end method

.method public final e(FF)V
    .locals 4

    .line 1
    iget-object v0, p0, Lo/a;->g:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lu1/i;

    .line 4
    .line 5
    iget-object v0, v0, Lu1/i;->u:La2/l;

    .line 6
    .line 7
    check-cast v0, La2/k;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lz1/f;->o()F

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    neg-float v1, v1

    .line 17
    iget v0, v0, La2/k;->l:I

    .line 18
    .line 19
    int-to-float v0, v0

    .line 20
    div-float/2addr p1, v0

    .line 21
    const/high16 v0, 0x40000000    # 2.0f

    .line 22
    .line 23
    mul-float/2addr p1, v0

    .line 24
    const/high16 v2, 0x3f800000    # 1.0f

    .line 25
    .line 26
    sub-float/2addr p1, v2

    .line 27
    mul-float/2addr p1, v1

    .line 28
    iget-object v1, p0, Lo/a;->g:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v1, Lu1/i;

    .line 31
    .line 32
    iget-object v1, v1, Lu1/i;->u:La2/l;

    .line 33
    .line 34
    check-cast v1, La2/k;

    .line 35
    .line 36
    iget-object v3, v1, La2/k;->i:Lz1/f;

    .line 37
    .line 38
    iget v3, v3, Lz1/f;->e:F

    .line 39
    .line 40
    invoke-static {v3}, Lz1/f;->p(F)F

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    iget v1, v1, La2/k;->m:I

    .line 45
    .line 46
    int-to-float v1, v1

    .line 47
    div-float/2addr p2, v1

    .line 48
    mul-float/2addr p2, v0

    .line 49
    sub-float/2addr p2, v2

    .line 50
    mul-float/2addr p2, v3

    .line 51
    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_1

    .line 56
    .line 57
    invoke-static {p2}, Ljava/lang/Float;->isInfinite(F)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_0

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, p0, Lo/a;->g:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v0, Lu1/i;

    .line 67
    .line 68
    invoke-virtual {v0, p1, p2}, Lu1/i;->e(FF)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_1

    .line 73
    .line 74
    iget-object v0, p0, Lo/a;->g:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v0, Lu1/i;

    .line 77
    .line 78
    iget-object v0, v0, Lu1/i;->u:La2/l;

    .line 79
    .line 80
    check-cast v0, La2/k;

    .line 81
    .line 82
    invoke-virtual {v0, p1, p2}, La2/k;->B(FF)V

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Lo/a;->g:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast p1, Lu1/i;

    .line 88
    .line 89
    iget-object p1, p1, Lu1/i;->b:Lq1/r;

    .line 90
    .line 91
    iget-object p1, p1, Lq1/r;->f:Lq1/x;

    .line 92
    .line 93
    iget-object p2, p1, Lq1/x;->k:Lu1/i;

    .line 94
    .line 95
    if-eqz p2, :cond_1

    .line 96
    .line 97
    iget-boolean p2, p2, Lu1/i;->f:Z

    .line 98
    .line 99
    if-eqz p2, :cond_1

    .line 100
    .line 101
    iget-object p1, p1, Lq1/x;->d:Lq1/f;

    .line 102
    .line 103
    invoke-virtual {p1}, Lq1/f;->d()V

    .line 104
    .line 105
    .line 106
    :cond_1
    :goto_0
    return-void
.end method

.method public final f(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lo/a;->g:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lu1/i;

    .line 5
    .line 6
    iget-object v1, v1, Lu1/i;->b:Lq1/r;

    .line 7
    .line 8
    move-object v2, v0

    .line 9
    check-cast v2, Lu1/i;

    .line 10
    .line 11
    iget-object v2, v2, Lu1/i;->u:La2/l;

    .line 12
    .line 13
    check-cast v2, La2/k;

    .line 14
    .line 15
    iget-object v2, v2, La2/k;->i:Lz1/f;

    .line 16
    .line 17
    iget v2, v2, Lz1/f;->e:F

    .line 18
    .line 19
    check-cast v0, Lu1/i;

    .line 20
    .line 21
    iget-object v0, v0, Lu1/i;->u:La2/l;

    .line 22
    .line 23
    check-cast v0, La2/k;

    .line 24
    .line 25
    iget-object v0, v0, La2/k;->i:Lz1/f;

    .line 26
    .line 27
    iget v0, v0, Lz1/f;->f:F

    .line 28
    .line 29
    iget-object v1, v1, Lq1/r;->f:Lq1/x;

    .line 30
    .line 31
    invoke-virtual {v1, v2, v0, p1}, Lq1/x;->j(FFZ)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public g(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget v2, p0, Lo/a;->f:I

    .line 4
    .line 5
    const/4 v3, 0x1

    .line 6
    if-ge v1, v2, :cond_1

    .line 7
    .line 8
    iget-object v4, p0, Lo/a;->g:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v4, [Ljava/lang/Object;

    .line 11
    .line 12
    aget-object v4, v4, v1

    .line 13
    .line 14
    if-ne v4, p1, :cond_0

    .line 15
    .line 16
    move v1, v3

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    move v1, v0

    .line 22
    :goto_1
    if-nez v1, :cond_3

    .line 23
    .line 24
    iget-object v1, p0, Lo/a;->g:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, [Ljava/lang/Object;

    .line 27
    .line 28
    array-length v4, v1

    .line 29
    if-ge v2, v4, :cond_2

    .line 30
    .line 31
    aput-object p1, v1, v2

    .line 32
    .line 33
    add-int/2addr v2, v3

    .line 34
    iput v2, p0, Lo/a;->f:I

    .line 35
    .line 36
    return v3

    .line 37
    :cond_2
    return v0

    .line 38
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 39
    .line 40
    const-string v0, "Already in the pool!"

    .line 41
    .line 42
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1
.end method

.method public final h(I)Landroid/media/MediaCodecInfo;
    .locals 2

    .line 1
    iget-object v0, p0, Lo/a;->g:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [Landroid/media/MediaCodecInfo;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroid/media/MediaCodecList;

    .line 8
    .line 9
    iget v1, p0, Lo/a;->f:I

    .line 10
    .line 11
    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lo/a;->g:Ljava/lang/Object;

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lo/a;->g:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, [Landroid/media/MediaCodecInfo;

    .line 23
    .line 24
    aget-object p1, v0, p1

    .line 25
    .line 26
    return-object p1
.end method

.method public final x(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 0

    .line 1
    invoke-virtual {p3, p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
