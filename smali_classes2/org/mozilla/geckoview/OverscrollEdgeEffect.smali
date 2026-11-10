.class public final Lorg/mozilla/geckoview/OverscrollEdgeEffect;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final AXIS_X:I = 0x0

.field static final AXIS_Y:I = 0x1

.field private static final BOTTOM:I = 0x1

.field private static final LEFT:I = 0x2

.field private static final RIGHT:I = 0x3

.field private static final TOP:I


# instance fields
.field private final mEdges:[Landroid/widget/EdgeEffect;

.field private mHeight:I

.field private mInvalidationCallback:Ljava/lang/Runnable;

.field private final mSession:Lorg/mozilla/geckoview/GeckoSession;

.field private mWidth:I


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/GeckoSession;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/widget/EdgeEffect;

    iput-object v0, p0, Lorg/mozilla/geckoview/OverscrollEdgeEffect;->mEdges:[Landroid/widget/EdgeEffect;

    iput-object p1, p0, Lorg/mozilla/geckoview/OverscrollEdgeEffect;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    return-void
.end method

.method private static draw(Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;FFF)Z
    .locals 1

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, p4}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result p0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return p0
.end method

.method private getEdgeForAxisAndSide(IF)Landroid/widget/EdgeEffect;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    cmpg-float p1, p2, v0

    if-gez p1, :cond_0

    iget-object p1, p0, Lorg/mozilla/geckoview/OverscrollEdgeEffect;->mEdges:[Landroid/widget/EdgeEffect;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    return-object p1

    :cond_0
    iget-object p1, p0, Lorg/mozilla/geckoview/OverscrollEdgeEffect;->mEdges:[Landroid/widget/EdgeEffect;

    aget-object p1, p1, v1

    return-object p1

    :cond_1
    cmpg-float p1, p2, v0

    if-gez p1, :cond_2

    iget-object p1, p0, Lorg/mozilla/geckoview/OverscrollEdgeEffect;->mEdges:[Landroid/widget/EdgeEffect;

    const/4 p2, 0x2

    aget-object p1, p1, p2

    return-object p1

    :cond_2
    iget-object p1, p0, Lorg/mozilla/geckoview/OverscrollEdgeEffect;->mEdges:[Landroid/widget/EdgeEffect;

    const/4 p2, 0x3

    aget-object p1, p1, p2

    return-object p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lorg/mozilla/geckoview/OverscrollEdgeEffect;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {v1, v0}, Lorg/mozilla/geckoview/GeckoSession;->getSurfaceBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lorg/mozilla/geckoview/OverscrollEdgeEffect;->mEdges:[Landroid/widget/EdgeEffect;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/mozilla/geckoview/OverscrollEdgeEffect;->mEdges:[Landroid/widget/EdgeEffect;

    aget-object v1, v1, v2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-static {v1, p1, v3, v4, v5}, Lorg/mozilla/geckoview/OverscrollEdgeEffect;->draw(Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;FFF)Z

    move-result v1

    or-int/2addr v2, v1

    :cond_0
    iget-object v1, p0, Lorg/mozilla/geckoview/OverscrollEdgeEffect;->mEdges:[Landroid/widget/EdgeEffect;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/mozilla/geckoview/OverscrollEdgeEffect;->mEdges:[Landroid/widget/EdgeEffect;

    aget-object v1, v1, v3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    const/high16 v5, 0x43340000    # 180.0f

    invoke-static {v1, p1, v3, v4, v5}, Lorg/mozilla/geckoview/OverscrollEdgeEffect;->draw(Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;FFF)Z

    move-result v1

    or-int/2addr v2, v1

    :cond_1
    iget-object v1, p0, Lorg/mozilla/geckoview/OverscrollEdgeEffect;->mEdges:[Landroid/widget/EdgeEffect;

    const/4 v3, 0x2

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/mozilla/geckoview/OverscrollEdgeEffect;->mEdges:[Landroid/widget/EdgeEffect;

    aget-object v1, v1, v3

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    const/high16 v5, 0x43870000    # 270.0f

    invoke-static {v1, p1, v3, v4, v5}, Lorg/mozilla/geckoview/OverscrollEdgeEffect;->draw(Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;FFF)Z

    move-result v1

    or-int/2addr v2, v1

    :cond_2
    iget-object v1, p0, Lorg/mozilla/geckoview/OverscrollEdgeEffect;->mEdges:[Landroid/widget/EdgeEffect;

    const/4 v3, 0x3

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/mozilla/geckoview/OverscrollEdgeEffect;->mEdges:[Landroid/widget/EdgeEffect;

    aget-object v1, v1, v3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    const/high16 v4, 0x42b40000    # 90.0f

    invoke-static {v1, p1, v3, v0, v4}, Lorg/mozilla/geckoview/OverscrollEdgeEffect;->draw(Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;FFF)Z

    move-result p1

    or-int/2addr v2, p1

    :cond_3
    if-eqz v2, :cond_4

    iget-object p1, p0, Lorg/mozilla/geckoview/OverscrollEdgeEffect;->mInvalidationCallback:Ljava/lang/Runnable;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_4
    return-void
.end method

.method public getInvalidationCallback()Ljava/lang/Runnable;
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/mozilla/geckoview/OverscrollEdgeEffect;->mInvalidationCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method public setDistance(FI)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    float-to-int v0, p1

    int-to-float v0, v0

    invoke-direct {p0, p2, v0}, Lorg/mozilla/geckoview/OverscrollEdgeEffect;->getEdgeForAxisAndSide(IF)Landroid/widget/EdgeEffect;

    move-result-object v0

    if-nez p2, :cond_1

    iget p2, p0, Lorg/mozilla/geckoview/OverscrollEdgeEffect;->mWidth:I

    goto :goto_0

    :cond_1
    iget p2, p0, Lorg/mozilla/geckoview/OverscrollEdgeEffect;->mHeight:I

    :goto_0
    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    iget-object p1, p0, Lorg/mozilla/geckoview/OverscrollEdgeEffect;->mInvalidationCallback:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method

.method public setInvalidationCallback(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iput-object p1, p0, Lorg/mozilla/geckoview/OverscrollEdgeEffect;->mInvalidationCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public setSize(II)V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/geckoview/OverscrollEdgeEffect;->mEdges:[Landroid/widget/EdgeEffect;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0, p2, p1}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v0, p0, Lorg/mozilla/geckoview/OverscrollEdgeEffect;->mEdges:[Landroid/widget/EdgeEffect;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0, p2, p1}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v0, p0, Lorg/mozilla/geckoview/OverscrollEdgeEffect;->mEdges:[Landroid/widget/EdgeEffect;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v0, p0, Lorg/mozilla/geckoview/OverscrollEdgeEffect;->mEdges:[Landroid/widget/EdgeEffect;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Landroid/widget/EdgeEffect;->setSize(II)V

    iput p1, p0, Lorg/mozilla/geckoview/OverscrollEdgeEffect;->mWidth:I

    iput p2, p0, Lorg/mozilla/geckoview/OverscrollEdgeEffect;->mHeight:I

    return-void
.end method

.method public setTheme(Landroid/content/Context;)V
    .locals 5

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    const/4 v1, 0x0

    :try_start_0
    const-class v2, Landroid/widget/EdgeEffect;

    const-string v3, "mPaint"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/mozilla/geckoview/OverscrollEdgeEffect;->mEdges:[Landroid/widget/EdgeEffect;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    new-instance v4, Landroid/widget/EdgeEffect;

    invoke-direct {v4, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    aput-object v4, v3, v2

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object v3, p0, Lorg/mozilla/geckoview/OverscrollEdgeEffect;->mEdges:[Landroid/widget/EdgeEffect;

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setVelocity(FI)V
    .locals 1

    invoke-direct {p0, p2, p1}, Lorg/mozilla/geckoview/OverscrollEdgeEffect;->getEdgeForAxisAndSide(IF)Landroid/widget/EdgeEffect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_0

    :cond_0
    float-to-int p1, p1

    invoke-virtual {p2, p1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :goto_0
    iget-object p1, p0, Lorg/mozilla/geckoview/OverscrollEdgeEffect;->mInvalidationCallback:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method
