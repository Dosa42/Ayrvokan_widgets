.class public final Lw1/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/c1;


# instance fields
.field public final synthetic f:Lw1/r;

.field public final synthetic g:Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;


# direct methods
.method public constructor <init>(Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;Lw1/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lw1/q;->g:Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;

    iput-object p2, p0, Lw1/q;->f:Lw1/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lw1/q;->f:Lw1/r;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lw1/r;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    sput-object p1, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->m:Ljava/lang/String;

    iget-object p1, p0, Lw1/q;->f:Lw1/r;

    if-eqz p1, :cond_1

    new-instance v0, Lw1/d;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lw1/d;-><init>(Ljava/lang/Object;ZI)V

    iget-object p1, p0, Lw1/q;->g:Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
