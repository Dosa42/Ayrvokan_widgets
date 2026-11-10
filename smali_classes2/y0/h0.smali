.class public final Ly0/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic f:Ly0/i0;


# direct methods
.method public synthetic constructor <init>(Ly0/i0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ly0/h0;->f:Ly0/i0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 6

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    if-eq v0, v2, :cond_0

    .line 8
    .line 9
    return v1

    .line 10
    :cond_0
    iget-object v0, p0, Ly0/h0;->f:Ly0/i0;

    .line 11
    .line 12
    iget-object v0, v0, Ly0/i0;->a:Ljava/util/HashMap;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p1, Ly0/f0;

    .line 18
    .line 19
    iget-object v1, p0, Ly0/h0;->f:Ly0/i0;

    .line 20
    .line 21
    iget-object v1, v1, Ly0/i0;->a:Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ly0/g0;

    .line 28
    .line 29
    if-eqz v1, :cond_3

    .line 30
    .line 31
    iget v3, v1, Ly0/g0;->b:I

    .line 32
    .line 33
    const/4 v4, 0x3

    .line 34
    if-ne v3, v4, :cond_3

    .line 35
    .line 36
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    new-instance v3, Ljava/lang/Exception;

    .line 40
    .line 41
    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    .line 42
    .line 43
    .line 44
    iget-object v3, v1, Ly0/g0;->f:Landroid/content/ComponentName;

    .line 45
    .line 46
    if-nez v3, :cond_1

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    const/4 v3, 0x0

    .line 52
    :cond_1
    if-nez v3, :cond_2

    .line 53
    .line 54
    new-instance v3, Landroid/content/ComponentName;

    .line 55
    .line 56
    iget-object p1, p1, Ly0/f0;->b:Ljava/lang/String;

    .line 57
    .line 58
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/i0;->l(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    const-string v4, "unknown"

    .line 62
    .line 63
    invoke-direct {v3, p1, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :cond_2
    invoke-virtual {v1, v3}, Ly0/g0;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 67
    .line 68
    .line 69
    :cond_3
    monitor-exit v0

    .line 70
    return v2

    .line 71
    :catchall_0
    move-exception p1

    .line 72
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    throw p1

    .line 74
    :cond_4
    iget-object v0, p0, Ly0/h0;->f:Ly0/i0;

    .line 75
    .line 76
    iget-object v0, v0, Ly0/i0;->a:Ljava/util/HashMap;

    .line 77
    .line 78
    monitor-enter v0

    .line 79
    :try_start_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast p1, Ly0/f0;

    .line 82
    .line 83
    iget-object v3, p0, Ly0/h0;->f:Ly0/i0;

    .line 84
    .line 85
    iget-object v3, v3, Ly0/i0;->a:Ljava/util/HashMap;

    .line 86
    .line 87
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    check-cast v3, Ly0/g0;

    .line 92
    .line 93
    if-eqz v3, :cond_6

    .line 94
    .line 95
    iget-object v4, v3, Ly0/g0;->a:Ljava/util/HashMap;

    .line 96
    .line 97
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    if-eqz v4, :cond_6

    .line 102
    .line 103
    iget-boolean v4, v3, Ly0/g0;->c:Z

    .line 104
    .line 105
    if-eqz v4, :cond_5

    .line 106
    .line 107
    iget-object v4, v3, Ly0/g0;->e:Ly0/f0;

    .line 108
    .line 109
    iget-object v5, v3, Ly0/g0;->g:Ly0/i0;

    .line 110
    .line 111
    iget-object v5, v5, Ly0/i0;->c:Le1/d;

    .line 112
    .line 113
    invoke-virtual {v5, v2, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    iget-object v4, v3, Ly0/g0;->g:Ly0/i0;

    .line 117
    .line 118
    iget-object v5, v4, Ly0/i0;->d:Lb1/a;

    .line 119
    .line 120
    iget-object v4, v4, Ly0/i0;->b:Landroid/content/Context;

    .line 121
    .line 122
    invoke-virtual {v5, v4, v3}, Lb1/a;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 123
    .line 124
    .line 125
    iput-boolean v1, v3, Ly0/g0;->c:Z

    .line 126
    .line 127
    const/4 v1, 0x2

    .line 128
    iput v1, v3, Ly0/g0;->b:I

    .line 129
    .line 130
    :cond_5
    iget-object v1, p0, Ly0/h0;->f:Ly0/i0;

    .line 131
    .line 132
    iget-object v1, v1, Ly0/i0;->a:Ljava/util/HashMap;

    .line 133
    .line 134
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :catchall_1
    move-exception p1

    .line 139
    goto :goto_1

    .line 140
    :cond_6
    :goto_0
    monitor-exit v0

    .line 141
    return v2

    .line 142
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 143
    throw p1
.end method
