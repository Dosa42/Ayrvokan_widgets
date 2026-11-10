.class public final Lq1/c;
.super Lo1/j0;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lq1/f;


# direct methods
.method public constructor <init>(Lq1/f;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq1/c;->e:Lq1/f;

    invoke-direct {p0, p2}, Lo1/j0;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lq1/c;->e:Lq1/f;

    .line 2
    .line 3
    iget-object v0, p1, Lq1/f;->n:Ljava/util/ArrayList;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p1, p1, Lq1/f;->n:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p1
.end method

.method public final c(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lq1/c;->e:Lq1/f;

    .line 2
    .line 3
    iget-object v1, v0, Lq1/f;->n:Ljava/util/ArrayList;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v0, v0, Lq1/f;->n:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    monitor-exit v1

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p1
.end method

.method public final d(Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lo1/j0;->b:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lo1/j0;->c:Ljava/util/ArrayList;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lo1/j0;->d:Ljava/util/ArrayList;

    .line 10
    .line 11
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 12
    :try_start_1
    iget-object v2, p0, Lo1/j0;->c:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lo1/j0;->d:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 23
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 24
    iget-object v0, p0, Lq1/c;->e:Lq1/f;

    .line 25
    .line 26
    iget-object v1, v0, Lq1/f;->n:Ljava/util/ArrayList;

    .line 27
    .line 28
    monitor-enter v1

    .line 29
    :try_start_3
    iget-object v0, v0, Lq1/f;->n:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    monitor-exit v1

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 38
    throw p1

    .line 39
    :catchall_1
    move-exception p1

    .line 40
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 41
    :try_start_5
    throw p1

    .line 42
    :catchall_2
    move-exception p1

    .line 43
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 44
    throw p1
.end method
