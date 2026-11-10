.class public Landroidx/viewpager/widget/PagerTitleStrip;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation runtime Le0/e;
.end annotation


# static fields
.field public static final n:[I

.field public static final o:[I


# instance fields
.field public a:Landroidx/viewpager/widget/ViewPager;

.field public final b:Landroid/widget/TextView;

.field public final c:Landroid/widget/TextView;

.field public final d:Landroid/widget/TextView;

.field public e:I

.field public f:F

.field public g:I

.field public h:I

.field public i:Z

.field public j:Z

.field public final k:Le0/c;

.field public l:I

.field public m:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const v0, 0x1010098

    const v1, 0x10100af

    const v2, 0x1010034

    const v3, 0x1010095

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroidx/viewpager/widget/PagerTitleStrip;->n:[I

    const v0, 0x101038c

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroidx/viewpager/widget/PagerTitleStrip;->o:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/viewpager/widget/PagerTitleStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->e:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->f:F

    new-instance v0, Le0/c;

    invoke-direct {v0, p0}, Le0/c;-><init>(Landroidx/viewpager/widget/PagerTitleStrip;)V

    iput-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->k:Le0/c;

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->c:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroidx/viewpager/widget/PagerTitleStrip;->d:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    sget-object v3, Landroidx/viewpager/widget/PagerTitleStrip;->n:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-eqz v4, :cond_0

    .line 2
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextAppearance(I)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextAppearance(I)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_0
    const/4 v5, 0x1

    .line 3
    invoke-virtual {p2, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    if-eqz v5, :cond_1

    int-to-float v5, v5

    invoke-virtual {p0, v3, v5}, Landroidx/viewpager/widget/PagerTitleStrip;->setTextSize(IF)V

    :cond_1
    const/4 v5, 0x2

    invoke-virtual {p2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p2, v5, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    const/4 v5, 0x3

    const/16 v6, 0x50

    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, p0, Landroidx/viewpager/widget/PagerTitleStrip;->h:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2

    iput p2, p0, Landroidx/viewpager/widget/PagerTitleStrip;->m:I

    const p2, 0x3f19999a    # 0.6f

    invoke-virtual {p0, p2}, Landroidx/viewpager/widget/PagerTitleStrip;->setNonPrimaryAlpha(F)V

    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    if-eqz v4, :cond_3

    sget-object p2, Landroidx/viewpager/widget/PagerTitleStrip;->o:[I

    invoke-virtual {p1, v4, p2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    if-eqz v3, :cond_4

    invoke-static {v0}, Landroidx/viewpager/widget/PagerTitleStrip;->setSingleLineAllCaps(Landroid/widget/TextView;)V

    invoke-static {v1}, Landroidx/viewpager/widget/PagerTitleStrip;->setSingleLineAllCaps(Landroid/widget/TextView;)V

    invoke-static {v2}, Landroidx/viewpager/widget/PagerTitleStrip;->setSingleLineAllCaps(Landroid/widget/TextView;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    invoke-virtual {v2}, Landroid/widget/TextView;->setSingleLine()V

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x41800000    # 16.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->g:I

    return-void
.end method

.method private static setSingleLineAllCaps(Landroid/widget/TextView;)V
    .locals 2

    new-instance v0, Le0/d;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Le0/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->a:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    iput v1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->e:I

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->f:F

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/PagerTitleStrip;->b(I)V

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTitleStrip;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->i:Z

    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Landroidx/viewpager/widget/PagerTitleStrip;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Landroidx/viewpager/widget/PagerTitleStrip;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v1, v4

    int-to-float v1, v1

    const v4, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v4

    float-to-int v1, v1

    const/4 v4, 0x0

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/high16 v5, -0x80000000

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v0, v1, v5}, Landroid/view/View;->measure(II)V

    invoke-virtual {v2, v1, v5}, Landroid/view/View;->measure(II)V

    invoke-virtual {v3, v1, v5}, Landroid/view/View;->measure(II)V

    iput p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->e:I

    iget-boolean v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->j:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->f:F

    invoke-virtual {p0, p1, v0, v4}, Landroidx/viewpager/widget/PagerTitleStrip;->c(IFZ)V

    :cond_0
    iput-boolean v4, p0, Landroidx/viewpager/widget/PagerTitleStrip;->i:Z

    return-void
.end method

.method public c(IFZ)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    move/from16 v1, p2

    iget v2, v0, Landroidx/viewpager/widget/PagerTitleStrip;->e:I

    move/from16 v3, p1

    if-eq v3, v2, :cond_0

    iget-object v2, v0, Landroidx/viewpager/widget/PagerTitleStrip;->a:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Le0/a;

    invoke-virtual/range {p0 .. p1}, Landroidx/viewpager/widget/PagerTitleStrip;->b(I)V

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    iget v2, v0, Landroidx/viewpager/widget/PagerTitleStrip;->f:F

    cmpl-float v2, v1, v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroidx/viewpager/widget/PagerTitleStrip;->j:Z

    iget-object v2, v0, Landroidx/viewpager/widget/PagerTitleStrip;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget-object v4, v0, Landroidx/viewpager/widget/PagerTitleStrip;->c:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget-object v6, v0, Landroidx/viewpager/widget/PagerTitleStrip;->d:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    div-int/lit8 v8, v5, 0x2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v14

    add-int v15, v11, v8

    add-int v16, v12, v8

    sub-int v15, v9, v15

    sub-int v15, v15, v16

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v17, v1, v17

    const/high16 v18, 0x3f800000    # 1.0f

    cmpl-float v19, v17, v18

    if-lez v19, :cond_2

    sub-float v17, v17, v18

    :cond_2
    sub-int v16, v9, v16

    int-to-float v15, v15

    mul-float v15, v15, v17

    float-to-int v15, v15

    sub-int v16, v16, v15

    sub-int v8, v16, v8

    add-int/2addr v5, v8

    invoke-virtual {v2}, Landroid/widget/TextView;->getBaseline()I

    move-result v15

    invoke-virtual {v4}, Landroid/widget/TextView;->getBaseline()I

    move-result v1

    move/from16 p1, v7

    invoke-virtual {v6}, Landroid/widget/TextView;->getBaseline()I

    move-result v7

    move/from16 p3, v9

    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v9

    sub-int v15, v9, v15

    sub-int v1, v9, v1

    sub-int/2addr v9, v7

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v15

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    move/from16 v17, v12

    add-int v12, v16, v1

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    move-object/from16 v18, v6

    add-int v6, v16, v9

    invoke-static {v7, v12}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v7, v0, Landroidx/viewpager/widget/PagerTitleStrip;->h:I

    and-int/lit8 v7, v7, 0x70

    const/16 v12, 0x10

    if-eq v7, v12, :cond_4

    const/16 v12, 0x50

    if-eq v7, v12, :cond_3

    add-int/2addr v15, v13

    add-int/2addr v1, v13

    add-int/2addr v13, v9

    goto :goto_2

    :cond_3
    sub-int/2addr v10, v14

    sub-int/2addr v10, v6

    goto :goto_1

    :cond_4
    sub-int/2addr v10, v13

    sub-int/2addr v10, v14

    sub-int/2addr v10, v6

    div-int/lit8 v10, v10, 0x2

    :goto_1
    add-int/2addr v15, v10

    add-int/2addr v1, v10

    add-int v13, v10, v9

    :goto_2
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {v4, v8, v1, v5, v6}, Landroid/view/View;->layout(IIII)V

    iget v1, v0, Landroidx/viewpager/widget/PagerTitleStrip;->g:I

    sub-int/2addr v8, v1

    sub-int/2addr v8, v3

    invoke-static {v11, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/2addr v3, v1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v15

    invoke-virtual {v2, v1, v15, v3, v4}, Landroid/view/View;->layout(IIII)V

    sub-int v9, p3, v17

    sub-int v9, v9, p1

    iget v1, v0, Landroidx/viewpager/widget/PagerTitleStrip;->g:I

    add-int/2addr v5, v1

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int v7, v1, p1

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v13

    move-object/from16 v3, v18

    invoke-virtual {v3, v1, v13, v7, v2}, Landroid/view/View;->layout(IIII)V

    move/from16 v1, p2

    iput v1, v0, Landroidx/viewpager/widget/PagerTitleStrip;->f:F

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/viewpager/widget/PagerTitleStrip;->j:Z

    return-void
.end method

.method public getMinHeight()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTextSpacing()I
    .locals 1

    iget v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->g:I

    return v0
.end method

.method public final onAttachedToWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    instance-of v1, v0, Landroidx/viewpager/widget/ViewPager;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Le0/a;

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->k:Le0/c;

    .line 18
    .line 19
    iput-object v1, v0, Landroidx/viewpager/widget/ViewPager;->E:Le0/i;

    .line 20
    .line 21
    iget-object v2, v0, Landroidx/viewpager/widget/ViewPager;->F:Ljava/util/ArrayList;

    .line 22
    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    new-instance v2, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v2, v0, Landroidx/viewpager/widget/ViewPager;->F:Ljava/util/ArrayList;

    .line 31
    .line 32
    :cond_0
    iget-object v2, v0, Landroidx/viewpager/widget/ViewPager;->F:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->a:Landroidx/viewpager/widget/ViewPager;

    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTitleStrip;->a()V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 44
    .line 45
    const-string v1, "PagerTitleStrip must be a direct child of a ViewPager."

    .line 46
    .line 47
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v0
.end method

.method public final onDetachedFromWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->a:Landroidx/viewpager/widget/ViewPager;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Le0/a;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTitleStrip;->a()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->a:Landroidx/viewpager/widget/ViewPager;

    .line 15
    .line 16
    iget-object v1, v0, Landroidx/viewpager/widget/ViewPager;->E:Le0/i;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    iput-object v1, v0, Landroidx/viewpager/widget/ViewPager;->E:Le0/i;

    .line 20
    .line 21
    iget-object v0, v0, Landroidx/viewpager/widget/ViewPager;->F:Ljava/util/ArrayList;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v2, p0, Landroidx/viewpager/widget/PagerTitleStrip;->k:Le0/c;

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    :cond_0
    iput-object v1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->a:Landroidx/viewpager/widget/ViewPager;

    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    iget-object p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->a:Landroidx/viewpager/widget/ViewPager;

    if-eqz p1, :cond_1

    iget p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->f:F

    const/4 p2, 0x0

    cmpl-float p3, p1, p2

    if-ltz p3, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    iget p2, p0, Landroidx/viewpager/widget/PagerTitleStrip;->e:I

    const/4 p3, 0x1

    invoke-virtual {p0, p2, p1, p3}, Landroidx/viewpager/widget/PagerTitleStrip;->c(IFZ)V

    :cond_1
    return-void
.end method

.method public final onMeasure(II)V
    .locals 7

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v2, v0

    const/4 v0, -0x2

    invoke-static {p2, v2, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    int-to-float v5, v4

    const v6, 0x3e4ccccd    # 0.2f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {p1, v5, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p1

    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1, v3}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1, v3}, Landroid/view/View;->measure(II)V

    iget-object v5, p0, Landroidx/viewpager/widget/PagerTitleStrip;->d:Landroid/widget/TextView;

    invoke-virtual {v5, p1, v3}, Landroid/view/View;->measure(II)V

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    if-ne p1, v1, :cond_0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTitleStrip;->getMinHeight()I

    move-result v1

    add-int/2addr p1, v2

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    invoke-static {p1, p2, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result p1

    invoke-virtual {p0, v4, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Must measure with an exact width"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final requestLayout()V
    .locals 1

    iget-boolean v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->i:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 0

    iput p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->h:I

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTitleStrip;->requestLayout()V

    return-void
.end method

.method public setNonPrimaryAlpha(F)V
    .locals 2

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->l:I

    shl-int/lit8 p1, p1, 0x18

    iget v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->m:I

    const v1, 0xffffff

    and-int/2addr v0, v1

    or-int/2addr p1, v0

    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 2

    iput p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->m:I

    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->l:I

    shl-int/lit8 p1, p1, 0x18

    iget v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->m:I

    const v1, 0xffffff

    and-int/2addr v0, v1

    or-int/2addr p1, v0

    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setTextSize(IF)V
    .locals 1

    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public setTextSpacing(I)V
    .locals 0

    iput p1, p0, Landroidx/viewpager/widget/PagerTitleStrip;->g:I

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerTitleStrip;->requestLayout()V

    return-void
.end method
