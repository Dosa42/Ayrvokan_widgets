.class public Lorg/mozilla/gecko/SurfaceViewWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/gecko/SurfaceViewWrapper$Listener;,
        Lorg/mozilla/gecko/SurfaceViewWrapper$ListenerWrapper;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "SurfaceViewWrapper"


# instance fields
.field private mListenerWrapper:Lorg/mozilla/gecko/SurfaceViewWrapper$ListenerWrapper;

.field mSurfaceView:Landroid/view/SurfaceView;

.field mTextureView:Landroid/view/TextureView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/mozilla/gecko/SurfaceViewWrapper$ListenerWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mozilla/gecko/SurfaceViewWrapper$ListenerWrapper;-><init>(Lorg/mozilla/gecko/SurfaceViewWrapper$1;)V

    iput-object v0, p0, Lorg/mozilla/gecko/SurfaceViewWrapper;->mListenerWrapper:Lorg/mozilla/gecko/SurfaceViewWrapper$ListenerWrapper;

    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/mozilla/gecko/SurfaceViewWrapper;->mSurfaceView:Landroid/view/SurfaceView;

    iput-object v0, p0, Lorg/mozilla/gecko/SurfaceViewWrapper;->mView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/SurfaceViewWrapper;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/gecko/SurfaceViewWrapper;->mListenerWrapper:Lorg/mozilla/gecko/SurfaceViewWrapper$ListenerWrapper;

    invoke-static {v0}, Lorg/mozilla/gecko/SurfaceViewWrapper$ListenerWrapper;->access$300(Lorg/mozilla/gecko/SurfaceViewWrapper$ListenerWrapper;)I

    move-result v0

    return v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/SurfaceViewWrapper;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/gecko/SurfaceViewWrapper;->mListenerWrapper:Lorg/mozilla/gecko/SurfaceViewWrapper$ListenerWrapper;

    invoke-static {v0}, Lorg/mozilla/gecko/SurfaceViewWrapper$ListenerWrapper;->access$400(Lorg/mozilla/gecko/SurfaceViewWrapper$ListenerWrapper;)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/SurfaceViewWrapper;->mView:Landroid/view/View;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/SurfaceViewWrapper;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/gecko/SurfaceViewWrapper;->mListenerWrapper:Lorg/mozilla/gecko/SurfaceViewWrapper$ListenerWrapper;

    invoke-static {v0}, Lorg/mozilla/gecko/SurfaceViewWrapper$ListenerWrapper;->access$200(Lorg/mozilla/gecko/SurfaceViewWrapper$ListenerWrapper;)I

    move-result v0

    return v0
.end method

.method public setBackgroundColor(I)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/SurfaceViewWrapper;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setListener(Lorg/mozilla/gecko/SurfaceViewWrapper$Listener;)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/SurfaceViewWrapper;->mListenerWrapper:Lorg/mozilla/gecko/SurfaceViewWrapper$ListenerWrapper;

    invoke-static {v0, p1}, Lorg/mozilla/gecko/SurfaceViewWrapper$ListenerWrapper;->access$102(Lorg/mozilla/gecko/SurfaceViewWrapper$ListenerWrapper;Lorg/mozilla/gecko/SurfaceViewWrapper$Listener;)Lorg/mozilla/gecko/SurfaceViewWrapper$Listener;

    iget-object p1, p0, Lorg/mozilla/gecko/SurfaceViewWrapper;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iget-object v0, p0, Lorg/mozilla/gecko/SurfaceViewWrapper;->mListenerWrapper:Lorg/mozilla/gecko/SurfaceViewWrapper$ListenerWrapper;

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method public useSurfaceView(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/gecko/SurfaceViewWrapper;->mTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/mozilla/gecko/SurfaceViewWrapper;->mListenerWrapper:Lorg/mozilla/gecko/SurfaceViewWrapper$ListenerWrapper;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/mozilla/gecko/SurfaceViewWrapper$ListenerWrapper;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/gecko/SurfaceViewWrapper;->mTextureView:Landroid/view/TextureView;

    :cond_0
    iget-object v0, p0, Lorg/mozilla/gecko/SurfaceViewWrapper;->mListenerWrapper:Lorg/mozilla/gecko/SurfaceViewWrapper$ListenerWrapper;

    invoke-virtual {v0}, Lorg/mozilla/gecko/SurfaceViewWrapper$ListenerWrapper;->reset()V

    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/mozilla/gecko/SurfaceViewWrapper;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iget-object v0, p0, Lorg/mozilla/gecko/SurfaceViewWrapper;->mListenerWrapper:Lorg/mozilla/gecko/SurfaceViewWrapper$ListenerWrapper;

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object p1, p0, Lorg/mozilla/gecko/SurfaceViewWrapper;->mSurfaceView:Landroid/view/SurfaceView;

    iput-object p1, p0, Lorg/mozilla/gecko/SurfaceViewWrapper;->mView:Landroid/view/View;

    return-void
.end method

.method public useTextureView(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/gecko/SurfaceViewWrapper;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/mozilla/gecko/SurfaceViewWrapper;->mListenerWrapper:Lorg/mozilla/gecko/SurfaceViewWrapper$ListenerWrapper;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/mozilla/gecko/SurfaceViewWrapper$ListenerWrapper;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/gecko/SurfaceViewWrapper;->mSurfaceView:Landroid/view/SurfaceView;

    :cond_0
    iget-object v0, p0, Lorg/mozilla/gecko/SurfaceViewWrapper;->mListenerWrapper:Lorg/mozilla/gecko/SurfaceViewWrapper$ListenerWrapper;

    invoke-virtual {v0}, Lorg/mozilla/gecko/SurfaceViewWrapper$ListenerWrapper;->reset()V

    new-instance v0, Landroid/view/TextureView;

    invoke-direct {v0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/mozilla/gecko/SurfaceViewWrapper;->mTextureView:Landroid/view/TextureView;

    iget-object p1, p0, Lorg/mozilla/gecko/SurfaceViewWrapper;->mListenerWrapper:Lorg/mozilla/gecko/SurfaceViewWrapper$ListenerWrapper;

    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iget-object p1, p0, Lorg/mozilla/gecko/SurfaceViewWrapper;->mTextureView:Landroid/view/TextureView;

    iput-object p1, p0, Lorg/mozilla/gecko/SurfaceViewWrapper;->mView:Landroid/view/View;

    return-void
.end method
