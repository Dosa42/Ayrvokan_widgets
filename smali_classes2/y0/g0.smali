.class public final Ly0/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final a:Ljava/util/HashMap;

.field public b:I

.field public c:Z

.field public d:Landroid/os/IBinder;

.field public final e:Ly0/f0;

.field public f:Landroid/content/ComponentName;

.field public final synthetic g:Ly0/i0;


# direct methods
.method public constructor <init>(Ly0/i0;Ly0/f0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ly0/g0;->g:Ly0/i0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ly0/g0;->e:Ly0/f0;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Ly0/g0;->a:Ljava/util/HashMap;

    const/4 p1, 0x2

    iput p1, p0, Ly0/g0;->b:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/concurrent/Executor;)V
    .locals 10

    .line 1
    const/4 v0, 0x3

    .line 2
    iput v0, p0, Ly0/g0;->b:I

    .line 3
    .line 4
    invoke-static {}, Landroid/os/StrictMode;->getVmPolicy()Landroid/os/StrictMode$VmPolicy;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    .line 10
    const/16 v2, 0x1f

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    if-lt v1, v2, :cond_0

    .line 14
    .line 15
    move v1, v3

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    :goto_0
    if-eqz v1, :cond_1

    .line 19
    .line 20
    new-instance v1, Landroid/os/StrictMode$VmPolicy$Builder;

    .line 21
    .line 22
    invoke-direct {v1, v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>(Landroid/os/StrictMode$VmPolicy;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v1}, Lo1/y0;->a(Landroid/os/StrictMode$VmPolicy$Builder;)Landroid/os/StrictMode$VmPolicy$Builder;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    :try_start_0
    iget-object v1, p0, Ly0/g0;->g:Ly0/i0;

    .line 37
    .line 38
    iget-object v4, v1, Ly0/i0;->d:Lb1/a;

    .line 39
    .line 40
    iget-object v5, v1, Ly0/i0;->b:Landroid/content/Context;

    .line 41
    .line 42
    iget-object v1, p0, Ly0/g0;->e:Ly0/f0;

    .line 43
    .line 44
    invoke-virtual {v1, v5}, Ly0/f0;->a(Landroid/content/Context;)Landroid/content/Intent;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    move-object v7, p0

    .line 49
    move-object v8, p1

    .line 50
    move-object v9, p2

    .line 51
    invoke-virtual/range {v4 .. v9}, Lb1/a;->b(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;Ljava/lang/String;Ljava/util/concurrent/Executor;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    iput-boolean p1, p0, Ly0/g0;->c:Z

    .line 56
    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    iget-object p1, p0, Ly0/g0;->g:Ly0/i0;

    .line 60
    .line 61
    iget-object p1, p1, Ly0/i0;->c:Le1/d;

    .line 62
    .line 63
    iget-object p2, p0, Ly0/g0;->e:Ly0/f0;

    .line 64
    .line 65
    invoke-virtual {p1, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iget-object p2, p0, Ly0/g0;->g:Ly0/i0;

    .line 70
    .line 71
    iget-object p2, p2, Ly0/i0;->c:Le1/d;

    .line 72
    .line 73
    iget-object v1, p0, Ly0/g0;->g:Ly0/i0;

    .line 74
    .line 75
    iget-wide v1, v1, Ly0/i0;->f:J

    .line 76
    .line 77
    invoke-virtual {p2, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    const/4 p1, 0x2

    .line 82
    iput p1, p0, Ly0/g0;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .line 84
    :try_start_1
    iget-object p1, p0, Ly0/g0;->g:Ly0/i0;

    .line 85
    .line 86
    iget-object p2, p1, Ly0/i0;->d:Lb1/a;

    .line 87
    .line 88
    iget-object p1, p1, Ly0/i0;->b:Landroid/content/Context;

    .line 89
    .line 90
    invoke-virtual {p2, p1, p0}, Lb1/a;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    .line 92
    .line 93
    :catch_0
    :goto_1
    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :catchall_0
    move-exception p1

    .line 98
    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 99
    .line 100
    .line 101
    throw p1
.end method

.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ly0/g0;->onServiceDisconnected(Landroid/content/ComponentName;)V

    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ly0/g0;->g:Ly0/i0;

    .line 2
    .line 3
    iget-object v0, v0, Ly0/i0;->a:Ljava/util/HashMap;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Ly0/g0;->g:Ly0/i0;

    .line 7
    .line 8
    iget-object v1, v1, Ly0/i0;->c:Le1/d;

    .line 9
    .line 10
    iget-object v2, p0, Ly0/g0;->e:Ly0/f0;

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iput-object p2, p0, Ly0/g0;->d:Landroid/os/IBinder;

    .line 17
    .line 18
    iput-object p1, p0, Ly0/g0;->f:Landroid/content/ComponentName;

    .line 19
    .line 20
    iget-object v1, p0, Ly0/g0;->a:Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Landroid/content/ServiceConnection;

    .line 41
    .line 42
    invoke-interface {v2, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iput v3, p0, Ly0/g0;->b:I

    .line 47
    .line 48
    monitor-exit v0

    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw p1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ly0/g0;->g:Ly0/i0;

    .line 2
    .line 3
    iget-object v0, v0, Ly0/i0;->a:Ljava/util/HashMap;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Ly0/g0;->g:Ly0/i0;

    .line 7
    .line 8
    iget-object v1, v1, Ly0/i0;->c:Le1/d;

    .line 9
    .line 10
    iget-object v2, p0, Ly0/g0;->e:Ly0/f0;

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iput-object v1, p0, Ly0/g0;->d:Landroid/os/IBinder;

    .line 18
    .line 19
    iput-object p1, p0, Ly0/g0;->f:Landroid/content/ComponentName;

    .line 20
    .line 21
    iget-object v1, p0, Ly0/g0;->a:Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Landroid/content/ServiceConnection;

    .line 42
    .line 43
    invoke-interface {v2, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/4 p1, 0x2

    .line 48
    iput p1, p0, Ly0/g0;->b:I

    .line 49
    .line 50
    monitor-exit v0

    .line 51
    return-void

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw p1
.end method
