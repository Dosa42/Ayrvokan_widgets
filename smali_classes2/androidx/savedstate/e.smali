.class public final Landroidx/savedstate/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/savedstate/f;

.field public final b:Landroidx/savedstate/d;


# direct methods
.method public constructor <init>(Landroidx/savedstate/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/savedstate/e;->a:Landroidx/savedstate/f;

    new-instance p1, Landroidx/savedstate/d;

    invoke-direct {p1}, Landroidx/savedstate/d;-><init>()V

    iput-object p1, p0, Landroidx/savedstate/e;->b:Landroidx/savedstate/d;

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/savedstate/e;->a:Landroidx/savedstate/f;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/lifecycle/n;->c()Landroidx/lifecycle/p;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, v1, Landroidx/lifecycle/p;->x:Landroidx/lifecycle/i;

    .line 8
    .line 9
    sget-object v3, Landroidx/lifecycle/i;->b:Landroidx/lifecycle/i;

    .line 10
    .line 11
    if-ne v2, v3, :cond_2

    .line 12
    .line 13
    new-instance v2, Landroidx/savedstate/Recreator;

    .line 14
    .line 15
    invoke-direct {v2, v0}, Landroidx/savedstate/Recreator;-><init>(Landroidx/savedstate/f;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroidx/lifecycle/p;->a(Landroidx/lifecycle/m;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Landroidx/savedstate/e;->b:Landroidx/savedstate/d;

    .line 22
    .line 23
    iget-boolean v2, v0, Landroidx/savedstate/d;->c:Z

    .line 24
    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    const-string v2, "androidx.lifecycle.BundlableSavedStateRegistry.key"

    .line 30
    .line 31
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, v0, Landroidx/savedstate/d;->b:Landroid/os/Bundle;

    .line 36
    .line 37
    :cond_0
    new-instance p1, Landroidx/savedstate/SavedStateRegistry$1;

    .line 38
    .line 39
    invoke-direct {p1, v0}, Landroidx/savedstate/SavedStateRegistry$1;-><init>(Landroidx/savedstate/d;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, p1}, Landroidx/lifecycle/p;->a(Landroidx/lifecycle/m;)V

    .line 43
    .line 44
    .line 45
    const/4 p1, 0x1

    .line 46
    iput-boolean p1, v0, Landroidx/savedstate/d;->c:Z

    .line 47
    .line 48
    return-void

    .line 49
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    const-string v0, "SavedStateRegistry was already restored."

    .line 52
    .line 53
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p1

    .line 57
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 58
    .line 59
    const-string v0, "Restarter must be created only during owner\'s initialization stage"

    .line 60
    .line 61
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p1
.end method
