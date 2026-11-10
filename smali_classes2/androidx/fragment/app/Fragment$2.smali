.class Landroidx/fragment/app/Fragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/l;


# virtual methods
.method public final a(Landroidx/lifecycle/n;Landroidx/lifecycle/h;)V
    .locals 0

    .line 1
    sget-object p1, Landroidx/lifecycle/h;->ON_STOP:Landroidx/lifecycle/h;

    if-eq p2, p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method
