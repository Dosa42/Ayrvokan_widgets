.class public abstract Ly0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw0/b;


# static fields
.field public static final y:[Lv0/c;


# instance fields
.field public volatile a:Ljava/lang/String;

.field public b:Ly0/j0;

.field public final c:Landroid/content/Context;

.field public final d:Ly0/i0;

.field public final e:Ly0/z;

.field public final f:Ljava/lang/Object;

.field public final g:Ljava/lang/Object;

.field public h:Ly0/x;

.field public i:Ly0/b;

.field public j:Landroid/os/IInterface;

.field public final k:Ljava/util/ArrayList;

.field public l:Ly0/b0;

.field public m:I

.field public final n:Ll0/c;

.field public final o:Ll0/c;

.field public final p:I

.field public final q:Ljava/lang/String;

.field public volatile r:Ljava/lang/String;

.field public s:Lv0/a;

.field public t:Z

.field public volatile u:Ly0/e0;

.field public final v:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final w:Ljava/util/Set;

.field public final x:Landroid/accounts/Account;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    new-array v0, v0, [Lv0/c;

    sput-object v0, Ly0/f;->y:[Lv0/c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILy0/c;Lx0/c;Lx0/h;)V
    .locals 4

    .line 1
    sget-object v0, Ly0/i0;->h:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Ly0/i0;->i:Ly0/i0;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Ly0/i0;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-direct {v1, v2, v3}, Ly0/i0;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 19
    .line 20
    .line 21
    sput-object v1, Ly0/i0;->i:Ly0/i0;

    .line 22
    .line 23
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    sget-object v0, Ly0/i0;->i:Ly0/i0;

    .line 25
    .line 26
    sget-object v1, Lv0/d;->b:Ljava/lang/Object;

    .line 27
    .line 28
    invoke-static {p5}, Lcom/google/android/gms/internal/play_billing/i0;->l(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p6}, Lcom/google/android/gms/internal/play_billing/i0;->l(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    new-instance v1, Ll0/c;

    .line 35
    .line 36
    invoke-direct {v1, p5}, Ll0/c;-><init>(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    new-instance p5, Ll0/c;

    .line 40
    .line 41
    invoke-direct {p5, p6}, Ll0/c;-><init>(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iget-object p6, p4, Ly0/c;->e:Ljava/lang/String;

    .line 45
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    iput-object v2, p0, Ly0/f;->a:Ljava/lang/String;

    .line 51
    .line 52
    new-instance v3, Ljava/lang/Object;

    .line 53
    .line 54
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object v3, p0, Ly0/f;->f:Ljava/lang/Object;

    .line 58
    .line 59
    new-instance v3, Ljava/lang/Object;

    .line 60
    .line 61
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object v3, p0, Ly0/f;->g:Ljava/lang/Object;

    .line 65
    .line 66
    new-instance v3, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object v3, p0, Ly0/f;->k:Ljava/util/ArrayList;

    .line 72
    .line 73
    const/4 v3, 0x1

    .line 74
    iput v3, p0, Ly0/f;->m:I

    .line 75
    .line 76
    iput-object v2, p0, Ly0/f;->s:Lv0/a;

    .line 77
    .line 78
    const/4 v3, 0x0

    .line 79
    iput-boolean v3, p0, Ly0/f;->t:Z

    .line 80
    .line 81
    iput-object v2, p0, Ly0/f;->u:Ly0/e0;

    .line 82
    .line 83
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 84
    .line 85
    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 86
    .line 87
    .line 88
    iput-object v2, p0, Ly0/f;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 89
    .line 90
    const-string v2, "Context must not be null"

    .line 91
    .line 92
    if-eqz p1, :cond_4

    .line 93
    .line 94
    iput-object p1, p0, Ly0/f;->c:Landroid/content/Context;

    .line 95
    .line 96
    const-string p1, "Looper must not be null"

    .line 97
    .line 98
    if-eqz p2, :cond_3

    .line 99
    .line 100
    const-string p1, "Supervisor must not be null"

    .line 101
    .line 102
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/play_billing/i0;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iput-object v0, p0, Ly0/f;->d:Ly0/i0;

    .line 106
    .line 107
    new-instance p1, Ly0/z;

    .line 108
    .line 109
    invoke-direct {p1, p0, p2}, Ly0/z;-><init>(Ly0/f;Landroid/os/Looper;)V

    .line 110
    .line 111
    .line 112
    iput-object p1, p0, Ly0/f;->e:Ly0/z;

    .line 113
    .line 114
    iput p3, p0, Ly0/f;->p:I

    .line 115
    .line 116
    iput-object v1, p0, Ly0/f;->n:Ll0/c;

    .line 117
    .line 118
    iput-object p5, p0, Ly0/f;->o:Ll0/c;

    .line 119
    .line 120
    iput-object p6, p0, Ly0/f;->q:Ljava/lang/String;

    .line 121
    .line 122
    iget-object p1, p4, Ly0/c;->a:Landroid/accounts/Account;

    .line 123
    .line 124
    iput-object p1, p0, Ly0/f;->x:Landroid/accounts/Account;

    .line 125
    .line 126
    iget-object p1, p4, Ly0/c;->c:Ljava/util/Set;

    .line 127
    .line 128
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 133
    .line 134
    .line 135
    move-result p3

    .line 136
    if-eqz p3, :cond_2

    .line 137
    .line 138
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p3

    .line 142
    check-cast p3, Lcom/google/android/gms/common/api/Scope;

    .line 143
    .line 144
    invoke-interface {p1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result p3

    .line 148
    if-eqz p3, :cond_1

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 152
    .line 153
    const-string p2, "Expanding scopes is not permitted, use implied scopes instead"

    .line 154
    .line 155
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    throw p1

    .line 159
    :cond_2
    iput-object p1, p0, Ly0/f;->w:Ljava/util/Set;

    .line 160
    .line 161
    return-void

    .line 162
    :cond_3
    new-instance p2, Ljava/lang/NullPointerException;

    .line 163
    .line 164
    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw p2

    .line 168
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    .line 169
    .line 170
    invoke-direct {p1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    throw p1

    .line 174
    :catchall_0
    move-exception p1

    .line 175
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    throw p1
.end method

.method public static bridge synthetic r(Ly0/f;IILandroid/os/IInterface;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Ly0/f;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Ly0/f;->m:I

    if-eq v1, p1, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2, p3}, Ly0/f;->s(ILandroid/os/IInterface;)V

    monitor-exit v0

    const/4 p0, 0x1

    :goto_0
    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final a(Ly0/g;Ljava/util/Set;)V
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Ly0/f;->k()Landroid/os/Bundle;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    new-instance v15, Ly0/e;

    .line 10
    .line 11
    iget-object v14, v1, Ly0/f;->r:Ljava/lang/String;

    .line 12
    .line 13
    sget v6, Lv0/e;->a:I

    .line 14
    .line 15
    sget-object v9, Ly0/e;->o:[Lcom/google/android/gms/common/api/Scope;

    .line 16
    .line 17
    new-instance v10, Landroid/os/Bundle;

    .line 18
    .line 19
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 20
    .line 21
    .line 22
    const/4 v4, 0x6

    .line 23
    iget v5, v1, Ly0/f;->p:I

    .line 24
    .line 25
    const/4 v7, 0x0

    .line 26
    const/4 v8, 0x0

    .line 27
    const/4 v11, 0x0

    .line 28
    sget-object v13, Ly0/e;->p:[Lv0/c;

    .line 29
    .line 30
    const/16 v16, 0x1

    .line 31
    .line 32
    const/16 v17, 0x0

    .line 33
    .line 34
    const/16 v18, 0x0

    .line 35
    .line 36
    move-object v3, v15

    .line 37
    move-object v12, v13

    .line 38
    move-object/from16 v19, v14

    .line 39
    .line 40
    move/from16 v14, v16

    .line 41
    .line 42
    move-object/from16 v20, v15

    .line 43
    .line 44
    move/from16 v15, v17

    .line 45
    .line 46
    move/from16 v16, v18

    .line 47
    .line 48
    move-object/from16 v17, v19

    .line 49
    .line 50
    invoke-direct/range {v3 .. v17}, Ly0/e;-><init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;[Lv0/c;[Lv0/c;ZIZLjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v3, v1, Ly0/f;->c:Landroid/content/Context;

    .line 54
    .line 55
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    move-object/from16 v4, v20

    .line 60
    .line 61
    iput-object v3, v4, Ly0/e;->d:Ljava/lang/String;

    .line 62
    .line 63
    iput-object v2, v4, Ly0/e;->g:Landroid/os/Bundle;

    .line 64
    .line 65
    if-eqz v0, :cond_0

    .line 66
    .line 67
    const/4 v2, 0x0

    .line 68
    new-array v2, v2, [Lcom/google/android/gms/common/api/Scope;

    .line 69
    .line 70
    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, [Lcom/google/android/gms/common/api/Scope;

    .line 75
    .line 76
    iput-object v0, v4, Ly0/e;->f:[Lcom/google/android/gms/common/api/Scope;

    .line 77
    .line 78
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ly0/f;->f()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_2

    .line 83
    .line 84
    iget-object v0, v1, Ly0/f;->x:Landroid/accounts/Account;

    .line 85
    .line 86
    if-nez v0, :cond_1

    .line 87
    .line 88
    new-instance v0, Landroid/accounts/Account;

    .line 89
    .line 90
    const-string v2, "<<default account>>"

    .line 91
    .line 92
    const-string v3, "com.google"

    .line 93
    .line 94
    invoke-direct {v0, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :cond_1
    iput-object v0, v4, Ly0/e;->h:Landroid/accounts/Account;

    .line 98
    .line 99
    if-eqz p1, :cond_2

    .line 100
    .line 101
    move-object/from16 v0, p1

    .line 102
    .line 103
    check-cast v0, Le1/a;

    .line 104
    .line 105
    iget-object v0, v0, Le1/a;->a:Landroid/os/IBinder;

    .line 106
    .line 107
    iput-object v0, v4, Ly0/e;->e:Landroid/os/IBinder;

    .line 108
    .line 109
    :cond_2
    sget-object v0, Ly0/f;->y:[Lv0/c;

    .line 110
    .line 111
    iput-object v0, v4, Ly0/e;->i:[Lv0/c;

    .line 112
    .line 113
    invoke-virtual/range {p0 .. p0}, Ly0/f;->j()[Lv0/c;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    iput-object v0, v4, Ly0/e;->j:[Lv0/c;

    .line 118
    .line 119
    :try_start_0
    iget-object v2, v1, Ly0/f;->g:Ljava/lang/Object;

    .line 120
    .line 121
    monitor-enter v2
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :try_start_1
    iget-object v0, v1, Ly0/f;->h:Ly0/x;

    .line 123
    .line 124
    if-eqz v0, :cond_3

    .line 125
    .line 126
    new-instance v3, Ly0/a0;

    .line 127
    .line 128
    iget-object v5, v1, Ly0/f;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 129
    .line 130
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 131
    .line 132
    .line 133
    move-result v5

    .line 134
    invoke-direct {v3, v1, v5}, Ly0/a0;-><init>(Ly0/f;I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v3, v4}, Ly0/x;->a(Ly0/a0;Ly0/e;)V

    .line 138
    .line 139
    .line 140
    :cond_3
    monitor-exit v2

    .line 141
    goto :goto_0

    .line 142
    :catchall_0
    move-exception v0

    .line 143
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    :try_start_2
    throw v0
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 145
    :catch_0
    iget-object v0, v1, Ly0/f;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 146
    .line 147
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    new-instance v2, Ly0/c0;

    .line 152
    .line 153
    const/16 v3, 0x8

    .line 154
    .line 155
    const/4 v4, 0x0

    .line 156
    invoke-direct {v2, v1, v3, v4, v4}, Ly0/c0;-><init>(Ly0/f;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    .line 157
    .line 158
    .line 159
    iget-object v3, v1, Ly0/f;->e:Ly0/z;

    .line 160
    .line 161
    const/4 v4, 0x1

    .line 162
    const/4 v5, -0x1

    .line 163
    invoke-virtual {v3, v4, v0, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 168
    .line 169
    .line 170
    goto :goto_0

    .line 171
    :catch_1
    move-exception v0

    .line 172
    throw v0

    .line 173
    :catch_2
    iget-object v0, v1, Ly0/f;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 174
    .line 175
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    iget-object v2, v1, Ly0/f;->e:Ly0/z;

    .line 180
    .line 181
    const/4 v3, 0x6

    .line 182
    const/4 v4, 0x3

    .line 183
    invoke-virtual {v2, v3, v0, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 188
    .line 189
    .line 190
    :goto_0
    return-void
.end method

.method public final b()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ly0/f;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ly0/f;->w:Ljava/util/Set;

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final d()V
    .locals 5

    .line 1
    iget-object v0, p0, Ly0/f;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ly0/f;->k:Ljava/util/ArrayList;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Ly0/f;->k:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_0
    const/4 v3, 0x0

    .line 17
    if-ge v2, v1, :cond_0

    .line 18
    .line 19
    iget-object v4, p0, Ly0/f;->k:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    check-cast v4, Ly0/v;

    .line 26
    .line 27
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 28
    :try_start_1
    iput-object v3, v4, Ly0/v;->a:Ljava/lang/Object;

    .line 29
    .line 30
    monitor-exit v4

    .line 31
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception v1

    .line 35
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    :try_start_2
    throw v1

    .line 37
    :catchall_1
    move-exception v1

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    iget-object v1, p0, Ly0/f;->k:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 42
    .line 43
    .line 44
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 45
    iget-object v1, p0, Ly0/f;->g:Ljava/lang/Object;

    .line 46
    .line 47
    monitor-enter v1

    .line 48
    :try_start_3
    iput-object v3, p0, Ly0/f;->h:Ly0/x;

    .line 49
    .line 50
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 51
    const/4 v0, 0x1

    .line 52
    invoke-virtual {p0, v0, v3}, Ly0/f;->s(ILandroid/os/IInterface;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :catchall_2
    move-exception v0

    .line 57
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 58
    throw v0

    .line 59
    :goto_1
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 60
    throw v1
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ly0/f;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Ly0/f;->d()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic f()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public abstract i(Landroid/os/IBinder;)Landroid/os/IInterface;
.end method

.method public bridge synthetic j()[Lv0/c;
    .locals 1

    .line 1
    sget-object v0, Ly0/f;->y:[Lv0/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract k()Landroid/os/Bundle;
.end method

.method public final l()Landroid/os/IInterface;
    .locals 3

    .line 1
    iget-object v0, p0, Ly0/f;->f:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Ly0/f;->m:I

    .line 5
    .line 6
    const/4 v2, 0x5

    .line 7
    if-eq v1, v2, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Ly0/f;->p()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Ly0/f;->j:Landroid/os/IInterface;

    .line 16
    .line 17
    const-string v2, "Client is connected but service is null"

    .line 18
    .line 19
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/i0;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    monitor-exit v0

    .line 23
    return-object v1

    .line 24
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string v2, "Not connected. Call connect() and wait for onConnected() to be called."

    .line 27
    .line 28
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v1

    .line 32
    :cond_1
    new-instance v1, Landroid/os/DeadObjectException;

    .line 33
    .line 34
    invoke-direct {v1}, Landroid/os/DeadObjectException;-><init>()V

    .line 35
    .line 36
    .line 37
    throw v1

    .line 38
    :catchall_0
    move-exception v1

    .line 39
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw v1
.end method

.method public abstract m()Ljava/lang/String;
.end method

.method public abstract n()Ljava/lang/String;
.end method

.method public o()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Ly0/f;->h()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0xc9e4920

    .line 6
    .line 7
    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return v0
.end method

.method public final p()Z
    .locals 3

    .line 1
    iget-object v0, p0, Ly0/f;->f:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Ly0/f;->m:I

    .line 5
    .line 6
    const/4 v2, 0x4

    .line 7
    if-ne v1, v2, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    monitor-exit v0

    .line 13
    return v1

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw v1
.end method

.method public final q()Z
    .locals 3

    .line 1
    iget-object v0, p0, Ly0/f;->f:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Ly0/f;->m:I

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    if-eq v1, v2, :cond_1

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 16
    :goto_1
    monitor-exit v0

    .line 17
    return v1

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw v1
.end method

.method public final s(ILandroid/os/IInterface;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x4

    .line 4
    if-eq p1, v2, :cond_0

    .line 5
    .line 6
    move v3, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v3, v1

    .line 9
    :goto_0
    if-nez p2, :cond_1

    .line 10
    .line 11
    move v4, v0

    .line 12
    goto :goto_1

    .line 13
    :cond_1
    move v4, v1

    .line 14
    :goto_1
    if-ne v3, v4, :cond_2

    .line 15
    .line 16
    move v0, v1

    .line 17
    :cond_2
    if-eqz v0, :cond_d

    .line 18
    .line 19
    iget-object v0, p0, Ly0/f;->f:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v0

    .line 22
    :try_start_0
    iput p1, p0, Ly0/f;->m:I

    .line 23
    .line 24
    iput-object p2, p0, Ly0/f;->j:Landroid/os/IInterface;

    .line 25
    .line 26
    if-eq p1, v1, :cond_a

    .line 27
    .line 28
    const/4 v1, 0x2

    .line 29
    if-eq p1, v1, :cond_4

    .line 30
    .line 31
    const/4 v1, 0x3

    .line 32
    if-eq p1, v1, :cond_4

    .line 33
    .line 34
    if-eq p1, v2, :cond_3

    .line 35
    .line 36
    goto/16 :goto_3

    .line 37
    .line 38
    :cond_3
    invoke-static {p2}, Lcom/google/android/gms/internal/play_billing/i0;->l(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 42
    .line 43
    .line 44
    goto/16 :goto_3

    .line 45
    .line 46
    :cond_4
    iget-object p1, p0, Ly0/f;->l:Ly0/b0;

    .line 47
    .line 48
    if-eqz p1, :cond_6

    .line 49
    .line 50
    iget-object p2, p0, Ly0/f;->b:Ly0/j0;

    .line 51
    .line 52
    if-eqz p2, :cond_6

    .line 53
    .line 54
    iget-object p2, p2, Ly0/j0;->h:Ljava/lang/Object;

    .line 55
    .line 56
    iget-object v1, p0, Ly0/f;->d:Ly0/i0;

    .line 57
    .line 58
    check-cast p2, Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {p2}, Lcom/google/android/gms/internal/play_billing/i0;->l(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    iget-object v2, p0, Ly0/f;->b:Ly0/j0;

    .line 64
    .line 65
    iget-object v2, v2, Ly0/j0;->i:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v2, Ljava/lang/String;

    .line 68
    .line 69
    iget-object v3, p0, Ly0/f;->q:Ljava/lang/String;

    .line 70
    .line 71
    if-nez v3, :cond_5

    .line 72
    .line 73
    iget-object v3, p0, Ly0/f;->c:Landroid/content/Context;

    .line 74
    .line 75
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    :cond_5
    iget-object v3, p0, Ly0/f;->b:Ly0/j0;

    .line 79
    .line 80
    iget-boolean v3, v3, Ly0/j0;->g:Z

    .line 81
    .line 82
    invoke-virtual {v1, p2, v2, p1, v3}, Ly0/i0;->a(Ljava/lang/String;Ljava/lang/String;Ly0/b0;Z)V

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Ly0/f;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 88
    .line 89
    .line 90
    :cond_6
    new-instance p1, Ly0/b0;

    .line 91
    .line 92
    iget-object p2, p0, Ly0/f;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 93
    .line 94
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    invoke-direct {p1, p0, p2}, Ly0/b0;-><init>(Ly0/f;I)V

    .line 99
    .line 100
    .line 101
    iput-object p1, p0, Ly0/f;->l:Ly0/b0;

    .line 102
    .line 103
    new-instance p2, Ly0/j0;

    .line 104
    .line 105
    invoke-virtual {p0}, Ly0/f;->n()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {p0}, Ly0/f;->o()Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    invoke-direct {p2, v1, v2}, Ly0/j0;-><init>(Ljava/lang/String;Z)V

    .line 114
    .line 115
    .line 116
    iput-object p2, p0, Ly0/f;->b:Ly0/j0;

    .line 117
    .line 118
    iget-boolean p2, p2, Ly0/j0;->g:Z

    .line 119
    .line 120
    if-eqz p2, :cond_8

    .line 121
    .line 122
    invoke-virtual {p0}, Ly0/f;->h()I

    .line 123
    .line 124
    .line 125
    move-result p2

    .line 126
    const v1, 0x1110e58

    .line 127
    .line 128
    .line 129
    if-lt p2, v1, :cond_7

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 133
    .line 134
    iget-object p2, p0, Ly0/f;->b:Ly0/j0;

    .line 135
    .line 136
    iget-object p2, p2, Ly0/j0;->h:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast p2, Ljava/lang/String;

    .line 139
    .line 140
    const-string v1, "Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: "

    .line 141
    .line 142
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw p1

    .line 154
    :cond_8
    :goto_2
    iget-object p2, p0, Ly0/f;->d:Ly0/i0;

    .line 155
    .line 156
    iget-object v1, p0, Ly0/f;->b:Ly0/j0;

    .line 157
    .line 158
    iget-object v1, v1, Ly0/j0;->h:Ljava/lang/Object;

    .line 159
    .line 160
    check-cast v1, Ljava/lang/String;

    .line 161
    .line 162
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/i0;->l(Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    iget-object v2, p0, Ly0/f;->b:Ly0/j0;

    .line 166
    .line 167
    iget-object v2, v2, Ly0/j0;->i:Ljava/lang/Object;

    .line 168
    .line 169
    check-cast v2, Ljava/lang/String;

    .line 170
    .line 171
    iget-object v3, p0, Ly0/f;->q:Ljava/lang/String;

    .line 172
    .line 173
    if-nez v3, :cond_9

    .line 174
    .line 175
    iget-object v3, p0, Ly0/f;->c:Landroid/content/Context;

    .line 176
    .line 177
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    :cond_9
    iget-object v4, p0, Ly0/f;->b:Ly0/j0;

    .line 186
    .line 187
    iget-boolean v4, v4, Ly0/j0;->g:Z

    .line 188
    .line 189
    new-instance v5, Ly0/f0;

    .line 190
    .line 191
    invoke-direct {v5, v1, v2, v4}, Ly0/f0;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p2, v5, p1, v3}, Ly0/i0;->b(Ly0/f0;Ly0/b0;Ljava/lang/String;)Z

    .line 195
    .line 196
    .line 197
    move-result p1

    .line 198
    if-nez p1, :cond_c

    .line 199
    .line 200
    iget-object p1, p0, Ly0/f;->b:Ly0/j0;

    .line 201
    .line 202
    iget-object p1, p1, Ly0/j0;->h:Ljava/lang/Object;

    .line 203
    .line 204
    iget-object p1, p0, Ly0/f;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 205
    .line 206
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 207
    .line 208
    .line 209
    move-result p1

    .line 210
    new-instance p2, Ly0/d0;

    .line 211
    .line 212
    const/16 v1, 0x10

    .line 213
    .line 214
    invoke-direct {p2, p0, v1}, Ly0/d0;-><init>(Ly0/f;I)V

    .line 215
    .line 216
    .line 217
    iget-object v1, p0, Ly0/f;->e:Ly0/z;

    .line 218
    .line 219
    const/4 v2, 0x7

    .line 220
    const/4 v3, -0x1

    .line 221
    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 226
    .line 227
    .line 228
    goto :goto_3

    .line 229
    :cond_a
    iget-object p1, p0, Ly0/f;->l:Ly0/b0;

    .line 230
    .line 231
    if-eqz p1, :cond_c

    .line 232
    .line 233
    iget-object p2, p0, Ly0/f;->d:Ly0/i0;

    .line 234
    .line 235
    iget-object v1, p0, Ly0/f;->b:Ly0/j0;

    .line 236
    .line 237
    iget-object v1, v1, Ly0/j0;->h:Ljava/lang/Object;

    .line 238
    .line 239
    check-cast v1, Ljava/lang/String;

    .line 240
    .line 241
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/i0;->l(Ljava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    iget-object v2, p0, Ly0/f;->b:Ly0/j0;

    .line 245
    .line 246
    iget-object v2, v2, Ly0/j0;->i:Ljava/lang/Object;

    .line 247
    .line 248
    check-cast v2, Ljava/lang/String;

    .line 249
    .line 250
    iget-object v3, p0, Ly0/f;->q:Ljava/lang/String;

    .line 251
    .line 252
    if-nez v3, :cond_b

    .line 253
    .line 254
    iget-object v3, p0, Ly0/f;->c:Landroid/content/Context;

    .line 255
    .line 256
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 257
    .line 258
    .line 259
    :cond_b
    iget-object v3, p0, Ly0/f;->b:Ly0/j0;

    .line 260
    .line 261
    iget-boolean v3, v3, Ly0/j0;->g:Z

    .line 262
    .line 263
    invoke-virtual {p2, v1, v2, p1, v3}, Ly0/i0;->a(Ljava/lang/String;Ljava/lang/String;Ly0/b0;Z)V

    .line 264
    .line 265
    .line 266
    const/4 p1, 0x0

    .line 267
    iput-object p1, p0, Ly0/f;->l:Ly0/b0;

    .line 268
    .line 269
    :cond_c
    :goto_3
    monitor-exit v0

    .line 270
    return-void

    .line 271
    :catchall_0
    move-exception p1

    .line 272
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    throw p1

    .line 274
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 275
    .line 276
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 277
    .line 278
    .line 279
    throw p1
.end method
