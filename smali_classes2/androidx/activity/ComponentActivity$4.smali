.class Landroidx/activity/ComponentActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/l;


# instance fields
.field public final synthetic a:Landroidx/activity/d;


# direct methods
.method public constructor <init>(Landroidx/activity/d;)V
    .locals 0

    iput-object p1, p0, Landroidx/activity/ComponentActivity$4;->a:Landroidx/activity/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/n;Landroidx/lifecycle/h;)V
    .locals 1

    .line 1
    sget-object p1, Landroidx/lifecycle/h;->ON_DESTROY:Landroidx/lifecycle/h;

    .line 2
    .line 3
    if-ne p2, p1, :cond_1

    .line 4
    .line 5
    iget-object p1, p0, Landroidx/activity/ComponentActivity$4;->a:Landroidx/activity/d;

    .line 6
    .line 7
    iget-object p2, p1, Landroidx/activity/d;->b:Lb/a;

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    if-nez p2, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/activity/d;->b()Landroidx/lifecycle/a0;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object p2, p1, Landroidx/lifecycle/a0;->a:Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Landroidx/lifecycle/z;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Landroidx/lifecycle/z;->a()V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    iget-object p1, p1, Landroidx/lifecycle/a0;->a:Ljava/util/HashMap;

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void
.end method
