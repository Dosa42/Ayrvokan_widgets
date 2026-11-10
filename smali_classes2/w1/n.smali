.class public final synthetic Lw1/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:I

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    .line 1
    iput p3, p0, Lw1/n;->f:I

    .line 2
    .line 3
    iput-object p1, p0, Lw1/n;->h:Ljava/lang/Object;

    .line 4
    .line 5
    iput p2, p0, Lw1/n;->g:I

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
    iget v0, p0, Lw1/n;->f:I

    .line 2
    .line 3
    iget v1, p0, Lw1/n;->g:I

    .line 4
    .line 5
    iget-object v2, p0, Lw1/n;->h:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :pswitch_0
    check-cast v2, Lw1/s;

    .line 12
    .line 13
    sget-object v0, Lcom/nomone/vr_desktop/PhantomProcessKillingDisablingGuide/PhantomProcessKillingDisablingGuideActivity;->j:Lr1/i;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    check-cast v2, Lw1/m;

    .line 17
    .line 18
    invoke-virtual {v2, v1, v0}, Lw1/m;->a(IZ)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :goto_0
    check-cast v2, Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentEventDispatcher;

    .line 23
    .line 24
    invoke-static {v1, v2}, Lorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentEventDispatcher;->a(ILorg/mozilla/gecko/media/GeckoHlsPlayer$ComponentEventDispatcher;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
