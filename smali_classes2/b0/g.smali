.class public final Lb0/g;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;


# direct methods
.method public synthetic constructor <init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;I)V
    .locals 0

    .line 1
    iput p2, p0, Lb0/g;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lb0/g;->b:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    .line 1
    iget p2, p0, Lb0/g;->a:I

    .line 2
    .line 3
    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    .line 5
    iget-object v1, p0, Lb0/g;->b:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 6
    .line 7
    packed-switch p2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto :goto_1

    .line 11
    :pswitch_0
    invoke-virtual {v1, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->e(F)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_1
    iget-boolean p2, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->G:Z

    .line 16
    .line 17
    if-nez p2, :cond_0

    .line 18
    .line 19
    iget p2, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->x:I

    .line 20
    .line 21
    iget v2, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->w:I

    .line 22
    .line 23
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    sub-int/2addr p2, v2

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget p2, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->x:I

    .line 30
    .line 31
    :goto_0
    iget v2, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->u:I

    .line 32
    .line 33
    sub-int/2addr p2, v2

    .line 34
    int-to-float p2, p2

    .line 35
    mul-float/2addr p2, p1

    .line 36
    float-to-int p2, p2

    .line 37
    add-int/2addr v2, p2

    .line 38
    iget-object p2, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->s:Lb0/a;

    .line 39
    .line 40
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    sub-int/2addr v2, p2

    .line 45
    invoke-virtual {v1, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(I)V

    .line 46
    .line 47
    .line 48
    iget-object p2, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->z:Lb0/e;

    .line 49
    .line 50
    sub-float/2addr v0, p1

    .line 51
    iget-object p1, p2, Lb0/e;->a:Lb0/d;

    .line 52
    .line 53
    iget v1, p1, Lb0/d;->p:F

    .line 54
    .line 55
    cmpl-float v1, v0, v1

    .line 56
    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    iput v0, p1, Lb0/d;->p:F

    .line 60
    .line 61
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :pswitch_2
    sub-float/2addr v0, p1

    .line 66
    invoke-virtual {v1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setAnimationProgress(F)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :pswitch_3
    invoke-virtual {v1, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setAnimationProgress(F)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :goto_1
    iget p2, v1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->v:F

    .line 75
    .line 76
    neg-float v0, p2

    .line 77
    mul-float/2addr v0, p1

    .line 78
    add-float/2addr v0, p2

    .line 79
    invoke-virtual {v1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setAnimationProgress(F)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->e(F)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    nop

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
