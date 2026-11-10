.class Lorg/mozilla/geckoview/WebExtensionController$WebExtensionResult;
.super Lorg/mozilla/geckoview/GeckoResult;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/gecko/util/EventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/WebExtensionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebExtensionResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/geckoview/WebExtensionController$WebExtensionResult$StateCodes;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/mozilla/geckoview/GeckoResult<",
        "Lorg/mozilla/geckoview/WebExtension;",
        ">;",
        "Lorg/mozilla/gecko/util/EventCallback;"
    }
.end annotation


# instance fields
.field private final mFieldName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/geckoview/GeckoResult;-><init>()V

    iput-object p1, p0, Lorg/mozilla/geckoview/WebExtensionController$WebExtensionResult;->mFieldName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public sendError(Ljava/lang/Object;)V
    .locals 3

    instance-of v0, p1, Lorg/mozilla/gecko/util/GeckoBundle;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lorg/mozilla/gecko/util/GeckoBundle;

    const-string v1, "installError"

    invoke-virtual {v0, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v1, "state"

    invoke-virtual {v0, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez p1, :cond_0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/16 p1, -0x64

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    const/16 p1, -0x65

    :cond_1
    :goto_0
    new-instance v0, Lorg/mozilla/geckoview/WebExtension$InstallException;

    invoke-direct {v0, p1}, Lorg/mozilla/geckoview/WebExtension$InstallException;-><init>(I)V

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/Exception;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0, v0}, Lorg/mozilla/geckoview/GeckoResult;->completeExceptionally(Ljava/lang/Throwable;)V

    return-void
.end method

.method public sendSuccess(Ljava/lang/Object;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/mozilla/geckoview/GeckoResult;->complete(Ljava/lang/Object;)V

    return-void

    :cond_0
    check-cast p1, Lorg/mozilla/gecko/util/GeckoBundle;

    new-instance v0, Lorg/mozilla/geckoview/WebExtension;

    iget-object v1, p0, Lorg/mozilla/geckoview/WebExtensionController$WebExtensionResult;->mFieldName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->getBundle(Ljava/lang/String;)Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/mozilla/geckoview/WebExtension;-><init>(Lorg/mozilla/gecko/util/GeckoBundle;)V

    invoke-virtual {p0, v0}, Lorg/mozilla/geckoview/GeckoResult;->complete(Ljava/lang/Object;)V

    return-void
.end method
