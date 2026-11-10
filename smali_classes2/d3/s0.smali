.class public final Ld3/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f:Ld3/o0;

.field public final synthetic g:Ljava/util/concurrent/Callable;

.field public final synthetic h:Ld3/o0;

.field public final synthetic i:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Ld3/o0;Ljava/util/concurrent/Callable;Ld3/o0;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld3/s0;->f:Ld3/o0;

    iput-object p2, p0, Ld3/s0;->g:Ljava/util/concurrent/Callable;

    iput-object p3, p0, Ld3/s0;->h:Ld3/o0;

    iput-object p4, p0, Ld3/s0;->i:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Ld3/s0;->f:Ld3/o0;

    iget-object v1, p0, Ld3/s0;->g:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Ld3/o0;->g:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Ld3/s0;->h:Ld3/o0;

    iput-object v0, v1, Ld3/o0;->g:Ljava/lang/Object;

    :goto_0
    iget-object v0, p0, Ld3/s0;->i:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
