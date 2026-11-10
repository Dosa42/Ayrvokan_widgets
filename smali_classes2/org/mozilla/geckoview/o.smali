.class public final synthetic Lorg/mozilla/geckoview/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/geckoview/GeckoResult$OnValueListener;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Lorg/mozilla/geckoview/WebExtensionController;


# direct methods
.method public synthetic constructor <init>(Lorg/mozilla/geckoview/WebExtensionController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/mozilla/geckoview/o;->f:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/mozilla/geckoview/o;->g:Lorg/mozilla/geckoview/WebExtensionController;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onValue(Ljava/lang/Object;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 2

    .line 1
    iget v0, p0, Lorg/mozilla/geckoview/o;->f:I

    iget-object v1, p0, Lorg/mozilla/geckoview/o;->g:Lorg/mozilla/geckoview/WebExtensionController;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Lorg/mozilla/geckoview/WebExtension;

    invoke-static {v1, p1}, Lorg/mozilla/geckoview/WebExtensionController;->d(Lorg/mozilla/geckoview/WebExtensionController;Lorg/mozilla/geckoview/WebExtension;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    return-object p1

    :pswitch_1
    check-cast p1, Lorg/mozilla/geckoview/WebExtension;

    invoke-static {v1, p1}, Lorg/mozilla/geckoview/WebExtensionController;->c(Lorg/mozilla/geckoview/WebExtensionController;Lorg/mozilla/geckoview/WebExtension;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    return-object p1

    :pswitch_2
    check-cast p1, Lorg/mozilla/geckoview/WebExtension;

    invoke-static {v1, p1}, Lorg/mozilla/geckoview/WebExtensionController;->l(Lorg/mozilla/geckoview/WebExtensionController;Lorg/mozilla/geckoview/WebExtension;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    return-object p1

    :pswitch_3
    check-cast p1, Lorg/mozilla/geckoview/WebExtension;

    invoke-static {v1, p1}, Lorg/mozilla/geckoview/WebExtensionController;->f(Lorg/mozilla/geckoview/WebExtensionController;Lorg/mozilla/geckoview/WebExtension;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    return-object p1

    :pswitch_4
    check-cast p1, Lorg/mozilla/geckoview/WebExtension;

    invoke-static {v1, p1}, Lorg/mozilla/geckoview/WebExtensionController;->n(Lorg/mozilla/geckoview/WebExtensionController;Lorg/mozilla/geckoview/WebExtension;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    return-object p1

    :pswitch_5
    check-cast p1, Lorg/mozilla/geckoview/WebExtension;

    invoke-static {v1, p1}, Lorg/mozilla/geckoview/WebExtensionController;->a(Lorg/mozilla/geckoview/WebExtensionController;Lorg/mozilla/geckoview/WebExtension;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    return-object p1

    :goto_0
    check-cast p1, Lorg/mozilla/geckoview/WebExtension;

    invoke-static {v1, p1}, Lorg/mozilla/geckoview/WebExtensionController;->m(Lorg/mozilla/geckoview/WebExtensionController;Lorg/mozilla/geckoview/WebExtension;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
