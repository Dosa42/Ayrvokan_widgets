.class public final Lorg/mozilla/geckoview/GeckoDisplay$ScreenshotBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/GeckoDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScreenshotBuilder"
.end annotation


# static fields
.field private static final ASPECT:I = 0x2

.field private static final FULL:I = 0x3

.field private static final NONE:I = 0x0

.field private static final RECYCLE:I = 0x4

.field private static final SCALE:I = 0x1


# instance fields
.field private mAspectPreservingWidth:I

.field private mOffsetX:I

.field private mOffsetY:I

.field private mOutHeight:I

.field private mOutWidth:I

.field private mRecycle:Landroid/graphics/Bitmap;

.field private mScale:F

.field private final mSession:Lorg/mozilla/geckoview/GeckoSession;

.field private mSizeType:I

.field private mSrcHeight:I

.field private mSrcWidth:I


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/GeckoSession;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/geckoview/GeckoDisplay$ScreenshotBuilder;->mSizeType:I

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoDisplay$ScreenshotBuilder;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    return-void
.end method

.method private checkAndSetSizeType(I)V
    .locals 1

    iget v0, p0, Lorg/mozilla/geckoview/GeckoDisplay$ScreenshotBuilder;->mSizeType:I

    if-nez v0, :cond_0

    iput p1, p0, Lorg/mozilla/geckoview/GeckoDisplay$ScreenshotBuilder;->mSizeType:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Size has already been set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public aspectPreservingSize(I)Lorg/mozilla/geckoview/GeckoDisplay$ScreenshotBuilder;
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/mozilla/geckoview/GeckoDisplay$ScreenshotBuilder;->checkAndSetSizeType(I)V

    iput p1, p0, Lorg/mozilla/geckoview/GeckoDisplay$ScreenshotBuilder;->mAspectPreservingWidth:I

    return-object p0
.end method

.method public bitmap(Landroid/graphics/Bitmap;)Lorg/mozilla/geckoview/GeckoDisplay$ScreenshotBuilder;
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/mozilla/geckoview/GeckoDisplay$ScreenshotBuilder;->checkAndSetSizeType(I)V

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoDisplay$ScreenshotBuilder;->mRecycle:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public capture()Lorg/mozilla/geckoview/GeckoResult;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoDisplay$ScreenshotBuilder;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->isCompositorReady()Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Lorg/mozilla/geckoview/GeckoResult;

    invoke-direct {v0}, Lorg/mozilla/geckoview/GeckoResult;-><init>()V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget v2, p0, Lorg/mozilla/geckoview/GeckoDisplay$ScreenshotBuilder;->mSrcWidth:I

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/mozilla/geckoview/GeckoDisplay$ScreenshotBuilder;->mSrcHeight:I

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lorg/mozilla/geckoview/GeckoDisplay$ScreenshotBuilder;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {v2, v1}, Lorg/mozilla/geckoview/GeckoSession;->getSurfaceBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, p0, Lorg/mozilla/geckoview/GeckoDisplay$ScreenshotBuilder;->mSrcWidth:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, p0, Lorg/mozilla/geckoview/GeckoDisplay$ScreenshotBuilder;->mSrcHeight:I

    :cond_1
    iget v2, p0, Lorg/mozilla/geckoview/GeckoDisplay$ScreenshotBuilder;->mSizeType:I

    if-eqz v2, :cond_5

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v1, 0x4

    if-eq v2, v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoDisplay$ScreenshotBuilder;->mRecycle:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lorg/mozilla/geckoview/GeckoDisplay$ScreenshotBuilder;->mOutWidth:I

    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoDisplay$ScreenshotBuilder;->mRecycle:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lorg/mozilla/geckoview/GeckoDisplay$ScreenshotBuilder;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {v2, v1}, Lorg/mozilla/geckoview/GeckoSession;->getSurfaceBounds(Landroid/graphics/Rect;)V

    iget v2, p0, Lorg/mozilla/geckoview/GeckoDisplay$ScreenshotBuilder;->mAspectPreservingWidth:I

    iput v2, p0, Lorg/mozilla/geckoview/GeckoDisplay$ScreenshotBuilder;->mOutWidth:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-double v2, v2

    iget v4, p0, Lorg/mozilla/geckoview/GeckoDisplay$ScreenshotBuilder;->mAspectPreservingWidth:I

    int-to-double v4, v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-double v6, v1

    div-double/2addr v4, v6

    mul-double/2addr v4, v2

    double-to-int v1, v4

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lorg/mozilla/geckoview/GeckoDisplay$ScreenshotBuilder;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {v2, v1}, Lorg/mozilla/geckoview/GeckoSession;->getSurfaceBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lorg/mozilla/geckoview/GeckoDisplay$ScreenshotBuilder;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lorg/mozilla/geckoview/GeckoDisplay$ScreenshotBuilder;->mOutWidth:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lorg/mozilla/geckoview/GeckoDisplay$ScreenshotBuilder;->mScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_0

    :cond_5
    iget v1, p0, Lorg/mozilla/geckoview/GeckoDisplay$ScreenshotBuilder;->mSrcWidth:I

    iput v1, p0, Lorg/mozilla/geckoview/GeckoDisplay$ScreenshotBuilder;->mOutWidth:I

    iget v1, p0, Lorg/mozilla/geckoview/GeckoDisplay$ScreenshotBuilder;->mSrcHeight:I

    :goto_0
    iput v1, p0, Lorg/mozilla/geckoview/GeckoDisplay$ScreenshotBuilder;->mOutHeight:I

    :goto_1
    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoDisplay$ScreenshotBuilder;->mRecycle:Landroid/graphics/Bitmap;

    if-nez v1, :cond_8

    :try_start_0
    iget v1, p0, Lorg/mozilla/geckoview/GeckoDisplay$ScreenshotBuilder;->mOutWidth:I

    iget v2, p0, Lorg/mozilla/geckoview/GeckoDisplay$ScreenshotBuilder;->mOutHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    instance-of v1, v0, Ljava/lang/NullPointerException;

    if-nez v1, :cond_7

    instance-of v1, v0, Ljava/lang/OutOfMemoryError;

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "Failed to create bitmap"

    invoke-direct {v1, v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v1}, Lorg/mozilla/geckoview/GeckoResult;->fromException(Ljava/lang/Throwable;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object v0

    return-object v0

    :cond_7
    :goto_2
    new-instance v0, Ljava/lang/OutOfMemoryError;

    const-string v1, "Not enough memory to allocate for bitmap"

    invoke-direct {v0, v1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/mozilla/geckoview/GeckoResult;->fromException(Ljava/lang/Throwable;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object v0

    return-object v0

    :cond_8
    :goto_3
    move-object v3, v1

    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoDisplay$ScreenshotBuilder;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    iget-object v1, v1, Lorg/mozilla/geckoview/GeckoSession;->mCompositor:Lorg/mozilla/geckoview/GeckoSession$Compositor;

    iget v4, p0, Lorg/mozilla/geckoview/GeckoDisplay$ScreenshotBuilder;->mOffsetX:I

    iget v5, p0, Lorg/mozilla/geckoview/GeckoDisplay$ScreenshotBuilder;->mOffsetY:I

    iget v6, p0, Lorg/mozilla/geckoview/GeckoDisplay$ScreenshotBuilder;->mSrcWidth:I

    iget v7, p0, Lorg/mozilla/geckoview/GeckoDisplay$ScreenshotBuilder;->mSrcHeight:I

    iget v8, p0, Lorg/mozilla/geckoview/GeckoDisplay$ScreenshotBuilder;->mOutWidth:I

    iget v9, p0, Lorg/mozilla/geckoview/GeckoDisplay$ScreenshotBuilder;->mOutHeight:I

    move-object v2, v0

    invoke-virtual/range {v1 .. v9}, Lorg/mozilla/geckoview/GeckoSession$Compositor;->requestScreenPixels(Lorg/mozilla/geckoview/GeckoResult;Landroid/graphics/Bitmap;IIIIII)V

    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Compositor must be ready before pixels can be captured"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public scale(F)Lorg/mozilla/geckoview/GeckoDisplay$ScreenshotBuilder;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/mozilla/geckoview/GeckoDisplay$ScreenshotBuilder;->checkAndSetSizeType(I)V

    iput p1, p0, Lorg/mozilla/geckoview/GeckoDisplay$ScreenshotBuilder;->mScale:F

    return-object p0
.end method

.method public size(II)Lorg/mozilla/geckoview/GeckoDisplay$ScreenshotBuilder;
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/mozilla/geckoview/GeckoDisplay$ScreenshotBuilder;->checkAndSetSizeType(I)V

    iput p1, p0, Lorg/mozilla/geckoview/GeckoDisplay$ScreenshotBuilder;->mOutWidth:I

    iput p2, p0, Lorg/mozilla/geckoview/GeckoDisplay$ScreenshotBuilder;->mOutHeight:I

    return-object p0
.end method

.method public source(IIII)Lorg/mozilla/geckoview/GeckoDisplay$ScreenshotBuilder;
    .locals 0

    .line 1
    iput p1, p0, Lorg/mozilla/geckoview/GeckoDisplay$ScreenshotBuilder;->mOffsetX:I

    iput p2, p0, Lorg/mozilla/geckoview/GeckoDisplay$ScreenshotBuilder;->mOffsetY:I

    iput p3, p0, Lorg/mozilla/geckoview/GeckoDisplay$ScreenshotBuilder;->mSrcWidth:I

    iput p4, p0, Lorg/mozilla/geckoview/GeckoDisplay$ScreenshotBuilder;->mSrcHeight:I

    return-object p0
.end method

.method public source(Landroid/graphics/Rect;)Lorg/mozilla/geckoview/GeckoDisplay$ScreenshotBuilder;
    .locals 1

    .line 2
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lorg/mozilla/geckoview/GeckoDisplay$ScreenshotBuilder;->mOffsetX:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lorg/mozilla/geckoview/GeckoDisplay$ScreenshotBuilder;->mOffsetY:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lorg/mozilla/geckoview/GeckoDisplay$ScreenshotBuilder;->mSrcWidth:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, p0, Lorg/mozilla/geckoview/GeckoDisplay$ScreenshotBuilder;->mSrcHeight:I

    return-object p0
.end method
