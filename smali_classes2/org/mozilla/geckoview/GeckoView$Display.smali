.class Lorg/mozilla/geckoview/GeckoView$Display;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/gecko/SurfaceViewWrapper$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/GeckoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Display"
.end annotation


# instance fields
.field private mClippingHeight:I

.field private mDisplay:Lorg/mozilla/geckoview/GeckoDisplay;

.field private mDynamicToolbarMaxHeight:I

.field private final mOrigin:[I

.field private mValid:Z

.field final synthetic this$0:Lorg/mozilla/geckoview/GeckoView;


# direct methods
.method private constructor <init>(Lorg/mozilla/geckoview/GeckoView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoView$Display;->this$0:Lorg/mozilla/geckoview/GeckoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoView$Display;->mOrigin:[I

    return-void
.end method

.method public synthetic constructor <init>(Lorg/mozilla/geckoview/GeckoView;Lorg/mozilla/geckoview/GeckoView$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/GeckoView$Display;-><init>(Lorg/mozilla/geckoview/GeckoView;)V

    return-void
.end method


# virtual methods
.method public acquire(Lorg/mozilla/geckoview/GeckoDisplay;)V
    .locals 3

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoView$Display;->mDisplay:Lorg/mozilla/geckoview/GeckoDisplay;

    iget-boolean p1, p0, Lorg/mozilla/geckoview/GeckoView$Display;->mValid:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget p1, p0, Lorg/mozilla/geckoview/GeckoView$Display;->mClippingHeight:I

    invoke-virtual {p0, p1}, Lorg/mozilla/geckoview/GeckoView$Display;->setVerticalClipping(I)V

    invoke-virtual {p0}, Lorg/mozilla/geckoview/GeckoView$Display;->onGlobalLayout()V

    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoView$Display;->this$0:Lorg/mozilla/geckoview/GeckoView;

    invoke-static {p1}, Lorg/mozilla/geckoview/GeckoView;->access$100(Lorg/mozilla/geckoview/GeckoView;)Lorg/mozilla/gecko/SurfaceViewWrapper;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoView$Display;->this$0:Lorg/mozilla/geckoview/GeckoView;

    invoke-static {p1}, Lorg/mozilla/geckoview/GeckoView;->access$100(Lorg/mozilla/geckoview/GeckoView;)Lorg/mozilla/gecko/SurfaceViewWrapper;

    move-result-object p1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoView$Display;->mDisplay:Lorg/mozilla/geckoview/GeckoDisplay;

    invoke-virtual {p1}, Lorg/mozilla/gecko/SurfaceViewWrapper;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {p1}, Lorg/mozilla/gecko/SurfaceViewWrapper;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lorg/mozilla/gecko/SurfaceViewWrapper;->getHeight()I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lorg/mozilla/geckoview/GeckoDisplay;->surfaceChanged(Landroid/view/Surface;II)V

    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoView$Display;->mDisplay:Lorg/mozilla/geckoview/GeckoDisplay;

    iget v0, p0, Lorg/mozilla/geckoview/GeckoView$Display;->mDynamicToolbarMaxHeight:I

    invoke-virtual {p1, v0}, Lorg/mozilla/geckoview/GeckoDisplay;->setDynamicToolbarMaxHeight(I)V

    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoView$Display;->this$0:Lorg/mozilla/geckoview/GeckoView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/mozilla/geckoview/GeckoView;->setActive(Z)V

    :cond_1
    return-void
.end method

.method public capturePixels()Lorg/mozilla/geckoview/GeckoResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoView$Display;->mDisplay:Lorg/mozilla/geckoview/GeckoDisplay;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Display must be created before pixels can be captured"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/mozilla/geckoview/GeckoResult;->fromException(Ljava/lang/Throwable;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoDisplay;->capturePixels()Lorg/mozilla/geckoview/GeckoResult;

    move-result-object v0

    return-object v0
.end method

.method public onGlobalLayout()V
    .locals 5

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoView$Display;->mDisplay:Lorg/mozilla/geckoview/GeckoDisplay;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoView$Display;->this$0:Lorg/mozilla/geckoview/GeckoView;

    invoke-static {v0}, Lorg/mozilla/geckoview/GeckoView;->access$100(Lorg/mozilla/geckoview/GeckoView;)Lorg/mozilla/gecko/SurfaceViewWrapper;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoView$Display;->this$0:Lorg/mozilla/geckoview/GeckoView;

    invoke-static {v0}, Lorg/mozilla/geckoview/GeckoView;->access$100(Lorg/mozilla/geckoview/GeckoView;)Lorg/mozilla/gecko/SurfaceViewWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/gecko/SurfaceViewWrapper;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoView$Display;->mOrigin:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoView$Display;->mDisplay:Lorg/mozilla/geckoview/GeckoDisplay;

    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoView$Display;->mOrigin:[I

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-virtual {v0, v2, v1}, Lorg/mozilla/geckoview/GeckoDisplay;->screenOriginChanged(II)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoView$Display;->this$0:Lorg/mozilla/geckoview/GeckoView;

    invoke-static {v0}, Lorg/mozilla/geckoview/GeckoView;->access$100(Lorg/mozilla/geckoview/GeckoView;)Lorg/mozilla/gecko/SurfaceViewWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/gecko/SurfaceViewWrapper;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Lj/f;->d(Landroid/view/WindowInsets;)Landroid/view/DisplayCutout;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoView$Display;->mDisplay:Lorg/mozilla/geckoview/GeckoDisplay;

    invoke-static {v0}, Lj/f;->b(Landroid/view/DisplayCutout;)I

    move-result v2

    invoke-static {v0}, Lj/f;->p(Landroid/view/DisplayCutout;)I

    move-result v3

    invoke-static {v0}, Lj/f;->u(Landroid/view/DisplayCutout;)I

    move-result v4

    invoke-static {v0}, Lj/f;->v(Landroid/view/DisplayCutout;)I

    move-result v0

    invoke-virtual {v1, v2, v3, v4, v0}, Lorg/mozilla/geckoview/GeckoDisplay;->safeAreaInsetsChanged(IIII)V

    :cond_1
    return-void
.end method

.method public onSurfaceChanged(Landroid/view/Surface;II)V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoView$Display;->mDisplay:Lorg/mozilla/geckoview/GeckoDisplay;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lorg/mozilla/geckoview/GeckoDisplay;->surfaceChanged(Landroid/view/Surface;II)V

    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoView$Display;->mDisplay:Lorg/mozilla/geckoview/GeckoDisplay;

    iget p2, p0, Lorg/mozilla/geckoview/GeckoView$Display;->mDynamicToolbarMaxHeight:I

    invoke-virtual {p1, p2}, Lorg/mozilla/geckoview/GeckoDisplay;->setDynamicToolbarMaxHeight(I)V

    iget-boolean p1, p0, Lorg/mozilla/geckoview/GeckoView$Display;->mValid:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoView$Display;->this$0:Lorg/mozilla/geckoview/GeckoView;

    invoke-virtual {p1, v1}, Lorg/mozilla/geckoview/GeckoView;->setActive(Z)V

    :cond_0
    iput-boolean v1, p0, Lorg/mozilla/geckoview/GeckoView$Display;->mValid:Z

    return-void
.end method

.method public onSurfaceDestroyed()V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoView$Display;->mDisplay:Lorg/mozilla/geckoview/GeckoDisplay;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoDisplay;->surfaceDestroyed()V

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoView$Display;->this$0:Lorg/mozilla/geckoview/GeckoView;

    invoke-virtual {v0, v1}, Lorg/mozilla/geckoview/GeckoView;->setActive(Z)V

    :cond_0
    iput-boolean v1, p0, Lorg/mozilla/geckoview/GeckoView$Display;->mValid:Z

    return-void
.end method

.method public release()Lorg/mozilla/geckoview/GeckoDisplay;
    .locals 2

    iget-boolean v0, p0, Lorg/mozilla/geckoview/GeckoView$Display;->mValid:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoView$Display;->mDisplay:Lorg/mozilla/geckoview/GeckoDisplay;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoDisplay;->surfaceDestroyed()V

    :cond_0
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoView$Display;->this$0:Lorg/mozilla/geckoview/GeckoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/mozilla/geckoview/GeckoView;->setActive(Z)V

    :cond_1
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoView$Display;->mDisplay:Lorg/mozilla/geckoview/GeckoDisplay;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mozilla/geckoview/GeckoView$Display;->mDisplay:Lorg/mozilla/geckoview/GeckoDisplay;

    return-object v0
.end method

.method public setDynamicToolbarMaxHeight(I)V
    .locals 1

    iput p1, p0, Lorg/mozilla/geckoview/GeckoView$Display;->mDynamicToolbarMaxHeight:I

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoView$Display;->mDisplay:Lorg/mozilla/geckoview/GeckoDisplay;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/GeckoDisplay;->setDynamicToolbarMaxHeight(I)V

    :cond_0
    return-void
.end method

.method public setVerticalClipping(I)V
    .locals 1

    iput p1, p0, Lorg/mozilla/geckoview/GeckoView$Display;->mClippingHeight:I

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoView$Display;->mDisplay:Lorg/mozilla/geckoview/GeckoDisplay;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/GeckoDisplay;->setVerticalClipping(I)V

    :cond_0
    return-void
.end method

.method public shouldPinOnScreen()Z
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoView$Display;->mDisplay:Lorg/mozilla/geckoview/GeckoDisplay;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoDisplay;->shouldPinOnScreen()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
