.class final Lorg/mozilla/gecko/gfx/StackScroller;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;
    }
.end annotation

.annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    exceptionMode = "nsresult"
.end annotation


# static fields
.field private static final FLING_MODE:I = 0x1

.field private static final SCROLL_MODE:I

.field private static sViscousFluidNormalize:F

.field private static sViscousFluidScale:F


# instance fields
.field private final mFlywheel:Z

.field private mMode:I

.field private final mScrollerX:Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;

.field private final mScrollerY:Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/gecko/gfx/StackScroller;->mFlywheel:Z

    new-instance v0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;

    invoke-direct {v0, p1}, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/mozilla/gecko/gfx/StackScroller;->mScrollerX:Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;

    new-instance v0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;

    invoke-direct {v0, p1}, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/mozilla/gecko/gfx/StackScroller;->mScrollerY:Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;

    invoke-static {}, Lorg/mozilla/gecko/gfx/StackScroller;->initContants()V

    return-void
.end method

.method private static initContants()V
    .locals 2

    const/high16 v0, 0x41000000    # 8.0f

    sput v0, Lorg/mozilla/gecko/gfx/StackScroller;->sViscousFluidScale:F

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lorg/mozilla/gecko/gfx/StackScroller;->sViscousFluidNormalize:F

    invoke-static {v0}, Lorg/mozilla/gecko/gfx/StackScroller;->viscousFluid(F)F

    move-result v1

    div-float/2addr v0, v1

    sput v0, Lorg/mozilla/gecko/gfx/StackScroller;->sViscousFluidNormalize:F

    return-void
.end method

.method private static viscousFluid(F)F
    .locals 3

    sget v0, Lorg/mozilla/gecko/gfx/StackScroller;->sViscousFluidScale:F

    mul-float/2addr p0, v0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    neg-float v1, p0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float/2addr v0, v1

    sub-float/2addr p0, v0

    goto :goto_0

    :cond_0
    sub-float p0, v0, p0

    float-to-double v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float p0, v1

    sub-float/2addr v0, p0

    const p0, 0x3f21d2a7

    mul-float/2addr v0, p0

    const p0, 0x3ebc5ab2

    add-float/2addr p0, v0

    :goto_0
    sget v0, Lorg/mozilla/gecko/gfx/StackScroller;->sViscousFluidNormalize:F

    mul-float/2addr p0, v0

    return p0
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/gfx/StackScroller;->mScrollerX:Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;

    invoke-virtual {v0}, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->finish()V

    iget-object v0, p0, Lorg/mozilla/gecko/gfx/StackScroller;->mScrollerY:Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;

    invoke-virtual {v0}, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->finish()V

    return-void
.end method

.method public computeScrollOffset(J)Z
    .locals 4

    invoke-virtual {p0}, Lorg/mozilla/gecko/gfx/StackScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget v0, p0, Lorg/mozilla/gecko/gfx/StackScroller;->mMode:I

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/mozilla/gecko/gfx/StackScroller;->mScrollerX:Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;

    invoke-static {v0}, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->access$000(Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/mozilla/gecko/gfx/StackScroller;->mScrollerX:Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->update(J)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/mozilla/gecko/gfx/StackScroller;->mScrollerX:Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->continueWhenFinished(J)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/mozilla/gecko/gfx/StackScroller;->mScrollerX:Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;

    invoke-virtual {v0}, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->finish()V

    :cond_2
    iget-object v0, p0, Lorg/mozilla/gecko/gfx/StackScroller;->mScrollerY:Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;

    invoke-static {v0}, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->access$000(Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/mozilla/gecko/gfx/StackScroller;->mScrollerY:Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->update(J)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/mozilla/gecko/gfx/StackScroller;->mScrollerY:Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->continueWhenFinished(J)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lorg/mozilla/gecko/gfx/StackScroller;->mScrollerY:Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;

    invoke-virtual {p1}, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->finish()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/mozilla/gecko/gfx/StackScroller;->mScrollerX:Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;

    invoke-static {v0}, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->access$400(Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;)J

    move-result-wide v2

    sub-long/2addr p1, v2

    iget-object v0, p0, Lorg/mozilla/gecko/gfx/StackScroller;->mScrollerX:Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;

    invoke-static {v0}, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->access$500(Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;)I

    move-result v0

    int-to-long v2, v0

    cmp-long v2, p1, v2

    if-gez v2, :cond_4

    long-to-float p1, p1

    int-to-float p2, v0

    div-float/2addr p1, p2

    invoke-static {p1}, Lorg/mozilla/gecko/gfx/StackScroller;->viscousFluid(F)F

    move-result p1

    iget-object p2, p0, Lorg/mozilla/gecko/gfx/StackScroller;->mScrollerX:Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;

    invoke-virtual {p2, p1}, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->updateScroll(F)V

    iget-object p2, p0, Lorg/mozilla/gecko/gfx/StackScroller;->mScrollerY:Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;

    invoke-virtual {p2, p1}, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->updateScroll(F)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lorg/mozilla/gecko/gfx/StackScroller;->abortAnimation()V

    :cond_5
    :goto_0
    return v1
.end method

.method public fling(IIIIIIIIIIJ)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    iget-boolean v3, v0, Lorg/mozilla/gecko/gfx/StackScroller;->mFlywheel:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_9

    invoke-virtual/range {p0 .. p0}, Lorg/mozilla/gecko/gfx/StackScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, v0, Lorg/mozilla/gecko/gfx/StackScroller;->mScrollerX:Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;

    invoke-static {v3}, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->access$300(Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;)F

    move-result v3

    iget-object v5, v0, Lorg/mozilla/gecko/gfx/StackScroller;->mScrollerY:Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;

    invoke-static {v5}, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->access$300(Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;)F

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v1, :cond_3

    cmpl-float v8, v3, v6

    if-eqz v8, :cond_3

    if-gez v1, :cond_0

    move v8, v4

    goto :goto_0

    :cond_0
    move v8, v7

    :goto_0
    cmpg-float v9, v3, v6

    if-gez v9, :cond_1

    move v9, v4

    goto :goto_1

    :cond_1
    move v9, v7

    :goto_1
    if-ne v8, v9, :cond_2

    goto :goto_2

    :cond_2
    move v8, v7

    goto :goto_3

    :cond_3
    :goto_2
    move v8, v4

    :goto_3
    if-eqz v2, :cond_6

    cmpl-float v9, v5, v6

    if-eqz v9, :cond_6

    if-gez v2, :cond_4

    move v9, v4

    goto :goto_4

    :cond_4
    move v9, v7

    :goto_4
    cmpg-float v6, v5, v6

    if-gez v6, :cond_5

    move v6, v4

    goto :goto_5

    :cond_5
    move v6, v7

    :goto_5
    if-ne v9, v6, :cond_7

    :cond_6
    move v7, v4

    :cond_7
    if-eqz v8, :cond_8

    int-to-float v1, v1

    add-float/2addr v1, v3

    float-to-int v1, v1

    :cond_8
    if-eqz v7, :cond_9

    int-to-float v2, v2

    add-float/2addr v2, v5

    float-to-int v2, v2

    :cond_9
    move v7, v1

    iput v4, v0, Lorg/mozilla/gecko/gfx/StackScroller;->mMode:I

    iget-object v5, v0, Lorg/mozilla/gecko/gfx/StackScroller;->mScrollerX:Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;

    move/from16 v6, p1

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p9

    move-wide/from16 v11, p11

    invoke-virtual/range {v5 .. v12}, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->fling(IIIIIJ)V

    iget-object v8, v0, Lorg/mozilla/gecko/gfx/StackScroller;->mScrollerY:Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;

    move/from16 v9, p2

    move v10, v2

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p10

    move-wide/from16 v14, p11

    invoke-virtual/range {v8 .. v15}, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->fling(IIIIIJ)V

    return-void
.end method

.method public final forceFinished(Z)V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/gecko/gfx/StackScroller;->mScrollerX:Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;

    iget-object v1, p0, Lorg/mozilla/gecko/gfx/StackScroller;->mScrollerY:Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;

    invoke-static {v1, p1}, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->access$002(Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;Z)Z

    move-result p1

    invoke-static {v0, p1}, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->access$002(Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;Z)Z

    return-void
.end method

.method public final getCurrSpeedX()F
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/gfx/StackScroller;->mScrollerX:Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;

    invoke-static {v0}, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->access$300(Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;)F

    move-result v0

    return v0
.end method

.method public final getCurrSpeedY()F
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/gfx/StackScroller;->mScrollerY:Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;

    invoke-static {v0}, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->access$300(Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;)F

    move-result v0

    return v0
.end method

.method public final getCurrX()I
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/gfx/StackScroller;->mScrollerX:Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;

    invoke-static {v0}, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->access$100(Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;)I

    move-result v0

    return v0
.end method

.method public final getCurrY()I
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/gfx/StackScroller;->mScrollerY:Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;

    invoke-static {v0}, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->access$100(Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;)I

    move-result v0

    return v0
.end method

.method public final getFinalX()I
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/gfx/StackScroller;->mScrollerX:Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;

    invoke-static {v0}, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->access$200(Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;)I

    move-result v0

    return v0
.end method

.method public final getFinalY()I
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/gfx/StackScroller;->mScrollerY:Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;

    invoke-static {v0}, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->access$200(Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;)I

    move-result v0

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/gfx/StackScroller;->mScrollerX:Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;

    invoke-static {v0}, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->access$000(Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/gecko/gfx/StackScroller;->mScrollerY:Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;

    invoke-static {v0}, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->access$000(Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final setFinalX(I)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/gfx/StackScroller;->mScrollerX:Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;

    invoke-virtual {v0, p1}, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->setFinalPosition(I)V

    return-void
.end method

.method public springBack(IIIIIIJ)Z
    .locals 7

    const/4 v0, 0x1

    iput v0, p0, Lorg/mozilla/gecko/gfx/StackScroller;->mMode:I

    iget-object v1, p0, Lorg/mozilla/gecko/gfx/StackScroller;->mScrollerX:Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;

    move v2, p1

    move v3, p3

    move v4, p4

    move-wide v5, p7

    invoke-virtual/range {v1 .. v6}, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->springback(IIIJ)Z

    move-result p1

    iget-object v1, p0, Lorg/mozilla/gecko/gfx/StackScroller;->mScrollerY:Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;

    move v2, p2

    move v3, p5

    move v4, p6

    invoke-virtual/range {v1 .. v6}, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->springback(IIIJ)Z

    move-result p2

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public startScroll(IIIIJI)V
    .locals 8

    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/gecko/gfx/StackScroller;->mMode:I

    iget-object v1, p0, Lorg/mozilla/gecko/gfx/StackScroller;->mScrollerX:Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;

    move v2, p1

    move v3, p3

    move-wide v4, p5

    move v6, p7

    invoke-virtual/range {v1 .. v6}, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->startScroll(IIJI)V

    iget-object v2, p0, Lorg/mozilla/gecko/gfx/StackScroller;->mScrollerY:Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;

    move v3, p2

    move v4, p4

    move-wide v5, p5

    move v7, p7

    invoke-virtual/range {v2 .. v7}, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->startScroll(IIJI)V

    return-void
.end method
