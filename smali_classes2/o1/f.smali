.class public final Lo1/f;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public f:Landroid/os/Handler;

.field public g:Landroid/os/Looper;

.field public final h:Ljava/util/concurrent/CyclicBarrier;


# direct methods
.method public constructor <init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    new-instance p1, Ljava/util/concurrent/CyclicBarrier;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Ljava/util/concurrent/CyclicBarrier;-><init>(I)V

    iput-object p1, p0, Lo1/f;->h:Ljava/util/concurrent/CyclicBarrier;

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setPriority(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo1/f;->f:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final run()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->prepare()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lo1/f;->g:Landroid/os/Looper;

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lo1/f;->g:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lo1/f;->f:Landroid/os/Handler;

    :try_start_0
    iget-object v0, p0, Lo1/f;->h:Ljava/util/concurrent/CyclicBarrier;

    invoke-virtual {v0}, Ljava/util/concurrent/CyclicBarrier;->await()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method

.method public final start()V
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->start()V

    :try_start_0
    iget-object v0, p0, Lo1/f;->h:Ljava/util/concurrent/CyclicBarrier;

    invoke-virtual {v0}, Ljava/util/concurrent/CyclicBarrier;->await()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
