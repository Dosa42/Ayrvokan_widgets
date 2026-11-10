.class public final Lf0/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lh/a;

.field public final synthetic c:Lf0/b;


# direct methods
.method public synthetic constructor <init>(Lf0/b;Lh/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf0/q;->c:Lf0/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf0/q;->a:Ljava/lang/Object;

    iput-object p2, p0, Lf0/q;->b:Lh/a;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6

    .line 1
    const-string p1, "BillingClient"

    .line 2
    .line 3
    const-string v0, "Billing service connected."

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lf0/q;->c:Lf0/b;

    .line 9
    .line 10
    sget v0, Lcom/google/android/gms/internal/play_billing/j3;->a:I

    .line 11
    .line 12
    if-nez p2, :cond_0

    .line 13
    .line 14
    const/4 p2, 0x0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string v0, "com.android.vending.billing.IInAppBillingService"

    .line 17
    .line 18
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    instance-of v1, v0, Lcom/google/android/gms/internal/play_billing/k3;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    move-object p2, v0

    .line 27
    check-cast p2, Lcom/google/android/gms/internal/play_billing/k3;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/play_billing/i3;

    .line 31
    .line 32
    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/play_billing/i3;-><init>(Landroid/os/IBinder;)V

    .line 33
    .line 34
    .line 35
    move-object p2, v0

    .line 36
    :goto_0
    iput-object p2, p1, Lf0/b;->g:Lcom/google/android/gms/internal/play_billing/k3;

    .line 37
    .line 38
    new-instance v1, Lf0/p;

    .line 39
    .line 40
    invoke-direct {v1, p0}, Lf0/p;-><init>(Lf0/q;)V

    .line 41
    .line 42
    .line 43
    new-instance v4, Landroidx/activity/a;

    .line 44
    .line 45
    const/16 p1, 0xa

    .line 46
    .line 47
    invoke-direct {v4, p0, p1}, Landroidx/activity/a;-><init>(Ljava/lang/Object;I)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lf0/q;->c:Lf0/b;

    .line 51
    .line 52
    invoke-virtual {v0}, Lf0/b;->c()Landroid/os/Handler;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    const-wide/16 v2, 0x7530

    .line 57
    .line 58
    invoke-virtual/range {v0 .. v5}, Lf0/b;->g(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;)Ljava/util/concurrent/Future;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    if-nez p1, :cond_3

    .line 63
    .line 64
    iget-object p1, p0, Lf0/q;->c:Lf0/b;

    .line 65
    .line 66
    invoke-virtual {p1}, Lf0/b;->e()Lf0/g;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    const/4 v0, 0x6

    .line 71
    const/16 v1, 0x19

    .line 72
    .line 73
    invoke-static {v1, v0, p2}, Lf0/r;->a(IILf0/g;)Lcom/google/android/gms/internal/play_billing/j2;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {p1, v0}, Lf0/b;->h(Lcom/google/android/gms/internal/play_billing/j2;)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lf0/q;->a:Ljava/lang/Object;

    .line 81
    .line 82
    monitor-enter p1

    .line 83
    :try_start_0
    iget-object v0, p0, Lf0/q;->b:Lh/a;

    .line 84
    .line 85
    if-eqz v0, :cond_2

    .line 86
    .line 87
    invoke-virtual {v0, p2}, Lh/a;->C(Lf0/g;)V

    .line 88
    .line 89
    .line 90
    :cond_2
    monitor-exit p1

    .line 91
    goto :goto_1

    .line 92
    :catchall_0
    move-exception p2

    .line 93
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    throw p2

    .line 95
    :cond_3
    :goto_1
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    .line 1
    sget p1, Lcom/google/android/gms/internal/play_billing/s;->a:I

    .line 2
    .line 3
    iget-object p1, p0, Lf0/q;->c:Lf0/b;

    .line 4
    .line 5
    iget-object p1, p1, Lf0/b;->f:Lf0/s;

    .line 6
    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/g3;->o()Lcom/google/android/gms/internal/play_billing/g3;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast p1, Landroidx/fragment/app/h;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/d3;->r()Lcom/google/android/gms/internal/play_billing/c3;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object v2, p1, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v2, Lcom/google/android/gms/internal/play_billing/y2;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/k0;->c()V

    .line 28
    .line 29
    .line 30
    iget-object v3, v1, Lcom/google/android/gms/internal/play_billing/k0;->b:Lcom/google/android/gms/internal/play_billing/l0;

    .line 31
    .line 32
    check-cast v3, Lcom/google/android/gms/internal/play_billing/d3;

    .line 33
    .line 34
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/play_billing/d3;->o(Lcom/google/android/gms/internal/play_billing/d3;Lcom/google/android/gms/internal/play_billing/y2;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/k0;->c()V

    .line 38
    .line 39
    .line 40
    iget-object v2, v1, Lcom/google/android/gms/internal/play_billing/k0;->b:Lcom/google/android/gms/internal/play_billing/l0;

    .line 41
    .line 42
    check-cast v2, Lcom/google/android/gms/internal/play_billing/d3;

    .line 43
    .line 44
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/d3;->n(Lcom/google/android/gms/internal/play_billing/d3;Lcom/google/android/gms/internal/play_billing/g3;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p1, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast p1, Ls1/k;

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/k0;->a()Lcom/google/android/gms/internal/play_billing/l0;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Lcom/google/android/gms/internal/play_billing/d3;

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Ls1/k;->b(Lcom/google/android/gms/internal/play_billing/d3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    sget p1, Lcom/google/android/gms/internal/play_billing/s;->a:I

    .line 62
    .line 63
    :goto_0
    iget-object p1, p0, Lf0/q;->c:Lf0/b;

    .line 64
    .line 65
    const/4 v0, 0x0

    .line 66
    iput-object v0, p1, Lf0/b;->g:Lcom/google/android/gms/internal/play_billing/k3;

    .line 67
    .line 68
    iget-object p1, p0, Lf0/q;->c:Lf0/b;

    .line 69
    .line 70
    const/4 v0, 0x0

    .line 71
    iput v0, p1, Lf0/b;->a:I

    .line 72
    .line 73
    iget-object p1, p0, Lf0/q;->a:Ljava/lang/Object;

    .line 74
    .line 75
    monitor-enter p1

    .line 76
    :try_start_1
    iget-object v1, p0, Lf0/q;->b:Lh/a;

    .line 77
    .line 78
    if-eqz v1, :cond_1

    .line 79
    .line 80
    iget-object v2, v1, Lh/a;->g:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v2, Lcom/nomone/giap/GIAP;

    .line 83
    .line 84
    iput-boolean v0, v2, Lcom/nomone/giap/GIAP;->e:Z

    .line 85
    .line 86
    invoke-virtual {v1}, Lh/a;->F()V

    .line 87
    .line 88
    .line 89
    :cond_1
    monitor-exit p1

    .line 90
    return-void

    .line 91
    :catchall_1
    move-exception v0

    .line 92
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 93
    throw v0
.end method
