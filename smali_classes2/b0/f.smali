.class public final Lb0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;


# direct methods
.method public synthetic constructor <init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;I)V
    .locals 0

    .line 1
    iput p2, p0, Lb0/f;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lb0/f;->b:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .line 1
    iget p1, p0, Lb0/f;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Lb0/f;->b:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_1

    .line 9
    :pswitch_0
    iget-boolean p1, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->b:Z

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->z:Lb0/e;

    .line 14
    .line 15
    const/16 v1, 0xff

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Lb0/e;->setAlpha(I)V

    .line 18
    .line 19
    .line 20
    iget-object p1, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->z:Lb0/e;

    .line 21
    .line 22
    invoke-virtual {p1}, Lb0/e;->start()V

    .line 23
    .line 24
    .line 25
    iget-object p1, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->s:Lb0/a;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iput p1, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->l:I

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->f()V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void

    .line 38
    :goto_1
    iget-boolean p1, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->q:Z

    .line 39
    .line 40
    if-nez p1, :cond_1

    .line 41
    .line 42
    new-instance p1, Lb0/g;

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    invoke-direct {p1, v0, v1}, Lb0/g;-><init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;I)V

    .line 46
    .line 47
    .line 48
    iput-object p1, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->B:Lb0/g;

    .line 49
    .line 50
    const-wide/16 v1, 0x96

    .line 51
    .line 52
    invoke-virtual {p1, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 53
    .line 54
    .line 55
    iget-object p1, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->s:Lb0/a;

    .line 56
    .line 57
    const/4 v1, 0x0

    .line 58
    iput-object v1, p1, Lb0/a;->a:Landroid/view/animation/Animation$AnimationListener;

    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 61
    .line 62
    .line 63
    iget-object p1, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->s:Lb0/a;

    .line 64
    .line 65
    iget-object v0, v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->B:Lb0/g;

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 68
    .line 69
    .line 70
    :cond_1
    return-void

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    return-void
.end method
