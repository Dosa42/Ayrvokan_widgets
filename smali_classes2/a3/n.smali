.class public final La3/n;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static c:La3/n;


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, La3/n;->a:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La3/n;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public static b(La3/o;)V
    .locals 10

    .line 1
    sget-object v0, La3/o;->n:Ljava/util/Map;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, La3/o;->a:Landroid/content/Context;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    move v0, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-static {v0}, Lb3/n;->e(Landroid/content/Context;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    :goto_0
    iget v2, p0, La3/o;->i:I

    .line 16
    .line 17
    if-ne v2, v0, :cond_1

    .line 18
    .line 19
    goto :goto_2

    .line 20
    :cond_1
    iput v0, p0, La3/o;->i:I

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    if-eq v0, v2, :cond_4

    .line 24
    .line 25
    if-eqz v0, :cond_4

    .line 26
    .line 27
    const/16 v2, 0x8

    .line 28
    .line 29
    if-ne v0, v2, :cond_2

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_2
    invoke-virtual {p0, v0}, La3/o;->a(I)J

    .line 33
    .line 34
    .line 35
    move-result-wide v2

    .line 36
    iput-wide v2, p0, La3/o;->l:J

    .line 37
    .line 38
    iget-object v0, p0, La3/o;->e:Lb3/a;

    .line 39
    .line 40
    check-cast v0, Ly0/i;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 46
    .line 47
    .line 48
    move-result-wide v2

    .line 49
    iget v0, p0, La3/o;->f:I

    .line 50
    .line 51
    if-lez v0, :cond_3

    .line 52
    .line 53
    iget-wide v4, p0, La3/o;->g:J

    .line 54
    .line 55
    sub-long v4, v2, v4

    .line 56
    .line 57
    long-to-int v0, v4

    .line 58
    move v5, v0

    .line 59
    goto :goto_1

    .line 60
    :cond_3
    move v5, v1

    .line 61
    :goto_1
    iget-wide v6, p0, La3/o;->h:J

    .line 62
    .line 63
    iget-wide v8, p0, La3/o;->l:J

    .line 64
    .line 65
    move-object v4, p0

    .line 66
    invoke-virtual/range {v4 .. v9}, La3/o;->b(IJJ)V

    .line 67
    .line 68
    .line 69
    iput-wide v2, p0, La3/o;->g:J

    .line 70
    .line 71
    const-wide/16 v2, 0x0

    .line 72
    .line 73
    iput-wide v2, p0, La3/o;->h:J

    .line 74
    .line 75
    iput-wide v2, p0, La3/o;->k:J

    .line 76
    .line 77
    iput-wide v2, p0, La3/o;->j:J

    .line 78
    .line 79
    iget-object v0, p0, La3/o;->d:Lb3/k;

    .line 80
    .line 81
    iget-object v2, v0, Lb3/k;->b:Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 84
    .line 85
    .line 86
    const/4 v2, -0x1

    .line 87
    iput v2, v0, Lb3/k;->d:I

    .line 88
    .line 89
    iput v1, v0, Lb3/k;->e:I

    .line 90
    .line 91
    iput v1, v0, Lb3/k;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    .line 93
    :cond_4
    :goto_2
    monitor-exit p0

    .line 94
    return-void

    .line 95
    :catchall_0
    move-exception v0

    .line 96
    monitor-exit p0

    .line 97
    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, La3/n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La3/o;

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, La3/n;->a()V

    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, La3/n;->b:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_2

    iget-object p2, p0, La3/n;->b:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, La3/o;

    if-eqz p2, :cond_1

    invoke-static {p2}, La3/n;->b(La3/o;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
