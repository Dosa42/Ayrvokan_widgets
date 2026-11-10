.class public final synthetic Lw1/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:I

.field public final synthetic h:Ljava/lang/Object;

.field public final synthetic i:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILandroid/widget/TextView;Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lw1/l;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lw1/l;->h:Ljava/lang/Object;

    iput p1, p0, Lw1/l;->g:I

    iput-object p2, p0, Lw1/l;->i:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/mozilla/gecko/process/GeckoProcessManager$Selector;Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;I)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lw1/l;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw1/l;->h:Ljava/lang/Object;

    iput-object p2, p0, Lw1/l;->i:Ljava/lang/Object;

    iput p3, p0, Lw1/l;->g:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lw1/l;->f:I

    .line 2
    .line 3
    iget v1, p0, Lw1/l;->g:I

    .line 4
    .line 5
    iget-object v2, p0, Lw1/l;->i:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Lw1/l;->h:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    goto :goto_1

    .line 13
    :pswitch_0
    check-cast v3, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;

    .line 14
    .line 15
    check-cast v2, Landroid/widget/TextView;

    .line 16
    .line 17
    sget-object v0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->j:Lr1/i;

    .line 18
    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    invoke-virtual {v2, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 48
    .line 49
    .line 50
    :goto_0
    return-void

    .line 51
    :goto_1
    check-cast v3, Lorg/mozilla/gecko/process/GeckoProcessManager$Selector;

    .line 52
    .line 53
    check-cast v2, Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;

    .line 54
    .line 55
    invoke-static {v3, v2, v1}, Lorg/mozilla/gecko/process/GeckoProcessManager;->f(Lorg/mozilla/gecko/process/GeckoProcessManager$Selector;Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;I)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
