.class public final Lw1/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw1/r;


# instance fields
.field public f:Z

.field public g:Z

.field public final synthetic h:Landroidx/fragment/app/h;

.field public final synthetic i:Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;


# direct methods
.method public constructor <init>(Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;Landroidx/fragment/app/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lw1/p;->i:Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;

    iput-object p2, p0, Lw1/p;->h:Landroidx/fragment/app/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lw1/p;->g:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "sdf"

    invoke-static {v0, p1}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "connected to localhost"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\tdevice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lw1/p;->f:Z

    return-void
.end method

.method public final b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lw1/p;->i:Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;

    iget-object v0, v0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->c:Landroid/widget/ViewFlipper;

    new-instance v1, Lo0/e;

    const/4 v2, 0x6

    iget-object v3, p0, Lw1/p;->h:Landroidx/fragment/app/h;

    invoke-direct {v1, v2, p0, v3}, Lo0/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
