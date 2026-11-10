.class public final Lb0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lb0/d;

.field public final synthetic b:Lb0/e;


# direct methods
.method public constructor <init>(Lb0/e;Lb0/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb0/b;->b:Lb0/e;

    iput-object p2, p0, Lb0/b;->a:Lb0/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lb0/b;->b:Lb0/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lb0/b;->a:Lb0/d;

    invoke-static {p1, v1}, Lb0/e;->c(FLb0/d;)V

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lb0/e;->a(FLb0/d;Z)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
