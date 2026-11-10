.class public final Lj0/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj0/q;


# static fields
.field public static volatile e:Lj0/l;


# instance fields
.field public final a:Lr0/a;

.field public final b:Lr0/a;

.field public final c:Ln0/d;

.field public final d:Lo0/l;


# direct methods
.method public constructor <init>(Lr0/a;Lr0/a;Ln0/d;Lo0/l;Lo0/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj0/r;->a:Lr0/a;

    .line 5
    .line 6
    iput-object p2, p0, Lj0/r;->b:Lr0/a;

    .line 7
    .line 8
    iput-object p3, p0, Lj0/r;->c:Ln0/d;

    .line 9
    .line 10
    iput-object p4, p0, Lj0/r;->d:Lo0/l;

    .line 11
    .line 12
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    new-instance p1, Lo0/n;

    .line 16
    .line 17
    const/4 p2, 0x0

    .line 18
    invoke-direct {p1, p5, p2}, Lo0/n;-><init>(Ljava/lang/Object;I)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p5, Lo0/o;->a:Ljava/util/concurrent/Executor;

    .line 22
    .line 23
    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public static a()Lj0/r;
    .locals 2

    .line 1
    sget-object v0, Lj0/r;->e:Lj0/l;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lj0/l;->f:Ld2/a;

    .line 6
    .line 7
    invoke-interface {v0}, Ld2/a;->m()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lj0/r;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    const-string v1, "Not initialized!"

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Lj0/r;->e:Lj0/l;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lj0/r;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lj0/r;->e:Lj0/l;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    new-instance v1, Lj0/l;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lj0/l;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    sput-object v1, Lj0/r;->e:Lj0/l;

    .line 21
    .line 22
    :cond_0
    monitor-exit v0

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0

    .line 27
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final c(Lh0/a;)Lf0/k;
    .locals 8

    .line 1
    new-instance v0, Lf0/k;

    .line 2
    .line 3
    instance-of v1, p1, Lj0/m;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    sget-object v1, Lh0/a;->d:Ljava/util/Set;

    .line 11
    .line 12
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance v1, Lg0/b;

    .line 18
    .line 19
    const-string v2, "proto"

    .line 20
    .line 21
    invoke-direct {v1, v2}, Lg0/b;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    :goto_0
    invoke-static {}, Lj0/k;->a()Lf0/k;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    const-string v3, "cct"

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Lf0/k;->k(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const/4 v3, 0x2

    .line 41
    iget-object v4, p1, Lh0/a;->a:Ljava/lang/String;

    .line 42
    .line 43
    iget-object p1, p1, Lh0/a;->b:Ljava/lang/String;

    .line 44
    .line 45
    if-nez p1, :cond_1

    .line 46
    .line 47
    if-nez v4, :cond_1

    .line 48
    .line 49
    const/4 p1, 0x0

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    const/4 v5, 0x4

    .line 52
    new-array v5, v5, [Ljava/lang/Object;

    .line 53
    .line 54
    const/4 v6, 0x0

    .line 55
    const-string v7, "1$"

    .line 56
    .line 57
    aput-object v7, v5, v6

    .line 58
    .line 59
    const/4 v6, 0x1

    .line 60
    aput-object v4, v5, v6

    .line 61
    .line 62
    const-string v4, "\\"

    .line 63
    .line 64
    aput-object v4, v5, v3

    .line 65
    .line 66
    if-nez p1, :cond_2

    .line 67
    .line 68
    const-string p1, ""

    .line 69
    .line 70
    :cond_2
    const/4 v4, 0x3

    .line 71
    aput-object p1, v5, v4

    .line 72
    .line 73
    const-string p1, "%s%s%s%s"

    .line 74
    .line 75
    invoke-static {p1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    const-string v4, "UTF-8"

    .line 80
    .line 81
    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    :goto_1
    iput-object p1, v2, Lf0/k;->h:Ljava/lang/Object;

    .line 90
    .line 91
    invoke-virtual {v2}, Lf0/k;->b()Lj0/k;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-direct {v0, v1, p1, p0, v3}, Lf0/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 96
    .line 97
    .line 98
    return-object v0
.end method
