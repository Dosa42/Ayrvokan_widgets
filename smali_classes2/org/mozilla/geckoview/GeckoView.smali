.class public Lorg/mozilla/geckoview/GeckoView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/geckoview/GeckoView$AndroidAutofillDelegate;,
        Lorg/mozilla/geckoview/GeckoView$Display;,
        Lorg/mozilla/geckoview/GeckoView$SavedState;
    }
.end annotation


# static fields
.field public static final BACKEND_SURFACE_VIEW:I = 0x1

.field public static final BACKEND_TEXTURE_VIEW:I = 0x2

.field private static final DEBUG:Z = false

.field private static final LOGTAG:Ljava/lang/String; = "GeckoView"


# instance fields
.field private mAutofillDelegate:Lorg/mozilla/geckoview/Autofill$Delegate;

.field private mAutofillEnabled:Z

.field protected final mDisplay:Lorg/mozilla/geckoview/GeckoView$Display;

.field private mIsResettingFocus:Z

.field private mSelectionActionDelegate:Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate;

.field protected mSession:Lorg/mozilla/geckoview/GeckoSession;

.field private mStateSaved:Z

.field private mSurfaceWrapper:Lorg/mozilla/gecko/SurfaceViewWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Lorg/mozilla/geckoview/GeckoView$Display;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lorg/mozilla/geckoview/GeckoView$Display;-><init>(Lorg/mozilla/geckoview/GeckoView;Lorg/mozilla/geckoview/GeckoView$1;)V

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoView;->mDisplay:Lorg/mozilla/geckoview/GeckoView$Display;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/mozilla/geckoview/GeckoView;->mAutofillEnabled:Z

    invoke-direct {p0}, Lorg/mozilla/geckoview/GeckoView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lorg/mozilla/geckoview/GeckoView$Display;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lorg/mozilla/geckoview/GeckoView$Display;-><init>(Lorg/mozilla/geckoview/GeckoView;Lorg/mozilla/geckoview/GeckoView$1;)V

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoView;->mDisplay:Lorg/mozilla/geckoview/GeckoView$Display;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/mozilla/geckoview/GeckoView;->mAutofillEnabled:Z

    invoke-direct {p0}, Lorg/mozilla/geckoview/GeckoView;->init()V

    return-void
.end method

.method public static synthetic access$100(Lorg/mozilla/geckoview/GeckoView;)Lorg/mozilla/gecko/SurfaceViewWrapper;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/geckoview/GeckoView;->mSurfaceWrapper:Lorg/mozilla/gecko/SurfaceViewWrapper;

    return-object p0
.end method

.method public static synthetic access$302(Lorg/mozilla/geckoview/GeckoView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/mozilla/geckoview/GeckoView;->mIsResettingFocus:Z

    return p1
.end method

.method private init()V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    const/high16 v0, 0x60000

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    new-instance v0, Lorg/mozilla/gecko/SurfaceViewWrapper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mozilla/gecko/SurfaceViewWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoView;->mSurfaceWrapper:Lorg/mozilla/gecko/SurfaceViewWrapper;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/mozilla/gecko/SurfaceViewWrapper;->setBackgroundColor(I)V

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoView;->mSurfaceWrapper:Lorg/mozilla/gecko/SurfaceViewWrapper;

    invoke-virtual {v0}, Lorg/mozilla/gecko/SurfaceViewWrapper;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoView;->mSurfaceWrapper:Lorg/mozilla/gecko/SurfaceViewWrapper;

    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoView;->mDisplay:Lorg/mozilla/geckoview/GeckoView$Display;

    invoke-virtual {v0, v1}, Lorg/mozilla/gecko/SurfaceViewWrapper;->setListener(Lorg/mozilla/gecko/SurfaceViewWrapper$Listener;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/gecko/util/ActivityUtils;->getActivityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;

    invoke-direct {v1, v0}, Lorg/mozilla/geckoview/BasicSelectionActionDelegate;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lorg/mozilla/geckoview/GeckoView;->mSelectionActionDelegate:Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate;

    :cond_0
    new-instance v0, Lorg/mozilla/geckoview/GeckoView$AndroidAutofillDelegate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/mozilla/geckoview/GeckoView$AndroidAutofillDelegate;-><init>(Lorg/mozilla/geckoview/GeckoView;Lorg/mozilla/geckoview/GeckoView$1;)V

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoView;->mAutofillDelegate:Lorg/mozilla/geckoview/Autofill$Delegate;

    return-void
.end method

.method private restoreSession(Lorg/mozilla/geckoview/GeckoSession;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoView;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {p1, v0}, Lorg/mozilla/geckoview/GeckoSession;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/mozilla/geckoview/GeckoView;->setSession(Lorg/mozilla/geckoview/GeckoSession;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public autofill(Landroid/util/SparseArray;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/autofill/AutofillValue;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->autofill(Landroid/util/SparseArray;)V

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoView;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/autofill/AutofillValue;

    invoke-virtual {v2}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoView;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {p1, v0}, Lorg/mozilla/geckoview/GeckoSession;->autofill(Landroid/util/SparseArray;)V

    return-void
.end method

.method public capturePixels()Lorg/mozilla/geckoview/GeckoResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoView;->mDisplay:Lorg/mozilla/geckoview/GeckoView$Display;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoView$Display;->capturePixels()Lorg/mozilla/geckoview/GeckoResult;

    move-result-object v0

    return-object v0
.end method

.method public coverUntilFirstPaint(I)V
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoView;->mSurfaceWrapper:Lorg/mozilla/gecko/SurfaceViewWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/mozilla/gecko/SurfaceViewWrapper;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoView;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->getOverscrollEdgeEffect()Lorg/mozilla/geckoview/OverscrollEdgeEffect;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/OverscrollEdgeEffect;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoView;->mSurfaceWrapper:Lorg/mozilla/gecko/SurfaceViewWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoView;->mDisplay:Lorg/mozilla/geckoview/GeckoView$Display;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoView$Display;->onGlobalLayout()V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result p1

    return p1
.end method

.method public getAutofillEnabled()Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    iget-boolean v0, p0, Lorg/mozilla/geckoview/GeckoView;->mAutofillEnabled:Z

    return v0
.end method

.method public getEventDispatcher()Lorg/mozilla/gecko/EventDispatcher;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoView;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->getEventDispatcher()Lorg/mozilla/gecko/EventDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    invoke-super {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public getPanZoomController()Lorg/mozilla/geckoview/PanZoomController;
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoView;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->getPanZoomController()Lorg/mozilla/geckoview/PanZoomController;

    move-result-object v0

    return-object v0
.end method

.method public getSession()Lorg/mozilla/geckoview/GeckoSession;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoView;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoView;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->getRuntime()Lorg/mozilla/geckoview/GeckoRuntime;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoRuntime;->orientationChanged()V

    :cond_0
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoView;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoView;->mDisplay:Lorg/mozilla/geckoview/GeckoView$Display;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->acquireDisplay()Lorg/mozilla/geckoview/GeckoDisplay;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/mozilla/geckoview/GeckoView$Display;->acquire(Lorg/mozilla/geckoview/GeckoDisplay;)V

    :cond_1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoView;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->getRuntime()Lorg/mozilla/geckoview/GeckoRuntime;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lorg/mozilla/geckoview/GeckoRuntime;->orientationChanged(I)V

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/GeckoRuntime;->configurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoView;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->getTextInput()Lorg/mozilla/geckoview/SessionTextInput;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/SessionTextInput;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    return-object p1
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoView;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoView;->mDisplay:Lorg/mozilla/geckoview/GeckoView$Display;

    invoke-virtual {v1}, Lorg/mozilla/geckoview/GeckoView$Display;->release()Lorg/mozilla/geckoview/GeckoDisplay;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/geckoview/GeckoSession;->releaseDisplay(Lorg/mozilla/geckoview/GeckoDisplay;)V

    return-void
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    iget-boolean p2, p0, Lorg/mozilla/geckoview/GeckoView;->mIsResettingFocus:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lorg/mozilla/geckoview/GeckoView;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Lorg/mozilla/geckoview/GeckoSession;->setFocused(Z)V

    :cond_1
    if-nez p1, :cond_2

    return-void

    :cond_2
    new-instance p1, Lorg/mozilla/geckoview/GeckoView$3;

    invoke-direct {p1, p0}, Lorg/mozilla/geckoview/GeckoView$3;-><init>(Lorg/mozilla/geckoview/GeckoView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/mozilla/geckoview/GeckoView;->onGenericMotionEventForResult(Landroid/view/MotionEvent;)I

    const/4 p1, 0x1

    return p1
.end method

.method public onGenericMotionEventForResult(Landroid/view/MotionEvent;)I
    .locals 2

    invoke-static {p1}, Lorg/mozilla/gecko/AndroidGamepadManager;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoView;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->getAccessibility()Lorg/mozilla/geckoview/SessionAccessibility;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/SessionAccessibility;->onMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoView;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->getPanZoomController()Lorg/mozilla/geckoview/PanZoomController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/PanZoomController;->onMotionEvent(Landroid/view/MotionEvent;)I

    move-result p1

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoView;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->getTextInput()Lorg/mozilla/geckoview/SessionTextInput;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/geckoview/SessionTextInput;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoView;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->getTextInput()Lorg/mozilla/geckoview/SessionTextInput;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/geckoview/SessionTextInput;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoView;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->getTextInput()Lorg/mozilla/geckoview/SessionTextInput;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/mozilla/geckoview/SessionTextInput;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoView;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->getTextInput()Lorg/mozilla/geckoview/SessionTextInput;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/geckoview/SessionTextInput;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoView;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->getTextInput()Lorg/mozilla/geckoview/SessionTextInput;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/geckoview/SessionTextInput;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onProvideAutofillVirtualStructure(Landroid/view/ViewStructure;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onProvideAutofillVirtualStructure(Landroid/view/ViewStructure;I)V

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoView;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->getAutofillSession()Lorg/mozilla/geckoview/Autofill$Session;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lorg/mozilla/geckoview/Autofill$Session;->fillViewStructure(Landroid/view/View;Landroid/view/ViewStructure;I)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/geckoview/GeckoView;->mStateSaved:Z

    instance-of v0, p1, Lorg/mozilla/geckoview/GeckoView$SavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lorg/mozilla/geckoview/GeckoView$SavedState;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object p1, p1, Lorg/mozilla/geckoview/GeckoView$SavedState;->session:Lorg/mozilla/geckoview/GeckoSession;

    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/GeckoView;->restoreSession(Lorg/mozilla/geckoview/GeckoSession;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/geckoview/GeckoView;->mStateSaved:Z

    new-instance v0, Lorg/mozilla/geckoview/GeckoView$SavedState;

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    iget-object v2, p0, Lorg/mozilla/geckoview/GeckoView;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    invoke-direct {v0, v1, v2}, Lorg/mozilla/geckoview/GeckoView$SavedState;-><init>(Landroid/os/Parcelable;Lorg/mozilla/geckoview/GeckoSession;)V

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/mozilla/geckoview/GeckoView;->onTouchEventForResult(Landroid/view/MotionEvent;)I

    const/4 p1, 0x1

    return p1
.end method

.method public onTouchEventForResult(Landroid/view/MotionEvent;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoView;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->getPanZoomController()Lorg/mozilla/geckoview/PanZoomController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/PanZoomController;->onTouchEvent(Landroid/view/MotionEvent;)I

    move-result p1

    return p1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoView;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoView;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/mozilla/geckoview/GeckoSession;->setFocused(Z)V

    :cond_0
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoView;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->hasWindowFocus()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoView;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/mozilla/geckoview/GeckoSession;->setFocused(Z)V

    :cond_0
    return-void
.end method

.method public releaseSession()Lorg/mozilla/geckoview/GeckoSession;
    .locals 4

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoView;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lorg/mozilla/geckoview/GeckoView;->coverUntilFirstPaint(I)V

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoView;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    iget-object v2, p0, Lorg/mozilla/geckoview/GeckoView;->mDisplay:Lorg/mozilla/geckoview/GeckoView$Display;

    invoke-virtual {v2}, Lorg/mozilla/geckoview/GeckoView$Display;->release()Lorg/mozilla/geckoview/GeckoDisplay;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/mozilla/geckoview/GeckoSession;->releaseDisplay(Lorg/mozilla/geckoview/GeckoDisplay;)V

    iget-object v2, p0, Lorg/mozilla/geckoview/GeckoView;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {v2}, Lorg/mozilla/geckoview/GeckoSession;->getOverscrollEdgeEffect()Lorg/mozilla/geckoview/OverscrollEdgeEffect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/mozilla/geckoview/OverscrollEdgeEffect;->setInvalidationCallback(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lorg/mozilla/geckoview/GeckoView;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {v2}, Lorg/mozilla/geckoview/GeckoSession;->getCompositorController()Lorg/mozilla/geckoview/CompositorController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/mozilla/geckoview/CompositorController;->setFirstPaintCallback(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lorg/mozilla/geckoview/GeckoView;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {v2}, Lorg/mozilla/geckoview/GeckoSession;->getAccessibility()Lorg/mozilla/geckoview/SessionAccessibility;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mozilla/geckoview/SessionAccessibility;->getView()Landroid/view/View;

    move-result-object v2

    if-ne v2, p0, :cond_1

    iget-object v2, p0, Lorg/mozilla/geckoview/GeckoView;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {v2}, Lorg/mozilla/geckoview/GeckoSession;->getAccessibility()Lorg/mozilla/geckoview/SessionAccessibility;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/mozilla/geckoview/SessionAccessibility;->setView(Landroid/view/View;)V

    :cond_1
    iget-object v2, p0, Lorg/mozilla/geckoview/GeckoView;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {v2}, Lorg/mozilla/geckoview/GeckoSession;->getTextInput()Lorg/mozilla/geckoview/SessionTextInput;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mozilla/geckoview/SessionTextInput;->getView()Landroid/view/View;

    move-result-object v2

    if-ne v2, p0, :cond_2

    iget-object v2, p0, Lorg/mozilla/geckoview/GeckoView;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {v2}, Lorg/mozilla/geckoview/GeckoSession;->getTextInput()Lorg/mozilla/geckoview/SessionTextInput;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/mozilla/geckoview/SessionTextInput;->setView(Landroid/view/View;)V

    :cond_2
    iget-object v2, p0, Lorg/mozilla/geckoview/GeckoView;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {v2}, Lorg/mozilla/geckoview/GeckoSession;->getSelectionActionDelegate()Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate;

    move-result-object v2

    iget-object v3, p0, Lorg/mozilla/geckoview/GeckoView;->mSelectionActionDelegate:Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lorg/mozilla/geckoview/GeckoView;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {v2, v1}, Lorg/mozilla/geckoview/GeckoSession;->setSelectionActionDelegate(Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate;)V

    :cond_3
    iget-object v2, p0, Lorg/mozilla/geckoview/GeckoView;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {v2}, Lorg/mozilla/geckoview/GeckoSession;->getAutofillDelegate()Lorg/mozilla/geckoview/Autofill$Delegate;

    move-result-object v2

    iget-object v3, p0, Lorg/mozilla/geckoview/GeckoView;->mAutofillDelegate:Lorg/mozilla/geckoview/Autofill$Delegate;

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lorg/mozilla/geckoview/GeckoView;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {v2, v1}, Lorg/mozilla/geckoview/GeckoSession;->setAutofillDelegate(Lorg/mozilla/geckoview/Autofill$Delegate;)V

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/mozilla/geckoview/GeckoView;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/mozilla/geckoview/GeckoSession;->setFocused(Z)V

    :cond_5
    iput-object v1, p0, Lorg/mozilla/geckoview/GeckoView;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    return-object v0
.end method

.method public setActive(Z)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoView;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/GeckoSession;->setActive(Z)V

    :cond_0
    return-void
.end method

.method public setAutofillEnabled(Z)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    iput-boolean p1, p0, Lorg/mozilla/geckoview/GeckoView;->mAutofillEnabled:Z

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoView;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->getAutofillDelegate()Lorg/mozilla/geckoview/Autofill$Delegate;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoView;->mAutofillDelegate:Lorg/mozilla/geckoview/Autofill$Delegate;

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoView;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoView;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoView;->mAutofillDelegate:Lorg/mozilla/geckoview/Autofill$Delegate;

    :goto_0
    invoke-virtual {p1, v0}, Lorg/mozilla/geckoview/GeckoSession;->setAutofillDelegate(Lorg/mozilla/geckoview/Autofill$Delegate;)V

    :cond_1
    return-void
.end method

.method public setDynamicToolbarMaxHeight(I)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoView;->mDisplay:Lorg/mozilla/geckoview/GeckoView$Display;

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/GeckoView$Display;->setDynamicToolbarMaxHeight(I)V

    return-void
.end method

.method public setSession(Lorg/mozilla/geckoview/GeckoSession;)V
    .locals 5

    .line 1
    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoView;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->isOpen()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 16
    .line 17
    const-string v0, "Current session is open"

    .line 18
    .line 19
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p1

    .line 23
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/mozilla/geckoview/GeckoView;->releaseSession()Lorg/mozilla/geckoview/GeckoSession;

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoView;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    .line 27
    .line 28
    sget-object v0, Lp/k;->a:Ljava/lang/reflect/Field;

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoView;->mDisplay:Lorg/mozilla/geckoview/GeckoView$Display;

    .line 37
    .line 38
    invoke-virtual {p1}, Lorg/mozilla/geckoview/GeckoSession;->acquireDisplay()Lorg/mozilla/geckoview/GeckoDisplay;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Lorg/mozilla/geckoview/GeckoView$Display;->acquire(Lorg/mozilla/geckoview/GeckoDisplay;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p1}, Lorg/mozilla/geckoview/GeckoSession;->getOverscrollEdgeEffect()Lorg/mozilla/geckoview/OverscrollEdgeEffect;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1, v0}, Lorg/mozilla/geckoview/OverscrollEdgeEffect;->setTheme(Landroid/content/Context;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lorg/mozilla/geckoview/GeckoSession;->getOverscrollEdgeEffect()Lorg/mozilla/geckoview/OverscrollEdgeEffect;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    new-instance v2, Lorg/mozilla/geckoview/GeckoView$1;

    .line 61
    .line 62
    invoke-direct {v2, p0}, Lorg/mozilla/geckoview/GeckoView$1;-><init>(Lorg/mozilla/geckoview/GeckoView;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v2}, Lorg/mozilla/geckoview/OverscrollEdgeEffect;->setInvalidationCallback(Ljava/lang/Runnable;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    new-instance v2, Landroid/util/TypedValue;

    .line 77
    .line 78
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const v3, 0x101004d

    .line 86
    .line 87
    .line 88
    const/4 v4, 0x1

    .line 89
    invoke-virtual {v0, v3, v2, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_3

    .line 94
    .line 95
    invoke-virtual {p1}, Lorg/mozilla/geckoview/GeckoSession;->getPanZoomController()Lorg/mozilla/geckoview/PanZoomController;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v2, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    goto :goto_1

    .line 104
    :cond_3
    invoke-virtual {p1}, Lorg/mozilla/geckoview/GeckoSession;->getPanZoomController()Lorg/mozilla/geckoview/PanZoomController;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 109
    .line 110
    int-to-float v1, v1

    .line 111
    const v2, 0x3d99999a    # 0.075f

    .line 112
    .line 113
    .line 114
    mul-float/2addr v1, v2

    .line 115
    :goto_1
    invoke-virtual {v0, v1}, Lorg/mozilla/geckoview/PanZoomController;->setScrollFactor(F)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Lorg/mozilla/geckoview/GeckoSession;->getCompositorController()Lorg/mozilla/geckoview/CompositorController;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    new-instance v1, Lorg/mozilla/geckoview/GeckoView$2;

    .line 123
    .line 124
    invoke-direct {v1, p0}, Lorg/mozilla/geckoview/GeckoView$2;-><init>(Lorg/mozilla/geckoview/GeckoView;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v1}, Lorg/mozilla/geckoview/CompositorController;->setFirstPaintCallback(Ljava/lang/Runnable;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Lorg/mozilla/geckoview/GeckoSession;->getTextInput()Lorg/mozilla/geckoview/SessionTextInput;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v0}, Lorg/mozilla/geckoview/SessionTextInput;->getView()Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    if-nez v0, :cond_4

    .line 139
    .line 140
    invoke-virtual {p1}, Lorg/mozilla/geckoview/GeckoSession;->getTextInput()Lorg/mozilla/geckoview/SessionTextInput;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {v0, p0}, Lorg/mozilla/geckoview/SessionTextInput;->setView(Landroid/view/View;)V

    .line 145
    .line 146
    .line 147
    :cond_4
    invoke-virtual {p1}, Lorg/mozilla/geckoview/GeckoSession;->getAccessibility()Lorg/mozilla/geckoview/SessionAccessibility;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {v0}, Lorg/mozilla/geckoview/SessionAccessibility;->getView()Landroid/view/View;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    if-nez v0, :cond_5

    .line 156
    .line 157
    invoke-virtual {p1}, Lorg/mozilla/geckoview/GeckoSession;->getAccessibility()Lorg/mozilla/geckoview/SessionAccessibility;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {v0, p0}, Lorg/mozilla/geckoview/SessionAccessibility;->setView(Landroid/view/View;)V

    .line 162
    .line 163
    .line 164
    :cond_5
    invoke-virtual {p1}, Lorg/mozilla/geckoview/GeckoSession;->getSelectionActionDelegate()Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    if-nez v0, :cond_6

    .line 169
    .line 170
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoView;->mSelectionActionDelegate:Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate;

    .line 171
    .line 172
    if-eqz v0, :cond_6

    .line 173
    .line 174
    invoke-virtual {p1, v0}, Lorg/mozilla/geckoview/GeckoSession;->setSelectionActionDelegate(Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate;)V

    .line 175
    .line 176
    .line 177
    :cond_6
    iget-boolean v0, p0, Lorg/mozilla/geckoview/GeckoView;->mAutofillEnabled:Z

    .line 178
    .line 179
    if-eqz v0, :cond_7

    .line 180
    .line 181
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoView;->mAutofillDelegate:Lorg/mozilla/geckoview/Autofill$Delegate;

    .line 182
    .line 183
    invoke-virtual {p1, v0}, Lorg/mozilla/geckoview/GeckoSession;->setAutofillDelegate(Lorg/mozilla/geckoview/Autofill$Delegate;)V

    .line 184
    .line 185
    .line 186
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    if-eqz v0, :cond_8

    .line 191
    .line 192
    invoke-virtual {p1, v4}, Lorg/mozilla/geckoview/GeckoSession;->setFocused(Z)V

    .line 193
    .line 194
    .line 195
    :cond_8
    return-void
.end method

.method public setVerticalClipping(I)V
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoView;->mDisplay:Lorg/mozilla/geckoview/GeckoView$Display;

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/GeckoView$Display;->setVerticalClipping(I)V

    return-void
.end method

.method public setViewBackend(I)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoView;->mSurfaceWrapper:Lorg/mozilla/gecko/SurfaceViewWrapper;

    invoke-virtual {v0}, Lorg/mozilla/gecko/SurfaceViewWrapper;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoView;->mSurfaceWrapper:Lorg/mozilla/gecko/SurfaceViewWrapper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/SurfaceViewWrapper;->useSurfaceView(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoView;->mSurfaceWrapper:Lorg/mozilla/gecko/SurfaceViewWrapper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/SurfaceViewWrapper;->useTextureView(Landroid/content/Context;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoView;->mSurfaceWrapper:Lorg/mozilla/gecko/SurfaceViewWrapper;

    invoke-virtual {p1}, Lorg/mozilla/gecko/SurfaceViewWrapper;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public shouldPinOnScreen()Z
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoView;->mDisplay:Lorg/mozilla/geckoview/GeckoView$Display;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoView$Display;->shouldPinOnScreen()Z

    move-result v0

    return v0
.end method
