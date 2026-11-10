.class public Landroidx/core/widget/NestedScrollView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lp/d;


# static fields
.field public static final A:[I

.field public static final z:Lr/b;


# instance fields
.field public a:J

.field public final b:Landroid/graphics/Rect;

.field public c:Landroid/widget/OverScroller;

.field public d:Landroid/widget/EdgeEffect;

.field public e:Landroid/widget/EdgeEffect;

.field public f:I

.field public g:Z

.field public h:Z

.field public i:Landroid/view/View;

.field public j:Z

.field public k:Landroid/view/VelocityTracker;

.field public l:Z

.field public m:Z

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public final r:[I

.field public final s:[I

.field public t:I

.field public u:I

.field public v:Lr/d;

.field public final w:Lp/e;

.field public final x:Lj/d;

.field public y:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lr/b;-><init>(I)V

    sput-object v0, Landroidx/core/widget/NestedScrollView;->z:Lr/b;

    const v0, 0x101017a

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroidx/core/widget/NestedScrollView;->A:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/core/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->g:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/core/widget/NestedScrollView;->h:Z

    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/core/widget/NestedScrollView;->i:Landroid/view/View;

    iput-boolean v1, p0, Landroidx/core/widget/NestedScrollView;->j:Z

    iput-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->m:Z

    const/4 v2, -0x1

    iput v2, p0, Landroidx/core/widget/NestedScrollView;->q:I

    const/4 v2, 0x2

    new-array v3, v2, [I

    iput-object v3, p0, Landroidx/core/widget/NestedScrollView;->r:[I

    new-array v2, v2, [I

    iput-object v2, p0, Landroidx/core/widget/NestedScrollView;->s:[I

    .line 3
    new-instance v2, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/widget/OverScroller;

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    const/high16 v2, 0x40000

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Landroidx/core/widget/NestedScrollView;->n:I

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroidx/core/widget/NestedScrollView;->o:I

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Landroidx/core/widget/NestedScrollView;->p:I

    .line 4
    sget-object v2, Landroidx/core/widget/NestedScrollView;->A:[I

    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/core/widget/NestedScrollView;->setFillViewport(Z)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p1, Lp/e;

    invoke-direct {p1}, Lp/e;-><init>()V

    iput-object p1, p0, Landroidx/core/widget/NestedScrollView;->w:Lp/e;

    new-instance p1, Lj/d;

    invoke-direct {p1, p0}, Lj/d;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Landroidx/core/widget/NestedScrollView;->x:Lj/d;

    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    sget-object p1, Landroidx/core/widget/NestedScrollView;->z:Lr/b;

    invoke-static {p0, p1}, Lp/k;->a(Landroid/view/View;Lp/b;)V

    return-void
.end method

.method private getVerticalScrollFactorCompat()F
    .locals 5

    iget v0, p0, Landroidx/core/widget/NestedScrollView;->y:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x101004d

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Landroidx/core/widget/NestedScrollView;->y:F

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expected theme to define listPreferredItemHeight."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget v0, p0, Landroidx/core/widget/NestedScrollView;->y:F

    return v0
.end method

.method public static m(Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast p0, Landroid/view/View;

    invoke-static {p0, p1}, Landroidx/core/widget/NestedScrollView;->m(Landroid/view/View;Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/View;II)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iget-object p2, p0, Landroidx/core/widget/NestedScrollView;->w:Lp/e;

    .line 3
    .line 4
    if-ne p4, p1, :cond_0

    .line 5
    .line 6
    iput p3, p2, Lp/e;->b:I

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iput p3, p2, Lp/e;->a:I

    .line 10
    .line 11
    :goto_0
    const/4 p1, 0x2

    .line 12
    invoke-virtual {p0, p1, p4}, Landroidx/core/widget/NestedScrollView;->u(II)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final addView(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ScrollView can host only one direct child"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final addView(Landroid/view/View;I)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ScrollView can host only one direct child"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ScrollView can host only one direct child"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ScrollView can host only one direct child"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(II)Z
    .locals 0

    .line 1
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final c(II[II)V
    .locals 6

    .line 1
    const/4 v5, 0x0

    .line 2
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->x:Lj/d;

    .line 3
    .line 4
    move v1, p1

    .line 5
    move v2, p2

    .line 6
    move v3, p4

    .line 7
    move-object v4, p3

    .line 8
    invoke-virtual/range {v0 .. v5}, Lj/d;->c(III[I[I)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final computeHorizontalScrollExtent()I
    .locals 1

    invoke-super {p0}, Landroid/view/View;->computeHorizontalScrollExtent()I

    move-result v0

    return v0
.end method

.method public final computeHorizontalScrollOffset()I
    .locals 1

    invoke-super {p0}, Landroid/view/View;->computeHorizontalScrollOffset()I

    move-result v0

    return v0
.end method

.method public final computeHorizontalScrollRange()I
    .locals 1

    invoke-super {p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v0

    return v0
.end method

.method public final computeScroll()V
    .locals 13

    .line 1
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/widget/OverScroller;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/widget/OverScroller;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/widget/OverScroller;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget v1, p0, Landroidx/core/widget/NestedScrollView;->u:I

    .line 22
    .line 23
    sub-int v1, v0, v1

    .line 24
    .line 25
    iput v0, p0, Landroidx/core/widget/NestedScrollView;->u:I

    .line 26
    .line 27
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->s:[I

    .line 28
    .line 29
    const/4 v10, 0x1

    .line 30
    const/4 v11, 0x0

    .line 31
    aput v11, v0, v10

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v7, 0x0

    .line 35
    const/4 v5, 0x1

    .line 36
    iget-object v2, p0, Landroidx/core/widget/NestedScrollView;->x:Lj/d;

    .line 37
    .line 38
    move v4, v1

    .line 39
    move-object v6, v0

    .line 40
    invoke-virtual/range {v2 .. v7}, Lj/d;->c(III[I[I)Z

    .line 41
    .line 42
    .line 43
    aget v2, v0, v10

    .line 44
    .line 45
    sub-int/2addr v1, v2

    .line 46
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    .line 47
    .line 48
    .line 49
    move-result v12

    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    invoke-virtual {p0, v1, v3, v2, v12}, Landroidx/core/widget/NestedScrollView;->q(IIII)Z

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    sub-int v4, v3, v2

    .line 68
    .line 69
    sub-int/2addr v1, v4

    .line 70
    aput v11, v0, v10

    .line 71
    .line 72
    iget-object v7, p0, Landroidx/core/widget/NestedScrollView;->r:[I

    .line 73
    .line 74
    const/4 v8, 0x1

    .line 75
    const/4 v3, 0x0

    .line 76
    const/4 v5, 0x0

    .line 77
    iget-object v2, p0, Landroidx/core/widget/NestedScrollView;->x:Lj/d;

    .line 78
    .line 79
    move v6, v1

    .line 80
    move-object v9, v0

    .line 81
    invoke-virtual/range {v2 .. v9}, Lj/d;->e(IIII[II[I)Z

    .line 82
    .line 83
    .line 84
    aget v0, v0, v10

    .line 85
    .line 86
    sub-int/2addr v1, v0

    .line 87
    :cond_1
    if-eqz v1, :cond_6

    .line 88
    .line 89
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_2

    .line 94
    .line 95
    if-ne v0, v10, :cond_3

    .line 96
    .line 97
    if-lez v12, :cond_3

    .line 98
    .line 99
    :cond_2
    move v11, v10

    .line 100
    :cond_3
    if-eqz v11, :cond_5

    .line 101
    .line 102
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->j()V

    .line 103
    .line 104
    .line 105
    if-gez v1, :cond_4

    .line 106
    .line 107
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/EdgeEffect;

    .line 108
    .line 109
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-eqz v0, :cond_5

    .line 114
    .line 115
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/EdgeEffect;

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_4
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->e:Landroid/widget/EdgeEffect;

    .line 119
    .line 120
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-eqz v0, :cond_5

    .line 125
    .line 126
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->e:Landroid/widget/EdgeEffect;

    .line 127
    .line 128
    :goto_0
    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/widget/OverScroller;

    .line 129
    .line 130
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    float-to-int v1, v1

    .line 135
    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 136
    .line 137
    .line 138
    :cond_5
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/widget/OverScroller;

    .line 139
    .line 140
    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, v10}, Landroidx/core/widget/NestedScrollView;->v(I)V

    .line 144
    .line 145
    .line 146
    :cond_6
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/widget/OverScroller;

    .line 147
    .line 148
    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-nez v0, :cond_7

    .line 153
    .line 154
    sget-object v0, Lp/k;->a:Ljava/lang/reflect/Field;

    .line 155
    .line 156
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 157
    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_7
    invoke-virtual {p0, v10}, Landroidx/core/widget/NestedScrollView;->v(I)V

    .line 161
    .line 162
    .line 163
    :goto_1
    return-void
.end method

.method public final computeVerticalScrollExtent()I
    .locals 1

    invoke-super {p0}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result v0

    return v0
.end method

.method public final computeVerticalScrollOffset()I
    .locals 2

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final computeVerticalScrollRange()I
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v3

    sub-int v1, v2, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-gez v3, :cond_1

    sub-int/2addr v2, v3

    goto :goto_0

    :cond_1
    if-le v3, v0, :cond_2

    sub-int/2addr v3, v0

    add-int/2addr v2, v3

    :cond_2
    :goto_0
    return v2
.end method

.method public final d(II)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/core/widget/NestedScrollView;->o(II[I)V

    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_e

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    if-lez v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 29
    .line 30
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    iget v5, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 35
    .line 36
    add-int/2addr v2, v5

    .line 37
    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 38
    .line 39
    add-int/2addr v2, v4

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    sub-int/2addr v4, v5

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    sub-int/2addr v4, v5

    .line 54
    if-le v2, v4, :cond_0

    .line 55
    .line 56
    move v2, v1

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    move v2, v3

    .line 59
    :goto_0
    const/16 v4, 0x82

    .line 60
    .line 61
    if-nez v2, :cond_3

    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    const/4 v0, 0x4

    .line 74
    if-eq p1, v0, :cond_2

    .line 75
    .line 76
    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    if-ne p1, p0, :cond_1

    .line 81
    .line 82
    const/4 p1, 0x0

    .line 83
    :cond_1
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0, p0, p1, v4}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    if-eqz p1, :cond_2

    .line 92
    .line 93
    if-eq p1, p0, :cond_2

    .line 94
    .line 95
    invoke-virtual {p1, v4}, Landroid/view/View;->requestFocus(I)Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-eqz p1, :cond_2

    .line 100
    .line 101
    move p1, v1

    .line 102
    goto/16 :goto_5

    .line 103
    .line 104
    :cond_2
    :goto_1
    move p1, v3

    .line 105
    goto/16 :goto_5

    .line 106
    .line 107
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-nez v2, :cond_2

    .line 112
    .line 113
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    const/16 v5, 0x13

    .line 118
    .line 119
    const/16 v6, 0x21

    .line 120
    .line 121
    if-eq v2, v5, :cond_b

    .line 122
    .line 123
    const/16 v5, 0x14

    .line 124
    .line 125
    if-eq v2, v5, :cond_9

    .line 126
    .line 127
    const/16 v5, 0x3e

    .line 128
    .line 129
    if-eq v2, v5, :cond_4

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    if-eqz p1, :cond_5

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_5
    move v6, v4

    .line 140
    :goto_2
    if-ne v6, v4, :cond_6

    .line 141
    .line 142
    move p1, v1

    .line 143
    goto :goto_3

    .line 144
    :cond_6
    move p1, v3

    .line 145
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    if-eqz p1, :cond_7

    .line 150
    .line 151
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    add-int/2addr p1, v2

    .line 156
    iput p1, v0, Landroid/graphics/Rect;->top:I

    .line 157
    .line 158
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    if-lez p1, :cond_8

    .line 163
    .line 164
    sub-int/2addr p1, v1

    .line 165
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 174
    .line 175
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 180
    .line 181
    add-int/2addr p1, v4

    .line 182
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 183
    .line 184
    .line 185
    move-result v4

    .line 186
    add-int/2addr v4, p1

    .line 187
    iget p1, v0, Landroid/graphics/Rect;->top:I

    .line 188
    .line 189
    add-int/2addr p1, v2

    .line 190
    if-le p1, v4, :cond_8

    .line 191
    .line 192
    sub-int/2addr v4, v2

    .line 193
    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 194
    .line 195
    goto :goto_4

    .line 196
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    sub-int/2addr p1, v2

    .line 201
    iput p1, v0, Landroid/graphics/Rect;->top:I

    .line 202
    .line 203
    if-gez p1, :cond_8

    .line 204
    .line 205
    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 206
    .line 207
    :cond_8
    :goto_4
    iget p1, v0, Landroid/graphics/Rect;->top:I

    .line 208
    .line 209
    add-int/2addr v2, p1

    .line 210
    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 211
    .line 212
    invoke-virtual {p0, v6, p1, v2}, Landroidx/core/widget/NestedScrollView;->r(III)Z

    .line 213
    .line 214
    .line 215
    goto :goto_1

    .line 216
    :cond_9
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    .line 217
    .line 218
    .line 219
    move-result p1

    .line 220
    if-nez p1, :cond_a

    .line 221
    .line 222
    invoke-virtual {p0, v4}, Landroidx/core/widget/NestedScrollView;->f(I)Z

    .line 223
    .line 224
    .line 225
    move-result p1

    .line 226
    goto :goto_5

    .line 227
    :cond_a
    invoke-virtual {p0, v4}, Landroidx/core/widget/NestedScrollView;->l(I)Z

    .line 228
    .line 229
    .line 230
    move-result p1

    .line 231
    goto :goto_5

    .line 232
    :cond_b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    .line 233
    .line 234
    .line 235
    move-result p1

    .line 236
    if-nez p1, :cond_c

    .line 237
    .line 238
    invoke-virtual {p0, v6}, Landroidx/core/widget/NestedScrollView;->f(I)Z

    .line 239
    .line 240
    .line 241
    move-result p1

    .line 242
    goto :goto_5

    .line 243
    :cond_c
    invoke-virtual {p0, v6}, Landroidx/core/widget/NestedScrollView;->l(I)Z

    .line 244
    .line 245
    .line 246
    move-result p1

    .line 247
    :goto_5
    if-eqz p1, :cond_d

    .line 248
    .line 249
    goto :goto_6

    .line 250
    :cond_d
    move v1, v3

    .line 251
    :cond_e
    :goto_6
    return v1
.end method

.method public final dispatchNestedFling(FFZ)Z
    .locals 1

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->x:Lj/d;

    invoke-virtual {v0, p1, p2, p3}, Lj/d;->a(FFZ)Z

    move-result p1

    return p1
.end method

.method public final dispatchNestedPreFling(FF)Z
    .locals 1

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->x:Lj/d;

    invoke-virtual {v0, p1, p2}, Lj/d;->b(FF)Z

    move-result p1

    return p1
.end method

.method public final dispatchNestedPreScroll(II[I[I)Z
    .locals 6

    .line 1
    const/4 v3, 0x0

    .line 2
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->x:Lj/d;

    .line 3
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
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->x:Lj/d;

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

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/EdgeEffect;

    .line 5
    .line 6
    if-eqz v0, :cond_7

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/EdgeEffect;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    if-nez v1, :cond_3

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    if-eqz v6, :cond_0

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    add-int/2addr v7, v6

    .line 52
    sub-int/2addr v3, v7

    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    add-int/2addr v6, v2

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    move v6, v2

    .line 60
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    if-eqz v7, :cond_1

    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 71
    .line 72
    .line 73
    move-result v8

    .line 74
    add-int/2addr v8, v7

    .line 75
    sub-int/2addr v4, v8

    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    add-int/2addr v5, v7

    .line 81
    :cond_1
    int-to-float v6, v6

    .line 82
    int-to-float v5, v5

    .line 83
    invoke-virtual {p1, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 84
    .line 85
    .line 86
    iget-object v5, p0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/EdgeEffect;

    .line 87
    .line 88
    invoke-virtual {v5, v3, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 89
    .line 90
    .line 91
    iget-object v3, p0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/EdgeEffect;

    .line 92
    .line 93
    invoke-virtual {v3, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-eqz v3, :cond_2

    .line 98
    .line 99
    sget-object v3, Lp/k;->a:Ljava/lang/reflect/Field;

    .line 100
    .line 101
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 102
    .line 103
    .line 104
    :cond_2
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 105
    .line 106
    .line 107
    :cond_3
    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->e:Landroid/widget/EdgeEffect;

    .line 108
    .line 109
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-nez v1, :cond_7

    .line 114
    .line 115
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    add-int/2addr v0, v4

    .line 136
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    .line 137
    .line 138
    .line 139
    move-result v5

    .line 140
    if-eqz v5, :cond_4

    .line 141
    .line 142
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 143
    .line 144
    .line 145
    move-result v5

    .line 146
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 147
    .line 148
    .line 149
    move-result v6

    .line 150
    add-int/2addr v6, v5

    .line 151
    sub-int/2addr v3, v6

    .line 152
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 153
    .line 154
    .line 155
    move-result v5

    .line 156
    add-int/2addr v2, v5

    .line 157
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    .line 158
    .line 159
    .line 160
    move-result v5

    .line 161
    if-eqz v5, :cond_5

    .line 162
    .line 163
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 164
    .line 165
    .line 166
    move-result v5

    .line 167
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 168
    .line 169
    .line 170
    move-result v6

    .line 171
    add-int/2addr v6, v5

    .line 172
    sub-int/2addr v4, v6

    .line 173
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 174
    .line 175
    .line 176
    move-result v5

    .line 177
    sub-int/2addr v0, v5

    .line 178
    :cond_5
    sub-int/2addr v2, v3

    .line 179
    int-to-float v2, v2

    .line 180
    int-to-float v0, v0

    .line 181
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 182
    .line 183
    .line 184
    int-to-float v0, v3

    .line 185
    const/4 v2, 0x0

    .line 186
    const/high16 v5, 0x43340000    # 180.0f

    .line 187
    .line 188
    invoke-virtual {p1, v5, v0, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 189
    .line 190
    .line 191
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->e:Landroid/widget/EdgeEffect;

    .line 192
    .line 193
    invoke-virtual {v0, v3, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 194
    .line 195
    .line 196
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->e:Landroid/widget/EdgeEffect;

    .line 197
    .line 198
    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    if-eqz v0, :cond_6

    .line 203
    .line 204
    sget-object v0, Lp/k;->a:Ljava/lang/reflect/Field;

    .line 205
    .line 206
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 207
    .line 208
    .line 209
    :cond_6
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 210
    .line 211
    .line 212
    :cond_7
    return-void
.end method

.method public final e(ILandroid/view/View;)V
    .locals 2

    .line 1
    iget-object p2, p0, Landroidx/core/widget/NestedScrollView;->w:Lp/e;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    iput v1, p2, Lp/e;->b:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iput v1, p2, Lp/e;->a:I

    .line 11
    .line 12
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->v(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final f(I)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-ne v0, p0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getMaxScrollAmount()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x0

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    invoke-virtual {p0, v1, v2, v4}, Landroidx/core/widget/NestedScrollView;->n(Landroid/view/View;II)Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_1

    .line 32
    .line 33
    iget-object v2, p0, Landroidx/core/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v2}, Landroidx/core/widget/NestedScrollView;->g(Landroid/graphics/Rect;)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    invoke-virtual {p0, v2}, Landroidx/core/widget/NestedScrollView;->h(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 49
    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_1
    const/16 v1, 0x21

    .line 53
    .line 54
    const/16 v4, 0x82

    .line 55
    .line 56
    if-ne p1, v1, :cond_2

    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-ge v1, v2, :cond_2

    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    goto :goto_0

    .line 69
    :cond_2
    if-ne p1, v4, :cond_3

    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-lez v1, :cond_3

    .line 76
    .line 77
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 86
    .line 87
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    iget v5, v5, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 92
    .line 93
    add-int/2addr v1, v5

    .line 94
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    add-int/2addr v6, v5

    .line 103
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    sub-int/2addr v6, v5

    .line 108
    sub-int/2addr v1, v6

    .line 109
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    :cond_3
    :goto_0
    if-nez v2, :cond_4

    .line 114
    .line 115
    return v3

    .line 116
    :cond_4
    if-ne p1, v4, :cond_5

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_5
    neg-int v2, v2

    .line 120
    :goto_1
    invoke-virtual {p0, v2}, Landroidx/core/widget/NestedScrollView;->h(I)V

    .line 121
    .line 122
    .line 123
    :goto_2
    const/4 p1, 0x1

    .line 124
    if-eqz v0, :cond_6

    .line 125
    .line 126
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_6

    .line 131
    .line 132
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    invoke-virtual {p0, v0, v3, v1}, Landroidx/core/widget/NestedScrollView;->n(Landroid/view/View;II)Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    xor-int/2addr v0, p1

    .line 141
    if-eqz v0, :cond_6

    .line 142
    .line 143
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    const/high16 v1, 0x20000

    .line 148
    .line 149
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 156
    .line 157
    .line 158
    :cond_6
    return p1
.end method

.method public final g(Landroid/graphics/Rect;)I
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    add-int v3, v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v4

    iget v5, p1, Landroid/graphics/Rect;->top:I

    if-lez v5, :cond_1

    add-int/2addr v2, v4

    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v8, v9

    iget v9, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    if-ge v7, v8, :cond_2

    sub-int v4, v3, v4

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_0
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    if-le v7, v4, :cond_4

    iget v8, p1, Landroid/graphics/Rect;->top:I

    if-le v8, v2, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v7, v0, :cond_3

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v2

    goto :goto_1

    :cond_3
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v4

    :goto_1
    add-int/2addr p1, v1

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    sub-int/2addr v0, v3

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_3

    :cond_4
    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-ge v3, v2, :cond_6

    if-ge v7, v4, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-le v3, v0, :cond_5

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, p1

    sub-int/2addr v1, v4

    goto :goto_2

    :cond_5
    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, p1

    sub-int/2addr v1, v2

    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p1

    neg-int p1, p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_6
    :goto_3
    return v1
.end method

.method public getBottomFadingEdgeStrength()F
    .locals 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    sub-int/2addr v0, v1

    sub-int/2addr v0, v3

    if-ge v0, v2, :cond_1

    int-to-float v0, v0

    int-to-float v1, v2

    div-float/2addr v0, v1

    return v0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getMaxScrollAmount()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getNestedScrollAxes()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->w:Lp/e;

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

.method public getScrollRange()I
    .locals 4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v3

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_0
    return v1
.end method

.method public getTopFadingEdgeStrength()F
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVerticalFadingEdgeLength()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    if-ge v1, v0, :cond_1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    return v1

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public final h(I)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->m:Z

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, v1, p1, v1}, Landroidx/core/widget/NestedScrollView;->s(IIZ)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0, v1, p1}, Landroid/view/View;->scrollBy(II)V

    .line 13
    .line 14
    .line 15
    :cond_1
    :goto_0
    return-void
.end method

.method public final hasNestedScrollingParent()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->x:Lj/d;

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

.method public final i()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->j:Z

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput-object v1, p0, Landroidx/core/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->v(I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/EdgeEffect;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->e:Landroid/widget/EdgeEffect;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public final isNestedScrollingEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->x:Lj/d;

    .line 2
    .line 3
    iget-boolean v0, v0, Lj/d;->a:Z

    .line 4
    .line 5
    return v0
.end method

.method public final j()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/EdgeEffect;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/EdgeEffect;

    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/core/widget/NestedScrollView;->e:Landroid/widget/EdgeEffect;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Landroidx/core/widget/NestedScrollView;->e:Landroid/widget/EdgeEffect;

    :cond_1
    :goto_0
    return-void
.end method

.method public final k(I)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/widget/OverScroller;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v6, 0x0

    .line 19
    const/4 v7, 0x0

    .line 20
    const/high16 v8, -0x80000000

    .line 21
    .line 22
    const v9, 0x7fffffff

    .line 23
    .line 24
    .line 25
    const/4 v10, 0x0

    .line 26
    const/4 v11, 0x0

    .line 27
    move v5, p1

    .line 28
    invoke-virtual/range {v1 .. v11}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x2

    .line 32
    const/4 v0, 0x1

    .line 33
    invoke-virtual {p0, p1, v0}, Landroidx/core/widget/NestedScrollView;->u(II)Z

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iput p1, p0, Landroidx/core/widget/NestedScrollView;->u:I

    .line 41
    .line 42
    sget-object p1, Lp/k;->a:Ljava/lang/reflect/Field;

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method

.method public final l(I)Z
    .locals 5

    .line 1
    const/16 v0, 0x82

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Landroidx/core/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    iput v2, v4, Landroid/graphics/Rect;->top:I

    iput v3, v4, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, v4, Landroid/graphics/Rect;->bottom:I

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v3

    iput v0, v4, Landroid/graphics/Rect;->top:I

    :cond_1
    iget v0, v4, Landroid/graphics/Rect;->top:I

    iget v1, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p1, v0, v1}, Landroidx/core/widget/NestedScrollView;->r(III)Z

    move-result p1

    return p1
.end method

.method public final measureChild(Landroid/view/View;II)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v1, v0

    iget p3, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v1, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    const/4 p3, 0x0

    invoke-static {p3, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public final measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    add-int/2addr v0, p5

    iget p5, p4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v0, p5

    iget p5, p4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, p5

    add-int/2addr v0, p3

    iget p3, p4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v0, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    iget p3, p4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p4, p4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p3, p4

    const/4 p4, 0x0

    invoke-static {p3, p4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public final n(Landroid/view/View;II)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    if-lt p1, v1, :cond_0

    iget p1, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p2

    add-int/2addr p2, p3

    if-gt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final o(II[I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Landroid/view/View;->scrollBy(II)V

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    sub-int/2addr v1, v0

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    aget v2, p3, v0

    add-int/2addr v2, v1

    aput v2, p3, v0

    :cond_0
    sub-int/2addr p1, v1

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->x:Lj/d;

    invoke-virtual {v0, v1, p1, p2, p3}, Lj/d;->d(III[I)V

    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->h:Z

    return-void
.end method

.method public final onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->j:Z

    if-nez v0, :cond_3

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Landroidx/core/widget/NestedScrollView;->getVerticalScrollFactorCompat()F

    move-result v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int p1, v2, p1

    if-gez p1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    if-le p1, v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, p1

    :goto_0
    if-eq v0, v2, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p1

    invoke-super {p0, p1, v0}, Landroid/view/View;->scrollTo(II)V

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v1
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x2

    .line 7
    if-ne v0, v2, :cond_0

    .line 8
    .line 9
    iget-boolean v3, p0, Landroidx/core/widget/NestedScrollView;->j:Z

    .line 10
    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    and-int/lit16 v0, v0, 0xff

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    if-eqz v0, :cond_9

    .line 19
    .line 20
    const/4 v5, -0x1

    .line 21
    if-eq v0, v1, :cond_6

    .line 22
    .line 23
    if-eq v0, v2, :cond_2

    .line 24
    .line 25
    const/4 v1, 0x3

    .line 26
    if-eq v0, v1, :cond_6

    .line 27
    .line 28
    const/4 v1, 0x6

    .line 29
    if-eq v0, v1, :cond_1

    .line 30
    .line 31
    goto/16 :goto_2

    .line 32
    .line 33
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->p(Landroid/view/MotionEvent;)V

    .line 34
    .line 35
    .line 36
    goto/16 :goto_2

    .line 37
    .line 38
    :cond_2
    iget v0, p0, Landroidx/core/widget/NestedScrollView;->q:I

    .line 39
    .line 40
    if-ne v0, v5, :cond_3

    .line 41
    .line 42
    goto/16 :goto_2

    .line 43
    .line 44
    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-ne v0, v5, :cond_4

    .line 49
    .line 50
    goto/16 :goto_2

    .line 51
    .line 52
    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    float-to-int v0, v0

    .line 57
    iget v3, p0, Landroidx/core/widget/NestedScrollView;->f:I

    .line 58
    .line 59
    sub-int v3, v0, v3

    .line 60
    .line 61
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    iget v5, p0, Landroidx/core/widget/NestedScrollView;->n:I

    .line 66
    .line 67
    if-le v3, v5, :cond_d

    .line 68
    .line 69
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getNestedScrollAxes()I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    and-int/2addr v2, v3

    .line 74
    if-nez v2, :cond_d

    .line 75
    .line 76
    iput-boolean v1, p0, Landroidx/core/widget/NestedScrollView;->j:Z

    .line 77
    .line 78
    iput v0, p0, Landroidx/core/widget/NestedScrollView;->f:I

    .line 79
    .line 80
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    .line 81
    .line 82
    if-nez v0, :cond_5

    .line 83
    .line 84
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iput-object v0, p0, Landroidx/core/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    .line 89
    .line 90
    :cond_5
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    .line 91
    .line 92
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 93
    .line 94
    .line 95
    iput v4, p0, Landroidx/core/widget/NestedScrollView;->t:I

    .line 96
    .line 97
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    if-eqz p1, :cond_d

    .line 102
    .line 103
    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 104
    .line 105
    .line 106
    goto/16 :goto_2

    .line 107
    .line 108
    :cond_6
    iput-boolean v4, p0, Landroidx/core/widget/NestedScrollView;->j:Z

    .line 109
    .line 110
    iput v5, p0, Landroidx/core/widget/NestedScrollView;->q:I

    .line 111
    .line 112
    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    .line 113
    .line 114
    if-eqz p1, :cond_7

    .line 115
    .line 116
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 117
    .line 118
    .line 119
    iput-object v3, p0, Landroidx/core/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    .line 120
    .line 121
    :cond_7
    iget-object v5, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/widget/OverScroller;

    .line 122
    .line 123
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 128
    .line 129
    .line 130
    move-result v7

    .line 131
    const/4 v8, 0x0

    .line 132
    const/4 v9, 0x0

    .line 133
    const/4 v10, 0x0

    .line 134
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    .line 135
    .line 136
    .line 137
    move-result v11

    .line 138
    invoke-virtual/range {v5 .. v11}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    if-eqz p1, :cond_8

    .line 143
    .line 144
    sget-object p1, Lp/k;->a:Ljava/lang/reflect/Field;

    .line 145
    .line 146
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 147
    .line 148
    .line 149
    :cond_8
    invoke-virtual {p0, v4}, Landroidx/core/widget/NestedScrollView;->v(I)V

    .line 150
    .line 151
    .line 152
    goto/16 :goto_2

    .line 153
    .line 154
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    float-to-int v0, v0

    .line 159
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 160
    .line 161
    .line 162
    move-result v5

    .line 163
    float-to-int v5, v5

    .line 164
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 165
    .line 166
    .line 167
    move-result v6

    .line 168
    if-lez v6, :cond_a

    .line 169
    .line 170
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 171
    .line 172
    .line 173
    move-result v6

    .line 174
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 175
    .line 176
    .line 177
    move-result-object v7

    .line 178
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    .line 179
    .line 180
    .line 181
    move-result v8

    .line 182
    sub-int/2addr v8, v6

    .line 183
    if-lt v0, v8, :cond_a

    .line 184
    .line 185
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    .line 186
    .line 187
    .line 188
    move-result v8

    .line 189
    sub-int/2addr v8, v6

    .line 190
    if-ge v0, v8, :cond_a

    .line 191
    .line 192
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    .line 193
    .line 194
    .line 195
    move-result v6

    .line 196
    if-lt v5, v6, :cond_a

    .line 197
    .line 198
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    .line 199
    .line 200
    .line 201
    move-result v6

    .line 202
    if-ge v5, v6, :cond_a

    .line 203
    .line 204
    move v5, v1

    .line 205
    goto :goto_0

    .line 206
    :cond_a
    move v5, v4

    .line 207
    :goto_0
    if-nez v5, :cond_b

    .line 208
    .line 209
    iput-boolean v4, p0, Landroidx/core/widget/NestedScrollView;->j:Z

    .line 210
    .line 211
    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    .line 212
    .line 213
    if-eqz p1, :cond_d

    .line 214
    .line 215
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 216
    .line 217
    .line 218
    iput-object v3, p0, Landroidx/core/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    .line 219
    .line 220
    goto :goto_2

    .line 221
    :cond_b
    iput v0, p0, Landroidx/core/widget/NestedScrollView;->f:I

    .line 222
    .line 223
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    iput v0, p0, Landroidx/core/widget/NestedScrollView;->q:I

    .line 228
    .line 229
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    .line 230
    .line 231
    if-nez v0, :cond_c

    .line 232
    .line 233
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    iput-object v0, p0, Landroidx/core/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    .line 238
    .line 239
    goto :goto_1

    .line 240
    :cond_c
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 241
    .line 242
    .line 243
    :goto_1
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    .line 244
    .line 245
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 246
    .line 247
    .line 248
    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/widget/OverScroller;

    .line 249
    .line 250
    invoke-virtual {p1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 251
    .line 252
    .line 253
    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/widget/OverScroller;

    .line 254
    .line 255
    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    .line 256
    .line 257
    .line 258
    move-result p1

    .line 259
    xor-int/2addr p1, v1

    .line 260
    iput-boolean p1, p0, Landroidx/core/widget/NestedScrollView;->j:Z

    .line 261
    .line 262
    invoke-virtual {p0, v2, v4}, Landroidx/core/widget/NestedScrollView;->u(II)Z

    .line 263
    .line 264
    .line 265
    :cond_d
    :goto_2
    iget-boolean p1, p0, Landroidx/core/widget/NestedScrollView;->j:Z

    .line 266
    .line 267
    return p1
.end method

.method public final onLayout(ZIIII)V
    .locals 1

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Landroidx/core/widget/NestedScrollView;->g:Z

    .line 6
    .line 7
    iget-object p2, p0, Landroidx/core/widget/NestedScrollView;->i:Landroid/view/View;

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    invoke-static {p2, p0}, Landroidx/core/widget/NestedScrollView;->m(Landroid/view/View;Landroid/view/View;)Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    iget-object p2, p0, Landroidx/core/widget/NestedScrollView;->i:Landroid/view/View;

    .line 18
    .line 19
    iget-object p4, p0, Landroidx/core/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    .line 20
    .line 21
    invoke-virtual {p2, p4}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p2, p4}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p4}, Landroidx/core/widget/NestedScrollView;->g(Landroid/graphics/Rect;)I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-eqz p2, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->scrollBy(II)V

    .line 34
    .line 35
    .line 36
    :cond_0
    const/4 p2, 0x0

    .line 37
    iput-object p2, p0, Landroidx/core/widget/NestedScrollView;->i:Landroid/view/View;

    .line 38
    .line 39
    iget-boolean p4, p0, Landroidx/core/widget/NestedScrollView;->h:Z

    .line 40
    .line 41
    if-nez p4, :cond_6

    .line 42
    .line 43
    iget-object p4, p0, Landroidx/core/widget/NestedScrollView;->v:Lr/d;

    .line 44
    .line 45
    if-eqz p4, :cond_1

    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 48
    .line 49
    .line 50
    move-result p4

    .line 51
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->v:Lr/d;

    .line 52
    .line 53
    iget v0, v0, Lr/d;->a:I

    .line 54
    .line 55
    invoke-virtual {p0, p4, v0}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    .line 56
    .line 57
    .line 58
    iput-object p2, p0, Landroidx/core/widget/NestedScrollView;->v:Lr/d;

    .line 59
    .line 60
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    if-lez p2, :cond_2

    .line 65
    .line 66
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 71
    .line 72
    .line 73
    move-result-object p4

    .line 74
    check-cast p4, Landroid/widget/FrameLayout$LayoutParams;

    .line 75
    .line 76
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    .line 77
    .line 78
    .line 79
    move-result p2

    .line 80
    iget v0, p4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 81
    .line 82
    add-int/2addr p2, v0

    .line 83
    iget p4, p4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 84
    .line 85
    add-int/2addr p2, p4

    .line 86
    goto :goto_0

    .line 87
    :cond_2
    move p2, p1

    .line 88
    :goto_0
    sub-int/2addr p5, p3

    .line 89
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 90
    .line 91
    .line 92
    move-result p3

    .line 93
    sub-int/2addr p5, p3

    .line 94
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 95
    .line 96
    .line 97
    move-result p3

    .line 98
    sub-int/2addr p5, p3

    .line 99
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 100
    .line 101
    .line 102
    move-result p3

    .line 103
    if-ge p5, p2, :cond_5

    .line 104
    .line 105
    if-gez p3, :cond_3

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_3
    add-int p1, p5, p3

    .line 109
    .line 110
    if-le p1, p2, :cond_4

    .line 111
    .line 112
    sub-int p1, p2, p5

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_4
    move p1, p3

    .line 116
    :cond_5
    :goto_1
    if-eq p1, p3, :cond_6

    .line 117
    .line 118
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 119
    .line 120
    .line 121
    move-result p2

    .line 122
    invoke-virtual {p0, p2, p1}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    .line 123
    .line 124
    .line 125
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 130
    .line 131
    .line 132
    move-result p2

    .line 133
    invoke-virtual {p0, p1, p2}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    .line 134
    .line 135
    .line 136
    const/4 p1, 0x1

    .line 137
    iput-boolean p1, p0, Landroidx/core/widget/NestedScrollView;->h:Z

    .line 138
    .line 139
    return-void
.end method

.method public final onMeasure(II)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->l:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_2

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    add-int/2addr v3, v1

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v1

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v1

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {p1, v3, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/view/View;->measure(II)V

    :cond_2
    return-void
.end method

.method public final onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0

    if-nez p4, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p3, p2}, Landroidx/core/widget/NestedScrollView;->dispatchNestedFling(FFZ)Z

    float-to-int p1, p3

    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->k(I)V

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0

    invoke-virtual {p0, p2, p3}, Landroidx/core/widget/NestedScrollView;->dispatchNestedPreFling(FF)Z

    move-result p1

    return p1
.end method

.method public final onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p3, p4, p1}, Landroidx/core/widget/NestedScrollView;->c(II[II)V

    return-void
.end method

.method public final onNestedScroll(Landroid/view/View;IIII)V
    .locals 0

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-virtual {p0, p5, p1, p2}, Landroidx/core/widget/NestedScrollView;->o(II[I)V

    return-void
.end method

.method public final onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/core/widget/NestedScrollView;->a(Landroid/view/View;Landroid/view/View;II)V

    return-void
.end method

.method public final onOverScrolled(IIZZ)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    return-void
.end method

.method public final onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    const/16 p1, 0x82

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    if-ne p1, v1, :cond_1

    .line 9
    .line 10
    const/16 p1, 0x21

    .line 11
    .line 12
    :cond_1
    :goto_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez p2, :cond_2

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0, p0, v2, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    goto :goto_1

    .line 24
    :cond_2
    invoke-virtual {v0, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :goto_1
    const/4 v2, 0x0

    .line 29
    if-nez v0, :cond_3

    .line 30
    .line 31
    return v2

    .line 32
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    invoke-virtual {p0, v0, v2, v3}, Landroidx/core/widget/NestedScrollView;->n(Landroid/view/View;II)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    xor-int/2addr v1, v3

    .line 41
    if-eqz v1, :cond_4

    .line 42
    .line 43
    return v2

    .line 44
    :cond_4
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    return p1
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Lr/d;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lr/d;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iput-object p1, p0, Landroidx/core/widget/NestedScrollView;->v:Lr/d;

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->requestLayout()V

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lr/d;

    invoke-direct {v1, v0}, Lr/d;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    iput v0, v1, Lr/d;->a:I

    return-object v1
.end method

.method public final onScrollChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onScrollChanged(IIII)V

    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p4}, Landroidx/core/widget/NestedScrollView;->n(Landroid/view/View;II)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Landroidx/core/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-virtual {p0, p2}, Landroidx/core/widget/NestedScrollView;->g(Landroid/graphics/Rect;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->h(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p3, p1}, Landroidx/core/widget/NestedScrollView;->b(II)Z

    move-result p1

    return p1
.end method

.method public final onStopNestedScroll(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroidx/core/widget/NestedScrollView;->e(ILandroid/view/View;)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iput-object v2, v0, Landroidx/core/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    .line 14
    .line 15
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x0

    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    iput v3, v0, Landroidx/core/widget/NestedScrollView;->t:I

    .line 23
    .line 24
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    iget v5, v0, Landroidx/core/widget/NestedScrollView;->t:I

    .line 29
    .line 30
    int-to-float v5, v5

    .line 31
    const/4 v6, 0x0

    .line 32
    invoke-virtual {v4, v6, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 33
    .line 34
    .line 35
    const/4 v5, 0x1

    .line 36
    const/4 v7, 0x2

    .line 37
    if-eqz v2, :cond_15

    .line 38
    .line 39
    const/4 v8, -0x1

    .line 40
    if-eq v2, v5, :cond_12

    .line 41
    .line 42
    if-eq v2, v7, :cond_5

    .line 43
    .line 44
    const/4 v3, 0x3

    .line 45
    if-eq v2, v3, :cond_4

    .line 46
    .line 47
    const/4 v3, 0x5

    .line 48
    if-eq v2, v3, :cond_3

    .line 49
    .line 50
    const/4 v3, 0x6

    .line 51
    if-eq v2, v3, :cond_2

    .line 52
    .line 53
    goto/16 :goto_7

    .line 54
    .line 55
    :cond_2
    invoke-virtual/range {p0 .. p1}, Landroidx/core/widget/NestedScrollView;->p(Landroid/view/MotionEvent;)V

    .line 56
    .line 57
    .line 58
    iget v2, v0, Landroidx/core/widget/NestedScrollView;->q:I

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    float-to-int v1, v1

    .line 69
    iput v1, v0, Landroidx/core/widget/NestedScrollView;->f:I

    .line 70
    .line 71
    goto/16 :goto_7

    .line 72
    .line 73
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    float-to-int v3, v3

    .line 82
    iput v3, v0, Landroidx/core/widget/NestedScrollView;->f:I

    .line 83
    .line 84
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    iput v1, v0, Landroidx/core/widget/NestedScrollView;->q:I

    .line 89
    .line 90
    goto/16 :goto_7

    .line 91
    .line 92
    :cond_4
    iget-boolean v1, v0, Landroidx/core/widget/NestedScrollView;->j:Z

    .line 93
    .line 94
    if-eqz v1, :cond_14

    .line 95
    .line 96
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-lez v1, :cond_14

    .line 101
    .line 102
    iget-object v9, v0, Landroidx/core/widget/NestedScrollView;->c:Landroid/widget/OverScroller;

    .line 103
    .line 104
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    .line 105
    .line 106
    .line 107
    move-result v10

    .line 108
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    .line 109
    .line 110
    .line 111
    move-result v11

    .line 112
    const/4 v12, 0x0

    .line 113
    const/4 v13, 0x0

    .line 114
    const/4 v14, 0x0

    .line 115
    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    .line 116
    .line 117
    .line 118
    move-result v15

    .line 119
    invoke-virtual/range {v9 .. v15}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-eqz v1, :cond_14

    .line 124
    .line 125
    goto/16 :goto_5

    .line 126
    .line 127
    :cond_5
    iget v2, v0, Landroidx/core/widget/NestedScrollView;->q:I

    .line 128
    .line 129
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    if-ne v2, v8, :cond_6

    .line 134
    .line 135
    goto/16 :goto_7

    .line 136
    .line 137
    :cond_6
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    float-to-int v6, v6

    .line 142
    iget v7, v0, Landroidx/core/widget/NestedScrollView;->f:I

    .line 143
    .line 144
    sub-int/2addr v7, v6

    .line 145
    iget-boolean v8, v0, Landroidx/core/widget/NestedScrollView;->j:Z

    .line 146
    .line 147
    if-nez v8, :cond_9

    .line 148
    .line 149
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    .line 150
    .line 151
    .line 152
    move-result v8

    .line 153
    iget v9, v0, Landroidx/core/widget/NestedScrollView;->n:I

    .line 154
    .line 155
    if-le v8, v9, :cond_9

    .line 156
    .line 157
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 158
    .line 159
    .line 160
    move-result-object v8

    .line 161
    if-eqz v8, :cond_7

    .line 162
    .line 163
    invoke-interface {v8, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 164
    .line 165
    .line 166
    :cond_7
    iput-boolean v5, v0, Landroidx/core/widget/NestedScrollView;->j:Z

    .line 167
    .line 168
    iget v8, v0, Landroidx/core/widget/NestedScrollView;->n:I

    .line 169
    .line 170
    if-lez v7, :cond_8

    .line 171
    .line 172
    sub-int/2addr v7, v8

    .line 173
    goto :goto_0

    .line 174
    :cond_8
    add-int/2addr v7, v8

    .line 175
    :cond_9
    :goto_0
    iget-boolean v8, v0, Landroidx/core/widget/NestedScrollView;->j:Z

    .line 176
    .line 177
    if-eqz v8, :cond_19

    .line 178
    .line 179
    const/4 v9, 0x0

    .line 180
    iget-object v12, v0, Landroidx/core/widget/NestedScrollView;->s:[I

    .line 181
    .line 182
    iget-object v13, v0, Landroidx/core/widget/NestedScrollView;->r:[I

    .line 183
    .line 184
    const/4 v11, 0x0

    .line 185
    iget-object v8, v0, Landroidx/core/widget/NestedScrollView;->x:Lj/d;

    .line 186
    .line 187
    move v10, v7

    .line 188
    invoke-virtual/range {v8 .. v13}, Lj/d;->c(III[I[I)Z

    .line 189
    .line 190
    .line 191
    move-result v8

    .line 192
    iget-object v15, v0, Landroidx/core/widget/NestedScrollView;->s:[I

    .line 193
    .line 194
    iget-object v14, v0, Landroidx/core/widget/NestedScrollView;->r:[I

    .line 195
    .line 196
    if-eqz v8, :cond_a

    .line 197
    .line 198
    aget v8, v15, v5

    .line 199
    .line 200
    sub-int/2addr v7, v8

    .line 201
    iget v8, v0, Landroidx/core/widget/NestedScrollView;->t:I

    .line 202
    .line 203
    aget v9, v14, v5

    .line 204
    .line 205
    add-int/2addr v8, v9

    .line 206
    iput v8, v0, Landroidx/core/widget/NestedScrollView;->t:I

    .line 207
    .line 208
    :cond_a
    aget v8, v14, v5

    .line 209
    .line 210
    sub-int/2addr v6, v8

    .line 211
    iput v6, v0, Landroidx/core/widget/NestedScrollView;->f:I

    .line 212
    .line 213
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    .line 214
    .line 215
    .line 216
    move-result v6

    .line 217
    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    .line 218
    .line 219
    .line 220
    move-result v8

    .line 221
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getOverScrollMode()I

    .line 222
    .line 223
    .line 224
    move-result v9

    .line 225
    if-eqz v9, :cond_c

    .line 226
    .line 227
    if-ne v9, v5, :cond_b

    .line 228
    .line 229
    if-lez v8, :cond_b

    .line 230
    .line 231
    goto :goto_1

    .line 232
    :cond_b
    move/from16 v17, v3

    .line 233
    .line 234
    goto :goto_2

    .line 235
    :cond_c
    :goto_1
    move/from16 v17, v5

    .line 236
    .line 237
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    .line 238
    .line 239
    .line 240
    move-result v9

    .line 241
    invoke-virtual {v0, v7, v3, v9, v8}, Landroidx/core/widget/NestedScrollView;->q(IIII)Z

    .line 242
    .line 243
    .line 244
    move-result v9

    .line 245
    if-eqz v9, :cond_e

    .line 246
    .line 247
    iget-object v9, v0, Landroidx/core/widget/NestedScrollView;->x:Lj/d;

    .line 248
    .line 249
    invoke-virtual {v9, v3}, Lj/d;->f(I)Landroid/view/ViewParent;

    .line 250
    .line 251
    .line 252
    move-result-object v9

    .line 253
    if-eqz v9, :cond_d

    .line 254
    .line 255
    move v9, v5

    .line 256
    goto :goto_3

    .line 257
    :cond_d
    move v9, v3

    .line 258
    :goto_3
    if-nez v9, :cond_e

    .line 259
    .line 260
    iget-object v9, v0, Landroidx/core/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    .line 261
    .line 262
    invoke-virtual {v9}, Landroid/view/VelocityTracker;->clear()V

    .line 263
    .line 264
    .line 265
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    .line 266
    .line 267
    .line 268
    move-result v9

    .line 269
    sub-int v11, v9, v6

    .line 270
    .line 271
    sub-int v13, v7, v11

    .line 272
    .line 273
    aput v3, v15, v5

    .line 274
    .line 275
    iget-object v3, v0, Landroidx/core/widget/NestedScrollView;->r:[I

    .line 276
    .line 277
    const/16 v16, 0x0

    .line 278
    .line 279
    const/4 v10, 0x0

    .line 280
    const/4 v12, 0x0

    .line 281
    iget-object v9, v0, Landroidx/core/widget/NestedScrollView;->x:Lj/d;

    .line 282
    .line 283
    move-object/from16 v18, v14

    .line 284
    .line 285
    move-object v14, v3

    .line 286
    move-object v3, v15

    .line 287
    move/from16 v15, v16

    .line 288
    .line 289
    move-object/from16 v16, v3

    .line 290
    .line 291
    invoke-virtual/range {v9 .. v16}, Lj/d;->e(IIII[II[I)Z

    .line 292
    .line 293
    .line 294
    iget v9, v0, Landroidx/core/widget/NestedScrollView;->f:I

    .line 295
    .line 296
    aget v10, v18, v5

    .line 297
    .line 298
    sub-int/2addr v9, v10

    .line 299
    iput v9, v0, Landroidx/core/widget/NestedScrollView;->f:I

    .line 300
    .line 301
    iget v9, v0, Landroidx/core/widget/NestedScrollView;->t:I

    .line 302
    .line 303
    add-int/2addr v9, v10

    .line 304
    iput v9, v0, Landroidx/core/widget/NestedScrollView;->t:I

    .line 305
    .line 306
    if-eqz v17, :cond_19

    .line 307
    .line 308
    aget v3, v3, v5

    .line 309
    .line 310
    sub-int/2addr v7, v3

    .line 311
    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->j()V

    .line 312
    .line 313
    .line 314
    add-int/2addr v6, v7

    .line 315
    if-gez v6, :cond_f

    .line 316
    .line 317
    iget-object v3, v0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/EdgeEffect;

    .line 318
    .line 319
    int-to-float v6, v7

    .line 320
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 321
    .line 322
    .line 323
    move-result v7

    .line 324
    int-to-float v7, v7

    .line 325
    div-float/2addr v6, v7

    .line 326
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getX(I)F

    .line 327
    .line 328
    .line 329
    move-result v1

    .line 330
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 331
    .line 332
    .line 333
    move-result v2

    .line 334
    int-to-float v2, v2

    .line 335
    div-float/2addr v1, v2

    .line 336
    invoke-virtual {v3, v6, v1}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 337
    .line 338
    .line 339
    iget-object v1, v0, Landroidx/core/widget/NestedScrollView;->e:Landroid/widget/EdgeEffect;

    .line 340
    .line 341
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 342
    .line 343
    .line 344
    move-result v1

    .line 345
    if-nez v1, :cond_10

    .line 346
    .line 347
    iget-object v1, v0, Landroidx/core/widget/NestedScrollView;->e:Landroid/widget/EdgeEffect;

    .line 348
    .line 349
    goto :goto_4

    .line 350
    :cond_f
    if-le v6, v8, :cond_10

    .line 351
    .line 352
    iget-object v3, v0, Landroidx/core/widget/NestedScrollView;->e:Landroid/widget/EdgeEffect;

    .line 353
    .line 354
    int-to-float v6, v7

    .line 355
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 356
    .line 357
    .line 358
    move-result v7

    .line 359
    int-to-float v7, v7

    .line 360
    div-float/2addr v6, v7

    .line 361
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getX(I)F

    .line 362
    .line 363
    .line 364
    move-result v1

    .line 365
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 366
    .line 367
    .line 368
    move-result v2

    .line 369
    int-to-float v2, v2

    .line 370
    div-float/2addr v1, v2

    .line 371
    const/high16 v2, 0x3f800000    # 1.0f

    .line 372
    .line 373
    sub-float/2addr v2, v1

    .line 374
    invoke-virtual {v3, v6, v2}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 375
    .line 376
    .line 377
    iget-object v1, v0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/EdgeEffect;

    .line 378
    .line 379
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 380
    .line 381
    .line 382
    move-result v1

    .line 383
    if-nez v1, :cond_10

    .line 384
    .line 385
    iget-object v1, v0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/EdgeEffect;

    .line 386
    .line 387
    :goto_4
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 388
    .line 389
    .line 390
    :cond_10
    iget-object v1, v0, Landroidx/core/widget/NestedScrollView;->d:Landroid/widget/EdgeEffect;

    .line 391
    .line 392
    if-eqz v1, :cond_19

    .line 393
    .line 394
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 395
    .line 396
    .line 397
    move-result v1

    .line 398
    if-eqz v1, :cond_11

    .line 399
    .line 400
    iget-object v1, v0, Landroidx/core/widget/NestedScrollView;->e:Landroid/widget/EdgeEffect;

    .line 401
    .line 402
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 403
    .line 404
    .line 405
    move-result v1

    .line 406
    if-nez v1, :cond_19

    .line 407
    .line 408
    :cond_11
    sget-object v1, Lp/k;->a:Ljava/lang/reflect/Field;

    .line 409
    .line 410
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 411
    .line 412
    .line 413
    goto/16 :goto_7

    .line 414
    .line 415
    :cond_12
    iget-object v1, v0, Landroidx/core/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    .line 416
    .line 417
    iget v2, v0, Landroidx/core/widget/NestedScrollView;->p:I

    .line 418
    .line 419
    int-to-float v2, v2

    .line 420
    const/16 v3, 0x3e8

    .line 421
    .line 422
    invoke-virtual {v1, v3, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 423
    .line 424
    .line 425
    iget v2, v0, Landroidx/core/widget/NestedScrollView;->q:I

    .line 426
    .line 427
    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 428
    .line 429
    .line 430
    move-result v1

    .line 431
    float-to-int v1, v1

    .line 432
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 433
    .line 434
    .line 435
    move-result v2

    .line 436
    iget v3, v0, Landroidx/core/widget/NestedScrollView;->o:I

    .line 437
    .line 438
    if-lt v2, v3, :cond_13

    .line 439
    .line 440
    neg-int v1, v1

    .line 441
    int-to-float v2, v1

    .line 442
    invoke-virtual {v0, v6, v2}, Landroidx/core/widget/NestedScrollView;->dispatchNestedPreFling(FF)Z

    .line 443
    .line 444
    .line 445
    move-result v3

    .line 446
    if-nez v3, :cond_14

    .line 447
    .line 448
    invoke-virtual {v0, v6, v2, v5}, Landroidx/core/widget/NestedScrollView;->dispatchNestedFling(FFZ)Z

    .line 449
    .line 450
    .line 451
    invoke-virtual {v0, v1}, Landroidx/core/widget/NestedScrollView;->k(I)V

    .line 452
    .line 453
    .line 454
    goto :goto_6

    .line 455
    :cond_13
    iget-object v9, v0, Landroidx/core/widget/NestedScrollView;->c:Landroid/widget/OverScroller;

    .line 456
    .line 457
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    .line 458
    .line 459
    .line 460
    move-result v10

    .line 461
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    .line 462
    .line 463
    .line 464
    move-result v11

    .line 465
    const/4 v12, 0x0

    .line 466
    const/4 v13, 0x0

    .line 467
    const/4 v14, 0x0

    .line 468
    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    .line 469
    .line 470
    .line 471
    move-result v15

    .line 472
    invoke-virtual/range {v9 .. v15}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 473
    .line 474
    .line 475
    move-result v1

    .line 476
    if-eqz v1, :cond_14

    .line 477
    .line 478
    :goto_5
    sget-object v1, Lp/k;->a:Ljava/lang/reflect/Field;

    .line 479
    .line 480
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 481
    .line 482
    .line 483
    :cond_14
    :goto_6
    iput v8, v0, Landroidx/core/widget/NestedScrollView;->q:I

    .line 484
    .line 485
    invoke-virtual/range {p0 .. p0}, Landroidx/core/widget/NestedScrollView;->i()V

    .line 486
    .line 487
    .line 488
    goto :goto_7

    .line 489
    :cond_15
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 490
    .line 491
    .line 492
    move-result v2

    .line 493
    if-nez v2, :cond_16

    .line 494
    .line 495
    return v3

    .line 496
    :cond_16
    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->c:Landroid/widget/OverScroller;

    .line 497
    .line 498
    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    .line 499
    .line 500
    .line 501
    move-result v2

    .line 502
    xor-int/2addr v2, v5

    .line 503
    iput-boolean v2, v0, Landroidx/core/widget/NestedScrollView;->j:Z

    .line 504
    .line 505
    if-eqz v2, :cond_17

    .line 506
    .line 507
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 508
    .line 509
    .line 510
    move-result-object v2

    .line 511
    if-eqz v2, :cond_17

    .line 512
    .line 513
    invoke-interface {v2, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 514
    .line 515
    .line 516
    :cond_17
    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->c:Landroid/widget/OverScroller;

    .line 517
    .line 518
    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    .line 519
    .line 520
    .line 521
    move-result v2

    .line 522
    if-nez v2, :cond_18

    .line 523
    .line 524
    iget-object v2, v0, Landroidx/core/widget/NestedScrollView;->c:Landroid/widget/OverScroller;

    .line 525
    .line 526
    invoke-virtual {v2}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 527
    .line 528
    .line 529
    invoke-virtual {v0, v5}, Landroidx/core/widget/NestedScrollView;->v(I)V

    .line 530
    .line 531
    .line 532
    :cond_18
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 533
    .line 534
    .line 535
    move-result v2

    .line 536
    float-to-int v2, v2

    .line 537
    iput v2, v0, Landroidx/core/widget/NestedScrollView;->f:I

    .line 538
    .line 539
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 540
    .line 541
    .line 542
    move-result v1

    .line 543
    iput v1, v0, Landroidx/core/widget/NestedScrollView;->q:I

    .line 544
    .line 545
    invoke-virtual {v0, v7, v3}, Landroidx/core/widget/NestedScrollView;->u(II)Z

    .line 546
    .line 547
    .line 548
    :cond_19
    :goto_7
    iget-object v1, v0, Landroidx/core/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    .line 549
    .line 550
    if-eqz v1, :cond_1a

    .line 551
    .line 552
    invoke-virtual {v1, v4}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 553
    .line 554
    .line 555
    :cond_1a
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 556
    .line 557
    .line 558
    return v5
.end method

.method public final p(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Landroidx/core/widget/NestedScrollView;->q:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Landroidx/core/widget/NestedScrollView;->f:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Landroidx/core/widget/NestedScrollView;->q:I

    iget-object p1, p0, Landroidx/core/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    :cond_1
    return-void
.end method

.method public final q(IIII)Z
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->computeHorizontalScrollRange()I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->computeHorizontalScrollExtent()I

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->computeVerticalScrollRange()I

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->computeVerticalScrollExtent()I

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    const/4 v0, 0x0

    .line 19
    add-int/2addr p2, v0

    .line 20
    add-int/2addr p3, p1

    .line 21
    add-int/2addr p4, v0

    .line 22
    if-lez p2, :cond_0

    .line 23
    .line 24
    :goto_0
    move p2, v0

    .line 25
    move p1, v1

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    if-gez p2, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move p1, v0

    .line 31
    :goto_1
    if-le p3, p4, :cond_2

    .line 32
    .line 33
    move p3, p4

    .line 34
    :goto_2
    move p4, v1

    .line 35
    goto :goto_3

    .line 36
    :cond_2
    if-gez p3, :cond_3

    .line 37
    .line 38
    move p3, v0

    .line 39
    goto :goto_2

    .line 40
    :cond_3
    move p4, v0

    .line 41
    :goto_3
    if-eqz p4, :cond_5

    .line 42
    .line 43
    iget-object v2, p0, Landroidx/core/widget/NestedScrollView;->x:Lj/d;

    .line 44
    .line 45
    invoke-virtual {v2, v1}, Lj/d;->f(I)Landroid/view/ViewParent;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    if-eqz v2, :cond_4

    .line 50
    .line 51
    move v2, v1

    .line 52
    goto :goto_4

    .line 53
    :cond_4
    move v2, v0

    .line 54
    :goto_4
    if-nez v2, :cond_5

    .line 55
    .line 56
    iget-object v2, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/widget/OverScroller;

    .line 57
    .line 58
    const/4 v5, 0x0

    .line 59
    const/4 v6, 0x0

    .line 60
    const/4 v7, 0x0

    .line 61
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->getScrollRange()I

    .line 62
    .line 63
    .line 64
    move-result v8

    .line 65
    move v3, p2

    .line 66
    move v4, p3

    .line 67
    invoke-virtual/range {v2 .. v8}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 68
    .line 69
    .line 70
    :cond_5
    invoke-virtual {p0, p2, p3, p1, p4}, Landroidx/core/widget/NestedScrollView;->onOverScrolled(IIZZ)V

    .line 71
    .line 72
    .line 73
    if-nez p1, :cond_7

    .line 74
    .line 75
    if-eqz p4, :cond_6

    .line 76
    .line 77
    goto :goto_5

    .line 78
    :cond_6
    move v1, v0

    .line 79
    :cond_7
    :goto_5
    return v1
.end method

.method public final r(III)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    add-int/2addr v4, v5

    .line 18
    const/16 v6, 0x21

    .line 19
    .line 20
    if-ne v1, v6, :cond_0

    .line 21
    .line 22
    const/4 v6, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v6, 0x0

    .line 25
    :goto_0
    const/4 v9, 0x2

    .line 26
    invoke-virtual {v0, v9}, Landroid/view/View;->getFocusables(I)Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    move-result-object v9

    .line 30
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v10

    .line 34
    const/4 v11, 0x0

    .line 35
    const/4 v12, 0x0

    .line 36
    const/4 v13, 0x0

    .line 37
    :goto_1
    if-ge v12, v10, :cond_9

    .line 38
    .line 39
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v14

    .line 43
    check-cast v14, Landroid/view/View;

    .line 44
    .line 45
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    .line 46
    .line 47
    .line 48
    move-result v15

    .line 49
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    if-ge v2, v7, :cond_8

    .line 54
    .line 55
    if-ge v15, v3, :cond_8

    .line 56
    .line 57
    if-ge v2, v15, :cond_1

    .line 58
    .line 59
    if-ge v7, v3, :cond_1

    .line 60
    .line 61
    const/16 v16, 0x1

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_1
    const/16 v16, 0x0

    .line 65
    .line 66
    :goto_2
    if-nez v11, :cond_2

    .line 67
    .line 68
    move-object v11, v14

    .line 69
    move/from16 v13, v16

    .line 70
    .line 71
    goto :goto_5

    .line 72
    :cond_2
    if-eqz v6, :cond_3

    .line 73
    .line 74
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    .line 75
    .line 76
    .line 77
    move-result v8

    .line 78
    if-lt v15, v8, :cond_4

    .line 79
    .line 80
    :cond_3
    if-nez v6, :cond_5

    .line 81
    .line 82
    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    .line 83
    .line 84
    .line 85
    move-result v8

    .line 86
    if-le v7, v8, :cond_5

    .line 87
    .line 88
    :cond_4
    const/4 v7, 0x1

    .line 89
    goto :goto_3

    .line 90
    :cond_5
    const/4 v7, 0x0

    .line 91
    :goto_3
    if-eqz v13, :cond_6

    .line 92
    .line 93
    if-eqz v16, :cond_8

    .line 94
    .line 95
    if-eqz v7, :cond_8

    .line 96
    .line 97
    goto :goto_4

    .line 98
    :cond_6
    if-eqz v16, :cond_7

    .line 99
    .line 100
    move-object v11, v14

    .line 101
    const/4 v13, 0x1

    .line 102
    goto :goto_5

    .line 103
    :cond_7
    if-eqz v7, :cond_8

    .line 104
    .line 105
    :goto_4
    move-object v11, v14

    .line 106
    :cond_8
    :goto_5
    add-int/lit8 v12, v12, 0x1

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_9
    if-nez v11, :cond_a

    .line 110
    .line 111
    move-object v11, v0

    .line 112
    :cond_a
    if-lt v2, v5, :cond_b

    .line 113
    .line 114
    if-gt v3, v4, :cond_b

    .line 115
    .line 116
    const/4 v7, 0x0

    .line 117
    goto :goto_7

    .line 118
    :cond_b
    if-eqz v6, :cond_c

    .line 119
    .line 120
    sub-int/2addr v2, v5

    .line 121
    goto :goto_6

    .line 122
    :cond_c
    sub-int v2, v3, v4

    .line 123
    .line 124
    :goto_6
    invoke-virtual {v0, v2}, Landroidx/core/widget/NestedScrollView;->h(I)V

    .line 125
    .line 126
    .line 127
    const/4 v7, 0x1

    .line 128
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    if-eq v11, v2, :cond_d

    .line 133
    .line 134
    invoke-virtual {v11, v1}, Landroid/view/View;->requestFocus(I)Z

    .line 135
    .line 136
    .line 137
    :cond_d
    return v7
.end method

.method public final requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->g:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->b:Landroid/graphics/Rect;

    .line 6
    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p2, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->g(Landroid/graphics/Rect;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->scrollBy(II)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iput-object p2, p0, Landroidx/core/widget/NestedScrollView;->i:Landroid/view/View;

    .line 25
    .line 26
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    sub-int/2addr v1, p1

    .line 19
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p2}, Landroidx/core/widget/NestedScrollView;->g(Landroid/graphics/Rect;)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    const/4 p2, 0x0

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v0, p2

    .line 32
    :goto_0
    if-eqz v0, :cond_2

    .line 33
    .line 34
    if-eqz p3, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0, p2, p1}, Landroid/view/View;->scrollBy(II)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    invoke-virtual {p0, p2, p1, p2}, Landroidx/core/widget/NestedScrollView;->s(IIZ)V

    .line 41
    .line 42
    .line 43
    :cond_2
    :goto_1
    return v0
.end method

.method public final requestDisallowInterceptTouchEvent(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Landroidx/core/widget/NestedScrollView;->k:Landroid/view/VelocityTracker;

    .line 12
    .line 13
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final requestLayout()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->g:Z

    invoke-super {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final s(IIZ)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iget-wide v2, p0, Landroidx/core/widget/NestedScrollView;->a:J

    .line 13
    .line 14
    sub-long/2addr v0, v2

    .line 15
    const-wide/16 v2, 0xfa

    .line 16
    .line 17
    cmp-long v0, v0, v2

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    if-lez v0, :cond_2

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 38
    .line 39
    add-int/2addr v0, v3

    .line 40
    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 41
    .line 42
    add-int/2addr v0, v2

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    sub-int/2addr v2, v3

    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    sub-int/2addr v2, v3

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    sub-int/2addr v0, v2

    .line 62
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    add-int/2addr p2, v3

    .line 67
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    sub-int/2addr p2, v3

    .line 76
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/widget/OverScroller;

    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    invoke-virtual {v0, v2, v3, p1, p2}, Landroid/widget/OverScroller;->startScroll(IIII)V

    .line 83
    .line 84
    .line 85
    if-eqz p3, :cond_1

    .line 86
    .line 87
    const/4 p1, 0x2

    .line 88
    invoke-virtual {p0, p1, v1}, Landroidx/core/widget/NestedScrollView;->u(II)Z

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {p0, v1}, Landroidx/core/widget/NestedScrollView;->v(I)V

    .line 93
    .line 94
    .line 95
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    iput p1, p0, Landroidx/core/widget/NestedScrollView;->u:I

    .line 100
    .line 101
    sget-object p1, Lp/k;->a:Ljava/lang/reflect/Field;

    .line 102
    .line 103
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_2
    iget-object p3, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/widget/OverScroller;

    .line 108
    .line 109
    invoke-virtual {p3}, Landroid/widget/OverScroller;->isFinished()Z

    .line 110
    .line 111
    .line 112
    move-result p3

    .line 113
    if-nez p3, :cond_3

    .line 114
    .line 115
    iget-object p3, p0, Landroidx/core/widget/NestedScrollView;->c:Landroid/widget/OverScroller;

    .line 116
    .line 117
    invoke-virtual {p3}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, v1}, Landroidx/core/widget/NestedScrollView;->v(I)V

    .line 121
    .line 122
    .line 123
    :cond_3
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->scrollBy(II)V

    .line 124
    .line 125
    .line 126
    :goto_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 127
    .line 128
    .line 129
    move-result-wide p1

    .line 130
    iput-wide p1, p0, Landroidx/core/widget/NestedScrollView;->a:J

    .line 131
    .line 132
    return-void
.end method

.method public final scrollTo(II)V
    .locals 7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_7

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    iget v5, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iget v5, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v6, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v6

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    if-ge v3, v4, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    add-int v2, v3, p1

    if-le v2, v4, :cond_2

    sub-int p1, v4, v3

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v0

    :cond_2
    :goto_1
    if-ge v5, v1, :cond_4

    if-gez p2, :cond_3

    goto :goto_2

    :cond_3
    add-int v0, v5, p2

    if-le v0, v1, :cond_5

    sub-int p2, v1, v5

    goto :goto_3

    :cond_4
    :goto_2
    move p2, v0

    :cond_5
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    if-ne p1, v0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-eq p2, v0, :cond_7

    :cond_6
    invoke-super {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    :cond_7
    return-void
.end method

.method public setFillViewport(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/core/widget/NestedScrollView;->l:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Landroidx/core/widget/NestedScrollView;->l:Z

    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->x:Lj/d;

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

.method public setOnScrollChangeListener(Lr/c;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/core/widget/NestedScrollView;->m:Z

    return-void
.end method

.method public final shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final startNestedScroll(I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/core/widget/NestedScrollView;->u(II)Z

    move-result p1

    return p1
.end method

.method public final stopNestedScroll()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/core/widget/NestedScrollView;->v(I)V

    return-void
.end method

.method public final t(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    sub-int/2addr p1, v1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Landroidx/core/widget/NestedScrollView;->s(IIZ)V

    return-void
.end method

.method public final u(II)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->x:Lj/d;

    invoke-virtual {v0, p1, p2}, Lj/d;->h(II)Z

    move-result p1

    return p1
.end method

.method public final v(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->x:Lj/d;

    invoke-virtual {v0, p1}, Lj/d;->i(I)V

    return-void
.end method
