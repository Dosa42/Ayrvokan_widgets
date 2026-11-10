.class public final Landroidx/activity/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Runnable;

.field public final b:Ljava/util/ArrayDeque;


# direct methods
.method public constructor <init>(Landroidx/activity/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/activity/e;->b:Ljava/util/ArrayDeque;

    iput-object p1, p0, Landroidx/activity/e;->a:Ljava/lang/Runnable;

    return-void
.end method
