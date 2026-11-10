.class public final Ls1/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq1/d;


# instance fields
.field public final synthetic a:Lq1/f;

.field public final synthetic b:Ls1/r;


# direct methods
.method public constructor <init>(Ls1/r;Lq1/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ls1/p;->b:Ls1/r;

    iput-object p2, p0, Ls1/p;->a:Lq1/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 7

    .line 1
    iget-object v0, p0, Ls1/p;->b:Ls1/r;

    .line 2
    .line 3
    iget v1, v0, Ls1/r;->e0:I

    .line 4
    .line 5
    iget-object v2, v0, La2/v;->k:Lz1/g;

    .line 6
    .line 7
    invoke-interface {v2}, Lz1/g;->h()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v4, 0x1

    .line 12
    if-ne v1, v3, :cond_0

    .line 13
    .line 14
    iget v1, v0, Ls1/r;->f0:I

    .line 15
    .line 16
    invoke-interface {v2}, Lz1/g;->i()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eq v1, v3, :cond_3

    .line 21
    .line 22
    :cond_0
    invoke-interface {v2}, Lz1/g;->h()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    iput v1, v0, Ls1/r;->e0:I

    .line 27
    .line 28
    invoke-interface {v2}, Lz1/g;->i()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    iput v1, v0, Ls1/r;->f0:I

    .line 33
    .line 34
    sget-object v1, Lq1/f;->L:Lo1/j0;

    .line 35
    .line 36
    iget-object v2, v0, Ls1/r;->i0:Lo0/n;

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Lo1/j0;->d(Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    sget-object v1, Lq1/f;->L:Lo1/j0;

    .line 42
    .line 43
    iget-boolean v3, v0, Ls1/r;->h0:Z

    .line 44
    .line 45
    if-eqz v3, :cond_1

    .line 46
    .line 47
    const-wide/16 v5, 0x0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const-wide/16 v5, 0x258

    .line 51
    .line 52
    :goto_0
    const-string v3, "setDimensionsChangedTask"

    .line 53
    .line 54
    invoke-virtual {v1, v2, v3, v5, v6}, Lo1/j0;->b(Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 55
    .line 56
    .line 57
    const/4 v1, 0x0

    .line 58
    iput-boolean v1, v0, Ls1/r;->h0:Z

    .line 59
    .line 60
    iget v1, v0, Ls1/r;->l0:I

    .line 61
    .line 62
    if-nez v1, :cond_2

    .line 63
    .line 64
    iput v4, v0, Ls1/r;->l0:I

    .line 65
    .line 66
    :cond_2
    iget v1, v0, Ls1/r;->W:I

    .line 67
    .line 68
    if-gtz v1, :cond_3

    .line 69
    .line 70
    iput v4, v0, Ls1/r;->W:I

    .line 71
    .line 72
    :cond_3
    iget v1, v0, Ls1/r;->W:I

    .line 73
    .line 74
    sub-int/2addr v1, v4

    .line 75
    iput v1, v0, Ls1/r;->W:I

    .line 76
    .line 77
    iget-boolean v1, v0, Lc2/e;->u:Z

    .line 78
    .line 79
    if-nez v1, :cond_4

    .line 80
    .line 81
    iget-boolean v1, v0, Ls1/r;->j0:Z

    .line 82
    .line 83
    if-eqz v1, :cond_5

    .line 84
    .line 85
    invoke-static {}, Lcom/nomone/vr_desktop/X11/NomX;->shouldRedraw()Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_5

    .line 90
    .line 91
    :cond_4
    iget v1, v0, Ls1/r;->W:I

    .line 92
    .line 93
    if-gtz v1, :cond_5

    .line 94
    .line 95
    iput v4, v0, Ls1/r;->W:I

    .line 96
    .line 97
    :cond_5
    iget v1, v0, Ls1/r;->W:I

    .line 98
    .line 99
    if-lez v1, :cond_6

    .line 100
    .line 101
    iget-object v1, p0, Ls1/p;->a:Lq1/f;

    .line 102
    .line 103
    invoke-virtual {v1}, Lq1/f;->d()V

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_6
    iput-boolean v4, v0, Ls1/r;->b0:Z

    .line 108
    .line 109
    :goto_1
    iget v0, v0, Ls1/r;->W:I

    .line 110
    .line 111
    if-gez v0, :cond_7

    .line 112
    .line 113
    rem-int/lit8 v0, v0, 0xa

    .line 114
    .line 115
    if-nez v0, :cond_7

    .line 116
    .line 117
    invoke-static {}, Lcom/nomone/vr_desktop/X11/NomX;->notifyX11Thread()V

    .line 118
    .line 119
    .line 120
    :cond_7
    return-void
.end method
