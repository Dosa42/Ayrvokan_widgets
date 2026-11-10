.class public Landroidx/coordinatorlayout/widget/CoordinatorLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Lp/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    }
.end annotation


# static fields
.field public static final q:Ljava/lang/String;

.field public static final r:[Ljava/lang/Class;

.field public static final s:Ljava/lang/ThreadLocal;

.field public static final t:Lh/f;

.field public static final u:Lo/b;


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Lh/g;

.field public final c:Ljava/util/ArrayList;

.field public final d:[I

.field public e:Z

.field public f:Z

.field public final g:[I

.field public h:Landroid/view/View;

.field public i:Lh/c;

.field public j:Z

.field public k:Lp/l;

.field public l:Z

.field public m:Landroid/graphics/drawable/Drawable;

.field public n:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field public o:Lh/a;

.field public final p:Lp/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-class v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->q:Ljava/lang/String;

    new-instance v0, Lh/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lh/f;-><init>(I)V

    sput-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->t:Lh/f;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v0, v1

    sput-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->r:[Ljava/lang/Class;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->s:Ljava/lang/ThreadLocal;

    new-instance v0, Lo/b;

    invoke-direct {v0}, Lo/b;-><init>()V

    sput-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->u:Lo/b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lg/a;->coordinatorLayoutStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a:Ljava/util/ArrayList;

    new-instance v0, Lh/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lh/g;-><init>(I)V

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->b:Lh/g;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->d:[I

    new-instance v0, Lp/e;

    invoke-direct {v0}, Lp/e;-><init>()V

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->p:Lp/e;

    if-nez p3, :cond_0

    sget-object p3, Lg/c;->CoordinatorLayout:[I

    sget v0, Lg/b;->Widget_Support_CoordinatorLayout:I

    invoke-virtual {p1, p2, p3, v1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    goto :goto_0

    :cond_0
    sget-object v0, Lg/c;->CoordinatorLayout:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    :goto_0
    sget p3, Lg/c;->CoordinatorLayout_keylines:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p3

    iput-object p3, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->g:[I

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    array-length p3, p3

    :goto_1
    if-ge v1, p3, :cond_1

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->g:[I

    aget v2, v0, v1

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    sget p1, Lg/c;->CoordinatorLayout_statusBarBackground:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->r()V

    new-instance p1, Lh/b;

    invoke-direct {p1, p0}, Lh/b;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method public static f()Landroid/graphics/Rect;
    .locals 1

    .line 1
    sget-object v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->u:Lo/b;

    invoke-virtual {v0}, Lo/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    :cond_0
    return-object v0
.end method

.method public static j(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroidx/coordinatorlayout/widget/b;II)V
    .locals 6

    .line 1
    iget v0, p3, Landroidx/coordinatorlayout/widget/b;->c:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x11

    .line 6
    .line 7
    :cond_0
    invoke-static {v0, p0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget p3, p3, Landroidx/coordinatorlayout/widget/b;->d:I

    .line 12
    .line 13
    and-int/lit8 v1, p3, 0x7

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    const v1, 0x800003

    .line 18
    .line 19
    .line 20
    or-int/2addr p3, v1

    .line 21
    :cond_1
    and-int/lit8 v1, p3, 0x70

    .line 22
    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    or-int/lit8 p3, p3, 0x30

    .line 26
    .line 27
    :cond_2
    invoke-static {p3, p0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    and-int/lit8 p3, v0, 0x7

    .line 32
    .line 33
    and-int/lit8 v0, v0, 0x70

    .line 34
    .line 35
    and-int/lit8 v1, p0, 0x7

    .line 36
    .line 37
    and-int/lit8 p0, p0, 0x70

    .line 38
    .line 39
    const/4 v2, 0x5

    .line 40
    const/4 v3, 0x1

    .line 41
    if-eq v1, v3, :cond_4

    .line 42
    .line 43
    if-eq v1, v2, :cond_3

    .line 44
    .line 45
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    iget v1, p1, Landroid/graphics/Rect;->right:I

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_4
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    div-int/lit8 v4, v4, 0x2

    .line 58
    .line 59
    add-int/2addr v1, v4

    .line 60
    :goto_0
    const/16 v4, 0x50

    .line 61
    .line 62
    const/16 v5, 0x10

    .line 63
    .line 64
    if-eq p0, v5, :cond_6

    .line 65
    .line 66
    if-eq p0, v4, :cond_5

    .line 67
    .line 68
    iget p0, p1, Landroid/graphics/Rect;->top:I

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_5
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_6
    iget p0, p1, Landroid/graphics/Rect;->top:I

    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    div-int/lit8 p1, p1, 0x2

    .line 81
    .line 82
    add-int/2addr p0, p1

    .line 83
    :goto_1
    if-eq p3, v3, :cond_7

    .line 84
    .line 85
    if-eq p3, v2, :cond_8

    .line 86
    .line 87
    sub-int/2addr v1, p4

    .line 88
    goto :goto_2

    .line 89
    :cond_7
    div-int/lit8 p1, p4, 0x2

    .line 90
    .line 91
    sub-int/2addr v1, p1

    .line 92
    :cond_8
    :goto_2
    if-eq v0, v5, :cond_9

    .line 93
    .line 94
    if-eq v0, v4, :cond_a

    .line 95
    .line 96
    sub-int/2addr p0, p5

    .line 97
    goto :goto_3

    .line 98
    :cond_9
    div-int/lit8 p1, p5, 0x2

    .line 99
    .line 100
    sub-int/2addr p0, p1

    .line 101
    :cond_a
    :goto_3
    add-int/2addr p4, v1

    .line 102
    add-int/2addr p5, p0

    .line 103
    invoke-virtual {p2, v1, p0, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public static k(Landroid/view/View;)Landroidx/coordinatorlayout/widget/b;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/coordinatorlayout/widget/b;

    .line 6
    .line 7
    iget-boolean v1, v0, Landroidx/coordinatorlayout/widget/b;->b:Z

    .line 8
    .line 9
    if-nez v1, :cond_2

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_0
    if-eqz p0, :cond_0

    .line 17
    .line 18
    const-class v1, Landroidx/coordinatorlayout/widget/a;

    .line 19
    .line 20
    invoke-virtual {p0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Landroidx/coordinatorlayout/widget/a;

    .line 25
    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p0, 0x1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    :try_start_0
    invoke-interface {v1}, Landroidx/coordinatorlayout/widget/a;->value()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    const/4 v3, 0x0

    .line 41
    new-array v4, v3, [Ljava/lang/Class;

    .line 42
    .line 43
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    new-array v3, v3, [Ljava/lang/Object;

    .line 48
    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 54
    .line 55
    iget-object v3, v0, Landroidx/coordinatorlayout/widget/b;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 56
    .line 57
    if-eq v3, v2, :cond_1

    .line 58
    .line 59
    iput-object v2, v0, Landroidx/coordinatorlayout/widget/b;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 60
    .line 61
    iput-boolean p0, v0, Landroidx/coordinatorlayout/widget/b;->b:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :catch_0
    invoke-interface {v1}, Landroidx/coordinatorlayout/widget/a;->value()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    :cond_1
    :goto_1
    iput-boolean p0, v0, Landroidx/coordinatorlayout/widget/b;->b:Z

    .line 72
    .line 73
    :cond_2
    return-object v0
.end method

.method public static p(ILandroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/coordinatorlayout/widget/b;

    .line 6
    .line 7
    iget v1, v0, Landroidx/coordinatorlayout/widget/b;->i:I

    .line 8
    .line 9
    if-eq v1, p0, :cond_0

    .line 10
    .line 11
    sub-int v1, p0, v1

    .line 12
    .line 13
    sget-object v2, Lp/k;->a:Ljava/lang/reflect/Field;

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 16
    .line 17
    .line 18
    iput p0, v0, Landroidx/coordinatorlayout/widget/b;->i:I

    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public static q(ILandroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/coordinatorlayout/widget/b;

    .line 6
    .line 7
    iget v1, v0, Landroidx/coordinatorlayout/widget/b;->j:I

    .line 8
    .line 9
    if-eq v1, p0, :cond_0

    .line 10
    .line 11
    sub-int v1, p0, v1

    .line 12
    .line 13
    sget-object v2, Lp/k;->a:Ljava/lang/reflect/Field;

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 16
    .line 17
    .line 18
    iput p0, v0, Landroidx/coordinatorlayout/widget/b;->j:I

    .line 19
    .line 20
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/View;II)V
    .locals 1

    .line 1
    const/4 p1, 0x1

    .line 2
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->p:Lp/e;

    .line 3
    .line 4
    if-ne p4, p1, :cond_0

    .line 5
    .line 6
    iput p3, v0, Lp/e;->b:I

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iput p3, v0, Lp/e;->a:I

    .line 10
    .line 11
    :goto_0
    iput-object p2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->h:Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const/4 p2, 0x0

    .line 18
    :goto_1
    if-ge p2, p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    check-cast p3, Landroidx/coordinatorlayout/widget/b;

    .line 29
    .line 30
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    add-int/lit8 p2, p2, 0x1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    return-void
.end method

.method public final b(II)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x0

    .line 6
    move v1, v0

    .line 7
    :goto_0
    if-ge v1, p1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/16 v4, 0x8

    .line 18
    .line 19
    if-ne v3, v4, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Landroidx/coordinatorlayout/widget/b;

    .line 27
    .line 28
    iget-object v3, v2, Landroidx/coordinatorlayout/widget/b;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 29
    .line 30
    invoke-virtual {v2, p2}, Landroidx/coordinatorlayout/widget/b;->b(I)V

    .line 31
    .line 32
    .line 33
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return v0
.end method

.method public final c(II[II)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    move v3, v2

    .line 8
    move v4, v3

    .line 9
    move v5, v4

    .line 10
    :goto_0
    const/4 v6, 0x1

    .line 11
    if-ge v2, v0, :cond_5

    .line 12
    .line 13
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v7

    .line 17
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    .line 18
    .line 19
    .line 20
    move-result v8

    .line 21
    const/16 v9, 0x8

    .line 22
    .line 23
    if-ne v8, v9, :cond_0

    .line 24
    .line 25
    goto :goto_3

    .line 26
    :cond_0
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    check-cast v7, Landroidx/coordinatorlayout/widget/b;

    .line 31
    .line 32
    invoke-virtual {v7, p4}, Landroidx/coordinatorlayout/widget/b;->a(I)Z

    .line 33
    .line 34
    .line 35
    move-result v8

    .line 36
    if-nez v8, :cond_1

    .line 37
    .line 38
    goto :goto_3

    .line 39
    :cond_1
    iget-object v7, v7, Landroidx/coordinatorlayout/widget/b;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 40
    .line 41
    if-eqz v7, :cond_4

    .line 42
    .line 43
    iget-object v5, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->d:[I

    .line 44
    .line 45
    aput v1, v5, v6

    .line 46
    .line 47
    aput v1, v5, v1

    .line 48
    .line 49
    if-lez p1, :cond_2

    .line 50
    .line 51
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    :goto_1
    if-lez p2, :cond_3

    .line 61
    .line 62
    aget v5, v5, v6

    .line 63
    .line 64
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    goto :goto_2

    .line 69
    :cond_3
    aget v5, v5, v6

    .line 70
    .line 71
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    :goto_2
    move v5, v6

    .line 76
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_5
    aput v3, p3, v1

    .line 80
    .line 81
    aput v4, p3, v6

    .line 82
    .line 83
    if-eqz v5, :cond_6

    .line 84
    .line 85
    invoke-virtual {p0, v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->l(I)V

    .line 86
    .line 87
    .line 88
    :cond_6
    return-void
.end method

.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Landroidx/coordinatorlayout/widget/b;

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

.method public final d(II)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x0

    .line 6
    move v1, v0

    .line 7
    :goto_0
    const/4 v2, 0x1

    .line 8
    if-ge v0, p1, :cond_3

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    const/16 v5, 0x8

    .line 19
    .line 20
    if-ne v4, v5, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Landroidx/coordinatorlayout/widget/b;

    .line 28
    .line 29
    invoke-virtual {v3, p2}, Landroidx/coordinatorlayout/widget/b;->a(I)Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-nez v4, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    iget-object v3, v3, Landroidx/coordinatorlayout/widget/b;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 37
    .line 38
    if-eqz v3, :cond_2

    .line 39
    .line 40
    move v1, v2

    .line 41
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_3
    if-eqz v1, :cond_4

    .line 45
    .line 46
    invoke-virtual {p0, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->l(I)V

    .line 47
    .line 48
    .line 49
    :cond_4
    return-void
.end method

.method public final drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/b;

    iget-object v0, v0, Landroidx/coordinatorlayout/widget/b;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public final drawableStateChanged()V
    .locals 4

    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->m:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    or-int/2addr v2, v0

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public final e(ILandroid/view/View;)V
    .locals 3

    .line 1
    const/4 p2, 0x0

    .line 2
    const/4 v0, 0x1

    .line 3
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->p:Lp/e;

    .line 4
    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    iput p2, v1, Lp/e;->b:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iput p2, v1, Lp/e;->a:I

    .line 11
    .line 12
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    :goto_1
    if-ge p2, v0, :cond_2

    .line 17
    .line 18
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Landroidx/coordinatorlayout/widget/b;

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Landroidx/coordinatorlayout/widget/b;->a(I)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_1
    invoke-virtual {v1, p1}, Landroidx/coordinatorlayout/widget/b;->b(I)V

    .line 36
    .line 37
    .line 38
    :goto_2
    add-int/lit8 p2, p2, 0x1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    const/4 p1, 0x0

    .line 42
    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->h:Landroid/view/View;

    .line 43
    .line 44
    return-void
.end method

.method public final g(Landroidx/coordinatorlayout/widget/b;Landroid/graphics/Rect;II)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v0, v4

    sub-int/2addr v0, p3

    iget v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v0, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v1, v4

    sub-int/2addr v1, p4

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v1, p1

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr p3, v0

    add-int/2addr p4, p1

    invoke-virtual {p2, v0, p1, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    new-instance v0, Landroidx/coordinatorlayout/widget/b;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/coordinatorlayout/widget/b;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroidx/coordinatorlayout/widget/b;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/coordinatorlayout/widget/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 2
    instance-of v0, p1, Landroidx/coordinatorlayout/widget/b;

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/coordinatorlayout/widget/b;

    check-cast p1, Landroidx/coordinatorlayout/widget/b;

    invoke-direct {v0, p1}, Landroidx/coordinatorlayout/widget/b;-><init>(Landroidx/coordinatorlayout/widget/b;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Landroidx/coordinatorlayout/widget/b;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroidx/coordinatorlayout/widget/b;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroidx/coordinatorlayout/widget/b;

    invoke-direct {v0, p1}, Landroidx/coordinatorlayout/widget/b;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-object v0
.end method

.method public final getDependencySortedChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->n()V

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getLastWindowInsets()Lp/l;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->k:Lp/l;

    return-object v0
.end method

.method public getNestedScrollAxes()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->p:Lp/e;

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

.method public getStatusBarBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->m:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSuggestedMinimumHeight()I
    .locals 3

    invoke-super {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getSuggestedMinimumWidth()I
    .locals 3

    invoke-super {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final h(Landroid/view/View;Landroid/graphics/Rect;Z)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p0, p2, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->i(Landroid/graphics/Rect;Landroid/view/View;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-virtual {p2, p3, v0, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method public final i(Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 4

    .line 1
    sget-object v0, Lh/h;->a:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 13
    .line 14
    .line 15
    sget-object v0, Lh/h;->a:Ljava/lang/ThreadLocal;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroid/graphics/Matrix;

    .line 22
    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    new-instance v1, Landroid/graphics/Matrix;

    .line 26
    .line 27
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 35
    .line 36
    .line 37
    :goto_0
    invoke-static {p0, p2, v1}, Lh/h;->a(Landroid/view/ViewParent;Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 38
    .line 39
    .line 40
    sget-object p2, Lh/h;->b:Ljava/lang/ThreadLocal;

    .line 41
    .line 42
    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Landroid/graphics/RectF;

    .line 47
    .line 48
    if-nez v0, :cond_1

    .line 49
    .line 50
    new-instance v0, Landroid/graphics/RectF;

    .line 51
    .line 52
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 62
    .line 63
    .line 64
    iget p2, v0, Landroid/graphics/RectF;->left:F

    .line 65
    .line 66
    const/high16 v1, 0x3f000000    # 0.5f

    .line 67
    .line 68
    add-float/2addr p2, v1

    .line 69
    float-to-int p2, p2

    .line 70
    iget v2, v0, Landroid/graphics/RectF;->top:F

    .line 71
    .line 72
    add-float/2addr v2, v1

    .line 73
    float-to-int v2, v2

    .line 74
    iget v3, v0, Landroid/graphics/RectF;->right:F

    .line 75
    .line 76
    add-float/2addr v3, v1

    .line 77
    float-to-int v3, v3

    .line 78
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 79
    .line 80
    add-float/2addr v0, v1

    .line 81
    float-to-int v0, v0

    .line 82
    invoke-virtual {p1, p2, v2, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public final l(I)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lp/k;->a:Ljava/lang/reflect/Field;

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v8, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v9

    .line 15
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->f()Landroid/graphics/Rect;

    .line 16
    .line 17
    .line 18
    move-result-object v10

    .line 19
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->f()Landroid/graphics/Rect;

    .line 20
    .line 21
    .line 22
    move-result-object v11

    .line 23
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->f()Landroid/graphics/Rect;

    .line 24
    .line 25
    .line 26
    move-result-object v12

    .line 27
    move/from16 v2, p1

    .line 28
    .line 29
    const/4 v14, 0x0

    .line 30
    :goto_0
    sget-object v15, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->u:Lo/b;

    .line 31
    .line 32
    if-ge v14, v9, :cond_17

    .line 33
    .line 34
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    move-object v7, v3

    .line 39
    check-cast v7, Landroid/view/View;

    .line 40
    .line 41
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    move-object v6, v3

    .line 46
    check-cast v6, Landroidx/coordinatorlayout/widget/b;

    .line 47
    .line 48
    if-nez v2, :cond_0

    .line 49
    .line 50
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    const/16 v4, 0x8

    .line 55
    .line 56
    if-ne v3, v4, :cond_0

    .line 57
    .line 58
    move/from16 v4, p1

    .line 59
    .line 60
    move v7, v2

    .line 61
    move-object v6, v8

    .line 62
    move v3, v9

    .line 63
    move-object v5, v12

    .line 64
    move/from16 v22, v14

    .line 65
    .line 66
    const/4 v2, 0x0

    .line 67
    goto/16 :goto_d

    .line 68
    .line 69
    :cond_0
    const/4 v5, 0x0

    .line 70
    :goto_1
    if-ge v5, v14, :cond_4

    .line 71
    .line 72
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    check-cast v2, Landroid/view/View;

    .line 77
    .line 78
    iget-object v3, v6, Landroidx/coordinatorlayout/widget/b;->l:Landroid/view/View;

    .line 79
    .line 80
    if-ne v3, v2, :cond_3

    .line 81
    .line 82
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    move-object v4, v2

    .line 87
    check-cast v4, Landroidx/coordinatorlayout/widget/b;

    .line 88
    .line 89
    iget-object v2, v4, Landroidx/coordinatorlayout/widget/b;->k:Landroid/view/View;

    .line 90
    .line 91
    if-eqz v2, :cond_3

    .line 92
    .line 93
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->f()Landroid/graphics/Rect;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->f()Landroid/graphics/Rect;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->f()Landroid/graphics/Rect;

    .line 102
    .line 103
    .line 104
    move-result-object v13

    .line 105
    move/from16 v16, v5

    .line 106
    .line 107
    iget-object v5, v4, Landroidx/coordinatorlayout/widget/b;->k:Landroid/view/View;

    .line 108
    .line 109
    invoke-virtual {v0, v3, v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->i(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 110
    .line 111
    .line 112
    const/4 v5, 0x0

    .line 113
    invoke-virtual {v0, v7, v2, v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->h(Landroid/view/View;Landroid/graphics/Rect;Z)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    move-object/from16 v17, v8

    .line 121
    .line 122
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    .line 123
    .line 124
    .line 125
    move-result v8

    .line 126
    move/from16 v18, v9

    .line 127
    .line 128
    move-object v9, v2

    .line 129
    move v2, v1

    .line 130
    move-object/from16 v19, v3

    .line 131
    .line 132
    move-object/from16 v20, v4

    .line 133
    .line 134
    move-object v4, v13

    .line 135
    move/from16 v21, v5

    .line 136
    .line 137
    move-object/from16 v5, v20

    .line 138
    .line 139
    move/from16 v22, v14

    .line 140
    .line 141
    move-object v14, v6

    .line 142
    move/from16 v6, v21

    .line 143
    .line 144
    move-object/from16 v23, v12

    .line 145
    .line 146
    move-object v12, v7

    .line 147
    move v7, v8

    .line 148
    invoke-static/range {v2 .. v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->j(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroidx/coordinatorlayout/widget/b;II)V

    .line 149
    .line 150
    .line 151
    move-object/from16 v2, v20

    .line 152
    .line 153
    move/from16 v3, v21

    .line 154
    .line 155
    invoke-virtual {v0, v2, v13, v3, v8}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->g(Landroidx/coordinatorlayout/widget/b;Landroid/graphics/Rect;II)V

    .line 156
    .line 157
    .line 158
    iget v2, v13, Landroid/graphics/Rect;->left:I

    .line 159
    .line 160
    iget v3, v9, Landroid/graphics/Rect;->left:I

    .line 161
    .line 162
    sub-int/2addr v2, v3

    .line 163
    iget v3, v13, Landroid/graphics/Rect;->top:I

    .line 164
    .line 165
    iget v4, v9, Landroid/graphics/Rect;->top:I

    .line 166
    .line 167
    sub-int/2addr v3, v4

    .line 168
    if-eqz v2, :cond_1

    .line 169
    .line 170
    sget-object v4, Lp/k;->a:Ljava/lang/reflect/Field;

    .line 171
    .line 172
    invoke-virtual {v12, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 173
    .line 174
    .line 175
    :cond_1
    if-eqz v3, :cond_2

    .line 176
    .line 177
    sget-object v2, Lp/k;->a:Ljava/lang/reflect/Field;

    .line 178
    .line 179
    invoke-virtual {v12, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 180
    .line 181
    .line 182
    :cond_2
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->setEmpty()V

    .line 183
    .line 184
    .line 185
    move-object/from16 v2, v19

    .line 186
    .line 187
    invoke-virtual {v15, v2}, Lo/b;->g(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    invoke-virtual {v9}, Landroid/graphics/Rect;->setEmpty()V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v15, v9}, Lo/b;->g(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    invoke-virtual {v13}, Landroid/graphics/Rect;->setEmpty()V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v15, v13}, Lo/b;->g(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    goto :goto_2

    .line 203
    :cond_3
    move/from16 v16, v5

    .line 204
    .line 205
    move-object/from16 v17, v8

    .line 206
    .line 207
    move/from16 v18, v9

    .line 208
    .line 209
    move-object/from16 v23, v12

    .line 210
    .line 211
    move/from16 v22, v14

    .line 212
    .line 213
    move-object v14, v6

    .line 214
    move-object v12, v7

    .line 215
    :goto_2
    add-int/lit8 v5, v16, 0x1

    .line 216
    .line 217
    move-object v7, v12

    .line 218
    move-object v6, v14

    .line 219
    move-object/from16 v8, v17

    .line 220
    .line 221
    move/from16 v9, v18

    .line 222
    .line 223
    move/from16 v14, v22

    .line 224
    .line 225
    move-object/from16 v12, v23

    .line 226
    .line 227
    goto/16 :goto_1

    .line 228
    .line 229
    :cond_4
    move-object/from16 v17, v8

    .line 230
    .line 231
    move/from16 v18, v9

    .line 232
    .line 233
    move-object/from16 v23, v12

    .line 234
    .line 235
    move/from16 v22, v14

    .line 236
    .line 237
    move-object v14, v6

    .line 238
    move-object v12, v7

    .line 239
    const/4 v5, 0x1

    .line 240
    invoke-virtual {v0, v12, v11, v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->h(Landroid/view/View;Landroid/graphics/Rect;Z)V

    .line 241
    .line 242
    .line 243
    iget v2, v14, Landroidx/coordinatorlayout/widget/b;->g:I

    .line 244
    .line 245
    const/16 v3, 0x30

    .line 246
    .line 247
    const/16 v4, 0x50

    .line 248
    .line 249
    const/4 v6, 0x3

    .line 250
    const/4 v7, 0x5

    .line 251
    if-eqz v2, :cond_9

    .line 252
    .line 253
    invoke-virtual {v11}, Landroid/graphics/Rect;->isEmpty()Z

    .line 254
    .line 255
    .line 256
    move-result v2

    .line 257
    if-nez v2, :cond_9

    .line 258
    .line 259
    iget v2, v14, Landroidx/coordinatorlayout/widget/b;->g:I

    .line 260
    .line 261
    invoke-static {v2, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 262
    .line 263
    .line 264
    move-result v2

    .line 265
    and-int/lit8 v8, v2, 0x70

    .line 266
    .line 267
    if-eq v8, v3, :cond_6

    .line 268
    .line 269
    if-eq v8, v4, :cond_5

    .line 270
    .line 271
    goto :goto_3

    .line 272
    :cond_5
    iget v8, v10, Landroid/graphics/Rect;->bottom:I

    .line 273
    .line 274
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 275
    .line 276
    .line 277
    move-result v9

    .line 278
    iget v13, v11, Landroid/graphics/Rect;->top:I

    .line 279
    .line 280
    sub-int/2addr v9, v13

    .line 281
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    .line 282
    .line 283
    .line 284
    move-result v8

    .line 285
    iput v8, v10, Landroid/graphics/Rect;->bottom:I

    .line 286
    .line 287
    goto :goto_3

    .line 288
    :cond_6
    iget v8, v10, Landroid/graphics/Rect;->top:I

    .line 289
    .line 290
    iget v9, v11, Landroid/graphics/Rect;->bottom:I

    .line 291
    .line 292
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    .line 293
    .line 294
    .line 295
    move-result v8

    .line 296
    iput v8, v10, Landroid/graphics/Rect;->top:I

    .line 297
    .line 298
    :goto_3
    and-int/lit8 v2, v2, 0x7

    .line 299
    .line 300
    if-eq v2, v6, :cond_8

    .line 301
    .line 302
    if-eq v2, v7, :cond_7

    .line 303
    .line 304
    goto :goto_4

    .line 305
    :cond_7
    iget v2, v10, Landroid/graphics/Rect;->right:I

    .line 306
    .line 307
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 308
    .line 309
    .line 310
    move-result v8

    .line 311
    iget v9, v11, Landroid/graphics/Rect;->left:I

    .line 312
    .line 313
    sub-int/2addr v8, v9

    .line 314
    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    .line 315
    .line 316
    .line 317
    move-result v2

    .line 318
    iput v2, v10, Landroid/graphics/Rect;->right:I

    .line 319
    .line 320
    goto :goto_4

    .line 321
    :cond_8
    iget v2, v10, Landroid/graphics/Rect;->left:I

    .line 322
    .line 323
    iget v8, v11, Landroid/graphics/Rect;->right:I

    .line 324
    .line 325
    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    .line 326
    .line 327
    .line 328
    move-result v2

    .line 329
    iput v2, v10, Landroid/graphics/Rect;->left:I

    .line 330
    .line 331
    :cond_9
    :goto_4
    iget v2, v14, Landroidx/coordinatorlayout/widget/b;->h:I

    .line 332
    .line 333
    if-eqz v2, :cond_13

    .line 334
    .line 335
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    .line 336
    .line 337
    .line 338
    move-result v2

    .line 339
    if-nez v2, :cond_13

    .line 340
    .line 341
    sget-object v2, Lp/k;->a:Ljava/lang/reflect/Field;

    .line 342
    .line 343
    invoke-virtual {v12}, Landroid/view/View;->isLaidOut()Z

    .line 344
    .line 345
    .line 346
    move-result v2

    .line 347
    if-nez v2, :cond_a

    .line 348
    .line 349
    goto/16 :goto_8

    .line 350
    .line 351
    :cond_a
    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    .line 352
    .line 353
    .line 354
    move-result v2

    .line 355
    if-lez v2, :cond_13

    .line 356
    .line 357
    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    .line 358
    .line 359
    .line 360
    move-result v2

    .line 361
    if-gtz v2, :cond_b

    .line 362
    .line 363
    goto/16 :goto_8

    .line 364
    .line 365
    :cond_b
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 366
    .line 367
    .line 368
    move-result-object v2

    .line 369
    check-cast v2, Landroidx/coordinatorlayout/widget/b;

    .line 370
    .line 371
    iget-object v8, v2, Landroidx/coordinatorlayout/widget/b;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 372
    .line 373
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->f()Landroid/graphics/Rect;

    .line 374
    .line 375
    .line 376
    move-result-object v8

    .line 377
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->f()Landroid/graphics/Rect;

    .line 378
    .line 379
    .line 380
    move-result-object v9

    .line 381
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    .line 382
    .line 383
    .line 384
    move-result v13

    .line 385
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    .line 386
    .line 387
    .line 388
    move-result v14

    .line 389
    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    .line 390
    .line 391
    .line 392
    move-result v5

    .line 393
    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    .line 394
    .line 395
    .line 396
    move-result v7

    .line 397
    invoke-virtual {v9, v13, v14, v5, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v9}, Landroid/graphics/Rect;->setEmpty()V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v15, v9}, Lo/b;->g(Ljava/lang/Object;)Z

    .line 407
    .line 408
    .line 409
    invoke-virtual {v8}, Landroid/graphics/Rect;->isEmpty()Z

    .line 410
    .line 411
    .line 412
    move-result v5

    .line 413
    if-eqz v5, :cond_c

    .line 414
    .line 415
    invoke-virtual {v8}, Landroid/graphics/Rect;->setEmpty()V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v15, v8}, Lo/b;->g(Ljava/lang/Object;)Z

    .line 419
    .line 420
    .line 421
    goto/16 :goto_8

    .line 422
    .line 423
    :cond_c
    iget v5, v2, Landroidx/coordinatorlayout/widget/b;->h:I

    .line 424
    .line 425
    invoke-static {v5, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 426
    .line 427
    .line 428
    move-result v5

    .line 429
    and-int/lit8 v7, v5, 0x30

    .line 430
    .line 431
    if-ne v7, v3, :cond_d

    .line 432
    .line 433
    iget v3, v8, Landroid/graphics/Rect;->top:I

    .line 434
    .line 435
    iget v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 436
    .line 437
    sub-int/2addr v3, v7

    .line 438
    iget v7, v2, Landroidx/coordinatorlayout/widget/b;->j:I

    .line 439
    .line 440
    sub-int/2addr v3, v7

    .line 441
    iget v7, v10, Landroid/graphics/Rect;->top:I

    .line 442
    .line 443
    if-ge v3, v7, :cond_d

    .line 444
    .line 445
    sub-int/2addr v7, v3

    .line 446
    invoke-static {v7, v12}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->q(ILandroid/view/View;)V

    .line 447
    .line 448
    .line 449
    const/4 v3, 0x1

    .line 450
    goto :goto_5

    .line 451
    :cond_d
    const/4 v3, 0x0

    .line 452
    :goto_5
    and-int/lit8 v7, v5, 0x50

    .line 453
    .line 454
    if-ne v7, v4, :cond_e

    .line 455
    .line 456
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 457
    .line 458
    .line 459
    move-result v4

    .line 460
    iget v7, v8, Landroid/graphics/Rect;->bottom:I

    .line 461
    .line 462
    sub-int/2addr v4, v7

    .line 463
    iget v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 464
    .line 465
    sub-int/2addr v4, v7

    .line 466
    iget v7, v2, Landroidx/coordinatorlayout/widget/b;->j:I

    .line 467
    .line 468
    add-int/2addr v4, v7

    .line 469
    iget v7, v10, Landroid/graphics/Rect;->bottom:I

    .line 470
    .line 471
    if-ge v4, v7, :cond_e

    .line 472
    .line 473
    sub-int/2addr v4, v7

    .line 474
    invoke-static {v4, v12}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->q(ILandroid/view/View;)V

    .line 475
    .line 476
    .line 477
    const/4 v3, 0x1

    .line 478
    :cond_e
    if-nez v3, :cond_f

    .line 479
    .line 480
    const/4 v3, 0x0

    .line 481
    invoke-static {v3, v12}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->q(ILandroid/view/View;)V

    .line 482
    .line 483
    .line 484
    :cond_f
    and-int/lit8 v3, v5, 0x3

    .line 485
    .line 486
    if-ne v3, v6, :cond_10

    .line 487
    .line 488
    iget v3, v8, Landroid/graphics/Rect;->left:I

    .line 489
    .line 490
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 491
    .line 492
    sub-int/2addr v3, v4

    .line 493
    iget v4, v2, Landroidx/coordinatorlayout/widget/b;->i:I

    .line 494
    .line 495
    sub-int/2addr v3, v4

    .line 496
    iget v4, v10, Landroid/graphics/Rect;->left:I

    .line 497
    .line 498
    if-ge v3, v4, :cond_10

    .line 499
    .line 500
    sub-int/2addr v4, v3

    .line 501
    invoke-static {v4, v12}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->p(ILandroid/view/View;)V

    .line 502
    .line 503
    .line 504
    const/4 v3, 0x1

    .line 505
    goto :goto_6

    .line 506
    :cond_10
    const/4 v3, 0x0

    .line 507
    :goto_6
    and-int/lit8 v4, v5, 0x5

    .line 508
    .line 509
    const/4 v5, 0x5

    .line 510
    if-ne v4, v5, :cond_11

    .line 511
    .line 512
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 513
    .line 514
    .line 515
    move-result v4

    .line 516
    iget v5, v8, Landroid/graphics/Rect;->right:I

    .line 517
    .line 518
    sub-int/2addr v4, v5

    .line 519
    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 520
    .line 521
    sub-int/2addr v4, v5

    .line 522
    iget v2, v2, Landroidx/coordinatorlayout/widget/b;->i:I

    .line 523
    .line 524
    add-int/2addr v4, v2

    .line 525
    iget v2, v10, Landroid/graphics/Rect;->right:I

    .line 526
    .line 527
    if-ge v4, v2, :cond_11

    .line 528
    .line 529
    sub-int/2addr v4, v2

    .line 530
    invoke-static {v4, v12}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->p(ILandroid/view/View;)V

    .line 531
    .line 532
    .line 533
    const/4 v5, 0x1

    .line 534
    goto :goto_7

    .line 535
    :cond_11
    move v5, v3

    .line 536
    :goto_7
    const/4 v2, 0x0

    .line 537
    if-nez v5, :cond_12

    .line 538
    .line 539
    invoke-static {v2, v12}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->p(ILandroid/view/View;)V

    .line 540
    .line 541
    .line 542
    :cond_12
    invoke-virtual {v8}, Landroid/graphics/Rect;->setEmpty()V

    .line 543
    .line 544
    .line 545
    invoke-virtual {v15, v8}, Lo/b;->g(Ljava/lang/Object;)Z

    .line 546
    .line 547
    .line 548
    goto :goto_9

    .line 549
    :cond_13
    :goto_8
    const/4 v2, 0x0

    .line 550
    :goto_9
    const/4 v3, 0x2

    .line 551
    move/from16 v4, p1

    .line 552
    .line 553
    if-eq v4, v3, :cond_15

    .line 554
    .line 555
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 556
    .line 557
    .line 558
    move-result-object v3

    .line 559
    check-cast v3, Landroidx/coordinatorlayout/widget/b;

    .line 560
    .line 561
    iget-object v3, v3, Landroidx/coordinatorlayout/widget/b;->p:Landroid/graphics/Rect;

    .line 562
    .line 563
    move-object/from16 v5, v23

    .line 564
    .line 565
    invoke-virtual {v5, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 566
    .line 567
    .line 568
    invoke-virtual {v5, v11}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 569
    .line 570
    .line 571
    move-result v3

    .line 572
    if-eqz v3, :cond_14

    .line 573
    .line 574
    move-object/from16 v6, v17

    .line 575
    .line 576
    move/from16 v3, v18

    .line 577
    .line 578
    goto :goto_c

    .line 579
    :cond_14
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 580
    .line 581
    .line 582
    move-result-object v3

    .line 583
    check-cast v3, Landroidx/coordinatorlayout/widget/b;

    .line 584
    .line 585
    iget-object v3, v3, Landroidx/coordinatorlayout/widget/b;->p:Landroid/graphics/Rect;

    .line 586
    .line 587
    invoke-virtual {v3, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 588
    .line 589
    .line 590
    goto :goto_a

    .line 591
    :cond_15
    move-object/from16 v5, v23

    .line 592
    .line 593
    :goto_a
    add-int/lit8 v14, v22, 0x1

    .line 594
    .line 595
    move/from16 v3, v18

    .line 596
    .line 597
    :goto_b
    move-object/from16 v6, v17

    .line 598
    .line 599
    if-ge v14, v3, :cond_16

    .line 600
    .line 601
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 602
    .line 603
    .line 604
    move-result-object v7

    .line 605
    check-cast v7, Landroid/view/View;

    .line 606
    .line 607
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 608
    .line 609
    .line 610
    move-result-object v7

    .line 611
    check-cast v7, Landroidx/coordinatorlayout/widget/b;

    .line 612
    .line 613
    iget-object v7, v7, Landroidx/coordinatorlayout/widget/b;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 614
    .line 615
    add-int/lit8 v14, v14, 0x1

    .line 616
    .line 617
    goto :goto_b

    .line 618
    :cond_16
    :goto_c
    move v7, v4

    .line 619
    :goto_d
    add-int/lit8 v14, v22, 0x1

    .line 620
    .line 621
    move v9, v3

    .line 622
    move-object v12, v5

    .line 623
    move-object v8, v6

    .line 624
    move v2, v7

    .line 625
    goto/16 :goto_0

    .line 626
    .line 627
    :cond_17
    move-object v5, v12

    .line 628
    invoke-virtual {v10}, Landroid/graphics/Rect;->setEmpty()V

    .line 629
    .line 630
    .line 631
    invoke-virtual {v15, v10}, Lo/b;->g(Ljava/lang/Object;)Z

    .line 632
    .line 633
    .line 634
    invoke-virtual {v11}, Landroid/graphics/Rect;->setEmpty()V

    .line 635
    .line 636
    .line 637
    invoke-virtual {v15, v11}, Lo/b;->g(Ljava/lang/Object;)Z

    .line 638
    .line 639
    .line 640
    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    .line 641
    .line 642
    .line 643
    invoke-virtual {v15, v5}, Lo/b;->g(Ljava/lang/Object;)Z

    .line 644
    .line 645
    .line 646
    return-void
.end method

.method public final m(Landroid/view/MotionEvent;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object v2, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->c:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 10
    .line 11
    .line 12
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    add-int/lit8 v5, v4, -0x1

    .line 21
    .line 22
    :goto_0
    if-ltz v5, :cond_1

    .line 23
    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    move v6, v5

    .line 32
    :goto_1
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    add-int/lit8 v5, v5, -0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    sget-object v3, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->t:Lh/f;

    .line 43
    .line 44
    if-eqz v3, :cond_2

    .line 45
    .line 46
    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    const/4 v4, 0x0

    .line 54
    const/4 v5, 0x0

    .line 55
    move v6, v4

    .line 56
    move v7, v6

    .line 57
    :goto_2
    if-ge v6, v3, :cond_8

    .line 58
    .line 59
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    check-cast v8, Landroid/view/View;

    .line 64
    .line 65
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 66
    .line 67
    .line 68
    move-result-object v8

    .line 69
    check-cast v8, Landroidx/coordinatorlayout/widget/b;

    .line 70
    .line 71
    iget-object v9, v8, Landroidx/coordinatorlayout/widget/b;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 72
    .line 73
    if-eqz v7, :cond_3

    .line 74
    .line 75
    if-eqz v1, :cond_3

    .line 76
    .line 77
    if-eqz v9, :cond_7

    .line 78
    .line 79
    if-nez v5, :cond_7

    .line 80
    .line 81
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 82
    .line 83
    .line 84
    move-result-wide v12

    .line 85
    const/4 v14, 0x3

    .line 86
    const/4 v15, 0x0

    .line 87
    const/16 v16, 0x0

    .line 88
    .line 89
    const/16 v17, 0x0

    .line 90
    .line 91
    move-wide v10, v12

    .line 92
    invoke-static/range {v10 .. v17}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    goto :goto_5

    .line 97
    :cond_3
    if-nez v9, :cond_4

    .line 98
    .line 99
    iput-boolean v4, v8, Landroidx/coordinatorlayout/widget/b;->m:Z

    .line 100
    .line 101
    :cond_4
    iget-boolean v7, v8, Landroidx/coordinatorlayout/widget/b;->m:Z

    .line 102
    .line 103
    const/4 v9, 0x1

    .line 104
    if-eqz v7, :cond_5

    .line 105
    .line 106
    move v10, v9

    .line 107
    goto :goto_3

    .line 108
    :cond_5
    or-int/lit8 v10, v7, 0x0

    .line 109
    .line 110
    iput-boolean v10, v8, Landroidx/coordinatorlayout/widget/b;->m:Z

    .line 111
    .line 112
    :goto_3
    if-eqz v10, :cond_6

    .line 113
    .line 114
    if-nez v7, :cond_6

    .line 115
    .line 116
    move v7, v9

    .line 117
    goto :goto_4

    .line 118
    :cond_6
    move v7, v4

    .line 119
    :goto_4
    if-eqz v10, :cond_7

    .line 120
    .line 121
    if-nez v7, :cond_7

    .line 122
    .line 123
    goto :goto_6

    .line 124
    :cond_7
    :goto_5
    add-int/lit8 v6, v6, 0x1

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_8
    :goto_6
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 128
    .line 129
    .line 130
    return-void
.end method

.method public final n()V
    .locals 15

    .line 1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->b:Lh/g;

    .line 7
    .line 8
    iget-object v2, v1, Lh/g;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v2, Lf/i;

    .line 11
    .line 12
    iget v3, v2, Lf/i;->c:I

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    move v5, v4

    .line 16
    :goto_0
    if-ge v5, v3, :cond_1

    .line 17
    .line 18
    invoke-virtual {v2, v5}, Lf/i;->j(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    check-cast v6, Ljava/util/ArrayList;

    .line 23
    .line 24
    if-eqz v6, :cond_0

    .line 25
    .line 26
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 27
    .line 28
    .line 29
    iget-object v7, v1, Lh/g;->a:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v7, Lo/a;

    .line 32
    .line 33
    invoke-virtual {v7, v6}, Lo/a;->g(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {v2}, Lf/i;->clear()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    move v3, v4

    .line 47
    :goto_1
    iget-object v5, v1, Lh/g;->b:Ljava/lang/Object;

    .line 48
    .line 49
    if-ge v3, v2, :cond_1c

    .line 50
    .line 51
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    invoke-static {v6}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->k(Landroid/view/View;)Landroidx/coordinatorlayout/widget/b;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    const/4 v8, 0x0

    .line 60
    const/4 v9, 0x1

    .line 61
    const/4 v10, -0x1

    .line 62
    iget v11, v7, Landroidx/coordinatorlayout/widget/b;->f:I

    .line 63
    .line 64
    if-ne v11, v10, :cond_2

    .line 65
    .line 66
    iput-object v8, v7, Landroidx/coordinatorlayout/widget/b;->l:Landroid/view/View;

    .line 67
    .line 68
    iput-object v8, v7, Landroidx/coordinatorlayout/widget/b;->k:Landroid/view/View;

    .line 69
    .line 70
    goto/16 :goto_8

    .line 71
    .line 72
    :cond_2
    iget-object v10, v7, Landroidx/coordinatorlayout/widget/b;->k:Landroid/view/View;

    .line 73
    .line 74
    if-eqz v10, :cond_8

    .line 75
    .line 76
    invoke-virtual {v10}, Landroid/view/View;->getId()I

    .line 77
    .line 78
    .line 79
    move-result v10

    .line 80
    if-eq v10, v11, :cond_3

    .line 81
    .line 82
    goto :goto_4

    .line 83
    :cond_3
    iget-object v10, v7, Landroidx/coordinatorlayout/widget/b;->k:Landroid/view/View;

    .line 84
    .line 85
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 86
    .line 87
    .line 88
    move-result-object v12

    .line 89
    :goto_2
    if-eq v12, p0, :cond_7

    .line 90
    .line 91
    if-eqz v12, :cond_6

    .line 92
    .line 93
    if-ne v12, v6, :cond_4

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_4
    instance-of v13, v12, Landroid/view/View;

    .line 97
    .line 98
    if-eqz v13, :cond_5

    .line 99
    .line 100
    move-object v10, v12

    .line 101
    check-cast v10, Landroid/view/View;

    .line 102
    .line 103
    :cond_5
    invoke-interface {v12}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 104
    .line 105
    .line 106
    move-result-object v12

    .line 107
    goto :goto_2

    .line 108
    :cond_6
    :goto_3
    iput-object v8, v7, Landroidx/coordinatorlayout/widget/b;->l:Landroid/view/View;

    .line 109
    .line 110
    iput-object v8, v7, Landroidx/coordinatorlayout/widget/b;->k:Landroid/view/View;

    .line 111
    .line 112
    :goto_4
    move v10, v4

    .line 113
    goto :goto_5

    .line 114
    :cond_7
    iput-object v10, v7, Landroidx/coordinatorlayout/widget/b;->l:Landroid/view/View;

    .line 115
    .line 116
    move v10, v9

    .line 117
    :goto_5
    if-nez v10, :cond_10

    .line 118
    .line 119
    :cond_8
    invoke-virtual {p0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 120
    .line 121
    .line 122
    move-result-object v10

    .line 123
    iput-object v10, v7, Landroidx/coordinatorlayout/widget/b;->k:Landroid/view/View;

    .line 124
    .line 125
    if-eqz v10, :cond_f

    .line 126
    .line 127
    if-ne v10, p0, :cond_a

    .line 128
    .line 129
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 130
    .line 131
    .line 132
    move-result v10

    .line 133
    if-eqz v10, :cond_9

    .line 134
    .line 135
    goto :goto_7

    .line 136
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 137
    .line 138
    const-string v1, "View can not be anchored to the the parent CoordinatorLayout"

    .line 139
    .line 140
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw v0

    .line 144
    :cond_a
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 145
    .line 146
    .line 147
    move-result-object v11

    .line 148
    :goto_6
    if-eq v11, p0, :cond_e

    .line 149
    .line 150
    if-eqz v11, :cond_e

    .line 151
    .line 152
    if-ne v11, v6, :cond_c

    .line 153
    .line 154
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 155
    .line 156
    .line 157
    move-result v10

    .line 158
    if-eqz v10, :cond_b

    .line 159
    .line 160
    goto :goto_7

    .line 161
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 162
    .line 163
    const-string v1, "Anchor must not be a descendant of the anchored view"

    .line 164
    .line 165
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    throw v0

    .line 169
    :cond_c
    instance-of v12, v11, Landroid/view/View;

    .line 170
    .line 171
    if-eqz v12, :cond_d

    .line 172
    .line 173
    move-object v10, v11

    .line 174
    check-cast v10, Landroid/view/View;

    .line 175
    .line 176
    :cond_d
    invoke-interface {v11}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 177
    .line 178
    .line 179
    move-result-object v11

    .line 180
    goto :goto_6

    .line 181
    :cond_e
    iput-object v10, v7, Landroidx/coordinatorlayout/widget/b;->l:Landroid/view/View;

    .line 182
    .line 183
    goto :goto_8

    .line 184
    :cond_f
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 185
    .line 186
    .line 187
    move-result v10

    .line 188
    if-eqz v10, :cond_1b

    .line 189
    .line 190
    :goto_7
    iput-object v8, v7, Landroidx/coordinatorlayout/widget/b;->l:Landroid/view/View;

    .line 191
    .line 192
    iput-object v8, v7, Landroidx/coordinatorlayout/widget/b;->k:Landroid/view/View;

    .line 193
    .line 194
    :cond_10
    :goto_8
    move-object v10, v5

    .line 195
    check-cast v10, Lf/i;

    .line 196
    .line 197
    invoke-virtual {v10, v6}, Lf/i;->containsKey(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v11

    .line 201
    if-nez v11, :cond_11

    .line 202
    .line 203
    invoke-virtual {v10, v6, v8}, Lf/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    :cond_11
    move v10, v4

    .line 207
    :goto_9
    if-ge v10, v2, :cond_1a

    .line 208
    .line 209
    if-ne v10, v3, :cond_12

    .line 210
    .line 211
    goto/16 :goto_c

    .line 212
    .line 213
    :cond_12
    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 214
    .line 215
    .line 216
    move-result-object v11

    .line 217
    iget-object v12, v7, Landroidx/coordinatorlayout/widget/b;->l:Landroid/view/View;

    .line 218
    .line 219
    if-eq v11, v12, :cond_14

    .line 220
    .line 221
    sget-object v12, Lp/k;->a:Ljava/lang/reflect/Field;

    .line 222
    .line 223
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 224
    .line 225
    .line 226
    move-result v12

    .line 227
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 228
    .line 229
    .line 230
    move-result-object v13

    .line 231
    check-cast v13, Landroidx/coordinatorlayout/widget/b;

    .line 232
    .line 233
    iget v13, v13, Landroidx/coordinatorlayout/widget/b;->g:I

    .line 234
    .line 235
    invoke-static {v13, v12}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 236
    .line 237
    .line 238
    move-result v13

    .line 239
    if-eqz v13, :cond_13

    .line 240
    .line 241
    iget v14, v7, Landroidx/coordinatorlayout/widget/b;->h:I

    .line 242
    .line 243
    invoke-static {v14, v12}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 244
    .line 245
    .line 246
    move-result v12

    .line 247
    and-int/2addr v12, v13

    .line 248
    if-ne v12, v13, :cond_13

    .line 249
    .line 250
    move v12, v9

    .line 251
    goto :goto_a

    .line 252
    :cond_13
    move v12, v4

    .line 253
    :goto_a
    if-nez v12, :cond_14

    .line 254
    .line 255
    move v12, v4

    .line 256
    goto :goto_b

    .line 257
    :cond_14
    move v12, v9

    .line 258
    :goto_b
    if-eqz v12, :cond_19

    .line 259
    .line 260
    move-object v12, v5

    .line 261
    check-cast v12, Lf/i;

    .line 262
    .line 263
    invoke-virtual {v12, v11}, Lf/i;->containsKey(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result v12

    .line 267
    if-nez v12, :cond_15

    .line 268
    .line 269
    move-object v12, v5

    .line 270
    check-cast v12, Lf/i;

    .line 271
    .line 272
    invoke-virtual {v12, v11}, Lf/i;->containsKey(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    move-result v13

    .line 276
    if-nez v13, :cond_15

    .line 277
    .line 278
    invoke-virtual {v12, v11, v8}, Lf/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    :cond_15
    move-object v12, v5

    .line 282
    check-cast v12, Lf/i;

    .line 283
    .line 284
    invoke-virtual {v12, v11}, Lf/i;->containsKey(Ljava/lang/Object;)Z

    .line 285
    .line 286
    .line 287
    move-result v13

    .line 288
    if-eqz v13, :cond_18

    .line 289
    .line 290
    invoke-virtual {v12, v6}, Lf/i;->containsKey(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    move-result v13

    .line 294
    if-eqz v13, :cond_18

    .line 295
    .line 296
    invoke-virtual {v12, v11, v8}, Lf/i;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v13

    .line 300
    check-cast v13, Ljava/util/ArrayList;

    .line 301
    .line 302
    if-nez v13, :cond_17

    .line 303
    .line 304
    iget-object v13, v1, Lh/g;->a:Ljava/lang/Object;

    .line 305
    .line 306
    check-cast v13, Lo/a;

    .line 307
    .line 308
    invoke-virtual {v13}, Lo/a;->a()Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v13

    .line 312
    check-cast v13, Ljava/util/ArrayList;

    .line 313
    .line 314
    if-nez v13, :cond_16

    .line 315
    .line 316
    new-instance v13, Ljava/util/ArrayList;

    .line 317
    .line 318
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 319
    .line 320
    .line 321
    :cond_16
    invoke-virtual {v12, v11, v13}, Lf/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    :cond_17
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    goto :goto_c

    .line 328
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 329
    .line 330
    const-string v1, "All nodes must be present in the graph before being added as an edge"

    .line 331
    .line 332
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    throw v0

    .line 336
    :cond_19
    :goto_c
    add-int/lit8 v10, v10, 0x1

    .line 337
    .line 338
    goto/16 :goto_9

    .line 339
    .line 340
    :cond_1a
    add-int/lit8 v3, v3, 0x1

    .line 341
    .line 342
    goto/16 :goto_1

    .line 343
    .line 344
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 345
    .line 346
    new-instance v1, Ljava/lang/StringBuilder;

    .line 347
    .line 348
    const-string v2, "Could not find CoordinatorLayout descendant view with id "

    .line 349
    .line 350
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 354
    .line 355
    .line 356
    move-result-object v2

    .line 357
    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v2

    .line 361
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    const-string v2, " to anchor view "

    .line 365
    .line 366
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    throw v0

    .line 380
    :cond_1c
    iget-object v2, v1, Lh/g;->c:Ljava/lang/Object;

    .line 381
    .line 382
    check-cast v2, Ljava/util/ArrayList;

    .line 383
    .line 384
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 385
    .line 386
    .line 387
    iget-object v2, v1, Lh/g;->d:Ljava/io/Serializable;

    .line 388
    .line 389
    check-cast v2, Ljava/util/HashSet;

    .line 390
    .line 391
    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 392
    .line 393
    .line 394
    check-cast v5, Lf/i;

    .line 395
    .line 396
    iget v2, v5, Lf/i;->c:I

    .line 397
    .line 398
    :goto_d
    if-ge v4, v2, :cond_1d

    .line 399
    .line 400
    invoke-virtual {v5, v4}, Lf/i;->h(I)Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v3

    .line 404
    iget-object v6, v1, Lh/g;->c:Ljava/lang/Object;

    .line 405
    .line 406
    check-cast v6, Ljava/util/ArrayList;

    .line 407
    .line 408
    iget-object v7, v1, Lh/g;->d:Ljava/io/Serializable;

    .line 409
    .line 410
    check-cast v7, Ljava/util/HashSet;

    .line 411
    .line 412
    invoke-virtual {v1, v3, v6, v7}, Lh/g;->a(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    .line 413
    .line 414
    .line 415
    add-int/lit8 v4, v4, 0x1

    .line 416
    .line 417
    goto :goto_d

    .line 418
    :cond_1d
    iget-object v1, v1, Lh/g;->c:Ljava/lang/Object;

    .line 419
    .line 420
    check-cast v1, Ljava/util/ArrayList;

    .line 421
    .line 422
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 423
    .line 424
    .line 425
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 426
    .line 427
    .line 428
    return-void
.end method

.method public final o()V
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

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
    if-ge v2, v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Landroidx/coordinatorlayout/widget/b;

    .line 18
    .line 19
    iget-object v3, v3, Landroidx/coordinatorlayout/widget/b;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 20
    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v6

    .line 27
    const/4 v8, 0x3

    .line 28
    const/4 v9, 0x0

    .line 29
    const/4 v10, 0x0

    .line 30
    const/4 v11, 0x0

    .line 31
    move-wide v4, v6

    .line 32
    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 37
    .line 38
    .line 39
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    move v2, v1

    .line 43
    :goto_1
    if-ge v2, v0, :cond_2

    .line 44
    .line 45
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    check-cast v3, Landroidx/coordinatorlayout/widget/b;

    .line 54
    .line 55
    iput-boolean v1, v3, Landroidx/coordinatorlayout/widget/b;->m:Z

    .line 56
    .line 57
    add-int/lit8 v2, v2, 0x1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    iput-boolean v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->e:Z

    .line 61
    .line 62
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->o()V

    .line 5
    .line 6
    .line 7
    iget-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->j:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->i:Lh/c;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Lh/c;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lh/c;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->i:Lh/c;

    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->i:Lh/c;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->k:Lp/l;

    .line 32
    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    sget-object v0, Lp/k;->a:Ljava/lang/reflect/Field;

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getFitsSystemWindows()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/view/View;->requestApplyInsets()V

    .line 44
    .line 45
    .line 46
    :cond_2
    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->f:Z

    .line 48
    .line 49
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->o()V

    iget-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->i:Lh/c;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->i:Lh/c;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->h:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->onStopNestedScroll(Landroid/view/View;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->f:Z

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->l:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->k:Lp/l;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lp/l;->a()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-lez v0, :cond_1

    iget-object v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v2, v1, v1, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->o()V

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->m(Landroid/view/MotionEvent;)V

    const/4 p1, 0x1

    if-eq v0, p1, :cond_1

    const/4 p1, 0x3

    if-ne v0, p1, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->o()V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final onLayout(ZIIII)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    sget-object v0, Lp/k;->a:Ljava/lang/reflect/Field;

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v8, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v9

    .line 15
    const/4 v11, 0x0

    .line 16
    :goto_0
    if-ge v11, v9, :cond_11

    .line 17
    .line 18
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    move-object v12, v2

    .line 23
    check-cast v12, Landroid/view/View;

    .line 24
    .line 25
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/16 v3, 0x8

    .line 30
    .line 31
    if-ne v2, v3, :cond_0

    .line 32
    .line 33
    goto/16 :goto_2

    .line 34
    .line 35
    :cond_0
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Landroidx/coordinatorlayout/widget/b;

    .line 40
    .line 41
    iget-object v2, v2, Landroidx/coordinatorlayout/widget/b;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 42
    .line 43
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Landroidx/coordinatorlayout/widget/b;

    .line 48
    .line 49
    iget-object v3, v2, Landroidx/coordinatorlayout/widget/b;->k:Landroid/view/View;

    .line 50
    .line 51
    const/4 v4, 0x1

    .line 52
    if-nez v3, :cond_1

    .line 53
    .line 54
    iget v5, v2, Landroidx/coordinatorlayout/widget/b;->f:I

    .line 55
    .line 56
    const/4 v6, -0x1

    .line 57
    if-eq v5, v6, :cond_1

    .line 58
    .line 59
    move v5, v4

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    const/4 v5, 0x0

    .line 62
    :goto_1
    if-nez v5, :cond_10

    .line 63
    .line 64
    sget-object v13, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->u:Lo/b;

    .line 65
    .line 66
    if-eqz v3, :cond_2

    .line 67
    .line 68
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->f()Landroid/graphics/Rect;

    .line 69
    .line 70
    .line 71
    move-result-object v14

    .line 72
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->f()Landroid/graphics/Rect;

    .line 73
    .line 74
    .line 75
    move-result-object v15

    .line 76
    :try_start_0
    invoke-virtual {v1, v14, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->i(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    move-object v7, v2

    .line 84
    check-cast v7, Landroidx/coordinatorlayout/widget/b;

    .line 85
    .line 86
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    move v2, v0

    .line 95
    move-object v3, v14

    .line 96
    move-object v4, v15

    .line 97
    move/from16 p1, v5

    .line 98
    .line 99
    move-object v5, v7

    .line 100
    move/from16 p2, v6

    .line 101
    .line 102
    move-object v10, v7

    .line 103
    move/from16 v7, p1

    .line 104
    .line 105
    invoke-static/range {v2 .. v7}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->j(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroidx/coordinatorlayout/widget/b;II)V

    .line 106
    .line 107
    .line 108
    move/from16 v3, p1

    .line 109
    .line 110
    move/from16 v2, p2

    .line 111
    .line 112
    invoke-virtual {v1, v10, v15, v2, v3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->g(Landroidx/coordinatorlayout/widget/b;Landroid/graphics/Rect;II)V

    .line 113
    .line 114
    .line 115
    iget v2, v15, Landroid/graphics/Rect;->left:I

    .line 116
    .line 117
    iget v3, v15, Landroid/graphics/Rect;->top:I

    .line 118
    .line 119
    iget v4, v15, Landroid/graphics/Rect;->right:I

    .line 120
    .line 121
    iget v5, v15, Landroid/graphics/Rect;->bottom:I

    .line 122
    .line 123
    invoke-virtual {v12, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    .line 125
    .line 126
    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v13, v14}, Lo/b;->g(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    invoke-virtual {v15}, Landroid/graphics/Rect;->setEmpty()V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v13, v15}, Lo/b;->g(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    :goto_2
    const/4 v15, 0x0

    .line 139
    goto/16 :goto_8

    .line 140
    .line 141
    :catchall_0
    move-exception v0

    .line 142
    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v13, v14}, Lo/b;->g(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    invoke-virtual {v15}, Landroid/graphics/Rect;->setEmpty()V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v13, v15}, Lo/b;->g(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    throw v0

    .line 155
    :cond_2
    iget v2, v2, Landroidx/coordinatorlayout/widget/b;->e:I

    .line 156
    .line 157
    if-ltz v2, :cond_c

    .line 158
    .line 159
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    check-cast v3, Landroidx/coordinatorlayout/widget/b;

    .line 164
    .line 165
    iget v5, v3, Landroidx/coordinatorlayout/widget/b;->c:I

    .line 166
    .line 167
    if-nez v5, :cond_3

    .line 168
    .line 169
    const v5, 0x800035

    .line 170
    .line 171
    .line 172
    :cond_3
    invoke-static {v5, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 173
    .line 174
    .line 175
    move-result v5

    .line 176
    and-int/lit8 v6, v5, 0x7

    .line 177
    .line 178
    and-int/lit8 v5, v5, 0x70

    .line 179
    .line 180
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 181
    .line 182
    .line 183
    move-result v7

    .line 184
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 185
    .line 186
    .line 187
    move-result v10

    .line 188
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    .line 189
    .line 190
    .line 191
    move-result v13

    .line 192
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    .line 193
    .line 194
    .line 195
    move-result v14

    .line 196
    if-ne v0, v4, :cond_4

    .line 197
    .line 198
    sub-int v2, v7, v2

    .line 199
    .line 200
    :cond_4
    iget-object v15, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->g:[I

    .line 201
    .line 202
    if-nez v15, :cond_6

    .line 203
    .line 204
    :cond_5
    :goto_3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    const/4 v2, 0x0

    .line 208
    goto :goto_4

    .line 209
    :cond_6
    if-ltz v2, :cond_5

    .line 210
    .line 211
    array-length v4, v15

    .line 212
    if-lt v2, v4, :cond_7

    .line 213
    .line 214
    goto :goto_3

    .line 215
    :cond_7
    aget v2, v15, v2

    .line 216
    .line 217
    :goto_4
    sub-int/2addr v2, v13

    .line 218
    const/4 v4, 0x1

    .line 219
    if-eq v6, v4, :cond_9

    .line 220
    .line 221
    const/4 v4, 0x5

    .line 222
    if-eq v6, v4, :cond_8

    .line 223
    .line 224
    goto :goto_5

    .line 225
    :cond_8
    add-int/2addr v2, v13

    .line 226
    goto :goto_5

    .line 227
    :cond_9
    div-int/lit8 v4, v13, 0x2

    .line 228
    .line 229
    add-int/2addr v2, v4

    .line 230
    :goto_5
    const/16 v4, 0x10

    .line 231
    .line 232
    if-eq v5, v4, :cond_b

    .line 233
    .line 234
    const/16 v4, 0x50

    .line 235
    .line 236
    if-eq v5, v4, :cond_a

    .line 237
    .line 238
    const/4 v4, 0x0

    .line 239
    goto :goto_6

    .line 240
    :cond_a
    add-int/lit8 v4, v14, 0x0

    .line 241
    .line 242
    :goto_6
    const/4 v15, 0x0

    .line 243
    goto :goto_7

    .line 244
    :cond_b
    div-int/lit8 v4, v14, 0x2

    .line 245
    .line 246
    const/4 v15, 0x0

    .line 247
    add-int/2addr v4, v15

    .line 248
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 249
    .line 250
    .line 251
    move-result v5

    .line 252
    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 253
    .line 254
    add-int/2addr v5, v6

    .line 255
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 256
    .line 257
    .line 258
    move-result v6

    .line 259
    sub-int/2addr v7, v6

    .line 260
    sub-int/2addr v7, v13

    .line 261
    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 262
    .line 263
    sub-int/2addr v7, v6

    .line 264
    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    .line 265
    .line 266
    .line 267
    move-result v2

    .line 268
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    .line 269
    .line 270
    .line 271
    move-result v2

    .line 272
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 273
    .line 274
    .line 275
    move-result v5

    .line 276
    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 277
    .line 278
    add-int/2addr v5, v6

    .line 279
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 280
    .line 281
    .line 282
    move-result v6

    .line 283
    sub-int/2addr v10, v6

    .line 284
    sub-int/2addr v10, v14

    .line 285
    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 286
    .line 287
    sub-int/2addr v10, v3

    .line 288
    invoke-static {v4, v10}, Ljava/lang/Math;->min(II)I

    .line 289
    .line 290
    .line 291
    move-result v3

    .line 292
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    .line 293
    .line 294
    .line 295
    move-result v3

    .line 296
    add-int/2addr v13, v2

    .line 297
    add-int/2addr v14, v3

    .line 298
    invoke-virtual {v12, v2, v3, v13, v14}, Landroid/view/View;->layout(IIII)V

    .line 299
    .line 300
    .line 301
    goto/16 :goto_8

    .line 302
    .line 303
    :cond_c
    const/4 v15, 0x0

    .line 304
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 305
    .line 306
    .line 307
    move-result-object v2

    .line 308
    check-cast v2, Landroidx/coordinatorlayout/widget/b;

    .line 309
    .line 310
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->f()Landroid/graphics/Rect;

    .line 311
    .line 312
    .line 313
    move-result-object v10

    .line 314
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 315
    .line 316
    .line 317
    move-result v3

    .line 318
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 319
    .line 320
    add-int/2addr v3, v4

    .line 321
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 322
    .line 323
    .line 324
    move-result v4

    .line 325
    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 326
    .line 327
    add-int/2addr v4, v5

    .line 328
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 329
    .line 330
    .line 331
    move-result v5

    .line 332
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 333
    .line 334
    .line 335
    move-result v6

    .line 336
    sub-int/2addr v5, v6

    .line 337
    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 338
    .line 339
    sub-int/2addr v5, v6

    .line 340
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 341
    .line 342
    .line 343
    move-result v6

    .line 344
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 345
    .line 346
    .line 347
    move-result v7

    .line 348
    sub-int/2addr v6, v7

    .line 349
    iget v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 350
    .line 351
    sub-int/2addr v6, v7

    .line 352
    invoke-virtual {v10, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 353
    .line 354
    .line 355
    iget-object v3, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->k:Lp/l;

    .line 356
    .line 357
    if-eqz v3, :cond_d

    .line 358
    .line 359
    sget-object v3, Lp/k;->a:Ljava/lang/reflect/Field;

    .line 360
    .line 361
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getFitsSystemWindows()Z

    .line 362
    .line 363
    .line 364
    move-result v3

    .line 365
    if-eqz v3, :cond_d

    .line 366
    .line 367
    invoke-virtual {v12}, Landroid/view/View;->getFitsSystemWindows()Z

    .line 368
    .line 369
    .line 370
    move-result v3

    .line 371
    if-nez v3, :cond_d

    .line 372
    .line 373
    iget v3, v10, Landroid/graphics/Rect;->left:I

    .line 374
    .line 375
    iget-object v4, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->k:Lp/l;

    .line 376
    .line 377
    iget-object v4, v4, Lp/l;->a:Ljava/lang/Object;

    .line 378
    .line 379
    check-cast v4, Landroid/view/WindowInsets;

    .line 380
    .line 381
    invoke-virtual {v4}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    .line 382
    .line 383
    .line 384
    move-result v4

    .line 385
    add-int/2addr v4, v3

    .line 386
    iput v4, v10, Landroid/graphics/Rect;->left:I

    .line 387
    .line 388
    iget v3, v10, Landroid/graphics/Rect;->top:I

    .line 389
    .line 390
    iget-object v4, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->k:Lp/l;

    .line 391
    .line 392
    invoke-virtual {v4}, Lp/l;->a()I

    .line 393
    .line 394
    .line 395
    move-result v4

    .line 396
    add-int/2addr v4, v3

    .line 397
    iput v4, v10, Landroid/graphics/Rect;->top:I

    .line 398
    .line 399
    iget v3, v10, Landroid/graphics/Rect;->right:I

    .line 400
    .line 401
    iget-object v4, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->k:Lp/l;

    .line 402
    .line 403
    iget-object v4, v4, Lp/l;->a:Ljava/lang/Object;

    .line 404
    .line 405
    check-cast v4, Landroid/view/WindowInsets;

    .line 406
    .line 407
    invoke-virtual {v4}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    .line 408
    .line 409
    .line 410
    move-result v4

    .line 411
    sub-int/2addr v3, v4

    .line 412
    iput v3, v10, Landroid/graphics/Rect;->right:I

    .line 413
    .line 414
    iget v3, v10, Landroid/graphics/Rect;->bottom:I

    .line 415
    .line 416
    iget-object v4, v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->k:Lp/l;

    .line 417
    .line 418
    iget-object v4, v4, Lp/l;->a:Ljava/lang/Object;

    .line 419
    .line 420
    check-cast v4, Landroid/view/WindowInsets;

    .line 421
    .line 422
    invoke-virtual {v4}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    .line 423
    .line 424
    .line 425
    move-result v4

    .line 426
    sub-int/2addr v3, v4

    .line 427
    iput v3, v10, Landroid/graphics/Rect;->bottom:I

    .line 428
    .line 429
    :cond_d
    invoke-static {}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->f()Landroid/graphics/Rect;

    .line 430
    .line 431
    .line 432
    move-result-object v14

    .line 433
    iget v2, v2, Landroidx/coordinatorlayout/widget/b;->c:I

    .line 434
    .line 435
    and-int/lit8 v3, v2, 0x7

    .line 436
    .line 437
    if-nez v3, :cond_e

    .line 438
    .line 439
    const v3, 0x800003

    .line 440
    .line 441
    .line 442
    or-int/2addr v2, v3

    .line 443
    :cond_e
    and-int/lit8 v3, v2, 0x70

    .line 444
    .line 445
    if-nez v3, :cond_f

    .line 446
    .line 447
    or-int/lit8 v2, v2, 0x30

    .line 448
    .line 449
    :cond_f
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    .line 450
    .line 451
    .line 452
    move-result v3

    .line 453
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    .line 454
    .line 455
    .line 456
    move-result v4

    .line 457
    move-object v5, v10

    .line 458
    move-object v6, v14

    .line 459
    move v7, v0

    .line 460
    invoke-static/range {v2 .. v7}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 461
    .line 462
    .line 463
    iget v2, v14, Landroid/graphics/Rect;->left:I

    .line 464
    .line 465
    iget v3, v14, Landroid/graphics/Rect;->top:I

    .line 466
    .line 467
    iget v4, v14, Landroid/graphics/Rect;->right:I

    .line 468
    .line 469
    iget v5, v14, Landroid/graphics/Rect;->bottom:I

    .line 470
    .line 471
    invoke-virtual {v12, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v10}, Landroid/graphics/Rect;->setEmpty()V

    .line 475
    .line 476
    .line 477
    invoke-virtual {v13, v10}, Lo/b;->g(Ljava/lang/Object;)Z

    .line 478
    .line 479
    .line 480
    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    .line 481
    .line 482
    .line 483
    invoke-virtual {v13, v14}, Lo/b;->g(Ljava/lang/Object;)Z

    .line 484
    .line 485
    .line 486
    :goto_8
    add-int/lit8 v11, v11, 0x1

    .line 487
    .line 488
    goto/16 :goto_0

    .line 489
    .line 490
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 491
    .line 492
    const-string v2, "An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete."

    .line 493
    .line 494
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    throw v0

    .line 498
    :cond_11
    return-void
.end method

.method public final onMeasure(II)V
    .locals 29

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->n()V

    .line 4
    .line 5
    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v7, 0x0

    .line 11
    move v1, v7

    .line 12
    :goto_0
    const/4 v2, 0x1

    .line 13
    if-ge v1, v0, :cond_3

    .line 14
    .line 15
    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    iget-object v4, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->b:Lh/g;

    .line 20
    .line 21
    iget-object v4, v4, Lh/g;->b:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v4, Lf/i;

    .line 24
    .line 25
    iget v5, v4, Lf/i;->c:I

    .line 26
    .line 27
    move v8, v7

    .line 28
    :goto_1
    if-ge v8, v5, :cond_1

    .line 29
    .line 30
    invoke-virtual {v4, v8}, Lf/i;->j(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v9

    .line 34
    check-cast v9, Ljava/util/ArrayList;

    .line 35
    .line 36
    if-eqz v9, :cond_0

    .line 37
    .line 38
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v9

    .line 42
    if-eqz v9, :cond_0

    .line 43
    .line 44
    move v3, v2

    .line 45
    goto :goto_2

    .line 46
    :cond_0
    add-int/lit8 v8, v8, 0x1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    move v3, v7

    .line 50
    :goto_2
    if-eqz v3, :cond_2

    .line 51
    .line 52
    move v0, v2

    .line 53
    goto :goto_3

    .line 54
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    move v0, v7

    .line 58
    :goto_3
    iget-boolean v1, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->j:Z

    .line 59
    .line 60
    if-eq v0, v1, :cond_8

    .line 61
    .line 62
    if-eqz v0, :cond_6

    .line 63
    .line 64
    iget-boolean v0, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->f:Z

    .line 65
    .line 66
    if-eqz v0, :cond_5

    .line 67
    .line 68
    iget-object v0, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->i:Lh/c;

    .line 69
    .line 70
    if-nez v0, :cond_4

    .line 71
    .line 72
    new-instance v0, Lh/c;

    .line 73
    .line 74
    invoke-direct {v0, v6}, Lh/c;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V

    .line 75
    .line 76
    .line 77
    iput-object v0, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->i:Lh/c;

    .line 78
    .line 79
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    iget-object v1, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->i:Lh/c;

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 86
    .line 87
    .line 88
    :cond_5
    iput-boolean v2, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->j:Z

    .line 89
    .line 90
    goto :goto_4

    .line 91
    :cond_6
    iget-boolean v0, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->f:Z

    .line 92
    .line 93
    if-eqz v0, :cond_7

    .line 94
    .line 95
    iget-object v0, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->i:Lh/c;

    .line 96
    .line 97
    if-eqz v0, :cond_7

    .line 98
    .line 99
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    iget-object v1, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->i:Lh/c;

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 106
    .line 107
    .line 108
    :cond_7
    iput-boolean v7, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->j:Z

    .line 109
    .line 110
    :cond_8
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    .line 111
    .line 112
    .line 113
    move-result v8

    .line 114
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    .line 119
    .line 120
    .line 121
    move-result v9

    .line 122
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    sget-object v3, Lp/k;->a:Ljava/lang/reflect/Field;

    .line 127
    .line 128
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    .line 129
    .line 130
    .line 131
    move-result v10

    .line 132
    if-ne v10, v2, :cond_9

    .line 133
    .line 134
    move v11, v2

    .line 135
    goto :goto_5

    .line 136
    :cond_9
    move v11, v7

    .line 137
    :goto_5
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 138
    .line 139
    .line 140
    move-result v12

    .line 141
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 142
    .line 143
    .line 144
    move-result v13

    .line 145
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 146
    .line 147
    .line 148
    move-result v14

    .line 149
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 150
    .line 151
    .line 152
    move-result v15

    .line 153
    add-int v16, v8, v9

    .line 154
    .line 155
    add-int v17, v0, v1

    .line 156
    .line 157
    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getSuggestedMinimumWidth()I

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    invoke-virtual/range {p0 .. p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getSuggestedMinimumHeight()I

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    iget-object v3, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->k:Lp/l;

    .line 166
    .line 167
    if-eqz v3, :cond_a

    .line 168
    .line 169
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getFitsSystemWindows()Z

    .line 170
    .line 171
    .line 172
    move-result v3

    .line 173
    if-eqz v3, :cond_a

    .line 174
    .line 175
    move/from16 v18, v2

    .line 176
    .line 177
    goto :goto_6

    .line 178
    :cond_a
    move/from16 v18, v7

    .line 179
    .line 180
    :goto_6
    iget-object v5, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a:Ljava/util/ArrayList;

    .line 181
    .line 182
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 183
    .line 184
    .line 185
    move-result v4

    .line 186
    move v3, v0

    .line 187
    move v2, v1

    .line 188
    move v0, v7

    .line 189
    move v1, v0

    .line 190
    :goto_7
    if-ge v1, v4, :cond_18

    .line 191
    .line 192
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v19

    .line 196
    check-cast v19, Landroid/view/View;

    .line 197
    .line 198
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getVisibility()I

    .line 199
    .line 200
    .line 201
    move-result v7

    .line 202
    move/from16 v21, v0

    .line 203
    .line 204
    const/16 v0, 0x8

    .line 205
    .line 206
    if-ne v7, v0, :cond_b

    .line 207
    .line 208
    move/from16 v20, v4

    .line 209
    .line 210
    move-object/from16 v23, v5

    .line 211
    .line 212
    move/from16 v0, v21

    .line 213
    .line 214
    const/16 v22, 0x0

    .line 215
    .line 216
    move/from16 v21, v1

    .line 217
    .line 218
    goto/16 :goto_f

    .line 219
    .line 220
    :cond_b
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    move-object v7, v0

    .line 225
    check-cast v7, Landroidx/coordinatorlayout/widget/b;

    .line 226
    .line 227
    iget v0, v7, Landroidx/coordinatorlayout/widget/b;->e:I

    .line 228
    .line 229
    if-ltz v0, :cond_16

    .line 230
    .line 231
    if-eqz v12, :cond_16

    .line 232
    .line 233
    move/from16 v22, v1

    .line 234
    .line 235
    iget-object v1, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->g:[I

    .line 236
    .line 237
    if-nez v1, :cond_c

    .line 238
    .line 239
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move/from16 v23, v2

    .line 243
    .line 244
    :goto_8
    const/4 v0, 0x0

    .line 245
    goto :goto_a

    .line 246
    :cond_c
    move/from16 v23, v2

    .line 247
    .line 248
    if-ltz v0, :cond_e

    .line 249
    .line 250
    array-length v2, v1

    .line 251
    if-lt v0, v2, :cond_d

    .line 252
    .line 253
    goto :goto_9

    .line 254
    :cond_d
    aget v0, v1, v0

    .line 255
    .line 256
    goto :goto_a

    .line 257
    :cond_e
    :goto_9
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    goto :goto_8

    .line 261
    :goto_a
    iget v1, v7, Landroidx/coordinatorlayout/widget/b;->c:I

    .line 262
    .line 263
    if-nez v1, :cond_f

    .line 264
    .line 265
    const v1, 0x800035

    .line 266
    .line 267
    .line 268
    :cond_f
    invoke-static {v1, v10}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    .line 269
    .line 270
    .line 271
    move-result v1

    .line 272
    and-int/lit8 v1, v1, 0x7

    .line 273
    .line 274
    const/4 v2, 0x3

    .line 275
    if-ne v1, v2, :cond_10

    .line 276
    .line 277
    if-eqz v11, :cond_11

    .line 278
    .line 279
    :cond_10
    const/4 v2, 0x5

    .line 280
    if-ne v1, v2, :cond_12

    .line 281
    .line 282
    if-eqz v11, :cond_12

    .line 283
    .line 284
    :cond_11
    sub-int v1, v13, v9

    .line 285
    .line 286
    sub-int/2addr v1, v0

    .line 287
    const/4 v0, 0x0

    .line 288
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 289
    .line 290
    .line 291
    move-result v1

    .line 292
    move v2, v0

    .line 293
    move/from16 v20, v1

    .line 294
    .line 295
    goto :goto_d

    .line 296
    :cond_12
    if-ne v1, v2, :cond_13

    .line 297
    .line 298
    if-eqz v11, :cond_14

    .line 299
    .line 300
    :cond_13
    const/4 v2, 0x3

    .line 301
    if-ne v1, v2, :cond_15

    .line 302
    .line 303
    if-eqz v11, :cond_15

    .line 304
    .line 305
    :cond_14
    sub-int/2addr v0, v8

    .line 306
    const/4 v2, 0x0

    .line 307
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 308
    .line 309
    .line 310
    move-result v0

    .line 311
    move/from16 v20, v0

    .line 312
    .line 313
    goto :goto_d

    .line 314
    :cond_15
    :goto_b
    const/4 v2, 0x0

    .line 315
    goto :goto_c

    .line 316
    :cond_16
    move/from16 v22, v1

    .line 317
    .line 318
    move/from16 v23, v2

    .line 319
    .line 320
    goto :goto_b

    .line 321
    :goto_c
    move/from16 v20, v2

    .line 322
    .line 323
    :goto_d
    if-eqz v18, :cond_17

    .line 324
    .line 325
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getFitsSystemWindows()Z

    .line 326
    .line 327
    .line 328
    move-result v0

    .line 329
    if-nez v0, :cond_17

    .line 330
    .line 331
    iget-object v0, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->k:Lp/l;

    .line 332
    .line 333
    iget-object v0, v0, Lp/l;->a:Ljava/lang/Object;

    .line 334
    .line 335
    check-cast v0, Landroid/view/WindowInsets;

    .line 336
    .line 337
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    .line 338
    .line 339
    .line 340
    move-result v0

    .line 341
    iget-object v1, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->k:Lp/l;

    .line 342
    .line 343
    iget-object v1, v1, Lp/l;->a:Ljava/lang/Object;

    .line 344
    .line 345
    check-cast v1, Landroid/view/WindowInsets;

    .line 346
    .line 347
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    .line 348
    .line 349
    .line 350
    move-result v1

    .line 351
    add-int/2addr v1, v0

    .line 352
    iget-object v0, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->k:Lp/l;

    .line 353
    .line 354
    invoke-virtual {v0}, Lp/l;->a()I

    .line 355
    .line 356
    .line 357
    move-result v0

    .line 358
    iget-object v2, v6, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->k:Lp/l;

    .line 359
    .line 360
    iget-object v2, v2, Lp/l;->a:Ljava/lang/Object;

    .line 361
    .line 362
    check-cast v2, Landroid/view/WindowInsets;

    .line 363
    .line 364
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    .line 365
    .line 366
    .line 367
    move-result v2

    .line 368
    add-int/2addr v2, v0

    .line 369
    sub-int v0, v13, v1

    .line 370
    .line 371
    invoke-static {v0, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 372
    .line 373
    .line 374
    move-result v0

    .line 375
    sub-int v1, v15, v2

    .line 376
    .line 377
    invoke-static {v1, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 378
    .line 379
    .line 380
    move-result v1

    .line 381
    move v2, v0

    .line 382
    move/from16 v24, v1

    .line 383
    .line 384
    goto :goto_e

    .line 385
    :cond_17
    move/from16 v2, p1

    .line 386
    .line 387
    move/from16 v24, p2

    .line 388
    .line 389
    :goto_e
    const/16 v25, 0x0

    .line 390
    .line 391
    move/from16 v1, v21

    .line 392
    .line 393
    move-object/from16 v0, p0

    .line 394
    .line 395
    move/from16 v26, v1

    .line 396
    .line 397
    move/from16 v21, v22

    .line 398
    .line 399
    move-object/from16 v1, v19

    .line 400
    .line 401
    move/from16 v27, v23

    .line 402
    .line 403
    const/16 v22, 0x0

    .line 404
    .line 405
    move/from16 v28, v3

    .line 406
    .line 407
    move/from16 v3, v20

    .line 408
    .line 409
    move/from16 v20, v4

    .line 410
    .line 411
    move/from16 v4, v24

    .line 412
    .line 413
    move-object/from16 v23, v5

    .line 414
    .line 415
    move/from16 v5, v25

    .line 416
    .line 417
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 418
    .line 419
    .line 420
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredWidth()I

    .line 421
    .line 422
    .line 423
    move-result v0

    .line 424
    add-int v0, v0, v16

    .line 425
    .line 426
    iget v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 427
    .line 428
    add-int/2addr v0, v1

    .line 429
    iget v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 430
    .line 431
    add-int/2addr v0, v1

    .line 432
    move/from16 v1, v28

    .line 433
    .line 434
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 435
    .line 436
    .line 437
    move-result v0

    .line 438
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I

    .line 439
    .line 440
    .line 441
    move-result v1

    .line 442
    add-int v1, v1, v17

    .line 443
    .line 444
    iget v2, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 445
    .line 446
    add-int/2addr v1, v2

    .line 447
    iget v2, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 448
    .line 449
    add-int/2addr v1, v2

    .line 450
    move/from16 v2, v27

    .line 451
    .line 452
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 453
    .line 454
    .line 455
    move-result v1

    .line 456
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredState()I

    .line 457
    .line 458
    .line 459
    move-result v2

    .line 460
    move/from16 v7, v26

    .line 461
    .line 462
    invoke-static {v7, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 463
    .line 464
    .line 465
    move-result v2

    .line 466
    move v3, v0

    .line 467
    move v0, v2

    .line 468
    move v2, v1

    .line 469
    :goto_f
    add-int/lit8 v1, v21, 0x1

    .line 470
    .line 471
    move/from16 v4, v20

    .line 472
    .line 473
    move/from16 v7, v22

    .line 474
    .line 475
    move-object/from16 v5, v23

    .line 476
    .line 477
    goto/16 :goto_7

    .line 478
    .line 479
    :cond_18
    move v7, v0

    .line 480
    move v1, v3

    .line 481
    const/high16 v0, -0x1000000

    .line 482
    .line 483
    and-int/2addr v0, v7

    .line 484
    move/from16 v3, p1

    .line 485
    .line 486
    invoke-static {v1, v3, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 487
    .line 488
    .line 489
    move-result v0

    .line 490
    shl-int/lit8 v1, v7, 0x10

    .line 491
    .line 492
    move/from16 v3, p2

    .line 493
    .line 494
    invoke-static {v2, v3, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 495
    .line 496
    .line 497
    move-result v1

    .line 498
    invoke-virtual {v6, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 499
    .line 500
    .line 501
    return-void
.end method

.method public final onNestedFling(Landroid/view/View;FFZ)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p2, 0x0

    .line 6
    move p3, p2

    .line 7
    :goto_0
    if-ge p3, p1, :cond_2

    .line 8
    .line 9
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p4

    .line 13
    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/16 v1, 0x8

    .line 18
    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 23
    .line 24
    .line 25
    move-result-object p4

    .line 26
    check-cast p4, Landroidx/coordinatorlayout/widget/b;

    .line 27
    .line 28
    invoke-virtual {p4, p2}, Landroidx/coordinatorlayout/widget/b;->a(I)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    iget-object p4, p4, Landroidx/coordinatorlayout/widget/b;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 36
    .line 37
    :goto_1
    add-int/lit8 p3, p3, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    return p2
.end method

.method public final onNestedPreFling(Landroid/view/View;FF)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p2, 0x0

    .line 6
    move p3, p2

    .line 7
    :goto_0
    if-ge p3, p1, :cond_2

    .line 8
    .line 9
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/16 v2, 0x8

    .line 18
    .line 19
    if-ne v1, v2, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroidx/coordinatorlayout/widget/b;

    .line 27
    .line 28
    invoke-virtual {v0, p2}, Landroidx/coordinatorlayout/widget/b;->a(I)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    iget-object v0, v0, Landroidx/coordinatorlayout/widget/b;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 36
    .line 37
    :goto_1
    add-int/lit8 p3, p3, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    return p2
.end method

.method public final onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p3, p4, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->c(II[II)V

    return-void
.end method

.method public final onNestedScroll(Landroid/view/View;IIII)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p5, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->d(II)V

    return-void
.end method

.method public final onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(Landroid/view/View;Landroid/view/View;II)V

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5

    .line 1
    instance-of v0, p1, Lh/e;

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
    check-cast p1, Lh/e;

    .line 10
    .line 11
    iget-object v0, p1, Ls/b;->a:Landroid/os/Parcelable;

    .line 12
    .line 13
    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p1, Lh/e;->c:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x0

    .line 23
    :goto_0
    if-ge v1, v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    invoke-static {v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->k(Landroid/view/View;)Landroidx/coordinatorlayout/widget/b;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iget-object v2, v2, Landroidx/coordinatorlayout/widget/b;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 38
    .line 39
    const/4 v4, -0x1

    .line 40
    if-eq v3, v4, :cond_1

    .line 41
    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Landroid/os/Parcelable;

    .line 49
    .line 50
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .line 1
    new-instance v0, Lh/e;

    .line 2
    .line 3
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lh/e;-><init>(Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x0

    .line 20
    :goto_0
    if-ge v3, v2, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Landroidx/coordinatorlayout/widget/b;

    .line 35
    .line 36
    iget-object v4, v4, Landroidx/coordinatorlayout/widget/b;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 37
    .line 38
    const/4 v6, -0x1

    .line 39
    if-eq v5, v6, :cond_0

    .line 40
    .line 41
    if-eqz v4, :cond_0

    .line 42
    .line 43
    sget-object v4, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    .line 44
    .line 45
    if-eqz v4, :cond_0

    .line 46
    .line 47
    invoke-virtual {v1, v5, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iput-object v1, v0, Lh/e;->c:Landroid/util/SparseArray;

    .line 54
    .line 55
    return-object v0
.end method

.method public final onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p3, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->b(II)Z

    return p1
.end method

.method public final onStopNestedScroll(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->e(ILandroid/view/View;)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->m(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    or-int/lit8 p1, p1, 0x0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->o()V

    :cond_1
    return p1
.end method

.method public final r()V
    .locals 2

    .line 1
    sget-object v0, Lp/k;->a:Ljava/lang/reflect/Field;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getFitsSystemWindows()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->o:Lh/a;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Lh/a;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-direct {v0, p0, v1}, Lh/a;-><init>(Ljava/lang/Object;I)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->o:Lh/a;

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->o:Lh/a;

    .line 22
    .line 23
    invoke-static {p0, v0}, Lp/k;->b(Landroid/view/View;Lp/f;)V

    .line 24
    .line 25
    .line 26
    const/16 v0, 0x500

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v0, 0x0

    .line 33
    invoke-static {p0, v0}, Lp/k;->b(Landroid/view/View;Lp/f;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void
.end method

.method public final requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/coordinatorlayout/widget/b;

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/coordinatorlayout/widget/b;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 8
    .line 9
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public final requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->e:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->o()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->e:Z

    :cond_0
    return-void
.end method

.method public setFitsSystemWindows(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->r()V

    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->n:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-void
.end method

.method public setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->m:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-eq v0, p1, :cond_5

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    if-eqz p1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :cond_1
    iput-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->m:Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    if-eqz v1, :cond_4

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->m:Landroid/graphics/drawable/Drawable;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 34
    .line 35
    .line 36
    :cond_2
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->m:Landroid/graphics/drawable/Drawable;

    .line 37
    .line 38
    sget-object v0, Lp/k;->a:Ljava/lang/reflect/Field;

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->m:Landroid/graphics/drawable/Drawable;

    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    const/4 v1, 0x0

    .line 54
    if-nez v0, :cond_3

    .line 55
    .line 56
    const/4 v0, 0x1

    .line 57
    goto :goto_0

    .line 58
    :cond_3
    move v0, v1

    .line 59
    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->m:Landroid/graphics/drawable/Drawable;

    .line 63
    .line 64
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 65
    .line 66
    .line 67
    :cond_4
    sget-object p1, Lp/k;->a:Ljava/lang/reflect/Field;

    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 70
    .line 71
    .line 72
    :cond_5
    return-void
.end method

.method public setStatusBarBackgroundColor(I)V
    .locals 1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setStatusBarBackgroundResource(I)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lk/a;->a:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-eq v1, p1, :cond_1

    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_1
    return-void
.end method

.method public final verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->m:Landroid/graphics/drawable/Drawable;

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
