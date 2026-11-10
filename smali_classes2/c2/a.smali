.class public final synthetic Lc2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Lc2/e;


# direct methods
.method public synthetic constructor <init>(Lc2/e;I)V
    .locals 0

    .line 1
    iput p2, p0, Lc2/a;->f:I

    .line 2
    .line 3
    iput-object p1, p0, Lc2/a;->g:Lc2/e;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lc2/a;->f:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    iget-object v3, p0, Lc2/a;->g:Lc2/e;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :pswitch_0
    iget-object v0, v3, Lc2/e;->s:Lq1/f;

    .line 12
    .line 13
    iget-object v0, v0, Lq1/f;->c:Landroid/view/ViewGroup;

    .line 14
    .line 15
    const/16 v1, 0x8

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_1
    iput v1, v3, Lc2/e;->G:F

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput-boolean v0, v3, Lc2/e;->I:Z

    .line 25
    .line 26
    iget-object v0, v3, Lc2/e;->M:Lc2/a;

    .line 27
    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    new-instance v0, Lc2/a;

    .line 31
    .line 32
    const/4 v1, 0x4

    .line 33
    invoke-direct {v0, v3, v1}, Lc2/a;-><init>(Lc2/e;I)V

    .line 34
    .line 35
    .line 36
    iput-object v0, v3, Lc2/e;->M:Lc2/a;

    .line 37
    .line 38
    :cond_0
    sget-object v0, Lq1/f;->L:Lo1/j0;

    .line 39
    .line 40
    iget-object v1, v3, Lc2/e;->M:Lc2/a;

    .line 41
    .line 42
    const-string v2, "scrollingKickStart"

    .line 43
    .line 44
    const-wide/16 v3, 0x1f4

    .line 45
    .line 46
    invoke-virtual {v0, v1, v2, v3, v4}, Lo1/j0;->b(Ljava/lang/Runnable;Ljava/lang/String;J)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :pswitch_2
    iget v0, v3, Lc2/e;->H:F

    .line 51
    .line 52
    const/high16 v2, 0x3f800000    # 1.0f

    .line 53
    .line 54
    cmpg-float v4, v0, v2

    .line 55
    .line 56
    if-gez v4, :cond_1

    .line 57
    .line 58
    div-float/2addr v2, v0

    .line 59
    iget v0, v3, Lc2/e;->F:F

    .line 60
    .line 61
    cmpl-float v0, v2, v0

    .line 62
    .line 63
    if-lez v0, :cond_1

    .line 64
    .line 65
    iput v2, v3, Lc2/e;->F:F

    .line 66
    .line 67
    const-string v0, "LinuxApplicationWindow verticalScrollFactor"

    .line 68
    .line 69
    invoke-static {v0, v2}, Lo1/y;->f(Ljava/lang/String;F)V

    .line 70
    .line 71
    .line 72
    :cond_1
    iput v1, v3, Lc2/e;->H:F

    .line 73
    .line 74
    return-void

    .line 75
    :pswitch_3
    iget-object v0, v3, Lc2/e;->r:Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;

    .line 76
    .line 77
    iget-object v1, v0, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->d:La2/p;

    .line 78
    .line 79
    iget-boolean v1, v1, La2/p;->n0:Z

    .line 80
    .line 81
    xor-int/2addr v1, v2

    .line 82
    invoke-virtual {v0, v1}, Lcom/nomone/vr_desktop/Applications/FramedWindowApplication;->g(Z)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, v2}, Lc2/e;->B(Z)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :goto_0
    iput-boolean v2, v3, Lc2/e;->J:Z

    .line 90
    .line 91
    return-void

    .line 92
    nop

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
