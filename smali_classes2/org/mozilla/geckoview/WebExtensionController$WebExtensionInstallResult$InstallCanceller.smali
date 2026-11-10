.class Lorg/mozilla/geckoview/WebExtensionController$WebExtensionInstallResult$InstallCanceller;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/geckoview/GeckoResult$CancellationDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/WebExtensionController$WebExtensionInstallResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstallCanceller"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/geckoview/WebExtensionController$WebExtensionInstallResult$InstallCanceller$CancelResult;
    }
.end annotation


# instance fields
.field private mCancelled:Z

.field private final mInstallId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/geckoview/WebExtensionController$WebExtensionInstallResult$InstallCanceller;->mInstallId:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/mozilla/geckoview/WebExtensionController$WebExtensionInstallResult$InstallCanceller;->mCancelled:Z

    return-void
.end method

.method public static synthetic a(Lorg/mozilla/geckoview/WebExtensionController$WebExtensionInstallResult$InstallCanceller;Ljava/lang/Boolean;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/WebExtensionController$WebExtensionInstallResult$InstallCanceller;->lambda$cancel$0(Ljava/lang/Boolean;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$900(Lorg/mozilla/geckoview/WebExtensionController$WebExtensionInstallResult$InstallCanceller;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/mozilla/geckoview/WebExtensionController$WebExtensionInstallResult$InstallCanceller;->mCancelled:Z

    return p0
.end method

.method private synthetic lambda$cancel$0(Ljava/lang/Boolean;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/mozilla/geckoview/WebExtensionController$WebExtensionInstallResult$InstallCanceller;->mCancelled:Z

    invoke-static {p1}, Lorg/mozilla/geckoview/GeckoResult;->fromValue(Ljava/lang/Object;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public cancel()Lorg/mozilla/geckoview/GeckoResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/mozilla/geckoview/WebExtensionController$WebExtensionInstallResult$InstallCanceller$CancelResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mozilla/geckoview/WebExtensionController$WebExtensionInstallResult$InstallCanceller$CancelResult;-><init>(Lorg/mozilla/geckoview/WebExtensionController$1;)V

    new-instance v1, Lorg/mozilla/gecko/util/GeckoBundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lorg/mozilla/gecko/util/GeckoBundle;-><init>(I)V

    const-string v2, "installId"

    iget-object v3, p0, Lorg/mozilla/geckoview/WebExtensionController$WebExtensionInstallResult$InstallCanceller;->mInstallId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/mozilla/gecko/util/GeckoBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/mozilla/gecko/EventDispatcher;->getInstance()Lorg/mozilla/gecko/EventDispatcher;

    move-result-object v2

    const-string v3, "GeckoView:WebExtension:CancelInstall"

    invoke-virtual {v2, v3, v1, v0}, Lorg/mozilla/gecko/EventDispatcher;->dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V

    new-instance v1, Lorg/mozilla/geckoview/g;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lorg/mozilla/geckoview/g;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lorg/mozilla/geckoview/GeckoResult;->then(Lorg/mozilla/geckoview/GeckoResult$OnValueListener;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object v0

    return-object v0
.end method
