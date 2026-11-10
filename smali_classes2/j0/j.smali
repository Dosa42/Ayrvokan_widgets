.class public final Lj0/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf2/c0;
.implements Lt2/n;
.implements Ld3/h0;


# instance fields
.field public final synthetic d:I

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Lj0/j;->d:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ld3/v0;

    invoke-direct {p1}, Ld3/v0;-><init>()V

    invoke-direct {p0, p1}, Lj0/j;-><init>(Ld3/v0;)V

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lg1/a;->a:Lg1/a;

    iput-object p1, p0, Lj0/j;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ld3/v0;)V
    .locals 2

    const/4 v0, 0x7

    iput v0, p0, Lj0/j;->d:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ld3/o0;

    invoke-direct {v0}, Ld3/o0;-><init>()V

    iput-object v0, p0, Lj0/j;->e:Ljava/lang/Object;

    new-instance v0, Lh2/a;

    invoke-direct {v0}, Lh2/a;-><init>()V

    iput-object v0, p0, Lj0/j;->f:Ljava/lang/Object;

    new-instance v0, Ld3/x0;

    invoke-direct {v0}, Ld3/x0;-><init>()V

    iput-object v0, p0, Lj0/j;->i:Ljava/lang/Object;

    new-instance v0, Ld3/j0;

    iget-object v1, p0, Lj0/j;->i:Ljava/lang/Object;

    check-cast v1, Ld3/x0;

    invoke-direct {v0, v1}, Ld3/j0;-><init>(Ld3/x0;)V

    iput-object v0, p0, Lj0/j;->h:Ljava/lang/Object;

    iput-object p1, p0, Lj0/j;->g:Ljava/lang/Object;

    iget-object p1, p0, Lj0/j;->e:Ljava/lang/Object;

    check-cast p1, Ld3/o0;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p1, Ld3/o0;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lj0/k;Lg0/b;Lc/a;Lj0/q;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lj0/j;->d:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj0/j;->e:Ljava/lang/Object;

    const-string p1, "PLAY_BILLING_LIBRARY"

    iput-object p1, p0, Lj0/j;->f:Ljava/lang/Object;

    iput-object p2, p0, Lj0/j;->g:Ljava/lang/Object;

    iput-object p3, p0, Lj0/j;->h:Ljava/lang/Object;

    iput-object p4, p0, Lj0/j;->i:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljavax/microedition/khronos/egl/EGLContext;[I)V
    .locals 8

    const/4 v0, 0x6

    iput v0, p0, Lj0/j;->d:I

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lj0/j;->g:Ljava/lang/Object;

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lj0/j;->e:Ljava/lang/Object;

    .line 8
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v3

    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eq v3, v0, :cond_8

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lj0/j;->e:Ljava/lang/Object;

    check-cast v1, Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 9
    iput-object v3, p0, Lj0/j;->h:Ljava/lang/Object;

    const/4 v0, 0x1

    new-array v1, v0, [Ljavax/microedition/khronos/egl/EGLConfig;

    new-array v0, v0, [I

    .line 10
    iget-object v2, p0, Lj0/j;->e:Ljava/lang/Object;

    check-cast v2, Ljavax/microedition/khronos/egl/EGL10;

    const/4 v6, 0x1

    move-object v4, p2

    move-object v5, v1

    move-object v7, v0

    invoke-interface/range {v2 .. v7}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    aget v0, v0, v2

    if-lez v0, :cond_5

    aget-object v0, v1, v2

    if-eqz v0, :cond_4

    .line 11
    iput-object v0, p0, Lj0/j;->i:Ljava/lang/Object;

    invoke-static {p2}, Ld3/h0;->c([I)I

    move-result p2

    const-string v0, "EglBase10Impl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Using OpenGL ES version "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lj0/j;->h:Ljava/lang/Object;

    check-cast v0, Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v1, p0, Lj0/j;->i:Ljava/lang/Object;

    check-cast v1, Ljavax/microedition/khronos/egl/EGLConfig;

    if-eqz p1, :cond_1

    .line 12
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Invalid sharedContext"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/16 v2, 0x3098

    const/16 v3, 0x3038

    filled-new-array {v2, p2, v3}, [I

    move-result-object p2

    if-nez p1, :cond_2

    sget-object p1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    :cond_2
    sget-object v2, Ld3/h0;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lj0/j;->e:Ljava/lang/Object;

    check-cast v3, Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3, v0, v1, p1, p2}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-eq p1, p2, :cond_3

    .line 13
    iput-object p1, p0, Lj0/j;->f:Ljava/lang/Object;

    return-void

    .line 14
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Failed to create EGL context: 0x"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lj0/j;->e:Ljava/lang/Object;

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 15
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "eglChooseConfig returned null"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unable to find any matching EGL config"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "eglChooseConfig failed: 0x"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lj0/j;->e:Ljava/lang/Object;

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unable to initialize EGL10: 0x"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lj0/j;->e:Ljava/lang/Object;

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unable to get EGL10 display: 0x"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lj0/j;->e:Ljava/lang/Object;

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ly0/j0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lt1/b;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lj0/j;->d:I

    .line 17
    iput-object p1, p0, Lj0/j;->g:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lj0/j;->f:Ljava/lang/Object;

    iput-object p3, p0, Lj0/j;->e:Ljava/lang/Object;

    iput-object p4, p0, Lj0/j;->i:Ljava/lang/Object;

    iput-object p5, p0, Lj0/j;->h:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lj0/j;->h()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lj0/j;->g:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Ljavax/microedition/khronos/egl/EGLSurface;

    .line 7
    .line 8
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 9
    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    const/16 v0, 0x3038

    .line 13
    .line 14
    const/16 v1, 0x3057

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    const/16 v3, 0x3056

    .line 18
    .line 19
    filled-new-array {v1, v2, v3, v2, v0}, [I

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lj0/j;->e:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v1, Ljavax/microedition/khronos/egl/EGL10;

    .line 26
    .line 27
    iget-object v2, p0, Lj0/j;->h:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v2, Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 30
    .line 31
    iget-object v3, p0, Lj0/j;->i:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v3, Ljavax/microedition/khronos/egl/EGLConfig;

    .line 34
    .line 35
    invoke-interface {v1, v2, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lj0/j;->g:Ljava/lang/Object;

    .line 40
    .line 41
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 42
    .line 43
    if-eq v0, v1, :cond_0

    .line 44
    .line 45
    return-void

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 47
    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v2, "Failed to create pixel buffer surface with size 1x1: 0x"

    .line 51
    .line 52
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v2, p0, Lj0/j;->e:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v2, Ljavax/microedition/khronos/egl/EGL10;

    .line 58
    .line 59
    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw v0

    .line 78
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 79
    .line 80
    const-string v1, "Already has an EGLSurface"

    .line 81
    .line 82
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw v0
.end method

.method public final e()V
    .locals 7

    .line 1
    const-string v0, "eglMakeCurrent failed: 0x"

    invoke-virtual {p0}, Lj0/j;->h()V

    iget-object v1, p0, Lj0/j;->g:Ljava/lang/Object;

    check-cast v1, Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v1, v2, :cond_1

    sget-object v1, Ld3/h0;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lj0/j;->e:Ljava/lang/Object;

    check-cast v2, Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lj0/j;->h:Ljava/lang/Object;

    check-cast v3, Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lj0/j;->g:Ljava/lang/Object;

    move-object v5, v4

    check-cast v5, Ljavax/microedition/khronos/egl/EGLSurface;

    check-cast v4, Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v6, p0, Lj0/j;->f:Ljava/lang/Object;

    check-cast v6, Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v2, v3, v5, v4, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lj0/j;->e:Ljava/lang/Object;

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No EGLSurface - can\'t make current"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final f()Ld3/d0;
    .locals 2

    .line 1
    new-instance v0, Ld3/e0;

    iget-object v1, p0, Lj0/j;->f:Ljava/lang/Object;

    check-cast v1, Ljavax/microedition/khronos/egl/EGLContext;

    invoke-direct {v0, v1}, Ld3/e0;-><init>(Ljavax/microedition/khronos/egl/EGLContext;)V

    return-object v0
.end method

.method public final g()Ly0/c;
    .locals 7

    .line 1
    new-instance v6, Ly0/c;

    iget-object v0, p0, Lj0/j;->e:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/accounts/Account;

    iget-object v0, p0, Lj0/j;->i:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lf/c;

    iget-object v0, p0, Lj0/j;->f:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    iget-object v0, p0, Lj0/j;->h:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    iget-object v0, p0, Lj0/j;->g:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lg1/a;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ly0/c;-><init>(Landroid/accounts/Account;Lf/c;Ljava/lang/String;Ljava/lang/String;Lg1/a;)V

    return-object v6
.end method

.method public final h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lj0/j;->h:Ljava/lang/Object;

    check-cast v0, Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lj0/j;->f:Ljava/lang/Object;

    check-cast v0, Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lj0/j;->i:Ljava/lang/Object;

    check-cast v0, Ljavax/microedition/khronos/egl/EGLConfig;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This object has been released"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final i(ILf2/l0;Lt2/f;)Ly0/i;
    .locals 5

    .line 1
    invoke-virtual {p2}, Lf2/l0;->k()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p3, 0x0

    .line 8
    :cond_0
    iget-object v0, p0, Lj0/j;->f:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lb3/a;

    .line 11
    .line 12
    check-cast v0, Ly0/i;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lj0/j;->g:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Lf2/d0;

    .line 23
    .line 24
    check-cast v0, Lf2/n;

    .line 25
    .line 26
    iget-object v1, v0, Lf2/n;->p:Lf2/a0;

    .line 27
    .line 28
    iget-object v1, v1, Lf2/a0;->a:Lf2/l0;

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    const/4 v3, 0x0

    .line 32
    if-ne p2, v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0}, Lf2/n;->b()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-ne p1, v0, :cond_1

    .line 39
    .line 40
    move v0, v2

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    move v0, v3

    .line 43
    :goto_0
    if-eqz p3, :cond_5

    .line 44
    .line 45
    invoke-virtual {p3}, Lt2/f;->a()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_5

    .line 50
    .line 51
    if-eqz v0, :cond_4

    .line 52
    .line 53
    iget-object p1, p0, Lj0/j;->g:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast p1, Lf2/d0;

    .line 56
    .line 57
    check-cast p1, Lf2/n;

    .line 58
    .line 59
    invoke-virtual {p1}, Lf2/n;->g()Z

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    const/4 v0, -0x1

    .line 64
    if-eqz p2, :cond_2

    .line 65
    .line 66
    iget-object p1, p1, Lf2/n;->p:Lf2/a0;

    .line 67
    .line 68
    iget-object p1, p1, Lf2/a0;->b:Lt2/f;

    .line 69
    .line 70
    iget p1, p1, Lt2/f;->b:I

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    move p1, v0

    .line 74
    :goto_1
    iget p2, p3, Lt2/f;->b:I

    .line 75
    .line 76
    if-ne p1, p2, :cond_4

    .line 77
    .line 78
    iget-object p1, p0, Lj0/j;->g:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast p1, Lf2/d0;

    .line 81
    .line 82
    check-cast p1, Lf2/n;

    .line 83
    .line 84
    invoke-virtual {p1}, Lf2/n;->g()Z

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    if-eqz p2, :cond_3

    .line 89
    .line 90
    iget-object p1, p1, Lf2/n;->p:Lf2/a0;

    .line 91
    .line 92
    iget-object p1, p1, Lf2/a0;->b:Lt2/f;

    .line 93
    .line 94
    iget v0, p1, Lt2/f;->c:I

    .line 95
    .line 96
    :cond_3
    iget p1, p3, Lt2/f;->c:I

    .line 97
    .line 98
    if-ne v0, p1, :cond_4

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_4
    move v2, v3

    .line 102
    :goto_2
    if-eqz v2, :cond_a

    .line 103
    .line 104
    iget-object p1, p0, Lj0/j;->g:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast p1, Lf2/d0;

    .line 107
    .line 108
    check-cast p1, Lf2/n;

    .line 109
    .line 110
    invoke-virtual {p1}, Lf2/n;->a()J

    .line 111
    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_5
    if-eqz v0, :cond_8

    .line 115
    .line 116
    iget-object p1, p0, Lj0/j;->g:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast p1, Lf2/d0;

    .line 119
    .line 120
    check-cast p1, Lf2/n;

    .line 121
    .line 122
    invoke-virtual {p1}, Lf2/n;->g()Z

    .line 123
    .line 124
    .line 125
    move-result p2

    .line 126
    if-eqz p2, :cond_7

    .line 127
    .line 128
    iget-object p2, p1, Lf2/n;->p:Lf2/a0;

    .line 129
    .line 130
    iget-object p3, p2, Lf2/a0;->a:Lf2/l0;

    .line 131
    .line 132
    iget-object p2, p2, Lf2/a0;->b:Lt2/f;

    .line 133
    .line 134
    iget-object p2, p2, Lt2/f;->a:Ljava/lang/Object;

    .line 135
    .line 136
    iget-object v0, p1, Lf2/n;->g:Lf2/j0;

    .line 137
    .line 138
    invoke-virtual {p3, p2, v0}, Lf2/l0;->d(Ljava/lang/Object;Lf2/j0;)Lf2/j0;

    .line 139
    .line 140
    .line 141
    iget-object p2, p1, Lf2/n;->p:Lf2/a0;

    .line 142
    .line 143
    iget-wide v1, p2, Lf2/a0;->d:J

    .line 144
    .line 145
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    cmp-long p3, v1, v3

    .line 151
    .line 152
    if-nez p3, :cond_6

    .line 153
    .line 154
    iget-object p2, p2, Lf2/a0;->a:Lf2/l0;

    .line 155
    .line 156
    invoke-virtual {p1}, Lf2/n;->b()I

    .line 157
    .line 158
    .line 159
    move-result p3

    .line 160
    iget-object p1, p1, Lf2/n;->a:Lf2/k0;

    .line 161
    .line 162
    invoke-virtual {p2, p3, p1}, Lf2/l0;->h(ILf2/k0;)Lf2/k0;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    iget-wide p1, p1, Lf2/k0;->g:J

    .line 167
    .line 168
    invoke-static {p1, p2}, Lf2/d;->b(J)J

    .line 169
    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_6
    iget-wide p2, v0, Lf2/j0;->d:J

    .line 173
    .line 174
    invoke-static {p2, p3}, Lf2/d;->b(J)J

    .line 175
    .line 176
    .line 177
    iget-object p1, p1, Lf2/n;->p:Lf2/a0;

    .line 178
    .line 179
    iget-wide p1, p1, Lf2/a0;->d:J

    .line 180
    .line 181
    invoke-static {p1, p2}, Lf2/d;->b(J)J

    .line 182
    .line 183
    .line 184
    goto :goto_3

    .line 185
    :cond_7
    invoke-virtual {p1}, Lf2/n;->a()J

    .line 186
    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_8
    invoke-virtual {p2}, Lf2/l0;->k()Z

    .line 190
    .line 191
    .line 192
    move-result p3

    .line 193
    if-eqz p3, :cond_9

    .line 194
    .line 195
    goto :goto_3

    .line 196
    :cond_9
    iget-object p3, p0, Lj0/j;->i:Ljava/lang/Object;

    .line 197
    .line 198
    check-cast p3, Lf2/k0;

    .line 199
    .line 200
    invoke-virtual {p2, p1, p3}, Lf2/l0;->h(ILf2/k0;)Lf2/k0;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    iget-wide p1, p1, Lf2/k0;->g:J

    .line 205
    .line 206
    invoke-static {p1, p2}, Lf2/d;->b(J)J

    .line 207
    .line 208
    .line 209
    :cond_a
    :goto_3
    new-instance p1, Ly0/i;

    .line 210
    .line 211
    iget-object p2, p0, Lj0/j;->g:Ljava/lang/Object;

    .line 212
    .line 213
    check-cast p2, Lf2/d0;

    .line 214
    .line 215
    check-cast p2, Lf2/n;

    .line 216
    .line 217
    invoke-virtual {p2}, Lf2/n;->a()J

    .line 218
    .line 219
    .line 220
    iget-object p2, p0, Lj0/j;->g:Ljava/lang/Object;

    .line 221
    .line 222
    check-cast p2, Lf2/d0;

    .line 223
    .line 224
    check-cast p2, Lf2/n;

    .line 225
    .line 226
    iget-object p2, p2, Lf2/n;->p:Lf2/a0;

    .line 227
    .line 228
    iget-wide p2, p2, Lf2/a0;->l:J

    .line 229
    .line 230
    invoke-static {p2, p3}, Lf2/d;->b(J)J

    .line 231
    .line 232
    .line 233
    invoke-direct {p1}, Ly0/i;-><init>()V

    .line 234
    .line 235
    .line 236
    return-object p1
.end method

.method public final j(Lg2/a;)Ly0/i;
    .locals 9

    .line 1
    iget-object v0, p0, Lj0/j;->g:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lf2/d0;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    if-nez p1, :cond_6

    .line 9
    .line 10
    iget-object p1, p0, Lj0/j;->g:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p1, Lf2/d0;

    .line 13
    .line 14
    check-cast p1, Lf2/n;

    .line 15
    .line 16
    invoke-virtual {p1}, Lf2/n;->b()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iget-object v0, p0, Lj0/j;->h:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Lf0/w;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    const/4 v2, 0x0

    .line 26
    move v3, v1

    .line 27
    move-object v4, v2

    .line 28
    :goto_0
    iget-object v5, v0, Lf0/w;->b:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v5, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    if-ge v3, v6, :cond_2

    .line 37
    .line 38
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    check-cast v5, Lg2/a;

    .line 43
    .line 44
    iget-object v6, v0, Lf0/w;->h:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v6, Lf2/l0;

    .line 47
    .line 48
    iget-object v7, v5, Lg2/a;->a:Lt2/f;

    .line 49
    .line 50
    iget-object v7, v7, Lt2/f;->a:Ljava/lang/Object;

    .line 51
    .line 52
    invoke-virtual {v6, v7}, Lf2/l0;->a(Ljava/lang/Object;)I

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    const/4 v7, -0x1

    .line 57
    if-eq v6, v7, :cond_1

    .line 58
    .line 59
    iget-object v7, v0, Lf0/w;->h:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v7, Lf2/l0;

    .line 62
    .line 63
    iget-object v8, v0, Lf0/w;->d:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v8, Lf2/j0;

    .line 66
    .line 67
    invoke-virtual {v7, v6, v8, v1}, Lf2/l0;->c(ILf2/j0;Z)Lf2/j0;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    iget v6, v6, Lf2/j0;->b:I

    .line 72
    .line 73
    if-ne v6, p1, :cond_1

    .line 74
    .line 75
    if-eqz v4, :cond_0

    .line 76
    .line 77
    move-object v4, v2

    .line 78
    goto :goto_1

    .line 79
    :cond_0
    move-object v4, v5

    .line 80
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    :goto_1
    if-nez v4, :cond_5

    .line 84
    .line 85
    iget-object v0, p0, Lj0/j;->g:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v0, Lf2/d0;

    .line 88
    .line 89
    check-cast v0, Lf2/n;

    .line 90
    .line 91
    iget-object v0, v0, Lf2/n;->p:Lf2/a0;

    .line 92
    .line 93
    iget-object v0, v0, Lf2/a0;->a:Lf2/l0;

    .line 94
    .line 95
    invoke-virtual {v0}, Lf2/l0;->j()I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    if-ge p1, v3, :cond_3

    .line 100
    .line 101
    const/4 v1, 0x1

    .line 102
    :cond_3
    if-eqz v1, :cond_4

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_4
    sget-object v0, Lf2/l0;->a:Lf2/i0;

    .line 106
    .line 107
    :goto_2
    invoke-virtual {p0, p1, v0, v2}, Lj0/j;->i(ILf2/l0;Lt2/f;)Ly0/i;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    return-object p1

    .line 112
    :cond_5
    move-object p1, v4

    .line 113
    :cond_6
    iget-object v0, p1, Lg2/a;->a:Lt2/f;

    .line 114
    .line 115
    iget-object v1, p1, Lg2/a;->b:Lf2/l0;

    .line 116
    .line 117
    iget p1, p1, Lg2/a;->c:I

    .line 118
    .line 119
    invoke-virtual {p0, p1, v1, v0}, Lj0/j;->i(ILf2/l0;Lt2/f;)Ly0/i;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    return-object p1
.end method

.method public final k(ILt2/f;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lj0/j;->g:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lf2/d0;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    sget-object v0, Lf2/l0;->a:Lf2/i0;

    .line 9
    .line 10
    if-eqz p2, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lj0/j;->h:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Lf0/w;

    .line 15
    .line 16
    iget-object v1, v1, Lf0/w;->c:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lg2/a;

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Lj0/j;->j(Lg2/a;)Ly0/i;

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p0, p1, v0, p2}, Lj0/j;->i(ILf2/l0;Lt2/f;)Ly0/i;

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void

    .line 36
    :cond_1
    iget-object p2, p0, Lj0/j;->g:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p2, Lf2/d0;

    .line 39
    .line 40
    check-cast p2, Lf2/n;

    .line 41
    .line 42
    iget-object p2, p2, Lf2/n;->p:Lf2/a0;

    .line 43
    .line 44
    iget-object p2, p2, Lf2/a0;->a:Lf2/l0;

    .line 45
    .line 46
    invoke-virtual {p2}, Lf2/l0;->j()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-ge p1, v1, :cond_2

    .line 51
    .line 52
    const/4 v1, 0x1

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    const/4 v1, 0x0

    .line 55
    :goto_1
    if-eqz v1, :cond_3

    .line 56
    .line 57
    move-object v0, p2

    .line 58
    :cond_3
    const/4 p2, 0x0

    .line 59
    invoke-virtual {p0, p1, v0, p2}, Lj0/j;->i(ILf2/l0;Lt2/f;)Ly0/i;

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final l()V
    .locals 3

    .line 1
    iget-object v0, p0, Lj0/j;->h:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lf0/w;

    .line 4
    .line 5
    iget-object v1, v0, Lf0/w;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    iget-object v2, v0, Lf0/w;->h:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v2, Lf2/l0;

    .line 18
    .line 19
    invoke-virtual {v2}, Lf2/l0;->k()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    iget-boolean v0, v0, Lf0/w;->a:Z

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lg2/a;

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 39
    :goto_1
    invoke-virtual {p0, v0}, Lj0/j;->j(Lg2/a;)Ly0/i;

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final m(Lg0/a;)V
    .locals 9

    .line 1
    new-instance v3, Lh0/c;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-direct {v3, v0}, Lh0/c;-><init>(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lj0/j;->i:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lj0/q;

    .line 10
    .line 11
    new-instance v1, Lj0/j;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v1, v2}, Lj0/j;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lj0/j;->e:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v2, Lj0/k;

    .line 20
    .line 21
    if-eqz v2, :cond_4

    .line 22
    .line 23
    iput-object v2, v1, Lj0/j;->e:Ljava/lang/Object;

    .line 24
    .line 25
    iput-object p1, v1, Lj0/j;->i:Ljava/lang/Object;

    .line 26
    .line 27
    iget-object p1, p0, Lj0/j;->f:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p1, Ljava/lang/String;

    .line 30
    .line 31
    if-eqz p1, :cond_3

    .line 32
    .line 33
    iput-object p1, v1, Lj0/j;->f:Ljava/lang/Object;

    .line 34
    .line 35
    iget-object p1, p0, Lj0/j;->h:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p1, Lc/a;

    .line 38
    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    iput-object p1, v1, Lj0/j;->h:Ljava/lang/Object;

    .line 42
    .line 43
    iget-object p1, p0, Lj0/j;->g:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p1, Lg0/b;

    .line 46
    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    iput-object p1, v1, Lj0/j;->g:Ljava/lang/Object;

    .line 50
    .line 51
    const-string p1, ""

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_0

    .line 58
    .line 59
    iget-object p1, v1, Lj0/j;->e:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast p1, Lj0/k;

    .line 62
    .line 63
    iget-object v2, v1, Lj0/j;->f:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v2, Ljava/lang/String;

    .line 66
    .line 67
    iget-object v4, v1, Lj0/j;->i:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v4, Lg0/a;

    .line 70
    .line 71
    iget-object v5, v1, Lj0/j;->h:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v5, Lc/a;

    .line 74
    .line 75
    iget-object v1, v1, Lj0/j;->g:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v1, Lg0/b;

    .line 78
    .line 79
    check-cast v0, Lj0/r;

    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    sget-object v6, Lg0/c;->a:Lg0/c;

    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    invoke-static {}, Lj0/k;->a()Lf0/k;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    iget-object v8, p1, Lj0/k;->a:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v7, v8}, Lf0/k;->k(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v7, v6}, Lf0/k;->l(Lg0/c;)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p1, Lj0/k;->b:[B

    .line 105
    .line 106
    iput-object p1, v7, Lf0/k;->h:Ljava/lang/Object;

    .line 107
    .line 108
    invoke-virtual {v7}, Lf0/k;->b()Lj0/k;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    new-instance v6, Lj0/h;

    .line 113
    .line 114
    invoke-direct {v6}, Lj0/h;-><init>()V

    .line 115
    .line 116
    .line 117
    new-instance v7, Ljava/util/HashMap;

    .line 118
    .line 119
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 120
    .line 121
    .line 122
    iput-object v7, v6, Lj0/h;->g:Ljava/lang/Object;

    .line 123
    .line 124
    iget-object v7, v0, Lj0/r;->a:Lr0/a;

    .line 125
    .line 126
    check-cast v7, Lr0/b;

    .line 127
    .line 128
    invoke-virtual {v7}, Lr0/b;->a()J

    .line 129
    .line 130
    .line 131
    move-result-wide v7

    .line 132
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 133
    .line 134
    .line 135
    move-result-object v7

    .line 136
    iput-object v7, v6, Lj0/h;->e:Ljava/lang/Object;

    .line 137
    .line 138
    iget-object v7, v0, Lj0/r;->b:Lr0/a;

    .line 139
    .line 140
    check-cast v7, Lr0/b;

    .line 141
    .line 142
    invoke-virtual {v7}, Lr0/b;->a()J

    .line 143
    .line 144
    .line 145
    move-result-wide v7

    .line 146
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 147
    .line 148
    .line 149
    move-result-object v7

    .line 150
    iput-object v7, v6, Lj0/h;->f:Ljava/lang/Object;

    .line 151
    .line 152
    invoke-virtual {v6, v2}, Lj0/h;->f(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    new-instance v2, Lj0/n;

    .line 156
    .line 157
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    iget-object v4, v4, Lg0/a;->a:Ljava/lang/Object;

    .line 161
    .line 162
    check-cast v4, Lcom/google/android/gms/internal/play_billing/d3;

    .line 163
    .line 164
    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/r;->b()[B

    .line 165
    .line 166
    .line 167
    move-result-object v4

    .line 168
    invoke-direct {v2, v1, v4}, Lj0/n;-><init>(Lg0/b;[B)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v6, v2}, Lj0/h;->e(Lj0/n;)V

    .line 172
    .line 173
    .line 174
    const/4 v1, 0x0

    .line 175
    iput-object v1, v6, Lj0/h;->c:Ljava/lang/Object;

    .line 176
    .line 177
    invoke-virtual {v6}, Lj0/h;->b()Lj0/i;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    iget-object v0, v0, Lj0/r;->c:Ln0/d;

    .line 182
    .line 183
    move-object v6, v0

    .line 184
    check-cast v6, Ln0/c;

    .line 185
    .line 186
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    .line 188
    .line 189
    new-instance v7, Ln0/a;

    .line 190
    .line 191
    const/4 v5, 0x0

    .line 192
    move-object v0, v7

    .line 193
    move-object v1, v6

    .line 194
    move-object v2, p1

    .line 195
    invoke-direct/range {v0 .. v5}, Ln0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 196
    .line 197
    .line 198
    iget-object p1, v6, Ln0/c;->b:Ljava/util/concurrent/Executor;

    .line 199
    .line 200
    invoke-interface {p1, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 201
    .line 202
    .line 203
    return-void

    .line 204
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 205
    .line 206
    const-string v1, "Missing required properties:"

    .line 207
    .line 208
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    throw v0

    .line 216
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 217
    .line 218
    const-string v0, "Null encoding"

    .line 219
    .line 220
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    throw p1

    .line 224
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    .line 225
    .line 226
    const-string v0, "Null transformer"

    .line 227
    .line 228
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    throw p1

    .line 232
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    .line 233
    .line 234
    const-string v0, "Null transportName"

    .line 235
    .line 236
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    throw p1

    .line 240
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    .line 241
    .line 242
    const-string v0, "Null transportContext"

    .line 243
    .line 244
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    throw p1
.end method

.method public final onDownstreamFormatChanged(ILt2/f;Lt2/m;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lj0/j;->k(ILt2/f;)V

    iget-object p1, p0, Lj0/j;->e:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, La1/b;->j(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final onIsPlayingChanged(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lj0/j;->l()V

    iget-object p1, p0, Lj0/j;->e:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, La1/b;->j(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final onLoadCanceled(ILt2/f;Lt2/l;Lt2/m;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lj0/j;->k(ILt2/f;)V

    iget-object p1, p0, Lj0/j;->e:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, La1/b;->j(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final onLoadCompleted(ILt2/f;Lt2/l;Lt2/m;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lj0/j;->k(ILt2/f;)V

    iget-object p1, p0, Lj0/j;->e:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, La1/b;->j(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final onLoadError(ILt2/f;Lt2/l;Lt2/m;Ljava/io/IOException;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lj0/j;->k(ILt2/f;)V

    iget-object p1, p0, Lj0/j;->e:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, La1/b;->j(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final onLoadStarted(ILt2/f;Lt2/l;Lt2/m;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lj0/j;->k(ILt2/f;)V

    iget-object p1, p0, Lj0/j;->e:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, La1/b;->j(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final onLoadingChanged(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lj0/j;->l()V

    iget-object p1, p0, Lj0/j;->e:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, La1/b;->j(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final onMediaPeriodCreated(ILt2/f;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lj0/j;->h:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lf0/w;

    .line 4
    .line 5
    iget-object v1, v0, Lf0/w;->h:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lf2/l0;

    .line 8
    .line 9
    iget-object v2, p2, Lt2/f;->a:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Lf2/l0;->a(Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, -0x1

    .line 16
    const/4 v3, 0x1

    .line 17
    const/4 v4, 0x0

    .line 18
    if-eq v1, v2, :cond_0

    .line 19
    .line 20
    move v2, v3

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v2, v4

    .line 23
    :goto_0
    new-instance v5, Lg2/a;

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    iget-object v6, v0, Lf0/w;->h:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v6, Lf2/l0;

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    sget-object v6, Lf2/l0;->a:Lf2/i0;

    .line 33
    .line 34
    :goto_1
    if-eqz v2, :cond_2

    .line 35
    .line 36
    iget-object v2, v0, Lf0/w;->h:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v2, Lf2/l0;

    .line 39
    .line 40
    iget-object v7, v0, Lf0/w;->d:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v7, Lf2/j0;

    .line 43
    .line 44
    invoke-virtual {v2, v1, v7, v4}, Lf2/l0;->c(ILf2/j0;Z)Lf2/j0;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iget v1, v1, Lf2/j0;->b:I

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    move v1, p1

    .line 52
    :goto_2
    invoke-direct {v5, v1, v6, p2}, Lg2/a;-><init>(ILf2/l0;Lt2/f;)V

    .line 53
    .line 54
    .line 55
    iget-object v1, v0, Lf0/w;->b:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v1, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    iget-object v2, v0, Lf0/w;->c:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v2, Ljava/util/HashMap;

    .line 65
    .line 66
    invoke-virtual {v2, p2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    check-cast v2, Lg2/a;

    .line 74
    .line 75
    iput-object v2, v0, Lf0/w;->e:Ljava/lang/Object;

    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-ne v1, v3, :cond_3

    .line 82
    .line 83
    iget-object v1, v0, Lf0/w;->h:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v1, Lf2/l0;

    .line 86
    .line 87
    invoke-virtual {v1}, Lf2/l0;->k()Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-nez v1, :cond_3

    .line 92
    .line 93
    iget-object v1, v0, Lf0/w;->e:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v1, Lg2/a;

    .line 96
    .line 97
    iput-object v1, v0, Lf0/w;->f:Ljava/lang/Object;

    .line 98
    .line 99
    :cond_3
    invoke-virtual {p0, p1, p2}, Lj0/j;->k(ILt2/f;)V

    .line 100
    .line 101
    .line 102
    iget-object p1, p0, Lj0/j;->e:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 105
    .line 106
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    .line 112
    .line 113
    move-result p2

    .line 114
    if-nez p2, :cond_4

    .line 115
    .line 116
    return-void

    .line 117
    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-static {p1}, La1/b;->j(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    const/4 p1, 0x0

    .line 125
    throw p1
.end method

.method public final onMediaPeriodReleased(ILt2/f;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1, p2}, Lj0/j;->k(ILt2/f;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lj0/j;->h:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast p1, Lf0/w;

    .line 7
    .line 8
    iget-object v0, p1, Lf0/w;->c:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lg2/a;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    const/4 v2, 0x0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    iget-object v3, p1, Lf0/w;->b:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v3, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    iget-object v0, p1, Lf0/w;->g:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, Lg2/a;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    iget-object v0, v0, Lg2/a;->a:Lt2/f;

    .line 37
    .line 38
    invoke-virtual {p2, v0}, Lt2/f;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    if-eqz p2, :cond_2

    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    if-eqz p2, :cond_1

    .line 49
    .line 50
    move-object p2, v1

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    check-cast p2, Lg2/a;

    .line 57
    .line 58
    :goto_0
    iput-object p2, p1, Lf0/w;->g:Ljava/lang/Object;

    .line 59
    .line 60
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    if-nez p2, :cond_3

    .line 65
    .line 66
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    check-cast p2, Lg2/a;

    .line 71
    .line 72
    iput-object p2, p1, Lf0/w;->e:Ljava/lang/Object;

    .line 73
    .line 74
    :cond_3
    const/4 v2, 0x1

    .line 75
    :goto_1
    if-eqz v2, :cond_5

    .line 76
    .line 77
    iget-object p1, p0, Lj0/j;->e:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    if-nez p2, :cond_4

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-static {p1}, La1/b;->j(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    throw v1

    .line 100
    :cond_5
    :goto_2
    return-void
.end method

.method public final onPlaybackParametersChanged(Lf2/b0;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lj0/j;->l()V

    iget-object p1, p0, Lj0/j;->e:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, La1/b;->j(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final onPlaybackSuppressionReasonChanged(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lj0/j;->l()V

    iget-object p1, p0, Lj0/j;->e:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, La1/b;->j(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final onPlayerError(Lf2/h;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lj0/j;->h:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Lf0/w;

    .line 4
    .line 5
    iget-object p1, p1, Lf0/w;->f:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p1, Lg2/a;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lj0/j;->j(Lg2/a;)Ly0/i;

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lj0/j;->e:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1}, La1/b;->j(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    throw p1
.end method

.method public final onPlayerStateChanged(ZI)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lj0/j;->l()V

    iget-object p1, p0, Lj0/j;->e:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, La1/b;->j(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final onPositionDiscontinuity(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lj0/j;->h:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Lf0/w;

    .line 4
    .line 5
    iget-object v0, p1, Lf0/w;->e:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Lg2/a;

    .line 8
    .line 9
    iput-object v0, p1, Lf0/w;->f:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0}, Lj0/j;->l()V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lj0/j;->e:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {p1}, La1/b;->j(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    throw p1
.end method

.method public final onReadingStarted(ILt2/f;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lj0/j;->h:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lf0/w;

    .line 4
    .line 5
    iget-object v1, v0, Lf0/w;->c:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lg2/a;

    .line 14
    .line 15
    iput-object v1, v0, Lf0/w;->g:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-virtual {p0, p1, p2}, Lj0/j;->k(ILt2/f;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lj0/j;->e:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-nez p2, :cond_0

    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p1}, La1/b;->j(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    const/4 p1, 0x0

    .line 43
    throw p1
.end method

.method public final onSeekProcessed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lj0/j;->h:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lf0/w;

    .line 4
    .line 5
    iget-boolean v1, v0, Lf0/w;->a:Z

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-boolean v1, v0, Lf0/w;->a:Z

    .line 11
    .line 12
    iget-object v1, v0, Lf0/w;->e:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Lg2/a;

    .line 15
    .line 16
    iput-object v1, v0, Lf0/w;->f:Ljava/lang/Object;

    .line 17
    .line 18
    invoke-virtual {p0}, Lj0/j;->l()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lj0/j;->e:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, La1/b;->j(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    throw v0

    .line 45
    :cond_1
    :goto_0
    return-void
.end method

.method public final onTimelineChanged(Lf2/l0;I)V
    .locals 4

    .line 1
    iget-object p2, p0, Lj0/j;->h:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p2, Lf0/w;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v1, p2, Lf0/w;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-ge v0, v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lg2/a;

    .line 21
    .line 22
    invoke-virtual {p2, v2, p1}, Lf0/w;->a(Lg2/a;Lf2/l0;)Lg2/a;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    iget-object v1, p2, Lf0/w;->c:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v1, Ljava/util/HashMap;

    .line 32
    .line 33
    iget-object v3, v2, Lg2/a;->a:Lt2/f;

    .line 34
    .line 35
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    add-int/lit8 v0, v0, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object v0, p2, Lf0/w;->g:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v0, Lg2/a;

    .line 44
    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    invoke-virtual {p2, v0, p1}, Lf0/w;->a(Lg2/a;Lf2/l0;)Lg2/a;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p2, Lf0/w;->g:Ljava/lang/Object;

    .line 52
    .line 53
    :cond_1
    iput-object p1, p2, Lf0/w;->h:Ljava/lang/Object;

    .line 54
    .line 55
    iget-object p1, p2, Lf0/w;->e:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast p1, Lg2/a;

    .line 58
    .line 59
    iput-object p1, p2, Lf0/w;->f:Ljava/lang/Object;

    .line 60
    .line 61
    invoke-virtual {p0}, Lj0/j;->l()V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lj0/j;->e:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    if-nez p2, :cond_2

    .line 77
    .line 78
    return-void

    .line 79
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-static {p1}, La1/b;->j(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    const/4 p1, 0x0

    .line 87
    throw p1
.end method

.method public final onTracksChanged(Lt2/x;Lz2/q;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lj0/j;->l()V

    iget-object p1, p0, Lj0/j;->e:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, La1/b;->j(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final release()V
    .locals 7

    .line 1
    iget v0, p0, Lj0/j;->d:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :pswitch_0
    invoke-virtual {p0}, Lj0/j;->h()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lj0/j;->g:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Ljavax/microedition/khronos/egl/EGLSurface;

    .line 14
    .line 15
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 16
    .line 17
    if-eq v0, v2, :cond_0

    .line 18
    .line 19
    iget-object v2, p0, Lj0/j;->e:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v2, Ljavax/microedition/khronos/egl/EGL10;

    .line 22
    .line 23
    iget-object v3, p0, Lj0/j;->h:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v3, Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 26
    .line 27
    invoke-interface {v2, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 28
    .line 29
    .line 30
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 31
    .line 32
    iput-object v0, p0, Lj0/j;->g:Ljava/lang/Object;

    .line 33
    .line 34
    :cond_0
    const-string v0, "eglDetachCurrent failed: 0x"

    .line 35
    .line 36
    sget-object v2, Ld3/h0;->a:Ljava/lang/Object;

    .line 37
    .line 38
    monitor-enter v2

    .line 39
    :try_start_0
    iget-object v3, p0, Lj0/j;->e:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v3, Ljavax/microedition/khronos/egl/EGL10;

    .line 42
    .line 43
    iget-object v4, p0, Lj0/j;->h:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v4, Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 46
    .line 47
    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 48
    .line 49
    sget-object v6, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 50
    .line 51
    invoke-interface {v3, v4, v5, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_1

    .line 56
    .line 57
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    iget-object v0, p0, Lj0/j;->e:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    .line 61
    .line 62
    iget-object v2, p0, Lj0/j;->h:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v2, Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 65
    .line 66
    iget-object v3, p0, Lj0/j;->f:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v3, Ljavax/microedition/khronos/egl/EGLContext;

    .line 69
    .line 70
    invoke-interface {v0, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lj0/j;->e:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    .line 76
    .line 77
    iget-object v2, p0, Lj0/j;->h:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v2, Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 80
    .line 81
    invoke-interface {v0, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 82
    .line 83
    .line 84
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 85
    .line 86
    iput-object v0, p0, Lj0/j;->f:Ljava/lang/Object;

    .line 87
    .line 88
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 89
    .line 90
    iput-object v0, p0, Lj0/j;->h:Ljava/lang/Object;

    .line 91
    .line 92
    iput-object v1, p0, Lj0/j;->i:Ljava/lang/Object;

    .line 93
    .line 94
    return-void

    .line 95
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    .line 96
    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lj0/j;->e:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    .line 105
    .line 106
    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw v1

    .line 125
    :catchall_0
    move-exception v0

    .line 126
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    throw v0

    .line 128
    :goto_0
    iget-object v0, p0, Lj0/j;->e:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast v0, Ld3/o0;

    .line 131
    .line 132
    invoke-virtual {v0}, Ld3/o0;->a()V

    .line 133
    .line 134
    .line 135
    iget-object v0, p0, Lj0/j;->h:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast v0, Ld3/j0;

    .line 138
    .line 139
    iget-object v2, v0, Ld3/j0;->c:La3/r;

    .line 140
    .line 141
    const/4 v3, 0x0

    .line 142
    if-eqz v2, :cond_3

    .line 143
    .line 144
    const-string v4, "GlShader"

    .line 145
    .line 146
    const-string v5, "Deleting shader."

    .line 147
    .line 148
    invoke-static {v4, v5}, Lorg/webrtc/Logging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    iget v4, v2, La3/r;->a:I

    .line 152
    .line 153
    const/4 v5, -0x1

    .line 154
    if-eq v4, v5, :cond_2

    .line 155
    .line 156
    invoke-static {v4}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 157
    .line 158
    .line 159
    iput v5, v2, La3/r;->a:I

    .line 160
    .line 161
    :cond_2
    iput-object v1, v0, Ld3/j0;->c:La3/r;

    .line 162
    .line 163
    iput v3, v0, Ld3/j0;->b:I

    .line 164
    .line 165
    :cond_3
    iget-object v0, p0, Lj0/j;->f:Ljava/lang/Object;

    .line 166
    .line 167
    check-cast v0, Lh2/a;

    .line 168
    .line 169
    iget v2, v0, Lh2/a;->c:I

    .line 170
    .line 171
    filled-new-array {v2}, [I

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    const/4 v4, 0x1

    .line 176
    invoke-static {v4, v2, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 177
    .line 178
    .line 179
    iput v3, v0, Lh2/a;->c:I

    .line 180
    .line 181
    iget v2, v0, Lh2/a;->b:I

    .line 182
    .line 183
    filled-new-array {v2}, [I

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    invoke-static {v4, v2, v3}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 188
    .line 189
    .line 190
    iput v3, v0, Lh2/a;->b:I

    .line 191
    .line 192
    iput v3, v0, Lh2/a;->d:I

    .line 193
    .line 194
    iput v3, v0, Lh2/a;->e:I

    .line 195
    .line 196
    iget-object v0, p0, Lj0/j;->g:Ljava/lang/Object;

    .line 197
    .line 198
    check-cast v0, Ld3/v0;

    .line 199
    .line 200
    iget-object v0, v0, Ld3/v0;->a:Ln2/a0;

    .line 201
    .line 202
    invoke-virtual {v0}, Ln2/a0;->d()V

    .line 203
    .line 204
    .line 205
    iget-object v0, p0, Lj0/j;->e:Ljava/lang/Object;

    .line 206
    .line 207
    check-cast v0, Ld3/o0;

    .line 208
    .line 209
    iput-object v1, v0, Ld3/o0;->g:Ljava/lang/Object;

    .line 210
    .line 211
    return-void

    .line 212
    nop

    .line 213
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method
