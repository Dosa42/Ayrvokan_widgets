.class public final Landroidx/slidingpanelayout/widget/a;
.super Lc1/b;
.source "SourceFile"


# instance fields
.field public final synthetic C:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;


# direct methods
.method public constructor <init>(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)V
    .locals 0

    iput-object p1, p0, Landroidx/slidingpanelayout/widget/a;->C:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-direct {p0}, Lc1/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Landroid/view/View;I)I
    .locals 3

    .line 1
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/a;->C:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    iget-object v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    invoke-virtual {p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v0

    iget-object v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, v2

    sub-int/2addr v1, v0

    iget p1, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->j:I

    sub-int p1, v1, p1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v0

    iget p1, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->j:I

    add-int/2addr p1, v1

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    return p1
.end method

.method public final e(Landroid/view/View;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    return p1
.end method

.method public final i(Landroid/view/View;)I
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/a;->C:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    iget p1, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->j:I

    return p1
.end method

.method public final p(II)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/a;->C:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    iget-object v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->o:Lt/b;

    iget-object p1, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:Landroid/view/View;

    invoke-virtual {v0, p2, p1}, Lt/b;->c(ILandroid/view/View;)V

    return-void
.end method

.method public final s(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/a;->C:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    if-ge v2, v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    const/4 v5, 0x4

    .line 20
    if-ne v4, v5, :cond_0

    .line 21
    .line 22
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    return-void
.end method

.method public final t(I)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/a;->C:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->o:Lt/b;

    .line 4
    .line 5
    iget v0, v0, Lt/b;->a:I

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->h:F

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    cmpl-float v0, v0, v1

    .line 13
    .line 14
    const/16 v1, 0x20

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:Landroid/view/View;

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f(Landroid/view/View;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    :goto_0
    iput-boolean v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->p:Z

    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public final u(Landroid/view/View;I)V
    .locals 4

    .line 1
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/a;->C:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:Landroid/view/View;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    iput p2, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->h:F

    .line 9
    .line 10
    goto :goto_2

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->c()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:Landroid/view/View;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    .line 22
    .line 23
    iget-object v2, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:Landroid/view/View;

    .line 24
    .line 25
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    sub-int/2addr v3, p2

    .line 36
    sub-int p2, v3, v2

    .line 37
    .line 38
    :cond_1
    if-eqz v0, :cond_2

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    :goto_0
    if-eqz v0, :cond_3

    .line 50
    .line 51
    iget v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_3
    iget v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 55
    .line 56
    :goto_1
    add-int/2addr v2, v0

    .line 57
    sub-int/2addr p2, v2

    .line 58
    int-to-float p2, p2

    .line 59
    iget v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->j:I

    .line 60
    .line 61
    int-to-float v0, v0

    .line 62
    div-float/2addr p2, v0

    .line 63
    iput p2, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->h:F

    .line 64
    .line 65
    iget v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->l:I

    .line 66
    .line 67
    if-eqz v0, :cond_4

    .line 68
    .line 69
    invoke-virtual {p1, p2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->d(F)V

    .line 70
    .line 71
    .line 72
    :cond_4
    iget-boolean p2, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->c:Z

    .line 73
    .line 74
    if-eqz p2, :cond_5

    .line 75
    .line 76
    iget-object p2, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:Landroid/view/View;

    .line 77
    .line 78
    iget v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->h:F

    .line 79
    .line 80
    iget v1, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->a:I

    .line 81
    .line 82
    invoke-virtual {p1, p2, v0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->a(Landroid/view/View;FI)V

    .line 83
    .line 84
    .line 85
    :cond_5
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public final v(Landroid/view/View;F)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    iget-object v1, p0, Landroidx/slidingpanelayout/widget/a;->C:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->c()Z

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v0

    cmpg-float v0, p2, v4

    if-ltz v0, :cond_0

    cmpl-float p2, p2, v4

    if-nez p2, :cond_1

    iget p2, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->h:F

    cmpl-float p2, p2, v3

    if-lez p2, :cond_1

    :cond_0
    iget p2, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->j:I

    add-int/2addr v2, p2

    :cond_1
    iget-object p2, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v0, v2

    sub-int/2addr v0, p2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v0, v2

    cmpl-float p2, p2, v4

    if-gtz p2, :cond_3

    if-nez p2, :cond_4

    iget p2, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->h:F

    cmpl-float p2, p2, v3

    if-lez p2, :cond_4

    :cond_3
    iget p2, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->j:I

    add-int/2addr v0, p2

    :cond_4
    :goto_0
    iget-object p2, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->o:Lt/b;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p2, v0, p1}, Lt/b;->s(II)V

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final y(Landroid/view/View;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/a;->C:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    iget-boolean v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->k:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    iget-boolean p1, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->b:Z

    return p1
.end method
