.class public final Lq1/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public f:Z

.field public g:F

.field public h:F

.field public final synthetic i:Lq1/x;


# direct methods
.method public constructor <init>(Lq1/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq1/w;->i:Lq1/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lq1/w;->g:F

    .line 3
    .line 4
    iget-object v1, p0, Lq1/w;->i:Lq1/x;

    .line 5
    .line 6
    iget-object v1, v1, Lq1/x;->g:La2/x;

    .line 7
    .line 8
    iget v2, v1, La2/x;->r:F

    .line 9
    .line 10
    sub-float/2addr v0, v2

    .line 11
    iget v2, p0, Lq1/w;->h:F

    .line 12
    .line 13
    iget v1, v1, La2/x;->s:F

    .line 14
    .line 15
    sub-float/2addr v2, v1

    .line 16
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const v3, 0x3aa06ea0    # 0.001224f

    .line 29
    .line 30
    .line 31
    cmpg-float v1, v1, v3

    .line 32
    .line 33
    if-gez v1, :cond_0

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lq1/w;->f:Z

    .line 37
    .line 38
    iget-object v0, p0, Lq1/w;->i:Lq1/x;

    .line 39
    .line 40
    iget-object v0, v0, Lq1/x;->g:La2/x;

    .line 41
    .line 42
    iget v1, p0, Lq1/w;->g:F

    .line 43
    .line 44
    iget v2, p0, Lq1/w;->h:F

    .line 45
    .line 46
    iput v1, v0, La2/x;->r:F

    .line 47
    .line 48
    iput v2, v0, La2/x;->s:F

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const/4 v1, 0x1

    .line 52
    iput-boolean v1, p0, Lq1/w;->f:Z

    .line 53
    .line 54
    iget-object v1, p0, Lq1/w;->i:Lq1/x;

    .line 55
    .line 56
    iget-object v1, v1, Lq1/x;->g:La2/x;

    .line 57
    .line 58
    iget v3, v1, La2/x;->r:F

    .line 59
    .line 60
    const v4, 0x3df5c28f    # 0.12f

    .line 61
    .line 62
    .line 63
    mul-float/2addr v0, v4

    .line 64
    add-float/2addr v0, v3

    .line 65
    iget v3, v1, La2/x;->s:F

    .line 66
    .line 67
    mul-float/2addr v2, v4

    .line 68
    add-float/2addr v2, v3

    .line 69
    iput v0, v1, La2/x;->r:F

    .line 70
    .line 71
    iput v2, v1, La2/x;->s:F

    .line 72
    .line 73
    sget-object v0, Lq1/f;->L:Lo1/j0;

    .line 74
    .line 75
    invoke-virtual {v0, p0}, Lo1/j0;->c(Ljava/lang/Runnable;)V

    .line 76
    .line 77
    .line 78
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    iget-object v0, p0, Lq1/w;->i:Lq1/x;

    .line 80
    .line 81
    iget-object v0, v0, Lq1/x;->d:Lq1/f;

    .line 82
    .line 83
    invoke-virtual {v0}, Lq1/f;->d()V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :catchall_0
    move-exception v0

    .line 88
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    throw v0
.end method
