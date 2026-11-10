.class Lorg/mozilla/gecko/gfx/SurfaceAllocatorService$1;
.super Lorg/mozilla/gecko/gfx/ISurfaceAllocator$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/gfx/SurfaceAllocatorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/gecko/gfx/SurfaceAllocatorService;


# direct methods
.method public constructor <init>(Lorg/mozilla/gecko/gfx/SurfaceAllocatorService;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/gecko/gfx/SurfaceAllocatorService$1;->this$0:Lorg/mozilla/gecko/gfx/SurfaceAllocatorService;

    invoke-direct {p0}, Lorg/mozilla/gecko/gfx/ISurfaceAllocator$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public acquireSurface(IIZ)Lorg/mozilla/gecko/gfx/GeckoSurface;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->acquire(ZI)Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;

    move-result-object p3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-lez p1, :cond_1

    if-lez p2, :cond_1

    invoke-virtual {p3, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    :cond_1
    new-instance p1, Lorg/mozilla/gecko/gfx/GeckoSurface;

    invoke-direct {p1, p3}, Lorg/mozilla/gecko/gfx/GeckoSurface;-><init>(Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;)V

    return-object p1
.end method

.method public configureSync(Lorg/mozilla/gecko/gfx/SyncConfig;)V
    .locals 3

    iget v0, p1, Lorg/mozilla/gecko/gfx/SyncConfig;->sourceTextureHandle:I

    invoke-static {v0}, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->lookup(I)Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p1, Lorg/mozilla/gecko/gfx/SyncConfig;->targetSurface:Lorg/mozilla/gecko/gfx/GeckoSurface;

    iget v2, p1, Lorg/mozilla/gecko/gfx/SyncConfig;->width:I

    iget p1, p1, Lorg/mozilla/gecko/gfx/SyncConfig;->height:I

    invoke-virtual {v0, v1, v2, p1}, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->configureSnapshot(Lorg/mozilla/gecko/gfx/GeckoSurface;II)V

    :cond_0
    return-void
.end method

.method public releaseSurface(I)V
    .locals 0

    invoke-static {p1}, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->lookup(I)Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->decrementUse()V

    :cond_0
    return-void
.end method

.method public sync(I)V
    .locals 0

    invoke-static {p1}, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->lookup(I)Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->takeSnapshot()V

    :cond_0
    return-void
.end method
