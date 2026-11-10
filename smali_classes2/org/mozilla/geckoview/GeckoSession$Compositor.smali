.class Lorg/mozilla/geckoview/GeckoSession$Compositor;
.super Lorg/mozilla/gecko/mozglue/JNIObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/GeckoSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Compositor"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/geckoview/GeckoSession;


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/GeckoSession;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoSession$Compositor;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    invoke-direct {p0}, Lorg/mozilla/gecko/mozglue/JNIObject;-><init>()V

    return-void
.end method

.method private onCompositorAttached()V
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "ui"
    .end annotation

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$Compositor;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->onCompositorAttached()V

    return-void
.end method

.method private onCompositorDetached()V
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "ui"
    .end annotation

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$Compositor;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->onCompositorDetached()V

    return-void
.end method

.method private recvToolbarAnimatorMessage(I)V
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "ui"
    .end annotation

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$Compositor;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/GeckoSession;->handleCompositorMessage(I)V

    return-void
.end method

.method private updateOverscrollOffset(FF)V
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "ui"
    .end annotation

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$Compositor;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/geckoview/GeckoSession;->updateOverscrollOffset(FF)V

    return-void
.end method

.method private updateOverscrollVelocity(FF)V
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "ui"
    .end annotation

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$Compositor;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/geckoview/GeckoSession;->updateOverscrollVelocity(FF)V

    return-void
.end method

.method private updateRootFrameMetrics(FFF)V
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "ui"
    .end annotation

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$Compositor;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {v0, p1, p2, p3}, Lorg/mozilla/geckoview/GeckoSession;->onMetricsChanged(FFF)V

    return-void
.end method


# virtual methods
.method public native attachNPZC(Lorg/mozilla/geckoview/PanZoomController$NativeProvider;)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "ui"
        dispatchTo = "gecko"
    .end annotation
.end method

.method public native disposeNative()V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        dispatchTo = "gecko"
    .end annotation
.end method

.method public native enableLayerUpdateNotifications(Z)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "ui"
        dispatchTo = "current"
    .end annotation
.end method

.method public finalize()V
    .locals 0

    invoke-virtual {p0}, Lorg/mozilla/geckoview/GeckoSession$Compositor;->disposeNative()V

    return-void
.end method

.method public isReady()Z
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$Compositor;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->isCompositorReady()Z

    move-result v0

    return v0
.end method

.method public native onBoundsChanged(IIII)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "ui"
        dispatchTo = "gecko"
    .end annotation
.end method

.method public native onSafeAreaInsetsChanged(IIII)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "ui"
        dispatchTo = "gecko"
    .end annotation
.end method

.method public native requestScreenPixels(Lorg/mozilla/geckoview/GeckoResult;Landroid/graphics/Bitmap;IIIIII)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            "IIIIII)V"
        }
    .end annotation

    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "ui"
        dispatchTo = "current"
    .end annotation
.end method

.method public native sendToolbarAnimatorMessage(I)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "ui"
        dispatchTo = "current"
    .end annotation
.end method

.method public native setDefaultClearColor(I)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "ui"
        dispatchTo = "current"
    .end annotation
.end method

.method public native setDynamicToolbarMaxHeight(I)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "ui"
        dispatchTo = "gecko"
    .end annotation
.end method

.method public native setFixedBottomOffset(I)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "ui"
        dispatchTo = "gecko"
    .end annotation
.end method

.method public native setMaxToolbarHeight(I)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "ui"
        dispatchTo = "current"
    .end annotation
.end method

.method public native syncPauseCompositor()V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "ui"
        dispatchTo = "current"
    .end annotation
.end method

.method public native syncResumeResizeCompositor(IIIILjava/lang/Object;)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "ui"
        dispatchTo = "current"
    .end annotation
.end method
