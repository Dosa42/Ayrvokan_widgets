.class public final Ln1/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field public final a:Landroid/view/TextureView;

.field public b:Landroid/view/Surface;

.field public c:I

.field public d:I

.field public e:Lorg/mozilla/gecko/SurfaceViewWrapper$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/TextureView;

    invoke-direct {v0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ln1/o;->a:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method


# virtual methods
.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Ln1/o;->b:Landroid/view/Surface;

    iput p2, p0, Ln1/o;->c:I

    iput p3, p0, Ln1/o;->d:I

    iget-object p1, p0, Ln1/o;->e:Lorg/mozilla/gecko/SurfaceViewWrapper$Listener;

    if-eqz p1, :cond_0

    invoke-interface {p1, v0, p2, p3}, Lorg/mozilla/gecko/SurfaceViewWrapper$Listener;->onSurfaceChanged(Landroid/view/Surface;II)V

    :cond_0
    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 1
    iput p2, p0, Ln1/o;->c:I

    iput p3, p0, Ln1/o;->d:I

    iget-object p1, p0, Ln1/o;->e:Lorg/mozilla/gecko/SurfaceViewWrapper$Listener;

    if-eqz p1, :cond_0

    iget-object v0, p0, Ln1/o;->b:Landroid/view/Surface;

    invoke-interface {p1, v0, p2, p3}, Lorg/mozilla/gecko/SurfaceViewWrapper$Listener;->onSurfaceChanged(Landroid/view/Surface;II)V

    :cond_0
    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    return-void
.end method
