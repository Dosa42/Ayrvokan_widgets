.class public final Lq1/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu1/n;


# instance fields
.field public a:Z

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La2/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, La2/c;-><init>(Lq1/s;I)V

    iput-object v0, p0, Lq1/s;->c:Ljava/lang/Object;

    new-instance v0, La2/c;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, La2/c;-><init>(Lq1/s;I)V

    iput-object v0, p0, Lq1/s;->d:Ljava/lang/Object;

    iput-object p1, p0, Lq1/s;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lq1/x;Lu1/o;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lq1/s;->d:Ljava/lang/Object;

    iput-object p2, p0, Lq1/s;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lq1/s;->a:Z

    new-instance p1, Lz1/e;

    invoke-direct {p1}, Lz1/e;-><init>()V

    iput-object p1, p0, Lq1/s;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Lz1/e;
    .locals 10

    .line 1
    invoke-static {}, Lz1/f;->o()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lz1/f;->p(F)F

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-boolean v2, p0, Lq1/s;->a:Z

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    const v4, 0x3ec28f5c    # 0.38f

    .line 13
    .line 14
    .line 15
    iget-object v5, p0, Lq1/s;->b:Ljava/lang/Object;

    .line 16
    .line 17
    iget-object v6, p0, Lq1/s;->d:Ljava/lang/Object;

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    move-object v2, v5

    .line 22
    check-cast v2, Lz1/e;

    .line 23
    .line 24
    move-object v7, v6

    .line 25
    check-cast v7, Lq1/x;

    .line 26
    .line 27
    iget-object v7, v7, Lq1/x;->f:La2/x;

    .line 28
    .line 29
    iget v8, v7, La2/x;->r:F

    .line 30
    .line 31
    neg-float v8, v8

    .line 32
    iget v7, v7, La2/x;->s:F

    .line 33
    .line 34
    mul-float v9, v1, v4

    .line 35
    .line 36
    add-float/2addr v9, v7

    .line 37
    neg-float v7, v9

    .line 38
    iput v8, v2, Lz1/e;->a:F

    .line 39
    .line 40
    iput v7, v2, Lz1/e;->b:F

    .line 41
    .line 42
    iput-boolean v3, p0, Lq1/s;->a:Z

    .line 43
    .line 44
    :cond_0
    iget-object v2, p0, Lq1/s;->c:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v2, Lu1/o;

    .line 47
    .line 48
    iget-object v2, v2, Lu1/o;->b:Lcom/nomone/vr_desktop/Applications/KeyboardApplication;

    .line 49
    .line 50
    iget-object v2, v2, Lcom/nomone/vr_desktop/Applications/SelfThemedApplication;->b:Lz1/f;

    .line 51
    .line 52
    iget v7, v2, Lz1/f;->e:F

    .line 53
    .line 54
    check-cast v6, Lq1/x;

    .line 55
    .line 56
    iget-object v8, v6, Lq1/x;->f:La2/x;

    .line 57
    .line 58
    iget v8, v8, La2/x;->r:F

    .line 59
    .line 60
    add-float/2addr v7, v8

    .line 61
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    cmpl-float v0, v7, v0

    .line 66
    .line 67
    if-gtz v0, :cond_2

    .line 68
    .line 69
    iget v0, v2, Lz1/f;->f:F

    .line 70
    .line 71
    iget-object v7, v6, Lq1/x;->f:La2/x;

    .line 72
    .line 73
    iget v7, v7, La2/x;->s:F

    .line 74
    .line 75
    add-float/2addr v0, v7

    .line 76
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    cmpl-float v0, v0, v1

    .line 81
    .line 82
    if-lez v0, :cond_1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    move-object v0, v5

    .line 86
    check-cast v0, Lz1/e;

    .line 87
    .line 88
    iget v1, v2, Lz1/f;->e:F

    .line 89
    .line 90
    iget v2, v2, Lz1/f;->f:F

    .line 91
    .line 92
    iput v1, v0, Lz1/e;->a:F

    .line 93
    .line 94
    iput v2, v0, Lz1/e;->b:F

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_2
    :goto_0
    move-object v0, v5

    .line 98
    check-cast v0, Lz1/e;

    .line 99
    .line 100
    iget-object v2, v6, Lq1/x;->k:Lu1/i;

    .line 101
    .line 102
    iget-object v2, v2, Lu1/i;->u:La2/l;

    .line 103
    .line 104
    move-object v7, v2

    .line 105
    check-cast v7, La2/k;

    .line 106
    .line 107
    iget-object v7, v7, La2/k;->i:Lz1/f;

    .line 108
    .line 109
    iget v7, v7, Lz1/f;->e:F

    .line 110
    .line 111
    iget-object v6, v6, Lq1/x;->f:La2/x;

    .line 112
    .line 113
    iget v8, v6, La2/x;->r:F

    .line 114
    .line 115
    sub-float/2addr v7, v8

    .line 116
    check-cast v2, La2/k;

    .line 117
    .line 118
    iget-object v2, v2, La2/k;->i:Lz1/f;

    .line 119
    .line 120
    iget v2, v2, Lz1/f;->f:F

    .line 121
    .line 122
    neg-float v1, v1

    .line 123
    mul-float/2addr v1, v4

    .line 124
    add-float/2addr v1, v2

    .line 125
    iget v2, v6, La2/x;->s:F

    .line 126
    .line 127
    sub-float/2addr v1, v2

    .line 128
    iput v7, v0, Lz1/e;->a:F

    .line 129
    .line 130
    iput v1, v0, Lz1/e;->b:F

    .line 131
    .line 132
    iput-boolean v3, p0, Lq1/s;->a:Z

    .line 133
    .line 134
    :goto_1
    check-cast v5, Lz1/e;

    .line 135
    .line 136
    return-object v5
.end method

.method public final b()V
    .locals 5

    .line 1
    sget-object v0, Lq1/f;->L:Lo1/j0;

    iget-object v1, p0, Lq1/s;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/j0;->d(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lq1/s;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lq1/s;->a:Z

    sget-object v0, Lq1/f;->L:Lo1/j0;

    iget-object v1, p0, Lq1/s;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    const-string v2, "toggleFullScreenTask"

    const-wide/16 v3, 0x5dc

    invoke-virtual {v0, v1, v2, v3, v4}, Lo1/j0;->b(Ljava/lang/Runnable;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method
