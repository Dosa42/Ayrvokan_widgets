.class public final Lo1/x0;
.super Lo1/j0;
.source "SourceFile"


# instance fields
.field public final e:Z

.field public final f:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lo1/j0;-><init>(Landroid/os/Looper;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo1/x0;->f:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lo1/x0;->e:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    const-string v0, "Queued task: "

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lo1/j0;->b:Landroid/os/Handler;

    new-instance v2, Lo1/w0;

    invoke-direct {v2, p0, p2}, Lo1/w0;-><init>(Lo1/x0;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-boolean p2, p0, Lo1/x0;->e:Z

    if-eqz p2, :cond_0

    const-string p2, "sdf"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(Ljava/lang/Runnable;Ljava/lang/String;J)V
    .locals 3

    .line 1
    const-string v0, "Queued task: "

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lo1/j0;->b:Landroid/os/Handler;

    new-instance v2, Lo1/w0;

    invoke-direct {v2, p0, p1}, Lo1/w0;-><init>(Lo1/x0;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-boolean p1, p0, Lo1/x0;->e:Z

    if-eqz p1, :cond_0

    const-string p1, "sdf"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final d(Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lo1/x0;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo1/w0;

    iget-object v2, v1, Lo1/w0;->f:Ljava/lang/Runnable;

    if-ne v2, p1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object v2, p0, Lo1/j0;->b:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
