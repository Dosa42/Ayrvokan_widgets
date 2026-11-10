.class public final Landroidx/lifecycle/t;
.super Landroidx/lifecycle/d;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/lifecycle/u;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/u;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/t;->a:Landroidx/lifecycle/u;

    invoke-direct {p0}, Landroidx/lifecycle/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    sget p2, Landroidx/lifecycle/x;->b:I

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string p2, "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag"

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroidx/lifecycle/x;

    .line 14
    .line 15
    iget-object p2, p0, Landroidx/lifecycle/t;->a:Landroidx/lifecycle/u;

    .line 16
    .line 17
    iget-object p2, p2, Landroidx/lifecycle/u;->h:Lh/a;

    .line 18
    .line 19
    iput-object p2, p1, Landroidx/lifecycle/x;->a:Lh/a;

    .line 20
    .line 21
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    .line 1
    iget-object p1, p0, Landroidx/lifecycle/t;->a:Landroidx/lifecycle/u;

    .line 2
    .line 3
    iget v0, p1, Landroidx/lifecycle/u;->b:I

    .line 4
    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    iput v0, p1, Landroidx/lifecycle/u;->b:I

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p1, Landroidx/lifecycle/u;->e:Landroid/os/Handler;

    .line 12
    .line 13
    iget-object p1, p1, Landroidx/lifecycle/u;->g:Landroidx/activity/a;

    .line 14
    .line 15
    const-wide/16 v1, 0x2bc

    .line 16
    .line 17
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroidx/lifecycle/t;->a:Landroidx/lifecycle/u;

    .line 2
    .line 3
    iget v0, p1, Landroidx/lifecycle/u;->a:I

    .line 4
    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    iput v0, p1, Landroidx/lifecycle/u;->a:I

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-boolean v0, p1, Landroidx/lifecycle/u;->c:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p1, Landroidx/lifecycle/u;->f:Landroidx/lifecycle/p;

    .line 16
    .line 17
    sget-object v1, Landroidx/lifecycle/h;->ON_STOP:Landroidx/lifecycle/h;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroidx/lifecycle/p;->E0(Landroidx/lifecycle/h;)V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p1, Landroidx/lifecycle/u;->d:Z

    .line 24
    .line 25
    :cond_0
    return-void
.end method
