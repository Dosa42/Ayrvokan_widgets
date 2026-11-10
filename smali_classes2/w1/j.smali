.class public final synthetic Lw1/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;

.field public final synthetic b:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw1/j;->a:Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;

    iput-object p2, p0, Lw1/j;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    sget-object p1, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->j:Lr1/i;

    .line 2
    .line 3
    iget-object p1, p0, Lw1/j;->a:Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iget-wide v2, p1, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->i:J

    .line 13
    .line 14
    sub-long v2, v0, v2

    .line 15
    .line 16
    const-wide/16 v4, 0x15e

    .line 17
    .line 18
    cmp-long v2, v2, v4

    .line 19
    .line 20
    if-ltz v2, :cond_0

    .line 21
    .line 22
    iput-wide v0, p1, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->i:J

    .line 23
    .line 24
    iget-object p1, p0, Lw1/j;->b:Ljava/lang/Runnable;

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method
