.class final Landroidx/lifecycle/SavedStateHandleController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/l;


# instance fields
.field public a:Z


# virtual methods
.method public final a(Landroidx/lifecycle/n;Landroidx/lifecycle/h;)V
    .locals 1

    .line 1
    sget-object v0, Landroidx/lifecycle/h;->ON_DESTROY:Landroidx/lifecycle/h;

    if-ne p2, v0, :cond_0

    const/4 p2, 0x0

    iput-boolean p2, p0, Landroidx/lifecycle/SavedStateHandleController;->a:Z

    invoke-interface {p1}, Landroidx/lifecycle/n;->c()Landroidx/lifecycle/p;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/p;->d0(Landroidx/lifecycle/m;)V

    :cond_0
    return-void
.end method
