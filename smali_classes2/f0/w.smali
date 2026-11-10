.class public final Lf0/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lf0/i;Lf0/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf0/w;->b:Ljava/lang/Object;

    iput-object p2, p0, Lf0/w;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lf0/w;->d:Ljava/lang/Object;

    iput-object p1, p0, Lf0/w;->e:Ljava/lang/Object;

    iput-object p3, p0, Lf0/w;->f:Ljava/lang/Object;

    new-instance p1, Lf0/v;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lf0/v;-><init>(Lf0/w;Z)V

    iput-object p1, p0, Lf0/w;->g:Ljava/lang/Object;

    new-instance p1, Lf0/v;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lf0/v;-><init>(Lf0/w;Z)V

    iput-object p1, p0, Lf0/w;->h:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lg2/a;Lf2/l0;)Lg2/a;
    .locals 3

    .line 1
    iget-object v0, p1, Lg2/a;->a:Lt2/f;

    .line 2
    .line 3
    iget-object v0, v0, Lt2/f;->a:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-virtual {p2, v0}, Lf2/l0;->a(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, -0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    return-object p1

    .line 13
    :cond_0
    iget-object v1, p0, Lf0/w;->d:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Lf2/j0;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {p2, v0, v1, v2}, Lf2/l0;->c(ILf2/j0;Z)Lf2/j0;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget v0, v0, Lf2/j0;->b:I

    .line 23
    .line 24
    new-instance v1, Lg2/a;

    .line 25
    .line 26
    iget-object p1, p1, Lg2/a;->a:Lt2/f;

    .line 27
    .line 28
    invoke-direct {v1, v0, p2, p1}, Lg2/a;-><init>(ILf2/l0;Lt2/f;)V

    .line 29
    .line 30
    .line 31
    return-object v1
.end method

.method public final b(Z)V
    .locals 6

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    .line 2
    .line 3
    const-string v1, "com.android.vending.billing.PURCHASES_UPDATED"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroid/content/IntentFilter;

    .line 9
    .line 10
    const-string v2, "com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED"

    .line 11
    .line 12
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v2, "com.android.vending.billing.ALTERNATIVE_BILLING"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iput-boolean p1, p0, Lf0/w;->a:Z

    .line 21
    .line 22
    iget-object p1, p0, Lf0/w;->h:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p1, Lf0/v;

    .line 25
    .line 26
    iget-object v2, p0, Lf0/w;->b:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v2, Landroid/content/Context;

    .line 29
    .line 30
    invoke-virtual {p1, v2, v1}, Lf0/v;->a(Landroid/content/Context;Landroid/content/IntentFilter;)V

    .line 31
    .line 32
    .line 33
    iget-boolean p1, p0, Lf0/w;->a:Z

    .line 34
    .line 35
    if-eqz p1, :cond_3

    .line 36
    .line 37
    iget-object p1, p0, Lf0/w;->g:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p1, Lf0/v;

    .line 40
    .line 41
    iget-object v1, p0, Lf0/w;->b:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v1, Landroid/content/Context;

    .line 44
    .line 45
    monitor-enter p1

    .line 46
    :try_start_0
    iget-boolean v2, p1, Lf0/v;->a:Z

    .line 47
    .line 48
    if-eqz v2, :cond_0

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 52
    .line 53
    const-string v3, "com.google.android.finsky.permission.PLAY_BILLING_LIBRARY_BROADCAST"

    .line 54
    .line 55
    const/16 v4, 0x21

    .line 56
    .line 57
    const/4 v5, 0x1

    .line 58
    if-lt v2, v4, :cond_2

    .line 59
    .line 60
    iget-boolean v2, p1, Lf0/v;->b:Z

    .line 61
    .line 62
    if-eq v5, v2, :cond_1

    .line 63
    .line 64
    const/4 v2, 0x4

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    const/4 v2, 0x2

    .line 67
    :goto_0
    invoke-static {v1, p1, v0, v2}, Lc1/a;->n(Landroid/content/Context;Lf0/v;Landroid/content/IntentFilter;I)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    const/4 v2, 0x0

    .line 72
    invoke-virtual {v1, p1, v0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 73
    .line 74
    .line 75
    :goto_1
    iput-boolean v5, p1, Lf0/v;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .line 77
    :goto_2
    monitor-exit p1

    .line 78
    return-void

    .line 79
    :catchall_0
    move-exception v0

    .line 80
    monitor-exit p1

    .line 81
    throw v0

    .line 82
    :cond_3
    iget-object p1, p0, Lf0/w;->g:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast p1, Lf0/v;

    .line 85
    .line 86
    iget-object v1, p0, Lf0/w;->b:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v1, Landroid/content/Context;

    .line 89
    .line 90
    invoke-virtual {p1, v1, v0}, Lf0/v;->a(Landroid/content/Context;Landroid/content/IntentFilter;)V

    .line 91
    .line 92
    .line 93
    return-void
.end method
