.class public final Lx0/x;
.super Lx0/s;
.source "SourceFile"


# instance fields
.field public final b:Lf0/d;

.field public final c:Li1/b;

.field public final d:Lc/a;


# direct methods
.method public constructor <init>(Lf0/d;Li1/b;Lc/a;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0}, Lx0/s;-><init>(I)V

    .line 3
    .line 4
    .line 5
    iput-object p2, p0, Lx0/x;->c:Li1/b;

    .line 6
    .line 7
    iput-object p1, p0, Lx0/x;->b:Lf0/d;

    .line 8
    .line 9
    iput-object p3, p0, Lx0/x;->d:Lc/a;

    .line 10
    .line 11
    iget-boolean p1, p1, Lf0/d;->a:Z

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    const-string p2, "Best-effort write calls cannot pass methods that should auto-resolve missing features."

    .line 19
    .line 20
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1
.end method


# virtual methods
.method public final a(Lx0/o;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lx0/x;->b:Lf0/d;

    .line 2
    .line 3
    iget-boolean p1, p1, Lf0/d;->a:Z

    .line 4
    .line 5
    return p1
.end method

.method public final b(Lx0/o;)[Lv0/c;
    .locals 0

    .line 1
    iget-object p1, p0, Lx0/x;->b:Lf0/d;

    .line 2
    .line 3
    iget-object p1, p1, Lf0/d;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p1, [Lv0/c;

    .line 6
    .line 7
    return-object p1
.end method

.method public final c(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lx0/x;->d:Lc/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lcom/google/android/gms/common/api/Status;->c:Landroid/app/PendingIntent;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-eqz v0, :cond_1

    .line 14
    .line 15
    new-instance v0, Lw0/g;

    .line 16
    .line 17
    invoke-direct {v0, p1}, Lw0/g;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 18
    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    new-instance v0, Lj2/e;

    .line 22
    .line 23
    invoke-direct {v0, p1}, Lj2/e;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 24
    .line 25
    .line 26
    :goto_1
    iget-object p1, p0, Lx0/x;->c:Li1/b;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Li1/b;->a(Ljava/lang/Exception;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final d(Ljava/lang/RuntimeException;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lx0/x;->c:Li1/b;

    invoke-virtual {v0, p1}, Li1/b;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public final e(Lx0/o;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lx0/x;->c:Li1/b;

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lx0/x;->b:Lf0/d;

    .line 4
    .line 5
    iget-object p1, p1, Lx0/o;->b:Ly0/f;

    .line 6
    .line 7
    invoke-virtual {v1, p1, v0}, Lf0/d;->a(Ly0/f;Li1/b;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :catch_0
    move-exception p1

    .line 12
    goto :goto_0

    .line 13
    :catch_1
    move-exception p1

    .line 14
    goto :goto_1

    .line 15
    :catch_2
    move-exception p1

    .line 16
    goto :goto_2

    .line 17
    :goto_0
    invoke-virtual {v0, p1}, Li1/b;->a(Ljava/lang/Exception;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :goto_1
    invoke-static {p1}, Lx0/s;->g(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p0, p1}, Lx0/x;->c(Lcom/google/android/gms/common/api/Status;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :goto_2
    throw p1
.end method

.method public final f(Lx0/i;Z)V
    .locals 3

    .line 1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object v0, p1, Lx0/i;->b:Ljava/util/Map;

    .line 6
    .line 7
    iget-object v1, p0, Lx0/x;->c:Li1/b;

    .line 8
    .line 9
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    iget-object p2, v1, Li1/b;->a:Li1/f;

    .line 13
    .line 14
    new-instance v0, Landroidx/fragment/app/h;

    .line 15
    .line 16
    const/16 v2, 0xc

    .line 17
    .line 18
    invoke-direct {v0, v2, p1, v1}, Landroidx/fragment/app/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    sget-object p1, Li1/c;->a:Lj0/p;

    .line 25
    .line 26
    new-instance v1, Li1/d;

    .line 27
    .line 28
    invoke-direct {v1, p1, v0}, Li1/d;-><init>(Ljava/util/concurrent/Executor;Li1/a;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p2, Li1/f;->b:Ly0/j0;

    .line 32
    .line 33
    iget-object v0, p1, Ly0/j0;->h:Ljava/lang/Object;

    .line 34
    .line 35
    monitor-enter v0

    .line 36
    :try_start_0
    iget-object v2, p1, Ly0/j0;->i:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v2, Ljava/util/Queue;

    .line 39
    .line 40
    if-nez v2, :cond_0

    .line 41
    .line 42
    new-instance v2, Ljava/util/ArrayDeque;

    .line 43
    .line 44
    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v2, p1, Ly0/j0;->i:Ljava/lang/Object;

    .line 48
    .line 49
    :cond_0
    iget-object p1, p1, Ly0/j0;->i:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast p1, Ljava/util/Queue;

    .line 52
    .line 53
    invoke-interface {p1, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 57
    iget-object p1, p2, Li1/f;->a:Ljava/lang/Object;

    .line 58
    .line 59
    monitor-enter p1

    .line 60
    :try_start_1
    iget-boolean v0, p2, Li1/f;->c:Z

    .line 61
    .line 62
    if-nez v0, :cond_1

    .line 63
    .line 64
    monitor-exit p1

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    iget-object p1, p2, Li1/f;->b:Ly0/j0;

    .line 68
    .line 69
    invoke-virtual {p1, p2}, Ly0/j0;->f(Li1/f;)V

    .line 70
    .line 71
    .line 72
    :goto_0
    return-void

    .line 73
    :catchall_0
    move-exception p2

    .line 74
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    throw p2

    .line 76
    :catchall_1
    move-exception p1

    .line 77
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 78
    throw p1
.end method
