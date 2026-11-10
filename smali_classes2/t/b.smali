.class public final Lt/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final w:Lt/a;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:[F

.field public e:[F

.field public f:[F

.field public g:[F

.field public h:[I

.field public i:[I

.field public j:[I

.field public k:I

.field public l:Landroid/view/VelocityTracker;

.field public final m:F

.field public n:F

.field public final o:I

.field public p:I

.field public final q:Landroid/widget/OverScroller;

.field public final r:Lc1/b;

.field public s:Landroid/view/View;

.field public t:Z

.field public final u:Landroid/view/ViewGroup;

.field public final v:Landroidx/activity/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lt/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lt/a;-><init>(I)V

    sput-object v0, Lt/b;->w:Lt/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lc1/b;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lt/b;->c:I

    new-instance v0, Landroidx/activity/a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/activity/a;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lt/b;->v:Landroidx/activity/a;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lt/b;->u:Landroid/view/ViewGroup;

    iput-object p3, p0, Lt/b;->r:Lc1/b;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x41a00000    # 20.0f

    mul-float/2addr p3, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p3, v0

    float-to-int p3, p3

    iput p3, p0, Lt/b;->o:I

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p3

    iput p3, p0, Lt/b;->b:I

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lt/b;->m:F

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lt/b;->n:F

    new-instance p2, Landroid/widget/OverScroller;

    sget-object p3, Lt/b;->w:Lt/a;

    invoke-direct {p2, p1, p3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p2, p0, Lt/b;->q:Landroid/widget/OverScroller;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parent view may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static i(Landroid/view/ViewGroup;FLc1/b;)Lt/b;
    .locals 2

    .line 1
    new-instance v0, Lt/b;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1, p0, p2}, Lt/b;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lc1/b;)V

    .line 8
    .line 9
    .line 10
    iget p0, v0, Lt/b;->b:I

    .line 11
    .line 12
    int-to-float p0, p0

    .line 13
    const/high16 p2, 0x3f800000    # 1.0f

    .line 14
    .line 15
    div-float/2addr p2, p1

    .line 16
    mul-float/2addr p2, p0

    .line 17
    float-to-int p0, p2

    .line 18
    iput p0, v0, Lt/b;->b:I

    .line 19
    .line 20
    return-object v0
.end method

.method public static l(Landroid/view/View;II)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt p1, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v1

    if-ge p1, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p1

    if-lt p2, p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    if-ge p2, p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lt/b;->b()V

    iget v0, p0, Lt/b;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lt/b;->q:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    iget-object v0, p0, Lt/b;->r:Lc1/b;

    iget-object v2, p0, Lt/b;->s:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Lc1/b;->u(Landroid/view/View;I)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lt/b;->r(I)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lt/b;->c:I

    .line 3
    .line 4
    iget-object v0, p0, Lt/b;->d:[F

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lt/b;->e:[F

    .line 14
    .line 15
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lt/b;->f:[F

    .line 19
    .line 20
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lt/b;->g:[F

    .line 24
    .line 25
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lt/b;->h:[I

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lt/b;->i:[I

    .line 35
    .line 36
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lt/b;->j:[I

    .line 40
    .line 41
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 42
    .line 43
    .line 44
    iput v1, p0, Lt/b;->k:I

    .line 45
    .line 46
    :goto_0
    iget-object v0, p0, Lt/b;->l:Landroid/view/VelocityTracker;

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 51
    .line 52
    .line 53
    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lt/b;->l:Landroid/view/VelocityTracker;

    .line 55
    .line 56
    :cond_1
    return-void
.end method

.method public final c(ILandroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lt/b;->u:Landroid/view/ViewGroup;

    if-ne v0, v1, :cond_0

    iput-object p2, p0, Lt/b;->s:Landroid/view/View;

    iput p1, p0, Lt/b;->c:I

    iget-object p1, p0, Lt/b;->r:Lc1/b;

    invoke-virtual {p1, p2}, Lc1/b;->s(Landroid/view/View;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lt/b;->r(I)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "captureChildView: parameter must be a descendant of the ViewDragHelper\'s tracked parent view ("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(FFII)Z
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget-object v0, p0, Lt/b;->h:[I

    aget v0, v0, p3

    and-int/2addr v0, p4

    const/4 v1, 0x0

    if-ne v0, p4, :cond_2

    iget v0, p0, Lt/b;->p:I

    and-int/2addr v0, p4

    if-eqz v0, :cond_2

    iget-object v0, p0, Lt/b;->j:[I

    aget v0, v0, p3

    and-int/2addr v0, p4

    if-eq v0, p4, :cond_2

    iget-object v0, p0, Lt/b;->i:[I

    aget v0, v0, p3

    and-int/2addr v0, p4

    if-eq v0, p4, :cond_2

    iget v0, p0, Lt/b;->b:I

    int-to-float v2, v0

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p2, v0

    cmpg-float p2, p1, p2

    if-gez p2, :cond_1

    iget-object p2, p0, Lt/b;->r:Lc1/b;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    iget-object p2, p0, Lt/b;->i:[I

    aget p2, p2, p3

    and-int/2addr p2, p4

    if-nez p2, :cond_2

    iget p2, p0, Lt/b;->b:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public final e(Landroid/view/View;F)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lt/b;->r:Lc1/b;

    invoke-virtual {v1, p1}, Lc1/b;->i(Landroid/view/View;)I

    move-result p1

    const/4 v1, 0x1

    if-lez p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    if-eqz p1, :cond_2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lt/b;->b:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method public final f(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lt/b;->d:[F

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget v1, p0, Lt/b;->k:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    shl-int v3, v2, p1

    .line 9
    .line 10
    and-int v4, v3, v1

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    if-eqz v4, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v2, v5

    .line 17
    :goto_0
    if-nez v2, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    const/4 v2, 0x0

    .line 21
    aput v2, v0, p1

    .line 22
    .line 23
    iget-object v0, p0, Lt/b;->e:[F

    .line 24
    .line 25
    aput v2, v0, p1

    .line 26
    .line 27
    iget-object v0, p0, Lt/b;->f:[F

    .line 28
    .line 29
    aput v2, v0, p1

    .line 30
    .line 31
    iget-object v0, p0, Lt/b;->g:[F

    .line 32
    .line 33
    aput v2, v0, p1

    .line 34
    .line 35
    iget-object v0, p0, Lt/b;->h:[I

    .line 36
    .line 37
    aput v5, v0, p1

    .line 38
    .line 39
    iget-object v0, p0, Lt/b;->i:[I

    .line 40
    .line 41
    aput v5, v0, p1

    .line 42
    .line 43
    iget-object v0, p0, Lt/b;->j:[I

    .line 44
    .line 45
    aput v5, v0, p1

    .line 46
    .line 47
    not-int p1, v3

    .line 48
    and-int/2addr p1, v1

    .line 49
    iput p1, p0, Lt/b;->k:I

    .line 50
    .line 51
    :cond_2
    :goto_1
    return-void
.end method

.method public final g(III)I
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    iget-object v0, p0, Lt/b;->u:Landroid/view/ViewGroup;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    div-int/lit8 v1, v0, 0x2

    .line 12
    .line 13
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    int-to-float v2, v2

    .line 18
    int-to-float v0, v0

    .line 19
    div-float/2addr v2, v0

    .line 20
    const/high16 v0, 0x3f800000    # 1.0f

    .line 21
    .line 22
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    int-to-float v1, v1

    .line 27
    const/high16 v3, 0x3f000000    # 0.5f

    .line 28
    .line 29
    sub-float/2addr v2, v3

    .line 30
    const v3, 0x3ef1463b

    .line 31
    .line 32
    .line 33
    mul-float/2addr v2, v3

    .line 34
    float-to-double v2, v2

    .line 35
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 36
    .line 37
    .line 38
    move-result-wide v2

    .line 39
    double-to-float v2, v2

    .line 40
    mul-float/2addr v2, v1

    .line 41
    add-float/2addr v2, v1

    .line 42
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    if-lez p2, :cond_1

    .line 47
    .line 48
    int-to-float p1, p2

    .line 49
    div-float/2addr v2, p1

    .line 50
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    const/high16 p2, 0x447a0000    # 1000.0f

    .line 55
    .line 56
    mul-float/2addr p1, p2

    .line 57
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    mul-int/lit8 p1, p1, 0x4

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    int-to-float p1, p1

    .line 69
    int-to-float p2, p3

    .line 70
    div-float/2addr p1, p2

    .line 71
    add-float/2addr p1, v0

    .line 72
    const/high16 p2, 0x43800000    # 256.0f

    .line 73
    .line 74
    mul-float/2addr p1, p2

    .line 75
    float-to-int p1, p1

    .line 76
    :goto_0
    const/16 p2, 0x258

    .line 77
    .line 78
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    return p1
.end method

.method public final h()Z
    .locals 10

    .line 1
    iget v0, p0, Lt/b;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    if-ne v0, v2, :cond_5

    .line 6
    .line 7
    iget-object v0, p0, Lt/b;->q:Landroid/widget/OverScroller;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    iget-object v6, p0, Lt/b;->s:Landroid/view/View;

    .line 22
    .line 23
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    sub-int v6, v4, v6

    .line 28
    .line 29
    iget-object v7, p0, Lt/b;->s:Landroid/view/View;

    .line 30
    .line 31
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    .line 32
    .line 33
    .line 34
    move-result v7

    .line 35
    sub-int v7, v5, v7

    .line 36
    .line 37
    if-eqz v6, :cond_0

    .line 38
    .line 39
    iget-object v8, p0, Lt/b;->s:Landroid/view/View;

    .line 40
    .line 41
    sget-object v9, Lp/k;->a:Ljava/lang/reflect/Field;

    .line 42
    .line 43
    invoke-virtual {v8, v6}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 44
    .line 45
    .line 46
    :cond_0
    if-eqz v7, :cond_1

    .line 47
    .line 48
    iget-object v8, p0, Lt/b;->s:Landroid/view/View;

    .line 49
    .line 50
    sget-object v9, Lp/k;->a:Ljava/lang/reflect/Field;

    .line 51
    .line 52
    invoke-virtual {v8, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 53
    .line 54
    .line 55
    :cond_1
    if-nez v6, :cond_2

    .line 56
    .line 57
    if-eqz v7, :cond_3

    .line 58
    .line 59
    :cond_2
    iget-object v6, p0, Lt/b;->r:Lc1/b;

    .line 60
    .line 61
    iget-object v7, p0, Lt/b;->s:Landroid/view/View;

    .line 62
    .line 63
    invoke-virtual {v6, v7, v4}, Lc1/b;->u(Landroid/view/View;I)V

    .line 64
    .line 65
    .line 66
    :cond_3
    if-eqz v3, :cond_4

    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalX()I

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    if-ne v4, v6, :cond_4

    .line 73
    .line 74
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalY()I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-ne v5, v4, :cond_4

    .line 79
    .line 80
    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 81
    .line 82
    .line 83
    move v3, v1

    .line 84
    :cond_4
    if-nez v3, :cond_5

    .line 85
    .line 86
    iget-object v0, p0, Lt/b;->v:Landroidx/activity/a;

    .line 87
    .line 88
    iget-object v3, p0, Lt/b;->u:Landroid/view/ViewGroup;

    .line 89
    .line 90
    invoke-virtual {v3, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 91
    .line 92
    .line 93
    :cond_5
    iget v0, p0, Lt/b;->a:I

    .line 94
    .line 95
    if-ne v0, v2, :cond_6

    .line 96
    .line 97
    const/4 v1, 0x1

    .line 98
    :cond_6
    return v1
.end method

.method public final j(II)Landroid/view/View;
    .locals 4

    .line 1
    iget-object v0, p0, Lt/b;->u:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lt/b;->r:Lc1/b;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge p1, v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p2, v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge p2, v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final k(IIII)Z
    .locals 11

    .line 1
    iget-object v0, p0, Lt/b;->s:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    iget-object v0, p0, Lt/b;->s:Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    sub-int v4, p1, v2

    .line 14
    .line 15
    sub-int v5, p2, v3

    .line 16
    .line 17
    iget-object v1, p0, Lt/b;->q:Landroid/widget/OverScroller;

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    if-nez v4, :cond_0

    .line 21
    .line 22
    if-nez v5, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lt/b;->r(I)V

    .line 28
    .line 29
    .line 30
    return p1

    .line 31
    :cond_0
    iget-object p2, p0, Lt/b;->s:Landroid/view/View;

    .line 32
    .line 33
    iget v0, p0, Lt/b;->n:F

    .line 34
    .line 35
    float-to-int v0, v0

    .line 36
    iget v6, p0, Lt/b;->m:F

    .line 37
    .line 38
    float-to-int v6, v6

    .line 39
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    if-ge v7, v0, :cond_1

    .line 44
    .line 45
    move p3, p1

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    if-le v7, v6, :cond_3

    .line 48
    .line 49
    if-lez p3, :cond_2

    .line 50
    .line 51
    move p3, v6

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    neg-int p3, v6

    .line 54
    :cond_3
    :goto_0
    iget v0, p0, Lt/b;->n:F

    .line 55
    .line 56
    float-to-int v0, v0

    .line 57
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    if-ge v7, v0, :cond_4

    .line 62
    .line 63
    move p4, p1

    .line 64
    goto :goto_1

    .line 65
    :cond_4
    if-le v7, v6, :cond_6

    .line 66
    .line 67
    if-lez p4, :cond_5

    .line 68
    .line 69
    move p4, v6

    .line 70
    goto :goto_1

    .line 71
    :cond_5
    neg-int p4, v6

    .line 72
    :cond_6
    :goto_1
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    .line 85
    .line 86
    .line 87
    move-result v8

    .line 88
    add-int v9, v7, v8

    .line 89
    .line 90
    add-int v10, v0, v6

    .line 91
    .line 92
    if-eqz p3, :cond_7

    .line 93
    .line 94
    int-to-float v0, v7

    .line 95
    int-to-float v7, v9

    .line 96
    goto :goto_2

    .line 97
    :cond_7
    int-to-float v0, v0

    .line 98
    int-to-float v7, v10

    .line 99
    :goto_2
    div-float/2addr v0, v7

    .line 100
    if-eqz p4, :cond_8

    .line 101
    .line 102
    int-to-float v6, v8

    .line 103
    int-to-float v7, v9

    .line 104
    goto :goto_3

    .line 105
    :cond_8
    int-to-float v6, v6

    .line 106
    int-to-float v7, v10

    .line 107
    :goto_3
    div-float/2addr v6, v7

    .line 108
    iget-object v7, p0, Lt/b;->r:Lc1/b;

    .line 109
    .line 110
    invoke-virtual {v7, p2}, Lc1/b;->i(Landroid/view/View;)I

    .line 111
    .line 112
    .line 113
    move-result p2

    .line 114
    invoke-virtual {p0, v4, p3, p2}, Lt/b;->g(III)I

    .line 115
    .line 116
    .line 117
    move-result p2

    .line 118
    invoke-virtual {p0, v5, p4, p1}, Lt/b;->g(III)I

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    int-to-float p2, p2

    .line 123
    mul-float/2addr p2, v0

    .line 124
    int-to-float p1, p1

    .line 125
    mul-float/2addr p1, v6

    .line 126
    add-float/2addr p1, p2

    .line 127
    float-to-int v6, p1

    .line 128
    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 129
    .line 130
    .line 131
    const/4 p1, 0x2

    .line 132
    invoke-virtual {p0, p1}, Lt/b;->r(I)V

    .line 133
    .line 134
    .line 135
    const/4 p1, 0x1

    .line 136
    return p1
.end method

.method public final m(Landroid/view/MotionEvent;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lt/b;->b()V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v2, p0, Lt/b;->l:Landroid/view/VelocityTracker;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    iput-object v2, p0, Lt/b;->l:Landroid/view/VelocityTracker;

    .line 23
    .line 24
    :cond_1
    iget-object v2, p0, Lt/b;->l:Landroid/view/VelocityTracker;

    .line 25
    .line 26
    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Lt/b;->r:Lc1/b;

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    if-eqz v0, :cond_18

    .line 33
    .line 34
    const/4 v4, 0x1

    .line 35
    if-eq v0, v4, :cond_16

    .line 36
    .line 37
    const/4 v5, 0x2

    .line 38
    if-eq v0, v5, :cond_a

    .line 39
    .line 40
    const/4 v5, 0x3

    .line 41
    if-eq v0, v5, :cond_9

    .line 42
    .line 43
    const/4 v5, 0x5

    .line 44
    if-eq v0, v5, :cond_7

    .line 45
    .line 46
    const/4 v2, 0x6

    .line 47
    if-eq v0, v2, :cond_2

    .line 48
    .line 49
    goto/16 :goto_9

    .line 50
    .line 51
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    iget v1, p0, Lt/b;->a:I

    .line 56
    .line 57
    if-ne v1, v4, :cond_6

    .line 58
    .line 59
    iget v1, p0, Lt/b;->c:I

    .line 60
    .line 61
    if-ne v0, v1, :cond_6

    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    :goto_0
    const/4 v2, -0x1

    .line 68
    if-ge v3, v1, :cond_5

    .line 69
    .line 70
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    iget v5, p0, Lt/b;->c:I

    .line 75
    .line 76
    if-ne v4, v5, :cond_3

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    float-to-int v5, v5

    .line 88
    float-to-int v6, v6

    .line 89
    invoke-virtual {p0, v5, v6}, Lt/b;->j(II)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    iget-object v6, p0, Lt/b;->s:Landroid/view/View;

    .line 94
    .line 95
    if-ne v5, v6, :cond_4

    .line 96
    .line 97
    invoke-virtual {p0, v4, v6}, Lt/b;->v(ILandroid/view/View;)Z

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    if-eqz v4, :cond_4

    .line 102
    .line 103
    iget p1, p0, Lt/b;->c:I

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_5
    move p1, v2

    .line 110
    :goto_2
    if-ne p1, v2, :cond_6

    .line 111
    .line 112
    invoke-virtual {p0}, Lt/b;->n()V

    .line 113
    .line 114
    .line 115
    :cond_6
    invoke-virtual {p0, v0}, Lt/b;->f(I)V

    .line 116
    .line 117
    .line 118
    goto/16 :goto_9

    .line 119
    .line 120
    :cond_7
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    invoke-virtual {p0, v0, v3, p1}, Lt/b;->p(IFF)V

    .line 133
    .line 134
    .line 135
    iget v1, p0, Lt/b;->a:I

    .line 136
    .line 137
    if-nez v1, :cond_8

    .line 138
    .line 139
    float-to-int v1, v3

    .line 140
    float-to-int p1, p1

    .line 141
    invoke-virtual {p0, v1, p1}, Lt/b;->j(II)Landroid/view/View;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-virtual {p0, v0, p1}, Lt/b;->v(ILandroid/view/View;)Z

    .line 146
    .line 147
    .line 148
    iget-object p1, p0, Lt/b;->h:[I

    .line 149
    .line 150
    aget p1, p1, v0

    .line 151
    .line 152
    iget v0, p0, Lt/b;->p:I

    .line 153
    .line 154
    and-int/2addr p1, v0

    .line 155
    if-eqz p1, :cond_19

    .line 156
    .line 157
    goto/16 :goto_8

    .line 158
    .line 159
    :cond_8
    float-to-int v1, v3

    .line 160
    float-to-int p1, p1

    .line 161
    iget-object v2, p0, Lt/b;->s:Landroid/view/View;

    .line 162
    .line 163
    invoke-static {v2, v1, p1}, Lt/b;->l(Landroid/view/View;II)Z

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    if-eqz p1, :cond_19

    .line 168
    .line 169
    iget-object p1, p0, Lt/b;->s:Landroid/view/View;

    .line 170
    .line 171
    invoke-virtual {p0, v0, p1}, Lt/b;->v(ILandroid/view/View;)Z

    .line 172
    .line 173
    .line 174
    goto/16 :goto_9

    .line 175
    .line 176
    :cond_9
    iget p1, p0, Lt/b;->a:I

    .line 177
    .line 178
    if-ne p1, v4, :cond_17

    .line 179
    .line 180
    iput-boolean v4, p0, Lt/b;->t:Z

    .line 181
    .line 182
    iget-object p1, p0, Lt/b;->s:Landroid/view/View;

    .line 183
    .line 184
    const/4 v0, 0x0

    .line 185
    invoke-virtual {v2, p1, v0}, Lc1/b;->v(Landroid/view/View;F)V

    .line 186
    .line 187
    .line 188
    iput-boolean v3, p0, Lt/b;->t:Z

    .line 189
    .line 190
    iget p1, p0, Lt/b;->a:I

    .line 191
    .line 192
    if-ne p1, v4, :cond_17

    .line 193
    .line 194
    invoke-virtual {p0, v3}, Lt/b;->r(I)V

    .line 195
    .line 196
    .line 197
    goto/16 :goto_7

    .line 198
    .line 199
    :cond_a
    iget v0, p0, Lt/b;->a:I

    .line 200
    .line 201
    if-ne v0, v4, :cond_10

    .line 202
    .line 203
    iget v0, p0, Lt/b;->c:I

    .line 204
    .line 205
    iget v1, p0, Lt/b;->k:I

    .line 206
    .line 207
    shl-int v5, v4, v0

    .line 208
    .line 209
    and-int/2addr v1, v5

    .line 210
    if-eqz v1, :cond_b

    .line 211
    .line 212
    move v3, v4

    .line 213
    :cond_b
    if-nez v3, :cond_c

    .line 214
    .line 215
    goto/16 :goto_9

    .line 216
    .line 217
    :cond_c
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    iget-object v3, p0, Lt/b;->f:[F

    .line 230
    .line 231
    iget v4, p0, Lt/b;->c:I

    .line 232
    .line 233
    aget v3, v3, v4

    .line 234
    .line 235
    sub-float/2addr v1, v3

    .line 236
    float-to-int v1, v1

    .line 237
    iget-object v3, p0, Lt/b;->g:[F

    .line 238
    .line 239
    aget v3, v3, v4

    .line 240
    .line 241
    sub-float/2addr v0, v3

    .line 242
    float-to-int v0, v0

    .line 243
    iget-object v3, p0, Lt/b;->s:Landroid/view/View;

    .line 244
    .line 245
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 246
    .line 247
    .line 248
    move-result v3

    .line 249
    add-int/2addr v3, v1

    .line 250
    iget-object v4, p0, Lt/b;->s:Landroid/view/View;

    .line 251
    .line 252
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    .line 253
    .line 254
    .line 255
    iget-object v4, p0, Lt/b;->s:Landroid/view/View;

    .line 256
    .line 257
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    .line 258
    .line 259
    .line 260
    move-result v4

    .line 261
    iget-object v5, p0, Lt/b;->s:Landroid/view/View;

    .line 262
    .line 263
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    .line 264
    .line 265
    .line 266
    move-result v5

    .line 267
    if-eqz v1, :cond_d

    .line 268
    .line 269
    iget-object v6, p0, Lt/b;->s:Landroid/view/View;

    .line 270
    .line 271
    invoke-virtual {v2, v6, v3}, Lc1/b;->d(Landroid/view/View;I)I

    .line 272
    .line 273
    .line 274
    move-result v3

    .line 275
    iget-object v6, p0, Lt/b;->s:Landroid/view/View;

    .line 276
    .line 277
    sub-int v4, v3, v4

    .line 278
    .line 279
    sget-object v7, Lp/k;->a:Ljava/lang/reflect/Field;

    .line 280
    .line 281
    invoke-virtual {v6, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 282
    .line 283
    .line 284
    :cond_d
    if-eqz v0, :cond_e

    .line 285
    .line 286
    iget-object v4, p0, Lt/b;->s:Landroid/view/View;

    .line 287
    .line 288
    invoke-virtual {v2, v4}, Lc1/b;->e(Landroid/view/View;)I

    .line 289
    .line 290
    .line 291
    move-result v4

    .line 292
    iget-object v6, p0, Lt/b;->s:Landroid/view/View;

    .line 293
    .line 294
    sub-int/2addr v4, v5

    .line 295
    sget-object v5, Lp/k;->a:Ljava/lang/reflect/Field;

    .line 296
    .line 297
    invoke-virtual {v6, v4}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 298
    .line 299
    .line 300
    :cond_e
    if-nez v1, :cond_f

    .line 301
    .line 302
    if-eqz v0, :cond_15

    .line 303
    .line 304
    :cond_f
    iget-object v0, p0, Lt/b;->s:Landroid/view/View;

    .line 305
    .line 306
    invoke-virtual {v2, v0, v3}, Lc1/b;->u(Landroid/view/View;I)V

    .line 307
    .line 308
    .line 309
    goto :goto_6

    .line 310
    :cond_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 311
    .line 312
    .line 313
    move-result v0

    .line 314
    move v1, v3

    .line 315
    :goto_3
    if-ge v1, v0, :cond_15

    .line 316
    .line 317
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 318
    .line 319
    .line 320
    move-result v2

    .line 321
    iget v5, p0, Lt/b;->k:I

    .line 322
    .line 323
    shl-int v6, v4, v2

    .line 324
    .line 325
    and-int/2addr v5, v6

    .line 326
    if-eqz v5, :cond_11

    .line 327
    .line 328
    move v5, v4

    .line 329
    goto :goto_4

    .line 330
    :cond_11
    move v5, v3

    .line 331
    :goto_4
    if-nez v5, :cond_12

    .line 332
    .line 333
    goto :goto_5

    .line 334
    :cond_12
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    .line 335
    .line 336
    .line 337
    move-result v5

    .line 338
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    .line 339
    .line 340
    .line 341
    move-result v6

    .line 342
    iget-object v7, p0, Lt/b;->d:[F

    .line 343
    .line 344
    aget v7, v7, v2

    .line 345
    .line 346
    sub-float v7, v5, v7

    .line 347
    .line 348
    iget-object v8, p0, Lt/b;->e:[F

    .line 349
    .line 350
    aget v8, v8, v2

    .line 351
    .line 352
    sub-float v8, v6, v8

    .line 353
    .line 354
    invoke-virtual {p0, v2, v7, v8}, Lt/b;->o(IFF)V

    .line 355
    .line 356
    .line 357
    iget v8, p0, Lt/b;->a:I

    .line 358
    .line 359
    if-ne v8, v4, :cond_13

    .line 360
    .line 361
    goto :goto_6

    .line 362
    :cond_13
    float-to-int v5, v5

    .line 363
    float-to-int v6, v6

    .line 364
    invoke-virtual {p0, v5, v6}, Lt/b;->j(II)Landroid/view/View;

    .line 365
    .line 366
    .line 367
    move-result-object v5

    .line 368
    invoke-virtual {p0, v5, v7}, Lt/b;->e(Landroid/view/View;F)Z

    .line 369
    .line 370
    .line 371
    move-result v6

    .line 372
    if-eqz v6, :cond_14

    .line 373
    .line 374
    invoke-virtual {p0, v2, v5}, Lt/b;->v(ILandroid/view/View;)Z

    .line 375
    .line 376
    .line 377
    move-result v2

    .line 378
    if-eqz v2, :cond_14

    .line 379
    .line 380
    goto :goto_6

    .line 381
    :cond_14
    :goto_5
    add-int/lit8 v1, v1, 0x1

    .line 382
    .line 383
    goto :goto_3

    .line 384
    :cond_15
    :goto_6
    invoke-virtual {p0, p1}, Lt/b;->q(Landroid/view/MotionEvent;)V

    .line 385
    .line 386
    .line 387
    goto :goto_9

    .line 388
    :cond_16
    iget p1, p0, Lt/b;->a:I

    .line 389
    .line 390
    if-ne p1, v4, :cond_17

    .line 391
    .line 392
    invoke-virtual {p0}, Lt/b;->n()V

    .line 393
    .line 394
    .line 395
    :cond_17
    :goto_7
    invoke-virtual {p0}, Lt/b;->b()V

    .line 396
    .line 397
    .line 398
    goto :goto_9

    .line 399
    :cond_18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 400
    .line 401
    .line 402
    move-result v0

    .line 403
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 404
    .line 405
    .line 406
    move-result v1

    .line 407
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 408
    .line 409
    .line 410
    move-result p1

    .line 411
    float-to-int v3, v0

    .line 412
    float-to-int v4, v1

    .line 413
    invoke-virtual {p0, v3, v4}, Lt/b;->j(II)Landroid/view/View;

    .line 414
    .line 415
    .line 416
    move-result-object v3

    .line 417
    invoke-virtual {p0, p1, v0, v1}, Lt/b;->p(IFF)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {p0, p1, v3}, Lt/b;->v(ILandroid/view/View;)Z

    .line 421
    .line 422
    .line 423
    iget-object v0, p0, Lt/b;->h:[I

    .line 424
    .line 425
    aget p1, v0, p1

    .line 426
    .line 427
    iget v0, p0, Lt/b;->p:I

    .line 428
    .line 429
    and-int/2addr p1, v0

    .line 430
    if-eqz p1, :cond_19

    .line 431
    .line 432
    :goto_8
    invoke-virtual {v2}, Lc1/b;->q()V

    .line 433
    .line 434
    .line 435
    :cond_19
    :goto_9
    return-void
.end method

.method public final n()V
    .locals 5

    .line 1
    iget-object v0, p0, Lt/b;->l:Landroid/view/VelocityTracker;

    .line 2
    .line 3
    const/16 v1, 0x3e8

    .line 4
    .line 5
    iget v2, p0, Lt/b;->m:F

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lt/b;->l:Landroid/view/VelocityTracker;

    .line 11
    .line 12
    iget v1, p0, Lt/b;->c:I

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget v1, p0, Lt/b;->n:F

    .line 19
    .line 20
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    cmpg-float v1, v3, v1

    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    if-gez v1, :cond_0

    .line 28
    .line 29
    move v0, v4

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    cmpl-float v1, v3, v2

    .line 32
    .line 33
    if-lez v1, :cond_2

    .line 34
    .line 35
    cmpl-float v0, v0, v4

    .line 36
    .line 37
    if-lez v0, :cond_1

    .line 38
    .line 39
    move v0, v2

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    neg-float v0, v2

    .line 42
    :cond_2
    :goto_0
    iget-object v1, p0, Lt/b;->l:Landroid/view/VelocityTracker;

    .line 43
    .line 44
    iget v3, p0, Lt/b;->c:I

    .line 45
    .line 46
    invoke-virtual {v1, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    iget v3, p0, Lt/b;->n:F

    .line 51
    .line 52
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    cmpg-float v3, v1, v3

    .line 57
    .line 58
    if-gez v3, :cond_3

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    cmpl-float v1, v1, v2

    .line 62
    .line 63
    :goto_1
    const/4 v1, 0x1

    .line 64
    iput-boolean v1, p0, Lt/b;->t:Z

    .line 65
    .line 66
    iget-object v2, p0, Lt/b;->r:Lc1/b;

    .line 67
    .line 68
    iget-object v3, p0, Lt/b;->s:Landroid/view/View;

    .line 69
    .line 70
    invoke-virtual {v2, v3, v0}, Lc1/b;->v(Landroid/view/View;F)V

    .line 71
    .line 72
    .line 73
    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lt/b;->t:Z

    .line 75
    .line 76
    iget v2, p0, Lt/b;->a:I

    .line 77
    .line 78
    if-ne v2, v1, :cond_4

    .line 79
    .line 80
    invoke-virtual {p0, v0}, Lt/b;->r(I)V

    .line 81
    .line 82
    .line 83
    :cond_4
    return-void
.end method

.method public final o(IFF)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, p2, p3, p1, v0}, Lt/b;->d(FFII)Z

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p0, p3, p2, p1, v1}, Lt/b;->d(FFII)Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x4

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, p2, p3, p1, v1}, Lt/b;->d(FFII)Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    const/16 v1, 0x8

    invoke-virtual {p0, p3, p2, p1, v1}, Lt/b;->d(FFII)Z

    move-result p2

    if-eqz p2, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    if-eqz v0, :cond_3

    iget-object p2, p0, Lt/b;->i:[I

    aget p3, p2, p1

    or-int/2addr p3, v0

    aput p3, p2, p1

    iget-object p2, p0, Lt/b;->r:Lc1/b;

    invoke-virtual {p2, v0, p1}, Lc1/b;->p(II)V

    :cond_3
    return-void
.end method

.method public final p(IFF)V
    .locals 10

    .line 1
    iget-object v0, p0, Lt/b;->d:[F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    array-length v2, v0

    .line 7
    if-gt v2, p1, :cond_2

    .line 8
    .line 9
    :cond_0
    add-int/lit8 v2, p1, 0x1

    .line 10
    .line 11
    new-array v3, v2, [F

    .line 12
    .line 13
    new-array v4, v2, [F

    .line 14
    .line 15
    new-array v5, v2, [F

    .line 16
    .line 17
    new-array v6, v2, [F

    .line 18
    .line 19
    new-array v7, v2, [I

    .line 20
    .line 21
    new-array v8, v2, [I

    .line 22
    .line 23
    new-array v2, v2, [I

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    array-length v9, v0

    .line 28
    invoke-static {v0, v1, v3, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lt/b;->e:[F

    .line 32
    .line 33
    array-length v9, v0

    .line 34
    invoke-static {v0, v1, v4, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lt/b;->f:[F

    .line 38
    .line 39
    array-length v9, v0

    .line 40
    invoke-static {v0, v1, v5, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lt/b;->g:[F

    .line 44
    .line 45
    array-length v9, v0

    .line 46
    invoke-static {v0, v1, v6, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lt/b;->h:[I

    .line 50
    .line 51
    array-length v9, v0

    .line 52
    invoke-static {v0, v1, v7, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lt/b;->i:[I

    .line 56
    .line 57
    array-length v9, v0

    .line 58
    invoke-static {v0, v1, v8, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lt/b;->j:[I

    .line 62
    .line 63
    array-length v9, v0

    .line 64
    invoke-static {v0, v1, v2, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    .line 66
    .line 67
    :cond_1
    iput-object v3, p0, Lt/b;->d:[F

    .line 68
    .line 69
    iput-object v4, p0, Lt/b;->e:[F

    .line 70
    .line 71
    iput-object v5, p0, Lt/b;->f:[F

    .line 72
    .line 73
    iput-object v6, p0, Lt/b;->g:[F

    .line 74
    .line 75
    iput-object v7, p0, Lt/b;->h:[I

    .line 76
    .line 77
    iput-object v8, p0, Lt/b;->i:[I

    .line 78
    .line 79
    iput-object v2, p0, Lt/b;->j:[I

    .line 80
    .line 81
    :cond_2
    iget-object v0, p0, Lt/b;->d:[F

    .line 82
    .line 83
    iget-object v2, p0, Lt/b;->f:[F

    .line 84
    .line 85
    aput p2, v2, p1

    .line 86
    .line 87
    aput p2, v0, p1

    .line 88
    .line 89
    iget-object v0, p0, Lt/b;->e:[F

    .line 90
    .line 91
    iget-object v2, p0, Lt/b;->g:[F

    .line 92
    .line 93
    aput p3, v2, p1

    .line 94
    .line 95
    aput p3, v0, p1

    .line 96
    .line 97
    iget-object v0, p0, Lt/b;->h:[I

    .line 98
    .line 99
    float-to-int p2, p2

    .line 100
    float-to-int p3, p3

    .line 101
    iget-object v2, p0, Lt/b;->u:Landroid/view/ViewGroup;

    .line 102
    .line 103
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    iget v4, p0, Lt/b;->o:I

    .line 108
    .line 109
    add-int/2addr v3, v4

    .line 110
    const/4 v5, 0x1

    .line 111
    if-ge p2, v3, :cond_3

    .line 112
    .line 113
    move v1, v5

    .line 114
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    add-int/2addr v3, v4

    .line 119
    if-ge p3, v3, :cond_4

    .line 120
    .line 121
    or-int/lit8 v1, v1, 0x4

    .line 122
    .line 123
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    sub-int/2addr v3, v4

    .line 128
    if-le p2, v3, :cond_5

    .line 129
    .line 130
    or-int/lit8 v1, v1, 0x2

    .line 131
    .line 132
    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    .line 133
    .line 134
    .line 135
    move-result p2

    .line 136
    sub-int/2addr p2, v4

    .line 137
    if-le p3, p2, :cond_6

    .line 138
    .line 139
    or-int/lit8 v1, v1, 0x8

    .line 140
    .line 141
    :cond_6
    aput v1, v0, p1

    .line 142
    .line 143
    iget p2, p0, Lt/b;->k:I

    .line 144
    .line 145
    shl-int p1, v5, p1

    .line 146
    .line 147
    or-int/2addr p1, p2

    .line 148
    iput p1, p0, Lt/b;->k:I

    .line 149
    .line 150
    return-void
.end method

.method public final q(Landroid/view/MotionEvent;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    if-ge v2, v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    iget v4, p0, Lt/b;->k:I

    .line 14
    .line 15
    const/4 v5, 0x1

    .line 16
    shl-int v6, v5, v3

    .line 17
    .line 18
    and-int/2addr v4, v6

    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    move v5, v1

    .line 23
    :goto_1
    if-nez v5, :cond_1

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    iget-object v6, p0, Lt/b;->f:[F

    .line 35
    .line 36
    aput v4, v6, v3

    .line 37
    .line 38
    iget-object v4, p0, Lt/b;->g:[F

    .line 39
    .line 40
    aput v5, v4, v3

    .line 41
    .line 42
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    return-void
.end method

.method public final r(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lt/b;->v:Landroidx/activity/a;

    iget-object v1, p0, Lt/b;->u:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget v0, p0, Lt/b;->a:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lt/b;->a:I

    iget-object v0, p0, Lt/b;->r:Lc1/b;

    invoke-virtual {v0, p1}, Lc1/b;->t(I)V

    iget p1, p0, Lt/b;->a:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lt/b;->s:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public final s(II)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lt/b;->t:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lt/b;->l:Landroid/view/VelocityTracker;

    iget v1, p0, Lt/b;->c:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lt/b;->l:Landroid/view/VelocityTracker;

    iget v2, p0, Lt/b;->c:I

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lt/b;->k(IIII)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final t(Landroid/view/MotionEvent;)Z
    .locals 13

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lt/b;->b()V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v2, p0, Lt/b;->l:Landroid/view/VelocityTracker;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    iput-object v2, p0, Lt/b;->l:Landroid/view/VelocityTracker;

    .line 23
    .line 24
    :cond_1
    iget-object v2, p0, Lt/b;->l:Landroid/view/VelocityTracker;

    .line 25
    .line 26
    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 27
    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x1

    .line 31
    const/4 v4, 0x2

    .line 32
    iget-object v5, p0, Lt/b;->r:Lc1/b;

    .line 33
    .line 34
    if-eqz v0, :cond_f

    .line 35
    .line 36
    if-eq v0, v3, :cond_e

    .line 37
    .line 38
    if-eq v0, v4, :cond_5

    .line 39
    .line 40
    const/4 v6, 0x3

    .line 41
    if-eq v0, v6, :cond_e

    .line 42
    .line 43
    const/4 v6, 0x5

    .line 44
    if-eq v0, v6, :cond_3

    .line 45
    .line 46
    const/4 v4, 0x6

    .line 47
    if-eq v0, v4, :cond_2

    .line 48
    .line 49
    goto/16 :goto_6

    .line 50
    .line 51
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    invoke-virtual {p0, p1}, Lt/b;->f(I)V

    .line 56
    .line 57
    .line 58
    goto/16 :goto_6

    .line 59
    .line 60
    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    invoke-virtual {p0, v0, v6, p1}, Lt/b;->p(IFF)V

    .line 73
    .line 74
    .line 75
    iget v1, p0, Lt/b;->a:I

    .line 76
    .line 77
    if-nez v1, :cond_4

    .line 78
    .line 79
    iget-object p1, p0, Lt/b;->h:[I

    .line 80
    .line 81
    aget p1, p1, v0

    .line 82
    .line 83
    iget v0, p0, Lt/b;->p:I

    .line 84
    .line 85
    and-int/2addr p1, v0

    .line 86
    if-eqz p1, :cond_11

    .line 87
    .line 88
    goto/16 :goto_5

    .line 89
    .line 90
    :cond_4
    if-ne v1, v4, :cond_11

    .line 91
    .line 92
    float-to-int v1, v6

    .line 93
    float-to-int p1, p1

    .line 94
    invoke-virtual {p0, v1, p1}, Lt/b;->j(II)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    iget-object v1, p0, Lt/b;->s:Landroid/view/View;

    .line 99
    .line 100
    if-ne p1, v1, :cond_11

    .line 101
    .line 102
    invoke-virtual {p0, v0, p1}, Lt/b;->v(ILandroid/view/View;)Z

    .line 103
    .line 104
    .line 105
    goto/16 :goto_6

    .line 106
    .line 107
    :cond_5
    iget-object v0, p0, Lt/b;->d:[F

    .line 108
    .line 109
    if-eqz v0, :cond_11

    .line 110
    .line 111
    iget-object v0, p0, Lt/b;->e:[F

    .line 112
    .line 113
    if-nez v0, :cond_6

    .line 114
    .line 115
    goto/16 :goto_6

    .line 116
    .line 117
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    move v1, v2

    .line 122
    :goto_0
    if-ge v1, v0, :cond_d

    .line 123
    .line 124
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    iget v6, p0, Lt/b;->k:I

    .line 129
    .line 130
    shl-int v7, v3, v4

    .line 131
    .line 132
    and-int/2addr v6, v7

    .line 133
    if-eqz v6, :cond_7

    .line 134
    .line 135
    move v6, v3

    .line 136
    goto :goto_1

    .line 137
    :cond_7
    move v6, v2

    .line 138
    :goto_1
    if-nez v6, :cond_8

    .line 139
    .line 140
    goto :goto_3

    .line 141
    :cond_8
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    .line 142
    .line 143
    .line 144
    move-result v6

    .line 145
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    .line 146
    .line 147
    .line 148
    move-result v7

    .line 149
    iget-object v8, p0, Lt/b;->d:[F

    .line 150
    .line 151
    aget v8, v8, v4

    .line 152
    .line 153
    sub-float v8, v6, v8

    .line 154
    .line 155
    iget-object v9, p0, Lt/b;->e:[F

    .line 156
    .line 157
    aget v9, v9, v4

    .line 158
    .line 159
    sub-float v9, v7, v9

    .line 160
    .line 161
    float-to-int v6, v6

    .line 162
    float-to-int v7, v7

    .line 163
    invoke-virtual {p0, v6, v7}, Lt/b;->j(II)Landroid/view/View;

    .line 164
    .line 165
    .line 166
    move-result-object v6

    .line 167
    if-eqz v6, :cond_9

    .line 168
    .line 169
    invoke-virtual {p0, v6, v8}, Lt/b;->e(Landroid/view/View;F)Z

    .line 170
    .line 171
    .line 172
    move-result v7

    .line 173
    if-eqz v7, :cond_9

    .line 174
    .line 175
    move v7, v3

    .line 176
    goto :goto_2

    .line 177
    :cond_9
    move v7, v2

    .line 178
    :goto_2
    if-eqz v7, :cond_a

    .line 179
    .line 180
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    .line 181
    .line 182
    .line 183
    move-result v10

    .line 184
    float-to-int v11, v8

    .line 185
    add-int/2addr v11, v10

    .line 186
    invoke-virtual {v5, v6, v11}, Lc1/b;->d(Landroid/view/View;I)I

    .line 187
    .line 188
    .line 189
    move-result v11

    .line 190
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    .line 191
    .line 192
    .line 193
    invoke-virtual {v5, v6}, Lc1/b;->e(Landroid/view/View;)I

    .line 194
    .line 195
    .line 196
    invoke-virtual {v5, v6}, Lc1/b;->i(Landroid/view/View;)I

    .line 197
    .line 198
    .line 199
    move-result v12

    .line 200
    if-eqz v12, :cond_d

    .line 201
    .line 202
    if-lez v12, :cond_a

    .line 203
    .line 204
    if-ne v11, v10, :cond_a

    .line 205
    .line 206
    goto :goto_4

    .line 207
    :cond_a
    invoke-virtual {p0, v4, v8, v9}, Lt/b;->o(IFF)V

    .line 208
    .line 209
    .line 210
    iget v8, p0, Lt/b;->a:I

    .line 211
    .line 212
    if-ne v8, v3, :cond_b

    .line 213
    .line 214
    goto :goto_4

    .line 215
    :cond_b
    if-eqz v7, :cond_c

    .line 216
    .line 217
    invoke-virtual {p0, v4, v6}, Lt/b;->v(ILandroid/view/View;)Z

    .line 218
    .line 219
    .line 220
    move-result v4

    .line 221
    if-eqz v4, :cond_c

    .line 222
    .line 223
    goto :goto_4

    .line 224
    :cond_c
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 225
    .line 226
    goto :goto_0

    .line 227
    :cond_d
    :goto_4
    invoke-virtual {p0, p1}, Lt/b;->q(Landroid/view/MotionEvent;)V

    .line 228
    .line 229
    .line 230
    goto :goto_6

    .line 231
    :cond_e
    invoke-virtual {p0}, Lt/b;->b()V

    .line 232
    .line 233
    .line 234
    goto :goto_6

    .line 235
    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 244
    .line 245
    .line 246
    move-result p1

    .line 247
    invoke-virtual {p0, p1, v0, v1}, Lt/b;->p(IFF)V

    .line 248
    .line 249
    .line 250
    float-to-int v0, v0

    .line 251
    float-to-int v1, v1

    .line 252
    invoke-virtual {p0, v0, v1}, Lt/b;->j(II)Landroid/view/View;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    iget-object v1, p0, Lt/b;->s:Landroid/view/View;

    .line 257
    .line 258
    if-ne v0, v1, :cond_10

    .line 259
    .line 260
    iget v1, p0, Lt/b;->a:I

    .line 261
    .line 262
    if-ne v1, v4, :cond_10

    .line 263
    .line 264
    invoke-virtual {p0, p1, v0}, Lt/b;->v(ILandroid/view/View;)Z

    .line 265
    .line 266
    .line 267
    :cond_10
    iget-object v0, p0, Lt/b;->h:[I

    .line 268
    .line 269
    aget p1, v0, p1

    .line 270
    .line 271
    iget v0, p0, Lt/b;->p:I

    .line 272
    .line 273
    and-int/2addr p1, v0

    .line 274
    if-eqz p1, :cond_11

    .line 275
    .line 276
    :goto_5
    invoke-virtual {v5}, Lc1/b;->q()V

    .line 277
    .line 278
    .line 279
    :cond_11
    :goto_6
    iget p1, p0, Lt/b;->a:I

    .line 280
    .line 281
    if-ne p1, v3, :cond_12

    .line 282
    .line 283
    move v2, v3

    .line 284
    :cond_12
    return v2
.end method

.method public final u(Landroid/view/View;II)Z
    .locals 0

    .line 1
    iput-object p1, p0, Lt/b;->s:Landroid/view/View;

    const/4 p1, -0x1

    iput p1, p0, Lt/b;->c:I

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p3, p1, p1}, Lt/b;->k(IIII)Z

    move-result p1

    if-nez p1, :cond_0

    iget p2, p0, Lt/b;->a:I

    if-nez p2, :cond_0

    iget-object p2, p0, Lt/b;->s:Landroid/view/View;

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    iput-object p2, p0, Lt/b;->s:Landroid/view/View;

    :cond_0
    return p1
.end method

.method public final v(ILandroid/view/View;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lt/b;->s:Landroid/view/View;

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    iget v0, p0, Lt/b;->c:I

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lt/b;->r:Lc1/b;

    invoke-virtual {v0, p2}, Lc1/b;->y(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput p1, p0, Lt/b;->c:I

    invoke-virtual {p0, p1, p2}, Lt/b;->c(ILandroid/view/View;)V

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
