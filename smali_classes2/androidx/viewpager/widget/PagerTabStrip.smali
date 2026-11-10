.class public Landroidx/viewpager/widget/PagerTabStrip;
.super Landroidx/viewpager/widget/PagerTitleStrip;
.source "SourceFile"


# instance fields
.field public final A:I

.field public B:Z

.field public C:F

.field public D:F

.field public final E:I

.field public p:I

.field public final q:I

.field public final r:I

.field public final s:I

.field public final t:I

.field public final u:I

.field public final v:Landroid/graphics/Paint;

.field public final w:Landroid/graphics/Rect;

.field public x:I

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/viewpager/widget/PagerTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/PagerTitleStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Landroidx/viewpager/widget/PagerTabStrip;->v:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->w:Landroid/graphics/Rect;

    const/16 v0, 0xff

    iput v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->x:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->y:Z

    iput-boolean v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->z:Z

    iget v1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->m:I

    iput v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->p:I

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v1, p2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->q:I

    const/high16 v1, 0x40c00000    # 6.0f

    mul-float/2addr v1, p2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->r:I

    const/high16 v1, 0x42800000    # 64.0f

    mul-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->s:I

    const/high16 v1, 0x41800000    # 16.0f

    mul-float/2addr v1, p2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->u:I

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v1, p2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->A:I

    const/high16 v1, 0x42000000    # 32.0f

    mul-float/2addr p2, v1

    add-float/2addr p2, v2

    float-to-int p2, p2

    iput p2, p0, Landroidx/viewpager/widget/PagerTabStrip;->t:I

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Landroidx/viewpager/widget/PagerTabStrip;->E:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, p1, p2, v1, v2}, Landroidx/viewpager/widget/PagerTabStrip;->setPadding(IIII)V

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTitleStrip;->getTextSpacing()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/PagerTabStrip;->setTextSpacing(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    iget-object p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->b:Landroid/widget/TextView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusable(Z)V

    iget-object p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->b:Landroid/widget/TextView;

    new-instance v1, Le0/b;

    invoke-direct {v1, p0, v0}, Le0/b;-><init>(Landroidx/viewpager/widget/PagerTabStrip;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->d:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusable(Z)V

    iget-object p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->d:Landroid/widget/TextView;

    new-instance v0, Le0/b;

    invoke-direct {v0, p0, p2}, Le0/b;-><init>(Landroidx/viewpager/widget/PagerTabStrip;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_0

    iput-boolean p2, p0, Landroidx/viewpager/widget/PagerTabStrip;->y:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final c(IFZ)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, p0, Landroidx/viewpager/widget/PagerTabStrip;->u:I

    sub-int/2addr v2, v3

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    add-int/2addr v4, v3

    iget v5, p0, Landroidx/viewpager/widget/PagerTabStrip;->q:I

    sub-int v5, v0, v5

    iget-object v6, p0, Landroidx/viewpager/widget/PagerTabStrip;->w:Landroid/graphics/Rect;

    invoke-virtual {v6, v2, v5, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager/widget/PagerTitleStrip;->c(IFZ)V

    const/high16 p1, 0x3f000000    # 0.5f

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr p1, p2

    const/high16 p2, 0x437f0000    # 255.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Landroidx/viewpager/widget/PagerTabStrip;->x:I

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result p1

    sub-int/2addr p1, v3

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result p2

    add-int/2addr p2, v3

    invoke-virtual {v6, p1, v5, p2, v0}, Landroid/graphics/Rect;->union(IIII)V

    invoke-virtual {p0, v6}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getDrawFullUnderline()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->y:Z

    return v0
.end method

.method public getMinHeight()I
    .locals 2

    invoke-super {p0}, Landroidx/viewpager/widget/PagerTitleStrip;->getMinHeight()I

    move-result v0

    iget v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->t:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getTabIndicatorColor()I
    .locals 1

    iget v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->p:I

    return v0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, p0, Landroidx/viewpager/widget/PagerTabStrip;->u:I

    sub-int/2addr v2, v3

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, v3

    iget v3, p0, Landroidx/viewpager/widget/PagerTabStrip;->q:I

    sub-int v3, v0, v3

    iget-object v10, p0, Landroidx/viewpager/widget/PagerTabStrip;->v:Landroid/graphics/Paint;

    iget v4, p0, Landroidx/viewpager/widget/PagerTabStrip;->x:I

    shl-int/lit8 v4, v4, 0x18

    iget v5, p0, Landroidx/viewpager/widget/PagerTabStrip;->p:I

    const v11, 0xffffff

    and-int/2addr v5, v11

    or-int/2addr v4, v5

    invoke-virtual {v10, v4}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v5, v2

    int-to-float v6, v3

    int-to-float v7, v1

    int-to-float v1, v0

    move-object v4, p1

    move v8, v1

    move-object v9, v10

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-boolean v2, p0, Landroidx/viewpager/widget/PagerTabStrip;->y:Z

    if-eqz v2, :cond_0

    iget v2, p0, Landroidx/viewpager/widget/PagerTabStrip;->p:I

    and-int/2addr v2, v11

    const/high16 v3, -0x1000000

    or-int/2addr v2, v3

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    int-to-float v5, v2

    iget v2, p0, Landroidx/viewpager/widget/PagerTabStrip;->A:I

    sub-int/2addr v0, v2

    int-to-float v6, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v7, v0

    move-object v4, p1

    move v8, v1

    move-object v9, v10

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Landroidx/viewpager/widget/PagerTabStrip;->B:Z

    if-eqz v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v3, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    iget v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->C:F

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->E:I

    int-to-float v2, v1

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_2

    iget v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->D:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    int-to-float v0, v1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_6

    :cond_2
    iput-boolean v3, p0, Landroidx/viewpager/widget/PagerTabStrip;->B:Z

    goto :goto_1

    :cond_3
    iget-object p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->u:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, v2, v0

    if-gez v0, :cond_4

    iget-object p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->a:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    sub-int/2addr v0, v3

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    add-int/2addr p1, v1

    int-to-float p1, p1

    cmpl-float p1, v2, p1

    if-lez p1, :cond_6

    iget-object p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->a:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    add-int/2addr v0, v3

    goto :goto_0

    :cond_5
    iput v2, p0, Landroidx/viewpager/widget/PagerTabStrip;->C:F

    iput p1, p0, Landroidx/viewpager/widget/PagerTabStrip;->D:F

    iput-boolean v1, p0, Landroidx/viewpager/widget/PagerTabStrip;->B:Z

    :cond_6
    :goto_1
    return v3
.end method

.method public setBackgroundColor(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-boolean v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->z:Z

    if-nez v0, :cond_1

    const/high16 v0, -0x1000000

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroidx/viewpager/widget/PagerTabStrip;->y:Z

    :cond_1
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->z:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroidx/viewpager/widget/PagerTabStrip;->y:Z

    :cond_1
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-boolean v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->z:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroidx/viewpager/widget/PagerTabStrip;->y:Z

    :cond_1
    return-void
.end method

.method public setDrawFullUnderline(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/viewpager/widget/PagerTabStrip;->y:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/viewpager/widget/PagerTabStrip;->z:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 1

    iget v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->r:I

    if-ge p4, v0, :cond_0

    move p4, v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public setTabIndicatorColor(I)V
    .locals 1

    iput p1, p0, Landroidx/viewpager/widget/PagerTabStrip;->p:I

    iget-object v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->v:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTabIndicatorColorResource(I)V
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
    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/PagerTabStrip;->setTabIndicatorColor(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setTextSpacing(I)V
    .locals 1

    iget v0, p0, Landroidx/viewpager/widget/PagerTabStrip;->s:I

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    invoke-super {p0, p1}, Landroidx/viewpager/widget/PagerTitleStrip;->setTextSpacing(I)V

    return-void
.end method
