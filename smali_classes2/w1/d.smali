.class public final synthetic Lw1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Z

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ZI)V
    .locals 0

    .line 1
    iput p3, p0, Lw1/d;->f:I

    .line 2
    .line 3
    iput-object p1, p0, Lw1/d;->h:Ljava/lang/Object;

    .line 4
    .line 5
    iput-boolean p2, p0, Lw1/d;->g:Z

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lw1/d;->f:I

    .line 2
    .line 3
    iget-boolean v1, p0, Lw1/d;->g:Z

    .line 4
    .line 5
    iget-object v2, p0, Lw1/d;->h:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto :goto_1

    .line 11
    :pswitch_0
    check-cast v2, Lc2/e;

    .line 12
    .line 13
    iput-boolean v1, v2, Lc2/e;->u:Z

    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_1
    check-cast v2, Lw1/r;

    .line 17
    .line 18
    invoke-interface {v2}, Lw1/r;->b()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_2
    check-cast v2, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;

    .line 23
    .line 24
    sget-object v0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->j:Lr1/i;

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    const v0, 0x7f060090

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const v0, 0x7f06008d

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-virtual {v2, v0}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->f(I)Z

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :goto_1
    check-cast v2, Lorg/mozilla/geckoview/GeckoSession;

    .line 43
    .line 44
    invoke-static {v2, v1}, Lorg/mozilla/geckoview/GeckoSession;->e(Lorg/mozilla/geckoview/GeckoSession;Z)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
