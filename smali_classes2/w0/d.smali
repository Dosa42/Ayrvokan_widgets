.class public abstract Lw0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Lf0/k;

.field public final d:Lw0/a;

.field public final e:Lx0/a;

.field public final f:I

.field public final g:Lc/a;

.field public final h:Lx0/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lf0/k;Lw0/c;)V
    .locals 4

    .line 1
    sget-object v0, Ly0/l;->b:Ly0/l;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    if-eqz p2, :cond_2

    .line 9
    .line 10
    if-eqz p3, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "The provided context did not have an application context."

    .line 17
    .line 18
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/i0;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lw0/d;->a:Landroid/content/Context;

    .line 22
    .line 23
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 24
    .line 25
    const/16 v3, 0x1e

    .line 26
    .line 27
    if-lt v2, v3, :cond_0

    .line 28
    .line 29
    invoke-static {p1}, Lo1/z0;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p1, 0x0

    .line 35
    :goto_0
    iput-object p1, p0, Lw0/d;->b:Ljava/lang/String;

    .line 36
    .line 37
    iput-object p2, p0, Lw0/d;->c:Lf0/k;

    .line 38
    .line 39
    iput-object v0, p0, Lw0/d;->d:Lw0/a;

    .line 40
    .line 41
    new-instance v0, Lx0/a;

    .line 42
    .line 43
    invoke-direct {v0, p2, p1}, Lx0/a;-><init>(Lf0/k;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lw0/d;->e:Lx0/a;

    .line 47
    .line 48
    new-instance p1, Lx0/q;

    .line 49
    .line 50
    invoke-static {v1}, Lx0/d;->e(Landroid/content/Context;)Lx0/d;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iput-object p1, p0, Lw0/d;->h:Lx0/d;

    .line 55
    .line 56
    iget-object p2, p1, Lx0/d;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 57
    .line 58
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    iput p2, p0, Lw0/d;->f:I

    .line 63
    .line 64
    iget-object p2, p3, Lw0/c;->a:Lc/a;

    .line 65
    .line 66
    iput-object p2, p0, Lw0/d;->g:Lc/a;

    .line 67
    .line 68
    iget-object p1, p1, Lx0/d;->r:Le1/d;

    .line 69
    .line 70
    const/4 p2, 0x7

    .line 71
    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 80
    .line 81
    const-string p2, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead."

    .line 82
    .line 83
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p1

    .line 87
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    .line 88
    .line 89
    const-string p2, "Api must not be null."

    .line 90
    .line 91
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw p1

    .line 95
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    .line 96
    .line 97
    const-string p2, "Null context is not permitted."

    .line 98
    .line 99
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw p1
.end method


# virtual methods
.method public final a()Lj0/j;
    .locals 3

    .line 1
    new-instance v0, Lj0/j;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Lj0/j;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-object v1, v0, Lj0/j;->e:Ljava/lang/Object;

    .line 9
    .line 10
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, v0, Lj0/j;->i:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Lf/c;

    .line 17
    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    new-instance v2, Lf/c;

    .line 21
    .line 22
    invoke-direct {v2}, Lf/c;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v2, v0, Lj0/j;->i:Ljava/lang/Object;

    .line 26
    .line 27
    :cond_0
    iget-object v2, v0, Lj0/j;->i:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v2, Lf/c;

    .line 30
    .line 31
    invoke-virtual {v2, v1}, Lf/c;->addAll(Ljava/util/Collection;)Z

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lw0/d;->a:Landroid/content/Context;

    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    iput-object v2, v0, Lj0/j;->h:Ljava/lang/Object;

    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iput-object v1, v0, Lj0/j;->f:Ljava/lang/Object;

    .line 51
    .line 52
    return-object v0
.end method
