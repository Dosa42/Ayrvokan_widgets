.class public final Lf0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public volatile a:I

.field public final b:Ljava/lang/String;

.field public final c:Landroid/os/Handler;

.field public volatile d:Lf0/w;

.field public e:Landroid/content/Context;

.field public f:Lf0/s;

.field public volatile g:Lcom/google/android/gms/internal/play_billing/k3;

.field public volatile h:Lf0/q;

.field public i:Z

.field public j:I

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Lf0/h;

.field public u:Z

.field public v:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Lf0/h;Landroid/content/Context;Lf0/i;)V
    .locals 4

    .line 1
    invoke-static {}, Lf0/b;->f()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput v1, p0, Lf0/b;->a:I

    .line 10
    .line 11
    new-instance v2, Landroid/os/Handler;

    .line 12
    .line 13
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 18
    .line 19
    .line 20
    iput-object v2, p0, Lf0/b;->c:Landroid/os/Handler;

    .line 21
    .line 22
    iput v1, p0, Lf0/b;->j:I

    .line 23
    .line 24
    iput-object v0, p0, Lf0/b;->b:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    iput-object p2, p0, Lf0/b;->e:Landroid/content/Context;

    .line 31
    .line 32
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/y2;->q()Lcom/google/android/gms/internal/play_billing/x2;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/k0;->c()V

    .line 37
    .line 38
    .line 39
    iget-object v2, p2, Lcom/google/android/gms/internal/play_billing/k0;->b:Lcom/google/android/gms/internal/play_billing/l0;

    .line 40
    .line 41
    check-cast v2, Lcom/google/android/gms/internal/play_billing/y2;

    .line 42
    .line 43
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/y2;->n(Lcom/google/android/gms/internal/play_billing/y2;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lf0/b;->e:Landroid/content/Context;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/k0;->c()V

    .line 53
    .line 54
    .line 55
    iget-object v2, p2, Lcom/google/android/gms/internal/play_billing/k0;->b:Lcom/google/android/gms/internal/play_billing/l0;

    .line 56
    .line 57
    check-cast v2, Lcom/google/android/gms/internal/play_billing/y2;

    .line 58
    .line 59
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/y2;->o(Lcom/google/android/gms/internal/play_billing/y2;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lf0/b;->e:Landroid/content/Context;

    .line 63
    .line 64
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/k0;->a()Lcom/google/android/gms/internal/play_billing/l0;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    check-cast p2, Lcom/google/android/gms/internal/play_billing/y2;

    .line 69
    .line 70
    new-instance v2, Landroidx/fragment/app/h;

    .line 71
    .line 72
    invoke-direct {v2, v0, p2}, Landroidx/fragment/app/h;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/play_billing/y2;)V

    .line 73
    .line 74
    .line 75
    iput-object v2, p0, Lf0/b;->f:Lf0/s;

    .line 76
    .line 77
    if-nez p3, :cond_0

    .line 78
    .line 79
    sget p2, Lcom/google/android/gms/internal/play_billing/s;->a:I

    .line 80
    .line 81
    :cond_0
    new-instance p2, Lf0/w;

    .line 82
    .line 83
    iget-object v0, p0, Lf0/b;->e:Landroid/content/Context;

    .line 84
    .line 85
    invoke-direct {p2, v0, p3, v2}, Lf0/w;-><init>(Landroid/content/Context;Lf0/i;Lf0/s;)V

    .line 86
    .line 87
    .line 88
    iput-object p2, p0, Lf0/b;->d:Lf0/w;

    .line 89
    .line 90
    iput-object p1, p0, Lf0/b;->t:Lf0/h;

    .line 91
    .line 92
    iput-boolean v1, p0, Lf0/b;->u:Z

    .line 93
    .line 94
    iget-object p1, p0, Lf0/b;->e:Landroid/content/Context;

    .line 95
    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method public static f()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "com.android.billingclient.ktx.BuildConfig"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "VERSION_NAME"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "7.0.0"

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 1
    iget v0, p0, Lf0/b;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lf0/b;->g:Lcom/google/android/gms/internal/play_billing/k3;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf0/b;->h:Lf0/q;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Lh/a;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lf0/b;->a()Z

    move-result v0

    const/4 v1, 0x6

    const-string v2, "BillingClient"

    if-eqz v0, :cond_0

    const-string v0, "Service connection is valid. No need to re-initialize."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lf0/r;->b(I)Lcom/google/android/gms/internal/play_billing/m2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lf0/b;->i(Lcom/google/android/gms/internal/play_billing/m2;)V

    sget-object v0, Lf0/t;->j:Lf0/g;

    invoke-virtual {p1, v0}, Lh/a;->C(Lf0/g;)V

    return-void

    :cond_0
    iget v0, p0, Lf0/b;->a:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    sget v0, Lcom/google/android/gms/internal/play_billing/s;->a:I

    sget-object v0, Lf0/t;->d:Lf0/g;

    const/16 v2, 0x25

    invoke-static {v2, v1, v0}, Lf0/r;->a(IILf0/g;)Lcom/google/android/gms/internal/play_billing/j2;

    move-result-object v1

    invoke-virtual {p0, v1}, Lf0/b;->h(Lcom/google/android/gms/internal/play_billing/j2;)V

    invoke-virtual {p1, v0}, Lh/a;->C(Lf0/g;)V

    return-void

    :cond_1
    iget v0, p0, Lf0/b;->a:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    sget v0, Lcom/google/android/gms/internal/play_billing/s;->a:I

    sget-object v0, Lf0/t;->k:Lf0/g;

    const/16 v2, 0x26

    invoke-static {v2, v1, v0}, Lf0/r;->a(IILf0/g;)Lcom/google/android/gms/internal/play_billing/j2;

    move-result-object v1

    invoke-virtual {p0, v1}, Lf0/b;->h(Lcom/google/android/gms/internal/play_billing/j2;)V

    invoke-virtual {p1, v0}, Lh/a;->C(Lf0/g;)V

    return-void

    :cond_2
    iput v3, p0, Lf0/b;->a:I

    const-string v0, "Starting in-app billing setup."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lf0/q;

    invoke-direct {v0, p0, p1}, Lf0/q;-><init>(Lf0/b;Lh/a;)V

    iput-object v0, p0, Lf0/b;->h:Lf0/q;

    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.android.vending"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lf0/b;->e:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v5, :cond_6

    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v5, :cond_4

    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v7, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v5, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lf0/b;->b:Ljava/lang/String;

    const-string v4, "playBillingLibraryVersion"

    invoke-virtual {v5, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lf0/b;->e:Landroid/content/Context;

    iget-object v4, p0, Lf0/b;->h:Lf0/q;

    invoke-virtual {v0, v5, v4, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "Service was bonded successfully."

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/play_billing/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    const/16 v3, 0x27

    goto :goto_0

    :cond_4
    const/16 v3, 0x28

    goto :goto_0

    :cond_5
    const/16 v3, 0x29

    :cond_6
    :goto_0
    iput v6, p0, Lf0/b;->a:I

    const-string v0, "Billing service unavailable on device."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lf0/t;->c:Lf0/g;

    invoke-static {v3, v1, v0}, Lf0/r;->a(IILf0/g;)Lcom/google/android/gms/internal/play_billing/j2;

    move-result-object v1

    invoke-virtual {p0, v1}, Lf0/b;->h(Lcom/google/android/gms/internal/play_billing/j2;)V

    invoke-virtual {p1, v0}, Lh/a;->C(Lf0/g;)V

    return-void
.end method

.method public final c()Landroid/os/Handler;
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lf0/b;->c:Landroid/os/Handler;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :goto_0
    return-object v0
.end method

.method public final d(Lf0/g;)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lf0/m;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0, p1}, Lf0/m;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lf0/b;->c:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final e()Lf0/g;
    .locals 2

    .line 1
    iget v0, p0, Lf0/b;->a:I

    if-eqz v0, :cond_1

    iget v0, p0, Lf0/b;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lf0/t;->i:Lf0/g;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Lf0/t;->k:Lf0/g;

    :goto_1
    return-object v0
.end method

.method public final g(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;)Ljava/util/concurrent/Future;
    .locals 3

    .line 1
    iget-object v0, p0, Lf0/b;->v:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    sget v0, Lcom/google/android/gms/internal/play_billing/s;->a:I

    new-instance v1, Ld/b;

    invoke-direct {v1}, Ld/b;-><init>()V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lf0/b;->v:Ljava/util/concurrent/ExecutorService;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lf0/b;->v:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-double p2, p2

    new-instance v0, Lf0/m;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1, p4}, Lf0/m;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const-wide v1, 0x3fee666666666666L    # 0.95

    mul-double/2addr p2, v1

    double-to-long p2, p2

    invoke-virtual {p5, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object p1

    :catch_0
    sget p1, Lcom/google/android/gms/internal/play_billing/s;->a:I

    const/4 p1, 0x0

    return-object p1
.end method

.method public final h(Lcom/google/android/gms/internal/play_billing/j2;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lf0/b;->f:Lf0/s;

    .line 2
    .line 3
    iget v1, p0, Lf0/b;->j:I

    .line 4
    .line 5
    check-cast v0, Landroidx/fragment/app/h;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object v2, v0, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v2, Lcom/google/android/gms/internal/play_billing/y2;

    .line 13
    .line 14
    const/4 v3, 0x5

    .line 15
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/play_billing/y2;->m(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Lcom/google/android/gms/internal/play_billing/k0;

    .line 20
    .line 21
    iget-object v4, v3, Lcom/google/android/gms/internal/play_billing/k0;->a:Lcom/google/android/gms/internal/play_billing/l0;

    .line 22
    .line 23
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/play_billing/l0;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-nez v4, :cond_1

    .line 28
    .line 29
    iget-object v4, v3, Lcom/google/android/gms/internal/play_billing/k0;->b:Lcom/google/android/gms/internal/play_billing/l0;

    .line 30
    .line 31
    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/l0;->l()Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-nez v4, :cond_0

    .line 36
    .line 37
    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/k0;->d()V

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object v4, v3, Lcom/google/android/gms/internal/play_billing/k0;->b:Lcom/google/android/gms/internal/play_billing/l0;

    .line 41
    .line 42
    invoke-static {v4, v2}, Lcom/google/android/gms/internal/play_billing/k0;->e(Lcom/google/android/gms/internal/play_billing/l0;Lcom/google/android/gms/internal/play_billing/l0;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    check-cast v3, Lcom/google/android/gms/internal/play_billing/x2;

    .line 46
    .line 47
    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/k0;->c()V

    .line 48
    .line 49
    .line 50
    iget-object v2, v3, Lcom/google/android/gms/internal/play_billing/k0;->b:Lcom/google/android/gms/internal/play_billing/l0;

    .line 51
    .line 52
    check-cast v2, Lcom/google/android/gms/internal/play_billing/y2;

    .line 53
    .line 54
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/play_billing/y2;->p(Lcom/google/android/gms/internal/play_billing/y2;I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/k0;->a()Lcom/google/android/gms/internal/play_billing/l0;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Lcom/google/android/gms/internal/play_billing/y2;

    .line 62
    .line 63
    iput-object v1, v0, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 64
    .line 65
    invoke-virtual {v0, p1}, Landroidx/fragment/app/h;->v(Lcom/google/android/gms/internal/play_billing/j2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catchall_0
    sget p1, Lcom/google/android/gms/internal/play_billing/s;->a:I

    .line 70
    .line 71
    :goto_0
    return-void
.end method

.method public final i(Lcom/google/android/gms/internal/play_billing/m2;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lf0/b;->f:Lf0/s;

    .line 2
    .line 3
    iget v1, p0, Lf0/b;->j:I

    .line 4
    .line 5
    check-cast v0, Landroidx/fragment/app/h;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object v2, v0, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v2, Lcom/google/android/gms/internal/play_billing/y2;

    .line 13
    .line 14
    const/4 v3, 0x5

    .line 15
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/play_billing/y2;->m(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Lcom/google/android/gms/internal/play_billing/k0;

    .line 20
    .line 21
    iget-object v4, v3, Lcom/google/android/gms/internal/play_billing/k0;->a:Lcom/google/android/gms/internal/play_billing/l0;

    .line 22
    .line 23
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/play_billing/l0;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-nez v4, :cond_1

    .line 28
    .line 29
    iget-object v4, v3, Lcom/google/android/gms/internal/play_billing/k0;->b:Lcom/google/android/gms/internal/play_billing/l0;

    .line 30
    .line 31
    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/l0;->l()Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-nez v4, :cond_0

    .line 36
    .line 37
    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/k0;->d()V

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object v4, v3, Lcom/google/android/gms/internal/play_billing/k0;->b:Lcom/google/android/gms/internal/play_billing/l0;

    .line 41
    .line 42
    invoke-static {v4, v2}, Lcom/google/android/gms/internal/play_billing/k0;->e(Lcom/google/android/gms/internal/play_billing/l0;Lcom/google/android/gms/internal/play_billing/l0;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    check-cast v3, Lcom/google/android/gms/internal/play_billing/x2;

    .line 46
    .line 47
    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/k0;->c()V

    .line 48
    .line 49
    .line 50
    iget-object v2, v3, Lcom/google/android/gms/internal/play_billing/k0;->b:Lcom/google/android/gms/internal/play_billing/l0;

    .line 51
    .line 52
    check-cast v2, Lcom/google/android/gms/internal/play_billing/y2;

    .line 53
    .line 54
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/play_billing/y2;->p(Lcom/google/android/gms/internal/play_billing/y2;I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/k0;->a()Lcom/google/android/gms/internal/play_billing/l0;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Lcom/google/android/gms/internal/play_billing/y2;

    .line 62
    .line 63
    iput-object v1, v0, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 64
    .line 65
    invoke-virtual {v0, p1}, Landroidx/fragment/app/h;->x(Lcom/google/android/gms/internal/play_billing/m2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catchall_0
    sget p1, Lcom/google/android/gms/internal/play_billing/s;->a:I

    .line 70
    .line 71
    :goto_0
    return-void
.end method
