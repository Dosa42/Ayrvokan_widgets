.class public final synthetic Lo1/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Lcom/nomone/browser_module/OpenGLView;


# direct methods
.method public synthetic constructor <init>(Lcom/nomone/browser_module/OpenGLView;I)V
    .locals 0

    .line 1
    iput p2, p0, Lo1/t;->f:I

    .line 2
    .line 3
    iput-object p1, p0, Lo1/t;->g:Lcom/nomone/browser_module/OpenGLView;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lo1/t;->f:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lo1/t;->g:Lcom/nomone/browser_module/OpenGLView;

    .line 8
    .line 9
    iget-object v1, v0, Lcom/nomone/browser_module/OpenGLView;->a:Landroid/opengl/EGLDisplay;

    .line 10
    .line 11
    iget-object v2, v0, Lcom/nomone/browser_module/OpenGLView;->c:Landroid/opengl/EGLSurface;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/nomone/browser_module/OpenGLView;->b:Landroid/opengl/EGLContext;

    .line 14
    .line 15
    invoke-static {v1, v2, v2, v0}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :goto_0
    iget-object v0, p0, Lo1/t;->g:Lcom/nomone/browser_module/OpenGLView;

    .line 20
    .line 21
    :cond_0
    iget-object v1, v0, Lcom/nomone/browser_module/OpenGLView;->n:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter v1

    .line 24
    :cond_1
    :try_start_0
    iget-object v2, v0, Lcom/nomone/browser_module/OpenGLView;->h:Ljava/util/ArrayList;

    .line 25
    .line 26
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :try_start_1
    iget-object v3, v0, Lcom/nomone/browser_module/OpenGLView;->h:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_2

    .line 38
    .line 39
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    check-cast v4, Ljava/lang/Runnable;

    .line 44
    .line 45
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    iget-object v3, v0, Lcom/nomone/browser_module/OpenGLView;->h:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 52
    .line 53
    .line 54
    const/4 v3, 0x1

    .line 55
    iput-boolean v3, v0, Lcom/nomone/browser_module/OpenGLView;->l:Z

    .line 56
    .line 57
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    :try_start_2
    iget-object v2, v0, Lcom/nomone/browser_module/OpenGLView;->n:Ljava/lang/Object;

    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 61
    .line 62
    .line 63
    :catch_0
    const/4 v2, 0x0

    .line 64
    :try_start_3
    iput-boolean v2, v0, Lcom/nomone/browser_module/OpenGLView;->l:Z

    .line 65
    .line 66
    iget-boolean v3, v0, Lcom/nomone/browser_module/OpenGLView;->i:Z

    .line 67
    .line 68
    if-eqz v3, :cond_3

    .line 69
    .line 70
    iget-boolean v4, v0, Lcom/nomone/browser_module/OpenGLView;->k:Z

    .line 71
    .line 72
    if-eqz v4, :cond_1

    .line 73
    .line 74
    :cond_3
    iput-boolean v2, v0, Lcom/nomone/browser_module/OpenGLView;->k:Z

    .line 75
    .line 76
    iput-boolean v2, v0, Lcom/nomone/browser_module/OpenGLView;->j:Z

    .line 77
    .line 78
    if-eqz v3, :cond_4

    .line 79
    .line 80
    iget-object v2, v0, Lcom/nomone/browser_module/OpenGLView;->o:Lo1/u;

    .line 81
    .line 82
    if-eqz v2, :cond_4

    .line 83
    .line 84
    check-cast v2, Lq1/e;

    .line 85
    .line 86
    invoke-virtual {v2}, Lq1/e;->b()V

    .line 87
    .line 88
    .line 89
    iget-object v2, v0, Lcom/nomone/browser_module/OpenGLView;->a:Landroid/opengl/EGLDisplay;

    .line 90
    .line 91
    iget-object v3, v0, Lcom/nomone/browser_module/OpenGLView;->c:Landroid/opengl/EGLSurface;

    .line 92
    .line 93
    invoke-static {v2, v3}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 94
    .line 95
    .line 96
    :cond_4
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 97
    iget-boolean v1, v0, Lcom/nomone/browser_module/OpenGLView;->i:Z

    .line 98
    .line 99
    if-nez v1, :cond_0

    .line 100
    .line 101
    const-string v0, "sdf"

    .line 102
    .line 103
    const-string v1, "GLThread concluded..."

    .line 104
    .line 105
    invoke-static {v0, v1}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :catchall_0
    move-exception v0

    .line 110
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 111
    :try_start_5
    throw v0

    .line 112
    :catchall_1
    move-exception v0

    .line 113
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 114
    throw v0

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
