.class final Lorg/mozilla/gecko/gfx/VsyncSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# static fields
.field private static final INSTANCE:Lorg/mozilla/gecko/gfx/VsyncSource;
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field private static final LOGTAG:Ljava/lang/String; = "GeckoVsyncSource"


# instance fields
.field mChoreographer:Landroid/view/Choreographer;

.field private volatile mObservingVsync:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/mozilla/gecko/gfx/VsyncSource;

    invoke-direct {v0}, Lorg/mozilla/gecko/gfx/VsyncSource;-><init>()V

    sput-object v0, Lorg/mozilla/gecko/gfx/VsyncSource;->INSTANCE:Lorg/mozilla/gecko/gfx/VsyncSource;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lorg/mozilla/gecko/gfx/VsyncSource$1;

    invoke-direct {v1, p0}, Lorg/mozilla/gecko/gfx/VsyncSource$1;-><init>(Lorg/mozilla/gecko/gfx/VsyncSource;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic access$000(Lorg/mozilla/gecko/gfx/VsyncSource;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/mozilla/gecko/gfx/VsyncSource;->mObservingVsync:Z

    return p0
.end method

.method private static native nativeNotifyVsync()V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        stubName = "NotifyVsync"
    .end annotation
.end method


# virtual methods
.method public doFrame(J)V
    .locals 0

    iget-boolean p1, p0, Lorg/mozilla/gecko/gfx/VsyncSource;->mObservingVsync:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/mozilla/gecko/gfx/VsyncSource;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    invoke-static {}, Lorg/mozilla/gecko/gfx/VsyncSource;->nativeNotifyVsync()V

    :cond_0
    return-void
.end method

.method public getRefreshRate()F
    .locals 2
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    return v0
.end method

.method public declared-synchronized observeVsync(Z)Z
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/mozilla/gecko/gfx/VsyncSource;->mObservingVsync:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lorg/mozilla/gecko/gfx/VsyncSource;->mObservingVsync:Z

    iget-object v0, p0, Lorg/mozilla/gecko/gfx/VsyncSource;->mChoreographer:Landroid/view/Choreographer;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_1
    :goto_0
    iget-boolean p1, p0, Lorg/mozilla/gecko/gfx/VsyncSource;->mObservingVsync:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
