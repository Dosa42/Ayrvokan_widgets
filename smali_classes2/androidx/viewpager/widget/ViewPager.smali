.class public Landroidx/viewpager/widget/ViewPager;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/viewpager/widget/ViewPager$LayoutParams;
    }
.end annotation


# static fields
.field public static final K:[I

.field public static final L:Lt/a;

.field public static final M:Landroidx/viewpager/widget/a;


# instance fields
.field public A:Z

.field public B:Z

.field public C:I

.field public D:Le0/i;

.field public E:Le0/i;

.field public F:Ljava/util/ArrayList;

.field public G:I

.field public H:Ljava/util/ArrayList;

.field public final I:Landroidx/activity/a;

.field public J:I

.field public final a:Ljava/util/ArrayList;

.field public final b:Le0/f;

.field public final c:Landroid/graphics/Rect;

.field public d:Landroid/os/Parcelable;

.field public e:Landroid/widget/Scroller;

.field public f:I

.field public g:Landroid/graphics/drawable/Drawable;

.field public h:F

.field public i:F

.field public j:I

.field public k:Z

.field public l:Z

.field public m:I

.field public n:Z

.field public o:Z

.field public p:I

.field public q:I

.field public r:I

.field public s:F

.field public t:F

.field public u:F

.field public v:I

.field public w:Landroid/view/VelocityTracker;

.field public x:I

.field public y:Landroid/widget/EdgeEffect;

.field public z:Landroid/widget/EdgeEffect;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const v0, 0x10100b3

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroidx/viewpager/widget/ViewPager;->K:[I

    new-instance v0, Lh/f;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lh/f;-><init>(I)V

    new-instance v0, Lt/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lt/a;-><init>(I)V

    sput-object v0, Landroidx/viewpager/widget/ViewPager;->L:Lt/a;

    new-instance v0, Landroidx/viewpager/widget/a;

    invoke-direct {v0}, Landroidx/viewpager/widget/a;-><init>()V

    sput-object v0, Landroidx/viewpager/widget/ViewPager;->M:Landroidx/viewpager/widget/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->a:Ljava/util/ArrayList;

    new-instance p1, Le0/f;

    invoke-direct {p1}, Le0/f;-><init>()V

    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->b:Le0/f;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->c:Landroid/graphics/Rect;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->d:Landroid/os/Parcelable;

    const p1, -0x800001

    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->h:F

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->i:F

    const/4 p1, 0x1

    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->m:I

    const/4 v0, -0x1

    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->v:I

    iput-boolean p1, p0, Landroidx/viewpager/widget/ViewPager;->A:Z

    new-instance p1, Landroidx/activity/a;

    const/16 v0, 0x9

    invoke-direct {p1, p0, v0}, Landroidx/activity/a;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->I:Landroidx/activity/a;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->J:I

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->g()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->a:Ljava/util/ArrayList;

    new-instance p1, Le0/f;

    invoke-direct {p1}, Le0/f;-><init>()V

    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->b:Le0/f;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->c:Landroid/graphics/Rect;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->d:Landroid/os/Parcelable;

    const p1, -0x800001

    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->h:F

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->i:F

    const/4 p1, 0x1

    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->m:I

    const/4 p2, -0x1

    iput p2, p0, Landroidx/viewpager/widget/ViewPager;->v:I

    iput-boolean p1, p0, Landroidx/viewpager/widget/ViewPager;->A:Z

    new-instance p1, Landroidx/activity/a;

    const/16 p2, 0x9

    invoke-direct {p1, p0, p2}, Landroidx/activity/a;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->I:Landroidx/activity/a;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->J:I

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->g()V

    return-void
.end method

.method public static b(Landroid/view/View;ZIII)Z
    .locals 9

    .line 1
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v1

    :goto_0
    if-ltz v4, :cond_1

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    add-int v6, p3, v2

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v7

    if-lt v6, v7, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v7

    if-ge v6, v7, :cond_0

    add-int v7, p4, v3

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v8

    if-lt v7, v8, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v8

    if-ge v7, v8, :cond_0

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v6, v8

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v5, v1, p2, v6, v7}, Landroidx/viewpager/widget/ViewPager;->b(Landroid/view/View;ZIII)Z

    move-result v5

    if-eqz v5, :cond_0

    return v1

    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    neg-int p1, p2

    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private getClientWidth()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private setScrollingCacheEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->l:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroidx/viewpager/widget/ViewPager;->l:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p0, :cond_0

    goto :goto_3

    :cond_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    :goto_0
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    if-ne v3, p0, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_1
    if-nez v3, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_2
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_2

    :cond_3
    :goto_3
    const/4 v0, 0x0

    :cond_4
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x11

    if-eqz v3, :cond_7

    if-eq v3, v0, :cond_7

    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->c:Landroid/graphics/Rect;

    if-ne p1, v4, :cond_5

    invoke-virtual {p0, v1, v3}, Landroidx/viewpager/widget/ViewPager;->d(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v1, v0}, Landroidx/viewpager/widget/ViewPager;->d(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_6

    if-lt v4, v1, :cond_6

    goto :goto_4

    :cond_5
    const/16 v4, 0x42

    if-ne p1, v4, :cond_7

    invoke-virtual {p0, v1, v3}, Landroidx/viewpager/widget/ViewPager;->d(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v1, v0}, Landroidx/viewpager/widget/ViewPager;->d(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_6

    if-gt v4, v1, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    move-result v2

    :cond_7
    :goto_4
    if-eqz v2, :cond_8

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->playSoundEffect(I)V

    :cond_8
    return v2
.end method

.method public final addFocusables(Ljava/util/ArrayList;II)V
    .locals 3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-eq v0, v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->e()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/high16 v1, 0x40000

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p2, v0, :cond_5

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result p2

    if-nez p2, :cond_3

    return-void

    :cond_3
    const/4 p2, 0x1

    and-int/2addr p3, p2

    if-ne p3, p2, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result p2

    if-nez p2, :cond_4

    return-void

    :cond_4
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method public final addTouchables(Ljava/util/ArrayList;)V
    .locals 1

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->e()V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p3}, Landroidx/viewpager/widget/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p3}, Landroidx/viewpager/widget/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    :cond_0
    move-object v0, p3

    .line 12
    check-cast v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    .line 13
    .line 14
    iget-boolean v1, v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;->a:Z

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const-class v3, Le0/e;

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v2, 0x0

    .line 31
    :goto_0
    or-int/2addr v1, v2

    .line 32
    iput-boolean v1, v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;->a:Z

    .line 33
    .line 34
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->k:Z

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    if-nez v1, :cond_2

    .line 39
    .line 40
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    const-string p2, "Cannot add pager decor view during layout"

    .line 47
    .line 48
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1

    .line 52
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 53
    .line 54
    .line 55
    :goto_1
    return-void
.end method

.method public final c(Z)V
    .locals 6

    .line 1
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->J:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    move v0, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v0, v3

    .line 11
    :goto_0
    if-eqz v0, :cond_2

    .line 12
    .line 13
    invoke-direct {p0, v3}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->e:Landroid/widget/Scroller;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    xor-int/2addr v1, v2

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->e:Landroid/widget/Scroller;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    iget-object v4, p0, Landroidx/viewpager/widget/ViewPager;->e:Landroid/widget/Scroller;

    .line 39
    .line 40
    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    iget-object v5, p0, Landroidx/viewpager/widget/ViewPager;->e:Landroid/widget/Scroller;

    .line 45
    .line 46
    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrY()I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-ne v1, v4, :cond_1

    .line 51
    .line 52
    if-eq v2, v5, :cond_2

    .line 53
    .line 54
    :cond_1
    invoke-virtual {p0, v4, v5}, Landroid/view/View;->scrollTo(II)V

    .line 55
    .line 56
    .line 57
    if-eq v4, v1, :cond_2

    .line 58
    .line 59
    invoke-virtual {p0, v4}, Landroidx/viewpager/widget/ViewPager;->i(I)Z

    .line 60
    .line 61
    .line 62
    :cond_2
    :goto_1
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->a:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-ge v3, v2, :cond_3

    .line 69
    .line 70
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    check-cast v1, Le0/f;

    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    add-int/lit8 v3, v3, 0x1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    if-eqz v0, :cond_5

    .line 83
    .line 84
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->I:Landroidx/activity/a;

    .line 85
    .line 86
    if-eqz p1, :cond_4

    .line 87
    .line 88
    sget-object p1, Lp/k;->a:Ljava/lang/reflect/Field;

    .line 89
    .line 90
    invoke-virtual {p0, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 91
    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_4
    invoke-virtual {v0}, Landroidx/activity/a;->run()V

    .line 95
    .line 96
    .line 97
    :cond_5
    :goto_2
    return-void
.end method

.method public final canScrollHorizontally(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Landroidx/viewpager/widget/ViewPager$LayoutParams;

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
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->e:Landroid/widget/Scroller;

    .line 3
    .line 4
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_2

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->e:Landroid/widget/Scroller;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->e:Landroid/widget/Scroller;

    .line 27
    .line 28
    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->e:Landroid/widget/Scroller;

    .line 33
    .line 34
    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-ne v0, v2, :cond_0

    .line 39
    .line 40
    if-eq v1, v3, :cond_1

    .line 41
    .line 42
    :cond_0
    invoke-virtual {p0, v2, v3}, Landroid/view/View;->scrollTo(II)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v2}, Landroidx/viewpager/widget/ViewPager;->i(I)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_1

    .line 50
    .line 51
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->e:Landroid/widget/Scroller;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 54
    .line 55
    .line 56
    const/4 v0, 0x0

    .line 57
    invoke-virtual {p0, v0, v3}, Landroid/view/View;->scrollTo(II)V

    .line 58
    .line 59
    .line 60
    :cond_1
    sget-object v0, Lp/k;->a:Ljava/lang/reflect/Field;

    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_2
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->c(Z)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public final d(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    :cond_0
    if-nez p2, :cond_1

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-object p1

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    if-eq p2, p0, :cond_2

    check-cast p2, Landroid/view/ViewGroup;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_8

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v2, 0x0

    .line 13
    if-nez v0, :cond_6

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/16 v3, 0x15

    .line 20
    .line 21
    const/4 v4, 0x2

    .line 22
    if-eq v0, v3, :cond_4

    .line 23
    .line 24
    const/16 v3, 0x16

    .line 25
    .line 26
    if-eq v0, v3, :cond_2

    .line 27
    .line 28
    const/16 v3, 0x3d

    .line 29
    .line 30
    if-eq v0, v3, :cond_0

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-virtual {p0, v4}, Landroidx/viewpager/widget/ViewPager;->a(I)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    goto :goto_2

    .line 44
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_6

    .line 49
    .line 50
    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->a(I)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    goto :goto_2

    .line 55
    :cond_2
    invoke-virtual {p1, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_3

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_3
    const/16 p1, 0x42

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_4
    invoke-virtual {p1, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_5

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_5
    const/16 p1, 0x11

    .line 73
    .line 74
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->a(I)Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    goto :goto_2

    .line 79
    :cond_6
    :goto_1
    move p1, v2

    .line 80
    :goto_2
    if-eqz p1, :cond_7

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_7
    move v1, v2

    .line 84
    :cond_8
    :goto_3
    return v1
.end method

.method public final dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->e()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->y:Landroid/widget/EdgeEffect;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->z:Landroid/widget/EdgeEffect;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    .line 20
    .line 21
    .line 22
    goto/16 :goto_0

    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->y:Landroid/widget/EdgeEffect;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    sub-int/2addr v2, v3

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    sub-int/2addr v2, v3

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    const/high16 v4, 0x43870000    # 270.0f

    .line 55
    .line 56
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 57
    .line 58
    .line 59
    neg-int v4, v2

    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    add-int/2addr v5, v4

    .line 65
    int-to-float v4, v5

    .line 66
    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->h:F

    .line 67
    .line 68
    int-to-float v6, v3

    .line 69
    mul-float/2addr v5, v6

    .line 70
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 71
    .line 72
    .line 73
    iget-object v4, p0, Landroidx/viewpager/widget/ViewPager;->y:Landroid/widget/EdgeEffect;

    .line 74
    .line 75
    invoke-virtual {v4, v2, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 76
    .line 77
    .line 78
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->y:Landroid/widget/EdgeEffect;

    .line 79
    .line 80
    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    or-int/2addr v1, v2

    .line 85
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 86
    .line 87
    .line 88
    :cond_1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->z:Landroid/widget/EdgeEffect;

    .line 89
    .line 90
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-nez v0, :cond_2

    .line 95
    .line 96
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    sub-int/2addr v3, v4

    .line 113
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    sub-int/2addr v3, v4

    .line 118
    const/high16 v4, 0x42b40000    # 90.0f

    .line 119
    .line 120
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    neg-int v4, v4

    .line 128
    int-to-float v4, v4

    .line 129
    iget v5, p0, Landroidx/viewpager/widget/ViewPager;->i:F

    .line 130
    .line 131
    const/high16 v6, 0x3f800000    # 1.0f

    .line 132
    .line 133
    add-float/2addr v5, v6

    .line 134
    neg-float v5, v5

    .line 135
    int-to-float v6, v2

    .line 136
    mul-float/2addr v5, v6

    .line 137
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 138
    .line 139
    .line 140
    iget-object v4, p0, Landroidx/viewpager/widget/ViewPager;->z:Landroid/widget/EdgeEffect;

    .line 141
    .line 142
    invoke-virtual {v4, v3, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 143
    .line 144
    .line 145
    iget-object v2, p0, Landroidx/viewpager/widget/ViewPager;->z:Landroid/widget/EdgeEffect;

    .line 146
    .line 147
    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    or-int/2addr v1, v2

    .line 152
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 153
    .line 154
    .line 155
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 156
    .line 157
    sget-object p1, Lp/k;->a:Ljava/lang/reflect/Field;

    .line 158
    .line 159
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 160
    .line 161
    .line 162
    :cond_3
    return-void
.end method

.method public final drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le0/f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    throw v0
.end method

.method public final f(I)Le0/f;
    .locals 3

    .line 1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le0/f;

    iget v2, v1, Le0/f;->a:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final g()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 3
    .line 4
    .line 5
    const/high16 v0, 0x40000

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Landroid/widget/Scroller;

    .line 19
    .line 20
    sget-object v3, Landroidx/viewpager/widget/ViewPager;->L:Lt/a;

    .line 21
    .line 22
    invoke-direct {v2, v1, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 23
    .line 24
    .line 25
    iput-object v2, p0, Landroidx/viewpager/widget/ViewPager;->e:Landroid/widget/Scroller;

    .line 26
    .line 27
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 40
    .line 41
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    iput v4, p0, Landroidx/viewpager/widget/ViewPager;->r:I

    .line 46
    .line 47
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    .line 48
    .line 49
    .line 50
    new-instance v2, Landroid/widget/EdgeEffect;

    .line 51
    .line 52
    invoke-direct {v2, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    .line 53
    .line 54
    .line 55
    iput-object v2, p0, Landroidx/viewpager/widget/ViewPager;->y:Landroid/widget/EdgeEffect;

    .line 56
    .line 57
    new-instance v2, Landroid/widget/EdgeEffect;

    .line 58
    .line 59
    invoke-direct {v2, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    .line 60
    .line 61
    .line 62
    iput-object v2, p0, Landroidx/viewpager/widget/ViewPager;->z:Landroid/widget/EdgeEffect;

    .line 63
    .line 64
    const/high16 v1, 0x40000000    # 2.0f

    .line 65
    .line 66
    mul-float/2addr v1, v3

    .line 67
    float-to-int v1, v1

    .line 68
    iput v1, p0, Landroidx/viewpager/widget/ViewPager;->x:I

    .line 69
    .line 70
    const/high16 v1, 0x41800000    # 16.0f

    .line 71
    .line 72
    mul-float/2addr v3, v1

    .line 73
    float-to-int v1, v3

    .line 74
    iput v1, p0, Landroidx/viewpager/widget/ViewPager;->p:I

    .line 75
    .line 76
    new-instance v1, Le0/g;

    .line 77
    .line 78
    invoke-direct {v1, p0}, Le0/g;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    .line 79
    .line 80
    .line 81
    invoke-static {p0, v1}, Lp/k;->a(Landroid/view/View;Lp/b;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAccessibility()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-nez v1, :cond_0

    .line 89
    .line 90
    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 91
    .line 92
    .line 93
    :cond_0
    new-instance v0, Landroidx/fragment/app/h;

    .line 94
    .line 95
    invoke-direct {v0, p0}, Landroidx/fragment/app/h;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    .line 96
    .line 97
    .line 98
    invoke-static {p0, v0}, Lp/k;->b(Landroid/view/View;Lp/f;)V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    invoke-direct {v0}, Landroidx/viewpager/widget/ViewPager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/viewpager/widget/ViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 2
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public getAdapter()Le0/a;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getChildDrawingOrder(II)I
    .locals 2

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->G:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    add-int/lit8 p1, p1, -0x1

    sub-int p2, p1, p2

    :cond_0
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->H:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    return p1
.end method

.method public getCurrentItem()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getOffscreenPageLimit()I
    .locals 1

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->m:I

    return v0
.end method

.method public getPageMargin()I
    .locals 1

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->f:I

    return v0
.end method

.method public final h(FII)V
    .locals 11

    .line 1
    iget p3, p0, Landroidx/viewpager/widget/ViewPager;->C:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    if-lez p3, :cond_5

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    move v6, v0

    .line 28
    :goto_0
    if-ge v6, v5, :cond_5

    .line 29
    .line 30
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 35
    .line 36
    .line 37
    move-result-object v8

    .line 38
    check-cast v8, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    .line 39
    .line 40
    iget-boolean v9, v8, Landroidx/viewpager/widget/ViewPager$LayoutParams;->a:Z

    .line 41
    .line 42
    if-nez v9, :cond_0

    .line 43
    .line 44
    goto :goto_3

    .line 45
    :cond_0
    iget v8, v8, Landroidx/viewpager/widget/ViewPager$LayoutParams;->b:I

    .line 46
    .line 47
    and-int/lit8 v8, v8, 0x7

    .line 48
    .line 49
    if-eq v8, v1, :cond_3

    .line 50
    .line 51
    const/4 v9, 0x3

    .line 52
    if-eq v8, v9, :cond_2

    .line 53
    .line 54
    const/4 v9, 0x5

    .line 55
    if-eq v8, v9, :cond_1

    .line 56
    .line 57
    move v8, v2

    .line 58
    goto :goto_2

    .line 59
    :cond_1
    sub-int v8, v4, v3

    .line 60
    .line 61
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    .line 62
    .line 63
    .line 64
    move-result v9

    .line 65
    sub-int/2addr v8, v9

    .line 66
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    .line 67
    .line 68
    .line 69
    move-result v9

    .line 70
    add-int/2addr v3, v9

    .line 71
    goto :goto_1

    .line 72
    :cond_2
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    .line 73
    .line 74
    .line 75
    move-result v8

    .line 76
    add-int/2addr v8, v2

    .line 77
    goto :goto_2

    .line 78
    :cond_3
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    .line 79
    .line 80
    .line 81
    move-result v8

    .line 82
    sub-int v8, v4, v8

    .line 83
    .line 84
    div-int/lit8 v8, v8, 0x2

    .line 85
    .line 86
    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    .line 87
    .line 88
    .line 89
    move-result v8

    .line 90
    :goto_1
    move v10, v8

    .line 91
    move v8, v2

    .line 92
    move v2, v10

    .line 93
    :goto_2
    add-int/2addr v2, p3

    .line 94
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    .line 95
    .line 96
    .line 97
    move-result v9

    .line 98
    sub-int/2addr v2, v9

    .line 99
    if-eqz v2, :cond_4

    .line 100
    .line 101
    invoke-virtual {v7, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 102
    .line 103
    .line 104
    :cond_4
    move v2, v8

    .line 105
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_5
    iget-object p3, p0, Landroidx/viewpager/widget/ViewPager;->D:Le0/i;

    .line 109
    .line 110
    const/high16 v2, 0x3f000000    # 0.5f

    .line 111
    .line 112
    if-eqz p3, :cond_7

    .line 113
    .line 114
    check-cast p3, Le0/c;

    .line 115
    .line 116
    cmpl-float v3, p1, v2

    .line 117
    .line 118
    if-lez v3, :cond_6

    .line 119
    .line 120
    add-int/lit8 v3, p2, 0x1

    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_6
    move v3, p2

    .line 124
    :goto_4
    iget-object p3, p3, Le0/c;->a:Landroidx/viewpager/widget/PagerTitleStrip;

    .line 125
    .line 126
    invoke-virtual {p3, v3, p1, v0}, Landroidx/viewpager/widget/PagerTitleStrip;->c(IFZ)V

    .line 127
    .line 128
    .line 129
    :cond_7
    iget-object p3, p0, Landroidx/viewpager/widget/ViewPager;->E:Le0/i;

    .line 130
    .line 131
    if-eqz p3, :cond_9

    .line 132
    .line 133
    check-cast p3, Le0/c;

    .line 134
    .line 135
    cmpl-float v2, p1, v2

    .line 136
    .line 137
    if-lez v2, :cond_8

    .line 138
    .line 139
    add-int/lit8 p2, p2, 0x1

    .line 140
    .line 141
    :cond_8
    iget-object p3, p3, Le0/c;->a:Landroidx/viewpager/widget/PagerTitleStrip;

    .line 142
    .line 143
    invoke-virtual {p3, p2, p1, v0}, Landroidx/viewpager/widget/PagerTitleStrip;->c(IFZ)V

    .line 144
    .line 145
    .line 146
    :cond_9
    iput-boolean v1, p0, Landroidx/viewpager/widget/ViewPager;->B:Z

    .line 147
    .line 148
    return-void
.end method

.method public final i(I)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->a:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const-string v3, "onPageScrolled did not call superclass implementation"

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x0

    .line 13
    if-nez v2, :cond_2

    .line 14
    .line 15
    iget-boolean v1, v0, Landroidx/viewpager/widget/ViewPager;->A:Z

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    return v5

    .line 20
    :cond_0
    iput-boolean v5, v0, Landroidx/viewpager/widget/ViewPager;->B:Z

    .line 21
    .line 22
    invoke-virtual {v0, v4, v5, v5}, Landroidx/viewpager/widget/ViewPager;->h(FII)V

    .line 23
    .line 24
    .line 25
    iget-boolean v1, v0, Landroidx/viewpager/widget/ViewPager;->B:Z

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    return v5

    .line 30
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v1

    .line 36
    :cond_2
    invoke-direct/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-lez v2, :cond_3

    .line 41
    .line 42
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    int-to-float v6, v6

    .line 47
    int-to-float v7, v2

    .line 48
    div-float/2addr v6, v7

    .line 49
    goto :goto_0

    .line 50
    :cond_3
    move v6, v4

    .line 51
    :goto_0
    if-lez v2, :cond_4

    .line 52
    .line 53
    iget v7, v0, Landroidx/viewpager/widget/ViewPager;->f:I

    .line 54
    .line 55
    int-to-float v7, v7

    .line 56
    int-to-float v2, v2

    .line 57
    div-float/2addr v7, v2

    .line 58
    goto :goto_1

    .line 59
    :cond_4
    move v7, v4

    .line 60
    :goto_1
    const/4 v2, 0x1

    .line 61
    const/4 v8, 0x0

    .line 62
    const/4 v9, -0x1

    .line 63
    move v12, v2

    .line 64
    move v13, v4

    .line 65
    move v10, v5

    .line 66
    move-object v11, v8

    .line 67
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 68
    .line 69
    .line 70
    move-result v14

    .line 71
    if-ge v10, v14, :cond_a

    .line 72
    .line 73
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v14

    .line 77
    check-cast v14, Le0/f;

    .line 78
    .line 79
    if-nez v12, :cond_6

    .line 80
    .line 81
    iget v15, v14, Le0/f;->a:I

    .line 82
    .line 83
    add-int/2addr v9, v2

    .line 84
    if-ne v15, v9, :cond_5

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_5
    add-float/2addr v13, v4

    .line 88
    add-float/2addr v13, v7

    .line 89
    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->b:Le0/f;

    .line 90
    .line 91
    iput v13, v1, Le0/f;->b:F

    .line 92
    .line 93
    iput v9, v1, Le0/f;->a:I

    .line 94
    .line 95
    throw v8

    .line 96
    :cond_6
    :goto_3
    iget v13, v14, Le0/f;->b:F

    .line 97
    .line 98
    add-float v9, v4, v13

    .line 99
    .line 100
    add-float/2addr v9, v7

    .line 101
    if-nez v12, :cond_7

    .line 102
    .line 103
    cmpl-float v12, v6, v13

    .line 104
    .line 105
    if-ltz v12, :cond_a

    .line 106
    .line 107
    :cond_7
    cmpg-float v9, v6, v9

    .line 108
    .line 109
    if-ltz v9, :cond_9

    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 112
    .line 113
    .line 114
    move-result v9

    .line 115
    sub-int/2addr v9, v2

    .line 116
    if-ne v10, v9, :cond_8

    .line 117
    .line 118
    goto :goto_4

    .line 119
    :cond_8
    iget v9, v14, Le0/f;->a:I

    .line 120
    .line 121
    add-int/lit8 v10, v10, 0x1

    .line 122
    .line 123
    move v12, v5

    .line 124
    move-object v11, v14

    .line 125
    goto :goto_2

    .line 126
    :cond_9
    :goto_4
    move-object v11, v14

    .line 127
    :cond_a
    invoke-direct/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    iget v6, v0, Landroidx/viewpager/widget/ViewPager;->f:I

    .line 132
    .line 133
    add-int v7, v1, v6

    .line 134
    .line 135
    int-to-float v6, v6

    .line 136
    int-to-float v1, v1

    .line 137
    div-float/2addr v6, v1

    .line 138
    iget v8, v11, Le0/f;->a:I

    .line 139
    .line 140
    move/from16 v9, p1

    .line 141
    .line 142
    int-to-float v9, v9

    .line 143
    div-float/2addr v9, v1

    .line 144
    iget v1, v11, Le0/f;->b:F

    .line 145
    .line 146
    sub-float/2addr v9, v1

    .line 147
    add-float/2addr v6, v4

    .line 148
    div-float/2addr v9, v6

    .line 149
    int-to-float v1, v7

    .line 150
    mul-float/2addr v1, v9

    .line 151
    float-to-int v1, v1

    .line 152
    iput-boolean v5, v0, Landroidx/viewpager/widget/ViewPager;->B:Z

    .line 153
    .line 154
    invoke-virtual {v0, v9, v8, v1}, Landroidx/viewpager/widget/ViewPager;->h(FII)V

    .line 155
    .line 156
    .line 157
    iget-boolean v1, v0, Landroidx/viewpager/widget/ViewPager;->B:Z

    .line 158
    .line 159
    if-eqz v1, :cond_b

    .line 160
    .line 161
    return v2

    .line 162
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 163
    .line 164
    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw v1
.end method

.method public final j()V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->G:I

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->H:Ljava/util/ArrayList;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->H:Ljava/util/ArrayList;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 18
    .line 19
    .line 20
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x0

    .line 25
    :goto_1
    if-ge v1, v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    iget-object v3, p0, Landroidx/viewpager/widget/ViewPager;->H:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->H:Ljava/util/ArrayList;

    .line 40
    .line 41
    sget-object v1, Landroidx/viewpager/widget/ViewPager;->M:Landroidx/viewpager/widget/a;

    .line 42
    .line 43
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 44
    .line 45
    .line 46
    :cond_2
    return-void
.end method

.method public final k(IIII)V
    .locals 1

    .line 1
    if-lez p2, :cond_1

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->e:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->e:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p2

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    move-result p3

    mul-int/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/widget/Scroller;->setFinalX(I)V

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    add-int/2addr p1, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p3

    sub-int/2addr p2, p3

    add-int/2addr p2, p4

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p3

    int-to-float p3, p3

    int-to-float p2, p2

    div-float/2addr p3, p2

    int-to-float p1, p1

    mul-float/2addr p3, p1

    float-to-int p1, p3

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroidx/viewpager/widget/ViewPager;->f(I)Le0/f;

    move-result-object p2

    if-eqz p2, :cond_2

    iget p2, p2, Le0/f;->b:F

    iget p3, p0, Landroidx/viewpager/widget/ViewPager;->i:F

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p3

    sub-int/2addr p1, p3

    int-to-float p1, p1

    mul-float/2addr p2, p1

    float-to-int p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroidx/viewpager/widget/ViewPager;->c(Z)V

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->A:Z

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->I:Landroidx/activity/a;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->e:Landroid/widget/Scroller;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->e:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget p1, p0, Landroidx/viewpager/widget/ViewPager;->f:I

    if-lez p1, :cond_0

    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->g:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    :cond_0
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit16 v0, v0, 0xff

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, -0x1

    .line 9
    const/4 v3, 0x3

    .line 10
    const/4 v4, 0x0

    .line 11
    if-eq v0, v3, :cond_15

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    if-ne v0, v3, :cond_0

    .line 15
    .line 16
    goto/16 :goto_4

    .line 17
    .line 18
    :cond_0
    if-eqz v0, :cond_2

    .line 19
    .line 20
    iget-boolean v5, p0, Landroidx/viewpager/widget/ViewPager;->n:Z

    .line 21
    .line 22
    if-eqz v5, :cond_1

    .line 23
    .line 24
    return v3

    .line 25
    :cond_1
    iget-boolean v5, p0, Landroidx/viewpager/widget/ViewPager;->o:Z

    .line 26
    .line 27
    if-eqz v5, :cond_2

    .line 28
    .line 29
    return v4

    .line 30
    :cond_2
    const/4 v5, 0x2

    .line 31
    if-eqz v0, :cond_10

    .line 32
    .line 33
    if-eq v0, v5, :cond_5

    .line 34
    .line 35
    const/4 v1, 0x6

    .line 36
    if-eq v0, v1, :cond_3

    .line 37
    .line 38
    goto/16 :goto_3

    .line 39
    .line 40
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    iget v2, p0, Landroidx/viewpager/widget/ViewPager;->v:I

    .line 49
    .line 50
    if-ne v1, v2, :cond_13

    .line 51
    .line 52
    if-nez v0, :cond_4

    .line 53
    .line 54
    move v4, v3

    .line 55
    :cond_4
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->s:F

    .line 60
    .line 61
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->v:I

    .line 66
    .line 67
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->w:Landroid/view/VelocityTracker;

    .line 68
    .line 69
    if-eqz v0, :cond_13

    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 72
    .line 73
    .line 74
    goto/16 :goto_3

    .line 75
    .line 76
    :cond_5
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->v:I

    .line 77
    .line 78
    if-ne v0, v2, :cond_6

    .line 79
    .line 80
    goto/16 :goto_3

    .line 81
    .line 82
    :cond_6
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    iget v6, p0, Landroidx/viewpager/widget/ViewPager;->s:F

    .line 91
    .line 92
    sub-float v6, v5, v6

    .line 93
    .line 94
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    iget v8, p0, Landroidx/viewpager/widget/ViewPager;->u:F

    .line 103
    .line 104
    sub-float v8, v0, v8

    .line 105
    .line 106
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    .line 107
    .line 108
    .line 109
    move-result v8

    .line 110
    const/4 v9, 0x0

    .line 111
    cmpl-float v10, v6, v9

    .line 112
    .line 113
    if-eqz v10, :cond_a

    .line 114
    .line 115
    iget v11, p0, Landroidx/viewpager/widget/ViewPager;->s:F

    .line 116
    .line 117
    iget v12, p0, Landroidx/viewpager/widget/ViewPager;->q:I

    .line 118
    .line 119
    int-to-float v12, v12

    .line 120
    cmpg-float v12, v11, v12

    .line 121
    .line 122
    if-gez v12, :cond_7

    .line 123
    .line 124
    if-gtz v10, :cond_8

    .line 125
    .line 126
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 127
    .line 128
    .line 129
    move-result v12

    .line 130
    iget v13, p0, Landroidx/viewpager/widget/ViewPager;->q:I

    .line 131
    .line 132
    sub-int/2addr v12, v13

    .line 133
    int-to-float v12, v12

    .line 134
    cmpl-float v11, v11, v12

    .line 135
    .line 136
    if-lez v11, :cond_9

    .line 137
    .line 138
    cmpg-float v9, v6, v9

    .line 139
    .line 140
    if-gez v9, :cond_9

    .line 141
    .line 142
    :cond_8
    move v9, v3

    .line 143
    goto :goto_0

    .line 144
    :cond_9
    move v9, v4

    .line 145
    :goto_0
    if-nez v9, :cond_a

    .line 146
    .line 147
    float-to-int v6, v6

    .line 148
    float-to-int v9, v5

    .line 149
    float-to-int v0, v0

    .line 150
    invoke-static {p0, v4, v6, v9, v0}, Landroidx/viewpager/widget/ViewPager;->b(Landroid/view/View;ZIII)Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-eqz v0, :cond_a

    .line 155
    .line 156
    iput v5, p0, Landroidx/viewpager/widget/ViewPager;->s:F

    .line 157
    .line 158
    iput-boolean v3, p0, Landroidx/viewpager/widget/ViewPager;->o:Z

    .line 159
    .line 160
    return v4

    .line 161
    :cond_a
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->r:I

    .line 162
    .line 163
    int-to-float v0, v0

    .line 164
    cmpl-float v6, v7, v0

    .line 165
    .line 166
    if-lez v6, :cond_d

    .line 167
    .line 168
    const/high16 v6, 0x3f000000    # 0.5f

    .line 169
    .line 170
    mul-float/2addr v7, v6

    .line 171
    cmpl-float v6, v7, v8

    .line 172
    .line 173
    if-lez v6, :cond_d

    .line 174
    .line 175
    iput-boolean v3, p0, Landroidx/viewpager/widget/ViewPager;->n:Z

    .line 176
    .line 177
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    if-eqz v0, :cond_b

    .line 182
    .line 183
    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 184
    .line 185
    .line 186
    :cond_b
    invoke-virtual {p0, v3}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    .line 187
    .line 188
    .line 189
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->t:F

    .line 190
    .line 191
    iget v6, p0, Landroidx/viewpager/widget/ViewPager;->r:I

    .line 192
    .line 193
    int-to-float v6, v6

    .line 194
    if-lez v10, :cond_c

    .line 195
    .line 196
    add-float/2addr v0, v6

    .line 197
    goto :goto_1

    .line 198
    :cond_c
    sub-float/2addr v0, v6

    .line 199
    :goto_1
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->s:F

    .line 200
    .line 201
    invoke-direct {p0, v3}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 202
    .line 203
    .line 204
    goto :goto_2

    .line 205
    :cond_d
    cmpl-float v0, v8, v0

    .line 206
    .line 207
    if-lez v0, :cond_e

    .line 208
    .line 209
    iput-boolean v3, p0, Landroidx/viewpager/widget/ViewPager;->o:Z

    .line 210
    .line 211
    :cond_e
    :goto_2
    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->n:Z

    .line 212
    .line 213
    if-nez v0, :cond_f

    .line 214
    .line 215
    goto :goto_3

    .line 216
    :cond_f
    iput v5, p0, Landroidx/viewpager/widget/ViewPager;->s:F

    .line 217
    .line 218
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 219
    .line 220
    .line 221
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    .line 222
    .line 223
    .line 224
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->a:Ljava/util/ArrayList;

    .line 225
    .line 226
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    check-cast v0, Le0/f;

    .line 231
    .line 232
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 233
    .line 234
    .line 235
    move-result v3

    .line 236
    add-int/2addr v3, v2

    .line 237
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    check-cast p1, Le0/f;

    .line 242
    .line 243
    iget v0, v0, Le0/f;->a:I

    .line 244
    .line 245
    iget p1, p1, Le0/f;->a:I

    .line 246
    .line 247
    throw v1

    .line 248
    :cond_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->t:F

    .line 253
    .line 254
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->s:F

    .line 255
    .line 256
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 257
    .line 258
    .line 259
    move-result v0

    .line 260
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->u:F

    .line 261
    .line 262
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 263
    .line 264
    .line 265
    move-result v0

    .line 266
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->v:I

    .line 267
    .line 268
    iput-boolean v4, p0, Landroidx/viewpager/widget/ViewPager;->o:Z

    .line 269
    .line 270
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->e:Landroid/widget/Scroller;

    .line 271
    .line 272
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 273
    .line 274
    .line 275
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->J:I

    .line 276
    .line 277
    if-ne v0, v5, :cond_12

    .line 278
    .line 279
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->e:Landroid/widget/Scroller;

    .line 280
    .line 281
    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->e:Landroid/widget/Scroller;

    .line 286
    .line 287
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    .line 288
    .line 289
    .line 290
    move-result v1

    .line 291
    sub-int/2addr v0, v1

    .line 292
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 293
    .line 294
    .line 295
    move-result v0

    .line 296
    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->x:I

    .line 297
    .line 298
    if-le v0, v1, :cond_12

    .line 299
    .line 300
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->e:Landroid/widget/Scroller;

    .line 301
    .line 302
    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 303
    .line 304
    .line 305
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->j()V

    .line 306
    .line 307
    .line 308
    iput-boolean v3, p0, Landroidx/viewpager/widget/ViewPager;->n:Z

    .line 309
    .line 310
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    if-eqz v0, :cond_11

    .line 315
    .line 316
    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 317
    .line 318
    .line 319
    :cond_11
    invoke-virtual {p0, v3}, Landroidx/viewpager/widget/ViewPager;->setScrollState(I)V

    .line 320
    .line 321
    .line 322
    goto :goto_3

    .line 323
    :cond_12
    invoke-virtual {p0, v4}, Landroidx/viewpager/widget/ViewPager;->c(Z)V

    .line 324
    .line 325
    .line 326
    iput-boolean v4, p0, Landroidx/viewpager/widget/ViewPager;->n:Z

    .line 327
    .line 328
    :cond_13
    :goto_3
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->w:Landroid/view/VelocityTracker;

    .line 329
    .line 330
    if-nez v0, :cond_14

    .line 331
    .line 332
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    iput-object v0, p0, Landroidx/viewpager/widget/ViewPager;->w:Landroid/view/VelocityTracker;

    .line 337
    .line 338
    :cond_14
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->w:Landroid/view/VelocityTracker;

    .line 339
    .line 340
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 341
    .line 342
    .line 343
    iget-boolean p1, p0, Landroidx/viewpager/widget/ViewPager;->n:Z

    .line 344
    .line 345
    return p1

    .line 346
    :cond_15
    :goto_4
    iput v2, p0, Landroidx/viewpager/widget/ViewPager;->v:I

    .line 347
    .line 348
    iput-boolean v4, p0, Landroidx/viewpager/widget/ViewPager;->n:Z

    .line 349
    .line 350
    iput-boolean v4, p0, Landroidx/viewpager/widget/ViewPager;->o:Z

    .line 351
    .line 352
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->w:Landroid/view/VelocityTracker;

    .line 353
    .line 354
    if-eqz p1, :cond_16

    .line 355
    .line 356
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 357
    .line 358
    .line 359
    iput-object v1, p0, Landroidx/viewpager/widget/ViewPager;->w:Landroid/view/VelocityTracker;

    .line 360
    .line 361
    :cond_16
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->y:Landroid/widget/EdgeEffect;

    .line 362
    .line 363
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 364
    .line 365
    .line 366
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->z:Landroid/widget/EdgeEffect;

    .line 367
    .line 368
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 369
    .line 370
    .line 371
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->y:Landroid/widget/EdgeEffect;

    .line 372
    .line 373
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 374
    .line 375
    .line 376
    move-result p1

    .line 377
    if-nez p1, :cond_17

    .line 378
    .line 379
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->z:Landroid/widget/EdgeEffect;

    .line 380
    .line 381
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 382
    .line 383
    .line 384
    :cond_17
    return v4
.end method

.method public final onLayout(ZIIII)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    sub-int v2, p4, p2

    .line 8
    .line 9
    sub-int v3, p5, p3

    .line 10
    .line 11
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    .line 28
    .line 29
    .line 30
    move-result v8

    .line 31
    const/4 v9, 0x0

    .line 32
    const/4 v10, 0x0

    .line 33
    :goto_0
    const/16 v11, 0x8

    .line 34
    .line 35
    if-ge v9, v1, :cond_7

    .line 36
    .line 37
    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v12

    .line 41
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    .line 42
    .line 43
    .line 44
    move-result v13

    .line 45
    if-eq v13, v11, :cond_6

    .line 46
    .line 47
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 48
    .line 49
    .line 50
    move-result-object v11

    .line 51
    check-cast v11, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    .line 52
    .line 53
    iget-boolean v13, v11, Landroidx/viewpager/widget/ViewPager$LayoutParams;->a:Z

    .line 54
    .line 55
    if-eqz v13, :cond_6

    .line 56
    .line 57
    iget v11, v11, Landroidx/viewpager/widget/ViewPager$LayoutParams;->b:I

    .line 58
    .line 59
    and-int/lit8 v13, v11, 0x7

    .line 60
    .line 61
    and-int/lit8 v11, v11, 0x70

    .line 62
    .line 63
    const/4 v14, 0x1

    .line 64
    if-eq v13, v14, :cond_2

    .line 65
    .line 66
    const/4 v14, 0x3

    .line 67
    if-eq v13, v14, :cond_1

    .line 68
    .line 69
    const/4 v14, 0x5

    .line 70
    if-eq v13, v14, :cond_0

    .line 71
    .line 72
    move v13, v4

    .line 73
    goto :goto_2

    .line 74
    :cond_0
    sub-int v13, v2, v6

    .line 75
    .line 76
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    .line 77
    .line 78
    .line 79
    move-result v14

    .line 80
    sub-int/2addr v13, v14

    .line 81
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    .line 82
    .line 83
    .line 84
    move-result v14

    .line 85
    add-int/2addr v6, v14

    .line 86
    goto :goto_1

    .line 87
    :cond_1
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    .line 88
    .line 89
    .line 90
    move-result v13

    .line 91
    add-int/2addr v13, v4

    .line 92
    goto :goto_2

    .line 93
    :cond_2
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    .line 94
    .line 95
    .line 96
    move-result v13

    .line 97
    sub-int v13, v2, v13

    .line 98
    .line 99
    div-int/lit8 v13, v13, 0x2

    .line 100
    .line 101
    invoke-static {v13, v4}, Ljava/lang/Math;->max(II)I

    .line 102
    .line 103
    .line 104
    move-result v13

    .line 105
    :goto_1
    move/from16 v16, v13

    .line 106
    .line 107
    move v13, v4

    .line 108
    move/from16 v4, v16

    .line 109
    .line 110
    :goto_2
    const/16 v14, 0x10

    .line 111
    .line 112
    if-eq v11, v14, :cond_5

    .line 113
    .line 114
    const/16 v14, 0x30

    .line 115
    .line 116
    if-eq v11, v14, :cond_4

    .line 117
    .line 118
    const/16 v14, 0x50

    .line 119
    .line 120
    if-eq v11, v14, :cond_3

    .line 121
    .line 122
    move v11, v5

    .line 123
    goto :goto_4

    .line 124
    :cond_3
    sub-int v11, v3, v7

    .line 125
    .line 126
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    .line 127
    .line 128
    .line 129
    move-result v14

    .line 130
    sub-int/2addr v11, v14

    .line 131
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    .line 132
    .line 133
    .line 134
    move-result v14

    .line 135
    add-int/2addr v7, v14

    .line 136
    goto :goto_3

    .line 137
    :cond_4
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    .line 138
    .line 139
    .line 140
    move-result v11

    .line 141
    add-int/2addr v11, v5

    .line 142
    goto :goto_4

    .line 143
    :cond_5
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    .line 144
    .line 145
    .line 146
    move-result v11

    .line 147
    sub-int v11, v3, v11

    .line 148
    .line 149
    div-int/lit8 v11, v11, 0x2

    .line 150
    .line 151
    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    .line 152
    .line 153
    .line 154
    move-result v11

    .line 155
    :goto_3
    move/from16 v16, v11

    .line 156
    .line 157
    move v11, v5

    .line 158
    move/from16 v5, v16

    .line 159
    .line 160
    :goto_4
    add-int/2addr v4, v8

    .line 161
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    .line 162
    .line 163
    .line 164
    move-result v14

    .line 165
    add-int/2addr v14, v4

    .line 166
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    .line 167
    .line 168
    .line 169
    move-result v15

    .line 170
    add-int/2addr v15, v5

    .line 171
    invoke-virtual {v12, v4, v5, v14, v15}, Landroid/view/View;->layout(IIII)V

    .line 172
    .line 173
    .line 174
    add-int/lit8 v10, v10, 0x1

    .line 175
    .line 176
    move v5, v11

    .line 177
    move v4, v13

    .line 178
    :cond_6
    add-int/lit8 v9, v9, 0x1

    .line 179
    .line 180
    goto/16 :goto_0

    .line 181
    .line 182
    :cond_7
    const/4 v2, 0x0

    .line 183
    :goto_5
    if-ge v2, v1, :cond_9

    .line 184
    .line 185
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 190
    .line 191
    .line 192
    move-result v4

    .line 193
    if-eq v4, v11, :cond_8

    .line 194
    .line 195
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    check-cast v3, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    .line 200
    .line 201
    iget-boolean v3, v3, Landroidx/viewpager/widget/ViewPager$LayoutParams;->a:Z

    .line 202
    .line 203
    if-nez v3, :cond_8

    .line 204
    .line 205
    invoke-virtual/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->e()V

    .line 206
    .line 207
    .line 208
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 209
    .line 210
    goto :goto_5

    .line 211
    :cond_9
    iput v10, v0, Landroidx/viewpager/widget/ViewPager;->C:I

    .line 212
    .line 213
    iget-boolean v1, v0, Landroidx/viewpager/widget/ViewPager;->A:Z

    .line 214
    .line 215
    if-eqz v1, :cond_b

    .line 216
    .line 217
    const/4 v1, 0x0

    .line 218
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->f(I)Le0/f;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    if-eqz v1, :cond_a

    .line 223
    .line 224
    invoke-direct/range {p0 .. p0}, Landroidx/viewpager/widget/ViewPager;->getClientWidth()I

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    int-to-float v2, v2

    .line 229
    iget v3, v0, Landroidx/viewpager/widget/ViewPager;->h:F

    .line 230
    .line 231
    iget v1, v1, Le0/f;->b:F

    .line 232
    .line 233
    iget v4, v0, Landroidx/viewpager/widget/ViewPager;->i:F

    .line 234
    .line 235
    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    mul-float/2addr v1, v2

    .line 244
    float-to-int v1, v1

    .line 245
    goto :goto_6

    .line 246
    :cond_a
    const/4 v1, 0x0

    .line 247
    :goto_6
    const/4 v2, 0x0

    .line 248
    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->c(Z)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->i(I)Z

    .line 255
    .line 256
    .line 257
    goto :goto_7

    .line 258
    :cond_b
    const/4 v2, 0x0

    .line 259
    :goto_7
    iput-boolean v2, v0, Landroidx/viewpager/widget/ViewPager;->A:Z

    .line 260
    .line 261
    return-void
.end method

.method public final onMeasure(II)V
    .locals 13

    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    move-result p1

    invoke-static {v0, p2}, Landroid/view/View;->getDefaultSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    div-int/lit8 p2, p1, 0xa

    iget v1, p0, Landroidx/viewpager/widget/ViewPager;->p:I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Landroidx/viewpager/widget/ViewPager;->q:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    move v2, v0

    :goto_0
    const/4 v3, 0x1

    const/16 v4, 0x8

    const/high16 v5, 0x40000000    # 2.0f

    if-ge v2, v1, :cond_c

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v4, :cond_b

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    if-eqz v4, :cond_b

    iget-boolean v7, v4, Landroidx/viewpager/widget/ViewPager$LayoutParams;->a:Z

    if-eqz v7, :cond_b

    iget v7, v4, Landroidx/viewpager/widget/ViewPager$LayoutParams;->b:I

    and-int/lit8 v8, v7, 0x7

    and-int/lit8 v7, v7, 0x70

    const/16 v9, 0x30

    if-eq v7, v9, :cond_1

    const/16 v9, 0x50

    if-ne v7, v9, :cond_0

    goto :goto_1

    :cond_0
    move v7, v0

    goto :goto_2

    :cond_1
    :goto_1
    move v7, v3

    :goto_2
    const/4 v9, 0x3

    if-eq v8, v9, :cond_3

    const/4 v9, 0x5

    if-ne v8, v9, :cond_2

    goto :goto_3

    :cond_2
    move v3, v0

    :cond_3
    :goto_3
    const/high16 v8, -0x80000000

    if-eqz v7, :cond_4

    move v9, v5

    goto :goto_4

    :cond_4
    move v9, v8

    if-eqz v3, :cond_5

    move v8, v5

    :cond_5
    :goto_4
    iget v10, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v11, -0x1

    const/4 v12, -0x2

    if-eq v10, v12, :cond_7

    if-eq v10, v11, :cond_6

    goto :goto_5

    :cond_6
    move v10, p1

    :goto_5
    move v9, v5

    goto :goto_6

    :cond_7
    move v10, p1

    :goto_6
    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v4, v12, :cond_9

    if-eq v4, v11, :cond_8

    goto :goto_7

    :cond_8
    move v4, p2

    goto :goto_7

    :cond_9
    move v4, p2

    move v5, v8

    :goto_7
    invoke-static {v10, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v6, v8, v4}, Landroid/view/View;->measure(II)V

    if-eqz v7, :cond_a

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr p2, v3

    goto :goto_8

    :cond_a
    if-eqz v3, :cond_b

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr p1, v3

    :cond_b
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_c
    invoke-static {p1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    invoke-static {p2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iput p2, p0, Landroidx/viewpager/widget/ViewPager;->j:I

    iput-boolean v3, p0, Landroidx/viewpager/widget/ViewPager;->k:Z

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->j()V

    iput-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->k:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    :goto_9
    if-ge v0, p2, :cond_f

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v4, :cond_e

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    if-eqz v2, :cond_d

    iget-boolean v3, v2, Landroidx/viewpager/widget/ViewPager$LayoutParams;->a:Z

    if-nez v3, :cond_e

    :cond_d
    int-to-float v3, p1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    mul-float/2addr v3, v2

    float-to-int v2, v3

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, p0, Landroidx/viewpager/widget/ViewPager;->j:I

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_f
    return-void
.end method

.method public final onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    move v1, p2

    move p2, v0

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p2, -0x1

    const/4 p1, -0x1

    move v1, p1

    :goto_0
    if-eq p2, v1, :cond_2

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->e()V

    :cond_1
    add-int/2addr p2, p1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Le0/k;

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
    check-cast p1, Le0/k;

    .line 10
    .line 11
    iget-object v0, p1, Ls/b;->a:Landroid/os/Parcelable;

    .line 12
    .line 13
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p1, Le0/k;->d:Landroid/os/Parcelable;

    .line 17
    .line 18
    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->d:Landroid/os/Parcelable;

    .line 19
    .line 20
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Le0/k;

    invoke-direct {v1, v0}, Le0/k;-><init>(Landroid/os/Parcelable;)V

    const/4 v0, 0x0

    iput v0, v1, Le0/k;->c:I

    return-object v1
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_0

    iget p2, p0, Landroidx/viewpager/widget/ViewPager;->f:I

    invoke-virtual {p0, p1, p3, p2, p2}, Landroidx/viewpager/widget/ViewPager;->k(IIII)V

    :cond_0
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    :cond_0
    return v1
.end method

.method public final removeView(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Landroidx/viewpager/widget/ViewPager;->k:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public setAdapter(Le0/a;)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->F:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->F:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const/4 v0, 0x0

    .line 18
    :goto_0
    if-ge v0, p1, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Landroidx/viewpager/widget/ViewPager;->F:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Le0/h;

    .line 27
    .line 28
    check-cast v1, Le0/c;

    .line 29
    .line 30
    iget-object v1, v1, Le0/c;->a:Landroidx/viewpager/widget/PagerTitleStrip;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerTitleStrip;->a()V

    .line 33
    .line 34
    .line 35
    add-int/lit8 v0, v0, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 0

    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setScrollingCacheEnabled(Z)V

    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .locals 1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->m:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->m:I

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->j()V

    :cond_1
    return-void
.end method

.method public setOnPageChangeListener(Le0/i;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->D:Le0/i;

    return-void
.end method

.method public setPageMargin(I)V
    .locals 2

    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->f:I

    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->f:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0, v1, v1, p1, v0}, Landroidx/viewpager/widget/ViewPager;->k(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lk/a;->a:Ljava/lang/Object;

    .line 1
    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 3
    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager;->g:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setPageTransformer(ZLe0/j;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Landroidx/viewpager/widget/ViewPager;->setPageTransformer(ZLe0/j;I)V

    return-void
.end method

.method public setPageTransformer(ZLe0/j;I)V
    .locals 1

    .line 2
    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move p2, p3

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    const/4 p3, 0x2

    :cond_1
    iput p3, p0, Landroidx/viewpager/widget/ViewPager;->G:I

    goto :goto_1

    :cond_2
    iput v0, p0, Landroidx/viewpager/widget/ViewPager;->G:I

    :goto_1
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->j()V

    :cond_3
    return-void
.end method

.method public setScrollState(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/viewpager/widget/ViewPager;->J:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Landroidx/viewpager/widget/ViewPager;->J:I

    .line 7
    .line 8
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->D:Le0/i;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    check-cast p1, Le0/c;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    :cond_1
    iget-object p1, p0, Landroidx/viewpager/widget/ViewPager;->E:Le0/i;

    .line 18
    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    check-cast p1, Le0/c;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    :cond_2
    return-void
.end method

.method public final verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager;->g:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
