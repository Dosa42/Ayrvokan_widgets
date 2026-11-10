.class public final Lw2/k;
.super Lt2/a;
.source "SourceFile"

# interfaces
.implements Lx2/k;


# instance fields
.field public final f:Lw2/g;

.field public final g:Landroid/net/Uri;

.field public final h:Lw2/b;

.field public final i:Lc/a;

.field public final j:Lj2/d;

.field public final k:La3/r;

.field public final l:Z

.field public final m:I

.field public final n:Z

.field public final o:Lx2/l;

.field public final p:Ljava/lang/Object;

.field public q:La3/g0;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, ", goog.exo.hls"

    .line 2
    .line 3
    const-string v1, "goog.exo.hls"

    .line 4
    .line 5
    sget-object v2, Lf2/s;->a:Ljava/util/HashSet;

    .line 6
    .line 7
    const-class v2, Lf2/s;

    .line 8
    .line 9
    monitor-enter v2

    .line 10
    :try_start_0
    sget-object v3, Lf2/s;->a:Ljava/util/HashSet;

    .line 11
    .line 12
    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    sget-object v3, Lf2/s;->b:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lf2/s;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    :cond_0
    monitor-exit v2

    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    monitor-exit v2

    .line 41
    throw v0
.end method

.method public constructor <init>(Landroid/net/Uri;Lw2/b;Ly0/i;Lc/a;Ly0/i;La3/r;Lx2/b;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lt2/a;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lw2/k;->g:Landroid/net/Uri;

    .line 5
    .line 6
    iput-object p2, p0, Lw2/k;->h:Lw2/b;

    .line 7
    .line 8
    iput-object p3, p0, Lw2/k;->f:Lw2/g;

    .line 9
    .line 10
    iput-object p4, p0, Lw2/k;->i:Lc/a;

    .line 11
    .line 12
    iput-object p5, p0, Lw2/k;->j:Lj2/d;

    .line 13
    .line 14
    iput-object p6, p0, Lw2/k;->k:La3/r;

    .line 15
    .line 16
    iput-object p7, p0, Lw2/k;->o:Lx2/l;

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput-boolean p1, p0, Lw2/k;->l:Z

    .line 20
    .line 21
    iput p8, p0, Lw2/k;->m:I

    .line 22
    .line 23
    iput-boolean p1, p0, Lw2/k;->n:Z

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lw2/k;->p:Ljava/lang/Object;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final a(Lt2/e;)V
    .locals 13

    .line 1
    check-cast p1, Lw2/i;

    .line 2
    .line 3
    iget-object v0, p1, Lw2/i;->g:Lx2/l;

    .line 4
    .line 5
    check-cast v0, Lx2/b;

    .line 6
    .line 7
    iget-object v0, v0, Lx2/b;->j:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    iget-object v0, p1, Lw2/i;->w:[Lw2/p;

    .line 13
    .line 14
    array-length v1, v0

    .line 15
    const/4 v2, 0x0

    .line 16
    move v3, v2

    .line 17
    :goto_0
    const/4 v4, 0x0

    .line 18
    if-ge v3, v1, :cond_3

    .line 19
    .line 20
    aget-object v5, v0, v3

    .line 21
    .line 22
    iget-boolean v6, v5, Lw2/p;->F:Z

    .line 23
    .line 24
    if-eqz v6, :cond_2

    .line 25
    .line 26
    iget-object v6, v5, Lw2/p;->x:[Lw2/o;

    .line 27
    .line 28
    array-length v7, v6

    .line 29
    move v8, v2

    .line 30
    :goto_1
    if-ge v8, v7, :cond_2

    .line 31
    .line 32
    aget-object v9, v6, v8

    .line 33
    .line 34
    iget-object v10, v9, Lw2/o;->a:Lt2/p;

    .line 35
    .line 36
    monitor-enter v9

    .line 37
    :try_start_0
    iget v11, v9, Lw2/o;->o:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    if-nez v11, :cond_0

    .line 40
    .line 41
    monitor-exit v9

    .line 42
    const-wide/16 v11, -0x1

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_0
    :try_start_1
    invoke-virtual {v9, v11}, Lw2/o;->e(I)J

    .line 46
    .line 47
    .line 48
    move-result-wide v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    monitor-exit v9

    .line 50
    :goto_2
    invoke-virtual {v10, v11, v12}, Lt2/p;->a(J)V

    .line 51
    .line 52
    .line 53
    iget-object v10, v9, Lw2/o;->f:Lh/a;

    .line 54
    .line 55
    if-eqz v10, :cond_1

    .line 56
    .line 57
    iput-object v4, v9, Lw2/o;->f:Lh/a;

    .line 58
    .line 59
    iput-object v4, v9, Lw2/o;->e:Lf2/t;

    .line 60
    .line 61
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :catchall_0
    move-exception p1

    .line 65
    monitor-exit v9

    .line 66
    throw p1

    .line 67
    :cond_2
    iget-object v6, v5, Lw2/p;->m:La3/c0;

    .line 68
    .line 69
    invoke-virtual {v6, v5}, La3/c0;->b(Lw2/p;)V

    .line 70
    .line 71
    .line 72
    iget-object v6, v5, Lw2/p;->u:Landroid/os/Handler;

    .line 73
    .line 74
    invoke-virtual {v6, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    const/4 v4, 0x1

    .line 78
    iput-boolean v4, v5, Lw2/p;->J:Z

    .line 79
    .line 80
    iget-object v4, v5, Lw2/p;->v:Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 83
    .line 84
    .line 85
    add-int/lit8 v3, v3, 0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_3
    iput-object v4, p1, Lw2/i;->t:Lt2/d;

    .line 89
    .line 90
    iget-object p1, p1, Lw2/i;->l:Lcom/google/android/gms/internal/play_billing/v;

    .line 91
    .line 92
    iget-object v0, p1, Lcom/google/android/gms/internal/play_billing/v;->c:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v0, Lt2/f;

    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    iget-object v1, p1, Lcom/google/android/gms/internal/play_billing/v;->d:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    if-eqz v3, :cond_4

    .line 112
    .line 113
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    check-cast v3, Lt2/k;

    .line 118
    .line 119
    iget-object v4, v3, Lt2/k;->b:Lt2/n;

    .line 120
    .line 121
    new-instance v5, Lt2/h;

    .line 122
    .line 123
    invoke-direct {v5, p1, v4, v0, v2}, Lt2/h;-><init>(Lcom/google/android/gms/internal/play_billing/v;Lt2/n;Lt2/f;I)V

    .line 124
    .line 125
    .line 126
    iget-object v3, v3, Lt2/k;->a:Landroid/os/Handler;

    .line 127
    .line 128
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/play_billing/v;->i(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 129
    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_4
    return-void
.end method
