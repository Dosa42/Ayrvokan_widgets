.class public final Ld/c;
.super Lc1/b;
.source "SourceFile"


# instance fields
.field public final C:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lc1/b;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ld/c;->C:Ljava/lang/Object;

    new-instance v0, Ld/b;

    invoke-direct {v0, p0}, Ld/b;-><init>(Ld/c;)V

    const/4 v1, 0x4

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    return-void
.end method
