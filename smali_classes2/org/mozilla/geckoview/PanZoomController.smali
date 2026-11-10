.class public Lorg/mozilla/geckoview/PanZoomController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/geckoview/PanZoomController$SynthesizedEventState;,
        Lorg/mozilla/geckoview/PanZoomController$PointerInfo;,
        Lorg/mozilla/geckoview/PanZoomController$NativeProvider;
    }
.end annotation


# static fields
.field private static final EVENT_SOURCE_MOTION:I = 0x1

.field private static final EVENT_SOURCE_MOUSE:I = 0x2

.field private static final EVENT_SOURCE_SCROLL:I = 0x0

.field public static final INPUT_RESULT_HANDLED:I = 0x1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field public static final INPUT_RESULT_HANDLED_CONTENT:I = 0x2
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field public static final INPUT_RESULT_UNHANDLED:I = 0x0
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field private static final LOGTAG:Ljava/lang/String; = "GeckoNPZC"

.field private static final PREF_MOUSE_AS_TOUCH:Ljava/lang/String; = "ui.android.mouse_as_touch"

.field public static final SCROLL_BEHAVIOR_AUTO:I = 0x1

.field public static final SCROLL_BEHAVIOR_SMOOTH:I = 0x0

.field private static sTreatMouseAsTouch:Z = true


# instance fields
.field private mAttached:Z

.field private mLastDownTime:J

.field final mNative:Lorg/mozilla/geckoview/PanZoomController$NativeProvider;

.field private mPointerScrollFactor:F

.field private mPointerState:Lorg/mozilla/geckoview/PanZoomController$SynthesizedEventState;

.field private mQueuedEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/view/MotionEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSession:Lorg/mozilla/geckoview/GeckoSession;

.field private mSynthesizedEvent:Z

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/GeckoSession;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/mozilla/geckoview/PanZoomController;->mTempRect:Landroid/graphics/Rect;

    const/high16 v0, 0x42800000    # 64.0f

    iput v0, p0, Lorg/mozilla/geckoview/PanZoomController;->mPointerScrollFactor:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/geckoview/PanZoomController;->mSynthesizedEvent:Z

    new-instance v0, Lorg/mozilla/geckoview/PanZoomController$NativeProvider;

    invoke-direct {v0, p0}, Lorg/mozilla/geckoview/PanZoomController$NativeProvider;-><init>(Lorg/mozilla/geckoview/PanZoomController;)V

    iput-object v0, p0, Lorg/mozilla/geckoview/PanZoomController;->mNative:Lorg/mozilla/geckoview/PanZoomController$NativeProvider;

    iput-object p1, p0, Lorg/mozilla/geckoview/PanZoomController;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    invoke-direct {p0}, Lorg/mozilla/geckoview/PanZoomController;->enableEventQueue()V

    invoke-static {}, Lorg/mozilla/geckoview/PanZoomController;->initMouseAsTouch()V

    return-void
.end method

.method public static synthetic access$000(Lorg/mozilla/geckoview/PanZoomController;IIIIIDI)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lorg/mozilla/geckoview/PanZoomController;->synthesizeNativePointer(IIIIIDI)V

    return-void
.end method

.method public static synthetic access$100(Lorg/mozilla/geckoview/PanZoomController;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/mozilla/geckoview/PanZoomController;->mAttached:Z

    return p0
.end method

.method public static synthetic access$102(Lorg/mozilla/geckoview/PanZoomController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/mozilla/geckoview/PanZoomController;->mAttached:Z

    return p1
.end method

.method public static synthetic access$200(Lorg/mozilla/geckoview/PanZoomController;)V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/geckoview/PanZoomController;->flushEventQueue()V

    return-void
.end method

.method public static synthetic access$300(Lorg/mozilla/geckoview/PanZoomController;)V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/geckoview/PanZoomController;->enableEventQueue()V

    return-void
.end method

.method public static synthetic access$702(Z)Z
    .locals 0

    sput-boolean p0, Lorg/mozilla/geckoview/PanZoomController;->sTreatMouseAsTouch:Z

    return p0
.end method

.method private buildScrollMessage(Lorg/mozilla/geckoview/ScreenLength;Lorg/mozilla/geckoview/ScreenLength;I)Lorg/mozilla/gecko/util/GeckoBundle;
    .locals 4

    new-instance v0, Lorg/mozilla/gecko/util/GeckoBundle;

    invoke-direct {v0}, Lorg/mozilla/gecko/util/GeckoBundle;-><init>()V

    invoke-virtual {p1}, Lorg/mozilla/geckoview/ScreenLength;->getValue()D

    move-result-wide v1

    const-string v3, "widthValue"

    invoke-virtual {v0, v3, v1, v2}, Lorg/mozilla/gecko/util/GeckoBundle;->putDouble(Ljava/lang/String;D)V

    const-string v1, "widthType"

    invoke-virtual {p1}, Lorg/mozilla/geckoview/ScreenLength;->getType()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p2}, Lorg/mozilla/geckoview/ScreenLength;->getValue()D

    move-result-wide v1

    const-string p1, "heightValue"

    invoke-virtual {v0, p1, v1, v2}, Lorg/mozilla/gecko/util/GeckoBundle;->putDouble(Ljava/lang/String;D)V

    const-string p1, "heightType"

    invoke-virtual {p2}, Lorg/mozilla/geckoview/ScreenLength;->getType()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/gecko/util/GeckoBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "behavior"

    invoke-virtual {v0, p1, p3}, Lorg/mozilla/gecko/util/GeckoBundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method private enableEventQueue()V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/geckoview/PanZoomController;->mQueuedEvents:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mozilla/geckoview/PanZoomController;->mQueuedEvents:Ljava/util/ArrayList;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already have an event queue"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private flushEventQueue()V
    .locals 4

    iget-object v0, p0, Lorg/mozilla/geckoview/PanZoomController;->mQueuedEvents:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mozilla/geckoview/PanZoomController;->mQueuedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/view/MotionEvent;

    invoke-direct {p0, v1}, Lorg/mozilla/geckoview/PanZoomController;->handleMouseEvent(Landroid/view/MotionEvent;)I

    goto :goto_0

    :cond_2
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/view/MotionEvent;

    invoke-direct {p0, v1}, Lorg/mozilla/geckoview/PanZoomController;->handleMotionEvent(Landroid/view/MotionEvent;)I

    goto :goto_0

    :cond_3
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/view/MotionEvent;

    invoke-direct {p0, v1}, Lorg/mozilla/geckoview/PanZoomController;->handleScrollEvent(Landroid/view/MotionEvent;)I

    goto :goto_0

    :cond_4
    return-void
.end method

.method private handleMotionEvent(Landroid/view/MotionEvent;)I
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lorg/mozilla/geckoview/PanZoomController;->mAttached:Z

    if-nez v2, :cond_0

    iget-object v2, v0, Lorg/mozilla/geckoview/PanZoomController;->mQueuedEvents:Ljava/util/ArrayList;

    new-instance v3, Landroid/util/Pair;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v5, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v4

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x0

    if-nez v7, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    iput-wide v4, v0, Lorg/mozilla/geckoview/PanZoomController;->mLastDownTime:J

    goto :goto_0

    :cond_1
    iget-wide v4, v0, Lorg/mozilla/geckoview/PanZoomController;->mLastDownTime:J

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v8

    cmp-long v4, v4, v8

    if-eqz v4, :cond_2

    return v3

    :cond_2
    :goto_0
    new-array v14, v2, [I

    new-array v15, v2, [F

    new-array v4, v2, [F

    new-array v5, v2, [F

    new-array v13, v2, [F

    new-array v12, v2, [F

    new-array v11, v2, [F

    new-instance v6, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v6}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    :goto_1
    if-ge v3, v2, :cond_3

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    aput v8, v14, v3

    invoke-virtual {v1, v3, v6}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    iget v8, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    aput v8, v15, v3

    iget v8, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    aput v8, v4, v3

    iget v8, v6, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    aput v8, v5, v3

    iget v8, v6, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    aput v8, v13, v3

    iget v8, v6, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    aput v8, v12, v3

    iget v8, v6, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    aput v8, v11, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float/2addr v3, v6

    iget-boolean v6, v0, Lorg/mozilla/geckoview/PanZoomController;->mSynthesizedEvent:Z

    if-nez v6, :cond_4

    iget-object v6, v0, Lorg/mozilla/geckoview/PanZoomController;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    float-to-int v8, v2

    float-to-int v9, v3

    invoke-virtual {v6, v8, v9}, Lorg/mozilla/geckoview/GeckoSession;->onScreenOriginChanged(II)V

    :cond_4
    iget-object v6, v0, Lorg/mozilla/geckoview/PanZoomController;->mNative:Lorg/mozilla/geckoview/PanZoomController$NativeProvider;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v1

    move-object/from16 v20, v11

    move v11, v1

    move-object v1, v12

    move v12, v2

    move-object v2, v13

    move v13, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v2

    move-object/from16 v19, v1

    invoke-static/range {v6 .. v20}, Lorg/mozilla/geckoview/PanZoomController$NativeProvider;->access$400(Lorg/mozilla/geckoview/PanZoomController$NativeProvider;IIJIFF[I[F[F[F[F[F[F)I

    move-result v1

    return v1
.end method

.method private handleMouseEvent(Landroid/view/MotionEvent;)I
    .locals 12

    iget-boolean v0, p0, Lorg/mozilla/geckoview/PanZoomController;->mAttached:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/geckoview/PanZoomController;->mQueuedEvents:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/Pair;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-gtz v0, :cond_1

    return v1

    :cond_1
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    invoke-virtual {p1, v1, v0}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    iget-object v1, p0, Lorg/mozilla/geckoview/PanZoomController;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    iget-object v2, p0, Lorg/mozilla/geckoview/PanZoomController;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lorg/mozilla/geckoview/GeckoSession;->getSurfaceBounds(Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget-object v2, p0, Lorg/mozilla/geckoview/PanZoomController;->mTempRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float v9, v1, v3

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    iget v1, v2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float v10, v0, v1

    iget-object v4, p0, Lorg/mozilla/geckoview/PanZoomController;->mNative:Lorg/mozilla/geckoview/PanZoomController$NativeProvider;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v11

    invoke-static/range {v4 .. v11}, Lorg/mozilla/geckoview/PanZoomController$NativeProvider;->access$600(Lorg/mozilla/geckoview/PanZoomController$NativeProvider;IJIFFI)I

    move-result p1

    return p1
.end method

.method private handleScrollEvent(Landroid/view/MotionEvent;)I
    .locals 12

    iget-boolean v0, p0, Lorg/mozilla/geckoview/PanZoomController;->mAttached:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/geckoview/PanZoomController;->mQueuedEvents:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-gtz v0, :cond_1

    return v1

    :cond_1
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    invoke-virtual {p1, v1, v0}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    iget-object v1, p0, Lorg/mozilla/geckoview/PanZoomController;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    iget-object v2, p0, Lorg/mozilla/geckoview/PanZoomController;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lorg/mozilla/geckoview/GeckoSession;->getSurfaceBounds(Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget-object v2, p0, Lorg/mozilla/geckoview/PanZoomController;->mTempRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float v8, v1, v3

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    iget v1, v2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float v9, v0, v1

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    iget v1, p0, Lorg/mozilla/geckoview/PanZoomController;->mPointerScrollFactor:F

    mul-float v10, v0, v1

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    iget v1, p0, Lorg/mozilla/geckoview/PanZoomController;->mPointerScrollFactor:F

    mul-float v11, v0, v1

    iget-object v4, p0, Lorg/mozilla/geckoview/PanZoomController;->mNative:Lorg/mozilla/geckoview/PanZoomController$NativeProvider;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    invoke-static/range {v4 .. v11}, Lorg/mozilla/geckoview/PanZoomController$NativeProvider;->access$500(Lorg/mozilla/geckoview/PanZoomController$NativeProvider;JIFFFF)I

    move-result p1

    return p1
.end method

.method private static initMouseAsTouch()V
    .locals 3

    new-instance v0, Lorg/mozilla/geckoview/PanZoomController$1;

    invoke-direct {v0}, Lorg/mozilla/geckoview/PanZoomController$1;-><init>()V

    const-string v1, "ui.android.mouse_as_touch"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/mozilla/gecko/PrefsHelper;->addObserver([Ljava/lang/String;Lorg/mozilla/gecko/PrefsHelper$PrefHandler;)V

    invoke-static {v1, v0}, Lorg/mozilla/gecko/PrefsHelper;->getPref(Ljava/lang/String;Lorg/mozilla/gecko/PrefsHelper$PrefHandler;)V

    return-void
.end method

.method private synthesizeNativePointer(IIIIIDI)V
    .locals 27

    move-object/from16 v0, p0

    move/from16 v15, p1

    move/from16 v1, p2

    move/from16 v2, p3

    iget-object v3, v0, Lorg/mozilla/geckoview/PanZoomController;->mPointerState:Lorg/mozilla/geckoview/PanZoomController$SynthesizedEventState;

    if-nez v3, :cond_0

    new-instance v3, Lorg/mozilla/geckoview/PanZoomController$SynthesizedEventState;

    invoke-direct {v3}, Lorg/mozilla/geckoview/PanZoomController$SynthesizedEventState;-><init>()V

    iput-object v3, v0, Lorg/mozilla/geckoview/PanZoomController;->mPointerState:Lorg/mozilla/geckoview/PanZoomController$SynthesizedEventState;

    :cond_0
    iget-object v3, v0, Lorg/mozilla/geckoview/PanZoomController;->mPointerState:Lorg/mozilla/geckoview/PanZoomController$SynthesizedEventState;

    invoke-virtual {v3, v1}, Lorg/mozilla/geckoview/PanZoomController$SynthesizedEventState;->getPointerIndex(I)I

    move-result v3

    const/4 v14, 0x7

    const/4 v4, 0x5

    const/4 v13, 0x3

    const/4 v5, 0x2

    const/4 v12, 0x6

    const/4 v11, 0x0

    const/4 v10, 0x1

    if-eq v2, v13, :cond_6

    if-eq v2, v4, :cond_4

    if-eq v2, v12, :cond_2

    if-eq v2, v14, :cond_1

    goto :goto_0

    :cond_1
    if-gez v3, :cond_5

    iget-object v3, v0, Lorg/mozilla/geckoview/PanZoomController;->mPointerState:Lorg/mozilla/geckoview/PanZoomController$SynthesizedEventState;

    invoke-virtual {v3, v1, v15}, Lorg/mozilla/geckoview/PanZoomController$SynthesizedEventState;->addPointer(II)I

    move-result v3

    goto :goto_0

    :cond_2
    if-gez v3, :cond_3

    return-void

    :cond_3
    iget-object v1, v0, Lorg/mozilla/geckoview/PanZoomController;->mPointerState:Lorg/mozilla/geckoview/PanZoomController$SynthesizedEventState;

    iget-object v1, v1, Lorg/mozilla/geckoview/PanZoomController$SynthesizedEventState;->pointers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v10, :cond_7

    move v8, v3

    move v9, v10

    goto :goto_1

    :cond_4
    if-gez v3, :cond_5

    iget-object v3, v0, Lorg/mozilla/geckoview/PanZoomController;->mPointerState:Lorg/mozilla/geckoview/PanZoomController$SynthesizedEventState;

    invoke-virtual {v3, v1, v15}, Lorg/mozilla/geckoview/PanZoomController$SynthesizedEventState;->addPointer(II)I

    move-result v3

    if-nez v3, :cond_7

    iget-object v1, v0, Lorg/mozilla/geckoview/PanZoomController;->mPointerState:Lorg/mozilla/geckoview/PanZoomController$SynthesizedEventState;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, v1, Lorg/mozilla/geckoview/PanZoomController$SynthesizedEventState;->downTime:J

    move v8, v3

    move v9, v11

    goto :goto_1

    :cond_5
    move v8, v3

    move v9, v5

    goto :goto_1

    :cond_6
    if-gez v3, :cond_7

    return-void

    :cond_7
    :goto_0
    move v9, v2

    move v8, v3

    :goto_1
    iget-object v1, v0, Lorg/mozilla/geckoview/PanZoomController;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    iget-object v2, v0, Lorg/mozilla/geckoview/PanZoomController;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lorg/mozilla/geckoview/GeckoSession;->getSurfaceBounds(Landroid/graphics/Rect;)V

    iget-object v1, v0, Lorg/mozilla/geckoview/PanZoomController;->mTempRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int v2, p4, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int v1, p5, v1

    iget-object v3, v0, Lorg/mozilla/geckoview/PanZoomController;->mPointerState:Lorg/mozilla/geckoview/PanZoomController$SynthesizedEventState;

    iget-object v3, v3, Lorg/mozilla/geckoview/PanZoomController$SynthesizedEventState;->pointers:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mozilla/geckoview/PanZoomController$PointerInfo;

    iput v2, v3, Lorg/mozilla/geckoview/PanZoomController$PointerInfo;->surfaceX:I

    iput v1, v3, Lorg/mozilla/geckoview/PanZoomController$PointerInfo;->surfaceY:I

    move-wide/from16 v1, p6

    iput-wide v1, v3, Lorg/mozilla/geckoview/PanZoomController$PointerInfo;->pressure:D

    move/from16 v1, p8

    iput v1, v3, Lorg/mozilla/geckoview/PanZoomController$PointerInfo;->orientation:I

    if-eq v9, v4, :cond_9

    if-ne v9, v12, :cond_8

    goto :goto_2

    :cond_8
    move v1, v11

    goto :goto_3

    :cond_9
    :goto_2
    shl-int/lit8 v1, v8, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    :goto_3
    and-int/lit16 v2, v9, 0xff

    or-int v6, v1, v2

    const/16 v1, 0x2002

    if-ne v15, v1, :cond_b

    if-eqz v9, :cond_a

    if-ne v9, v5, :cond_b

    :cond_a
    move/from16 v16, v10

    goto :goto_4

    :cond_b
    move/from16 v16, v11

    :goto_4
    iget-object v1, v0, Lorg/mozilla/geckoview/PanZoomController;->mPointerState:Lorg/mozilla/geckoview/PanZoomController$SynthesizedEventState;

    iget-wide v1, v1, Lorg/mozilla/geckoview/PanZoomController$SynthesizedEventState;->downTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v5, v0, Lorg/mozilla/geckoview/PanZoomController;->mPointerState:Lorg/mozilla/geckoview/PanZoomController$SynthesizedEventState;

    invoke-virtual {v5, v15}, Lorg/mozilla/geckoview/PanZoomController$SynthesizedEventState;->getPointerCount(I)I

    move-result v7

    iget-object v5, v0, Lorg/mozilla/geckoview/PanZoomController;->mPointerState:Lorg/mozilla/geckoview/PanZoomController$SynthesizedEventState;

    invoke-virtual {v5, v15}, Lorg/mozilla/geckoview/PanZoomController$SynthesizedEventState;->getPointerProperties(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v17

    iget-object v5, v0, Lorg/mozilla/geckoview/PanZoomController;->mPointerState:Lorg/mozilla/geckoview/PanZoomController$SynthesizedEventState;

    invoke-virtual {v5, v15}, Lorg/mozilla/geckoview/PanZoomController$SynthesizedEventState;->getPointerCoords(I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move v5, v6

    move v6, v7

    move-object/from16 v7, v17

    move/from16 v25, v8

    move-object/from16 v8, v18

    move/from16 v26, v9

    move/from16 v9, v19

    move/from16 v10, v16

    move/from16 v11, v20

    move/from16 v12, v21

    move/from16 v13, v22

    move/from16 v14, v23

    move/from16 v15, p1

    move/from16 v16, v24

    invoke-static/range {v1 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v0, Lorg/mozilla/geckoview/PanZoomController;->mSynthesizedEvent:Z

    invoke-virtual {v0, v1}, Lorg/mozilla/geckoview/PanZoomController;->onTouchEvent(Landroid/view/MotionEvent;)I

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/mozilla/geckoview/PanZoomController;->mSynthesizedEvent:Z

    move/from16 v5, v26

    const/4 v1, 0x6

    if-eq v5, v1, :cond_c

    if-eq v5, v2, :cond_c

    const/4 v1, 0x3

    if-eq v5, v1, :cond_c

    const/4 v1, 0x7

    if-ne v5, v1, :cond_d

    :cond_c
    iget-object v1, v0, Lorg/mozilla/geckoview/PanZoomController;->mPointerState:Lorg/mozilla/geckoview/PanZoomController$SynthesizedEventState;

    iget-object v1, v1, Lorg/mozilla/geckoview/PanZoomController$SynthesizedEventState;->pointers:Ljava/util/ArrayList;

    move/from16 v3, v25

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_d
    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/geckoview/PanZoomController;->mNative:Lorg/mozilla/geckoview/PanZoomController$NativeProvider;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/mozilla/geckoview/PanZoomController$NativeProvider;->access$800(Lorg/mozilla/geckoview/PanZoomController$NativeProvider;Z)V

    return-void
.end method

.method public getScrollFactor()F
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget v0, p0, Lorg/mozilla/geckoview/PanZoomController;->mPointerScrollFactor:F

    return v0
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)I
    .locals 5

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    iget-wide v3, p0, Lorg/mozilla/geckoview/PanZoomController;->mLastDownTime:J

    cmp-long v0, v0, v3

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/mozilla/geckoview/PanZoomController;->mLastDownTime:J

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v0

    invoke-static {v0}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v0

    invoke-static {v0}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InputDevice;->getSources()I

    move-result v0

    const v1, 0x100008

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    return v2

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/PanZoomController;->handleScrollEvent(Landroid/view/MotionEvent;)I

    move-result p1

    return p1

    :cond_2
    const/4 v1, 0x7

    if-eq v0, v1, :cond_4

    const/16 v1, 0x9

    if-eq v0, v1, :cond_4

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_3
    return v2

    :cond_4
    :goto_1
    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/PanZoomController;->handleMouseEvent(Landroid/view/MotionEvent;)I

    move-result p1

    return p1
.end method

.method public onMouseEvent(Landroid/view/MotionEvent;)I
    .locals 2

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/PanZoomController;->handleMouseEvent(Landroid/view/MotionEvent;)I

    move-result p1

    return p1

    :cond_0
    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/PanZoomController;->handleMotionEvent(Landroid/view/MotionEvent;)I

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)I
    .locals 2

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    sget-boolean v0, Lorg/mozilla/geckoview/PanZoomController;->sTreatMouseAsTouch:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/PanZoomController;->handleMouseEvent(Landroid/view/MotionEvent;)I

    move-result p1

    return p1

    :cond_0
    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/PanZoomController;->handleMotionEvent(Landroid/view/MotionEvent;)I

    move-result p1

    return p1
.end method

.method public scrollBy(Lorg/mozilla/geckoview/ScreenLength;Lorg/mozilla/geckoview/ScreenLength;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/mozilla/geckoview/PanZoomController;->scrollBy(Lorg/mozilla/geckoview/ScreenLength;Lorg/mozilla/geckoview/ScreenLength;I)V

    return-void
.end method

.method public scrollBy(Lorg/mozilla/geckoview/ScreenLength;Lorg/mozilla/geckoview/ScreenLength;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lorg/mozilla/geckoview/PanZoomController;->buildScrollMessage(Lorg/mozilla/geckoview/ScreenLength;Lorg/mozilla/geckoview/ScreenLength;I)Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object p1

    iget-object p2, p0, Lorg/mozilla/geckoview/PanZoomController;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {p2}, Lorg/mozilla/geckoview/GeckoSession;->getEventDispatcher()Lorg/mozilla/gecko/EventDispatcher;

    move-result-object p2

    const-string p3, "GeckoView:ScrollBy"

    invoke-virtual {p2, p3, p1}, Lorg/mozilla/gecko/EventDispatcher;->dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;)V

    return-void
.end method

.method public scrollTo(Lorg/mozilla/geckoview/ScreenLength;Lorg/mozilla/geckoview/ScreenLength;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/mozilla/geckoview/PanZoomController;->scrollTo(Lorg/mozilla/geckoview/ScreenLength;Lorg/mozilla/geckoview/ScreenLength;I)V

    return-void
.end method

.method public scrollTo(Lorg/mozilla/geckoview/ScreenLength;Lorg/mozilla/geckoview/ScreenLength;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lorg/mozilla/geckoview/PanZoomController;->buildScrollMessage(Lorg/mozilla/geckoview/ScreenLength;Lorg/mozilla/geckoview/ScreenLength;I)Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object p1

    iget-object p2, p0, Lorg/mozilla/geckoview/PanZoomController;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {p2}, Lorg/mozilla/geckoview/GeckoSession;->getEventDispatcher()Lorg/mozilla/gecko/EventDispatcher;

    move-result-object p2

    const-string p3, "GeckoView:ScrollTo"

    invoke-virtual {p2, p3, p1}, Lorg/mozilla/gecko/EventDispatcher;->dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;)V

    return-void
.end method

.method public scrollToBottom()V
    .locals 3

    invoke-static {}, Lorg/mozilla/geckoview/ScreenLength;->zero()Lorg/mozilla/geckoview/ScreenLength;

    move-result-object v0

    invoke-static {}, Lorg/mozilla/geckoview/ScreenLength;->bottom()Lorg/mozilla/geckoview/ScreenLength;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/mozilla/geckoview/PanZoomController;->scrollTo(Lorg/mozilla/geckoview/ScreenLength;Lorg/mozilla/geckoview/ScreenLength;I)V

    return-void
.end method

.method public scrollToTop()V
    .locals 3

    invoke-static {}, Lorg/mozilla/geckoview/ScreenLength;->zero()Lorg/mozilla/geckoview/ScreenLength;

    move-result-object v0

    invoke-static {}, Lorg/mozilla/geckoview/ScreenLength;->top()Lorg/mozilla/geckoview/ScreenLength;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/mozilla/geckoview/PanZoomController;->scrollTo(Lorg/mozilla/geckoview/ScreenLength;Lorg/mozilla/geckoview/ScreenLength;I)V

    return-void
.end method

.method public setIsLongpressEnabled(Z)V
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget-boolean v0, p0, Lorg/mozilla/geckoview/PanZoomController;->mAttached:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/geckoview/PanZoomController;->mNative:Lorg/mozilla/geckoview/PanZoomController$NativeProvider;

    invoke-static {v0, p1}, Lorg/mozilla/geckoview/PanZoomController$NativeProvider;->access$900(Lorg/mozilla/geckoview/PanZoomController$NativeProvider;Z)V

    :cond_0
    return-void
.end method

.method public setScrollFactor(F)V
    .locals 0

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iput p1, p0, Lorg/mozilla/geckoview/PanZoomController;->mPointerScrollFactor:F

    return-void
.end method
