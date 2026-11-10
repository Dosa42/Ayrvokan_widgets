.class public final Lu1/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lq1/f;

.field public final b:La2/r;

.field public final c:Lz1/g;

.field public d:Lz1/g;

.field public final e:Lu1/y;

.field public f:I

.field public final g:Lz1/a;

.field public final h:Lu1/w;


# direct methods
.method public constructor <init>(Lq1/f;La2/r;Lz1/c;Lu1/y;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lz1/a;

    invoke-direct {v0}, Lz1/a;-><init>()V

    iput-object v0, p0, Lu1/z;->g:Lz1/a;

    new-instance v1, Lu1/w;

    invoke-direct {v1, v0}, Lu1/w;-><init>(Lz1/b;)V

    iput-object v1, p0, Lu1/z;->h:Lu1/w;

    iput-object p1, p0, Lu1/z;->a:Lq1/f;

    iput-object p2, p0, Lu1/z;->b:La2/r;

    iput-object p3, p0, Lu1/z;->c:Lz1/g;

    iput-object p4, p0, Lu1/z;->e:Lu1/y;

    return-void
.end method


# virtual methods
.method public final a(Lu1/w;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lu1/z;->b:La2/r;

    .line 2
    .line 3
    invoke-interface {v0}, La2/r;->s()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    iget v1, p1, Lu1/w;->e:I

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iget v4, p0, Lu1/z;->f:I

    .line 17
    .line 18
    if-ne v1, v4, :cond_1

    .line 19
    .line 20
    move v4, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move v4, v3

    .line 23
    :goto_0
    iget-object v5, p0, Lu1/z;->d:Lz1/g;

    .line 24
    .line 25
    if-eqz v5, :cond_4

    .line 26
    .line 27
    iget-object v6, p0, Lu1/z;->a:Lq1/f;

    .line 28
    .line 29
    iget-object v6, v6, Lq1/f;->F:Lu1/i;

    .line 30
    .line 31
    iget-object v6, v6, Lu1/i;->z:Lu1/h;

    .line 32
    .line 33
    if-eqz v6, :cond_2

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    move v3, v2

    .line 37
    :goto_1
    if-nez v3, :cond_3

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    goto :goto_2

    .line 41
    :cond_3
    iget-object v3, v6, Lu1/h;->a:Lz1/f;

    .line 42
    .line 43
    :goto_2
    if-ne v3, v5, :cond_4

    .line 44
    .line 45
    move v4, v2

    .line 46
    :cond_4
    iget v3, p1, Lu1/w;->a:I

    .line 47
    .line 48
    const/16 v5, 0x8

    .line 49
    .line 50
    if-ne v3, v5, :cond_5

    .line 51
    .line 52
    move v4, v2

    .line 53
    :cond_5
    iget-object v5, p1, Lu1/w;->b:Lz1/b;

    .line 54
    .line 55
    iget-object v6, p0, Lu1/z;->c:Lz1/g;

    .line 56
    .line 57
    if-eqz v4, :cond_6

    .line 58
    .line 59
    invoke-interface {v6, v5}, Lz1/g;->g(Lz1/b;)Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-nez v4, :cond_6

    .line 64
    .line 65
    return v2

    .line 66
    :cond_6
    const/4 v2, 0x4

    .line 67
    if-eq v3, v2, :cond_7

    .line 68
    .line 69
    const/4 v2, 0x6

    .line 70
    if-ne v3, v2, :cond_8

    .line 71
    .line 72
    :cond_7
    invoke-interface {v0}, La2/r;->q()V

    .line 73
    .line 74
    .line 75
    :cond_8
    iget-object v0, p0, Lu1/z;->g:Lz1/a;

    .line 76
    .line 77
    invoke-interface {v6, v5, v0}, Lz1/g;->d(Lz1/b;Lz1/b;)V

    .line 78
    .line 79
    .line 80
    iget v2, v0, Lz1/a;->a:F

    .line 81
    .line 82
    invoke-interface {v6}, Lz1/g;->i()I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    int-to-float v3, v3

    .line 87
    iget v4, v0, Lz1/a;->b:F

    .line 88
    .line 89
    sub-float/2addr v3, v4

    .line 90
    iput v2, v0, Lz1/a;->a:F

    .line 91
    .line 92
    iput v3, v0, Lz1/a;->b:F

    .line 93
    .line 94
    iget-object v0, p0, Lu1/z;->h:Lu1/w;

    .line 95
    .line 96
    invoke-virtual {v0, p1}, Lu1/w;->b(Lu1/w;)V

    .line 97
    .line 98
    .line 99
    iget v2, p1, Lu1/w;->c:F

    .line 100
    .line 101
    iget p1, p1, Lu1/w;->d:F

    .line 102
    .line 103
    neg-float p1, p1

    .line 104
    iput v2, v0, Lu1/w;->c:F

    .line 105
    .line 106
    iput p1, v0, Lu1/w;->d:F

    .line 107
    .line 108
    iget-object p1, p0, Lu1/z;->e:Lu1/y;

    .line 109
    .line 110
    invoke-interface {p1, v0}, Lu1/y;->e(Lu1/w;)Z

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-eqz p1, :cond_9

    .line 115
    .line 116
    if-eqz v1, :cond_9

    .line 117
    .line 118
    iput v1, p0, Lu1/z;->f:I

    .line 119
    .line 120
    :cond_9
    return p1
.end method
