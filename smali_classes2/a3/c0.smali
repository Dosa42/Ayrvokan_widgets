.class public final La3/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:La3/x;

.field public static final e:La3/x;


# instance fields
.field public final a:Ljava/util/concurrent/ExecutorService;

.field public b:La3/y;

.field public c:Ljava/io/IOException;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, La3/x;

    const/4 v1, 0x2

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2, v3}, La3/x;-><init>(IJ)V

    sput-object v0, La3/c0;->d:La3/x;

    new-instance v0, La3/x;

    const/4 v1, 0x3

    invoke-direct {v0, v1, v2, v3}, La3/x;-><init>(IJ)V

    sput-object v0, La3/c0;->e:La3/x;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget v0, Lb3/n;->a:I

    .line 5
    .line 6
    new-instance v0, Lb3/m;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lb3/m;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, La3/c0;->a:Ljava/util/concurrent/ExecutorService;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, La3/c0;->c:Ljava/io/IOException;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, La3/c0;->b:La3/y;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v1, v0, La3/y;->j:Ljava/io/IOException;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    iget v2, v0, La3/y;->k:I

    .line 14
    .line 15
    iget v0, v0, La3/y;->f:I

    .line 16
    .line 17
    if-gt v2, v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    throw v1

    .line 21
    :cond_1
    :goto_0
    return-void

    .line 22
    :cond_2
    throw v0
.end method

.method public final b(Lw2/p;)V
    .locals 3

    .line 1
    iget-object v0, p0, La3/c0;->b:La3/y;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, La3/y;->a(Z)V

    :cond_0
    iget-object v0, p0, La3/c0;->a:Ljava/util/concurrent/ExecutorService;

    if-eqz p1, :cond_1

    new-instance v1, Landroidx/activity/a;

    const/16 v2, 0x11

    invoke-direct {v1, p1, v2}, Landroidx/activity/a;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public final c(La3/z;La3/w;I)J
    .locals 11

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v2

    .line 5
    if-eqz v2, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, La3/c0;->c:Ljava/io/IOException;

    .line 9
    .line 10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 11
    .line 12
    .line 13
    move-result-wide v8

    .line 14
    new-instance v10, La3/y;

    .line 15
    .line 16
    move-object v0, v10

    .line 17
    move-object v1, p0

    .line 18
    move-object v3, p1

    .line 19
    move-object v4, p2

    .line 20
    move v5, p3

    .line 21
    move-wide v6, v8

    .line 22
    invoke-direct/range {v0 .. v7}, La3/y;-><init>(La3/c0;Landroid/os/Looper;La3/z;La3/w;IJ)V

    .line 23
    .line 24
    .line 25
    const-wide/16 p1, 0x0

    .line 26
    .line 27
    invoke-virtual {v10, p1, p2}, La3/y;->b(J)V

    .line 28
    .line 29
    .line 30
    return-wide v8

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 34
    .line 35
    .line 36
    throw p1
.end method
