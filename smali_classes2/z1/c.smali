.class public Lz1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz1/g;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public final g:Lo1/p;

.field public final h:Landroidx/fragment/app/h;

.field public final i:Landroidx/fragment/app/h;


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lo1/p;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1}, Lo1/p;-><init>(FFF)V

    iput-object v0, p0, Lz1/c;->g:Lo1/p;

    new-instance v0, Landroidx/fragment/app/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/fragment/app/h;-><init>(Landroidx/fragment/app/g;)V

    iput-object v0, p0, Lz1/c;->h:Landroidx/fragment/app/h;

    new-instance v0, Landroidx/fragment/app/h;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Landroidx/fragment/app/h;-><init>(I)V

    iput-object v0, p0, Lz1/c;->i:Landroidx/fragment/app/h;

    const/4 v0, 0x0

    iput v0, p0, Lz1/c;->a:I

    iput v0, p0, Lz1/c;->b:I

    iput p1, p0, Lz1/c;->e:I

    iput p1, p0, Lz1/c;->c:I

    iput p2, p0, Lz1/c;->f:I

    iput p2, p0, Lz1/c;->d:I

    invoke-virtual {p0}, Lz1/c;->o()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Lz1/c;->f:I

    return v0
.end method

.method public b()Landroidx/fragment/app/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lz1/c;->h:Landroidx/fragment/app/h;

    return-object v0
.end method

.method public final c(II)V
    .locals 0

    .line 1
    iput p1, p0, Lz1/c;->e:I

    iput p2, p0, Lz1/c;->f:I

    invoke-virtual {p0}, Lz1/c;->o()V

    return-void
.end method

.method public final d(Lz1/b;Lz1/b;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lz1/a;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    instance-of v0, p2, Lz1/a;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p1, Lz1/a;

    .line 10
    .line 11
    check-cast p2, Lz1/a;

    .line 12
    .line 13
    iget v0, p1, Lz1/a;->a:F

    .line 14
    .line 15
    iget v1, p0, Lz1/c;->a:I

    .line 16
    .line 17
    int-to-float v1, v1

    .line 18
    sub-float/2addr v0, v1

    .line 19
    iget p1, p1, Lz1/a;->b:F

    .line 20
    .line 21
    iget v1, p0, Lz1/c;->b:I

    .line 22
    .line 23
    int-to-float v1, v1

    .line 24
    sub-float/2addr p1, v1

    .line 25
    iput v0, p2, Lz1/a;->a:F

    .line 26
    .line 27
    iput p1, p2, Lz1/a;->b:F

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 31
    .line 32
    const-string p2, "Output coordinates type not supported in this projection"

    .line 33
    .line 34
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1

    .line 38
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 39
    .line 40
    const-string p2, "Input coordinates type not supported in this projection"

    .line 41
    .line 42
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1
.end method

.method public final e()Landroidx/fragment/app/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lz1/c;->i:Landroidx/fragment/app/h;

    return-object v0
.end method

.method public final f()Landroidx/fragment/app/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lz1/c;->i:Landroidx/fragment/app/h;

    return-object v0
.end method

.method public final g(Lz1/b;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lz1/a;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p1, Lz1/a;

    .line 6
    .line 7
    iget v0, p1, Lz1/a;->a:F

    .line 8
    .line 9
    iget p1, p1, Lz1/a;->b:F

    .line 10
    .line 11
    iget v1, p0, Lz1/c;->a:I

    .line 12
    .line 13
    int-to-float v2, v1

    .line 14
    cmpl-float v2, v0, v2

    .line 15
    .line 16
    if-ltz v2, :cond_0

    .line 17
    .line 18
    iget v2, p0, Lz1/c;->c:I

    .line 19
    .line 20
    add-int/2addr v1, v2

    .line 21
    int-to-float v1, v1

    .line 22
    cmpg-float v0, v0, v1

    .line 23
    .line 24
    if-gtz v0, :cond_0

    .line 25
    .line 26
    iget v0, p0, Lz1/c;->b:I

    .line 27
    .line 28
    int-to-float v1, v0

    .line 29
    cmpl-float v1, p1, v1

    .line 30
    .line 31
    if-ltz v1, :cond_0

    .line 32
    .line 33
    iget v1, p0, Lz1/c;->d:I

    .line 34
    .line 35
    add-int/2addr v0, v1

    .line 36
    int-to-float v0, v0

    .line 37
    cmpg-float p1, p1, v0

    .line 38
    .line 39
    if-gtz p1, :cond_0

    .line 40
    .line 41
    const/4 p1, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 p1, 0x0

    .line 44
    :goto_0
    return p1

    .line 45
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 46
    .line 47
    const-string v0, "Not implemented"

    .line 48
    .line 49
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1
.end method

.method public final h()I
    .locals 1

    .line 1
    iget v0, p0, Lz1/c;->c:I

    return v0
.end method

.method public final i()I
    .locals 1

    .line 1
    iget v0, p0, Lz1/c;->d:I

    return v0
.end method

.method public final j()Lo1/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lz1/c;->g:Lo1/p;

    return-object v0
.end method

.method public final k()I
    .locals 1

    .line 1
    iget v0, p0, Lz1/c;->e:I

    return v0
.end method

.method public final l(II)V
    .locals 1

    .line 1
    iget v0, p0, Lz1/c;->c:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lz1/c;->d:I

    if-ne p2, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lz1/c;->c:I

    iput p2, p0, Lz1/c;->d:I

    invoke-virtual {p0}, Lz1/c;->o()V

    return-void
.end method

.method public m()Landroidx/fragment/app/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lz1/c;->h:Landroidx/fragment/app/h;

    return-object v0
.end method

.method public final n(II)V
    .locals 1

    .line 1
    iget v0, p0, Lz1/c;->a:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lz1/c;->b:I

    if-ne p2, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lz1/c;->a:I

    iput p2, p0, Lz1/c;->b:I

    invoke-virtual {p0}, Lz1/c;->o()V

    return-void
.end method

.method public final o()V
    .locals 12

    .line 1
    iget v0, p0, Lz1/c;->c:I

    .line 2
    .line 3
    int-to-float v1, v0

    .line 4
    iget v2, p0, Lz1/c;->e:I

    .line 5
    .line 6
    int-to-float v3, v2

    .line 7
    div-float v3, v1, v3

    .line 8
    .line 9
    iget v4, p0, Lz1/c;->d:I

    .line 10
    .line 11
    int-to-float v5, v4

    .line 12
    iget v6, p0, Lz1/c;->f:I

    .line 13
    .line 14
    int-to-float v7, v6

    .line 15
    div-float v7, v5, v7

    .line 16
    .line 17
    iget-object v8, p0, Lz1/c;->i:Landroidx/fragment/app/h;

    .line 18
    .line 19
    iget-object v9, v8, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v9, [F

    .line 22
    .line 23
    const/4 v10, 0x0

    .line 24
    aput v3, v9, v10

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    const/4 v10, 0x0

    .line 28
    aput v10, v9, v3

    .line 29
    .line 30
    const/4 v3, 0x2

    .line 31
    aput v10, v9, v3

    .line 32
    .line 33
    const/4 v11, 0x3

    .line 34
    aput v10, v9, v11

    .line 35
    .line 36
    const/4 v11, 0x4

    .line 37
    aput v10, v9, v11

    .line 38
    .line 39
    const/4 v11, 0x5

    .line 40
    aput v7, v9, v11

    .line 41
    .line 42
    const/4 v7, 0x6

    .line 43
    aput v10, v9, v7

    .line 44
    .line 45
    const/4 v7, 0x7

    .line 46
    aput v10, v9, v7

    .line 47
    .line 48
    const/16 v7, 0x8

    .line 49
    .line 50
    aput v10, v9, v7

    .line 51
    .line 52
    const/16 v7, 0x9

    .line 53
    .line 54
    aput v10, v9, v7

    .line 55
    .line 56
    const/16 v7, 0xa

    .line 57
    .line 58
    const/high16 v11, 0x3f800000    # 1.0f

    .line 59
    .line 60
    aput v11, v9, v7

    .line 61
    .line 62
    const/16 v7, 0xb

    .line 63
    .line 64
    aput v10, v9, v7

    .line 65
    .line 66
    const/16 v7, 0xc

    .line 67
    .line 68
    aput v10, v9, v7

    .line 69
    .line 70
    const/16 v7, 0xd

    .line 71
    .line 72
    aput v10, v9, v7

    .line 73
    .line 74
    const/16 v7, 0xe

    .line 75
    .line 76
    aput v10, v9, v7

    .line 77
    .line 78
    const/16 v7, 0xf

    .line 79
    .line 80
    aput v11, v9, v7

    .line 81
    .line 82
    iget v7, p0, Lz1/c;->a:I

    .line 83
    .line 84
    mul-int/2addr v7, v3

    .line 85
    sub-int/2addr v2, v0

    .line 86
    sub-int/2addr v7, v2

    .line 87
    int-to-float v0, v7

    .line 88
    div-float/2addr v0, v1

    .line 89
    iget v1, p0, Lz1/c;->b:I

    .line 90
    .line 91
    mul-int/2addr v1, v3

    .line 92
    sub-int/2addr v6, v4

    .line 93
    sub-int/2addr v1, v6

    .line 94
    int-to-float v1, v1

    .line 95
    div-float/2addr v1, v5

    .line 96
    invoke-virtual {v8, v0, v1}, Landroidx/fragment/app/h;->r(FF)V

    .line 97
    .line 98
    .line 99
    return-void
.end method
