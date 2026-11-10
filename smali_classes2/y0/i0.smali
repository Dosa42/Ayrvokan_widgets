.class public final Ly0/i0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:Ljava/lang/Object;

.field public static i:Ly0/i0;

.field public static j:Landroid/os/HandlerThread;


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Landroid/content/Context;

.field public volatile c:Le1/d;

.field public final d:Lb1/a;

.field public final e:J

.field public final f:J

.field public volatile g:Ljava/util/concurrent/Executor;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ly0/i0;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ly0/i0;->a:Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v0, Ly0/h0;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Ly0/h0;-><init>(Ly0/i0;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Ly0/i0;->b:Landroid/content/Context;

    .line 21
    .line 22
    new-instance p1, Le1/d;

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    invoke-direct {p1, p2, v0, v1}, Le1/d;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;I)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Ly0/i0;->c:Le1/d;

    .line 29
    .line 30
    sget-object p1, Lb1/a;->c:Lb1/a;

    .line 31
    .line 32
    if-nez p1, :cond_1

    .line 33
    .line 34
    sget-object p1, Lb1/a;->b:Ljava/lang/Object;

    .line 35
    .line 36
    monitor-enter p1

    .line 37
    :try_start_0
    sget-object p2, Lb1/a;->c:Lb1/a;

    .line 38
    .line 39
    if-nez p2, :cond_0

    .line 40
    .line 41
    new-instance p2, Lb1/a;

    .line 42
    .line 43
    invoke-direct {p2}, Lb1/a;-><init>()V

    .line 44
    .line 45
    .line 46
    sput-object p2, Lb1/a;->c:Lb1/a;

    .line 47
    .line 48
    :cond_0
    monitor-exit p1

    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p2

    .line 51
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw p2

    .line 53
    :cond_1
    :goto_0
    sget-object p1, Lb1/a;->c:Lb1/a;

    .line 54
    .line 55
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/i0;->l(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    iput-object p1, p0, Ly0/i0;->d:Lb1/a;

    .line 59
    .line 60
    const-wide/16 p1, 0x1388

    .line 61
    .line 62
    iput-wide p1, p0, Ly0/i0;->e:J

    .line 63
    .line 64
    const-wide/32 p1, 0x493e0

    .line 65
    .line 66
    .line 67
    iput-wide p1, p0, Ly0/i0;->f:J

    .line 68
    .line 69
    const/4 p1, 0x0

    .line 70
    iput-object p1, p0, Ly0/i0;->g:Ljava/util/concurrent/Executor;

    .line 71
    .line 72
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ly0/b0;Z)V
    .locals 2

    .line 1
    new-instance v0, Ly0/f0;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p4}, Ly0/f0;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4
    .line 5
    .line 6
    const-string p1, "Trying to unbind a GmsServiceConnection  that was not bound before.  config="

    .line 7
    .line 8
    const-string p2, "Nonexistent connection status for service config: "

    .line 9
    .line 10
    iget-object p4, p0, Ly0/i0;->a:Ljava/util/HashMap;

    .line 11
    .line 12
    monitor-enter p4

    .line 13
    :try_start_0
    iget-object v1, p0, Ly0/i0;->a:Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ly0/g0;

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iget-object p2, v1, Ly0/g0;->a:Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    if-eqz p2, :cond_1

    .line 30
    .line 31
    iget-object p1, v1, Ly0/g0;->a:Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-virtual {p1, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    iget-object p1, v1, Ly0/g0;->a:Ljava/util/HashMap;

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    iget-object p1, p0, Ly0/i0;->c:Le1/d;

    .line 45
    .line 46
    const/4 p2, 0x0

    .line 47
    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget-object p2, p0, Ly0/i0;->c:Le1/d;

    .line 52
    .line 53
    iget-wide v0, p0, Ly0/i0;->e:J

    .line 54
    .line 55
    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 56
    .line 57
    .line 58
    :cond_0
    monitor-exit p4

    .line 59
    return-void

    .line 60
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 61
    .line 62
    invoke-virtual {v0}, Ly0/f0;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    invoke-virtual {p1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p2

    .line 74
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 75
    .line 76
    invoke-virtual {v0}, Ly0/f0;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p3

    .line 80
    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p1

    .line 88
    :catchall_0
    move-exception p1

    .line 89
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    throw p1
.end method

.method public final b(Ly0/f0;Ly0/b0;Ljava/lang/String;)Z
    .locals 6

    .line 1
    const-string v0, "Trying to bind a GmsServiceConnection that was already connected before.  config="

    .line 2
    .line 3
    iget-object v1, p0, Ly0/i0;->a:Ljava/util/HashMap;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Ly0/i0;->a:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Ly0/g0;

    .line 13
    .line 14
    iget-object v3, p0, Ly0/i0;->g:Ljava/util/concurrent/Executor;

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    new-instance v2, Ly0/g0;

    .line 19
    .line 20
    invoke-direct {v2, p0, p1}, Ly0/g0;-><init>(Ly0/i0;Ly0/f0;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, v2, Ly0/g0;->a:Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-virtual {v0, p2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, p3, v3}, Ly0/g0;->a(Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Ly0/i0;->a:Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-virtual {p2, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    iget-object v4, p0, Ly0/i0;->c:Le1/d;

    .line 40
    .line 41
    const/4 v5, 0x0

    .line 42
    invoke-virtual {v4, v5, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iget-object v4, v2, Ly0/g0;->a:Ljava/util/HashMap;

    .line 46
    .line 47
    invoke-virtual {v4, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-nez v4, :cond_3

    .line 52
    .line 53
    iget-object p1, v2, Ly0/g0;->a:Ljava/util/HashMap;

    .line 54
    .line 55
    invoke-virtual {p1, p2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    iget p1, v2, Ly0/g0;->b:I

    .line 59
    .line 60
    const/4 v0, 0x1

    .line 61
    if-eq p1, v0, :cond_2

    .line 62
    .line 63
    const/4 p2, 0x2

    .line 64
    if-eq p1, p2, :cond_1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {v2, p3, v3}, Ly0/g0;->a(Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    iget-object p1, v2, Ly0/g0;->f:Landroid/content/ComponentName;

    .line 72
    .line 73
    iget-object p3, v2, Ly0/g0;->d:Landroid/os/IBinder;

    .line 74
    .line 75
    invoke-virtual {p2, p1, p3}, Ly0/b0;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 76
    .line 77
    .line 78
    :goto_0
    iget-boolean p1, v2, Ly0/g0;->c:Z

    .line 79
    .line 80
    monitor-exit v1

    .line 81
    return p1

    .line 82
    :cond_3
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 83
    .line 84
    invoke-virtual {p1}, Ly0/f0;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p2

    .line 96
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    throw p1
.end method
