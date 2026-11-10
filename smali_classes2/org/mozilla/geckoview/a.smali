.class public final synthetic Lorg/mozilla/geckoview/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/geckoview/GeckoResult$Consumer;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Lorg/mozilla/gecko/util/EventCallback;


# direct methods
.method public synthetic constructor <init>(Lorg/mozilla/gecko/util/EventCallback;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/mozilla/geckoview/a;->f:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/mozilla/geckoview/a;->g:Lorg/mozilla/gecko/util/EventCallback;

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
    iget v0, p0, Lorg/mozilla/geckoview/a;->f:I

    iget-object v1, p0, Lorg/mozilla/geckoview/a;->g:Lorg/mozilla/gecko/util/EventCallback;

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-static {v1, p1}, Lorg/mozilla/geckoview/WebExtensionController;->o(Lorg/mozilla/gecko/util/EventCallback;Ljava/lang/Object;)V

    return-void

    :pswitch_1
    check-cast p1, Lorg/mozilla/geckoview/AllowOrDeny;

    invoke-static {v1, p1}, Lorg/mozilla/geckoview/WebExtensionController;->j(Lorg/mozilla/gecko/util/EventCallback;Lorg/mozilla/geckoview/AllowOrDeny;)V

    return-void

    :pswitch_2
    check-cast p1, Lorg/mozilla/geckoview/AllowOrDeny;

    invoke-static {v1, p1}, Lorg/mozilla/geckoview/WebExtensionController;->b(Lorg/mozilla/gecko/util/EventCallback;Lorg/mozilla/geckoview/AllowOrDeny;)V

    return-void

    :pswitch_3
    check-cast p1, Lorg/mozilla/geckoview/AllowOrDeny;

    invoke-static {v1, p1}, Lorg/mozilla/geckoview/WebExtensionController;->g(Lorg/mozilla/gecko/util/EventCallback;Lorg/mozilla/geckoview/AllowOrDeny;)V

    return-void

    :pswitch_4
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v1, p1}, Lorg/mozilla/geckoview/GeckoSession;->d(Lorg/mozilla/gecko/util/EventCallback;Ljava/lang/Throwable;)V

    return-void

    :pswitch_5
    check-cast p1, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$PromptResponse;

    invoke-static {v1, p1}, Lorg/mozilla/geckoview/GeckoSession;->g(Lorg/mozilla/gecko/util/EventCallback;Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$PromptResponse;)V

    return-void

    :pswitch_6
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v1, p1}, Lorg/mozilla/geckoview/WebPushController$EventListener;->d(Lorg/mozilla/gecko/util/EventCallback;Ljava/lang/Throwable;)V

    return-void

    :pswitch_7
    check-cast p1, Lorg/mozilla/geckoview/WebPushSubscription;

    invoke-static {v1, p1}, Lorg/mozilla/geckoview/WebPushController$EventListener;->a(Lorg/mozilla/gecko/util/EventCallback;Lorg/mozilla/geckoview/WebPushSubscription;)V

    return-void

    :pswitch_8
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v1, p1}, Lorg/mozilla/geckoview/WebPushController$EventListener;->f(Lorg/mozilla/gecko/util/EventCallback;Ljava/lang/Throwable;)V

    return-void

    :pswitch_9
    check-cast p1, Ljava/lang/Void;

    invoke-static {v1, p1}, Lorg/mozilla/geckoview/WebPushController$EventListener;->b(Lorg/mozilla/gecko/util/EventCallback;Ljava/lang/Void;)V

    return-void

    :pswitch_a
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v1, p1}, Lorg/mozilla/geckoview/WebPushController$EventListener;->c(Lorg/mozilla/gecko/util/EventCallback;Ljava/lang/Throwable;)V

    return-void

    :pswitch_b
    check-cast p1, Lorg/mozilla/geckoview/WebPushSubscription;

    invoke-static {v1, p1}, Lorg/mozilla/geckoview/WebPushController$EventListener;->e(Lorg/mozilla/gecko/util/EventCallback;Lorg/mozilla/geckoview/WebPushSubscription;)V

    return-void

    :pswitch_c
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v1, p1}, Lorg/mozilla/geckoview/GeckoSession$3;->a(Lorg/mozilla/gecko/util/EventCallback;Ljava/lang/Throwable;)V

    return-void

    :pswitch_d
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v1, p1}, Lorg/mozilla/geckoview/GeckoSession$3;->f(Lorg/mozilla/gecko/util/EventCallback;Ljava/lang/Throwable;)V

    return-void

    :pswitch_e
    check-cast p1, Ljava/lang/String;

    invoke-static {v1, p1}, Lorg/mozilla/geckoview/GeckoSession$3;->b(Lorg/mozilla/gecko/util/EventCallback;Ljava/lang/String;)V

    return-void

    :pswitch_f
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v1, p1}, Lorg/mozilla/geckoview/GeckoSession$3;->e(Lorg/mozilla/gecko/util/EventCallback;Ljava/lang/Throwable;)V

    return-void

    :pswitch_10
    check-cast p1, Lorg/mozilla/geckoview/AllowOrDeny;

    invoke-static {v1, p1}, Lorg/mozilla/geckoview/GeckoSession$3;->d(Lorg/mozilla/gecko/util/EventCallback;Lorg/mozilla/geckoview/AllowOrDeny;)V

    return-void

    :pswitch_11
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v1, p1}, Lorg/mozilla/geckoview/GeckoSession$1;->d(Lorg/mozilla/gecko/util/EventCallback;Ljava/lang/Throwable;)V

    return-void

    :pswitch_12
    check-cast p1, [Z

    invoke-static {v1, p1}, Lorg/mozilla/geckoview/GeckoSession$1;->a(Lorg/mozilla/gecko/util/EventCallback;[Z)V

    return-void

    :pswitch_13
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v1, p1}, Lorg/mozilla/geckoview/GeckoSession$1;->b(Lorg/mozilla/gecko/util/EventCallback;Ljava/lang/Throwable;)V

    return-void

    :pswitch_14
    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v1, p1}, Lorg/mozilla/geckoview/GeckoSession$1;->c(Lorg/mozilla/gecko/util/EventCallback;Ljava/lang/Boolean;)V

    return-void

    :pswitch_15
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v1, p1}, Lorg/mozilla/geckoview/Autocomplete$LoginStorageProxy;->a(Lorg/mozilla/gecko/util/EventCallback;Ljava/lang/Throwable;)V

    return-void

    :pswitch_16
    check-cast p1, [Lorg/mozilla/geckoview/Autocomplete$LoginEntry;

    invoke-static {v1, p1}, Lorg/mozilla/geckoview/Autocomplete$LoginStorageProxy;->b(Lorg/mozilla/gecko/util/EventCallback;[Lorg/mozilla/geckoview/Autocomplete$LoginEntry;)V

    return-void

    :goto_0
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v1, p1}, Lorg/mozilla/geckoview/WebExtensionController;->p(Lorg/mozilla/gecko/util/EventCallback;Ljava/lang/Throwable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
