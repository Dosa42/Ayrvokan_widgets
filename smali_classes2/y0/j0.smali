.class public final Ly0/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln2/u;


# instance fields
.field public final synthetic f:I

.field public g:Z

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Ly0/j0;->f:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly0/j0;->h:Ljava/lang/Object;

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Ly0/j0;->h:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ly0/j0;->g:Z

    iput-object p1, p0, Ly0/j0;->i:Ljava/lang/Object;

    return-void

    .line 4
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ly0/j0;->f:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.google.android.gms"

    iput-object v0, p0, Ly0/j0;->i:Ljava/lang/Object;

    iput-object p1, p0, Ly0/j0;->h:Ljava/lang/Object;

    iput-boolean p2, p0, Ly0/j0;->g:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/ThreadGroup;)V
    .locals 3

    const/4 v0, 0x2

    iput v0, p0, Ly0/j0;->f:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lh/a;

    invoke-direct {v0, p0}, Lh/a;-><init>(Ly0/j0;)V

    iput-object v0, p0, Ly0/j0;->h:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ly0/j0;->g:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lo0/n;

    const/16 v2, 0xe

    invoke-direct {v1, p0, v2}, Lo0/n;-><init>(Ljava/lang/Object;I)V

    const-string v2, "httpServerThread"

    invoke-direct {v0, p1, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public final a(Lb3/l;Lk2/i;Ln2/e0;)V
    .locals 1

    .line 1
    iput-object p1, p0, Ly0/j0;->h:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-virtual {p3}, Ln2/e0;->a()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3}, Ln2/e0;->b()V

    .line 7
    .line 8
    .line 9
    iget p1, p3, Ln2/e0;->d:I

    .line 10
    .line 11
    const/4 v0, 0x4

    .line 12
    check-cast p2, Lw2/p;

    .line 13
    .line 14
    invoke-virtual {p2, p1, v0}, Lw2/p;->C(II)Lk2/o;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Ly0/j0;->i:Ljava/lang/Object;

    .line 19
    .line 20
    invoke-virtual {p3}, Ln2/e0;->b()V

    .line 21
    .line 22
    .line 23
    iget-object p2, p3, Ln2/e0;->e:Ljava/lang/String;

    .line 24
    .line 25
    const-string p3, "application/x-scte35"

    .line 26
    .line 27
    invoke-static {p2, p3}, Lf2/t;->i(Ljava/lang/String;Ljava/lang/String;)Lf2/t;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-interface {p1, p2}, Lk2/o;->c(Lf2/t;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final b(Lb3/h;)V
    .locals 11

    .line 1
    iget-boolean v0, p0, Ly0/j0;->g:Z

    .line 2
    .line 3
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Ly0/j0;->h:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lb3/l;

    .line 13
    .line 14
    invoke-virtual {v0}, Lb3/l;->c()J

    .line 15
    .line 16
    .line 17
    move-result-wide v3

    .line 18
    cmp-long v0, v3, v1

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object v0, p0, Ly0/j0;->i:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Lk2/o;

    .line 26
    .line 27
    iget-object v3, p0, Ly0/j0;->h:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v3, Lb3/l;

    .line 30
    .line 31
    invoke-virtual {v3}, Lb3/l;->c()J

    .line 32
    .line 33
    .line 34
    move-result-wide v3

    .line 35
    const-string v5, "application/x-scte35"

    .line 36
    .line 37
    invoke-static {v5, v3, v4}, Lf2/t;->h(Ljava/lang/String;J)Lf2/t;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-interface {v0, v3}, Lk2/o;->c(Lf2/t;)V

    .line 42
    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Ly0/j0;->g:Z

    .line 46
    .line 47
    :cond_1
    iget v0, p1, Lb3/h;->b:I

    .line 48
    .line 49
    iget v3, p1, Lb3/h;->a:I

    .line 50
    .line 51
    sub-int v8, v0, v3

    .line 52
    .line 53
    iget-object v0, p0, Ly0/j0;->i:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v0, Lk2/o;

    .line 56
    .line 57
    invoke-interface {v0, v8, p1}, Lk2/o;->d(ILb3/h;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Ly0/j0;->i:Ljava/lang/Object;

    .line 61
    .line 62
    move-object v4, p1

    .line 63
    check-cast v4, Lk2/o;

    .line 64
    .line 65
    iget-object p1, p0, Ly0/j0;->h:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast p1, Lb3/l;

    .line 68
    .line 69
    iget-wide v5, p1, Lb3/l;->c:J

    .line 70
    .line 71
    cmp-long v0, v5, v1

    .line 72
    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    iget-wide v0, p1, Lb3/l;->c:J

    .line 76
    .line 77
    iget-wide v2, p1, Lb3/l;->b:J

    .line 78
    .line 79
    add-long v1, v2, v0

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    iget-wide v5, p1, Lb3/l;->a:J

    .line 83
    .line 84
    const-wide v9, 0x7fffffffffffffffL

    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    cmp-long p1, v5, v9

    .line 90
    .line 91
    if-eqz p1, :cond_3

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_3
    :goto_0
    move-wide v5, v1

    .line 95
    :goto_1
    const/4 v7, 0x1

    .line 96
    const/4 v9, 0x0

    .line 97
    const/4 v10, 0x0

    .line 98
    invoke-interface/range {v4 .. v10}, Lk2/o;->b(JIIILk2/n;)V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public final c(Lj0/j;)Lf0/k;
    .locals 3

    .line 1
    iget-object v0, p1, Lj0/j;->f:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string v1, "GET"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Ly0/j0;->h:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Lt1/c;

    .line 19
    .line 20
    iget-object v1, p1, Lj0/j;->e:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v1, Ljava/lang/String;

    .line 23
    .line 24
    invoke-interface {v0, v1}, Lt1/c;->p(Ljava/lang/String;)Landroidx/fragment/app/h;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    new-instance v0, Lf0/k;

    .line 31
    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v2, "<h1>404, resource: "

    .line 35
    .line 36
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p1, Lj0/j;->e:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p1, Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p1, " not found!</h1>"

    .line 47
    .line 48
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const-string v1, "HTTP/1.1 404 Not Found\nServer: NOMone Desktop\n\n"

    .line 60
    .line 61
    invoke-direct {v0, p0, v1, p1}, Lf0/k;-><init>(Ly0/j0;Ljava/lang/String;[B)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    new-instance p1, Lf0/k;

    .line 66
    .line 67
    iget-object v0, v0, Landroidx/fragment/app/h;->h:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v0, [B

    .line 70
    .line 71
    const-string v1, "HTTP/1.1 200 OK\nServer: NOMone Desktop\n\n"

    .line 72
    .line 73
    invoke-direct {p1, p0, v1, v0}, Lf0/k;-><init>(Ly0/j0;Ljava/lang/String;[B)V

    .line 74
    .line 75
    .line 76
    move-object v0, p1

    .line 77
    :goto_0
    return-object v0

    .line 78
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 79
    .line 80
    const-string v0, "Unsupported request method"

    .line 81
    .line 82
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw p1
.end method

.method public final d(Ljava/lang/String;)Lj0/j;
    .locals 10

    .line 1
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object v1, p1, v0

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v4, v1, v0

    const/4 v2, 0x1

    aget-object v5, v1, v2

    const/4 v3, 0x2

    aget-object v6, v1, v3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v3, v2

    :goto_0
    array-length v7, p1

    if-ge v3, v7, :cond_1

    aget-object v7, p1, v3

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    aget-object v7, p1, v3

    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    new-instance v8, Lt1/b;

    aget-object v9, p1, v3

    invoke-virtual {v9, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    aget-object v9, p1, v3

    add-int/2addr v7, v2

    invoke-virtual {v9, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    invoke-direct {v8}, Lt1/b;-><init>()V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    new-array p1, v0, [Lt1/b;

    new-instance v0, Lj0/j;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, [Lt1/b;

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lj0/j;-><init>(Ly0/j0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lt1/b;)V

    return-object v0
.end method

.method public final e()V
    .locals 2

    .line 1
    iget v0, p0, Ly0/j0;->f:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    goto :goto_1

    .line 8
    :pswitch_0
    iput-boolean v1, p0, Ly0/j0;->g:Z

    .line 9
    .line 10
    :try_start_0
    iget-object v0, p0, Ly0/j0;->i:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Ljava/net/ServerSocket;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void

    .line 23
    :goto_1
    iput-boolean v1, p0, Ly0/j0;->g:Z

    .line 24
    .line 25
    sget-object v0, Lq1/f;->L:Lo1/j0;

    .line 26
    .line 27
    iget-object v1, p0, Ly0/j0;->h:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v1, Ljava/lang/Runnable;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lo1/j0;->d(Ljava/lang/Runnable;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final f(Li1/f;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ly0/j0;->h:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Ly0/j0;->i:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v1, Ljava/util/Queue;

    .line 7
    .line 8
    if-eqz v1, :cond_3

    .line 9
    .line 10
    iget-boolean v1, p0, Ly0/j0;->g:Z

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const/4 v1, 0x1

    .line 16
    iput-boolean v1, p0, Ly0/j0;->g:Z

    .line 17
    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 19
    :goto_0
    iget-object v1, p0, Ly0/j0;->h:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v1

    .line 22
    :try_start_1
    iget-object v0, p0, Ly0/j0;->i:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Ljava/util/Queue;

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Li1/e;

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Ly0/j0;->g:Z

    .line 36
    .line 37
    monitor-exit v1

    .line 38
    return-void

    .line 39
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 40
    check-cast v0, Li1/d;

    .line 41
    .line 42
    iget-object v2, v0, Li1/d;->b:Ljava/lang/Object;

    .line 43
    .line 44
    monitor-enter v2

    .line 45
    :try_start_2
    iget-object v1, v0, Li1/d;->c:Li1/a;

    .line 46
    .line 47
    if-nez v1, :cond_2

    .line 48
    .line 49
    monitor-exit v2

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    iget-object v1, v0, Li1/d;->a:Ljava/util/concurrent/Executor;

    .line 53
    .line 54
    new-instance v2, Lf0/m;

    .line 55
    .line 56
    const/16 v3, 0x8

    .line 57
    .line 58
    invoke-direct {v2, v0, p1, v3}, Lf0/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 59
    .line 60
    .line 61
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catchall_0
    move-exception p1

    .line 66
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 67
    throw p1

    .line 68
    :catchall_1
    move-exception p1

    .line 69
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 70
    throw p1

    .line 71
    :cond_3
    :goto_1
    :try_start_5
    monitor-exit v0

    .line 72
    return-void

    .line 73
    :catchall_2
    move-exception p1

    .line 74
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 75
    throw p1
.end method
