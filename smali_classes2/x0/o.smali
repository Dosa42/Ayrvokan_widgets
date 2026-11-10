.class public final Lx0/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw0/e;
.implements Lw0/f;


# instance fields
.field public final a:Ljava/util/LinkedList;

.field public final b:Ly0/f;

.field public final c:Lx0/a;

.field public final d:Lx0/i;

.field public final e:Ljava/util/HashSet;

.field public final f:Ljava/util/HashMap;

.field public final g:I

.field public final h:Lx0/w;

.field public i:Z

.field public final j:Ljava/util/ArrayList;

.field public k:Lv0/a;

.field public final synthetic l:Lx0/d;


# direct methods
.method public constructor <init>(Lx0/d;Lw0/d;)V
    .locals 10

    .line 1
    iput-object p1, p0, Lx0/o;->l:Lx0/d;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/LinkedList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lx0/o;->a:Ljava/util/LinkedList;

    .line 12
    .line 13
    new-instance v0, Ljava/util/HashSet;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lx0/o;->e:Ljava/util/HashSet;

    .line 19
    .line 20
    new-instance v0, Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lx0/o;->f:Ljava/util/HashMap;

    .line 26
    .line 27
    new-instance v0, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lx0/o;->j:Ljava/util/ArrayList;

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lx0/o;->k:Lv0/a;

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    iget-object v2, p1, Lx0/d;->r:Le1/d;

    .line 39
    .line 40
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    invoke-virtual {p2}, Lw0/d;->a()Lj0/j;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v2}, Lj0/j;->g()Ly0/c;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    iget-object v2, p2, Lw0/d;->c:Lf0/k;

    .line 53
    .line 54
    iget-object v2, v2, Lf0/k;->h:Ljava/lang/Object;

    .line 55
    .line 56
    move-object v3, v2

    .line 57
    check-cast v3, Lc1/b;

    .line 58
    .line 59
    invoke-static {v3}, Lcom/google/android/gms/internal/play_billing/i0;->l(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    iget-object v7, p2, Lw0/d;->d:Lw0/a;

    .line 63
    .line 64
    iget-object v4, p2, Lw0/d;->a:Landroid/content/Context;

    .line 65
    .line 66
    move-object v8, p0

    .line 67
    move-object v9, p0

    .line 68
    invoke-virtual/range {v3 .. v9}, Lc1/b;->b(Landroid/content/Context;Landroid/os/Looper;Ly0/c;Lw0/a;Lw0/e;Lw0/f;)Ly0/f;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    iget-object v3, p2, Lw0/d;->b:Ljava/lang/String;

    .line 73
    .line 74
    if-eqz v3, :cond_0

    .line 75
    .line 76
    iput-object v3, v2, Ly0/f;->r:Ljava/lang/String;

    .line 77
    .line 78
    :cond_0
    iput-object v2, p0, Lx0/o;->b:Ly0/f;

    .line 79
    .line 80
    iget-object v3, p2, Lw0/d;->e:Lx0/a;

    .line 81
    .line 82
    iput-object v3, p0, Lx0/o;->c:Lx0/a;

    .line 83
    .line 84
    new-instance v3, Lx0/i;

    .line 85
    .line 86
    invoke-direct {v3, v1}, Lx0/i;-><init>(I)V

    .line 87
    .line 88
    .line 89
    iput-object v3, p0, Lx0/o;->d:Lx0/i;

    .line 90
    .line 91
    iget v1, p2, Lw0/d;->f:I

    .line 92
    .line 93
    iput v1, p0, Lx0/o;->g:I

    .line 94
    .line 95
    invoke-interface {v2}, Lw0/b;->f()Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_1

    .line 100
    .line 101
    iget-object v0, p1, Lx0/d;->j:Landroid/content/Context;

    .line 102
    .line 103
    iget-object p1, p1, Lx0/d;->r:Le1/d;

    .line 104
    .line 105
    new-instance v1, Lx0/w;

    .line 106
    .line 107
    invoke-virtual {p2}, Lw0/d;->a()Lj0/j;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    invoke-virtual {p2}, Lj0/j;->g()Ly0/c;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    invoke-direct {v1, v0, p1, p2}, Lx0/w;-><init>(Landroid/content/Context;Le1/d;Ly0/c;)V

    .line 116
    .line 117
    .line 118
    iput-object v1, p0, Lx0/o;->h:Lx0/w;

    .line 119
    .line 120
    return-void

    .line 121
    :cond_1
    iput-object v0, p0, Lx0/o;->h:Lx0/w;

    .line 122
    .line 123
    return-void
.end method


# virtual methods
.method public final a(Lv0/a;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lx0/o;->o(Lv0/a;Ljava/lang/RuntimeException;)V

    return-void
.end method

.method public final b(I)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lx0/o;->l:Lx0/d;

    .line 6
    .line 7
    iget-object v2, v1, Lx0/d;->r:Le1/d;

    .line 8
    .line 9
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-ne v0, v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lx0/o;->i(I)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v0, v1, Lx0/d;->r:Le1/d;

    .line 20
    .line 21
    new-instance v1, Lx0/m;

    .line 22
    .line 23
    invoke-direct {v1, p0, p1}, Lx0/m;-><init>(Lx0/o;I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lx0/o;->l:Lx0/d;

    .line 6
    .line 7
    iget-object v2, v1, Lx0/d;->r:Le1/d;

    .line 8
    .line 9
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-ne v0, v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lx0/o;->h()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v0, v1, Lx0/d;->r:Le1/d;

    .line 20
    .line 21
    new-instance v1, Lx0/v;

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-direct {v1, p0, v2}, Lx0/v;-><init>(Ljava/lang/Object;I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final d(Lv0/a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lx0/o;->e:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_2

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, La1/b;->j(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    sget-object v0, Lv0/a;->e:Lv0/a;

    .line 21
    .line 22
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/i0;->E(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    iget-object p1, p0, Lx0/o;->b:Ly0/f;

    .line 29
    .line 30
    invoke-virtual {p1}, Ly0/f;->p()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    iget-object p1, p1, Ly0/f;->b:Ly0/j0;

    .line 37
    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 42
    .line 43
    const-string v0, "Failed to connect when checking package"

    .line 44
    .line 45
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p1

    .line 49
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 50
    throw p1

    .line 51
    :cond_2
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final e(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lx0/o;->l:Lx0/d;

    .line 2
    .line 3
    iget-object v0, v0, Lx0/d;->r:Le1/d;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/i0;->i(Le1/d;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, p1, v0, v1}, Lx0/o;->f(Lcom/google/android/gms/common/api/Status;Ljava/lang/RuntimeException;Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final f(Lcom/google/android/gms/common/api/Status;Ljava/lang/RuntimeException;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lx0/o;->l:Lx0/d;

    .line 2
    .line 3
    iget-object v0, v0, Lx0/d;->r:Le1/d;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/i0;->i(Le1/d;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    move v2, v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v2, v1

    .line 15
    :goto_0
    if-eqz p2, :cond_1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    move v0, v1

    .line 19
    :goto_1
    if-eq v2, v0, :cond_6

    .line 20
    .line 21
    iget-object v0, p0, Lx0/o;->a:Ljava/util/LinkedList;

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_5

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lx0/s;

    .line 38
    .line 39
    if-eqz p3, :cond_3

    .line 40
    .line 41
    iget v2, v1, Lx0/s;->a:I

    .line 42
    .line 43
    const/4 v3, 0x2

    .line 44
    if-ne v2, v3, :cond_2

    .line 45
    .line 46
    :cond_3
    if-eqz p1, :cond_4

    .line 47
    .line 48
    invoke-virtual {v1, p1}, Lx0/s;->c(Lcom/google/android/gms/common/api/Status;)V

    .line 49
    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_4
    invoke-virtual {v1, p2}, Lx0/s;->d(Ljava/lang/RuntimeException;)V

    .line 53
    .line 54
    .line 55
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 56
    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_5
    return-void

    .line 60
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 61
    .line 62
    const-string p2, "Status XOR exception should be null"

    .line 63
    .line 64
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p1
.end method

.method public final g()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lx0/o;->a:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lx0/s;

    iget-object v5, p0, Lx0/o;->b:Ly0/f;

    invoke-virtual {v5}, Ly0/f;->p()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v4}, Lx0/o;->k(Lx0/s;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final h()V
    .locals 5

    .line 1
    iget-object v0, p0, Lx0/o;->l:Lx0/d;

    .line 2
    .line 3
    iget-object v1, v0, Lx0/d;->r:Le1/d;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/i0;->i(Le1/d;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput-object v1, p0, Lx0/o;->k:Lv0/a;

    .line 10
    .line 11
    sget-object v2, Lv0/a;->e:Lv0/a;

    .line 12
    .line 13
    invoke-virtual {p0, v2}, Lx0/o;->d(Lv0/a;)V

    .line 14
    .line 15
    .line 16
    iget-boolean v2, p0, Lx0/o;->i:Z

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    iget-object v2, v0, Lx0/d;->r:Le1/d;

    .line 21
    .line 22
    const/16 v3, 0xb

    .line 23
    .line 24
    iget-object v4, p0, Lx0/o;->c:Lx0/a;

    .line 25
    .line 26
    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, v0, Lx0/d;->r:Le1/d;

    .line 30
    .line 31
    const/16 v2, 0x9

    .line 32
    .line 33
    invoke-virtual {v0, v2, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lx0/o;->i:Z

    .line 38
    .line 39
    :cond_0
    iget-object v0, p0, Lx0/o;->f:Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-nez v2, :cond_1

    .line 54
    .line 55
    invoke-virtual {p0}, Lx0/o;->g()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lx0/o;->j()V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-static {v0}, La1/b;->j(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    throw v1
.end method

.method public final i(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lx0/o;->l:Lx0/d;

    .line 2
    .line 3
    iget-object v0, v0, Lx0/d;->r:Le1/d;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/i0;->i(Le1/d;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lx0/o;->k:Lv0/a;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, p0, Lx0/o;->i:Z

    .line 13
    .line 14
    iget-object v2, p0, Lx0/o;->b:Ly0/f;

    .line 15
    .line 16
    iget-object v2, v2, Ly0/f;->a:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v3, p0, Lx0/o;->d:Lx0/i;

    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    new-instance v4, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v5, "The connection to Google Play services was lost"

    .line 26
    .line 27
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    if-ne p1, v1, :cond_0

    .line 31
    .line 32
    const-string p1, " due to service disconnection."

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v5, 0x3

    .line 36
    if-ne p1, v5, :cond_1

    .line 37
    .line 38
    const-string p1, " due to dead object exception."

    .line 39
    .line 40
    :goto_0
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    :cond_1
    if-eqz v2, :cond_2

    .line 44
    .line 45
    const-string p1, " Last reason for disconnect: "

    .line 46
    .line 47
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    new-instance v2, Lcom/google/android/gms/common/api/Status;

    .line 58
    .line 59
    const/16 v4, 0x14

    .line 60
    .line 61
    invoke-direct {v2, v4, p1, v0, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Lv0/a;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, v1, v2}, Lx0/i;->a(ZLcom/google/android/gms/common/api/Status;)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lx0/o;->c:Lx0/a;

    .line 68
    .line 69
    iget-object v1, p0, Lx0/o;->l:Lx0/d;

    .line 70
    .line 71
    iget-object v1, v1, Lx0/d;->r:Le1/d;

    .line 72
    .line 73
    const/16 v2, 0x9

    .line 74
    .line 75
    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    const-wide/16 v2, 0x1388

    .line 80
    .line 81
    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lx0/o;->c:Lx0/a;

    .line 85
    .line 86
    iget-object v1, p0, Lx0/o;->l:Lx0/d;

    .line 87
    .line 88
    iget-object v1, v1, Lx0/d;->r:Le1/d;

    .line 89
    .line 90
    const/16 v2, 0xb

    .line 91
    .line 92
    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    const-wide/32 v2, 0x1d4c0

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 100
    .line 101
    .line 102
    iget-object p1, p0, Lx0/o;->l:Lx0/d;

    .line 103
    .line 104
    iget-object p1, p1, Lx0/d;->l:Landroidx/fragment/app/h;

    .line 105
    .line 106
    iget-object p1, p1, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast p1, Landroid/util/SparseIntArray;

    .line 109
    .line 110
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Lx0/o;->f:Ljava/util/HashMap;

    .line 114
    .line 115
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-nez v1, :cond_3

    .line 128
    .line 129
    return-void

    .line 130
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-static {p1}, La1/b;->j(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    throw v0
.end method

.method public final j()V
    .locals 5

    .line 1
    iget-object v0, p0, Lx0/o;->l:Lx0/d;

    .line 2
    .line 3
    iget-object v1, v0, Lx0/d;->r:Le1/d;

    .line 4
    .line 5
    const/16 v2, 0xc

    .line 6
    .line 7
    iget-object v3, p0, Lx0/o;->c:Lx0/a;

    .line 8
    .line 9
    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, v0, Lx0/d;->r:Le1/d;

    .line 13
    .line 14
    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    iget-wide v3, v0, Lx0/d;->f:J

    .line 19
    .line 20
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final k(Lx0/s;)Z
    .locals 13

    .line 1
    instance-of v0, p1, Lx0/s;

    .line 2
    .line 3
    const-string v1, "DeadObjectException thrown while running ApiCallRunner."

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lx0/o;->b:Ly0/f;

    .line 9
    .line 10
    invoke-interface {v0}, Lw0/b;->f()Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    iget-object v4, p0, Lx0/o;->d:Lx0/i;

    .line 15
    .line 16
    invoke-virtual {p1, v4, v3}, Lx0/s;->f(Lx0/i;Z)V

    .line 17
    .line 18
    .line 19
    :try_start_0
    invoke-virtual {p1, p0}, Lx0/s;->e(Lx0/o;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    invoke-virtual {p0, v2}, Lx0/o;->b(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ly0/f;->e(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return v2

    .line 30
    :cond_0
    invoke-virtual {p1, p0}, Lx0/s;->b(Lx0/o;)[Lv0/c;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/4 v3, 0x0

    .line 35
    const/4 v4, 0x0

    .line 36
    if-eqz v0, :cond_6

    .line 37
    .line 38
    array-length v5, v0

    .line 39
    if-nez v5, :cond_1

    .line 40
    .line 41
    goto :goto_4

    .line 42
    :cond_1
    iget-object v5, p0, Lx0/o;->b:Ly0/f;

    .line 43
    .line 44
    iget-object v5, v5, Ly0/f;->u:Ly0/e0;

    .line 45
    .line 46
    if-nez v5, :cond_2

    .line 47
    .line 48
    move-object v5, v4

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    iget-object v5, v5, Ly0/e0;->b:[Lv0/c;

    .line 51
    .line 52
    :goto_1
    if-nez v5, :cond_3

    .line 53
    .line 54
    new-array v5, v3, [Lv0/c;

    .line 55
    .line 56
    :cond_3
    new-instance v6, Lf/b;

    .line 57
    .line 58
    array-length v7, v5

    .line 59
    invoke-direct {v6, v7}, Lf/b;-><init>(I)V

    .line 60
    .line 61
    .line 62
    move v7, v3

    .line 63
    :goto_2
    array-length v8, v5

    .line 64
    if-ge v7, v8, :cond_4

    .line 65
    .line 66
    aget-object v8, v5, v7

    .line 67
    .line 68
    iget-object v9, v8, Lv0/c;->a:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v8}, Lv0/c;->a()J

    .line 71
    .line 72
    .line 73
    move-result-wide v10

    .line 74
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 75
    .line 76
    .line 77
    move-result-object v8

    .line 78
    invoke-virtual {v6, v9, v8}, Lf/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    add-int/lit8 v7, v7, 0x1

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_4
    array-length v5, v0

    .line 85
    move v7, v3

    .line 86
    :goto_3
    if-ge v7, v5, :cond_6

    .line 87
    .line 88
    aget-object v8, v0, v7

    .line 89
    .line 90
    iget-object v9, v8, Lv0/c;->a:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v6, v9, v4}, Lf/i;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v9

    .line 96
    check-cast v9, Ljava/lang/Long;

    .line 97
    .line 98
    if-eqz v9, :cond_7

    .line 99
    .line 100
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 101
    .line 102
    .line 103
    move-result-wide v9

    .line 104
    invoke-virtual {v8}, Lv0/c;->a()J

    .line 105
    .line 106
    .line 107
    move-result-wide v11

    .line 108
    cmp-long v9, v9, v11

    .line 109
    .line 110
    if-gez v9, :cond_5

    .line 111
    .line 112
    goto :goto_5

    .line 113
    :cond_5
    add-int/lit8 v7, v7, 0x1

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_6
    :goto_4
    move-object v8, v4

    .line 117
    :cond_7
    :goto_5
    if-nez v8, :cond_8

    .line 118
    .line 119
    iget-object v0, p0, Lx0/o;->b:Ly0/f;

    .line 120
    .line 121
    invoke-interface {v0}, Lw0/b;->f()Z

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    iget-object v4, p0, Lx0/o;->d:Lx0/i;

    .line 126
    .line 127
    invoke-virtual {p1, v4, v3}, Lx0/s;->f(Lx0/i;Z)V

    .line 128
    .line 129
    .line 130
    :try_start_1
    invoke-virtual {p1, p0}, Lx0/s;->e(Lx0/o;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1

    .line 131
    .line 132
    .line 133
    goto :goto_6

    .line 134
    :catch_1
    invoke-virtual {p0, v2}, Lx0/o;->b(I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v1}, Ly0/f;->e(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    :goto_6
    return v2

    .line 141
    :cond_8
    iget-object v0, p0, Lx0/o;->b:Ly0/f;

    .line 142
    .line 143
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    iget-object v0, p0, Lx0/o;->l:Lx0/d;

    .line 147
    .line 148
    iget-boolean v0, v0, Lx0/d;->s:Z

    .line 149
    .line 150
    if-eqz v0, :cond_b

    .line 151
    .line 152
    invoke-virtual {p1, p0}, Lx0/s;->a(Lx0/o;)Z

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-eqz v0, :cond_b

    .line 157
    .line 158
    iget-object p1, p0, Lx0/o;->c:Lx0/a;

    .line 159
    .line 160
    new-instance v0, Lx0/p;

    .line 161
    .line 162
    invoke-direct {v0, p1, v8}, Lx0/p;-><init>(Lx0/a;Lv0/c;)V

    .line 163
    .line 164
    .line 165
    iget-object p1, p0, Lx0/o;->j:Ljava/util/ArrayList;

    .line 166
    .line 167
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    const-wide/16 v1, 0x1388

    .line 172
    .line 173
    const/16 v5, 0xf

    .line 174
    .line 175
    if-ltz p1, :cond_9

    .line 176
    .line 177
    iget-object v0, p0, Lx0/o;->j:Ljava/util/ArrayList;

    .line 178
    .line 179
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    check-cast p1, Lx0/p;

    .line 184
    .line 185
    iget-object v0, p0, Lx0/o;->l:Lx0/d;

    .line 186
    .line 187
    iget-object v0, v0, Lx0/d;->r:Le1/d;

    .line 188
    .line 189
    invoke-virtual {v0, v5, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    iget-object v0, p0, Lx0/o;->l:Lx0/d;

    .line 193
    .line 194
    iget-object v0, v0, Lx0/d;->r:Le1/d;

    .line 195
    .line 196
    invoke-static {v0, v5, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 201
    .line 202
    .line 203
    goto :goto_7

    .line 204
    :cond_9
    iget-object p1, p0, Lx0/o;->j:Ljava/util/ArrayList;

    .line 205
    .line 206
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    iget-object p1, p0, Lx0/o;->l:Lx0/d;

    .line 210
    .line 211
    iget-object p1, p1, Lx0/d;->r:Le1/d;

    .line 212
    .line 213
    invoke-static {p1, v5, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 214
    .line 215
    .line 216
    move-result-object v5

    .line 217
    invoke-virtual {p1, v5, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 218
    .line 219
    .line 220
    iget-object p1, p0, Lx0/o;->l:Lx0/d;

    .line 221
    .line 222
    iget-object p1, p1, Lx0/d;->r:Le1/d;

    .line 223
    .line 224
    const/16 v1, 0x10

    .line 225
    .line 226
    invoke-static {p1, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    const-wide/32 v1, 0x1d4c0

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 234
    .line 235
    .line 236
    new-instance p1, Lv0/a;

    .line 237
    .line 238
    const/4 v0, 0x2

    .line 239
    invoke-direct {p1, v0, v4}, Lv0/a;-><init>(ILandroid/app/PendingIntent;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p0, p1}, Lx0/o;->l(Lv0/a;)Z

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    if-nez v0, :cond_a

    .line 247
    .line 248
    iget-object v0, p0, Lx0/o;->l:Lx0/d;

    .line 249
    .line 250
    iget v1, p0, Lx0/o;->g:I

    .line 251
    .line 252
    invoke-virtual {v0, p1, v1}, Lx0/d;->b(Lv0/a;I)Z

    .line 253
    .line 254
    .line 255
    :cond_a
    :goto_7
    return v3

    .line 256
    :cond_b
    new-instance v0, Lw0/h;

    .line 257
    .line 258
    invoke-direct {v0, v8}, Lw0/h;-><init>(Lv0/c;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {p1, v0}, Lx0/s;->d(Ljava/lang/RuntimeException;)V

    .line 262
    .line 263
    .line 264
    return v2
.end method

.method public final l(Lv0/a;)Z
    .locals 1

    .line 1
    sget-object p1, Lx0/d;->v:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v0, p0, Lx0/o;->l:Lx0/d;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    monitor-exit p1

    .line 11
    return v0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw v0
.end method

.method public final m()V
    .locals 13

    .line 1
    iget-object v0, p0, Lx0/o;->l:Lx0/d;

    .line 2
    .line 3
    iget-object v1, v0, Lx0/d;->r:Le1/d;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/i0;->i(Le1/d;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lx0/o;->b:Ly0/f;

    .line 9
    .line 10
    invoke-virtual {v1}, Ly0/f;->p()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_6

    .line 15
    .line 16
    invoke-virtual {v1}, Ly0/f;->q()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    goto/16 :goto_3

    .line 23
    .line 24
    :cond_0
    const/16 v2, 0xa

    .line 25
    .line 26
    :try_start_0
    iget-object v3, v0, Lx0/d;->l:Landroidx/fragment/app/h;

    .line 27
    .line 28
    iget-object v4, v0, Lx0/d;->j:Landroid/content/Context;

    .line 29
    .line 30
    invoke-virtual {v3, v4, v1}, Landroidx/fragment/app/h;->u(Landroid/content/Context;Ly0/f;)I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    const/4 v4, 0x0

    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    new-instance v0, Lv0/a;

    .line 38
    .line 39
    invoke-direct {v0, v3, v4}, Lv0/a;-><init>(ILandroid/app/PendingIntent;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Lv0/a;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v0, v4}, Lx0/o;->o(Lv0/a;Ljava/lang/RuntimeException;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_1
    new-instance v3, Lf0/c;

    .line 53
    .line 54
    iget-object v5, p0, Lx0/o;->c:Lx0/a;

    .line 55
    .line 56
    invoke-direct {v3, v0, v1, v5}, Lf0/c;-><init>(Lx0/d;Ly0/f;Lx0/a;)V

    .line 57
    .line 58
    .line 59
    invoke-interface {v1}, Lw0/b;->f()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_5

    .line 64
    .line 65
    iget-object v0, p0, Lx0/o;->h:Lx0/w;

    .line 66
    .line 67
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/i0;->l(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    iget-object v5, v0, Lx0/w;->f:Lg1/c;

    .line 71
    .line 72
    if-eqz v5, :cond_2

    .line 73
    .line 74
    invoke-interface {v5}, Lw0/b;->d()V

    .line 75
    .line 76
    .line 77
    :cond_2
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    iget-object v8, v0, Lx0/w;->e:Ly0/c;

    .line 86
    .line 87
    iput-object v5, v8, Ly0/c;->g:Ljava/lang/Integer;

    .line 88
    .line 89
    iget-object v5, v0, Lx0/w;->c:La1/c;

    .line 90
    .line 91
    iget-object v6, v0, Lx0/w;->a:Landroid/content/Context;

    .line 92
    .line 93
    iget-object v12, v0, Lx0/w;->b:Landroid/os/Handler;

    .line 94
    .line 95
    invoke-virtual {v12}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 96
    .line 97
    .line 98
    move-result-object v7

    .line 99
    iget-object v9, v8, Ly0/c;->f:Lg1/a;

    .line 100
    .line 101
    move-object v10, v0

    .line 102
    move-object v11, v0

    .line 103
    invoke-virtual/range {v5 .. v11}, La1/c;->b(Landroid/content/Context;Landroid/os/Looper;Ly0/c;Lw0/a;Lw0/e;Lw0/f;)Ly0/f;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    iput-object v5, v0, Lx0/w;->f:Lg1/c;

    .line 108
    .line 109
    iput-object v3, v0, Lx0/w;->g:Lf0/c;

    .line 110
    .line 111
    iget-object v5, v0, Lx0/w;->d:Ljava/util/Set;

    .line 112
    .line 113
    if-eqz v5, :cond_4

    .line 114
    .line 115
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    if-eqz v5, :cond_3

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_3
    iget-object v0, v0, Lx0/w;->f:Lg1/c;

    .line 123
    .line 124
    invoke-interface {v0}, Lg1/c;->g()V

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_4
    :goto_0
    new-instance v5, Lx0/v;

    .line 129
    .line 130
    const/4 v6, 0x0

    .line 131
    invoke-direct {v5, v0, v6}, Lx0/v;-><init>(Ljava/lang/Object;I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v12, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 135
    .line 136
    .line 137
    :cond_5
    :goto_1
    :try_start_1
    iput-object v3, v1, Ly0/f;->i:Ly0/b;

    .line 138
    .line 139
    const/4 v0, 0x2

    .line 140
    invoke-virtual {v1, v0, v4}, Ly0/f;->s(ILandroid/os/IInterface;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    new-instance v1, Lv0/a;

    .line 146
    .line 147
    invoke-direct {v1, v2}, Lv0/a;-><init>(I)V

    .line 148
    .line 149
    .line 150
    goto :goto_2

    .line 151
    :catch_1
    move-exception v0

    .line 152
    new-instance v1, Lv0/a;

    .line 153
    .line 154
    invoke-direct {v1, v2}, Lv0/a;-><init>(I)V

    .line 155
    .line 156
    .line 157
    :goto_2
    invoke-virtual {p0, v1, v0}, Lx0/o;->o(Lv0/a;Ljava/lang/RuntimeException;)V

    .line 158
    .line 159
    .line 160
    :cond_6
    :goto_3
    return-void
.end method

.method public final n(Lx0/s;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lx0/o;->l:Lx0/d;

    .line 2
    .line 3
    iget-object v0, v0, Lx0/d;->r:Le1/d;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/i0;->i(Le1/d;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lx0/o;->b:Ly0/f;

    .line 9
    .line 10
    invoke-virtual {v0}, Ly0/f;->p()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v1, p0, Lx0/o;->a:Ljava/util/LinkedList;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lx0/o;->k(Lx0/s;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Lx0/o;->j()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lx0/o;->k:Lv0/a;

    .line 36
    .line 37
    if-eqz p1, :cond_3

    .line 38
    .line 39
    iget v0, p1, Lv0/a;->b:I

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    iget-object v0, p1, Lv0/a;->c:Landroid/app/PendingIntent;

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    const/4 v0, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const/4 v0, 0x0

    .line 50
    :goto_0
    if-eqz v0, :cond_3

    .line 51
    .line 52
    const/4 v0, 0x0

    .line 53
    invoke-virtual {p0, p1, v0}, Lx0/o;->o(Lv0/a;Ljava/lang/RuntimeException;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_3
    invoke-virtual {p0}, Lx0/o;->m()V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final o(Lv0/a;Ljava/lang/RuntimeException;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lx0/o;->l:Lx0/d;

    .line 2
    .line 3
    iget-object v0, v0, Lx0/d;->r:Le1/d;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/i0;->i(Le1/d;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lx0/o;->h:Lx0/w;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, v0, Lx0/w;->f:Lg1/c;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {v0}, Lw0/b;->d()V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lx0/o;->l:Lx0/d;

    .line 20
    .line 21
    iget-object v0, v0, Lx0/d;->r:Le1/d;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/i0;->i(Le1/d;)V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lx0/o;->k:Lv0/a;

    .line 28
    .line 29
    iget-object v1, p0, Lx0/o;->l:Lx0/d;

    .line 30
    .line 31
    iget-object v1, v1, Lx0/d;->l:Landroidx/fragment/app/h;

    .line 32
    .line 33
    iget-object v1, v1, Landroidx/fragment/app/h;->g:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v1, Landroid/util/SparseIntArray;

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1}, Lx0/o;->d(Lv0/a;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lx0/o;->b:Ly0/f;

    .line 44
    .line 45
    instance-of v1, v1, La1/e;

    .line 46
    .line 47
    const/4 v2, 0x1

    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    iget v1, p1, Lv0/a;->b:I

    .line 51
    .line 52
    const/16 v3, 0x18

    .line 53
    .line 54
    if-eq v1, v3, :cond_1

    .line 55
    .line 56
    iget-object v1, p0, Lx0/o;->l:Lx0/d;

    .line 57
    .line 58
    iput-boolean v2, v1, Lx0/d;->g:Z

    .line 59
    .line 60
    iget-object v1, v1, Lx0/d;->r:Le1/d;

    .line 61
    .line 62
    const/16 v3, 0x13

    .line 63
    .line 64
    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    const-wide/32 v4, 0x493e0

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 72
    .line 73
    .line 74
    :cond_1
    iget v1, p1, Lv0/a;->b:I

    .line 75
    .line 76
    const/4 v3, 0x4

    .line 77
    if-ne v1, v3, :cond_2

    .line 78
    .line 79
    sget-object p1, Lx0/d;->u:Lcom/google/android/gms/common/api/Status;

    .line 80
    .line 81
    invoke-virtual {p0, p1}, Lx0/o;->e(Lcom/google/android/gms/common/api/Status;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_2
    iget-object v1, p0, Lx0/o;->a:Ljava/util/LinkedList;

    .line 86
    .line 87
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_3

    .line 92
    .line 93
    iput-object p1, p0, Lx0/o;->k:Lv0/a;

    .line 94
    .line 95
    return-void

    .line 96
    :cond_3
    if-eqz p2, :cond_4

    .line 97
    .line 98
    iget-object p1, p0, Lx0/o;->l:Lx0/d;

    .line 99
    .line 100
    iget-object p1, p1, Lx0/d;->r:Le1/d;

    .line 101
    .line 102
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/i0;->i(Le1/d;)V

    .line 103
    .line 104
    .line 105
    const/4 p1, 0x0

    .line 106
    invoke-virtual {p0, v0, p2, p1}, Lx0/o;->f(Lcom/google/android/gms/common/api/Status;Ljava/lang/RuntimeException;Z)V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_4
    iget-object p2, p0, Lx0/o;->l:Lx0/d;

    .line 111
    .line 112
    iget-boolean p2, p2, Lx0/d;->s:Z

    .line 113
    .line 114
    if-eqz p2, :cond_9

    .line 115
    .line 116
    iget-object p2, p0, Lx0/o;->c:Lx0/a;

    .line 117
    .line 118
    invoke-static {p2, p1}, Lx0/d;->c(Lx0/a;Lv0/a;)Lcom/google/android/gms/common/api/Status;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    invoke-virtual {p0, p2, v0, v2}, Lx0/o;->f(Lcom/google/android/gms/common/api/Status;Ljava/lang/RuntimeException;Z)V

    .line 123
    .line 124
    .line 125
    iget-object p2, p0, Lx0/o;->a:Ljava/util/LinkedList;

    .line 126
    .line 127
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 128
    .line 129
    .line 130
    move-result p2

    .line 131
    if-eqz p2, :cond_5

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_5
    invoke-virtual {p0, p1}, Lx0/o;->l(Lv0/a;)Z

    .line 135
    .line 136
    .line 137
    move-result p2

    .line 138
    if-nez p2, :cond_8

    .line 139
    .line 140
    iget-object p2, p0, Lx0/o;->l:Lx0/d;

    .line 141
    .line 142
    iget v0, p0, Lx0/o;->g:I

    .line 143
    .line 144
    invoke-virtual {p2, p1, v0}, Lx0/d;->b(Lv0/a;I)Z

    .line 145
    .line 146
    .line 147
    move-result p2

    .line 148
    if-nez p2, :cond_8

    .line 149
    .line 150
    iget p2, p1, Lv0/a;->b:I

    .line 151
    .line 152
    const/16 v0, 0x12

    .line 153
    .line 154
    if-ne p2, v0, :cond_6

    .line 155
    .line 156
    iput-boolean v2, p0, Lx0/o;->i:Z

    .line 157
    .line 158
    :cond_6
    iget-boolean p2, p0, Lx0/o;->i:Z

    .line 159
    .line 160
    if-eqz p2, :cond_7

    .line 161
    .line 162
    iget-object p1, p0, Lx0/o;->l:Lx0/d;

    .line 163
    .line 164
    iget-object p2, p0, Lx0/o;->c:Lx0/a;

    .line 165
    .line 166
    iget-object p1, p1, Lx0/d;->r:Le1/d;

    .line 167
    .line 168
    const/16 v0, 0x9

    .line 169
    .line 170
    invoke-static {p1, v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    const-wide/16 v0, 0x1388

    .line 175
    .line 176
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 177
    .line 178
    .line 179
    return-void

    .line 180
    :cond_7
    iget-object p2, p0, Lx0/o;->c:Lx0/a;

    .line 181
    .line 182
    invoke-static {p2, p1}, Lx0/d;->c(Lx0/a;Lv0/a;)Lcom/google/android/gms/common/api/Status;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-virtual {p0, p1}, Lx0/o;->e(Lcom/google/android/gms/common/api/Status;)V

    .line 187
    .line 188
    .line 189
    :cond_8
    :goto_0
    return-void

    .line 190
    :cond_9
    iget-object p2, p0, Lx0/o;->c:Lx0/a;

    .line 191
    .line 192
    invoke-static {p2, p1}, Lx0/d;->c(Lx0/a;Lv0/a;)Lcom/google/android/gms/common/api/Status;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    invoke-virtual {p0, p1}, Lx0/o;->e(Lcom/google/android/gms/common/api/Status;)V

    .line 197
    .line 198
    .line 199
    return-void
.end method

.method public final p(Lv0/a;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lx0/o;->l:Lx0/d;

    .line 2
    .line 3
    iget-object v0, v0, Lx0/d;->r:Le1/d;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/i0;->i(Le1/d;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lx0/o;->b:Ly0/f;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v4, "onSignInFailed for "

    .line 25
    .line 26
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v1, " with "

    .line 33
    .line 34
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Ly0/f;->e(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0, p1, v0}, Lx0/o;->o(Lv0/a;Ljava/lang/RuntimeException;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final q()V
    .locals 6

    .line 1
    iget-object v0, p0, Lx0/o;->l:Lx0/d;

    .line 2
    .line 3
    iget-object v1, v0, Lx0/d;->r:Le1/d;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/i0;->i(Le1/d;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lx0/d;->t:Lcom/google/android/gms/common/api/Status;

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Lx0/o;->e(Lcom/google/android/gms/common/api/Status;)V

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lx0/o;->d:Lx0/i;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-virtual {v2, v3, v1}, Lx0/i;->a(ZLcom/google/android/gms/common/api/Status;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lx0/o;->f:Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    new-array v2, v3, [Lx0/g;

    .line 29
    .line 30
    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, [Lx0/g;

    .line 35
    .line 36
    array-length v2, v1

    .line 37
    :goto_0
    if-ge v3, v2, :cond_0

    .line 38
    .line 39
    aget-object v4, v1, v3

    .line 40
    .line 41
    new-instance v4, Lx0/y;

    .line 42
    .line 43
    new-instance v5, Li1/b;

    .line 44
    .line 45
    invoke-direct {v5}, Li1/b;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-direct {v4, v5}, Lx0/y;-><init>(Li1/b;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v4}, Lx0/o;->n(Lx0/s;)V

    .line 52
    .line 53
    .line 54
    add-int/lit8 v3, v3, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    new-instance v1, Lv0/a;

    .line 58
    .line 59
    const/4 v2, 0x4

    .line 60
    invoke-direct {v1, v2}, Lv0/a;-><init>(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v1}, Lx0/o;->d(Lv0/a;)V

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lx0/o;->b:Ly0/f;

    .line 67
    .line 68
    invoke-virtual {v1}, Ly0/f;->p()Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_1

    .line 73
    .line 74
    new-instance v2, Lx0/n;

    .line 75
    .line 76
    invoke-direct {v2, p0}, Lx0/n;-><init>(Lx0/o;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    iget-object v0, v0, Lx0/d;->r:Le1/d;

    .line 83
    .line 84
    new-instance v1, Lx0/v;

    .line 85
    .line 86
    const/4 v3, 0x2

    .line 87
    invoke-direct {v1, v2, v3}, Lx0/v;-><init>(Ljava/lang/Object;I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 91
    .line 92
    .line 93
    :cond_1
    return-void
.end method
