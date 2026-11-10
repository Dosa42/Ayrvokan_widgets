.class public final Lq1/b0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public b:Z

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lo1/j0;Ljava/lang/Runnable;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq1/b0;->c:Ljava/lang/Object;

    iput-object p3, p0, Lq1/b0;->d:Ljava/lang/Object;

    iput p4, p0, Lq1/b0;->a:I

    new-instance p1, Lo0/e;

    const/4 p3, 0x7

    invoke-direct {p1, p3, p0, p2}, Lo0/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lq1/b0;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lq1/b0;->b:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lq1/b0;->b:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lq1/b0;->c:Ljava/lang/Object;

    check-cast v0, Lo1/j0;

    iget-object v1, p0, Lq1/b0;->e:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    iget-object v2, p0, Lq1/b0;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v3, p0, Lq1/b0;->a:I

    int-to-long v3, v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lo1/j0;->b(Ljava/lang/Runnable;Ljava/lang/String;J)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
