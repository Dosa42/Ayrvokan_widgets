.class public final Lu1/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f:Lu1/v;


# direct methods
.method public constructor <init>(Lu1/v;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu1/t;->f:Lu1/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lu1/t;->f:Lu1/v;

    .line 2
    .line 3
    iget-boolean v1, v0, Lu1/v;->i:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget v1, v0, Lu1/v;->g:I

    .line 8
    .line 9
    iput v1, v0, Lu1/v;->f:I

    .line 10
    .line 11
    :cond_0
    iget-object v1, v0, Lu1/v;->e:Lu1/w;

    .line 12
    .line 13
    iget v2, v1, Lu1/w;->c:F

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    cmpl-float v2, v2, v3

    .line 17
    .line 18
    iget-object v4, v0, Lu1/v;->c:Lz1/a;

    .line 19
    .line 20
    iget-object v5, v0, Lu1/v;->d:Lz1/a;

    .line 21
    .line 22
    if-nez v2, :cond_2

    .line 23
    .line 24
    iget v2, v1, Lu1/w;->d:F

    .line 25
    .line 26
    cmpl-float v2, v2, v3

    .line 27
    .line 28
    if-nez v2, :cond_2

    .line 29
    .line 30
    iget v2, v5, Lz1/a;->a:F

    .line 31
    .line 32
    iget v3, v4, Lz1/a;->a:F

    .line 33
    .line 34
    cmpl-float v2, v2, v3

    .line 35
    .line 36
    if-nez v2, :cond_1

    .line 37
    .line 38
    iget v2, v5, Lz1/a;->b:F

    .line 39
    .line 40
    iget v3, v4, Lz1/a;->b:F

    .line 41
    .line 42
    cmpl-float v2, v2, v3

    .line 43
    .line 44
    if-nez v2, :cond_1

    .line 45
    .line 46
    const/4 v2, 0x1

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/4 v2, 0x0

    .line 49
    :goto_0
    if-nez v2, :cond_4

    .line 50
    .line 51
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    iget v2, v4, Lz1/a;->a:F

    .line 55
    .line 56
    iget v3, v4, Lz1/a;->b:F

    .line 57
    .line 58
    iput v2, v5, Lz1/a;->a:F

    .line 59
    .line 60
    iput v3, v5, Lz1/a;->b:F

    .line 61
    .line 62
    iget-boolean v2, v0, Lu1/v;->i:Z

    .line 63
    .line 64
    const-wide/32 v3, 0xf4240

    .line 65
    .line 66
    .line 67
    if-eqz v2, :cond_3

    .line 68
    .line 69
    iget v2, v0, Lu1/v;->f:I

    .line 70
    .line 71
    const/4 v5, 0x2

    .line 72
    iput v5, v1, Lu1/w;->a:I

    .line 73
    .line 74
    iput v2, v1, Lu1/w;->f:I

    .line 75
    .line 76
    sget-wide v5, Lu1/w;->j:J

    .line 77
    .line 78
    iput-wide v5, v1, Lu1/w;->g:J

    .line 79
    .line 80
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 81
    .line 82
    .line 83
    move-result-wide v5

    .line 84
    div-long/2addr v5, v3

    .line 85
    iput-wide v5, v1, Lu1/w;->h:J

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_3
    iget v2, v0, Lu1/v;->f:I

    .line 89
    .line 90
    const/4 v5, 0x3

    .line 91
    iput v5, v1, Lu1/w;->a:I

    .line 92
    .line 93
    iput v2, v1, Lu1/w;->f:I

    .line 94
    .line 95
    sget-wide v5, Lu1/w;->j:J

    .line 96
    .line 97
    iput-wide v5, v1, Lu1/w;->g:J

    .line 98
    .line 99
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 100
    .line 101
    .line 102
    move-result-wide v5

    .line 103
    div-long/2addr v5, v3

    .line 104
    iput-wide v5, v1, Lu1/w;->h:J

    .line 105
    .line 106
    :goto_1
    iget-object v0, v0, Lu1/v;->b:Lo/a;

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Lo/a;->d(Lu1/w;)V

    .line 109
    .line 110
    .line 111
    :cond_4
    return-void
.end method
