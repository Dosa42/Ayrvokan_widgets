.class public final synthetic Lw1/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw1/s;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lw1/m;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lw1/m;->b:Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(IZ)V
    .locals 3

    .line 1
    iget v0, p0, Lw1/m;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lw1/m;->b:Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    sget-object v0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->j:Lr1/i;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    const-string p2, "ppkt connection port"

    .line 17
    .line 18
    invoke-static {p1, p2}, Lo1/y;->g(ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->g()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void

    .line 25
    :goto_0
    iput-boolean p2, v1, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->a:Z

    .line 26
    .line 27
    if-eqz p2, :cond_1

    .line 28
    .line 29
    sget-object p2, Lo1/y;->a:Landroid/content/SharedPreferences;

    .line 30
    .line 31
    const-string v0, "ppkt pairing code"

    .line 32
    .line 33
    const-string v2, "12345"

    .line 34
    .line 35
    invoke-interface {p2, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    const-string v0, "$BIN/adb pair localhost:"

    .line 40
    .line 41
    invoke-static {v0, p1}, La1/b;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    new-instance v0, Lw1/o;

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    invoke-direct {v0, v1, v2}, Lw1/o;-><init>(Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p1, p2, v0}, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->k(Ljava/lang/String;Ljava/lang/String;Lw1/r;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    return-void

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
