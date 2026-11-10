.class public final Lorg/mozilla/geckoview/CompositorController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mCompositor:Lorg/mozilla/geckoview/GeckoSession$Compositor;

.field private mDefaultClearColor:I

.field private mDrawCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstPaintCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/GeckoSession;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/mozilla/geckoview/CompositorController;->mDefaultClearColor:I

    iget-object p1, p1, Lorg/mozilla/geckoview/GeckoSession;->mCompositor:Lorg/mozilla/geckoview/GeckoSession$Compositor;

    iput-object p1, p0, Lorg/mozilla/geckoview/CompositorController;->mCompositor:Lorg/mozilla/geckoview/GeckoSession$Compositor;

    return-void
.end method


# virtual methods
.method public addDrawCallback(Ljava/lang/Runnable;)V
    .locals 2
    .annotation build Lorg/mozilla/gecko/annotation/RobocopTarget;
    .end annotation

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/mozilla/geckoview/CompositorController;->mDrawCallbacks:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/mozilla/geckoview/CompositorController;->mDrawCallbacks:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/mozilla/geckoview/CompositorController;->mDrawCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/mozilla/geckoview/CompositorController;->mDrawCallbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lorg/mozilla/geckoview/CompositorController;->mCompositor:Lorg/mozilla/geckoview/GeckoSession$Compositor;

    invoke-virtual {p1}, Lorg/mozilla/geckoview/GeckoSession$Compositor;->isReady()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/mozilla/geckoview/CompositorController;->mCompositor:Lorg/mozilla/geckoview/GeckoSession$Compositor;

    invoke-virtual {p1, v0}, Lorg/mozilla/geckoview/GeckoSession$Compositor;->enableLayerUpdateNotifications(Z)V

    :cond_1
    return-void
.end method

.method public getClearColor()I
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget v0, p0, Lorg/mozilla/geckoview/CompositorController;->mDefaultClearColor:I

    return v0
.end method

.method public getFirstPaintCallback()Ljava/lang/Runnable;
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/mozilla/geckoview/CompositorController;->mFirstPaintCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method public notifyDrawCallbacks()V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/geckoview/CompositorController;->mDrawCallbacks:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCompositorDetached()V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/CompositorController;->mDrawCallbacks:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public onCompositorReady()V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/geckoview/CompositorController;->mCompositor:Lorg/mozilla/geckoview/GeckoSession$Compositor;

    iget v1, p0, Lorg/mozilla/geckoview/CompositorController;->mDefaultClearColor:I

    invoke-virtual {v0, v1}, Lorg/mozilla/geckoview/GeckoSession$Compositor;->setDefaultClearColor(I)V

    iget-object v0, p0, Lorg/mozilla/geckoview/CompositorController;->mCompositor:Lorg/mozilla/geckoview/GeckoSession$Compositor;

    iget-object v1, p0, Lorg/mozilla/geckoview/CompositorController;->mDrawCallbacks:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lorg/mozilla/geckoview/GeckoSession$Compositor;->enableLayerUpdateNotifications(Z)V

    return-void
.end method

.method public onFirstPaint()V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/CompositorController;->mFirstPaintCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public removeDrawCallback(Ljava/lang/Runnable;)V
    .locals 1
    .annotation build Lorg/mozilla/gecko/annotation/RobocopTarget;
    .end annotation

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/mozilla/geckoview/CompositorController;->mDrawCallbacks:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/mozilla/geckoview/CompositorController;->mDrawCallbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/mozilla/geckoview/CompositorController;->mCompositor:Lorg/mozilla/geckoview/GeckoSession$Compositor;

    invoke-virtual {p1}, Lorg/mozilla/geckoview/GeckoSession$Compositor;->isReady()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/mozilla/geckoview/CompositorController;->mCompositor:Lorg/mozilla/geckoview/GeckoSession$Compositor;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/mozilla/geckoview/GeckoSession$Compositor;->enableLayerUpdateNotifications(Z)V

    :cond_1
    return-void
.end method

.method public setClearColor(I)V
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iput p1, p0, Lorg/mozilla/geckoview/CompositorController;->mDefaultClearColor:I

    iget-object p1, p0, Lorg/mozilla/geckoview/CompositorController;->mCompositor:Lorg/mozilla/geckoview/GeckoSession$Compositor;

    invoke-virtual {p1}, Lorg/mozilla/geckoview/GeckoSession$Compositor;->isReady()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/mozilla/geckoview/CompositorController;->mCompositor:Lorg/mozilla/geckoview/GeckoSession$Compositor;

    iget v0, p0, Lorg/mozilla/geckoview/CompositorController;->mDefaultClearColor:I

    invoke-virtual {p1, v0}, Lorg/mozilla/geckoview/GeckoSession$Compositor;->setDefaultClearColor(I)V

    :cond_0
    return-void
.end method

.method public setFirstPaintCallback(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iput-object p1, p0, Lorg/mozilla/geckoview/CompositorController;->mFirstPaintCallback:Ljava/lang/Runnable;

    return-void
.end method
