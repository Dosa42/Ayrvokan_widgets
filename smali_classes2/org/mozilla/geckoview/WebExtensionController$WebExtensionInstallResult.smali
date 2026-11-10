.class Lorg/mozilla/geckoview/WebExtensionController$WebExtensionInstallResult;
.super Lorg/mozilla/geckoview/WebExtensionController$WebExtensionResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/WebExtensionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebExtensionInstallResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/geckoview/WebExtensionController$WebExtensionInstallResult$InstallCanceller;
    }
.end annotation


# instance fields
.field final installId:Ljava/lang/String;

.field private final mInstallCanceller:Lorg/mozilla/geckoview/WebExtensionController$WebExtensionInstallResult$InstallCanceller;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "extension"

    invoke-direct {p0, v0}, Lorg/mozilla/geckoview/WebExtensionController$WebExtensionResult;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/geckoview/WebExtensionController$WebExtensionInstallResult;->installId:Ljava/lang/String;

    new-instance v1, Lorg/mozilla/geckoview/WebExtensionController$WebExtensionInstallResult$InstallCanceller;

    invoke-direct {v1, v0}, Lorg/mozilla/geckoview/WebExtensionController$WebExtensionInstallResult$InstallCanceller;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/mozilla/geckoview/WebExtensionController$WebExtensionInstallResult;->mInstallCanceller:Lorg/mozilla/geckoview/WebExtensionController$WebExtensionInstallResult$InstallCanceller;

    invoke-virtual {p0, v1}, Lorg/mozilla/geckoview/GeckoResult;->setCancellationDelegate(Lorg/mozilla/geckoview/GeckoResult$CancellationDelegate;)V

    return-void
.end method


# virtual methods
.method public sendError(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/WebExtensionController$WebExtensionInstallResult;->mInstallCanceller:Lorg/mozilla/geckoview/WebExtensionController$WebExtensionInstallResult$InstallCanceller;

    invoke-static {v0}, Lorg/mozilla/geckoview/WebExtensionController$WebExtensionInstallResult$InstallCanceller;->access$900(Lorg/mozilla/geckoview/WebExtensionController$WebExtensionInstallResult$InstallCanceller;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lorg/mozilla/geckoview/WebExtensionController$WebExtensionResult;->sendError(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
