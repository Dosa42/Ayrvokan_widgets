.class public final synthetic Lorg/mozilla/geckoview/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/geckoview/GeckoResult$Consumer;
.implements Lorg/mozilla/geckoview/GeckoResult$OnValueListener;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/mozilla/geckoview/g;->f:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/mozilla/geckoview/g;->g:Ljava/lang/Object;

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
    iget v0, p0, Lorg/mozilla/geckoview/g;->f:I

    iget-object v1, p0, Lorg/mozilla/geckoview/g;->g:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v1, Lorg/mozilla/geckoview/WebExtensionController$Message;

    check-cast p1, Lorg/mozilla/geckoview/AllowOrDeny;

    invoke-static {v1, p1}, Lorg/mozilla/geckoview/WebExtensionController;->i(Lorg/mozilla/geckoview/WebExtensionController$Message;Lorg/mozilla/geckoview/AllowOrDeny;)V

    return-void

    :pswitch_1
    check-cast v1, Lorg/mozilla/geckoview/GeckoResult$AllOfResult;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v1, p1}, Lorg/mozilla/geckoview/GeckoResult$AllOfResult;->g(Lorg/mozilla/geckoview/GeckoResult$AllOfResult;Ljava/lang/Throwable;)V

    return-void

    :goto_0
    check-cast v1, Lorg/mozilla/geckoview/WebExtension$Action;

    check-cast p1, Lorg/mozilla/geckoview/GeckoSession;

    invoke-static {v1, p1}, Lorg/mozilla/geckoview/WebExtension$Action;->a(Lorg/mozilla/geckoview/WebExtension$Action;Lorg/mozilla/geckoview/GeckoSession;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onValue(Ljava/lang/Object;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 2

    .line 1
    iget v0, p0, Lorg/mozilla/geckoview/g;->f:I

    iget-object v1, p0, Lorg/mozilla/geckoview/g;->g:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v1, Lorg/mozilla/geckoview/WebExtensionController$ExtensionStore;

    check-cast p1, Lorg/mozilla/geckoview/WebExtension;

    invoke-static {v1, p1}, Lorg/mozilla/geckoview/WebExtensionController$ExtensionStore;->a(Lorg/mozilla/geckoview/WebExtensionController$ExtensionStore;Lorg/mozilla/geckoview/WebExtension;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    return-object p1

    :goto_0
    check-cast v1, Lorg/mozilla/geckoview/WebExtensionController$WebExtensionInstallResult$InstallCanceller;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v1, p1}, Lorg/mozilla/geckoview/WebExtensionController$WebExtensionInstallResult$InstallCanceller;->a(Lorg/mozilla/geckoview/WebExtensionController$WebExtensionInstallResult$InstallCanceller;Ljava/lang/Boolean;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
