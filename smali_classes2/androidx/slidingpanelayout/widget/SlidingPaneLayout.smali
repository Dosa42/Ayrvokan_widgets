.class public Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Landroid/graphics/drawable/Drawable;

.field public d:Landroid/graphics/drawable/Drawable;

.field public final e:I

.field public f:Z

.field public g:Landroid/view/View;

.field public h:F

.field public i:F

.field public j:I

.field public k:Z

.field public l:I

.field public m:F

.field public n:F

.field public final o:Lt/b;

.field public p:Z

.field public q:Z

.field public final r:Landroid/graphics/Rect;

.field public final s:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p2, -0x33333334

    iput p2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->a:I

    const/4 p2, 0x1

    iput-boolean p2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->q:Z

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->r:Landroid/graphics/Rect;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->s:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p3, 0x42000000    # 32.0f

    mul-float/2addr p3, p1

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p3, v0

    float-to-int p3, p3

    iput p3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->e:I

    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Landroid/view/View;->setWillNotDraw(Z)V

    new-instance p3, Lu/a;

    invoke-direct {p3, p0}, Lu/a;-><init>(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)V

    invoke-static {p0, p3}, Lp/k;->a(Landroid/view/View;Lp/b;)V

    .line 3
    invoke-virtual {p0, p2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 4
    new-instance p2, Landroidx/slidingpanelayout/widget/a;

    invoke-direct {p2, p0}, Landroidx/slidingpanelayout/widget/a;-><init>(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)V

    invoke-static {p0, v0, p2}, Lt/b;->i(Landroid/view/ViewGroup;FLc1/b;)Lt/b;

    move-result-object p2

    iput-object p2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->o:Lt/b;

    const/high16 p3, 0x43c80000    # 400.0f

    mul-float/2addr p1, p3

    .line 5
    iput p1, p2, Lt/b;->n:F

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;FI)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    cmpl-float v1, p2, v1

    .line 9
    .line 10
    if-lez v1, :cond_2

    .line 11
    .line 12
    if-eqz p3, :cond_2

    .line 13
    .line 14
    const/high16 v1, -0x1000000

    .line 15
    .line 16
    and-int/2addr v1, p3

    .line 17
    ushr-int/lit8 v1, v1, 0x18

    .line 18
    .line 19
    int-to-float v1, v1

    .line 20
    mul-float/2addr v1, p2

    .line 21
    float-to-int p2, v1

    .line 22
    shl-int/lit8 p2, p2, 0x18

    .line 23
    .line 24
    const v1, 0xffffff

    .line 25
    .line 26
    .line 27
    and-int/2addr p3, v1

    .line 28
    or-int/2addr p2, p3

    .line 29
    iget-object p3, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->d:Landroid/graphics/Paint;

    .line 30
    .line 31
    if-nez p3, :cond_0

    .line 32
    .line 33
    new-instance p3, Landroid/graphics/Paint;

    .line 34
    .line 35
    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object p3, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->d:Landroid/graphics/Paint;

    .line 39
    .line 40
    :cond_0
    iget-object p3, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->d:Landroid/graphics/Paint;

    .line 41
    .line 42
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    .line 43
    .line 44
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 45
    .line 46
    invoke-direct {v1, p2, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    const/4 p3, 0x2

    .line 57
    if-eq p2, p3, :cond_1

    .line 58
    .line 59
    iget-object p2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->d:Landroid/graphics/Paint;

    .line 60
    .line 61
    invoke-virtual {p1, p3, p2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 62
    .line 63
    .line 64
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    check-cast p2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    .line 69
    .line 70
    iget-object p2, p2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->d:Landroid/graphics/Paint;

    .line 71
    .line 72
    sget-object p3, Lp/k;->a:Ljava/lang/reflect/Field;

    .line 73
    .line 74
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayerPaint(Landroid/graphics/Paint;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    .line 79
    .line 80
    .line 81
    move-result p2

    .line 82
    if-eqz p2, :cond_4

    .line 83
    .line 84
    iget-object p2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->d:Landroid/graphics/Paint;

    .line 85
    .line 86
    if-eqz p2, :cond_3

    .line 87
    .line 88
    const/4 p3, 0x0

    .line 89
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 90
    .line 91
    .line 92
    :cond_3
    new-instance p2, La0/a;

    .line 93
    .line 94
    invoke-direct {p2, p0, p1}, La0/a;-><init>(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;Landroid/view/View;)V

    .line 95
    .line 96
    .line 97
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->s:Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    sget-object p1, Lp/k;->a:Ljava/lang/reflect/Field;

    .line 103
    .line 104
    invoke-virtual {p0, p2}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 105
    .line 106
    .line 107
    :cond_4
    :goto_0
    return-void
.end method

.method public final b(Landroid/view/View;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    iget-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Z

    if-eqz v1, :cond_1

    iget-boolean p1, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->c:Z

    if-eqz p1, :cond_1

    iget p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->h:F

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final c()Z
    .locals 2

    .line 1
    sget-object v0, Lp/k;->a:Ljava/lang/reflect/Field;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    return v1
.end method

.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final computeScroll()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->o:Lt/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lt/b;->h()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    iget-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Z

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lt/b;->a()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    sget-object v0, Lp/k;->a:Ljava/lang/reflect/Field;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method

.method public final d(F)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->c()Z

    move-result v0

    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    iget-boolean v2, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->c:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0

    :cond_0
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_0
    if-gtz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    :goto_2
    if-ge v3, v2, :cond_6

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:Landroid/view/View;

    if-ne v4, v5, :cond_2

    goto :goto_4

    :cond_2
    iget v5, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->i:F

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v5, v6, v5

    iget v7, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->l:I

    int-to-float v8, v7

    mul-float/2addr v5, v8

    float-to-int v5, v5

    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->i:F

    sub-float v8, v6, p1

    int-to-float v7, v7

    mul-float/2addr v8, v7

    float-to-int v7, v8

    sub-int/2addr v5, v7

    if-eqz v0, :cond_3

    neg-int v5, v5

    :cond_3
    invoke-virtual {v4, v5}, Landroid/view/View;->offsetLeftAndRight(I)V

    if-eqz v1, :cond_5

    iget v5, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->i:F

    if-eqz v0, :cond_4

    sub-float/2addr v5, v6

    goto :goto_3

    :cond_4
    sub-float v5, v6, v5

    :goto_3
    iget v6, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->b:I

    invoke-virtual {p0, v4, v5, v6}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->a(Landroid/view/View;FI)V

    :cond_5
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->d:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->c:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->c()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v4, v1

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v4, v1, v4

    move v6, v4

    move v4, v1

    move v1, v6

    :goto_2
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    :goto_3
    return-void
.end method

.method public final drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 4

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    iget-boolean v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Z

    if-eqz v2, :cond_1

    iget-boolean v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->r:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_0
    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return p2
.end method

.method public final e(F)Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->c()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 26
    .line 27
    add-int/2addr v0, v2

    .line 28
    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:Landroid/view/View;

    .line 29
    .line 30
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    int-to-float v3, v3

    .line 39
    int-to-float v0, v0

    .line 40
    iget v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->j:I

    .line 41
    .line 42
    int-to-float v4, v4

    .line 43
    mul-float/2addr p1, v4

    .line 44
    add-float/2addr p1, v0

    .line 45
    int-to-float v0, v2

    .line 46
    add-float/2addr p1, v0

    .line 47
    sub-float/2addr v3, p1

    .line 48
    float-to-int p1, v3

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 55
    .line 56
    add-int/2addr v0, v2

    .line 57
    int-to-float v0, v0

    .line 58
    iget v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->j:I

    .line 59
    .line 60
    int-to-float v2, v2

    .line 61
    mul-float/2addr p1, v2

    .line 62
    add-float/2addr p1, v0

    .line 63
    float-to-int p1, p1

    .line 64
    :goto_0
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:Landroid/view/View;

    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    iget-object v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->o:Lt/b;

    .line 71
    .line 72
    invoke-virtual {v3, v0, p1, v2}, Lt/b;->u(Landroid/view/View;II)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-eqz p1, :cond_4

    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    move v0, v1

    .line 83
    :goto_1
    if-ge v0, p1, :cond_3

    .line 84
    .line 85
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    const/4 v4, 0x4

    .line 94
    if-ne v3, v4, :cond_2

    .line 95
    .line 96
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 97
    .line 98
    .line 99
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_3
    sget-object p1, Lp/k;->a:Ljava/lang/reflect/Field;

    .line 103
    .line 104
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 105
    .line 106
    .line 107
    const/4 p1, 0x1

    .line 108
    return p1

    .line 109
    :cond_4
    return v1
.end method

.method public final f(Landroid/view/View;)V
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    sub-int/2addr v2, v3

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    :goto_0
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    sub-int/2addr v3, v4

    .line 39
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    sub-int/2addr v5, v6

    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isOpaque()Z

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    if-eqz v7, :cond_2

    .line 59
    .line 60
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    .line 69
    .line 70
    .line 71
    move-result v9

    .line 72
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    .line 73
    .line 74
    .line 75
    move-result v10

    .line 76
    goto :goto_2

    .line 77
    :cond_2
    const/4 v7, 0x0

    .line 78
    const/4 v8, 0x0

    .line 79
    const/4 v9, 0x0

    .line 80
    const/4 v10, 0x0

    .line 81
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 82
    .line 83
    .line 84
    move-result v11

    .line 85
    const/4 v12, 0x0

    .line 86
    :goto_3
    move-object/from16 v13, p0

    .line 87
    .line 88
    if-ge v12, v11, :cond_8

    .line 89
    .line 90
    invoke-virtual {v13, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v14

    .line 94
    if-ne v14, v0, :cond_3

    .line 95
    .line 96
    goto :goto_8

    .line 97
    :cond_3
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    .line 98
    .line 99
    .line 100
    move-result v15

    .line 101
    const/16 v6, 0x8

    .line 102
    .line 103
    if-ne v15, v6, :cond_4

    .line 104
    .line 105
    move/from16 v16, v1

    .line 106
    .line 107
    goto :goto_7

    .line 108
    :cond_4
    if-eqz v1, :cond_5

    .line 109
    .line 110
    move v6, v3

    .line 111
    goto :goto_4

    .line 112
    :cond_5
    move v6, v2

    .line 113
    :goto_4
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    .line 114
    .line 115
    .line 116
    move-result v15

    .line 117
    invoke-static {v6, v15}, Ljava/lang/Math;->max(II)I

    .line 118
    .line 119
    .line 120
    move-result v6

    .line 121
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    .line 122
    .line 123
    .line 124
    move-result v15

    .line 125
    invoke-static {v4, v15}, Ljava/lang/Math;->max(II)I

    .line 126
    .line 127
    .line 128
    move-result v15

    .line 129
    move/from16 v16, v1

    .line 130
    .line 131
    if-eqz v1, :cond_6

    .line 132
    .line 133
    move v0, v2

    .line 134
    goto :goto_5

    .line 135
    :cond_6
    move v0, v3

    .line 136
    :goto_5
    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    if-lt v6, v7, :cond_7

    .line 153
    .line 154
    if-lt v15, v9, :cond_7

    .line 155
    .line 156
    if-gt v0, v8, :cond_7

    .line 157
    .line 158
    if-gt v1, v10, :cond_7

    .line 159
    .line 160
    const/4 v0, 0x4

    .line 161
    goto :goto_6

    .line 162
    :cond_7
    const/4 v0, 0x0

    .line 163
    :goto_6
    invoke-virtual {v14, v0}, Landroid/view/View;->setVisibility(I)V

    .line 164
    .line 165
    .line 166
    :goto_7
    add-int/lit8 v12, v12, 0x1

    .line 167
    .line 168
    move-object/from16 v0, p1

    .line 169
    .line 170
    move/from16 v1, v16

    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_8
    :goto_8
    return-void
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    invoke-direct {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 2
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-object v0
.end method

.method public getCoveredFadeColor()I
    .locals 1

    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->b:I

    return v0
.end method

.method public getParallaxDistance()I
    .locals 1

    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->l:I

    return v0
.end method

.method public getSliderFadeColor()I
    .locals 1

    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->a:I

    return v0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->q:Z

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 4

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->q:Z

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La0/a;

    invoke-virtual {v3}, La0/a;->run()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Z

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->o:Lt/b;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-le v1, v3, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    float-to-int v4, v4

    .line 31
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    float-to-int v5, v5

    .line 36
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-static {v1, v4, v5}, Lt/b;->l(Landroid/view/View;II)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    xor-int/2addr v1, v3

    .line 44
    iput-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->p:Z

    .line 45
    .line 46
    :cond_0
    iget-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Z

    .line 47
    .line 48
    if-eqz v1, :cond_9

    .line 49
    .line 50
    iget-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->k:Z

    .line 51
    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    goto/16 :goto_4

    .line 57
    .line 58
    :cond_1
    const/4 v1, 0x3

    .line 59
    const/4 v4, 0x0

    .line 60
    if-eq v0, v1, :cond_8

    .line 61
    .line 62
    if-ne v0, v3, :cond_2

    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_2
    if-eqz v0, :cond_4

    .line 66
    .line 67
    const/4 v1, 0x2

    .line 68
    if-eq v0, v1, :cond_3

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    iget v5, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->m:F

    .line 80
    .line 81
    sub-float/2addr v0, v5

    .line 82
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    iget v5, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->n:F

    .line 87
    .line 88
    sub-float/2addr v1, v5

    .line 89
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    iget v5, v2, Lt/b;->b:I

    .line 94
    .line 95
    int-to-float v5, v5

    .line 96
    cmpl-float v5, v0, v5

    .line 97
    .line 98
    if-lez v5, :cond_5

    .line 99
    .line 100
    cmpl-float v0, v1, v0

    .line 101
    .line 102
    if-lez v0, :cond_5

    .line 103
    .line 104
    invoke-virtual {v2}, Lt/b;->b()V

    .line 105
    .line 106
    .line 107
    iput-boolean v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->k:Z

    .line 108
    .line 109
    return v4

    .line 110
    :cond_4
    iput-boolean v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->k:Z

    .line 111
    .line 112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    iput v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->m:F

    .line 121
    .line 122
    iput v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->n:F

    .line 123
    .line 124
    iget-object v5, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:Landroid/view/View;

    .line 125
    .line 126
    float-to-int v0, v0

    .line 127
    float-to-int v1, v1

    .line 128
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    invoke-static {v5, v0, v1}, Lt/b;->l(Landroid/view/View;II)Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-eqz v0, :cond_5

    .line 136
    .line 137
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:Landroid/view/View;

    .line 138
    .line 139
    invoke-virtual {p0, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->b(Landroid/view/View;)Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-eqz v0, :cond_5

    .line 144
    .line 145
    move v0, v3

    .line 146
    goto :goto_1

    .line 147
    :cond_5
    :goto_0
    move v0, v4

    .line 148
    :goto_1
    invoke-virtual {v2, p1}, Lt/b;->t(Landroid/view/MotionEvent;)Z

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    if-nez p1, :cond_7

    .line 153
    .line 154
    if-eqz v0, :cond_6

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_6
    move v3, v4

    .line 158
    :cond_7
    :goto_2
    return v3

    .line 159
    :cond_8
    :goto_3
    invoke-virtual {v2}, Lt/b;->b()V

    .line 160
    .line 161
    .line 162
    return v4

    .line 163
    :cond_9
    :goto_4
    invoke-virtual {v2}, Lt/b;->b()V

    .line 164
    .line 165
    .line 166
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    return p1
.end method

.method public final onLayout(ZIIII)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->c()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object v2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->o:Lt/b;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const/4 v4, 0x2

    .line 13
    iput v4, v2, Lt/b;->p:I

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iput v3, v2, Lt/b;->p:I

    .line 17
    .line 18
    :goto_0
    sub-int v2, p4, p2

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    :goto_1
    if-eqz v1, :cond_2

    .line 32
    .line 33
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    goto :goto_2

    .line 38
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    iget-boolean v8, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->q:Z

    .line 51
    .line 52
    if-eqz v8, :cond_4

    .line 53
    .line 54
    iget-boolean v8, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Z

    .line 55
    .line 56
    if-eqz v8, :cond_3

    .line 57
    .line 58
    iget-boolean v8, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->p:Z

    .line 59
    .line 60
    if-eqz v8, :cond_3

    .line 61
    .line 62
    const/high16 v8, 0x3f800000    # 1.0f

    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_3
    const/4 v8, 0x0

    .line 66
    :goto_3
    iput v8, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->h:F

    .line 67
    .line 68
    :cond_4
    move v11, v4

    .line 69
    const/4 v12, 0x0

    .line 70
    :goto_4
    if-ge v12, v7, :cond_b

    .line 71
    .line 72
    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v13

    .line 76
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    .line 77
    .line 78
    .line 79
    move-result v14

    .line 80
    const/16 v15, 0x8

    .line 81
    .line 82
    if-ne v14, v15, :cond_5

    .line 83
    .line 84
    const/high16 v9, 0x3f800000    # 1.0f

    .line 85
    .line 86
    goto/16 :goto_9

    .line 87
    .line 88
    :cond_5
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 89
    .line 90
    .line 91
    move-result-object v14

    .line 92
    check-cast v14, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    .line 93
    .line 94
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 95
    .line 96
    .line 97
    move-result v15

    .line 98
    iget-boolean v3, v14, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->b:Z

    .line 99
    .line 100
    if-eqz v3, :cond_8

    .line 101
    .line 102
    iget v3, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 103
    .line 104
    iget v8, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 105
    .line 106
    add-int/2addr v3, v8

    .line 107
    sub-int v8, v2, v5

    .line 108
    .line 109
    iget v10, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->e:I

    .line 110
    .line 111
    sub-int v10, v8, v10

    .line 112
    .line 113
    invoke-static {v4, v10}, Ljava/lang/Math;->min(II)I

    .line 114
    .line 115
    .line 116
    move-result v10

    .line 117
    sub-int/2addr v10, v11

    .line 118
    sub-int/2addr v10, v3

    .line 119
    iput v10, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->j:I

    .line 120
    .line 121
    if-eqz v1, :cond_6

    .line 122
    .line 123
    iget v3, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 124
    .line 125
    goto :goto_5

    .line 126
    :cond_6
    iget v3, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 127
    .line 128
    :goto_5
    add-int v16, v11, v3

    .line 129
    .line 130
    add-int v16, v16, v10

    .line 131
    .line 132
    div-int/lit8 v17, v15, 0x2

    .line 133
    .line 134
    add-int v9, v17, v16

    .line 135
    .line 136
    if-le v9, v8, :cond_7

    .line 137
    .line 138
    const/4 v8, 0x1

    .line 139
    goto :goto_6

    .line 140
    :cond_7
    const/4 v8, 0x0

    .line 141
    :goto_6
    iput-boolean v8, v14, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->c:Z

    .line 142
    .line 143
    int-to-float v8, v10

    .line 144
    iget v9, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->h:F

    .line 145
    .line 146
    mul-float/2addr v8, v9

    .line 147
    float-to-int v8, v8

    .line 148
    add-int/2addr v3, v8

    .line 149
    add-int/2addr v3, v11

    .line 150
    int-to-float v8, v8

    .line 151
    int-to-float v9, v10

    .line 152
    div-float/2addr v8, v9

    .line 153
    iput v8, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->h:F

    .line 154
    .line 155
    const/4 v8, 0x0

    .line 156
    const/high16 v9, 0x3f800000    # 1.0f

    .line 157
    .line 158
    goto :goto_7

    .line 159
    :cond_8
    iget-boolean v3, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Z

    .line 160
    .line 161
    if-eqz v3, :cond_9

    .line 162
    .line 163
    iget v3, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->l:I

    .line 164
    .line 165
    if-eqz v3, :cond_9

    .line 166
    .line 167
    iget v8, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->h:F

    .line 168
    .line 169
    const/high16 v9, 0x3f800000    # 1.0f

    .line 170
    .line 171
    sub-float v8, v9, v8

    .line 172
    .line 173
    int-to-float v3, v3

    .line 174
    mul-float/2addr v8, v3

    .line 175
    float-to-int v3, v8

    .line 176
    move v8, v3

    .line 177
    move v3, v4

    .line 178
    goto :goto_7

    .line 179
    :cond_9
    const/high16 v9, 0x3f800000    # 1.0f

    .line 180
    .line 181
    move v3, v4

    .line 182
    const/4 v8, 0x0

    .line 183
    :goto_7
    if-eqz v1, :cond_a

    .line 184
    .line 185
    sub-int v10, v2, v3

    .line 186
    .line 187
    add-int/2addr v10, v8

    .line 188
    sub-int v8, v10, v15

    .line 189
    .line 190
    goto :goto_8

    .line 191
    :cond_a
    sub-int v8, v3, v8

    .line 192
    .line 193
    add-int v10, v8, v15

    .line 194
    .line 195
    :goto_8
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 196
    .line 197
    .line 198
    move-result v11

    .line 199
    add-int/2addr v11, v6

    .line 200
    invoke-virtual {v13, v8, v6, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    .line 204
    .line 205
    .line 206
    move-result v8

    .line 207
    add-int/2addr v8, v4

    .line 208
    move v11, v3

    .line 209
    move v4, v8

    .line 210
    :goto_9
    add-int/lit8 v12, v12, 0x1

    .line 211
    .line 212
    const/4 v3, 0x1

    .line 213
    goto/16 :goto_4

    .line 214
    .line 215
    :cond_b
    iget-boolean v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->q:Z

    .line 216
    .line 217
    if-eqz v1, :cond_f

    .line 218
    .line 219
    iget-boolean v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Z

    .line 220
    .line 221
    if-eqz v1, :cond_d

    .line 222
    .line 223
    iget v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->l:I

    .line 224
    .line 225
    if-eqz v1, :cond_c

    .line 226
    .line 227
    iget v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->h:F

    .line 228
    .line 229
    invoke-virtual {v0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->d(F)V

    .line 230
    .line 231
    .line 232
    :cond_c
    iget-object v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:Landroid/view/View;

    .line 233
    .line 234
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    check-cast v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    .line 239
    .line 240
    iget-boolean v1, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->c:Z

    .line 241
    .line 242
    if-eqz v1, :cond_e

    .line 243
    .line 244
    iget-object v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:Landroid/view/View;

    .line 245
    .line 246
    iget v2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->h:F

    .line 247
    .line 248
    iget v3, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->a:I

    .line 249
    .line 250
    invoke-virtual {v0, v1, v2, v3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->a(Landroid/view/View;FI)V

    .line 251
    .line 252
    .line 253
    goto :goto_b

    .line 254
    :cond_d
    const/4 v1, 0x0

    .line 255
    :goto_a
    if-ge v1, v7, :cond_e

    .line 256
    .line 257
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    iget v3, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->a:I

    .line 262
    .line 263
    const/4 v4, 0x0

    .line 264
    invoke-virtual {v0, v2, v4, v3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->a(Landroid/view/View;FI)V

    .line 265
    .line 266
    .line 267
    add-int/lit8 v1, v1, 0x1

    .line 268
    .line 269
    goto :goto_a

    .line 270
    :cond_e
    :goto_b
    iget-object v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:Landroid/view/View;

    .line 271
    .line 272
    invoke-virtual {v0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f(Landroid/view/View;)V

    .line 273
    .line 274
    .line 275
    :cond_f
    const/4 v1, 0x0

    .line 276
    iput-boolean v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->q:Z

    .line 277
    .line 278
    return-void
.end method

.method public final onMeasure(II)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    const/16 v5, 0x12c

    .line 20
    .line 21
    const/high16 v6, -0x80000000

    .line 22
    .line 23
    const/high16 v7, 0x40000000    # 2.0f

    .line 24
    .line 25
    if-eq v1, v7, :cond_2

    .line 26
    .line 27
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    .line 28
    .line 29
    .line 30
    move-result v8

    .line 31
    if-eqz v8, :cond_1

    .line 32
    .line 33
    if-ne v1, v6, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    if-nez v1, :cond_4

    .line 37
    .line 38
    move v2, v5

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 41
    .line 42
    const-string v2, "Width must have an exact value or MATCH_PARENT"

    .line 43
    .line 44
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v1

    .line 48
    :cond_2
    if-nez v3, :cond_4

    .line 49
    .line 50
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_3

    .line 55
    .line 56
    if-nez v3, :cond_4

    .line 57
    .line 58
    move v4, v5

    .line 59
    move v3, v6

    .line 60
    goto :goto_0

    .line 61
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 62
    .line 63
    const-string v2, "Height must not be UNSPECIFIED"

    .line 64
    .line 65
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw v1

    .line 69
    :cond_4
    :goto_0
    const/4 v1, 0x0

    .line 70
    if-eq v3, v6, :cond_6

    .line 71
    .line 72
    if-eq v3, v7, :cond_5

    .line 73
    .line 74
    move v4, v1

    .line 75
    :goto_1
    move v5, v4

    .line 76
    goto :goto_2

    .line 77
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    sub-int/2addr v4, v5

    .line 82
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    sub-int/2addr v4, v5

    .line 87
    goto :goto_1

    .line 88
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    sub-int/2addr v4, v5

    .line 93
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    sub-int/2addr v4, v5

    .line 98
    move v5, v4

    .line 99
    move v4, v1

    .line 100
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 101
    .line 102
    .line 103
    move-result v8

    .line 104
    sub-int v8, v2, v8

    .line 105
    .line 106
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 107
    .line 108
    .line 109
    move-result v9

    .line 110
    sub-int/2addr v8, v9

    .line 111
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 112
    .line 113
    .line 114
    move-result v9

    .line 115
    const/4 v10, 0x0

    .line 116
    iput-object v10, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:Landroid/view/View;

    .line 117
    .line 118
    move v11, v1

    .line 119
    move v12, v11

    .line 120
    move v14, v8

    .line 121
    const/4 v13, 0x0

    .line 122
    :goto_3
    const/16 v15, 0x8

    .line 123
    .line 124
    const/16 v16, 0x1

    .line 125
    .line 126
    if-ge v11, v9, :cond_10

    .line 127
    .line 128
    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 133
    .line 134
    .line 135
    move-result-object v17

    .line 136
    move-object/from16 v7, v17

    .line 137
    .line 138
    check-cast v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    .line 139
    .line 140
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 141
    .line 142
    .line 143
    move-result v10

    .line 144
    if-ne v10, v15, :cond_7

    .line 145
    .line 146
    iput-boolean v1, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->c:Z

    .line 147
    .line 148
    goto/16 :goto_9

    .line 149
    .line 150
    :cond_7
    iget v10, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->a:F

    .line 151
    .line 152
    const/4 v15, 0x0

    .line 153
    cmpl-float v18, v10, v15

    .line 154
    .line 155
    if-lez v18, :cond_8

    .line 156
    .line 157
    add-float/2addr v13, v10

    .line 158
    iget v10, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 159
    .line 160
    if-nez v10, :cond_8

    .line 161
    .line 162
    goto/16 :goto_9

    .line 163
    .line 164
    :cond_8
    iget v10, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 165
    .line 166
    iget v15, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 167
    .line 168
    add-int/2addr v10, v15

    .line 169
    iget v15, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 170
    .line 171
    const/4 v1, -0x2

    .line 172
    if-ne v15, v1, :cond_9

    .line 173
    .line 174
    sub-int v10, v8, v10

    .line 175
    .line 176
    const/high16 v15, -0x80000000

    .line 177
    .line 178
    invoke-static {v10, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 179
    .line 180
    .line 181
    move-result v10

    .line 182
    move/from16 p2, v13

    .line 183
    .line 184
    move v13, v15

    .line 185
    const/4 v1, -0x1

    .line 186
    :goto_4
    move v15, v10

    .line 187
    goto :goto_5

    .line 188
    :cond_9
    move/from16 p2, v13

    .line 189
    .line 190
    const/4 v1, -0x1

    .line 191
    const/high16 v13, -0x80000000

    .line 192
    .line 193
    if-ne v15, v1, :cond_a

    .line 194
    .line 195
    sub-int v10, v8, v10

    .line 196
    .line 197
    const/high16 v15, 0x40000000    # 2.0f

    .line 198
    .line 199
    invoke-static {v10, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 200
    .line 201
    .line 202
    move-result v10

    .line 203
    goto :goto_4

    .line 204
    :cond_a
    const/high16 v10, 0x40000000    # 2.0f

    .line 205
    .line 206
    invoke-static {v15, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 207
    .line 208
    .line 209
    move-result v15

    .line 210
    :goto_5
    iget v10, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 211
    .line 212
    const/4 v1, -0x2

    .line 213
    if-ne v10, v1, :cond_b

    .line 214
    .line 215
    invoke-static {v5, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    goto :goto_7

    .line 220
    :cond_b
    const/4 v1, -0x1

    .line 221
    if-ne v10, v1, :cond_c

    .line 222
    .line 223
    const/high16 v1, 0x40000000    # 2.0f

    .line 224
    .line 225
    invoke-static {v5, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 226
    .line 227
    .line 228
    move-result v10

    .line 229
    goto :goto_6

    .line 230
    :cond_c
    const/high16 v1, 0x40000000    # 2.0f

    .line 231
    .line 232
    invoke-static {v10, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 233
    .line 234
    .line 235
    move-result v10

    .line 236
    :goto_6
    move v1, v10

    .line 237
    :goto_7
    invoke-virtual {v6, v15, v1}, Landroid/view/View;->measure(II)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    .line 245
    .line 246
    .line 247
    move-result v10

    .line 248
    if-ne v3, v13, :cond_d

    .line 249
    .line 250
    if-le v10, v4, :cond_d

    .line 251
    .line 252
    invoke-static {v10, v5}, Ljava/lang/Math;->min(II)I

    .line 253
    .line 254
    .line 255
    move-result v4

    .line 256
    :cond_d
    sub-int/2addr v14, v1

    .line 257
    if-gez v14, :cond_e

    .line 258
    .line 259
    move/from16 v1, v16

    .line 260
    .line 261
    goto :goto_8

    .line 262
    :cond_e
    const/4 v1, 0x0

    .line 263
    :goto_8
    iput-boolean v1, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->b:Z

    .line 264
    .line 265
    or-int/2addr v12, v1

    .line 266
    if-eqz v1, :cond_f

    .line 267
    .line 268
    iput-object v6, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:Landroid/view/View;

    .line 269
    .line 270
    :cond_f
    move/from16 v13, p2

    .line 271
    .line 272
    :goto_9
    add-int/lit8 v11, v11, 0x1

    .line 273
    .line 274
    const/4 v1, 0x0

    .line 275
    const/high16 v6, -0x80000000

    .line 276
    .line 277
    const/high16 v7, 0x40000000    # 2.0f

    .line 278
    .line 279
    goto/16 :goto_3

    .line 280
    .line 281
    :cond_10
    if-nez v12, :cond_11

    .line 282
    .line 283
    const/4 v1, 0x0

    .line 284
    cmpl-float v3, v13, v1

    .line 285
    .line 286
    if-lez v3, :cond_20

    .line 287
    .line 288
    :cond_11
    iget v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->e:I

    .line 289
    .line 290
    sub-int v1, v8, v1

    .line 291
    .line 292
    const/4 v3, 0x0

    .line 293
    :goto_a
    if-ge v3, v9, :cond_20

    .line 294
    .line 295
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 296
    .line 297
    .line 298
    move-result-object v6

    .line 299
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 300
    .line 301
    .line 302
    move-result v7

    .line 303
    if-ne v7, v15, :cond_13

    .line 304
    .line 305
    :goto_b
    move/from16 v19, v9

    .line 306
    .line 307
    :cond_12
    :goto_c
    const/4 v7, 0x0

    .line 308
    const/high16 v9, 0x40000000    # 2.0f

    .line 309
    .line 310
    goto/16 :goto_13

    .line 311
    .line 312
    :cond_13
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 313
    .line 314
    .line 315
    move-result-object v7

    .line 316
    check-cast v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    .line 317
    .line 318
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 319
    .line 320
    .line 321
    move-result v10

    .line 322
    if-ne v10, v15, :cond_14

    .line 323
    .line 324
    goto :goto_b

    .line 325
    :cond_14
    iget v10, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 326
    .line 327
    iget v11, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->a:F

    .line 328
    .line 329
    if-nez v10, :cond_15

    .line 330
    .line 331
    const/4 v10, 0x0

    .line 332
    cmpl-float v19, v11, v10

    .line 333
    .line 334
    if-lez v19, :cond_15

    .line 335
    .line 336
    move/from16 v10, v16

    .line 337
    .line 338
    goto :goto_d

    .line 339
    :cond_15
    const/4 v10, 0x0

    .line 340
    :goto_d
    if-eqz v10, :cond_16

    .line 341
    .line 342
    const/4 v15, 0x0

    .line 343
    goto :goto_e

    .line 344
    :cond_16
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    .line 345
    .line 346
    .line 347
    move-result v19

    .line 348
    move/from16 v15, v19

    .line 349
    .line 350
    :goto_e
    move/from16 v19, v9

    .line 351
    .line 352
    if-eqz v12, :cond_1b

    .line 353
    .line 354
    iget-object v9, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:Landroid/view/View;

    .line 355
    .line 356
    if-eq v6, v9, :cond_1b

    .line 357
    .line 358
    iget v9, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 359
    .line 360
    if-gez v9, :cond_12

    .line 361
    .line 362
    if-gt v15, v1, :cond_17

    .line 363
    .line 364
    const/4 v9, 0x0

    .line 365
    cmpl-float v11, v11, v9

    .line 366
    .line 367
    if-lez v11, :cond_12

    .line 368
    .line 369
    :cond_17
    if-eqz v10, :cond_1a

    .line 370
    .line 371
    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 372
    .line 373
    const/4 v9, -0x2

    .line 374
    if-ne v7, v9, :cond_18

    .line 375
    .line 376
    const/high16 v9, -0x80000000

    .line 377
    .line 378
    invoke-static {v5, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 379
    .line 380
    .line 381
    move-result v7

    .line 382
    const/high16 v9, 0x40000000    # 2.0f

    .line 383
    .line 384
    goto :goto_10

    .line 385
    :cond_18
    const/4 v9, -0x1

    .line 386
    if-ne v7, v9, :cond_19

    .line 387
    .line 388
    const/high16 v9, 0x40000000    # 2.0f

    .line 389
    .line 390
    invoke-static {v5, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 391
    .line 392
    .line 393
    move-result v7

    .line 394
    goto :goto_10

    .line 395
    :cond_19
    const/high16 v9, 0x40000000    # 2.0f

    .line 396
    .line 397
    goto :goto_f

    .line 398
    :cond_1a
    const/high16 v9, 0x40000000    # 2.0f

    .line 399
    .line 400
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    .line 401
    .line 402
    .line 403
    move-result v7

    .line 404
    :goto_f
    invoke-static {v7, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 405
    .line 406
    .line 407
    move-result v7

    .line 408
    :goto_10
    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 409
    .line 410
    .line 411
    move-result v10

    .line 412
    invoke-virtual {v6, v10, v7}, Landroid/view/View;->measure(II)V

    .line 413
    .line 414
    .line 415
    goto :goto_c

    .line 416
    :cond_1b
    const/4 v9, 0x0

    .line 417
    cmpl-float v10, v11, v9

    .line 418
    .line 419
    if-lez v10, :cond_12

    .line 420
    .line 421
    iget v10, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 422
    .line 423
    if-nez v10, :cond_1e

    .line 424
    .line 425
    iget v10, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 426
    .line 427
    const/4 v9, -0x2

    .line 428
    if-ne v10, v9, :cond_1c

    .line 429
    .line 430
    const/high16 v9, -0x80000000

    .line 431
    .line 432
    invoke-static {v5, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 433
    .line 434
    .line 435
    move-result v10

    .line 436
    const/high16 v9, 0x40000000    # 2.0f

    .line 437
    .line 438
    goto :goto_12

    .line 439
    :cond_1c
    const/4 v9, -0x1

    .line 440
    if-ne v10, v9, :cond_1d

    .line 441
    .line 442
    const/high16 v9, 0x40000000    # 2.0f

    .line 443
    .line 444
    invoke-static {v5, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 445
    .line 446
    .line 447
    move-result v10

    .line 448
    goto :goto_12

    .line 449
    :cond_1d
    const/high16 v9, 0x40000000    # 2.0f

    .line 450
    .line 451
    goto :goto_11

    .line 452
    :cond_1e
    const/high16 v9, 0x40000000    # 2.0f

    .line 453
    .line 454
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    .line 455
    .line 456
    .line 457
    move-result v10

    .line 458
    :goto_11
    invoke-static {v10, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 459
    .line 460
    .line 461
    move-result v10

    .line 462
    :goto_12
    if-eqz v12, :cond_1f

    .line 463
    .line 464
    iget v11, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 465
    .line 466
    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 467
    .line 468
    add-int/2addr v11, v7

    .line 469
    sub-int v7, v8, v11

    .line 470
    .line 471
    invoke-static {v7, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 472
    .line 473
    .line 474
    move-result v11

    .line 475
    if-eq v15, v7, :cond_12

    .line 476
    .line 477
    invoke-virtual {v6, v11, v10}, Landroid/view/View;->measure(II)V

    .line 478
    .line 479
    .line 480
    goto/16 :goto_c

    .line 481
    .line 482
    :cond_1f
    const/4 v7, 0x0

    .line 483
    invoke-static {v7, v14}, Ljava/lang/Math;->max(II)I

    .line 484
    .line 485
    .line 486
    move-result v9

    .line 487
    int-to-float v9, v9

    .line 488
    mul-float/2addr v11, v9

    .line 489
    div-float/2addr v11, v13

    .line 490
    float-to-int v9, v11

    .line 491
    add-int/2addr v15, v9

    .line 492
    const/high16 v9, 0x40000000    # 2.0f

    .line 493
    .line 494
    invoke-static {v15, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 495
    .line 496
    .line 497
    move-result v11

    .line 498
    invoke-virtual {v6, v11, v10}, Landroid/view/View;->measure(II)V

    .line 499
    .line 500
    .line 501
    :goto_13
    add-int/lit8 v3, v3, 0x1

    .line 502
    .line 503
    move/from16 v9, v19

    .line 504
    .line 505
    const/16 v15, 0x8

    .line 506
    .line 507
    goto/16 :goto_a

    .line 508
    .line 509
    :cond_20
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 510
    .line 511
    .line 512
    move-result v1

    .line 513
    add-int/2addr v1, v4

    .line 514
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 515
    .line 516
    .line 517
    move-result v3

    .line 518
    add-int/2addr v3, v1

    .line 519
    invoke-virtual {v0, v2, v3}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 520
    .line 521
    .line 522
    iput-boolean v12, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Z

    .line 523
    .line 524
    iget-object v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->o:Lt/b;

    .line 525
    .line 526
    iget v2, v1, Lt/b;->a:I

    .line 527
    .line 528
    if-eqz v2, :cond_21

    .line 529
    .line 530
    if-nez v12, :cond_21

    .line 531
    .line 532
    invoke-virtual {v1}, Lt/b;->a()V

    .line 533
    .line 534
    .line 535
    :cond_21
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, La0/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    check-cast p1, La0/c;

    .line 10
    .line 11
    iget-object v0, p1, Ls/b;->a:Landroid/os/Parcelable;

    .line 12
    .line 13
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 14
    .line 15
    .line 16
    iget-boolean v0, p1, La0/c;->c:Z

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->q:Z

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    const/high16 v0, 0x3f800000    # 1.0f

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->e(F)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_4

    .line 31
    .line 32
    :cond_1
    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->p:Z

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->q:Z

    .line 37
    .line 38
    if-nez v0, :cond_3

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->e(F)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_4

    .line 46
    .line 47
    :cond_3
    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->p:Z

    .line 49
    .line 50
    :cond_4
    :goto_0
    iget-boolean p1, p1, La0/c;->c:Z

    .line 51
    .line 52
    iput-boolean p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->p:Z

    .line 53
    .line 54
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, La0/c;

    .line 6
    .line 7
    invoke-direct {v1, v0}, La0/c;-><init>(Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Z

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->h:F

    .line 17
    .line 18
    const/high16 v2, 0x3f800000    # 1.0f

    .line 19
    .line 20
    cmpl-float v0, v0, v2

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 28
    goto :goto_1

    .line 29
    :cond_2
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->p:Z

    .line 30
    .line 31
    :goto_1
    iput-boolean v0, v1, La0/c;->c:Z

    .line 32
    .line 33
    return-object v1
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->q:Z

    :cond_0
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->o:Lt/b;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lt/b;->m(Landroid/view/MotionEvent;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x1

    .line 20
    if-eqz v1, :cond_3

    .line 21
    .line 22
    if-eq v1, v2, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:Landroid/view/View;

    .line 26
    .line 27
    invoke-virtual {p0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->b(Landroid/view/View;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_4

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    iget v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->m:F

    .line 42
    .line 43
    sub-float v3, v1, v3

    .line 44
    .line 45
    iget v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->n:F

    .line 46
    .line 47
    sub-float v4, p1, v4

    .line 48
    .line 49
    iget v0, v0, Lt/b;->b:I

    .line 50
    .line 51
    mul-float/2addr v3, v3

    .line 52
    mul-float/2addr v4, v4

    .line 53
    add-float/2addr v4, v3

    .line 54
    mul-int/2addr v0, v0

    .line 55
    int-to-float v0, v0

    .line 56
    cmpg-float v0, v4, v0

    .line 57
    .line 58
    if-gez v0, :cond_4

    .line 59
    .line 60
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:Landroid/view/View;

    .line 61
    .line 62
    float-to-int v1, v1

    .line 63
    float-to-int p1, p1

    .line 64
    invoke-static {v0, v1, p1}, Lt/b;->l(Landroid/view/View;II)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_4

    .line 69
    .line 70
    iget-boolean p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->q:Z

    .line 71
    .line 72
    if-nez p1, :cond_2

    .line 73
    .line 74
    const/4 p1, 0x0

    .line 75
    invoke-virtual {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->e(F)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_4

    .line 80
    .line 81
    :cond_2
    const/4 p1, 0x0

    .line 82
    iput-boolean p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->p:Z

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    iput v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->m:F

    .line 94
    .line 95
    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->n:F

    .line 96
    .line 97
    :cond_4
    :goto_0
    return v2
.end method

.method public final requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result p2

    if-nez p2, :cond_1

    iget-boolean p2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->f:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->g:Landroid/view/View;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->p:Z

    :cond_1
    return-void
.end method

.method public setCoveredFadeColor(I)V
    .locals 0

    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->b:I

    return-void
.end method

.method public setPanelSlideListener(La0/b;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setParallaxDistance(I)V
    .locals 0

    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->l:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->c:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setShadowDrawableRight(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->d:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setShadowResource(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setShadowDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setShadowResourceLeft(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lk/a;->a:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setShadowResourceRight(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lk/a;->a:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setShadowDrawableRight(Landroid/graphics/drawable/Drawable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setSliderFadeColor(I)V
    .locals 0

    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->a:I

    return-void
.end method
