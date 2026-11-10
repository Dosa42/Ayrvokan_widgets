.class public final La3/y;
.super Landroid/os/Handler;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final f:I

.field public final g:La3/z;

.field public final h:J

.field public i:La3/w;

.field public j:Ljava/io/IOException;

.field public k:I

.field public volatile l:Ljava/lang/Thread;

.field public volatile m:Z

.field public volatile n:Z

.field public final synthetic o:La3/c0;


# direct methods
.method public constructor <init>(La3/c0;Landroid/os/Looper;La3/z;La3/w;IJ)V
    .locals 0

    .line 1
    iput-object p1, p0, La3/y;->o:La3/c0;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, La3/y;->g:La3/z;

    iput-object p4, p0, La3/y;->i:La3/w;

    iput p5, p0, La3/y;->f:I

    iput-wide p6, p0, La3/y;->h:J

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 8

    .line 1
    iput-boolean p1, p0, La3/y;->n:Z

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, La3/y;->j:Ljava/io/IOException;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x1

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 15
    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iput-boolean v3, p0, La3/y;->m:Z

    .line 24
    .line 25
    iget-object v1, p0, La3/y;->g:La3/z;

    .line 26
    .line 27
    invoke-interface {v1}, La3/z;->b()V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, La3/y;->l:Ljava/lang/Thread;

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 38
    .line 39
    iget-object p1, p0, La3/y;->o:La3/c0;

    .line 40
    .line 41
    iput-object v0, p1, La3/c0;->b:La3/y;

    .line 42
    .line 43
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 44
    .line 45
    .line 46
    move-result-wide v3

    .line 47
    iget-object v1, p0, La3/y;->i:La3/w;

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, La3/y;->g:La3/z;

    .line 53
    .line 54
    iget-wide v5, p0, La3/y;->h:J

    .line 55
    .line 56
    sub-long v5, v3, v5

    .line 57
    .line 58
    const/4 v7, 0x1

    .line 59
    invoke-interface/range {v1 .. v7}, La3/w;->b(La3/z;JJZ)V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, La3/y;->i:La3/w;

    .line 63
    .line 64
    :cond_2
    return-void
.end method

.method public final b(J)V
    .locals 5

    .line 1
    iget-object v0, p0, La3/y;->o:La3/c0;

    .line 2
    .line 3
    iget-object v1, v0, La3/c0;->b:La3/y;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v1, v2

    .line 11
    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/i0;->m(Z)V

    .line 12
    .line 13
    .line 14
    iput-object p0, v0, La3/c0;->b:La3/y;

    .line 15
    .line 16
    const-wide/16 v3, 0x0

    .line 17
    .line 18
    cmp-long v1, p1, v3

    .line 19
    .line 20
    if-lez v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0, v2, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, La3/y;->j:Ljava/io/IOException;

    .line 28
    .line 29
    iget-object p1, v0, La3/c0;->a:Ljava/util/concurrent/ExecutorService;

    .line 30
    .line 31
    iget-object p2, v0, La3/c0;->b:La3/y;

    .line 32
    .line 33
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 37
    .line 38
    .line 39
    :goto_1
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 12

    .line 1
    iget-boolean v0, p0, La3/y;->n:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iput-object v1, p0, La3/y;->j:Ljava/io/IOException;

    .line 12
    .line 13
    iget-object p1, p0, La3/y;->o:La3/c0;

    .line 14
    .line 15
    iget-object v0, p1, La3/c0;->a:Ljava/util/concurrent/ExecutorService;

    .line 16
    .line 17
    iget-object p1, p1, La3/c0;->b:La3/y;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    const/4 v2, 0x4

    .line 27
    if-eq v0, v2, :cond_a

    .line 28
    .line 29
    iget-object v0, p0, La3/y;->o:La3/c0;

    .line 30
    .line 31
    iput-object v1, v0, La3/c0;->b:La3/y;

    .line 32
    .line 33
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 34
    .line 35
    .line 36
    move-result-wide v4

    .line 37
    iget-wide v0, p0, La3/y;->h:J

    .line 38
    .line 39
    sub-long v6, v4, v0

    .line 40
    .line 41
    iget-object v2, p0, La3/y;->i:La3/w;

    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    iget-boolean v0, p0, La3/y;->m:Z

    .line 47
    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    iget-object v3, p0, La3/y;->g:La3/z;

    .line 51
    .line 52
    const/4 v8, 0x0

    .line 53
    invoke-interface/range {v2 .. v8}, La3/w;->b(La3/z;JJZ)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    .line 58
    .line 59
    const/4 v1, 0x1

    .line 60
    if-eq v0, v1, :cond_8

    .line 61
    .line 62
    const/4 v10, 0x2

    .line 63
    if-eq v0, v10, :cond_7

    .line 64
    .line 65
    const/4 v11, 0x3

    .line 66
    if-eq v0, v11, :cond_3

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 70
    .line 71
    move-object v8, p1

    .line 72
    check-cast v8, Ljava/io/IOException;

    .line 73
    .line 74
    iput-object v8, p0, La3/y;->j:Ljava/io/IOException;

    .line 75
    .line 76
    iget p1, p0, La3/y;->k:I

    .line 77
    .line 78
    add-int/lit8 v9, p1, 0x1

    .line 79
    .line 80
    iput v9, p0, La3/y;->k:I

    .line 81
    .line 82
    iget-object v3, p0, La3/y;->g:La3/z;

    .line 83
    .line 84
    invoke-interface/range {v2 .. v9}, La3/w;->c(La3/z;JJLjava/io/IOException;I)La3/x;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    iget v0, p1, La3/x;->a:I

    .line 89
    .line 90
    if-ne v0, v11, :cond_4

    .line 91
    .line 92
    iget-object p1, p0, La3/y;->o:La3/c0;

    .line 93
    .line 94
    iget-object v0, p0, La3/y;->j:Ljava/io/IOException;

    .line 95
    .line 96
    iput-object v0, p1, La3/c0;->c:Ljava/io/IOException;

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_4
    if-eq v0, v10, :cond_9

    .line 100
    .line 101
    if-ne v0, v1, :cond_5

    .line 102
    .line 103
    iput v1, p0, La3/y;->k:I

    .line 104
    .line 105
    :cond_5
    iget-wide v0, p1, La3/x;->b:J

    .line 106
    .line 107
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    cmp-long p1, v0, v2

    .line 113
    .line 114
    if-eqz p1, :cond_6

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_6
    iget p1, p0, La3/y;->k:I

    .line 118
    .line 119
    add-int/lit8 p1, p1, -0x1

    .line 120
    .line 121
    mul-int/lit16 p1, p1, 0x3e8

    .line 122
    .line 123
    const/16 v0, 0x1388

    .line 124
    .line 125
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    int-to-long v0, p1

    .line 130
    :goto_0
    invoke-virtual {p0, v0, v1}, La3/y;->b(J)V

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_7
    :try_start_0
    iget-object v3, p0, La3/y;->g:La3/z;

    .line 135
    .line 136
    invoke-interface/range {v2 .. v7}, La3/w;->a(La3/z;JJ)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :catch_0
    move-exception p1

    .line 141
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/i0;->B(Ljava/lang/Throwable;)V

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, La3/y;->o:La3/c0;

    .line 145
    .line 146
    new-instance v1, La3/b0;

    .line 147
    .line 148
    invoke-direct {v1, p1}, La3/b0;-><init>(Ljava/lang/Throwable;)V

    .line 149
    .line 150
    .line 151
    iput-object v1, v0, La3/c0;->c:Ljava/io/IOException;

    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_8
    iget-object v3, p0, La3/y;->g:La3/z;

    .line 155
    .line 156
    const/4 v8, 0x0

    .line 157
    invoke-interface/range {v2 .. v8}, La3/w;->b(La3/z;JJZ)V

    .line 158
    .line 159
    .line 160
    :cond_9
    :goto_1
    return-void

    .line 161
    :cond_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 162
    .line 163
    check-cast p1, Ljava/lang/Error;

    .line 164
    .line 165
    throw p1
.end method

.method public final run()V
    .locals 4

    .line 1
    const-string v0, "load:"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    iput-object v2, p0, La3/y;->l:Ljava/lang/Thread;

    .line 9
    .line 10
    iget-boolean v2, p0, La3/y;->m:Z

    .line 11
    .line 12
    if-nez v2, :cond_2

    .line 13
    .line 14
    iget-object v2, p0, La3/y;->g:La3/z;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sget v2, Lb3/n;->a:I

    .line 29
    .line 30
    const/16 v3, 0x12

    .line 31
    .line 32
    if-lt v2, v3, :cond_0

    .line 33
    .line 34
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    :cond_0
    :try_start_1
    iget-object v0, p0, La3/y;->g:La3/z;

    .line 38
    .line 39
    invoke-interface {v0}, La3/z;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    .line 41
    .line 42
    if-lt v2, v3, :cond_2

    .line 43
    .line 44
    :try_start_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception v0

    .line 49
    sget v2, Lb3/n;->a:I

    .line 50
    .line 51
    if-lt v2, v3, :cond_1

    .line 52
    .line 53
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 54
    .line 55
    .line 56
    :cond_1
    throw v0

    .line 57
    :cond_2
    :goto_0
    iget-boolean v0, p0, La3/y;->n:Z

    .line 58
    .line 59
    if-nez v0, :cond_4

    .line 60
    .line 61
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :catch_0
    move-exception v0

    .line 66
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/i0;->B(Ljava/lang/Throwable;)V

    .line 67
    .line 68
    .line 69
    iget-boolean v1, p0, La3/y;->n:Z

    .line 70
    .line 71
    if-nez v1, :cond_3

    .line 72
    .line 73
    const/4 v1, 0x4

    .line 74
    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 79
    .line 80
    .line 81
    :cond_3
    throw v0

    .line 82
    :catch_1
    move-exception v0

    .line 83
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/i0;->B(Ljava/lang/Throwable;)V

    .line 84
    .line 85
    .line 86
    iget-boolean v1, p0, La3/y;->n:Z

    .line 87
    .line 88
    if-nez v1, :cond_4

    .line 89
    .line 90
    new-instance v1, La3/b0;

    .line 91
    .line 92
    invoke-direct {v1, v0}, La3/b0;-><init>(Ljava/lang/Throwable;)V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :catch_2
    move-exception v0

    .line 97
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/i0;->B(Ljava/lang/Throwable;)V

    .line 98
    .line 99
    .line 100
    iget-boolean v1, p0, La3/y;->n:Z

    .line 101
    .line 102
    if-nez v1, :cond_4

    .line 103
    .line 104
    new-instance v1, La3/b0;

    .line 105
    .line 106
    invoke-direct {v1, v0}, La3/b0;-><init>(Ljava/lang/Throwable;)V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :catch_3
    iget-boolean v0, p0, La3/y;->m:Z

    .line 111
    .line 112
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/i0;->m(Z)V

    .line 113
    .line 114
    .line 115
    iget-boolean v0, p0, La3/y;->n:Z

    .line 116
    .line 117
    if-nez v0, :cond_4

    .line 118
    .line 119
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :catch_4
    move-exception v0

    .line 124
    iget-boolean v1, p0, La3/y;->n:Z

    .line 125
    .line 126
    if-nez v1, :cond_4

    .line 127
    .line 128
    move-object v1, v0

    .line 129
    :goto_1
    const/4 v0, 0x3

    .line 130
    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 135
    .line 136
    .line 137
    :cond_4
    :goto_2
    return-void
.end method
