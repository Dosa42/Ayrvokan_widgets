.class public Lorg/mozilla/geckoview/GeckoDisplay;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/geckoview/GeckoDisplay$ScreenshotBuilder;
    }
.end annotation


# instance fields
.field private final mSession:Lorg/mozilla/geckoview/GeckoSession;


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/GeckoSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoDisplay;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    return-void
.end method


# virtual methods
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

    invoke-virtual {p0}, Lorg/mozilla/geckoview/GeckoDisplay;->screenshot()Lorg/mozilla/geckoview/GeckoDisplay$ScreenshotBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoDisplay$ScreenshotBuilder;->capture()Lorg/mozilla/geckoview/GeckoResult;

    move-result-object v0

    return-object v0
.end method

.method public safeAreaInsetsChanged(IIII)V
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoDisplay;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->getDisplay()Lorg/mozilla/geckoview/GeckoDisplay;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoDisplay;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/mozilla/geckoview/GeckoSession;->onSafeAreaInsetsChanged(IIII)V

    :cond_0
    return-void
.end method

.method public screenOriginChanged(II)V
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoDisplay;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->getDisplay()Lorg/mozilla/geckoview/GeckoDisplay;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoDisplay;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/geckoview/GeckoSession;->onScreenOriginChanged(II)V

    :cond_0
    return-void
.end method

.method public screenshot()Lorg/mozilla/geckoview/GeckoDisplay$ScreenshotBuilder;
    .locals 2

    new-instance v0, Lorg/mozilla/geckoview/GeckoDisplay$ScreenshotBuilder;

    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoDisplay;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    invoke-direct {v0, v1}, Lorg/mozilla/geckoview/GeckoDisplay$ScreenshotBuilder;-><init>(Lorg/mozilla/geckoview/GeckoSession;)V

    return-object v0
.end method

.method public setDynamicToolbarMaxHeight(I)V
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoDisplay;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/GeckoSession;->setDynamicToolbarMaxHeight(I)V

    :cond_0
    return-void
.end method

.method public setVerticalClipping(I)V
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoDisplay;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/GeckoSession;->setFixedBottomOffset(I)V

    :cond_0
    return-void
.end method

.method public shouldPinOnScreen()Z
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoDisplay;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->getDisplay()Lorg/mozilla/geckoview/GeckoDisplay;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoDisplay;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->shouldPinOnScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public surfaceChanged(Landroid/view/Surface;II)V
    .locals 6

    .line 1
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/geckoview/GeckoDisplay;->surfaceChanged(Landroid/view/Surface;IIII)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/Surface;IIII)V
    .locals 7

    .line 2
    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoDisplay;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->getDisplay()Lorg/mozilla/geckoview/GeckoDisplay;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoDisplay;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lorg/mozilla/geckoview/GeckoSession;->onSurfaceChanged(Landroid/view/Surface;IIII)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parameters can not be negative."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public surfaceDestroyed()V
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoDisplay;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->getDisplay()Lorg/mozilla/geckoview/GeckoDisplay;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoDisplay;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->onSurfaceDestroyed()V

    :cond_0
    return-void
.end method
