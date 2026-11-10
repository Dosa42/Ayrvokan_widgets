.class public final Ls1/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public f:J

.field public final synthetic g:Lq1/f;

.field public final synthetic h:Lcom/nomone/vr_desktop/Applications/Linux/XvfbWindow;


# direct methods
.method public constructor <init>(Lcom/nomone/vr_desktop/Applications/Linux/XvfbWindow;Lq1/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ls1/t;->h:Lcom/nomone/vr_desktop/Applications/Linux/XvfbWindow;

    iput-object p2, p0, Ls1/t;->g:Lq1/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Ls1/t;->f:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Ls1/t;->f:J

    .line 6
    .line 7
    sub-long v2, v0, v2

    .line 8
    .line 9
    long-to-float v2, v2

    .line 10
    const v3, 0x49742400    # 1000000.0f

    .line 11
    .line 12
    .line 13
    div-float/2addr v2, v3

    .line 14
    const/4 v3, 0x0

    .line 15
    cmpl-float v3, v2, v3

    .line 16
    .line 17
    if-lez v3, :cond_0

    .line 18
    .line 19
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 20
    .line 21
    div-float/2addr v3, v2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/high16 v3, 0x42700000    # 60.0f

    .line 24
    .line 25
    :goto_0
    iget-object v2, p0, Ls1/t;->h:Lcom/nomone/vr_desktop/Applications/Linux/XvfbWindow;

    .line 26
    .line 27
    iput v3, v2, Lcom/nomone/vr_desktop/Applications/Linux/XvfbWindow;->Z:F

    .line 28
    .line 29
    iput-wide v0, p0, Ls1/t;->f:J

    .line 30
    .line 31
    iget v0, v2, Lcom/nomone/vr_desktop/Applications/Linux/XvfbWindow;->Y:I

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    if-lez v0, :cond_1

    .line 35
    .line 36
    sub-int/2addr v0, v1

    .line 37
    iput v0, v2, Lcom/nomone/vr_desktop/Applications/Linux/XvfbWindow;->Y:I

    .line 38
    .line 39
    iget-boolean v0, v2, Lc2/e;->u:Z

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    iput-boolean v1, v2, Lcom/nomone/vr_desktop/Applications/Linux/XvfbWindow;->W:Z

    .line 45
    .line 46
    iget v0, v2, Lcom/nomone/vr_desktop/Applications/Linux/XvfbWindow;->X:I

    .line 47
    .line 48
    iput v0, v2, Lcom/nomone/vr_desktop/Applications/Linux/XvfbWindow;->Y:I

    .line 49
    .line 50
    :goto_1
    iget-object v0, p0, Ls1/t;->g:Lq1/f;

    .line 51
    .line 52
    invoke-virtual {v0}, Lq1/f;->d()V

    .line 53
    .line 54
    .line 55
    :cond_2
    iget-boolean v0, v2, Lcom/nomone/vr_desktop/Applications/Linux/XvfbWindow;->V:Z

    .line 56
    .line 57
    if-nez v0, :cond_3

    .line 58
    .line 59
    sget-object v0, Lq1/f;->L:Lo1/j0;

    .line 60
    .line 61
    invoke-virtual {v0, p0}, Lo1/j0;->c(Ljava/lang/Runnable;)V

    .line 62
    .line 63
    .line 64
    :cond_3
    return-void
.end method
