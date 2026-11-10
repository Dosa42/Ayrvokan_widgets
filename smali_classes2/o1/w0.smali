.class public final Lo1/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final f:Ljava/lang/Runnable;

.field public final synthetic g:Lo1/x0;


# direct methods
.method public constructor <init>(Lo1/x0;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo1/w0;->g:Lo1/x0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lo1/w0;->f:Ljava/lang/Runnable;

    monitor-enter p1

    :try_start_0
    iget-object p2, p1, Lo1/x0;->f:Ljava/util/ArrayList;

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lo1/w0;->g:Lo1/x0;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo1/w0;->g:Lo1/x0;

    iget-object v1, v1, Lo1/x0;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lo1/w0;->f:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
