.class public final Li1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li1/e;


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Ljava/lang/Object;

.field public final c:Li1/a;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Li1/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Li1/d;->b:Ljava/lang/Object;

    iput-object p1, p0, Li1/d;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Li1/d;->c:Li1/a;

    return-void
.end method
