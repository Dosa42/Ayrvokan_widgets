.class public final synthetic Lorg/mozilla/geckoview/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/geckoview/GeckoResult$Consumer;
.implements Lorg/mozilla/geckoview/GeckoResult$OnValueListener;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/mozilla/geckoview/j;->f:I

    .line 2
    .line 3
    iput-object p2, p0, Lorg/mozilla/geckoview/j;->g:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lorg/mozilla/geckoview/j;->h:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lorg/mozilla/geckoview/j;->f:I

    iget-object v1, p0, Lorg/mozilla/geckoview/j;->h:Ljava/lang/Object;

    iget-object v2, p0, Lorg/mozilla/geckoview/j;->g:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v2, Lorg/mozilla/geckoview/GeckoResult;

    check-cast v1, Ljava/lang/String;

    check-cast p1, Lorg/mozilla/geckoview/GeckoSession;

    invoke-static {v2, v1, p1}, Lorg/mozilla/geckoview/GeckoRuntime;->e(Lorg/mozilla/geckoview/GeckoResult;Ljava/lang/String;Lorg/mozilla/geckoview/GeckoSession;)V

    return-void

    :pswitch_1
    check-cast v2, Lorg/mozilla/geckoview/WebExtensionController;

    check-cast v1, Lorg/mozilla/geckoview/WebExtensionController$Message;

    check-cast p1, Lorg/mozilla/geckoview/GeckoSession;

    invoke-static {v2, v1, p1}, Lorg/mozilla/geckoview/WebExtensionController;->h(Lorg/mozilla/geckoview/WebExtensionController;Lorg/mozilla/geckoview/WebExtensionController$Message;Lorg/mozilla/geckoview/GeckoSession;)V

    return-void

    :pswitch_2
    check-cast v2, Lorg/mozilla/geckoview/GeckoSession$3;

    check-cast v1, Lorg/mozilla/gecko/util/EventCallback;

    check-cast p1, Lorg/mozilla/geckoview/GeckoSession;

    invoke-static {v2, v1, p1}, Lorg/mozilla/geckoview/GeckoSession$3;->c(Lorg/mozilla/geckoview/GeckoSession$3;Lorg/mozilla/gecko/util/EventCallback;Lorg/mozilla/geckoview/GeckoSession;)V

    return-void

    :goto_0
    check-cast v2, Ljava/lang/String;

    check-cast v1, [B

    check-cast p1, Ljava/lang/Void;

    invoke-static {v2, v1, p1}, Lorg/mozilla/geckoview/WebPushController;->b(Ljava/lang/String;[BLjava/lang/Void;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onValue(Ljava/lang/Object;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 3

    .line 1
    iget v0, p0, Lorg/mozilla/geckoview/j;->f:I

    iget-object v1, p0, Lorg/mozilla/geckoview/j;->h:Ljava/lang/Object;

    iget-object v2, p0, Lorg/mozilla/geckoview/j;->g:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v2, Lorg/mozilla/geckoview/GeckoRuntime;

    check-cast v1, Lorg/mozilla/geckoview/WebExtension;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v2, v1, p1}, Lorg/mozilla/geckoview/GeckoRuntime;->b(Lorg/mozilla/geckoview/GeckoRuntime;Lorg/mozilla/geckoview/WebExtension;Ljava/lang/Void;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    return-object p1

    :goto_0
    check-cast v2, Lorg/mozilla/geckoview/WebExtensionController;

    check-cast v1, Lorg/mozilla/geckoview/WebExtension;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v2, v1, p1}, Lorg/mozilla/geckoview/WebExtensionController;->e(Lorg/mozilla/geckoview/WebExtensionController;Lorg/mozilla/geckoview/WebExtension;Ljava/lang/Void;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
