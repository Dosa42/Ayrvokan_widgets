.class Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/gfx/StackScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SplineStackScroller"
.end annotation


# static fields
.field private static final BALLISTIC:I = 0x2

.field private static final CUBIC:I = 0x1

.field private static final DECELERATION_RATE:F

.field private static final END_TENSION:F = 1.0f

.field private static final GRAVITY:F = 2000.0f

.field private static final INFLEXION:F = 0.35f

.field private static final NB_SAMPLES:I = 0x64

.field private static final P1:F = 0.175f

.field private static final P2:F = 0.35000002f

.field private static final SPLINE:I = 0x0

.field private static final SPLINE_POSITION:[F

.field private static final SPLINE_TIME:[F

.field private static final START_TENSION:F = 0.5f


# instance fields
.field private mCurrVelocity:F

.field private mCurrentPosition:I

.field private mDeceleration:F

.field private mDuration:I

.field private mFinal:I

.field private mFinished:Z

.field private final mFlingFriction:F

.field private mOver:I

.field private final mPhysicalCoeff:F

.field private mSplineDistance:I

.field private mSplineDuration:I

.field private mStart:I

.field private mStartTime:J

.field private mState:I

.field private mVelocity:I


# direct methods
.method public static constructor <clinit>()V
    .locals 19

    const-wide v0, 0x3fe8f5c28f5c28f6L    # 0.78

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->DECELERATION_RATE:F

    const/16 v0, 0x65

    new-array v1, v0, [F

    sput-object v1, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->SPLINE_POSITION:[F

    new-array v0, v0, [F

    sput-object v0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->SPLINE_TIME:[F

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    move v1, v0

    :goto_0
    const/16 v3, 0x64

    const/high16 v4, 0x3f800000    # 1.0f

    if-ge v2, v3, :cond_4

    int-to-float v3, v2

    const/high16 v5, 0x42c80000    # 100.0f

    div-float v5, v3, v5

    move v3, v4

    :goto_1
    sub-float v6, v3, v0

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v6, v0

    const/high16 v8, 0x40400000    # 3.0f

    mul-float v9, v6, v8

    sub-float v10, v4, v6

    mul-float/2addr v9, v10

    const v11, 0x3e333333    # 0.175f

    mul-float v12, v10, v11

    const v13, 0x3eb33334    # 0.35000002f

    mul-float v14, v6, v13

    add-float/2addr v14, v12

    mul-float/2addr v14, v9

    mul-float v12, v6, v6

    mul-float/2addr v12, v6

    add-float/2addr v14, v12

    sub-float v15, v14, v5

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    move/from16 v16, v14

    float-to-double v13, v15

    const-wide v17, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v13, v13, v17

    if-gez v13, :cond_2

    sget-object v3, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->SPLINE_POSITION:[F

    const/high16 v13, 0x3f000000    # 0.5f

    mul-float/2addr v10, v13

    add-float/2addr v10, v6

    mul-float/2addr v10, v9

    add-float/2addr v10, v12

    aput v10, v3, v2

    move v3, v4

    :goto_2
    sub-float v6, v3, v1

    div-float/2addr v6, v7

    add-float/2addr v6, v1

    mul-float v9, v6, v8

    sub-float v10, v4, v6

    mul-float/2addr v9, v10

    mul-float v12, v10, v13

    add-float/2addr v12, v6

    mul-float/2addr v12, v9

    mul-float v14, v6, v6

    mul-float/2addr v14, v6

    add-float/2addr v12, v14

    sub-float v15, v12, v5

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    float-to-double v7, v15

    cmpg-double v7, v7, v17

    if-gez v7, :cond_0

    sget-object v3, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->SPLINE_TIME:[F

    mul-float/2addr v10, v11

    const v7, 0x3eb33334    # 0.35000002f

    mul-float/2addr v6, v7

    add-float/2addr v6, v10

    mul-float/2addr v6, v9

    add-float/2addr v6, v14

    aput v6, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const v7, 0x3eb33334    # 0.35000002f

    cmpl-float v8, v12, v5

    if-lez v8, :cond_1

    move v3, v6

    goto :goto_3

    :cond_1
    move v1, v6

    :goto_3
    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, 0x40400000    # 3.0f

    goto :goto_2

    :cond_2
    cmpl-float v7, v16, v5

    if-lez v7, :cond_3

    move v3, v6

    goto :goto_1

    :cond_3
    move v0, v6

    goto :goto_1

    :cond_4
    sget-object v0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->SPLINE_POSITION:[F

    sget-object v1, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->SPLINE_TIME:[F

    aput v4, v1, v3

    aput v4, v0, v3

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    iput v0, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mFlingFriction:F

    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mState:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mFinished:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x43200000    # 160.0f

    mul-float/2addr p1, v0

    const v0, 0x43c10b3d

    mul-float/2addr p1, v0

    const v0, 0x3f570a3d    # 0.84f

    mul-float/2addr p1, v0

    iput p1, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mPhysicalCoeff:F

    return-void
.end method

.method public static synthetic access$000(Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mFinished:Z

    return p0
.end method

.method public static synthetic access$002(Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mFinished:Z

    return p1
.end method

.method public static synthetic access$100(Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;)I
    .locals 0

    iget p0, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mCurrentPosition:I

    return p0
.end method

.method public static synthetic access$200(Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;)I
    .locals 0

    iget p0, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mFinal:I

    return p0
.end method

.method public static synthetic access$300(Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;)F
    .locals 0

    iget p0, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mCurrVelocity:F

    return p0
.end method

.method public static synthetic access$400(Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;)J
    .locals 2

    iget-wide v0, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mStartTime:J

    return-wide v0
.end method

.method public static synthetic access$500(Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;)I
    .locals 0

    iget p0, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mDuration:I

    return p0
.end method

.method private adjustDuration(III)V
    .locals 3

    sub-int/2addr p2, p1

    sub-int/2addr p3, p1

    int-to-float p1, p3

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float p3, p1, p2

    float-to-int p3, p3

    const/16 v0, 0x64

    if-ge p3, v0, :cond_0

    int-to-float v0, p3

    div-float/2addr v0, p2

    add-int/lit8 v1, p3, 0x1

    int-to-float v2, v1

    div-float/2addr v2, p2

    sget-object p2, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->SPLINE_TIME:[F

    aget p3, p2, p3

    aget p2, p2, v1

    sub-float/2addr p1, v0

    sub-float/2addr v2, v0

    div-float/2addr p1, v2

    sub-float/2addr p2, p3

    mul-float/2addr p2, p1

    add-float/2addr p2, p3

    iget p1, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mDuration:I

    int-to-float p1, p1

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mDuration:I

    :cond_0
    return-void
.end method

.method private fitOnBounceCurve(III)V
    .locals 5

    neg-int v0, p3

    int-to-float v0, v0

    iget v1, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mDeceleration:F

    div-float/2addr v0, v1

    mul-int/2addr p3, p3

    int-to-float p3, p3

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p3, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr p3, v1

    sub-int p1, p2, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p3, p1

    float-to-double v1, p3

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    mul-double/2addr v1, v3

    iget p1, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mDeceleration:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v3, p1

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float p1, v1

    iget-wide v1, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mStartTime:J

    const/high16 p3, 0x447a0000    # 1000.0f

    sub-float v0, p1, v0

    mul-float/2addr v0, p3

    float-to-int p3, v0

    int-to-long v3, p3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mStartTime:J

    iput p2, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mStart:I

    iget p2, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mDeceleration:F

    neg-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mVelocity:I

    return-void
.end method

.method private static getDeceleration(I)F
    .locals 0

    if-lez p0, :cond_0

    const/high16 p0, -0x3b060000    # -2000.0f

    goto :goto_0

    :cond_0
    const/high16 p0, 0x44fa0000    # 2000.0f

    :goto_0
    return p0
.end method

.method private getSplineDeceleration(I)D
    .locals 2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3eb33333    # 0.35f

    mul-float/2addr p1, v0

    iget v0, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mFlingFriction:F

    iget v1, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mPhysicalCoeff:F

    mul-float/2addr v0, v1

    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private getSplineFlingDistance(I)D
    .locals 8

    invoke-direct {p0, p1}, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->getSplineDeceleration(I)D

    move-result-wide v0

    sget p1, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->DECELERATION_RATE:F

    float-to-double v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    iget v4, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mFlingFriction:F

    iget v5, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mPhysicalCoeff:F

    mul-float/2addr v4, v5

    float-to-double v4, v4

    float-to-double v6, p1

    div-double/2addr v6, v2

    mul-double/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    return-wide v0
.end method

.method private getSplineFlingDuration(I)I
    .locals 6

    invoke-direct {p0, p1}, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->getSplineDeceleration(I)D

    move-result-wide v0

    sget p1, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->DECELERATION_RATE:F

    float-to-double v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-int p1, v0

    return p1
.end method

.method private onEdgeReached()V
    .locals 5

    iget v0, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mVelocity:I

    mul-int/2addr v0, v0

    int-to-float v0, v0

    iget v1, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mDeceleration:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    iget v1, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mVelocity:I

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    iget v3, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mOver:I

    int-to-float v4, v3

    cmpl-float v4, v0, v4

    if-lez v4, :cond_0

    neg-float v0, v1

    iget v1, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mVelocity:I

    int-to-float v4, v1

    mul-float/2addr v0, v4

    int-to-float v1, v1

    mul-float/2addr v0, v1

    int-to-float v1, v3

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mDeceleration:F

    int-to-float v0, v3

    :cond_0
    float-to-int v1, v0

    iput v1, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mOver:I

    const/4 v1, 0x2

    iput v1, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mState:I

    iget v1, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mStart:I

    iget v2, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mVelocity:I

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    neg-float v0, v0

    :goto_0
    float-to-int v0, v0

    add-int/2addr v1, v0

    iput v1, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mFinal:I

    const/high16 v0, 0x447a0000    # 1000.0f

    int-to-float v1, v2

    mul-float/2addr v1, v0

    iget v0, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mDeceleration:F

    div-float/2addr v1, v0

    float-to-int v0, v1

    neg-int v0, v0

    iput v0, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mDuration:I

    return-void
.end method

.method private startAfterEdge(IIIIJ)V
    .locals 14

    move-object v8, p0

    move v1, p1

    move/from16 v0, p3

    move/from16 v2, p4

    const/4 v3, 0x1

    move/from16 v4, p2

    if-le v1, v4, :cond_0

    if-ge v1, v0, :cond_0

    iput-boolean v3, v8, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mFinished:Z

    return-void

    :cond_0
    const/4 v5, 0x0

    if-le v1, v0, :cond_1

    move v6, v3

    goto :goto_0

    :cond_1
    move v6, v5

    :goto_0
    if-eqz v6, :cond_2

    move v7, v0

    goto :goto_1

    :cond_2
    move v7, v4

    :goto_1
    sub-int v9, v1, v7

    mul-int v10, v9, v2

    if-ltz v10, :cond_3

    goto :goto_2

    :cond_3
    move v3, v5

    :goto_2
    if-eqz v3, :cond_4

    invoke-direct {p0, p1, v7, v2}, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->startBounceAfterEdge(III)V

    goto :goto_5

    :cond_4
    invoke-direct {p0, v2}, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->getSplineFlingDistance(I)D

    move-result-wide v10

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-double v12, v3

    cmpl-double v3, v10, v12

    if-lez v3, :cond_7

    if-eqz v6, :cond_5

    move v3, v4

    goto :goto_3

    :cond_5
    move v3, v1

    :goto_3
    if-eqz v6, :cond_6

    move v4, v1

    goto :goto_4

    :cond_6
    move v4, v0

    :goto_4
    iget v5, v8, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mOver:I

    move-object v0, p0

    move v1, p1

    move/from16 v2, p4

    move-wide/from16 v6, p5

    invoke-virtual/range {v0 .. v7}, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->fling(IIIIIJ)V

    goto :goto_5

    :cond_7
    invoke-direct {p0, p1, v7, v2}, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->startSpringback(III)V

    :goto_5
    return-void
.end method

.method private startBounceAfterEdge(III)V
    .locals 1

    if-nez p3, :cond_0

    sub-int v0, p1, p2

    goto :goto_0

    :cond_0
    move v0, p3

    :goto_0
    invoke-static {v0}, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mDeceleration:F

    invoke-direct {p0, p1, p2, p3}, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->fitOnBounceCurve(III)V

    invoke-direct {p0}, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->onEdgeReached()V

    return-void
.end method

.method private startSpringback(III)V
    .locals 2

    const/4 p3, 0x0

    iput-boolean p3, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mFinished:Z

    const/4 p3, 0x1

    iput p3, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mState:I

    iput p1, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mStart:I

    iput p2, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mFinal:I

    sub-int/2addr p1, p2

    invoke-static {p1}, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->getDeceleration(I)F

    move-result p2

    iput p2, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mDeceleration:F

    neg-int p2, p1

    iput p2, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mVelocity:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iput p2, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mOver:I

    const-wide/high16 p2, -0x4000000000000000L    # -2.0

    int-to-double v0, p1

    mul-double/2addr v0, p2

    iget p1, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mDeceleration:F

    float-to-double p1, p1

    div-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr p1, v0

    double-to-int p1, p1

    iput p1, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mDuration:I

    return-void
.end method


# virtual methods
.method public continueWhenFinished(J)Z
    .locals 7

    iget v0, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v3, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mStartTime:J

    iget v0, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mDuration:I

    int-to-long v5, v0

    add-long/2addr v3, v5

    iput-wide v3, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mStartTime:J

    iget v0, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mFinal:I

    iget v3, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mStart:I

    invoke-direct {p0, v0, v3, v2}, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->startSpringback(III)V

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    iget v0, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mDuration:I

    iget v3, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mSplineDuration:I

    if-ge v0, v3, :cond_3

    iget v0, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mFinal:I

    iput v0, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mStart:I

    iget v0, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mCurrVelocity:F

    float-to-int v0, v0

    iput v0, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mVelocity:I

    invoke-static {v0}, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mDeceleration:F

    iget-wide v2, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mStartTime:J

    iget v0, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mDuration:I

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mStartTime:J

    invoke-direct {p0}, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->onEdgeReached()V

    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->update(J)Z

    return v1

    :cond_3
    return v2
.end method

.method public finish()V
    .locals 1

    iget v0, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mFinal:I

    iput v0, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mCurrentPosition:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mFinished:Z

    return-void
.end method

.method public fling(IIIIIJ)V
    .locals 7

    iput p5, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mOver:I

    const/4 p5, 0x0

    iput-boolean p5, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mFinished:Z

    iput p2, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mVelocity:I

    int-to-float v0, p2

    iput v0, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mCurrVelocity:F

    iput p5, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mSplineDuration:I

    iput p5, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mDuration:I

    iput-wide p6, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mStartTime:J

    iput p1, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mStart:I

    iput p1, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mCurrentPosition:I

    if-gt p1, p4, :cond_4

    if-ge p1, p3, :cond_0

    goto :goto_1

    :cond_0
    iput p5, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mState:I

    if-eqz p2, :cond_1

    invoke-direct {p0, p2}, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->getSplineFlingDuration(I)I

    move-result p5

    iput p5, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mSplineDuration:I

    iput p5, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mDuration:I

    invoke-direct {p0, p2}, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->getSplineFlingDistance(I)D

    move-result-wide p5

    goto :goto_0

    :cond_1
    const-wide/16 p5, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result p2

    float-to-double v0, p2

    mul-double/2addr p5, v0

    double-to-int p2, p5

    iput p2, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mSplineDistance:I

    add-int/2addr p1, p2

    iput p1, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mFinal:I

    if-ge p1, p3, :cond_2

    iget p2, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mStart:I

    invoke-direct {p0, p2, p1, p3}, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->adjustDuration(III)V

    iput p3, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mFinal:I

    :cond_2
    iget p1, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mFinal:I

    if-le p1, p4, :cond_3

    iget p2, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mStart:I

    invoke-direct {p0, p2, p1, p4}, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->adjustDuration(III)V

    iput p4, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mFinal:I

    :cond_3
    return-void

    :cond_4
    :goto_1
    move-object v0, p0

    move v1, p1

    move v2, p3

    move v3, p4

    move v4, p2

    move-wide v5, p6

    invoke-direct/range {v0 .. v6}, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->startAfterEdge(IIIIJ)V

    return-void
.end method

.method public setFinalPosition(I)V
    .locals 0

    iput p1, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mFinal:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mFinished:Z

    return-void
.end method

.method public springback(IIIJ)Z
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mFinished:Z

    iput p1, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mFinal:I

    iput p1, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mStart:I

    const/4 v1, 0x0

    iput v1, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mVelocity:I

    iput-wide p4, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mStartTime:J

    iput v1, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mDuration:I

    if-ge p1, p2, :cond_0

    invoke-direct {p0, p1, p2, v1}, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->startSpringback(III)V

    goto :goto_0

    :cond_0
    if-le p1, p3, :cond_1

    invoke-direct {p0, p1, p3, v1}, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->startSpringback(III)V

    :cond_1
    :goto_0
    iget-boolean p1, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mFinished:Z

    xor-int/2addr p1, v0

    return p1
.end method

.method public startScroll(IIJI)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mFinished:Z

    iput p1, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mStart:I

    add-int/2addr p1, p2

    iput p1, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mFinal:I

    iput-wide p3, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mStartTime:J

    iput p5, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mDuration:I

    const/4 p1, 0x0

    iput p1, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mDeceleration:F

    iput v0, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mVelocity:I

    return-void
.end method

.method public update(J)Z
    .locals 7

    iget-wide v0, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mStartTime:J

    sub-long/2addr p1, v0

    iget v0, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mState:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget v2, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mSplineDuration:I

    if-lez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    iget v3, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mDuration:I

    if-gtz v3, :cond_2

    :cond_1
    return v1

    :cond_2
    iget v3, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mDuration:I

    int-to-long v4, v3

    cmp-long v4, p1, v4

    if-lez v4, :cond_3

    return v1

    :cond_3
    const/high16 v1, 0x447a0000    # 1000.0f

    if-eqz v0, :cond_6

    const/high16 v4, 0x40000000    # 2.0f

    if-eq v0, v2, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const-wide/16 p1, 0x0

    goto :goto_1

    :cond_4
    long-to-float p1, p1

    div-float/2addr p1, v1

    iget p2, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mVelocity:I

    int-to-float v0, p2

    iget v1, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mDeceleration:F

    mul-float v3, v1, p1

    add-float/2addr v3, v0

    iput v3, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mCurrVelocity:F

    int-to-float p2, p2

    mul-float/2addr p2, p1

    mul-float/2addr v1, p1

    mul-float/2addr v1, p1

    div-float/2addr v1, v4

    add-float/2addr v1, p2

    float-to-double p1, v1

    goto :goto_1

    :cond_5
    long-to-float p1, p1

    int-to-float p2, v3

    div-float/2addr p1, p2

    mul-float p2, p1, p1

    iget v0, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mVelocity:I

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget v1, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mOver:I

    int-to-float v3, v1

    mul-float/2addr v3, v0

    const/high16 v5, 0x40400000    # 3.0f

    mul-float/2addr v5, p2

    mul-float/2addr v4, p1

    mul-float/2addr v4, p2

    sub-float/2addr v5, v4

    mul-float/2addr v5, v3

    float-to-double v3, v5

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x40c00000    # 6.0f

    mul-float/2addr v0, v1

    neg-float p1, p1

    add-float/2addr p1, p2

    mul-float/2addr p1, v0

    iput p1, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mCurrVelocity:F

    move-wide p1, v3

    goto :goto_1

    :cond_6
    long-to-float p1, p1

    iget p2, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mSplineDuration:I

    int-to-float v0, p2

    div-float/2addr p1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float v3, p1, v0

    float-to-int v3, v3

    const/16 v4, 0x64

    if-ge v3, v4, :cond_7

    int-to-float v4, v3

    div-float/2addr v4, v0

    add-int/lit8 v5, v3, 0x1

    int-to-float v6, v5

    div-float/2addr v6, v0

    sget-object v0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->SPLINE_POSITION:[F

    aget v3, v0, v3

    aget v0, v0, v5

    sub-float/2addr v0, v3

    sub-float/2addr v6, v4

    div-float/2addr v0, v6

    sub-float/2addr p1, v4

    mul-float/2addr p1, v0

    add-float/2addr p1, v3

    goto :goto_0

    :cond_7
    const/high16 p1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mSplineDistance:I

    int-to-float v4, v3

    mul-float/2addr p1, v4

    float-to-double v4, p1

    int-to-float p1, v3

    mul-float/2addr v0, p1

    int-to-float p1, p2

    div-float/2addr v0, p1

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mCurrVelocity:F

    move-wide p1, v4

    :goto_1
    iget v0, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mStart:I

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-int p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mCurrentPosition:I

    return v2
.end method

.method public updateScroll(F)V
    .locals 2

    iget v0, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mStart:I

    iget v1, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mFinal:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    mul-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lorg/mozilla/gecko/gfx/StackScroller$SplineStackScroller;->mCurrentPosition:I

    return-void
.end method
