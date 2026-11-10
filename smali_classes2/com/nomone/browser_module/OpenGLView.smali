.class public Lcom/nomone/browser_module/OpenGLView;
.super Landroid/view/SurfaceView;
.source "SourceFile"


# static fields
.field public static final synthetic p:I


# instance fields
.field public a:Landroid/opengl/EGLDisplay;

.field public b:Landroid/opengl/EGLContext;

.field public c:Landroid/opengl/EGLSurface;

.field public d:Landroid/view/Choreographer;

.field public e:Lo1/s;

.field public f:Ljava/lang/ThreadGroup;

.field public g:Ljava/lang/Thread;

.field public final h:Ljava/util/ArrayList;

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public final n:Ljava/lang/Object;

.field public o:Lo1/u;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/nomone/browser_module/OpenGLView;->h:Ljava/util/ArrayList;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nomone/browser_module/OpenGLView;->n:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/nomone/browser_module/OpenGLView;->h:Ljava/util/ArrayList;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nomone/browser_module/OpenGLView;->n:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nomone/browser_module/OpenGLView;->h:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/nomone/browser_module/OpenGLView;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-boolean p1, p0, Lcom/nomone/browser_module/OpenGLView;->l:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/nomone/browser_module/OpenGLView;->k:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/nomone/browser_module/OpenGLView;->n:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    iget-object v0, p0, Lcom/nomone/browser_module/OpenGLView;->n:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-void

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public getGlThread()Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/nomone/browser_module/OpenGLView;->g:Ljava/lang/Thread;

    return-object v0
.end method

.method public setListener(Lo1/u;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nomone/browser_module/OpenGLView;->o:Lo1/u;

    return-void
.end method
