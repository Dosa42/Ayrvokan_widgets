.class Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/l;


# virtual methods
.method public final a(Landroidx/lifecycle/n;Landroidx/lifecycle/h;)V
    .locals 1

    .line 1
    sget-object p1, Landroidx/lifecycle/h;->ON_START:Landroidx/lifecycle/h;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eq p2, p1, :cond_2

    .line 5
    .line 6
    sget-object p1, Landroidx/lifecycle/h;->ON_STOP:Landroidx/lifecycle/h;

    .line 7
    .line 8
    if-ne p2, p1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget-object p1, Landroidx/lifecycle/h;->ON_DESTROY:Landroidx/lifecycle/h;

    .line 12
    .line 13
    if-eq p2, p1, :cond_1

    .line 14
    .line 15
    :goto_0
    return-void

    .line 16
    :cond_1
    throw v0

    .line 17
    :cond_2
    throw v0
.end method
