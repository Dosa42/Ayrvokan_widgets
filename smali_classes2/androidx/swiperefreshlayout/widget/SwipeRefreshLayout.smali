.class public Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# static fields
.field public static final K:[I


# instance fields
.field public A:Lb0/g;

.field public B:Lb0/g;

.field public C:Lb0/h;

.field public D:Lb0/h;

.field public E:Lb0/g;

.field public F:I

.field public G:Z

.field public final H:Lb0/f;

.field public final I:Lb0/g;

.field public final J:Lb0/g;

.field public a:Landroid/view/View;

.field public b:Z

.field public final c:I

.field public d:F

.field public e:F

.field public final f:Lp/e;

.field public final g:Lj/d;

.field public final h:[I

.field public final i:[I

.field public j:Z

.field public final k:I

.field public l:I

.field public m:F

.field public n:F

.field public o:Z

.field public p:I

.field public q:Z

.field public final r:Landroid/view/animation/DecelerateInterpolator;

.field public s:Lb0/a;

.field public t:I

.field public u:I

.field public v:F

.field public w:I

.field public x:I

.field public y:I

.field public z:Lb0/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const v0, 0x101000e

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->K:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->b:Z

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->d:F

    const/4 v1, 0x2

    new-array v2, v1, [I

    iput-object v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->h:[I

    new-array v2, v1, [I

    iput-object v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->i:[I

    const/4 v2, -0x1

    iput v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->p:I

    iput v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->t:I

    new-instance v2, Lb0/f;

    invoke-direct {v2, p0, v0}, Lb0/f;-><init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;I)V

    iput-object v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->H:Lb0/f;

    new-instance v2, Lb0/g;

    invoke-direct {v2, p0, v1}, Lb0/g;-><init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;I)V

    iput-object v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->I:Lb0/g;

    new-instance v1, Lb0/g;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lb0/g;-><init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;I)V

    iput-object v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->J:Lb0/g;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->c:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->k:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->r:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x42200000    # 40.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->F:I

    .line 2
    new-instance v2, Lb0/a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lb0/a;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->s:Lb0/a;

    new-instance v2, Lb0/e;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lb0/e;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->z:Lb0/e;

    const/high16 v3, 0x40200000    # 2.5f

    const/high16 v4, 0x40f00000    # 7.5f

    const/high16 v5, 0x41200000    # 10.0f

    const/high16 v6, 0x40a00000    # 5.0f

    .line 3
    invoke-virtual {v2, v4, v3, v5, v6}, Lb0/e;->b(FFFF)V

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 4
    iget-object v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->s:Lb0/a;

    iget-object v3, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->z:Lb0/e;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->s:Lb0/a;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->s:Lb0/a;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v2, 0x1

    .line 5
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    const/high16 v3, 0x42800000    # 64.0f

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->x:I

    int-to-float v1, v1

    iput v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->d:F

    new-instance v1, Lp/e;

    invoke-direct {v1}, Lp/e;-><init>()V

    iput-object v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->f:Lp/e;

    new-instance v1, Lj/d;

    invoke-direct {v1, p0}, Lj/d;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->g:Lj/d;

    invoke-virtual {p0, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setNestedScrollingEnabled(Z)V

    iget v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->F:I

    neg-int v1, v1

    iput v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->l:I

    iput v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->w:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->e(F)V

    sget-object v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->K:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private setColorViewAlpha(I)V
    .locals 1

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->s:Lb0/a;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->z:Lb0/e;

    invoke-virtual {v0, p1}, Lb0/e;->setAlpha(I)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->a:Landroid/view/View;

    .line 2
    .line 3
    instance-of v1, v0, Landroid/widget/ListView;

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Landroid/widget/ListView;

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->canScrollList(I)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    return v0

    .line 15
    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->a:Landroid/view/View;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->s:Lb0/a;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iput-object v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->a:Landroid/view/View;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final c(F)V
    .locals 5

    .line 1
    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->d:F

    .line 2
    .line 3
    cmpl-float p1, p1, v0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    if-lez p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, v0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->g(ZZ)V

    .line 9
    .line 10
    .line 11
    goto/16 :goto_2

    .line 12
    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->b:Z

    .line 15
    .line 16
    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->z:Lb0/e;

    .line 17
    .line 18
    iget-object v2, v1, Lb0/e;->a:Lb0/d;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    iput v3, v2, Lb0/d;->e:F

    .line 22
    .line 23
    iput v3, v2, Lb0/d;->f:F

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 26
    .line 27
    .line 28
    iget-boolean v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->q:Z

    .line 29
    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    new-instance v2, Lb0/f;

    .line 33
    .line 34
    invoke-direct {v2, p0, v0}, Lb0/f;-><init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;I)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v2, 0x0

    .line 39
    :goto_0
    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->l:I

    .line 40
    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    iput v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->u:I

    .line 44
    .line 45
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->s:Lb0/a;

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    iput v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->v:F

    .line 52
    .line 53
    new-instance v0, Lb0/g;

    .line 54
    .line 55
    const/4 v1, 0x4

    .line 56
    invoke-direct {v0, p0, v1}, Lb0/g;-><init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;I)V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->E:Lb0/g;

    .line 60
    .line 61
    const-wide/16 v3, 0x96

    .line 62
    .line 63
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 64
    .line 65
    .line 66
    if-eqz v2, :cond_2

    .line 67
    .line 68
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->s:Lb0/a;

    .line 69
    .line 70
    iput-object v2, v0, Lb0/a;->a:Landroid/view/animation/Animation$AnimationListener;

    .line 71
    .line 72
    :cond_2
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->s:Lb0/a;

    .line 73
    .line 74
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->s:Lb0/a;

    .line 78
    .line 79
    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->E:Lb0/g;

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    iput v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->u:I

    .line 86
    .line 87
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->J:Lb0/g;

    .line 88
    .line 89
    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 90
    .line 91
    .line 92
    const-wide/16 v3, 0xc8

    .line 93
    .line 94
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 95
    .line 96
    .line 97
    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->r:Landroid/view/animation/DecelerateInterpolator;

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 100
    .line 101
    .line 102
    if-eqz v2, :cond_4

    .line 103
    .line 104
    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->s:Lb0/a;

    .line 105
    .line 106
    iput-object v2, v1, Lb0/a;->a:Landroid/view/animation/Animation$AnimationListener;

    .line 107
    .line 108
    :cond_4
    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->s:Lb0/a;

    .line 109
    .line 110
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 111
    .line 112
    .line 113
    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->s:Lb0/a;

    .line 114
    .line 115
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 116
    .line 117
    .line 118
    :goto_1
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->z:Lb0/e;

    .line 119
    .line 120
    iget-object v1, v0, Lb0/e;->a:Lb0/d;

    .line 121
    .line 122
    iget-boolean v2, v1, Lb0/d;->n:Z

    .line 123
    .line 124
    if-eqz v2, :cond_5

    .line 125
    .line 126
    iput-boolean p1, v1, Lb0/d;->n:Z

    .line 127
    .line 128
    :cond_5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 129
    .line 130
    .line 131
    :goto_2
    return-void
.end method

.method public final d(F)V
    .locals 13

    .line 1
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->z:Lb0/e;

    .line 2
    .line 3
    iget-object v1, v0, Lb0/e;->a:Lb0/d;

    .line 4
    .line 5
    iget-boolean v2, v1, Lb0/d;->n:Z

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    if-eq v2, v3, :cond_0

    .line 9
    .line 10
    iput-boolean v3, v1, Lb0/d;->n:Z

    .line 11
    .line 12
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 13
    .line 14
    .line 15
    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->d:F

    .line 16
    .line 17
    div-float v0, p1, v0

    .line 18
    .line 19
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/high16 v1, 0x3f800000    # 1.0f

    .line 24
    .line 25
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    float-to-double v4, v0

    .line 30
    const-wide v6, 0x3fd999999999999aL    # 0.4

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    sub-double/2addr v4, v6

    .line 36
    const-wide/16 v6, 0x0

    .line 37
    .line 38
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    .line 39
    .line 40
    .line 41
    move-result-wide v4

    .line 42
    double-to-float v2, v4

    .line 43
    const/high16 v4, 0x40a00000    # 5.0f

    .line 44
    .line 45
    mul-float/2addr v2, v4

    .line 46
    const/high16 v4, 0x40400000    # 3.0f

    .line 47
    .line 48
    div-float/2addr v2, v4

    .line 49
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    iget v5, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->d:F

    .line 54
    .line 55
    sub-float/2addr v4, v5

    .line 56
    iget v5, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->y:I

    .line 57
    .line 58
    if-lez v5, :cond_1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    iget-boolean v5, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->G:Z

    .line 62
    .line 63
    if-eqz v5, :cond_2

    .line 64
    .line 65
    iget v5, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->x:I

    .line 66
    .line 67
    iget v6, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->w:I

    .line 68
    .line 69
    sub-int/2addr v5, v6

    .line 70
    goto :goto_0

    .line 71
    :cond_2
    iget v5, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->x:I

    .line 72
    .line 73
    :goto_0
    int-to-float v5, v5

    .line 74
    const/high16 v6, 0x40000000    # 2.0f

    .line 75
    .line 76
    mul-float v7, v5, v6

    .line 77
    .line 78
    invoke-static {v4, v7}, Ljava/lang/Math;->min(FF)F

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    div-float/2addr v4, v5

    .line 83
    const/4 v7, 0x0

    .line 84
    invoke-static {v7, v4}, Ljava/lang/Math;->max(FF)F

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    const/high16 v8, 0x40800000    # 4.0f

    .line 89
    .line 90
    div-float/2addr v4, v8

    .line 91
    float-to-double v8, v4

    .line 92
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 93
    .line 94
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 95
    .line 96
    .line 97
    move-result-wide v10

    .line 98
    sub-double/2addr v8, v10

    .line 99
    double-to-float v4, v8

    .line 100
    mul-float/2addr v4, v6

    .line 101
    mul-float v8, v5, v4

    .line 102
    .line 103
    mul-float/2addr v8, v6

    .line 104
    iget v9, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->w:I

    .line 105
    .line 106
    mul-float/2addr v5, v0

    .line 107
    add-float/2addr v5, v8

    .line 108
    float-to-int v0, v5

    .line 109
    add-int/2addr v9, v0

    .line 110
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->s:Lb0/a;

    .line 111
    .line 112
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    const/4 v5, 0x0

    .line 117
    if-eqz v0, :cond_3

    .line 118
    .line 119
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->s:Lb0/a;

    .line 120
    .line 121
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 122
    .line 123
    .line 124
    :cond_3
    iget-boolean v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->q:Z

    .line 125
    .line 126
    if-nez v0, :cond_4

    .line 127
    .line 128
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->s:Lb0/a;

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 131
    .line 132
    .line 133
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->s:Lb0/a;

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 136
    .line 137
    .line 138
    :cond_4
    iget-boolean v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->q:Z

    .line 139
    .line 140
    if-eqz v0, :cond_5

    .line 141
    .line 142
    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->d:F

    .line 143
    .line 144
    div-float v0, p1, v0

    .line 145
    .line 146
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setAnimationProgress(F)V

    .line 151
    .line 152
    .line 153
    :cond_5
    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->d:F

    .line 154
    .line 155
    cmpg-float p1, p1, v0

    .line 156
    .line 157
    const/4 v0, 0x0

    .line 158
    const-wide/16 v10, 0x12c

    .line 159
    .line 160
    if-gez p1, :cond_7

    .line 161
    .line 162
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->z:Lb0/e;

    .line 163
    .line 164
    iget-object p1, p1, Lb0/e;->a:Lb0/d;

    .line 165
    .line 166
    iget p1, p1, Lb0/d;->t:I

    .line 167
    .line 168
    const/16 v8, 0x4c

    .line 169
    .line 170
    if-le p1, v8, :cond_9

    .line 171
    .line 172
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->C:Lb0/h;

    .line 173
    .line 174
    if-eqz p1, :cond_6

    .line 175
    .line 176
    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasStarted()Z

    .line 177
    .line 178
    .line 179
    move-result v12

    .line 180
    if-eqz v12, :cond_6

    .line 181
    .line 182
    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasEnded()Z

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    if-nez p1, :cond_6

    .line 187
    .line 188
    goto :goto_1

    .line 189
    :cond_6
    move v3, v5

    .line 190
    :goto_1
    if-nez v3, :cond_9

    .line 191
    .line 192
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->z:Lb0/e;

    .line 193
    .line 194
    iget-object p1, p1, Lb0/e;->a:Lb0/d;

    .line 195
    .line 196
    iget p1, p1, Lb0/d;->t:I

    .line 197
    .line 198
    new-instance v3, Lb0/h;

    .line 199
    .line 200
    invoke-direct {v3, p0, p1, v8}, Lb0/h;-><init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;II)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v3, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 204
    .line 205
    .line 206
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->s:Lb0/a;

    .line 207
    .line 208
    iput-object v0, p1, Lb0/a;->a:Landroid/view/animation/Animation$AnimationListener;

    .line 209
    .line 210
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 211
    .line 212
    .line 213
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->s:Lb0/a;

    .line 214
    .line 215
    invoke-virtual {p1, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 216
    .line 217
    .line 218
    iput-object v3, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->C:Lb0/h;

    .line 219
    .line 220
    goto :goto_3

    .line 221
    :cond_7
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->z:Lb0/e;

    .line 222
    .line 223
    iget-object p1, p1, Lb0/e;->a:Lb0/d;

    .line 224
    .line 225
    iget p1, p1, Lb0/d;->t:I

    .line 226
    .line 227
    const/16 v8, 0xff

    .line 228
    .line 229
    if-ge p1, v8, :cond_9

    .line 230
    .line 231
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->D:Lb0/h;

    .line 232
    .line 233
    if-eqz p1, :cond_8

    .line 234
    .line 235
    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasStarted()Z

    .line 236
    .line 237
    .line 238
    move-result v12

    .line 239
    if-eqz v12, :cond_8

    .line 240
    .line 241
    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasEnded()Z

    .line 242
    .line 243
    .line 244
    move-result p1

    .line 245
    if-nez p1, :cond_8

    .line 246
    .line 247
    goto :goto_2

    .line 248
    :cond_8
    move v3, v5

    .line 249
    :goto_2
    if-nez v3, :cond_9

    .line 250
    .line 251
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->z:Lb0/e;

    .line 252
    .line 253
    iget-object p1, p1, Lb0/e;->a:Lb0/d;

    .line 254
    .line 255
    iget p1, p1, Lb0/d;->t:I

    .line 256
    .line 257
    new-instance v3, Lb0/h;

    .line 258
    .line 259
    invoke-direct {v3, p0, p1, v8}, Lb0/h;-><init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;II)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v3, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 263
    .line 264
    .line 265
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->s:Lb0/a;

    .line 266
    .line 267
    iput-object v0, p1, Lb0/a;->a:Landroid/view/animation/Animation$AnimationListener;

    .line 268
    .line 269
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 270
    .line 271
    .line 272
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->s:Lb0/a;

    .line 273
    .line 274
    invoke-virtual {p1, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 275
    .line 276
    .line 277
    iput-object v3, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->D:Lb0/h;

    .line 278
    .line 279
    :cond_9
    :goto_3
    const p1, 0x3f4ccccd    # 0.8f

    .line 280
    .line 281
    .line 282
    mul-float v0, v2, p1

    .line 283
    .line 284
    iget-object v3, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->z:Lb0/e;

    .line 285
    .line 286
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    .line 287
    .line 288
    .line 289
    move-result p1

    .line 290
    iget-object v0, v3, Lb0/e;->a:Lb0/d;

    .line 291
    .line 292
    iput v7, v0, Lb0/d;->e:F

    .line 293
    .line 294
    iput p1, v0, Lb0/d;->f:F

    .line 295
    .line 296
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 297
    .line 298
    .line 299
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->z:Lb0/e;

    .line 300
    .line 301
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    .line 302
    .line 303
    .line 304
    move-result v0

    .line 305
    iget-object v1, p1, Lb0/e;->a:Lb0/d;

    .line 306
    .line 307
    iget v3, v1, Lb0/d;->p:F

    .line 308
    .line 309
    cmpl-float v3, v0, v3

    .line 310
    .line 311
    if-eqz v3, :cond_a

    .line 312
    .line 313
    iput v0, v1, Lb0/d;->p:F

    .line 314
    .line 315
    :cond_a
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 316
    .line 317
    .line 318
    const p1, 0x3ecccccd    # 0.4f

    .line 319
    .line 320
    .line 321
    mul-float/2addr v2, p1

    .line 322
    const/high16 p1, -0x41800000    # -0.25f

    .line 323
    .line 324
    add-float/2addr v2, p1

    .line 325
    mul-float/2addr v4, v6

    .line 326
    add-float/2addr v4, v2

    .line 327
    const/high16 p1, 0x3f000000    # 0.5f

    .line 328
    .line 329
    mul-float/2addr v4, p1

    .line 330
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->z:Lb0/e;

    .line 331
    .line 332
    iget-object v0, p1, Lb0/e;->a:Lb0/d;

    .line 333
    .line 334
    iput v4, v0, Lb0/d;->g:F

    .line 335
    .line 336
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 337
    .line 338
    .line 339
    iget p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->l:I

    .line 340
    .line 341
    sub-int/2addr v9, p1

    .line 342
    invoke-virtual {p0, v9}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    .line 343
    .line 344
    .line 345
    return-void
.end method

.method public final dispatchNestedFling(FFZ)Z
    .locals 1

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->g:Lj/d;

    invoke-virtual {v0, p1, p2, p3}, Lj/d;->a(FFZ)Z

    move-result p1

    return p1
.end method

.method public final dispatchNestedPreFling(FF)Z
    .locals 1

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->g:Lj/d;

    invoke-virtual {v0, p1, p2}, Lj/d;->b(FF)Z

    move-result p1

    return p1
.end method

.method public final dispatchNestedPreScroll(II[I[I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->g:Lj/d;

    .line 2
    .line 3
    const/4 v3, 0x0

    .line 4
    move v1, p1

    .line 5
    move v2, p2

    .line 6
    move-object v4, p3

    .line 7
    move-object v5, p4

    .line 8
    invoke-virtual/range {v0 .. v5}, Lj/d;->c(III[I[I)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public final dispatchNestedScroll(IIII[I)Z
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->g:Lj/d;

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    const/4 v7, 0x0

    .line 5
    move v1, p1

    .line 6
    move v2, p2

    .line 7
    move v3, p3

    .line 8
    move v4, p4

    .line 9
    move-object v5, p5

    .line 10
    invoke-virtual/range {v0 .. v7}, Lj/d;->e(IIII[II[I)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public final e(F)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->u:I

    iget v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->w:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int p1, v1

    add-int/2addr v0, p1

    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->s:Lb0/a;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    return-void
.end method

.method public final f()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->s:Lb0/a;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->z:Lb0/e;

    invoke-virtual {v0}, Lb0/e;->stop()V

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->s:Lb0/a;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/16 v0, 0xff

    invoke-direct {p0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorViewAlpha(I)V

    iget-boolean v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->q:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setAnimationProgress(F)V

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->w:I

    iget v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->l:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    :goto_0
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->s:Lb0/a;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->l:I

    return-void
.end method

.method public final g(ZZ)V
    .locals 2

    .line 1
    iget-boolean p2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->b:Z

    .line 2
    .line 3
    if-eq p2, p1, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->b()V

    .line 6
    .line 7
    .line 8
    iput-boolean p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->b:Z

    .line 9
    .line 10
    iget-object p2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->H:Lb0/f;

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iget p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->l:I

    .line 15
    .line 16
    iput p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->u:I

    .line 17
    .line 18
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->I:Lb0/g;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/animation/Animation;->reset()V

    .line 21
    .line 22
    .line 23
    const-wide/16 v0, 0xc8

    .line 24
    .line 25
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->r:Landroid/view/animation/DecelerateInterpolator;

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 31
    .line 32
    .line 33
    if-eqz p2, :cond_0

    .line 34
    .line 35
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->s:Lb0/a;

    .line 36
    .line 37
    iput-object p2, v0, Lb0/a;->a:Landroid/view/animation/Animation$AnimationListener;

    .line 38
    .line 39
    :cond_0
    iget-object p2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->s:Lb0/a;

    .line 40
    .line 41
    invoke-virtual {p2}, Landroid/view/View;->clearAnimation()V

    .line 42
    .line 43
    .line 44
    iget-object p2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->s:Lb0/a;

    .line 45
    .line 46
    invoke-virtual {p2, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    new-instance p1, Lb0/g;

    .line 51
    .line 52
    const/4 v0, 0x1

    .line 53
    invoke-direct {p1, p0, v0}, Lb0/g;-><init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;I)V

    .line 54
    .line 55
    .line 56
    iput-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->B:Lb0/g;

    .line 57
    .line 58
    const-wide/16 v0, 0x96

    .line 59
    .line 60
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->s:Lb0/a;

    .line 64
    .line 65
    iput-object p2, p1, Lb0/a;->a:Landroid/view/animation/Animation$AnimationListener;

    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->s:Lb0/a;

    .line 71
    .line 72
    iget-object p2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->B:Lb0/g;

    .line 73
    .line 74
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 75
    .line 76
    .line 77
    :cond_2
    :goto_0
    return-void
.end method

.method public final getChildDrawingOrder(II)I
    .locals 1

    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->t:I

    if-gez v0, :cond_0

    return p2

    :cond_0
    add-int/lit8 p1, p1, -0x1

    if-ne p2, p1, :cond_1

    return v0

    :cond_1
    if-lt p2, v0, :cond_2

    add-int/lit8 p2, p2, 0x1

    :cond_2
    return p2
.end method

.method public getNestedScrollAxes()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->f:Lp/e;

    .line 2
    .line 3
    iget v1, v0, Lp/e;->a:I

    .line 4
    .line 5
    iget v0, v0, Lp/e;->b:I

    .line 6
    .line 7
    or-int/2addr v0, v1

    .line 8
    return v0
.end method

.method public getProgressCircleDiameter()I
    .locals 1

    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->F:I

    return v0
.end method

.method public getProgressViewEndOffset()I
    .locals 1

    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->x:I

    return v0
.end method

.method public getProgressViewStartOffset()I
    .locals 1

    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->w:I

    return v0
.end method

.method public final h(F)V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->n:F

    sub-float/2addr p1, v0

    iget v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->c:I

    int-to-float v2, v1

    cmpl-float p1, p1, v2

    if-lez p1, :cond_0

    iget-boolean p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->o:Z

    if-nez p1, :cond_0

    int-to-float p1, v1

    add-float/2addr v0, p1

    iput v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->m:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->o:Z

    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->z:Lb0/e;

    const/16 v0, 0x4c

    invoke-virtual {p1, v0}, Lb0/e;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method public final hasNestedScrollingParent()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->g:Lj/d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lj/d;->f(I)Landroid/view/ViewParent;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    :cond_0
    return v1
.end method

.method public final isNestedScrollingEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->g:Lj/d;

    .line 2
    .line 3
    iget-boolean v0, v0, Lj/d;->a:Z

    .line 4
    .line 5
    return v0
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->f()V

    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->b()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_a

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->a()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_a

    .line 20
    .line 21
    iget-boolean v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->b:Z

    .line 22
    .line 23
    if-nez v1, :cond_a

    .line 24
    .line 25
    iget-boolean v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->j:Z

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    if-eqz v0, :cond_7

    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    const/4 v3, -0x1

    .line 34
    if-eq v0, v1, :cond_6

    .line 35
    .line 36
    const/4 v4, 0x2

    .line 37
    if-eq v0, v4, :cond_3

    .line 38
    .line 39
    const/4 v4, 0x3

    .line 40
    if-eq v0, v4, :cond_6

    .line 41
    .line 42
    const/4 v3, 0x6

    .line 43
    if-eq v0, v3, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    iget v4, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->p:I

    .line 55
    .line 56
    if-ne v3, v4, :cond_9

    .line 57
    .line 58
    if-nez v0, :cond_2

    .line 59
    .line 60
    move v2, v1

    .line 61
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    iput p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->p:I

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->p:I

    .line 69
    .line 70
    if-ne v0, v3, :cond_4

    .line 71
    .line 72
    return v2

    .line 73
    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-gez v0, :cond_5

    .line 78
    .line 79
    return v2

    .line 80
    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    invoke-virtual {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->h(F)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_6
    iput-boolean v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->o:Z

    .line 89
    .line 90
    iput v3, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->p:I

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_7
    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->w:I

    .line 94
    .line 95
    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->s:Lb0/a;

    .line 96
    .line 97
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    sub-int/2addr v0, v1

    .line 102
    invoke-virtual {p0, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    iput v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->p:I

    .line 110
    .line 111
    iput-boolean v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->o:Z

    .line 112
    .line 113
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-gez v0, :cond_8

    .line 118
    .line 119
    return v2

    .line 120
    :cond_8
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    iput p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->n:F

    .line 125
    .line 126
    :cond_9
    :goto_0
    iget-boolean p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->o:Z

    .line 127
    .line 128
    return p1

    .line 129
    :cond_a
    :goto_1
    return v2
.end method

.method public final onLayout(ZIIII)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget-object p3, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->a:Landroid/view/View;

    if-nez p3, :cond_1

    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->b()V

    :cond_1
    iget-object p3, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->a:Landroid/view/View;

    if-nez p3, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr p2, v1

    add-int/2addr v0, p4

    add-int/2addr p2, p5

    invoke-virtual {p3, p4, p5, v0, p2}, Landroid/view/View;->layout(IIII)V

    iget-object p2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->s:Lb0/a;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    iget-object p3, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->s:Lb0/a;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    iget-object p4, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->s:Lb0/a;

    div-int/lit8 p1, p1, 0x2

    div-int/lit8 p2, p2, 0x2

    sub-int p5, p1, p2

    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->l:I

    add-int/2addr p1, p2

    add-int/2addr p3, v0

    invoke-virtual {p4, p5, v0, p1, p3}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->a:Landroid/view/View;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->b()V

    :cond_0
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->a:Landroid/view/View;

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/view/View;->measure(II)V

    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->s:Lb0/a;

    iget p2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->F:I

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->F:I

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V

    const/4 p1, -0x1

    iput p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->t:I

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_3

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->s:Lb0/a;

    if-ne p2, v0, :cond_2

    iput p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->t:I

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public final onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0

    invoke-virtual {p0, p2, p3, p4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->dispatchNestedFling(FFZ)Z

    move-result p1

    return p1
.end method

.method public final onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0

    invoke-virtual {p0, p2, p3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->dispatchNestedPreFling(FF)Z

    move-result p1

    return p1
.end method

.method public final onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 4

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-lez p3, :cond_1

    iget v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->e:F

    cmpl-float v2, v1, p1

    if-lez v2, :cond_1

    int-to-float v2, p3

    cmpl-float v3, v2, v1

    if-lez v3, :cond_0

    float-to-int v1, v1

    sub-int v1, p3, v1

    aput v1, p4, v0

    iput p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->e:F

    goto :goto_0

    :cond_0
    sub-float/2addr v1, v2

    iput v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->e:F

    aput p3, p4, v0

    :goto_0
    iget v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->e:F

    invoke-virtual {p0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->d(F)V

    :cond_1
    iget-boolean v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->G:Z

    if-eqz v1, :cond_2

    if-lez p3, :cond_2

    iget v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->e:F

    cmpl-float p1, v1, p1

    if-nez p1, :cond_2

    aget p1, p4, v0

    sub-int p1, p3, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->s:Lb0/a;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const/4 p1, 0x0

    aget v1, p4, p1

    sub-int/2addr p2, v1

    aget v1, p4, v0

    sub-int/2addr p3, v1

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->h:[I

    invoke-virtual {p0, p2, p3, v2, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->dispatchNestedPreScroll(II[I[I)Z

    move-result p2

    if-eqz p2, :cond_3

    aget p2, p4, p1

    aget p3, v2, p1

    add-int/2addr p2, p3

    aput p2, p4, p1

    aget p1, p4, v0

    aget p2, v2, v0

    add-int/2addr p1, p2

    aput p1, p4, v0

    :cond_3
    return-void
.end method

.method public final onNestedScroll(Landroid/view/View;IIII)V
    .locals 6

    iget-object v5, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->i:[I

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->dispatchNestedScroll(IIII[I)Z

    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->i:[I

    const/4 p2, 0x1

    aget p1, p1, p2

    add-int/2addr p5, p1

    if-gez p5, :cond_0

    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->a()Z

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->e:F

    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p1, p2

    iput p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->e:F

    invoke-virtual {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->d(F)V

    :cond_0
    return-void
.end method

.method public final onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->f:Lp/e;

    .line 2
    .line 3
    iput p3, p1, Lp/e;->a:I

    .line 4
    .line 5
    and-int/lit8 p1, p3, 0x2

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->startNestedScroll(I)Z

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->e:F

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->j:Z

    .line 15
    .line 16
    return-void
.end method

.method public final onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->b:Z

    if-nez p1, :cond_0

    and-int/lit8 p1, p3, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final onStopNestedScroll(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->f:Lp/e;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput v0, p1, Lp/e;->a:I

    .line 5
    .line 6
    iput-boolean v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->j:Z

    .line 7
    .line 8
    iget p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->e:F

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    cmpl-float v1, p1, v0

    .line 12
    .line 13
    if-lez v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->c(F)V

    .line 16
    .line 17
    .line 18
    iput v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->e:F

    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->stopNestedScroll()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_e

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->a()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_e

    .line 17
    .line 18
    iget-boolean v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->b:Z

    .line 19
    .line 20
    if-nez v1, :cond_e

    .line 21
    .line 22
    iget-boolean v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->j:Z

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    goto/16 :goto_1

    .line 27
    .line 28
    :cond_0
    const/4 v1, 0x1

    .line 29
    if-eqz v0, :cond_c

    .line 30
    .line 31
    const/high16 v3, 0x3f000000    # 0.5f

    .line 32
    .line 33
    if-eq v0, v1, :cond_9

    .line 34
    .line 35
    const/4 v4, 0x2

    .line 36
    if-eq v0, v4, :cond_6

    .line 37
    .line 38
    const/4 v3, 0x3

    .line 39
    if-eq v0, v3, :cond_5

    .line 40
    .line 41
    const/4 v3, 0x5

    .line 42
    if-eq v0, v3, :cond_3

    .line 43
    .line 44
    const/4 v3, 0x6

    .line 45
    if-eq v0, v3, :cond_1

    .line 46
    .line 47
    goto/16 :goto_0

    .line 48
    .line 49
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    iget v4, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->p:I

    .line 58
    .line 59
    if-ne v3, v4, :cond_d

    .line 60
    .line 61
    if-nez v0, :cond_2

    .line 62
    .line 63
    move v2, v1

    .line 64
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    iput p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->p:I

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-gez v0, :cond_4

    .line 76
    .line 77
    return v2

    .line 78
    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    iput p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->p:I

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_5
    return v2

    .line 86
    :cond_6
    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->p:I

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-gez v0, :cond_7

    .line 93
    .line 94
    return v2

    .line 95
    :cond_7
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    invoke-virtual {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->h(F)V

    .line 100
    .line 101
    .line 102
    iget-boolean v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->o:Z

    .line 103
    .line 104
    if-eqz v0, :cond_d

    .line 105
    .line 106
    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->m:F

    .line 107
    .line 108
    sub-float/2addr p1, v0

    .line 109
    mul-float/2addr p1, v3

    .line 110
    const/4 v0, 0x0

    .line 111
    cmpl-float v0, p1, v0

    .line 112
    .line 113
    if-lez v0, :cond_8

    .line 114
    .line 115
    invoke-virtual {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->d(F)V

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_8
    return v2

    .line 120
    :cond_9
    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->p:I

    .line 121
    .line 122
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-gez v0, :cond_a

    .line 127
    .line 128
    return v2

    .line 129
    :cond_a
    iget-boolean v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->o:Z

    .line 130
    .line 131
    if-eqz v1, :cond_b

    .line 132
    .line 133
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->m:F

    .line 138
    .line 139
    sub-float/2addr p1, v0

    .line 140
    mul-float/2addr p1, v3

    .line 141
    iput-boolean v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->o:Z

    .line 142
    .line 143
    invoke-virtual {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->c(F)V

    .line 144
    .line 145
    .line 146
    :cond_b
    const/4 p1, -0x1

    .line 147
    iput p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->p:I

    .line 148
    .line 149
    return v2

    .line 150
    :cond_c
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    iput p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->p:I

    .line 155
    .line 156
    iput-boolean v2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->o:Z

    .line 157
    .line 158
    :cond_d
    :goto_0
    return v1

    .line 159
    :cond_e
    :goto_1
    return v2
.end method

.method public final requestDisallowInterceptTouchEvent(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->a:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lp/k;->a:Ljava/lang/reflect/Field;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->isNestedScrollingEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method public setAnimationProgress(F)V
    .locals 1

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->s:Lb0/a;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->s:Lb0/a;

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public varargs setColorScheme([I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeResources([I)V

    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->b()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->z:Lb0/e;

    .line 5
    .line 6
    iget-object v1, v0, Lb0/e;->a:Lb0/d;

    .line 7
    .line 8
    iput-object p1, v1, Lb0/d;->i:[I

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    invoke-virtual {v1, p1}, Lb0/d;->a(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Lb0/d;->a(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public varargs setColorSchemeResources([I)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, p1

    .line 6
    new-array v1, v1, [I

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    array-length v3, p1

    .line 10
    if-ge v2, v3, :cond_0

    .line 11
    .line 12
    aget v3, p1, v2

    .line 13
    .line 14
    sget-object v4, Lk/a;->a:Ljava/lang/Object;

    .line 15
    .line 16
    invoke-virtual {v0, v3}, Landroid/content/Context;->getColor(I)I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    aput v3, v1, v2

    .line 21
    .line 22
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public setDistanceToTriggerSync(I)V
    .locals 0

    int-to-float p1, p1

    iput p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->d:F

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->f()V

    :cond_0
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->g:Lj/d;

    .line 2
    .line 3
    iget-boolean v1, v0, Lj/d;->a:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    sget-object v1, Lp/k;->a:Ljava/lang/reflect/Field;

    .line 8
    .line 9
    iget-object v1, v0, Lj/d;->d:Landroid/view/View;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/view/View;->stopNestedScroll()V

    .line 12
    .line 13
    .line 14
    :cond_0
    iput-boolean p1, v0, Lj/d;->a:Z

    .line 15
    .line 16
    return-void
.end method

.method public setOnChildScrollUpCallback(Lb0/i;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setOnRefreshListener(Lb0/j;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setProgressBackgroundColor(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeResource(I)V

    return-void
.end method

.method public setProgressBackgroundColorSchemeColor(I)V
    .locals 1

    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->s:Lb0/a;

    invoke-virtual {v0, p1}, Lb0/a;->setBackgroundColor(I)V

    return-void
.end method

.method public setProgressBackgroundColorSchemeResource(I)V
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
    invoke-virtual {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeColor(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setProgressViewEndTarget(ZI)V
    .locals 0

    iput p2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->x:I

    iput-boolean p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->q:Z

    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->s:Lb0/a;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setProgressViewOffset(ZII)V
    .locals 0

    iput-boolean p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->q:Z

    iput p2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->w:I

    iput p3, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->x:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->G:Z

    invoke-virtual {p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->f()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->b:Z

    return-void
.end method

.method public setRefreshing(Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    iget-boolean v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->b:Z

    .line 5
    .line 6
    if-eq v1, p1, :cond_2

    .line 7
    .line 8
    iput-boolean p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->b:Z

    .line 9
    .line 10
    iget-boolean p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->G:Z

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    iget p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->x:I

    .line 15
    .line 16
    iget v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->w:I

    .line 17
    .line 18
    add-int/2addr p1, v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->x:I

    .line 21
    .line 22
    :goto_0
    iget v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->l:I

    .line 23
    .line 24
    sub-int/2addr p1, v1

    .line 25
    invoke-virtual {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->s:Lb0/a;

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->z:Lb0/e;

    .line 34
    .line 35
    const/16 v1, 0xff

    .line 36
    .line 37
    invoke-virtual {p1, v1}, Lb0/e;->setAlpha(I)V

    .line 38
    .line 39
    .line 40
    new-instance p1, Lb0/g;

    .line 41
    .line 42
    invoke-direct {p1, p0, v0}, Lb0/g;-><init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;I)V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->A:Lb0/g;

    .line 46
    .line 47
    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->k:I

    .line 48
    .line 49
    int-to-long v0, v0

    .line 50
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->H:Lb0/f;

    .line 54
    .line 55
    if-eqz p1, :cond_1

    .line 56
    .line 57
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->s:Lb0/a;

    .line 58
    .line 59
    iput-object p1, v0, Lb0/a;->a:Landroid/view/animation/Animation$AnimationListener;

    .line 60
    .line 61
    :cond_1
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->s:Lb0/a;

    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->s:Lb0/a;

    .line 67
    .line 68
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->A:Lb0/g;

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    invoke-virtual {p0, p1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->g(ZZ)V

    .line 75
    .line 76
    .line 77
    :goto_1
    return-void
.end method

.method public setSize(I)V
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    const/high16 v1, 0x42600000    # 56.0f

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/high16 v1, 0x42200000    # 40.0f

    .line 21
    .line 22
    :goto_0
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 23
    .line 24
    mul-float/2addr v0, v1

    .line 25
    float-to-int v0, v0

    .line 26
    iput v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->F:I

    .line 27
    .line 28
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->s:Lb0/a;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->z:Lb0/e;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    if-nez p1, :cond_2

    .line 40
    .line 41
    const/high16 p1, 0x41400000    # 12.0f

    .line 42
    .line 43
    const/high16 v1, 0x40c00000    # 6.0f

    .line 44
    .line 45
    const/high16 v2, 0x41300000    # 11.0f

    .line 46
    .line 47
    const/high16 v3, 0x40400000    # 3.0f

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    const/high16 p1, 0x41200000    # 10.0f

    .line 51
    .line 52
    const/high16 v1, 0x40a00000    # 5.0f

    .line 53
    .line 54
    const/high16 v2, 0x40f00000    # 7.5f

    .line 55
    .line 56
    const/high16 v3, 0x40200000    # 2.5f

    .line 57
    .line 58
    :goto_1
    invoke-virtual {v0, v2, v3, p1, v1}, Lb0/e;->b(FFFF)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->s:Lb0/a;

    .line 65
    .line 66
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->z:Lb0/e;

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public setSlingshotDistance(I)V
    .locals 0

    iput p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->y:I

    return-void
.end method

.method public setTargetOffsetTopAndBottom(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->s:Lb0/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->s:Lb0/a;

    .line 7
    .line 8
    sget-object v1, Lp/k;->a:Ljava/lang/reflect/Field;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->s:Lb0/a;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iput p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->l:I

    .line 20
    .line 21
    return-void
.end method

.method public final startNestedScroll(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->g:Lj/d;

    .line 3
    .line 4
    invoke-virtual {v1, p1, v0}, Lj/d;->h(II)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    return p1
.end method

.method public final stopNestedScroll()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->g:Lj/d;

    .line 3
    .line 4
    invoke-virtual {v1, v0}, Lj/d;->i(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
