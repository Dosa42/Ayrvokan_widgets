.class Landroidx/savedstate/SavedStateRegistry$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/l;


# instance fields
.field public final synthetic a:Landroidx/savedstate/d;


# direct methods
.method public constructor <init>(Landroidx/savedstate/d;)V
    .locals 0

    iput-object p1, p0, Landroidx/savedstate/SavedStateRegistry$1;->a:Landroidx/savedstate/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/n;Landroidx/lifecycle/h;)V
    .locals 0

    .line 1
    sget-object p1, Landroidx/lifecycle/h;->ON_START:Landroidx/lifecycle/h;

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    sget-object p1, Landroidx/lifecycle/h;->ON_STOP:Landroidx/lifecycle/h;

    if-ne p2, p1, :cond_1

    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Landroidx/savedstate/SavedStateRegistry$1;->a:Landroidx/savedstate/d;

    iput-boolean p1, p2, Landroidx/savedstate/d;->e:Z

    :cond_1
    return-void
.end method
