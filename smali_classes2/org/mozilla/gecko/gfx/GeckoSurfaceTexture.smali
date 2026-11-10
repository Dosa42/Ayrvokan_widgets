.class final Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;
.super Landroid/graphics/SurfaceTexture;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture$NativeGLBlitHelper;,
        Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture$Callbacks;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "GeckoSurfaceTexture"

.field private static final MAX_SURFACE_TEXTURES:I = 0xc8

.field private static volatile sNextHandle:I = 0x1

.field private static final sSurfaceTextures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;",
            ">;"
        }
    .end annotation
.end field

.field private static sUnusedTextures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/util/LinkedList<",
            "Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mAttachedContext:J

.field private mBlitter:Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture$NativeGLBlitHelper;

.field private mFinalized:Z

.field private mHandle:I

.field private mIsSingleBuffer:Z

.field private mListener:Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture$Callbacks;

.field private mTexName:I

.field private mUpstream:I

.field private mUseCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->sSurfaceTextures:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->sUnusedTextures:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->init(IZ)V

    return-void
.end method

.method private constructor <init>(IZ)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Landroid/graphics/SurfaceTexture;-><init>(IZ)V

    invoke-direct {p0, p1, p2}, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->init(IZ)V

    return-void
.end method

.method public static acquire(ZI)Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;
    .locals 3

    if-eqz p0, :cond_1

    invoke-static {}, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->isSingleBufferSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "single buffer mode not supported on API version < 19"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    sget-object v0, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->sSurfaceTextures:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_2

    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :cond_2
    if-nez p1, :cond_3

    sget p1, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->sNextHandle:I

    add-int/lit8 v1, p1, 0x1

    sput v1, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->sNextHandle:I

    :cond_3
    invoke-static {}, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->isSingleBufferSupported()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;

    invoke-direct {v1, p1, p0}, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;-><init>(IZ)V

    goto :goto_1

    :cond_4
    new-instance v1, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;

    invoke-direct {v1, p1}, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;-><init>(I)V

    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :cond_5
    invoke-virtual {v1}, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->release()V

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Already have a GeckoSurfaceTexture with that handle"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static destroyUnused(J)V
    .locals 2
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    sget-object v0, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->sUnusedTextures:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->sUnusedTextures:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/LinkedList;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catch_0
    :catchall_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;

    :try_start_1
    invoke-virtual {p1}, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->isSingleBuffer()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->releaseTexImage()V

    :cond_1
    invoke-virtual {p1}, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->detachFromGLContext()V

    invoke-virtual {p1}, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {p1}, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->finalize()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_2
    return-void

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method private init(IZ)V
    .locals 0

    iput p1, p0, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->mHandle:I

    iput-boolean p2, p0, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->mIsSingleBuffer:Z

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->mUseCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->detachFromGLContext()V

    return-void
.end method

.method public static isSingleBufferSupported()Z
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public static lookup(I)Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    sget-object v0, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->sSurfaceTextures:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public declared-synchronized attachToGLContext(JI)V
    .locals 2
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        exceptionMode = "nsresult"
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->mAttachedContext:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->mTexName:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p3, v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0, p3}, Landroid/graphics/SurfaceTexture;->attachToGLContext(I)V

    iput-wide p1, p0, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->mAttachedContext:J

    iput p3, p0, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->mTexName:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized configureSnapshot(Lorg/mozilla/gecko/gfx/GeckoSurface;II)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->mHandle:I

    invoke-static {v0, p1, p2, p3}, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture$NativeGLBlitHelper;->create(ILorg/mozilla/gecko/gfx/GeckoSurface;II)Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture$NativeGLBlitHelper;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->mBlitter:Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture$NativeGLBlitHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized decrementUse()V
    .locals 5
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->mUseCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->setListener(Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture$Callbacks;)V

    iget-wide v0, p0, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->mAttachedContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->release()V

    sget-object v0, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->sUnusedTextures:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    sget-object v1, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->sSurfaceTextures:Ljava/util/HashMap;

    iget v2, p0, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->mHandle:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1

    :cond_0
    sget-object v0, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->sUnusedTextures:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    sget-object v1, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->sUnusedTextures:Ljava/util/HashMap;

    iget-wide v2, p0, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->mAttachedContext:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    sget-object v2, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->sUnusedTextures:Ljava/util/HashMap;

    iget-wide v3, p0, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->mAttachedContext:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized detachFromGLContext()V
    .locals 2
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        exceptionMode = "nsresult"
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->mTexName:I

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->mAttachedContext:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public finalize()V
    .locals 1

    iget-boolean v0, p0, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->mFinalized:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->mFinalized:Z

    invoke-super {p0}, Landroid/graphics/SurfaceTexture;->finalize()V

    return-void
.end method

.method public getHandle()I
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    iget v0, p0, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->mHandle:I

    return v0
.end method

.method public getTexName()I
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    iget v0, p0, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->mTexName:I

    return v0
.end method

.method public declared-synchronized incrementUse()V
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->mUseCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isAttachedToGLContext(J)Z
    .locals 2
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->mAttachedContext:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long p1, v0, p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isSingleBuffer()Z
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    iget-boolean v0, p0, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->mIsSingleBuffer:Z

    return v0
.end method

.method public declared-synchronized release()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->mUpstream:I

    iget-object v0, p0, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->mBlitter:Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture$NativeGLBlitHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture$NativeGLBlitHelper;->disposeNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    :try_start_1
    invoke-super {p0}, Landroid/graphics/SurfaceTexture;->release()V

    sget-object v0, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->sSurfaceTextures:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget v1, p0, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->mHandle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized releaseTexImage()V
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->mIsSingleBuffer:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-super {p0}, Landroid/graphics/SurfaceTexture;->releaseTexImage()V

    iget-object v0, p0, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->mListener:Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture$Callbacks;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture$Callbacks;->onReleaseTexImage()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setListener(Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture$Callbacks;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->mListener:Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture$Callbacks;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized takeSnapshot()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->mBlitter:Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture$NativeGLBlitHelper;

    invoke-virtual {v0}, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture$NativeGLBlitHelper;->blit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized track(I)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->mUpstream:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateTexImage()V
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->mUpstream:I

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/mozilla/gecko/gfx/SurfaceAllocator;->sync(I)V

    :cond_0
    invoke-super {p0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    iget-object v0, p0, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture;->mListener:Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture$Callbacks;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/mozilla/gecko/gfx/GeckoSurfaceTexture$Callbacks;->onUpdateTexImage()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    :cond_1
    :goto_0
    monitor-exit p0

    return-void
.end method
