.class Lorg/mozilla/gecko/SurfaceViewWrapper$ListenerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/SurfaceViewWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListenerWrapper"
.end annotation


# instance fields
.field private mHeight:I

.field private mListener:Lorg/mozilla/gecko/SurfaceViewWrapper$Listener;

.field private mSurface:Landroid/view/Surface;

.field private mWidth:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/mozilla/gecko/SurfaceViewWrapper$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/mozilla/gecko/SurfaceViewWrapper$ListenerWrapper;-><init>()V

    return-void
.end method

.method public static synthetic access$102(Lorg/mozilla/gecko/SurfaceViewWrapper$ListenerWrapper;Lorg/mozilla/gecko/SurfaceViewWrapper$Listener;)Lorg/mozilla/gecko/SurfaceViewWrapper$Listener;
    .locals 0

    iput-object p1, p0, Lorg/mozilla/gecko/SurfaceViewWrapper$ListenerWrapper;->mListener:Lorg/mozilla/gecko/SurfaceViewWrapper$Listener;

    return-object p1
.end method

.method public static synthetic access$200(Lorg/mozilla/gecko/SurfaceViewWrapper$ListenerWrapper;)I
    .locals 0

    iget p0, p0, Lorg/mozilla/gecko/SurfaceViewWrapper$ListenerWrapper;->mWidth:I

    return p0
.end method

.method public static synthetic access$300(Lorg/mozilla/gecko/SurfaceViewWrapper$ListenerWrapper;)I
    .locals 0

    iget p0, p0, Lorg/mozilla/gecko/SurfaceViewWrapper$ListenerWrapper;->mHeight:I

    return p0
.end method

.method public static synthetic access$400(Lorg/mozilla/gecko/SurfaceViewWrapper$ListenerWrapper;)Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/gecko/SurfaceViewWrapper$ListenerWrapper;->mSurface:Landroid/view/Surface;

    return-object p0
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lorg/mozilla/gecko/SurfaceViewWrapper$ListenerWrapper;->mSurface:Landroid/view/Surface;

    iput p2, p0, Lorg/mozilla/gecko/SurfaceViewWrapper$ListenerWrapper;->mWidth:I

    iput p3, p0, Lorg/mozilla/gecko/SurfaceViewWrapper$ListenerWrapper;->mHeight:I

    iget-object p1, p0, Lorg/mozilla/gecko/SurfaceViewWrapper$ListenerWrapper;->mListener:Lorg/mozilla/gecko/SurfaceViewWrapper$Listener;

    if-eqz p1, :cond_0

    invoke-interface {p1, v0, p2, p3}, Lorg/mozilla/gecko/SurfaceViewWrapper$Listener;->onSurfaceChanged(Landroid/view/Surface;II)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    iget-object p1, p0, Lorg/mozilla/gecko/SurfaceViewWrapper$ListenerWrapper;->mListener:Lorg/mozilla/gecko/SurfaceViewWrapper$Listener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/mozilla/gecko/SurfaceViewWrapper$Listener;->onSurfaceDestroyed()V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/mozilla/gecko/SurfaceViewWrapper$ListenerWrapper;->mSurface:Landroid/view/Surface;

    const/4 p1, 0x0

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    iput p2, p0, Lorg/mozilla/gecko/SurfaceViewWrapper$ListenerWrapper;->mWidth:I

    iput p3, p0, Lorg/mozilla/gecko/SurfaceViewWrapper$ListenerWrapper;->mHeight:I

    iget-object p1, p0, Lorg/mozilla/gecko/SurfaceViewWrapper$ListenerWrapper;->mListener:Lorg/mozilla/gecko/SurfaceViewWrapper$Listener;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/mozilla/gecko/SurfaceViewWrapper$ListenerWrapper;->mSurface:Landroid/view/Surface;

    invoke-interface {p1, v0, p2, p3}, Lorg/mozilla/gecko/SurfaceViewWrapper$Listener;->onSurfaceChanged(Landroid/view/Surface;II)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 3

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lorg/mozilla/gecko/SurfaceViewWrapper$ListenerWrapper;->mSurface:Landroid/view/Surface;

    iget-object p1, p0, Lorg/mozilla/gecko/SurfaceViewWrapper$ListenerWrapper;->mListener:Lorg/mozilla/gecko/SurfaceViewWrapper$Listener;

    if-eqz p1, :cond_0

    iget v1, p0, Lorg/mozilla/gecko/SurfaceViewWrapper$ListenerWrapper;->mWidth:I

    iget v2, p0, Lorg/mozilla/gecko/SurfaceViewWrapper$ListenerWrapper;->mHeight:I

    invoke-interface {p1, v0, v1, v2}, Lorg/mozilla/gecko/SurfaceViewWrapper$Listener;->onSurfaceChanged(Landroid/view/Surface;II)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/gecko/SurfaceViewWrapper$ListenerWrapper;->mWidth:I

    iput v0, p0, Lorg/mozilla/gecko/SurfaceViewWrapper$ListenerWrapper;->mHeight:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/gecko/SurfaceViewWrapper$ListenerWrapper;->mSurface:Landroid/view/Surface;

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    iget-object p2, p0, Lorg/mozilla/gecko/SurfaceViewWrapper$ListenerWrapper;->mListener:Lorg/mozilla/gecko/SurfaceViewWrapper$Listener;

    if-eqz p2, :cond_0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-interface {p2, p1, p3, p4}, Lorg/mozilla/gecko/SurfaceViewWrapper$Listener;->onSurfaceChanged(Landroid/view/Surface;II)V

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    iget-object p1, p0, Lorg/mozilla/gecko/SurfaceViewWrapper$ListenerWrapper;->mListener:Lorg/mozilla/gecko/SurfaceViewWrapper$Listener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/mozilla/gecko/SurfaceViewWrapper$Listener;->onSurfaceDestroyed()V

    :cond_0
    return-void
.end method
