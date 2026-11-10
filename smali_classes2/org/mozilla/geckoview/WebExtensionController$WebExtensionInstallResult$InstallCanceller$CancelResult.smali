.class Lorg/mozilla/geckoview/WebExtensionController$WebExtensionInstallResult$InstallCanceller$CancelResult;
.super Lorg/mozilla/geckoview/GeckoResult;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/gecko/util/EventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/WebExtensionController$WebExtensionInstallResult$InstallCanceller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CancelResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/mozilla/geckoview/GeckoResult<",
        "Ljava/lang/Boolean;",
        ">;",
        "Lorg/mozilla/gecko/util/EventCallback;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/geckoview/GeckoResult;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/mozilla/geckoview/WebExtensionController$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/mozilla/geckoview/WebExtensionController$WebExtensionInstallResult$InstallCanceller$CancelResult;-><init>()V

    return-void
.end method


# virtual methods
.method public sendError(Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Ljava/lang/Exception;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/mozilla/geckoview/GeckoResult;->completeExceptionally(Ljava/lang/Throwable;)V

    return-void
.end method

.method public sendSuccess(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lorg/mozilla/gecko/util/GeckoBundle;

    const-string v0, "cancelled"

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/geckoview/GeckoResult;->complete(Ljava/lang/Object;)V

    return-void
.end method
