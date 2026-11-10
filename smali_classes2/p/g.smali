.class public final Lp/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lp/g;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lp/g;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 1
    iget v0, p0, Lp/g;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    new-instance v0, Lp/l;

    .line 8
    .line 9
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p2}, Lp/l;-><init>(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lp/g;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p2, Lp/f;

    .line 18
    .line 19
    invoke-interface {p2, p1, v0}, Lp/f;->w(Landroid/view/View;Lp/l;)Lp/l;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object p1, p1, Lp/l;->a:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p1, Landroid/view/WindowInsets;

    .line 26
    .line 27
    return-object p1

    .line 28
    :goto_0
    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout;

    .line 29
    .line 30
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-lez v0, :cond_0

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    const/4 v0, 0x0

    .line 39
    :goto_1
    invoke-virtual {p1, p2, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->setChildInsets(Ljava/lang/Object;Z)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    return-object p1

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
