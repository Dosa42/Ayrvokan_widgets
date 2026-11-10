.class public final Lx0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final t:Lcom/google/android/gms/common/api/Status;

.field public static final u:Lcom/google/android/gms/common/api/Status;

.field public static final v:Ljava/lang/Object;

.field public static w:Lx0/d;


# instance fields
.field public f:J

.field public g:Z

.field public h:Ly0/k;

.field public i:La1/d;

.field public final j:Landroid/content/Context;

.field public final k:Lv0/d;

.field public final l:Landroidx/fragment/app/h;

.field public final m:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final n:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final o:Ljava/util/concurrent/ConcurrentHashMap;

.field public final p:Lf/c;

.field public final q:Lf/c;

.field public final r:Le1/d;

.field public volatile s:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const-string v2, "Sign-out occurred while this API call was in progress."

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-direct {v0, v1, v2, v3, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lv0/a;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lx0/d;->t:Lcom/google/android/gms/common/api/Status;

    .line 11
    .line 12
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    .line 13
    .line 14
    const-string v2, "The user must be signed in to make this API call."

    .line 15
    .line 16
    invoke-direct {v0, v1, v2, v3, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lv0/a;)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lx0/d;->u:Lcom/google/android/gms/common/api/Status;

    .line 20
    .line 21
    new-instance v0, Ljava/lang/Object;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lx0/d;->v:Ljava/lang/Object;

    .line 27
    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 6

    .line 1
    sget-object v0, Lv0/d;->c:Lv0/d;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x2710

    .line 7
    .line 8
    iput-wide v1, p0, Lx0/d;->f:J

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Lx0/d;->g:Z

    .line 12
    .line 13
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 17
    .line 18
    .line 19
    iput-object v2, p0, Lx0/d;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 20
    .line 21
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 22
    .line 23
    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 24
    .line 25
    .line 26
    iput-object v2, p0, Lx0/d;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 27
    .line 28
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    .line 30
    const/4 v4, 0x5

    .line 31
    const/high16 v5, 0x3f400000    # 0.75f

    .line 32
    .line 33
    invoke-direct {v2, v4, v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 34
    .line 35
    .line 36
    iput-object v2, p0, Lx0/d;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    new-instance v4, Lf/c;

    .line 40
    .line 41
    invoke-direct {v4}, Lf/c;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v4, p0, Lx0/d;->p:Lf/c;

    .line 45
    .line 46
    new-instance v4, Lf/c;

    .line 47
    .line 48
    invoke-direct {v4}, Lf/c;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v4, p0, Lx0/d;->q:Lf/c;

    .line 52
    .line 53
    iput-boolean v3, p0, Lx0/d;->s:Z

    .line 54
    .line 55
    iput-object p1, p0, Lx0/d;->j:Landroid/content/Context;

    .line 56
    .line 57
    new-instance v4, Le1/d;

    .line 58
    .line 59
    invoke-direct {v4, p2, p0, v1}, Le1/d;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;I)V

    .line 60
    .line 61
    .line 62
    iput-object v4, p0, Lx0/d;->r:Le1/d;

    .line 63
    .line 64
    iput-object v0, p0, Lx0/d;->k:Lv0/d;

    .line 65
    .line 66
    new-instance p2, Landroidx/fragment/app/h;

    .line 67
    .line 68
    invoke-direct {p2, v2}, Landroidx/fragment/app/h;-><init>(La1/b;)V

    .line 69
    .line 70
    .line 71
    iput-object p2, p0, Lx0/d;->l:Landroidx/fragment/app/h;

    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    sget-object p2, Lc1/b;->B:Ljava/lang/Boolean;

    .line 78
    .line 79
    if-nez p2, :cond_2

    .line 80
    .line 81
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 82
    .line 83
    const/16 v0, 0x1a

    .line 84
    .line 85
    if-lt p2, v0, :cond_0

    .line 86
    .line 87
    move p2, v3

    .line 88
    goto :goto_0

    .line 89
    :cond_0
    move p2, v1

    .line 90
    :goto_0
    if-eqz p2, :cond_1

    .line 91
    .line 92
    const-string p2, "android.hardware.type.automotive"

    .line 93
    .line 94
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-eqz p1, :cond_1

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_1
    move v3, v1

    .line 102
    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    sput-object p1, Lc1/b;->B:Ljava/lang/Boolean;

    .line 107
    .line 108
    :cond_2
    sget-object p1, Lc1/b;->B:Ljava/lang/Boolean;

    .line 109
    .line 110
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-eqz p1, :cond_3

    .line 115
    .line 116
    iput-boolean v1, p0, Lx0/d;->s:Z

    .line 117
    .line 118
    :cond_3
    const/4 p1, 0x6

    .line 119
    invoke-virtual {v4, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {v4, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 124
    .line 125
    .line 126
    return-void
.end method

.method public static c(Lx0/a;Lv0/a;)Lcom/google/android/gms/common/api/Status;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    .line 2
    .line 3
    iget-object p0, p0, Lx0/a;->b:Lf0/k;

    .line 4
    .line 5
    iget-object p0, p0, Lf0/k;->g:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v3, "API: "

    .line 16
    .line 17
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p0, " is not available on this device. Connection failed with: "

    .line 24
    .line 25
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    iget-object v1, p1, Lv0/a;->c:Landroid/app/PendingIntent;

    .line 36
    .line 37
    const/16 v2, 0x11

    .line 38
    .line 39
    invoke-direct {v0, v2, p0, v1, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lv0/a;)V

    .line 40
    .line 41
    .line 42
    return-object v0
.end method

.method public static e(Landroid/content/Context;)Lx0/d;
    .locals 5

    .line 1
    sget-object v0, Lx0/d;->v:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lx0/d;->w:Lx0/d;

    .line 5
    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    sget-object v1, Ly0/i0;->h:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :try_start_1
    sget-object v2, Ly0/i0;->j:Landroid/os/HandlerThread;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    :goto_0
    monitor-exit v1

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    new-instance v2, Landroid/os/HandlerThread;

    .line 18
    .line 19
    const-string v3, "GoogleApiHandler"

    .line 20
    .line 21
    const/16 v4, 0x9

    .line 22
    .line 23
    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    sput-object v2, Ly0/i0;->j:Landroid/os/HandlerThread;

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 29
    .line 30
    .line 31
    sget-object v2, Ly0/i0;->j:Landroid/os/HandlerThread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    new-instance v2, Lx0/d;

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    sget-object v3, Lv0/d;->b:Ljava/lang/Object;

    .line 45
    .line 46
    invoke-direct {v2, p0, v1}, Lx0/d;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 47
    .line 48
    .line 49
    sput-object v2, Lx0/d;->w:Lx0/d;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 54
    :try_start_4
    throw p0

    .line 55
    :catchall_1
    move-exception p0

    .line 56
    goto :goto_3

    .line 57
    :cond_1
    :goto_2
    sget-object p0, Lx0/d;->w:Lx0/d;

    .line 58
    .line 59
    monitor-exit v0

    .line 60
    return-object p0

    .line 61
    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 62
    throw p0
.end method


# virtual methods
.method public final a()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lx0/d;->g:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const-class v0, Ly0/i;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    sget-object v2, Ly0/i;->f:Ly0/i;

    .line 11
    .line 12
    if-nez v2, :cond_1

    .line 13
    .line 14
    new-instance v2, Ly0/i;

    .line 15
    .line 16
    invoke-direct {v2}, Ly0/i;-><init>()V

    .line 17
    .line 18
    .line 19
    sput-object v2, Ly0/i;->f:Ly0/i;

    .line 20
    .line 21
    :cond_1
    sget-object v2, Ly0/i;->f:Ly0/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    monitor-exit v0

    .line 24
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lx0/d;->l:Landroidx/fragment/app/h;

    .line 28
    .line 29
    iget-object v0, v0, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v0, Landroid/util/SparseIntArray;

    .line 32
    .line 33
    const v2, 0xc1fa340

    .line 34
    .line 35
    .line 36
    const/4 v3, -0x1

    .line 37
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eq v0, v3, :cond_3

    .line 42
    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    return v1

    .line 47
    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 48
    return v0

    .line 49
    :catchall_0
    move-exception v1

    .line 50
    monitor-exit v0

    .line 51
    throw v1
.end method

.method public final b(Lv0/a;I)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lx0/d;->k:Lv0/d;

    .line 2
    .line 3
    iget-object v1, p0, Lx0/d;->j:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-class v2, Lc1/b;

    .line 9
    .line 10
    monitor-enter v2

    .line 11
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    sget-object v4, Lc1/b;->a:Landroid/content/Context;

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    const/4 v6, 0x1

    .line 19
    const/4 v7, 0x0

    .line 20
    if-eqz v4, :cond_1

    .line 21
    .line 22
    sget-object v8, Lc1/b;->b:Ljava/lang/Boolean;

    .line 23
    .line 24
    if-eqz v8, :cond_1

    .line 25
    .line 26
    if-eq v4, v3, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    goto :goto_4

    .line 34
    :cond_1
    :goto_0
    sput-object v5, Lc1/b;->b:Ljava/lang/Boolean;

    .line 35
    .line 36
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 37
    .line 38
    const/16 v8, 0x1a

    .line 39
    .line 40
    if-lt v4, v8, :cond_2

    .line 41
    .line 42
    move v4, v6

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    move v4, v7

    .line 45
    :goto_1
    if-eqz v4, :cond_3

    .line 46
    .line 47
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-static {v4}, Lc1/a;->x(Landroid/content/pm/PackageManager;)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 56
    .line 57
    .line 58
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    goto :goto_2

    .line 60
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    const-string v8, "com.google.android.instantapps.supervisor.InstantAppsRuntime"

    .line 65
    .line 66
    invoke-virtual {v4, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 70
    .line 71
    sput-object v4, Lc1/b;->b:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :catch_0
    :try_start_2
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 75
    .line 76
    :goto_2
    sput-object v4, Lc1/b;->b:Ljava/lang/Boolean;

    .line 77
    .line 78
    :goto_3
    sput-object v3, Lc1/b;->a:Landroid/content/Context;

    .line 79
    .line 80
    sget-object v3, Lc1/b;->b:Ljava/lang/Boolean;

    .line 81
    .line 82
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 83
    .line 84
    .line 85
    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    :goto_4
    monitor-exit v2

    .line 87
    if-eqz v3, :cond_4

    .line 88
    .line 89
    goto :goto_8

    .line 90
    :cond_4
    iget v2, p1, Lv0/a;->b:I

    .line 91
    .line 92
    if-eqz v2, :cond_5

    .line 93
    .line 94
    iget-object v3, p1, Lv0/a;->c:Landroid/app/PendingIntent;

    .line 95
    .line 96
    if-eqz v3, :cond_5

    .line 97
    .line 98
    move v3, v6

    .line 99
    goto :goto_5

    .line 100
    :cond_5
    move v3, v7

    .line 101
    :goto_5
    if-eqz v3, :cond_6

    .line 102
    .line 103
    iget-object v2, p1, Lv0/a;->c:Landroid/app/PendingIntent;

    .line 104
    .line 105
    goto :goto_7

    .line 106
    :cond_6
    invoke-virtual {v0, v2, v1, v5}, Lv0/d;->a(ILandroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    if-nez v2, :cond_7

    .line 111
    .line 112
    goto :goto_6

    .line 113
    :cond_7
    const/high16 v3, 0xc000000

    .line 114
    .line 115
    invoke-static {v1, v7, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    :goto_6
    move-object v2, v5

    .line 120
    :goto_7
    if-eqz v2, :cond_8

    .line 121
    .line 122
    iget p1, p1, Lv0/a;->b:I

    .line 123
    .line 124
    sget v3, Lcom/google/android/gms/common/api/GoogleApiActivity;->b:I

    .line 125
    .line 126
    new-instance v3, Landroid/content/Intent;

    .line 127
    .line 128
    const-class v4, Lcom/google/android/gms/common/api/GoogleApiActivity;

    .line 129
    .line 130
    invoke-direct {v3, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 131
    .line 132
    .line 133
    const-string v4, "pending_intent"

    .line 134
    .line 135
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 136
    .line 137
    .line 138
    const-string v2, "failing_client_id"

    .line 139
    .line 140
    invoke-virtual {v3, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 141
    .line 142
    .line 143
    const-string p2, "notify_manager"

    .line 144
    .line 145
    invoke-virtual {v3, p2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 146
    .line 147
    .line 148
    sget p2, Le1/c;->a:I

    .line 149
    .line 150
    const/high16 v2, 0x8000000

    .line 151
    .line 152
    or-int/2addr p2, v2

    .line 153
    invoke-static {v1, v7, v3, p2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    invoke-virtual {v0, v1, p1, p2}, Lv0/d;->g(Landroid/content/Context;ILandroid/app/PendingIntent;)V

    .line 158
    .line 159
    .line 160
    goto :goto_9

    .line 161
    :cond_8
    :goto_8
    move v6, v7

    .line 162
    :goto_9
    return v6

    .line 163
    :catchall_0
    move-exception p1

    .line 164
    monitor-exit v2

    .line 165
    throw p1
.end method

.method public final d(Lw0/d;)Lx0/o;
    .locals 3

    .line 1
    iget-object v0, p0, Lx0/d;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    iget-object v1, p1, Lw0/d;->e:Lx0/a;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    check-cast v2, Lx0/o;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    new-instance v2, Lx0/o;

    .line 14
    .line 15
    invoke-direct {v2, p0, p1}, Lx0/o;-><init>(Lx0/d;Lw0/d;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object p1, v2, Lx0/o;->b:Ly0/f;

    .line 22
    .line 23
    invoke-interface {p1}, Lw0/b;->f()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    iget-object p1, p0, Lx0/d;->q:Lf/c;

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Lf/c;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {v2}, Lx0/o;->m()V

    .line 35
    .line 36
    .line 37
    return-object v2
.end method

.method public final f(Lv0/a;I)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lx0/d;->b(Lv0/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lx0/d;->r:Le1/d;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 11

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const-wide/32 v1, 0x493e0

    .line 4
    .line 5
    .line 6
    const/16 v3, 0x11

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v6, 0x1

    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    return v4

    .line 15
    :pswitch_0
    iput-boolean v4, p0, Lx0/d;->g:Z

    .line 16
    .line 17
    goto/16 :goto_c

    .line 18
    .line 19
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p1, Lx0/t;

    .line 22
    .line 23
    const-wide/16 v0, 0x0

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    const-wide/16 v7, 0x0

    .line 29
    .line 30
    cmp-long v0, v0, v7

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    new-instance v0, Ly0/k;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    filled-new-array {v2}, [Ly0/h;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-direct {v0, v1, p1}, Ly0/k;-><init>(ILjava/util/List;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lx0/d;->i:La1/d;

    .line 56
    .line 57
    if-nez p1, :cond_0

    .line 58
    .line 59
    new-instance p1, La1/d;

    .line 60
    .line 61
    iget-object v1, p0, Lx0/d;->j:Landroid/content/Context;

    .line 62
    .line 63
    invoke-direct {p1, v1}, La1/d;-><init>(Landroid/content/Context;)V

    .line 64
    .line 65
    .line 66
    iput-object p1, p0, Lx0/d;->i:La1/d;

    .line 67
    .line 68
    :cond_0
    iget-object p1, p0, Lx0/d;->i:La1/d;

    .line 69
    .line 70
    invoke-virtual {p1, v0}, La1/d;->b(Ly0/k;)Li1/f;

    .line 71
    .line 72
    .line 73
    goto/16 :goto_c

    .line 74
    .line 75
    :cond_1
    iget-object v0, p0, Lx0/d;->h:Ly0/k;

    .line 76
    .line 77
    if-eqz v0, :cond_8

    .line 78
    .line 79
    iget-object v1, v0, Ly0/k;->b:Ljava/util/List;

    .line 80
    .line 81
    iget v0, v0, Ly0/k;->a:I

    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    if-nez v0, :cond_4

    .line 87
    .line 88
    if-eqz v1, :cond_2

    .line 89
    .line 90
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    if-ltz v0, :cond_2

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_2
    iget-object v0, p0, Lx0/d;->h:Ly0/k;

    .line 101
    .line 102
    const/4 v1, 0x0

    .line 103
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    iget-object v2, v0, Ly0/k;->b:Ljava/util/List;

    .line 107
    .line 108
    if-nez v2, :cond_3

    .line 109
    .line 110
    new-instance v2, Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .line 114
    .line 115
    iput-object v2, v0, Ly0/k;->b:Ljava/util/List;

    .line 116
    .line 117
    :cond_3
    iget-object v0, v0, Ly0/k;->b:Ljava/util/List;

    .line 118
    .line 119
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_4
    :goto_0
    iget-object v0, p0, Lx0/d;->r:Le1/d;

    .line 124
    .line 125
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 126
    .line 127
    .line 128
    iget-object v0, p0, Lx0/d;->h:Ly0/k;

    .line 129
    .line 130
    if-eqz v0, :cond_8

    .line 131
    .line 132
    iget v1, v0, Ly0/k;->a:I

    .line 133
    .line 134
    if-gtz v1, :cond_5

    .line 135
    .line 136
    invoke-virtual {p0}, Lx0/d;->a()Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-eqz v1, :cond_7

    .line 141
    .line 142
    :cond_5
    iget-object v1, p0, Lx0/d;->i:La1/d;

    .line 143
    .line 144
    if-nez v1, :cond_6

    .line 145
    .line 146
    new-instance v1, La1/d;

    .line 147
    .line 148
    iget-object v2, p0, Lx0/d;->j:Landroid/content/Context;

    .line 149
    .line 150
    invoke-direct {v1, v2}, La1/d;-><init>(Landroid/content/Context;)V

    .line 151
    .line 152
    .line 153
    iput-object v1, p0, Lx0/d;->i:La1/d;

    .line 154
    .line 155
    :cond_6
    iget-object v1, p0, Lx0/d;->i:La1/d;

    .line 156
    .line 157
    invoke-virtual {v1, v0}, La1/d;->b(Ly0/k;)Li1/f;

    .line 158
    .line 159
    .line 160
    :cond_7
    iput-object v5, p0, Lx0/d;->h:Ly0/k;

    .line 161
    .line 162
    :cond_8
    :goto_1
    iget-object v0, p0, Lx0/d;->h:Ly0/k;

    .line 163
    .line 164
    if-nez v0, :cond_22

    .line 165
    .line 166
    new-instance v0, Ljava/util/ArrayList;

    .line 167
    .line 168
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .line 170
    .line 171
    const/4 v1, 0x0

    .line 172
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    new-instance v1, Ly0/k;

    .line 179
    .line 180
    const/4 v2, 0x0

    .line 181
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    .line 183
    .line 184
    invoke-direct {v1, v2, v0}, Ly0/k;-><init>(ILjava/util/List;)V

    .line 185
    .line 186
    .line 187
    iput-object v1, p0, Lx0/d;->h:Ly0/k;

    .line 188
    .line 189
    iget-object v0, p0, Lx0/d;->r:Le1/d;

    .line 190
    .line 191
    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    const-wide/16 v2, 0x0

    .line 196
    .line 197
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 201
    .line 202
    .line 203
    goto/16 :goto_c

    .line 204
    .line 205
    :pswitch_2
    iget-object p1, p0, Lx0/d;->h:Ly0/k;

    .line 206
    .line 207
    if-eqz p1, :cond_22

    .line 208
    .line 209
    iget v0, p1, Ly0/k;->a:I

    .line 210
    .line 211
    if-gtz v0, :cond_9

    .line 212
    .line 213
    invoke-virtual {p0}, Lx0/d;->a()Z

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    if-eqz v0, :cond_b

    .line 218
    .line 219
    :cond_9
    iget-object v0, p0, Lx0/d;->i:La1/d;

    .line 220
    .line 221
    if-nez v0, :cond_a

    .line 222
    .line 223
    new-instance v0, La1/d;

    .line 224
    .line 225
    iget-object v1, p0, Lx0/d;->j:Landroid/content/Context;

    .line 226
    .line 227
    invoke-direct {v0, v1}, La1/d;-><init>(Landroid/content/Context;)V

    .line 228
    .line 229
    .line 230
    iput-object v0, p0, Lx0/d;->i:La1/d;

    .line 231
    .line 232
    :cond_a
    iget-object v0, p0, Lx0/d;->i:La1/d;

    .line 233
    .line 234
    invoke-virtual {v0, p1}, La1/d;->b(Ly0/k;)Li1/f;

    .line 235
    .line 236
    .line 237
    :cond_b
    iput-object v5, p0, Lx0/d;->h:Ly0/k;

    .line 238
    .line 239
    goto/16 :goto_c

    .line 240
    .line 241
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 242
    .line 243
    check-cast p1, Lx0/p;

    .line 244
    .line 245
    iget-object v0, p0, Lx0/d;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 246
    .line 247
    iget-object v1, p1, Lx0/p;->a:Lx0/a;

    .line 248
    .line 249
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    if-eqz v0, :cond_22

    .line 254
    .line 255
    iget-object v0, p0, Lx0/d;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 256
    .line 257
    iget-object v1, p1, Lx0/p;->a:Lx0/a;

    .line 258
    .line 259
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    check-cast v0, Lx0/o;

    .line 264
    .line 265
    iget-object v1, v0, Lx0/o;->j:Ljava/util/ArrayList;

    .line 266
    .line 267
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result v1

    .line 271
    if-eqz v1, :cond_22

    .line 272
    .line 273
    iget-object v1, v0, Lx0/o;->l:Lx0/d;

    .line 274
    .line 275
    iget-object v2, v1, Lx0/d;->r:Le1/d;

    .line 276
    .line 277
    const/16 v3, 0xf

    .line 278
    .line 279
    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 280
    .line 281
    .line 282
    iget-object v1, v1, Lx0/d;->r:Le1/d;

    .line 283
    .line 284
    const/16 v2, 0x10

    .line 285
    .line 286
    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 287
    .line 288
    .line 289
    iget-object p1, p1, Lx0/p;->b:Lv0/c;

    .line 290
    .line 291
    iget-object v1, v0, Lx0/o;->a:Ljava/util/LinkedList;

    .line 292
    .line 293
    new-instance v2, Ljava/util/ArrayList;

    .line 294
    .line 295
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    .line 296
    .line 297
    .line 298
    move-result v3

    .line 299
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 300
    .line 301
    .line 302
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 303
    .line 304
    .line 305
    move-result-object v3

    .line 306
    :cond_c
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 307
    .line 308
    .line 309
    move-result v5

    .line 310
    if-eqz v5, :cond_f

    .line 311
    .line 312
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v5

    .line 316
    check-cast v5, Lx0/s;

    .line 317
    .line 318
    instance-of v7, v5, Lx0/s;

    .line 319
    .line 320
    if-eqz v7, :cond_c

    .line 321
    .line 322
    invoke-virtual {v5, v0}, Lx0/s;->b(Lx0/o;)[Lv0/c;

    .line 323
    .line 324
    .line 325
    move-result-object v7

    .line 326
    if-eqz v7, :cond_c

    .line 327
    .line 328
    array-length v8, v7

    .line 329
    move v9, v4

    .line 330
    :goto_3
    if-ge v9, v8, :cond_e

    .line 331
    .line 332
    aget-object v10, v7, v9

    .line 333
    .line 334
    invoke-static {v10, p1}, Lcom/google/android/gms/internal/play_billing/i0;->E(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    move-result v10

    .line 338
    if-eqz v10, :cond_d

    .line 339
    .line 340
    if-ltz v9, :cond_e

    .line 341
    .line 342
    move v7, v6

    .line 343
    goto :goto_4

    .line 344
    :cond_d
    add-int/lit8 v9, v9, 0x1

    .line 345
    .line 346
    goto :goto_3

    .line 347
    :cond_e
    move v7, v4

    .line 348
    :goto_4
    if-eqz v7, :cond_c

    .line 349
    .line 350
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    goto :goto_2

    .line 354
    :cond_f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 355
    .line 356
    .line 357
    move-result v0

    .line 358
    :goto_5
    if-ge v4, v0, :cond_22

    .line 359
    .line 360
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object v3

    .line 364
    check-cast v3, Lx0/s;

    .line 365
    .line 366
    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 367
    .line 368
    .line 369
    new-instance v5, Lw0/h;

    .line 370
    .line 371
    invoke-direct {v5, p1}, Lw0/h;-><init>(Lv0/c;)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v3, v5}, Lx0/s;->d(Ljava/lang/RuntimeException;)V

    .line 375
    .line 376
    .line 377
    add-int/lit8 v4, v4, 0x1

    .line 378
    .line 379
    goto :goto_5

    .line 380
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 381
    .line 382
    check-cast p1, Lx0/p;

    .line 383
    .line 384
    iget-object v0, p0, Lx0/d;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 385
    .line 386
    iget-object v1, p1, Lx0/p;->a:Lx0/a;

    .line 387
    .line 388
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 389
    .line 390
    .line 391
    move-result v0

    .line 392
    if-eqz v0, :cond_22

    .line 393
    .line 394
    iget-object v0, p0, Lx0/d;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 395
    .line 396
    iget-object v1, p1, Lx0/p;->a:Lx0/a;

    .line 397
    .line 398
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    check-cast v0, Lx0/o;

    .line 403
    .line 404
    iget-object v1, v0, Lx0/o;->j:Ljava/util/ArrayList;

    .line 405
    .line 406
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 407
    .line 408
    .line 409
    move-result p1

    .line 410
    if-nez p1, :cond_10

    .line 411
    .line 412
    goto/16 :goto_c

    .line 413
    .line 414
    :cond_10
    iget-boolean p1, v0, Lx0/o;->i:Z

    .line 415
    .line 416
    if-nez p1, :cond_22

    .line 417
    .line 418
    iget-object p1, v0, Lx0/o;->b:Ly0/f;

    .line 419
    .line 420
    invoke-virtual {p1}, Ly0/f;->p()Z

    .line 421
    .line 422
    .line 423
    move-result p1

    .line 424
    if-nez p1, :cond_11

    .line 425
    .line 426
    invoke-virtual {v0}, Lx0/o;->m()V

    .line 427
    .line 428
    .line 429
    goto/16 :goto_c

    .line 430
    .line 431
    :cond_11
    invoke-virtual {v0}, Lx0/o;->g()V

    .line 432
    .line 433
    .line 434
    goto/16 :goto_c

    .line 435
    .line 436
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 437
    .line 438
    invoke-static {p1}, La1/b;->j(Ljava/lang/Object;)V

    .line 439
    .line 440
    .line 441
    throw v5

    .line 442
    :pswitch_6
    iget-object v0, p0, Lx0/d;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 443
    .line 444
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 445
    .line 446
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 447
    .line 448
    .line 449
    move-result v0

    .line 450
    if-eqz v0, :cond_22

    .line 451
    .line 452
    iget-object v0, p0, Lx0/d;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 453
    .line 454
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 455
    .line 456
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    move-result-object p1

    .line 460
    check-cast p1, Lx0/o;

    .line 461
    .line 462
    iget-object v0, p1, Lx0/o;->l:Lx0/d;

    .line 463
    .line 464
    iget-object v0, v0, Lx0/d;->r:Le1/d;

    .line 465
    .line 466
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/i0;->i(Le1/d;)V

    .line 467
    .line 468
    .line 469
    iget-object v0, p1, Lx0/o;->b:Ly0/f;

    .line 470
    .line 471
    invoke-virtual {v0}, Ly0/f;->p()Z

    .line 472
    .line 473
    .line 474
    move-result v1

    .line 475
    if-eqz v1, :cond_22

    .line 476
    .line 477
    iget-object v1, p1, Lx0/o;->f:Ljava/util/HashMap;

    .line 478
    .line 479
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 480
    .line 481
    .line 482
    move-result v1

    .line 483
    if-eqz v1, :cond_22

    .line 484
    .line 485
    iget-object v1, p1, Lx0/o;->d:Lx0/i;

    .line 486
    .line 487
    iget-object v2, v1, Lx0/i;->a:Ljava/util/Map;

    .line 488
    .line 489
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    .line 490
    .line 491
    .line 492
    move-result v2

    .line 493
    if-eqz v2, :cond_12

    .line 494
    .line 495
    iget-object v1, v1, Lx0/i;->b:Ljava/util/Map;

    .line 496
    .line 497
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 498
    .line 499
    .line 500
    move-result v1

    .line 501
    if-nez v1, :cond_13

    .line 502
    .line 503
    :cond_12
    move v4, v6

    .line 504
    :cond_13
    if-eqz v4, :cond_14

    .line 505
    .line 506
    invoke-virtual {p1}, Lx0/o;->j()V

    .line 507
    .line 508
    .line 509
    goto/16 :goto_c

    .line 510
    .line 511
    :cond_14
    const-string p1, "Timing out service connection."

    .line 512
    .line 513
    invoke-virtual {v0, p1}, Ly0/f;->e(Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    goto/16 :goto_c

    .line 517
    .line 518
    :pswitch_7
    iget-object v0, p0, Lx0/d;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 519
    .line 520
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 521
    .line 522
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 523
    .line 524
    .line 525
    move-result v0

    .line 526
    if-eqz v0, :cond_22

    .line 527
    .line 528
    iget-object v0, p0, Lx0/d;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 529
    .line 530
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 531
    .line 532
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    .line 534
    .line 535
    move-result-object p1

    .line 536
    check-cast p1, Lx0/o;

    .line 537
    .line 538
    iget-object v0, p1, Lx0/o;->l:Lx0/d;

    .line 539
    .line 540
    iget-object v1, v0, Lx0/d;->r:Le1/d;

    .line 541
    .line 542
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/i0;->i(Le1/d;)V

    .line 543
    .line 544
    .line 545
    iget-boolean v1, p1, Lx0/o;->i:Z

    .line 546
    .line 547
    if-eqz v1, :cond_22

    .line 548
    .line 549
    if-eqz v1, :cond_15

    .line 550
    .line 551
    iget-object v1, p1, Lx0/o;->l:Lx0/d;

    .line 552
    .line 553
    iget-object v2, v1, Lx0/d;->r:Le1/d;

    .line 554
    .line 555
    iget-object v3, p1, Lx0/o;->c:Lx0/a;

    .line 556
    .line 557
    const/16 v7, 0xb

    .line 558
    .line 559
    invoke-virtual {v2, v7, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 560
    .line 561
    .line 562
    iget-object v1, v1, Lx0/d;->r:Le1/d;

    .line 563
    .line 564
    const/16 v2, 0x9

    .line 565
    .line 566
    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 567
    .line 568
    .line 569
    iput-boolean v4, p1, Lx0/o;->i:Z

    .line 570
    .line 571
    :cond_15
    iget-object v1, v0, Lx0/d;->k:Lv0/d;

    .line 572
    .line 573
    iget-object v0, v0, Lx0/d;->j:Landroid/content/Context;

    .line 574
    .line 575
    invoke-virtual {v1, v0}, Lv0/d;->c(Landroid/content/Context;)I

    .line 576
    .line 577
    .line 578
    move-result v0

    .line 579
    const/16 v1, 0x12

    .line 580
    .line 581
    if-ne v0, v1, :cond_16

    .line 582
    .line 583
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    .line 584
    .line 585
    const/16 v1, 0x15

    .line 586
    .line 587
    const-string v2, "Connection timed out waiting for Google Play services update to complete."

    .line 588
    .line 589
    invoke-direct {v0, v1, v2, v5, v5}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lv0/a;)V

    .line 590
    .line 591
    .line 592
    goto :goto_6

    .line 593
    :cond_16
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    .line 594
    .line 595
    const/16 v1, 0x16

    .line 596
    .line 597
    const-string v2, "API failed to connect while resuming due to an unknown error."

    .line 598
    .line 599
    invoke-direct {v0, v1, v2, v5, v5}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lv0/a;)V

    .line 600
    .line 601
    .line 602
    :goto_6
    invoke-virtual {p1, v0}, Lx0/o;->e(Lcom/google/android/gms/common/api/Status;)V

    .line 603
    .line 604
    .line 605
    iget-object p1, p1, Lx0/o;->b:Ly0/f;

    .line 606
    .line 607
    const-string v0, "Timing out connection while resuming."

    .line 608
    .line 609
    invoke-virtual {p1, v0}, Ly0/f;->e(Ljava/lang/String;)V

    .line 610
    .line 611
    .line 612
    goto/16 :goto_c

    .line 613
    .line 614
    :pswitch_8
    iget-object p1, p0, Lx0/d;->q:Lf/c;

    .line 615
    .line 616
    invoke-virtual {p1}, Lf/c;->iterator()Ljava/util/Iterator;

    .line 617
    .line 618
    .line 619
    move-result-object p1

    .line 620
    :cond_17
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 621
    .line 622
    .line 623
    move-result v0

    .line 624
    if-eqz v0, :cond_18

    .line 625
    .line 626
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 627
    .line 628
    .line 629
    move-result-object v0

    .line 630
    check-cast v0, Lx0/a;

    .line 631
    .line 632
    iget-object v1, p0, Lx0/d;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 633
    .line 634
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    .line 636
    .line 637
    move-result-object v0

    .line 638
    check-cast v0, Lx0/o;

    .line 639
    .line 640
    if-eqz v0, :cond_17

    .line 641
    .line 642
    invoke-virtual {v0}, Lx0/o;->q()V

    .line 643
    .line 644
    .line 645
    goto :goto_7

    .line 646
    :cond_18
    iget-object p1, p0, Lx0/d;->q:Lf/c;

    .line 647
    .line 648
    invoke-virtual {p1}, Lf/c;->clear()V

    .line 649
    .line 650
    .line 651
    goto/16 :goto_c

    .line 652
    .line 653
    :pswitch_9
    iget-object v0, p0, Lx0/d;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 654
    .line 655
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 656
    .line 657
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 658
    .line 659
    .line 660
    move-result v0

    .line 661
    if-eqz v0, :cond_22

    .line 662
    .line 663
    iget-object v0, p0, Lx0/d;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 664
    .line 665
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 666
    .line 667
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    .line 669
    .line 670
    move-result-object p1

    .line 671
    check-cast p1, Lx0/o;

    .line 672
    .line 673
    iget-object v0, p1, Lx0/o;->l:Lx0/d;

    .line 674
    .line 675
    iget-object v0, v0, Lx0/d;->r:Le1/d;

    .line 676
    .line 677
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/i0;->i(Le1/d;)V

    .line 678
    .line 679
    .line 680
    iget-boolean v0, p1, Lx0/o;->i:Z

    .line 681
    .line 682
    if-eqz v0, :cond_22

    .line 683
    .line 684
    invoke-virtual {p1}, Lx0/o;->m()V

    .line 685
    .line 686
    .line 687
    goto/16 :goto_c

    .line 688
    .line 689
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 690
    .line 691
    check-cast p1, Lw0/d;

    .line 692
    .line 693
    invoke-virtual {p0, p1}, Lx0/d;->d(Lw0/d;)Lx0/o;

    .line 694
    .line 695
    .line 696
    goto/16 :goto_c

    .line 697
    .line 698
    :pswitch_b
    iget-object p1, p0, Lx0/d;->j:Landroid/content/Context;

    .line 699
    .line 700
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 701
    .line 702
    .line 703
    move-result-object p1

    .line 704
    instance-of p1, p1, Landroid/app/Application;

    .line 705
    .line 706
    if-eqz p1, :cond_22

    .line 707
    .line 708
    iget-object p1, p0, Lx0/d;->j:Landroid/content/Context;

    .line 709
    .line 710
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 711
    .line 712
    .line 713
    move-result-object p1

    .line 714
    check-cast p1, Landroid/app/Application;

    .line 715
    .line 716
    sget-object v0, Lx0/b;->e:Lx0/b;

    .line 717
    .line 718
    monitor-enter v0

    .line 719
    :try_start_0
    iget-boolean v3, v0, Lx0/b;->d:Z

    .line 720
    .line 721
    if-nez v3, :cond_19

    .line 722
    .line 723
    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 724
    .line 725
    .line 726
    invoke-virtual {p1, v0}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 727
    .line 728
    .line 729
    iput-boolean v6, v0, Lx0/b;->d:Z

    .line 730
    .line 731
    :cond_19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 732
    new-instance p1, Lx0/l;

    .line 733
    .line 734
    invoke-direct {p1, p0}, Lx0/l;-><init>(Lx0/d;)V

    .line 735
    .line 736
    .line 737
    monitor-enter v0

    .line 738
    :try_start_1
    iget-object v3, v0, Lx0/b;->c:Ljava/util/ArrayList;

    .line 739
    .line 740
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 741
    .line 742
    .line 743
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 744
    iget-object p1, v0, Lx0/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 745
    .line 746
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 747
    .line 748
    .line 749
    move-result v3

    .line 750
    iget-object v0, v0, Lx0/b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 751
    .line 752
    if-nez v3, :cond_1a

    .line 753
    .line 754
    new-instance v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 755
    .line 756
    invoke-direct {v3}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 757
    .line 758
    .line 759
    invoke-static {v3}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 760
    .line 761
    .line 762
    invoke-virtual {p1, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 763
    .line 764
    .line 765
    move-result p1

    .line 766
    if-nez p1, :cond_1a

    .line 767
    .line 768
    iget p1, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    .line 769
    .line 770
    const/16 v3, 0x64

    .line 771
    .line 772
    if-le p1, v3, :cond_1a

    .line 773
    .line 774
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 775
    .line 776
    .line 777
    :cond_1a
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 778
    .line 779
    .line 780
    move-result p1

    .line 781
    if-nez p1, :cond_22

    .line 782
    .line 783
    iput-wide v1, p0, Lx0/d;->f:J

    .line 784
    .line 785
    goto/16 :goto_c

    .line 786
    .line 787
    :catchall_0
    move-exception p1

    .line 788
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 789
    throw p1

    .line 790
    :catchall_1
    move-exception p1

    .line 791
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 792
    throw p1

    .line 793
    :pswitch_c
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 794
    .line 795
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 796
    .line 797
    check-cast p1, Lv0/a;

    .line 798
    .line 799
    iget-object v1, p0, Lx0/d;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 800
    .line 801
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 802
    .line 803
    .line 804
    move-result-object v1

    .line 805
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 806
    .line 807
    .line 808
    move-result-object v1

    .line 809
    :cond_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 810
    .line 811
    .line 812
    move-result v2

    .line 813
    if-eqz v2, :cond_1c

    .line 814
    .line 815
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 816
    .line 817
    .line 818
    move-result-object v2

    .line 819
    check-cast v2, Lx0/o;

    .line 820
    .line 821
    iget v4, v2, Lx0/o;->g:I

    .line 822
    .line 823
    if-ne v4, v0, :cond_1b

    .line 824
    .line 825
    goto :goto_8

    .line 826
    :cond_1c
    move-object v2, v5

    .line 827
    :goto_8
    if-eqz v2, :cond_1e

    .line 828
    .line 829
    iget v0, p1, Lv0/a;->b:I

    .line 830
    .line 831
    const/16 v1, 0xd

    .line 832
    .line 833
    if-ne v0, v1, :cond_1d

    .line 834
    .line 835
    iget-object v1, p0, Lx0/d;->k:Lv0/d;

    .line 836
    .line 837
    new-instance v4, Lcom/google/android/gms/common/api/Status;

    .line 838
    .line 839
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 840
    .line 841
    .line 842
    sget-object v1, Lv0/g;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 843
    .line 844
    invoke-static {v0}, Lv0/a;->a(I)Ljava/lang/String;

    .line 845
    .line 846
    .line 847
    move-result-object v0

    .line 848
    iget-object p1, p1, Lv0/a;->d:Ljava/lang/String;

    .line 849
    .line 850
    new-instance v1, Ljava/lang/StringBuilder;

    .line 851
    .line 852
    const-string v7, "Error resolution was canceled by the user, original error message: "

    .line 853
    .line 854
    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 855
    .line 856
    .line 857
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    .line 859
    .line 860
    const-string v0, ": "

    .line 861
    .line 862
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    .line 864
    .line 865
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 866
    .line 867
    .line 868
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 869
    .line 870
    .line 871
    move-result-object p1

    .line 872
    invoke-direct {v4, v3, p1, v5, v5}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lv0/a;)V

    .line 873
    .line 874
    .line 875
    invoke-virtual {v2, v4}, Lx0/o;->e(Lcom/google/android/gms/common/api/Status;)V

    .line 876
    .line 877
    .line 878
    goto/16 :goto_c

    .line 879
    .line 880
    :cond_1d
    iget-object v0, v2, Lx0/o;->c:Lx0/a;

    .line 881
    .line 882
    invoke-static {v0, p1}, Lx0/d;->c(Lx0/a;Lv0/a;)Lcom/google/android/gms/common/api/Status;

    .line 883
    .line 884
    .line 885
    move-result-object p1

    .line 886
    invoke-virtual {v2, p1}, Lx0/o;->e(Lcom/google/android/gms/common/api/Status;)V

    .line 887
    .line 888
    .line 889
    goto/16 :goto_c

    .line 890
    .line 891
    :cond_1e
    new-instance p1, Ljava/lang/StringBuilder;

    .line 892
    .line 893
    const-string v1, "Could not find API instance "

    .line 894
    .line 895
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 896
    .line 897
    .line 898
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 899
    .line 900
    .line 901
    const-string v0, " while trying to fail enqueued calls."

    .line 902
    .line 903
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 904
    .line 905
    .line 906
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 907
    .line 908
    .line 909
    move-result-object p1

    .line 910
    new-instance v0, Ljava/lang/Exception;

    .line 911
    .line 912
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 913
    .line 914
    .line 915
    const-string v1, "GoogleApiManager"

    .line 916
    .line 917
    invoke-static {v1, p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 918
    .line 919
    .line 920
    goto/16 :goto_c

    .line 921
    .line 922
    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 923
    .line 924
    check-cast p1, Lx0/u;

    .line 925
    .line 926
    iget-object v0, p0, Lx0/d;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 927
    .line 928
    iget-object v1, p1, Lx0/u;->c:Lw0/d;

    .line 929
    .line 930
    iget-object v1, v1, Lw0/d;->e:Lx0/a;

    .line 931
    .line 932
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    .line 934
    .line 935
    move-result-object v0

    .line 936
    check-cast v0, Lx0/o;

    .line 937
    .line 938
    if-nez v0, :cond_1f

    .line 939
    .line 940
    iget-object v0, p1, Lx0/u;->c:Lw0/d;

    .line 941
    .line 942
    invoke-virtual {p0, v0}, Lx0/d;->d(Lw0/d;)Lx0/o;

    .line 943
    .line 944
    .line 945
    move-result-object v0

    .line 946
    :cond_1f
    iget-object v1, v0, Lx0/o;->b:Ly0/f;

    .line 947
    .line 948
    invoke-interface {v1}, Lw0/b;->f()Z

    .line 949
    .line 950
    .line 951
    move-result v1

    .line 952
    if-eqz v1, :cond_20

    .line 953
    .line 954
    iget-object v1, p0, Lx0/d;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 955
    .line 956
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 957
    .line 958
    .line 959
    move-result v1

    .line 960
    iget v2, p1, Lx0/u;->b:I

    .line 961
    .line 962
    if-eq v1, v2, :cond_20

    .line 963
    .line 964
    iget-object p1, p1, Lx0/u;->a:Lx0/s;

    .line 965
    .line 966
    sget-object v1, Lx0/d;->t:Lcom/google/android/gms/common/api/Status;

    .line 967
    .line 968
    invoke-virtual {p1, v1}, Lx0/s;->c(Lcom/google/android/gms/common/api/Status;)V

    .line 969
    .line 970
    .line 971
    invoke-virtual {v0}, Lx0/o;->q()V

    .line 972
    .line 973
    .line 974
    goto :goto_c

    .line 975
    :cond_20
    iget-object p1, p1, Lx0/u;->a:Lx0/s;

    .line 976
    .line 977
    invoke-virtual {v0, p1}, Lx0/o;->n(Lx0/s;)V

    .line 978
    .line 979
    .line 980
    goto :goto_c

    .line 981
    :pswitch_e
    iget-object p1, p0, Lx0/d;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 982
    .line 983
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 984
    .line 985
    .line 986
    move-result-object p1

    .line 987
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 988
    .line 989
    .line 990
    move-result-object p1

    .line 991
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 992
    .line 993
    .line 994
    move-result v0

    .line 995
    if-eqz v0, :cond_22

    .line 996
    .line 997
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 998
    .line 999
    .line 1000
    move-result-object v0

    .line 1001
    check-cast v0, Lx0/o;

    .line 1002
    .line 1003
    iget-object v1, v0, Lx0/o;->l:Lx0/d;

    .line 1004
    .line 1005
    iget-object v1, v1, Lx0/d;->r:Le1/d;

    .line 1006
    .line 1007
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/i0;->i(Le1/d;)V

    .line 1008
    .line 1009
    .line 1010
    iput-object v5, v0, Lx0/o;->k:Lv0/a;

    .line 1011
    .line 1012
    invoke-virtual {v0}, Lx0/o;->m()V

    .line 1013
    .line 1014
    .line 1015
    goto :goto_9

    .line 1016
    :pswitch_f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1017
    .line 1018
    invoke-static {p1}, La1/b;->j(Ljava/lang/Object;)V

    .line 1019
    .line 1020
    .line 1021
    throw v5

    .line 1022
    :pswitch_10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1023
    .line 1024
    check-cast p1, Ljava/lang/Boolean;

    .line 1025
    .line 1026
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1027
    .line 1028
    .line 1029
    move-result p1

    .line 1030
    if-eq v6, p1, :cond_21

    .line 1031
    .line 1032
    goto :goto_a

    .line 1033
    :cond_21
    const-wide/16 v1, 0x2710

    .line 1034
    .line 1035
    :goto_a
    iput-wide v1, p0, Lx0/d;->f:J

    .line 1036
    .line 1037
    iget-object p1, p0, Lx0/d;->r:Le1/d;

    .line 1038
    .line 1039
    const/16 v0, 0xc

    .line 1040
    .line 1041
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1042
    .line 1043
    .line 1044
    iget-object p1, p0, Lx0/d;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1045
    .line 1046
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 1047
    .line 1048
    .line 1049
    move-result-object p1

    .line 1050
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1051
    .line 1052
    .line 1053
    move-result-object p1

    .line 1054
    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 1055
    .line 1056
    .line 1057
    move-result v1

    .line 1058
    if-eqz v1, :cond_22

    .line 1059
    .line 1060
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1061
    .line 1062
    .line 1063
    move-result-object v1

    .line 1064
    check-cast v1, Lx0/a;

    .line 1065
    .line 1066
    iget-object v2, p0, Lx0/d;->r:Le1/d;

    .line 1067
    .line 1068
    invoke-virtual {v2, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v1

    .line 1072
    iget-wide v3, p0, Lx0/d;->f:J

    .line 1073
    .line 1074
    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1075
    .line 1076
    .line 1077
    goto :goto_b

    .line 1078
    :cond_22
    :goto_c
    return v6

    .line 1079
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_d
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_d
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
