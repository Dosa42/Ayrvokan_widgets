.class public abstract Lo1/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lu1/c;

.field public final b:Lo1/j0;

.field public c:Z

.field public d:Z

.field public e:Z

.field public final f:Lo1/f;

.field public g:Lo1/b0;

.field public h:Lo1/b0;

.field public final i:Ljava/lang/Object;

.field public final j:Ljava/lang/Object;

.field public k:J

.field public final l:Lo1/c0;

.field public final m:Lo1/c0;

.field public final n:Lo1/c0;

.field public final o:Lo1/c0;

.field public final p:Lo1/c0;

.field public final q:Lo1/c0;

.field public final r:Lo1/c0;

.field public final s:Lo1/e;

.field public t:J

.field public u:Lo1/d;

.field public final v:Lo1/b0;

.field public final w:Lo1/b0;


# direct methods
.method public constructor <init>(Lq1/c;Ljava/lang/ThreadGroup;Lu1/f;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo1/e0;->i:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo1/e0;->j:Ljava/lang/Object;

    new-instance v0, Lo1/c0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo1/c0;-><init>(Lo1/e0;I)V

    iput-object v0, p0, Lo1/e0;->l:Lo1/c0;

    new-instance v0, Lo1/c0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lo1/c0;-><init>(Lo1/e0;I)V

    iput-object v0, p0, Lo1/e0;->m:Lo1/c0;

    new-instance v0, Lo1/c0;

    const/4 v2, 0x2

    invoke-direct {v0, p0, v2}, Lo1/c0;-><init>(Lo1/e0;I)V

    iput-object v0, p0, Lo1/e0;->n:Lo1/c0;

    new-instance v0, Lo1/c0;

    const/4 v3, 0x3

    invoke-direct {v0, p0, v3}, Lo1/c0;-><init>(Lo1/e0;I)V

    iput-object v0, p0, Lo1/e0;->o:Lo1/c0;

    new-instance v0, Lo1/c0;

    const/4 v3, 0x4

    invoke-direct {v0, p0, v3}, Lo1/c0;-><init>(Lo1/e0;I)V

    iput-object v0, p0, Lo1/e0;->p:Lo1/c0;

    new-instance v0, Lo1/c0;

    const/4 v3, 0x5

    invoke-direct {v0, p0, v3}, Lo1/c0;-><init>(Lo1/e0;I)V

    iput-object v0, p0, Lo1/e0;->q:Lo1/c0;

    new-instance v0, Lo1/c0;

    const/4 v3, 0x6

    invoke-direct {v0, p0, v3}, Lo1/c0;-><init>(Lo1/e0;I)V

    iput-object v0, p0, Lo1/e0;->r:Lo1/c0;

    new-instance v0, Lo1/e;

    new-instance v4, Lh/a;

    invoke-direct {v4, p0, v3}, Lh/a;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v4}, Lo1/e;-><init>(Lo1/c;)V

    iput-object v0, p0, Lo1/e0;->s:Lo1/e;

    new-instance v0, Lo1/b0;

    invoke-direct {v0, p0, v1}, Lo1/b0;-><init>(Lo1/e0;I)V

    iput-object v0, p0, Lo1/e0;->v:Lo1/b0;

    new-instance v0, Lo1/b0;

    invoke-direct {v0, p0, v2}, Lo1/b0;-><init>(Lo1/e0;I)V

    iput-object v0, p0, Lo1/e0;->w:Lo1/b0;

    iput-object p3, p0, Lo1/e0;->a:Lu1/c;

    iput-object p1, p0, Lo1/e0;->b:Lo1/j0;

    new-instance p1, Lo1/f;

    const-string p3, "RemoteCursorThread"

    invoke-direct {p1, p2, p3}, Lo1/f;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    iput-object p1, p0, Lo1/e0;->f:Lo1/f;

    invoke-virtual {p1}, Lo1/f;->start()V

    new-instance p2, Lo0/a;

    invoke-direct {p2, v1}, Lo0/a;-><init>(I)V

    invoke-virtual {p1, p2}, Lo1/f;->a(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final a(I)J
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    int-to-float p1, p1

    const v2, 0x3f733333    # 0.95f

    mul-float/2addr p1, v2

    float-to-int p1, p1

    iget-wide v2, p0, Lo1/e0;->t:J

    int-to-long v4, p1

    add-long/2addr v2, v4

    sub-long/2addr v2, v0

    long-to-int p1, v2

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/16 v2, 0x3e8

    if-le p1, v2, :cond_1

    move p1, v2

    :cond_1
    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo1/e0;->t:J

    return-wide v0
.end method

.method public final b(Ljava/lang/String;Lo1/c0;)V
    .locals 4

    .line 1
    const-string v0, ","

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x3

    .line 8
    :try_start_0
    aget-object p1, p1, v0

    .line 9
    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-virtual {p0, p1}, Lo1/e0;->a(I)J

    .line 15
    .line 16
    .line 17
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    goto :goto_0

    .line 19
    :catch_0
    const-wide/16 v0, 0x0

    .line 20
    .line 21
    :goto_0
    iget-object p1, p0, Lo1/e0;->s:Lo1/e;

    .line 22
    .line 23
    monitor-enter p1

    .line 24
    :try_start_1
    iget-object v2, p0, Lo1/e0;->s:Lo1/e;

    .line 25
    .line 26
    invoke-virtual {v2}, Lo1/e;->b()Lo1/d;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    iget-object v2, v2, Lo1/d;->a:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v2, Lo1/d0;

    .line 33
    .line 34
    const/4 v3, 0x1

    .line 35
    iput-boolean v3, v2, Lo1/d0;->a:Z

    .line 36
    .line 37
    iput-wide v0, v2, Lo1/d0;->c:J

    .line 38
    .line 39
    iput-object p2, v2, Lo1/d0;->b:Lcom/google/android/gms/internal/play_billing/i0;

    .line 40
    .line 41
    monitor-exit p1

    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception p2

    .line 44
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    throw p2
.end method

.method public abstract c()Z
.end method

.method public abstract d()Z
.end method

.method public abstract e()I
.end method

.method public final f(Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_3

    .line 10
    .line 11
    :cond_0
    const-string v0, "M"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    const-string v0, ","

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const/4 v0, 0x1

    .line 26
    const/4 v1, 0x0

    .line 27
    :try_start_0
    aget-object v2, p1, v0

    .line 28
    .line 29
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 30
    .line 31
    .line 32
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 33
    const/4 v3, 0x2

    .line 34
    :try_start_1
    aget-object v3, p1, v3

    .line 35
    .line 36
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    const/4 v3, 0x3

    .line 41
    aget-object p1, p1, v3

    .line 42
    .line 43
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    invoke-virtual {p0, p1}, Lo1/e0;->a(I)J

    .line 48
    .line 49
    .line 50
    move-result-wide v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 51
    goto :goto_1

    .line 52
    :catch_0
    move p1, v1

    .line 53
    move v1, v2

    .line 54
    goto :goto_0

    .line 55
    :catch_1
    move p1, v1

    .line 56
    :goto_0
    const-wide/16 v3, 0x0

    .line 57
    .line 58
    move v2, v1

    .line 59
    move v1, p1

    .line 60
    :goto_1
    iget-object v5, p0, Lo1/e0;->s:Lo1/e;

    .line 61
    .line 62
    monitor-enter v5

    .line 63
    :try_start_2
    iget-object p1, p0, Lo1/e0;->s:Lo1/e;

    .line 64
    .line 65
    invoke-virtual {p1}, Lo1/e;->b()Lo1/d;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iget-object p1, p1, Lo1/d;->a:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast p1, Lo1/d0;

    .line 72
    .line 73
    iget-object v6, p0, Lo1/e0;->l:Lo1/c0;

    .line 74
    .line 75
    iput-boolean v0, p1, Lo1/d0;->a:Z

    .line 76
    .line 77
    iput-wide v3, p1, Lo1/d0;->c:J

    .line 78
    .line 79
    iput-object v6, p1, Lo1/d0;->b:Lcom/google/android/gms/internal/play_billing/i0;

    .line 80
    .line 81
    iput v2, p1, Lo1/d0;->d:F

    .line 82
    .line 83
    iput v1, p1, Lo1/d0;->e:F

    .line 84
    .line 85
    monitor-exit v5

    .line 86
    goto :goto_3

    .line 87
    :catchall_0
    move-exception p1

    .line 88
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    throw p1

    .line 90
    :cond_1
    const-string v0, "TD"

    .line 91
    .line 92
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_2

    .line 97
    .line 98
    iget-object v0, p0, Lo1/e0;->m:Lo1/c0;

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_2
    const-string v0, "TU"

    .line 102
    .line 103
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_3

    .line 108
    .line 109
    iget-object v0, p0, Lo1/e0;->n:Lo1/c0;

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_3
    const-string v0, "VDP"

    .line 113
    .line 114
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_4

    .line 119
    .line 120
    iget-object v0, p0, Lo1/e0;->o:Lo1/c0;

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_4
    const-string v0, "VDR"

    .line 124
    .line 125
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-eqz v0, :cond_5

    .line 130
    .line 131
    iget-object v0, p0, Lo1/e0;->p:Lo1/c0;

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_5
    const-string v0, "VUP"

    .line 135
    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-eqz v0, :cond_6

    .line 141
    .line 142
    iget-object v0, p0, Lo1/e0;->q:Lo1/c0;

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_6
    const-string v0, "VUR"

    .line 146
    .line 147
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-eqz v0, :cond_7

    .line 152
    .line 153
    iget-object v0, p0, Lo1/e0;->r:Lo1/c0;

    .line 154
    .line 155
    :goto_2
    invoke-virtual {p0, p1, v0}, Lo1/e0;->b(Ljava/lang/String;Lo1/c0;)V

    .line 156
    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_7
    const-string v0, "NOMone VR Browser?"

    .line 160
    .line 161
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    if-eqz v0, :cond_8

    .line 166
    .line 167
    iget-object p1, p0, Lo1/e0;->f:Lo1/f;

    .line 168
    .line 169
    new-instance v0, Lo1/b0;

    .line 170
    .line 171
    const/4 v1, 0x5

    .line 172
    invoke-direct {v0, p0, v1}, Lo1/b0;-><init>(Lo1/e0;I)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1, v0}, Lo1/f;->a(Ljava/lang/Runnable;)V

    .line 176
    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_8
    const-string v0, "sdf"

    .line 180
    .line 181
    const-string v1, "Received abnormal data from remote: "

    .line 182
    .line 183
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-static {v0, p1}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    :goto_3
    return-void
.end method

.method public abstract g()Ljava/lang/String;
.end method

.method public final h()V
    .locals 3

    .line 1
    iget-object v0, p0, Lo1/e0;->b:Lo1/j0;

    iget-object v1, p0, Lo1/e0;->w:Lo1/b0;

    invoke-virtual {v0, v1}, Lo1/j0;->d(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lo1/e0;->b:Lo1/j0;

    iget-object v1, p0, Lo1/e0;->w:Lo1/b0;

    const-string v2, "Dispatch remote cursor events each frame"

    invoke-virtual {v0, v2, v1}, Lo1/j0;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lo1/e0;->d:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lo1/e0;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo1/e0;->d:Z

    iget-object v0, p0, Lo1/e0;->f:Lo1/f;

    new-instance v1, Lo1/b0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lo1/b0;-><init>(Lo1/e0;I)V

    invoke-virtual {v0, v1}, Lo1/f;->a(Ljava/lang/Runnable;)V

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final i(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lo1/e0;->b:Lo1/j0;

    .line 2
    .line 3
    iget-object v1, p0, Lo1/e0;->w:Lo1/b0;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lo1/j0;->d(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lo1/e0;->i:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lo1/e0;->f:Lo1/f;

    .line 12
    .line 13
    iget-object v2, p0, Lo1/e0;->g:Lo1/b0;

    .line 14
    .line 15
    iget-object v1, v1, Lo1/f;->f:Landroid/os/Handler;

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    iput-object v1, p0, Lo1/e0;->g:Lo1/b0;

    .line 22
    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 24
    iget-object v2, p0, Lo1/e0;->j:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v2

    .line 27
    :try_start_1
    iget-object v0, p0, Lo1/e0;->f:Lo1/f;

    .line 28
    .line 29
    iget-object v3, p0, Lo1/e0;->h:Lo1/b0;

    .line 30
    .line 31
    iget-object v0, v0, Lo1/f;->f:Landroid/os/Handler;

    .line 32
    .line 33
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lo1/e0;->h:Lo1/b0;

    .line 37
    .line 38
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    invoke-virtual {p0}, Lo1/e0;->j()V

    .line 40
    .line 41
    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    iget-object p1, p0, Lo1/e0;->a:Lu1/c;

    .line 45
    .line 46
    iget-object p1, p1, Lu1/c;->c:Lu1/i;

    .line 47
    .line 48
    iget-object p1, p1, Lu1/i;->p:Lu1/k;

    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    iget-object v0, p1, Lu1/k;->b:Lo1/j0;

    .line 54
    .line 55
    iget-boolean v1, p1, Lu1/k;->d:Z

    .line 56
    .line 57
    if-eqz v1, :cond_0

    .line 58
    .line 59
    iget-object v1, p1, Lu1/k;->g:Lu1/j;

    .line 60
    .line 61
    const-string v2, "VirtualCursorListener onVolumeDownReleased due to remote cursor disconnection"

    .line 62
    .line 63
    invoke-virtual {v0, v2, v1}, Lo1/j0;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 64
    .line 65
    .line 66
    :cond_0
    iget-boolean v1, p1, Lu1/k;->e:Z

    .line 67
    .line 68
    if-eqz v1, :cond_1

    .line 69
    .line 70
    iget-object p1, p1, Lu1/k;->i:Lu1/j;

    .line 71
    .line 72
    const-string v1, "VirtualCursorListener onVolumeUpReleased due to remote cursor disconnection"

    .line 73
    .line 74
    invoke-virtual {v0, v1, p1}, Lo1/j0;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 75
    .line 76
    .line 77
    :cond_1
    iget-object p1, p0, Lo1/e0;->a:Lu1/c;

    .line 78
    .line 79
    invoke-virtual {p1}, Lu1/c;->a()V

    .line 80
    .line 81
    .line 82
    :cond_2
    return-void

    .line 83
    :catchall_0
    move-exception p1

    .line 84
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    throw p1

    .line 86
    :catchall_1
    move-exception p1

    .line 87
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 88
    throw p1
.end method

.method public abstract j()V
.end method

.method public abstract k(Ljava/lang/String;)V
.end method
