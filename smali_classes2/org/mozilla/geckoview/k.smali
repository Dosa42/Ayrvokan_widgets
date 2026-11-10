.class public final synthetic Lorg/mozilla/geckoview/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/geckoview/GeckoResult$Consumer;
.implements Lorg/mozilla/geckoview/GeckoResult$OnValueListener;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Lorg/mozilla/geckoview/GeckoResult;


# direct methods
.method public synthetic constructor <init>(Lorg/mozilla/geckoview/GeckoResult;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/mozilla/geckoview/k;->f:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/mozilla/geckoview/k;->g:Lorg/mozilla/geckoview/GeckoResult;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lorg/mozilla/geckoview/k;->f:I

    iget-object v1, p0, Lorg/mozilla/geckoview/k;->g:Lorg/mozilla/geckoview/GeckoResult;

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    check-cast p1, Lorg/mozilla/geckoview/AllowOrDeny;

    invoke-static {v1, p1}, Lorg/mozilla/geckoview/GeckoSession;->c(Lorg/mozilla/geckoview/GeckoResult;Lorg/mozilla/geckoview/AllowOrDeny;)V

    return-void

    :pswitch_2
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v1, p1}, Lorg/mozilla/geckoview/GeckoSession$Window$1;->a(Lorg/mozilla/geckoview/GeckoResult;Ljava/lang/Throwable;)V

    return-void

    :pswitch_3
    check-cast p1, Lorg/mozilla/geckoview/AllowOrDeny;

    invoke-static {v1, p1}, Lorg/mozilla/geckoview/GeckoSession$Window$1;->b(Lorg/mozilla/geckoview/GeckoResult;Lorg/mozilla/geckoview/AllowOrDeny;)V

    return-void

    :goto_0
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v1, p1}, Lorg/mozilla/geckoview/GeckoSession;->a(Lorg/mozilla/geckoview/GeckoResult;Ljava/lang/Throwable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onValue(Ljava/lang/Object;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/geckoview/k;->g:Lorg/mozilla/geckoview/GeckoResult;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lorg/mozilla/geckoview/GeckoResult;->c(Lorg/mozilla/geckoview/GeckoResult;Ljava/lang/Boolean;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    return-object p1
.end method
