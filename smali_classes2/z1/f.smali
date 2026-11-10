.class public final Lz1/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz1/g;


# static fields
.field public static A:F = 0.0f

.field public static B:F = 0.0f

.field public static C:F = 0.2412f

.field public static D:F

.field public static final w:Ljava/lang/Object;

.field public static x:F

.field public static y:F

.field public static z:Z


# instance fields
.field public a:F

.field public b:F

.field public c:Z

.field public d:Z

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public final i:Lz1/e;

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public final n:Landroidx/fragment/app/h;

.field public final o:Landroidx/fragment/app/h;

.field public final p:Landroidx/fragment/app/h;

.field public final q:Landroidx/fragment/app/h;

.field public final r:Landroidx/fragment/app/h;

.field public s:Lo1/p;

.field public final t:Lz1/a;

.field public final u:Lz1/d;

.field public final v:Lq1/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lz1/f;->w:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lq1/f;FFII)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lz1/f;->c:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lz1/f;->d:Z

    .line 9
    .line 10
    new-instance v0, Lz1/e;

    .line 11
    .line 12
    invoke-direct {v0}, Lz1/e;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lz1/f;->i:Lz1/e;

    .line 16
    .line 17
    new-instance v0, Landroidx/fragment/app/h;

    .line 18
    .line 19
    const/16 v1, 0x11

    .line 20
    .line 21
    invoke-direct {v0, v1}, Landroidx/fragment/app/h;-><init>(I)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lz1/f;->n:Landroidx/fragment/app/h;

    .line 25
    .line 26
    new-instance v2, Landroidx/fragment/app/h;

    .line 27
    .line 28
    invoke-direct {v2, v1}, Landroidx/fragment/app/h;-><init>(I)V

    .line 29
    .line 30
    .line 31
    iput-object v2, p0, Lz1/f;->o:Landroidx/fragment/app/h;

    .line 32
    .line 33
    new-instance v2, Landroidx/fragment/app/h;

    .line 34
    .line 35
    invoke-direct {v2, v1}, Landroidx/fragment/app/h;-><init>(I)V

    .line 36
    .line 37
    .line 38
    iput-object v2, p0, Lz1/f;->p:Landroidx/fragment/app/h;

    .line 39
    .line 40
    new-instance v2, Landroidx/fragment/app/h;

    .line 41
    .line 42
    invoke-direct {v2, v1}, Landroidx/fragment/app/h;-><init>(I)V

    .line 43
    .line 44
    .line 45
    iput-object v2, p0, Lz1/f;->q:Landroidx/fragment/app/h;

    .line 46
    .line 47
    new-instance v2, Landroidx/fragment/app/h;

    .line 48
    .line 49
    invoke-direct {v2, v1}, Landroidx/fragment/app/h;-><init>(I)V

    .line 50
    .line 51
    .line 52
    iput-object v2, p0, Lz1/f;->r:Landroidx/fragment/app/h;

    .line 53
    .line 54
    new-instance v1, Lo1/p;

    .line 55
    .line 56
    const/high16 v2, 0x3f800000    # 1.0f

    .line 57
    .line 58
    invoke-direct {v1, v2, v2, v2}, Lo1/p;-><init>(FFF)V

    .line 59
    .line 60
    .line 61
    iput-object v1, p0, Lz1/f;->s:Lo1/p;

    .line 62
    .line 63
    new-instance v1, Lz1/a;

    .line 64
    .line 65
    invoke-direct {v1}, Lz1/a;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object v1, p0, Lz1/f;->t:Lz1/a;

    .line 69
    .line 70
    new-instance v1, Lz1/d;

    .line 71
    .line 72
    invoke-direct {v1}, Lz1/d;-><init>()V

    .line 73
    .line 74
    .line 75
    iput-object v1, p0, Lz1/f;->u:Lz1/d;

    .line 76
    .line 77
    sget v1, Lz1/f;->D:F

    .line 78
    .line 79
    invoke-virtual {v0, v1, v1}, Landroidx/fragment/app/h;->p(FF)V

    .line 80
    .line 81
    .line 82
    const v0, 0x46a67cd9

    .line 83
    .line 84
    .line 85
    iput v0, p0, Lz1/f;->g:F

    .line 86
    .line 87
    invoke-virtual {p0, p2, p3}, Lz1/f;->q(FF)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, p4, p5}, Lz1/f;->l(II)V

    .line 91
    .line 92
    .line 93
    iput-object p1, p0, Lz1/f;->v:Lq1/f;

    .line 94
    .line 95
    return-void
.end method

.method public static o()F
    .locals 2

    .line 1
    const/4 v0, 0x0

    sget v1, Lz1/f;->D:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    double-to-float v0, v0

    const v1, 0x42652ee0

    mul-float/2addr v0, v1

    return v0
.end method

.method public static p(F)F
    .locals 4

    .line 1
    const v0, 0x3c8efa35

    mul-float/2addr p0, v0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const/4 p0, 0x0

    sget v2, Lz1/f;->D:F

    sub-float/2addr p0, v2

    float-to-double v2, p0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    double-to-float p0, v0

    const v0, 0x42652ee0

    mul-float/2addr p0, v0

    return p0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Lz1/f;->m:I

    .line 2
    .line 3
    return v0
.end method

.method public final b()Landroidx/fragment/app/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lz1/f;->v:Lq1/f;

    .line 2
    .line 3
    iget-object v0, v0, Lq1/f;->D:Landroidx/fragment/app/h;

    .line 4
    .line 5
    return-object v0
.end method

.method public final c(II)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-lt p1, v0, :cond_1

    .line 3
    .line 4
    if-lt p2, v0, :cond_1

    .line 5
    .line 6
    iget v1, p0, Lz1/f;->l:I

    .line 7
    .line 8
    if-ne v1, p1, :cond_0

    .line 9
    .line 10
    iget v1, p0, Lz1/f;->m:I

    .line 11
    .line 12
    if-ne v1, p2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iput p1, p0, Lz1/f;->l:I

    .line 16
    .line 17
    iput p2, p0, Lz1/f;->m:I

    .line 18
    .line 19
    invoke-virtual {p0}, Lz1/f;->r()V

    .line 20
    .line 21
    .line 22
    sget p1, Lz1/f;->D:F

    .line 23
    .line 24
    iget-object p2, p0, Lz1/f;->n:Landroidx/fragment/app/h;

    .line 25
    .line 26
    invoke-virtual {p2, p1, p1}, Landroidx/fragment/app/h;->p(FF)V

    .line 27
    .line 28
    .line 29
    sget-boolean p1, Lz1/f;->z:Z

    .line 30
    .line 31
    iput-boolean p1, p0, Lz1/f;->d:Z

    .line 32
    .line 33
    iput-boolean v0, p0, Lz1/f;->c:Z

    .line 34
    .line 35
    :goto_0
    return-void

    .line 36
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 37
    .line 38
    const-string p2, "Can\'t set PerspectiveWindowProjection target framebuffer dimensions to anything <= 0"

    .line 39
    .line 40
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p1
.end method

.method public final d(Lz1/b;Lz1/b;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lz1/f;->n()V

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, Lz1/e;

    .line 5
    .line 6
    const v1, 0x3c8efa35

    .line 7
    .line 8
    .line 9
    const-string v2, "Output coordinates type not supported in this projection"

    .line 10
    .line 11
    const-string v3, "Not implemented yet"

    .line 12
    .line 13
    const/high16 v4, -0x3db80000    # -50.0f

    .line 14
    .line 15
    iget-object v5, p0, Lz1/f;->i:Lz1/e;

    .line 16
    .line 17
    iget-object v6, p0, Lz1/f;->u:Lz1/d;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    instance-of v0, p2, Lz1/e;

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    instance-of v0, p2, Lz1/a;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    iput v0, v6, Lz1/d;->a:F

    .line 31
    .line 32
    iput v0, v6, Lz1/d;->b:F

    .line 33
    .line 34
    iput v4, v6, Lz1/d;->c:F

    .line 35
    .line 36
    check-cast p1, Lz1/e;

    .line 37
    .line 38
    iget v0, p1, Lz1/e;->b:F

    .line 39
    .line 40
    mul-float/2addr v0, v1

    .line 41
    invoke-virtual {v6, v0}, Lz1/d;->c(F)V

    .line 42
    .line 43
    .line 44
    iget p1, p1, Lz1/e;->a:F

    .line 45
    .line 46
    mul-float/2addr p1, v1

    .line 47
    invoke-virtual {v6, p1}, Lz1/d;->b(F)V

    .line 48
    .line 49
    .line 50
    iget p1, v5, Lz1/e;->a:F

    .line 51
    .line 52
    mul-float/2addr p1, v1

    .line 53
    neg-float p1, p1

    .line 54
    invoke-virtual {v6, p1}, Lz1/d;->b(F)V

    .line 55
    .line 56
    .line 57
    iget p1, v5, Lz1/e;->b:F

    .line 58
    .line 59
    mul-float/2addr p1, v1

    .line 60
    neg-float p1, p1

    .line 61
    invoke-virtual {v6, p1}, Lz1/d;->c(F)V

    .line 62
    .line 63
    .line 64
    iget p1, v6, Lz1/d;->c:F

    .line 65
    .line 66
    div-float/2addr v4, p1

    .line 67
    check-cast p2, Lz1/a;

    .line 68
    .line 69
    iget p1, p0, Lz1/f;->j:I

    .line 70
    .line 71
    int-to-float p1, p1

    .line 72
    const/high16 v0, 0x3f000000    # 0.5f

    .line 73
    .line 74
    mul-float/2addr p1, v0

    .line 75
    iget v1, v6, Lz1/d;->a:F

    .line 76
    .line 77
    mul-float/2addr v1, v4

    .line 78
    iget-object v2, p0, Lz1/f;->s:Lo1/p;

    .line 79
    .line 80
    iget v3, v2, Lo1/p;->e:F

    .line 81
    .line 82
    div-float v3, p1, v3

    .line 83
    .line 84
    mul-float/2addr v3, v1

    .line 85
    add-float/2addr v3, p1

    .line 86
    iget p1, p0, Lz1/f;->k:I

    .line 87
    .line 88
    int-to-float p1, p1

    .line 89
    mul-float/2addr p1, v0

    .line 90
    iget v0, v6, Lz1/d;->b:F

    .line 91
    .line 92
    mul-float/2addr v0, v4

    .line 93
    iget v1, v2, Lo1/p;->f:F

    .line 94
    .line 95
    div-float v1, p1, v1

    .line 96
    .line 97
    mul-float/2addr v1, v0

    .line 98
    add-float/2addr v1, p1

    .line 99
    iput v3, p2, Lz1/a;->a:F

    .line 100
    .line 101
    iput v1, p2, Lz1/a;->b:F

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 105
    .line 106
    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw p1

    .line 110
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 111
    .line 112
    invoke-direct {p1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw p1

    .line 116
    :cond_2
    instance-of v0, p1, Lz1/a;

    .line 117
    .line 118
    if-eqz v0, :cond_5

    .line 119
    .line 120
    instance-of v0, p2, Lz1/e;

    .line 121
    .line 122
    if-eqz v0, :cond_3

    .line 123
    .line 124
    check-cast p1, Lz1/a;

    .line 125
    .line 126
    check-cast p2, Lz1/e;

    .line 127
    .line 128
    iget v0, p1, Lz1/a;->a:F

    .line 129
    .line 130
    iget p1, p1, Lz1/a;->b:F

    .line 131
    .line 132
    const/high16 v2, 0x40000000    # 2.0f

    .line 133
    .line 134
    mul-float/2addr v0, v2

    .line 135
    iget v3, p0, Lz1/f;->j:I

    .line 136
    .line 137
    int-to-float v3, v3

    .line 138
    div-float/2addr v0, v3

    .line 139
    const/high16 v3, 0x3f800000    # 1.0f

    .line 140
    .line 141
    sub-float/2addr v0, v3

    .line 142
    iget-object v7, p0, Lz1/f;->s:Lo1/p;

    .line 143
    .line 144
    iget v8, v7, Lo1/p;->e:F

    .line 145
    .line 146
    mul-float/2addr v0, v8

    .line 147
    mul-float/2addr p1, v2

    .line 148
    iget v2, p0, Lz1/f;->k:I

    .line 149
    .line 150
    int-to-float v2, v2

    .line 151
    div-float/2addr p1, v2

    .line 152
    sub-float/2addr p1, v3

    .line 153
    iget v2, v7, Lo1/p;->f:F

    .line 154
    .line 155
    mul-float/2addr p1, v2

    .line 156
    iput v0, v6, Lz1/d;->a:F

    .line 157
    .line 158
    iput p1, v6, Lz1/d;->b:F

    .line 159
    .line 160
    iput v4, v6, Lz1/d;->c:F

    .line 161
    .line 162
    iget p1, v5, Lz1/e;->b:F

    .line 163
    .line 164
    mul-float/2addr p1, v1

    .line 165
    invoke-virtual {v6, p1}, Lz1/d;->c(F)V

    .line 166
    .line 167
    .line 168
    iget p1, v5, Lz1/e;->a:F

    .line 169
    .line 170
    mul-float/2addr p1, v1

    .line 171
    invoke-virtual {v6, p1}, Lz1/d;->b(F)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v6, p2}, Lz1/d;->a(Lz1/e;)V

    .line 175
    .line 176
    .line 177
    iget p1, p2, Lz1/e;->a:F

    .line 178
    .line 179
    const/high16 v0, 0x43340000    # 180.0f

    .line 180
    .line 181
    sub-float/2addr p1, v0

    .line 182
    iput p1, p2, Lz1/e;->a:F

    .line 183
    .line 184
    iget p1, p2, Lz1/e;->b:F

    .line 185
    .line 186
    neg-float p1, p1

    .line 187
    const/high16 v0, 0x42b40000    # 90.0f

    .line 188
    .line 189
    add-float/2addr p1, v0

    .line 190
    iput p1, p2, Lz1/e;->b:F

    .line 191
    .line 192
    :goto_0
    return-void

    .line 193
    :cond_3
    instance-of p1, p2, Lz1/a;

    .line 194
    .line 195
    if-eqz p1, :cond_4

    .line 196
    .line 197
    new-instance p1, Ljava/lang/RuntimeException;

    .line 198
    .line 199
    invoke-direct {p1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    throw p1

    .line 203
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    .line 204
    .line 205
    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    throw p1

    .line 209
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    .line 210
    .line 211
    const-string p2, "Input coordinates type not supported in this projection"

    .line 212
    .line 213
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    throw p1
.end method

.method public final e()Landroidx/fragment/app/h;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lz1/f;->n()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lz1/f;->q:Landroidx/fragment/app/h;

    .line 5
    .line 6
    return-object v0
.end method

.method public final f()Landroidx/fragment/app/h;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lz1/f;->n()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lz1/f;->r:Landroidx/fragment/app/h;

    .line 5
    .line 6
    return-object v0
.end method

.method public final g(Lz1/b;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lz1/f;->i:Lz1/e;

    .line 2
    .line 3
    iget v0, v0, Lz1/e;->a:F

    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/high16 v1, 0x42b40000    # 90.0f

    .line 10
    .line 11
    cmpl-float v0, v0, v1

    .line 12
    .line 13
    if-ltz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lz1/f;->t:Lz1/a;

    .line 17
    .line 18
    invoke-virtual {p0, p1, v0}, Lz1/f;->d(Lz1/b;Lz1/b;)V

    .line 19
    .line 20
    .line 21
    iget p1, v0, Lz1/a;->a:F

    .line 22
    .line 23
    iget v0, v0, Lz1/a;->b:F

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    cmpl-float v2, p1, v1

    .line 27
    .line 28
    if-ltz v2, :cond_1

    .line 29
    .line 30
    iget v2, p0, Lz1/f;->j:I

    .line 31
    .line 32
    int-to-float v2, v2

    .line 33
    cmpg-float p1, p1, v2

    .line 34
    .line 35
    if-gtz p1, :cond_1

    .line 36
    .line 37
    cmpl-float p1, v0, v1

    .line 38
    .line 39
    if-ltz p1, :cond_1

    .line 40
    .line 41
    iget p1, p0, Lz1/f;->k:I

    .line 42
    .line 43
    int-to-float p1, p1

    .line 44
    cmpg-float p1, v0, p1

    .line 45
    .line 46
    if-gtz p1, :cond_1

    .line 47
    .line 48
    const/4 p1, 0x1

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 51
    :goto_1
    return p1
.end method

.method public final h()I
    .locals 1

    .line 1
    iget v0, p0, Lz1/f;->j:I

    .line 2
    .line 3
    return v0
.end method

.method public final i()I
    .locals 1

    .line 1
    iget v0, p0, Lz1/f;->k:I

    .line 2
    .line 3
    return v0
.end method

.method public final j()Lo1/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lz1/f;->s:Lo1/p;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k()I
    .locals 1

    .line 1
    iget v0, p0, Lz1/f;->l:I

    .line 2
    .line 3
    return v0
.end method

.method public final l(II)V
    .locals 1

    .line 1
    iget v0, p0, Lz1/f;->j:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lz1/f;->k:I

    .line 6
    .line 7
    if-ne v0, p2, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iput p1, p0, Lz1/f;->j:I

    .line 11
    .line 12
    iput p2, p0, Lz1/f;->k:I

    .line 13
    .line 14
    iget p1, p0, Lz1/f;->l:I

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Lz1/f;->r()V

    .line 19
    .line 20
    .line 21
    :cond_1
    :goto_0
    return-void
.end method

.method public final m()Landroidx/fragment/app/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lz1/f;->v:Lq1/f;

    .line 2
    .line 3
    iget-object v0, v0, Lq1/f;->C:Landroidx/fragment/app/h;

    .line 4
    .line 5
    return-object v0
.end method

.method public final n()V
    .locals 12

    .line 1
    sget-object v0, Lz1/f;->w:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lz1/f;->c:Z

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    iget v1, p0, Lz1/f;->e:F

    .line 9
    .line 10
    iget v2, p0, Lz1/f;->g:F

    .line 11
    .line 12
    cmpl-float v1, v1, v2

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    iget v1, p0, Lz1/f;->f:F

    .line 17
    .line 18
    iget v2, p0, Lz1/f;->h:F

    .line 19
    .line 20
    cmpl-float v1, v1, v2

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    sget v1, Lz1/f;->x:F

    .line 25
    .line 26
    iget v2, p0, Lz1/f;->a:F

    .line 27
    .line 28
    cmpl-float v1, v1, v2

    .line 29
    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    sget v1, Lz1/f;->y:F

    .line 33
    .line 34
    iget v2, p0, Lz1/f;->b:F

    .line 35
    .line 36
    cmpl-float v1, v1, v2

    .line 37
    .line 38
    if-nez v1, :cond_0

    .line 39
    .line 40
    monitor-exit v0

    .line 41
    goto/16 :goto_0

    .line 42
    .line 43
    :cond_0
    sget v1, Lz1/f;->x:F

    .line 44
    .line 45
    iput v1, p0, Lz1/f;->a:F

    .line 46
    .line 47
    sget v2, Lz1/f;->y:F

    .line 48
    .line 49
    iput v2, p0, Lz1/f;->b:F

    .line 50
    .line 51
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lz1/f;->c:Z

    .line 54
    .line 55
    iget v3, p0, Lz1/f;->e:F

    .line 56
    .line 57
    iput v3, p0, Lz1/f;->g:F

    .line 58
    .line 59
    iget v4, p0, Lz1/f;->f:F

    .line 60
    .line 61
    iput v4, p0, Lz1/f;->h:F

    .line 62
    .line 63
    add-float/2addr v3, v1

    .line 64
    const/high16 v1, 0x43b40000    # 360.0f

    .line 65
    .line 66
    rem-float/2addr v3, v1

    .line 67
    add-float/2addr v4, v2

    .line 68
    rem-float/2addr v4, v1

    .line 69
    const/high16 v2, 0x43340000    # 180.0f

    .line 70
    .line 71
    cmpl-float v5, v3, v2

    .line 72
    .line 73
    if-lez v5, :cond_1

    .line 74
    .line 75
    sub-float/2addr v3, v1

    .line 76
    :cond_1
    const/high16 v5, -0x3ccc0000    # -180.0f

    .line 77
    .line 78
    cmpg-float v6, v3, v5

    .line 79
    .line 80
    if-gez v6, :cond_2

    .line 81
    .line 82
    add-float/2addr v3, v1

    .line 83
    :cond_2
    cmpl-float v2, v4, v2

    .line 84
    .line 85
    if-lez v2, :cond_3

    .line 86
    .line 87
    sub-float/2addr v4, v1

    .line 88
    :cond_3
    cmpg-float v2, v4, v5

    .line 89
    .line 90
    if-gez v2, :cond_4

    .line 91
    .line 92
    add-float/2addr v4, v1

    .line 93
    :cond_4
    iget-boolean v1, p0, Lz1/f;->d:Z

    .line 94
    .line 95
    if-eqz v1, :cond_9

    .line 96
    .line 97
    invoke-static {}, Lz1/f;->o()F

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    invoke-static {v1}, Lz1/f;->p(F)F

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    sget v5, Lz1/f;->A:F

    .line 106
    .line 107
    div-float/2addr v3, v5

    .line 108
    mul-float/2addr v3, v1

    .line 109
    cmpl-float v5, v3, v1

    .line 110
    .line 111
    if-lez v5, :cond_5

    .line 112
    .line 113
    move v3, v1

    .line 114
    :cond_5
    neg-float v1, v1

    .line 115
    cmpg-float v5, v3, v1

    .line 116
    .line 117
    if-gez v5, :cond_6

    .line 118
    .line 119
    move v3, v1

    .line 120
    :cond_6
    sget v1, Lz1/f;->B:F

    .line 121
    .line 122
    div-float/2addr v4, v1

    .line 123
    mul-float/2addr v4, v2

    .line 124
    cmpl-float v1, v4, v2

    .line 125
    .line 126
    if-lez v1, :cond_7

    .line 127
    .line 128
    move v4, v2

    .line 129
    :cond_7
    neg-float v1, v2

    .line 130
    cmpg-float v2, v4, v1

    .line 131
    .line 132
    if-gez v2, :cond_8

    .line 133
    .line 134
    move v4, v1

    .line 135
    :cond_8
    iget v1, p0, Lz1/f;->a:F

    .line 136
    .line 137
    sub-float v1, v3, v1

    .line 138
    .line 139
    iput v1, p0, Lz1/f;->e:F

    .line 140
    .line 141
    iput v1, p0, Lz1/f;->g:F

    .line 142
    .line 143
    iget v1, p0, Lz1/f;->b:F

    .line 144
    .line 145
    sub-float v1, v4, v1

    .line 146
    .line 147
    iput v1, p0, Lz1/f;->f:F

    .line 148
    .line 149
    iput v1, p0, Lz1/f;->h:F

    .line 150
    .line 151
    iput-boolean v0, p0, Lz1/f;->d:Z

    .line 152
    .line 153
    :cond_9
    move v0, v4

    .line 154
    iget-object v1, p0, Lz1/f;->i:Lz1/e;

    .line 155
    .line 156
    iput v3, v1, Lz1/e;->a:F

    .line 157
    .line 158
    iput v0, v1, Lz1/e;->b:F

    .line 159
    .line 160
    iget-object v1, p0, Lz1/f;->o:Landroidx/fragment/app/h;

    .line 161
    .line 162
    const/4 v8, 0x0

    .line 163
    const/high16 v9, 0x3f800000    # 1.0f

    .line 164
    .line 165
    const/4 v10, 0x0

    .line 166
    iget-object v1, v1, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 167
    .line 168
    move-object v5, v1

    .line 169
    check-cast v5, [F

    .line 170
    .line 171
    const/4 v6, 0x0

    .line 172
    move v7, v3

    .line 173
    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 174
    .line 175
    .line 176
    iget-object v1, p0, Lz1/f;->o:Landroidx/fragment/app/h;

    .line 177
    .line 178
    const/high16 v7, 0x3f800000    # 1.0f

    .line 179
    .line 180
    const/4 v8, 0x0

    .line 181
    const/4 v9, 0x0

    .line 182
    iget-object v1, v1, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 183
    .line 184
    move-object v4, v1

    .line 185
    check-cast v4, [F

    .line 186
    .line 187
    const/4 v5, 0x0

    .line 188
    move v6, v0

    .line 189
    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 190
    .line 191
    .line 192
    iget-object v1, p0, Lz1/f;->o:Landroidx/fragment/app/h;

    .line 193
    .line 194
    sget v2, Lz1/f;->C:F

    .line 195
    .line 196
    neg-float v2, v2

    .line 197
    const/4 v11, 0x0

    .line 198
    invoke-virtual {v1, v2, v11}, Landroidx/fragment/app/h;->r(FF)V

    .line 199
    .line 200
    .line 201
    iget-object v1, p0, Lz1/f;->n:Landroidx/fragment/app/h;

    .line 202
    .line 203
    iget-object v2, p0, Lz1/f;->o:Landroidx/fragment/app/h;

    .line 204
    .line 205
    iget-object v4, p0, Lz1/f;->q:Landroidx/fragment/app/h;

    .line 206
    .line 207
    invoke-virtual {v1, v2, v4}, Landroidx/fragment/app/h;->o(Landroidx/fragment/app/h;Landroidx/fragment/app/h;)V

    .line 208
    .line 209
    .line 210
    iget-object v1, p0, Lz1/f;->p:Landroidx/fragment/app/h;

    .line 211
    .line 212
    const/4 v8, 0x0

    .line 213
    const/high16 v9, 0x3f800000    # 1.0f

    .line 214
    .line 215
    const/4 v10, 0x0

    .line 216
    iget-object v1, v1, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 217
    .line 218
    move-object v5, v1

    .line 219
    check-cast v5, [F

    .line 220
    .line 221
    const/4 v6, 0x0

    .line 222
    move v7, v3

    .line 223
    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 224
    .line 225
    .line 226
    iget-object v1, p0, Lz1/f;->p:Landroidx/fragment/app/h;

    .line 227
    .line 228
    const/high16 v7, 0x3f800000    # 1.0f

    .line 229
    .line 230
    const/4 v8, 0x0

    .line 231
    const/4 v9, 0x0

    .line 232
    iget-object v1, v1, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 233
    .line 234
    move-object v4, v1

    .line 235
    check-cast v4, [F

    .line 236
    .line 237
    const/4 v5, 0x0

    .line 238
    move v6, v0

    .line 239
    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 240
    .line 241
    .line 242
    iget-object v0, p0, Lz1/f;->p:Landroidx/fragment/app/h;

    .line 243
    .line 244
    sget v1, Lz1/f;->C:F

    .line 245
    .line 246
    invoke-virtual {v0, v1, v11}, Landroidx/fragment/app/h;->r(FF)V

    .line 247
    .line 248
    .line 249
    iget-object v0, p0, Lz1/f;->n:Landroidx/fragment/app/h;

    .line 250
    .line 251
    iget-object v1, p0, Lz1/f;->p:Landroidx/fragment/app/h;

    .line 252
    .line 253
    iget-object v2, p0, Lz1/f;->r:Landroidx/fragment/app/h;

    .line 254
    .line 255
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/h;->o(Landroidx/fragment/app/h;Landroidx/fragment/app/h;)V

    .line 256
    .line 257
    .line 258
    :goto_0
    return-void

    .line 259
    :catchall_0
    move-exception v1

    .line 260
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    throw v1
.end method

.method public final q(FF)V
    .locals 0

    .line 1
    iput p1, p0, Lz1/f;->e:F

    .line 2
    .line 3
    iput p2, p0, Lz1/f;->f:F

    .line 4
    .line 5
    invoke-virtual {p0}, Lz1/f;->n()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final r()V
    .locals 5

    .line 1
    new-instance v0, Lo1/p;

    .line 2
    .line 3
    sget v1, Lz1/f;->D:F

    .line 4
    .line 5
    const/high16 v2, -0x3db80000    # -50.0f

    .line 6
    .line 7
    div-float/2addr v2, v1

    .line 8
    iget v1, p0, Lz1/f;->j:I

    .line 9
    .line 10
    int-to-float v1, v1

    .line 11
    iget v3, p0, Lz1/f;->l:I

    .line 12
    .line 13
    int-to-float v3, v3

    .line 14
    div-float/2addr v1, v3

    .line 15
    mul-float/2addr v1, v2

    .line 16
    iget v3, p0, Lz1/f;->k:I

    .line 17
    .line 18
    int-to-float v3, v3

    .line 19
    iget v4, p0, Lz1/f;->m:I

    .line 20
    .line 21
    int-to-float v4, v4

    .line 22
    div-float/2addr v3, v4

    .line 23
    mul-float/2addr v3, v2

    .line 24
    const/high16 v2, 0x42480000    # 50.0f

    .line 25
    .line 26
    invoke-direct {v0, v1, v3, v2}, Lo1/p;-><init>(FFF)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lz1/f;->s:Lo1/p;

    .line 30
    .line 31
    return-void
.end method
