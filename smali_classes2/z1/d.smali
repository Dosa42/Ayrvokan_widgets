.class public final Lz1/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:F

.field public b:F

.field public c:F


# virtual methods
.method public final a(Lz1/e;)V
    .locals 9

    .line 1
    iget v0, p0, Lz1/d;->a:F

    .line 2
    .line 3
    iget v1, p0, Lz1/d;->b:F

    .line 4
    .line 5
    iget v2, p0, Lz1/d;->c:F

    .line 6
    .line 7
    div-float v2, v0, v2

    .line 8
    .line 9
    float-to-double v2, v2

    .line 10
    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    double-to-float v2, v2

    .line 15
    iget v3, p0, Lz1/d;->c:F

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    cmpg-float v3, v3, v4

    .line 19
    .line 20
    const v5, 0x40490fdb    # (float)Math.PI

    .line 21
    .line 22
    .line 23
    if-gez v3, :cond_0

    .line 24
    .line 25
    add-float/2addr v2, v5

    .line 26
    :cond_0
    cmpg-float v3, v2, v4

    .line 27
    .line 28
    const v6, 0x40c90fdb

    .line 29
    .line 30
    .line 31
    if-gez v3, :cond_1

    .line 32
    .line 33
    add-float/2addr v2, v6

    .line 34
    :cond_1
    neg-float v3, v2

    .line 35
    invoke-virtual {p0, v3}, Lz1/d;->b(F)V

    .line 36
    .line 37
    .line 38
    iget v3, p0, Lz1/d;->c:F

    .line 39
    .line 40
    iget v7, p0, Lz1/d;->b:F

    .line 41
    .line 42
    div-float/2addr v3, v7

    .line 43
    float-to-double v7, v3

    .line 44
    invoke-static {v7, v8}, Ljava/lang/Math;->atan(D)D

    .line 45
    .line 46
    .line 47
    move-result-wide v7

    .line 48
    double-to-float v3, v7

    .line 49
    iget v7, p0, Lz1/d;->b:F

    .line 50
    .line 51
    cmpg-float v7, v7, v4

    .line 52
    .line 53
    if-gez v7, :cond_2

    .line 54
    .line 55
    add-float/2addr v3, v5

    .line 56
    :cond_2
    cmpg-float v4, v3, v4

    .line 57
    .line 58
    if-gez v4, :cond_3

    .line 59
    .line 60
    add-float/2addr v3, v6

    .line 61
    :cond_3
    const v4, 0x42652ee0

    .line 62
    .line 63
    .line 64
    mul-float/2addr v2, v4

    .line 65
    iput v2, p1, Lz1/e;->a:F

    .line 66
    .line 67
    mul-float/2addr v3, v4

    .line 68
    iput v3, p1, Lz1/e;->b:F

    .line 69
    .line 70
    iput v0, p0, Lz1/d;->a:F

    .line 71
    .line 72
    iput v1, p0, Lz1/d;->b:F

    .line 73
    .line 74
    return-void
.end method

.method public final b(F)V
    .locals 5

    .line 1
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Lz1/d;->c:F

    mul-float v2, v1, p1

    iget v3, p0, Lz1/d;->a:F

    mul-float v4, v3, v0

    sub-float/2addr v2, v4

    mul-float/2addr v3, p1

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    iput v1, p0, Lz1/d;->a:F

    iput v2, p0, Lz1/d;->c:F

    return-void
.end method

.method public final c(F)V
    .locals 5

    .line 1
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Lz1/d;->b:F

    mul-float v2, v1, p1

    iget v3, p0, Lz1/d;->c:F

    mul-float v4, v3, v0

    sub-float/2addr v2, v4

    mul-float/2addr v3, p1

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    iput v1, p0, Lz1/d;->c:F

    iput v2, p0, Lz1/d;->b:F

    return-void
.end method
