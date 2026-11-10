.class public final synthetic Lw1/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr1/w;
.implements Lorg/mozilla/geckoview/GeckoResult$Consumer;


# instance fields
.field public final synthetic f:Z

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;

.field public final synthetic i:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/nomone/vr_desktop/LaunchActivity;Lq1/f;Lr1/i;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw1/k;->g:Ljava/lang/Object;

    iput-object p2, p0, Lw1/k;->h:Ljava/lang/Object;

    iput-object p3, p0, Lw1/k;->i:Ljava/lang/Object;

    iput-boolean p4, p0, Lw1/k;->f:Z

    return-void
.end method

.method public synthetic constructor <init>(ZLandroid/os/RemoteException;Lorg/mozilla/gecko/process/GeckoProcessType;Lorg/mozilla/geckoview/GeckoResult;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lw1/k;->f:Z

    iput-object p2, p0, Lw1/k;->g:Ljava/lang/Object;

    iput-object p3, p0, Lw1/k;->h:Ljava/lang/Object;

    iput-object p4, p0, Lw1/k;->i:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lw1/k;->g:Ljava/lang/Object;

    check-cast v0, Landroid/os/RemoteException;

    iget-object v1, p0, Lw1/k;->h:Ljava/lang/Object;

    check-cast v1, Lorg/mozilla/gecko/process/GeckoProcessType;

    iget-object v2, p0, Lw1/k;->i:Ljava/lang/Object;

    check-cast v2, Lorg/mozilla/geckoview/GeckoResult;

    check-cast p1, Ljava/lang/Throwable;

    iget-boolean v3, p0, Lw1/k;->f:Z

    invoke-static {v3, v0, v1, v2, p1}, Lorg/mozilla/gecko/process/GeckoProcessManager;->b(ZLandroid/os/RemoteException;Lorg/mozilla/gecko/process/GeckoProcessType;Lorg/mozilla/geckoview/GeckoResult;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lw1/k;->g:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/content/Context;

    .line 4
    .line 5
    iget-object v1, p0, Lw1/k;->h:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lq1/f;

    .line 8
    .line 9
    iget-object v2, p0, Lw1/k;->i:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Lr1/i;

    .line 12
    .line 13
    sget-object v3, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->j:Lr1/i;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const v4, 0x7f0b0052

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    const-string p1, "<pre><br>Initiated from dialog.<br></pre>"

    .line 33
    .line 34
    invoke-static {v1, p1}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->n(Lq1/f;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const v1, 0x7f0b0051

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_1

    .line 54
    .line 55
    const-string p1, "Should show phantom process killing dialog"

    .line 56
    .line 57
    const/4 v0, 0x0

    .line 58
    invoke-static {p1, v0}, Lo1/y;->e(Ljava/lang/String;Z)V

    .line 59
    .line 60
    .line 61
    :cond_1
    if-eqz v2, :cond_2

    .line 62
    .line 63
    invoke-virtual {v2}, Lr1/i;->a()V

    .line 64
    .line 65
    .line 66
    :cond_2
    :goto_0
    return-void
.end method
