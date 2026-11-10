.class public final Landroidx/lifecycle/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerIn(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Landroidx/lifecycle/w;

    invoke-direct {v0}, Landroidx/lifecycle/w;-><init>()V

    invoke-static {p0, v0}, Landroidx/lifecycle/v;->c(Landroid/app/Activity;Landroidx/lifecycle/w;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPostCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    sget-object p2, Landroidx/lifecycle/h;->ON_CREATE:Landroidx/lifecycle/h;

    invoke-static {p1, p2}, Landroidx/lifecycle/x;->a(Landroid/app/Activity;Landroidx/lifecycle/h;)V

    return-void
.end method

.method public onActivityPostResumed(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Landroidx/lifecycle/h;->ON_RESUME:Landroidx/lifecycle/h;

    invoke-static {p1, v0}, Landroidx/lifecycle/x;->a(Landroid/app/Activity;Landroidx/lifecycle/h;)V

    return-void
.end method

.method public onActivityPostStarted(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Landroidx/lifecycle/h;->ON_START:Landroidx/lifecycle/h;

    invoke-static {p1, v0}, Landroidx/lifecycle/x;->a(Landroid/app/Activity;Landroidx/lifecycle/h;)V

    return-void
.end method

.method public onActivityPreDestroyed(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Landroidx/lifecycle/h;->ON_DESTROY:Landroidx/lifecycle/h;

    invoke-static {p1, v0}, Landroidx/lifecycle/x;->a(Landroid/app/Activity;Landroidx/lifecycle/h;)V

    return-void
.end method

.method public onActivityPrePaused(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Landroidx/lifecycle/h;->ON_PAUSE:Landroidx/lifecycle/h;

    invoke-static {p1, v0}, Landroidx/lifecycle/x;->a(Landroid/app/Activity;Landroidx/lifecycle/h;)V

    return-void
.end method

.method public onActivityPreStopped(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Landroidx/lifecycle/h;->ON_STOP:Landroidx/lifecycle/h;

    invoke-static {p1, v0}, Landroidx/lifecycle/x;->a(Landroid/app/Activity;Landroidx/lifecycle/h;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
