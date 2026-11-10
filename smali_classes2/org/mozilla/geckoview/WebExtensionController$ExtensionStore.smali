.class Lorg/mozilla/geckoview/WebExtensionController$ExtensionStore;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/WebExtensionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtensionStore"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/geckoview/WebExtensionController$ExtensionStore$Observer;
    }
.end annotation


# instance fields
.field private final mData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/mozilla/geckoview/WebExtension;",
            ">;"
        }
    .end annotation
.end field

.field private mObserver:Lorg/mozilla/geckoview/WebExtensionController$ExtensionStore$Observer;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/geckoview/WebExtensionController$ExtensionStore;->mData:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/mozilla/geckoview/WebExtensionController$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/mozilla/geckoview/WebExtensionController$ExtensionStore;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/mozilla/geckoview/WebExtensionController$ExtensionStore;Lorg/mozilla/geckoview/WebExtension;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/WebExtensionController$ExtensionStore;->lambda$get$0(Lorg/mozilla/geckoview/WebExtension;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$get$0(Lorg/mozilla/geckoview/WebExtension;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 2

    iget-object v0, p0, Lorg/mozilla/geckoview/WebExtensionController$ExtensionStore;->mData:Ljava/util/Map;

    iget-object v1, p1, Lorg/mozilla/geckoview/WebExtension;->id:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/mozilla/geckoview/WebExtensionController$ExtensionStore;->mObserver:Lorg/mozilla/geckoview/WebExtensionController$ExtensionStore$Observer;

    invoke-interface {v0, p1}, Lorg/mozilla/geckoview/WebExtensionController$ExtensionStore$Observer;->onNewExtension(Lorg/mozilla/geckoview/WebExtension;)V

    invoke-static {p1}, Lorg/mozilla/geckoview/GeckoResult;->fromValue(Ljava/lang/Object;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Lorg/mozilla/geckoview/WebExtension;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/mozilla/geckoview/WebExtensionController$ExtensionStore;->mData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/geckoview/WebExtension;

    if-nez v0, :cond_0

    new-instance v0, Lorg/mozilla/geckoview/WebExtensionController$WebExtensionResult;

    const-string v1, "extension"

    invoke-direct {v0, v1}, Lorg/mozilla/geckoview/WebExtensionController$WebExtensionResult;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/mozilla/gecko/util/GeckoBundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lorg/mozilla/gecko/util/GeckoBundle;-><init>(I)V

    const-string v2, "extensionId"

    invoke-virtual {v1, v2, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/mozilla/gecko/EventDispatcher;->getInstance()Lorg/mozilla/gecko/EventDispatcher;

    move-result-object p1

    const-string v2, "GeckoView:WebExtension:Get"

    invoke-virtual {p1, v2, v1, v0}, Lorg/mozilla/gecko/EventDispatcher;->dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V

    new-instance p1, Lorg/mozilla/geckoview/g;

    const/4 v1, 0x2

    invoke-direct {p1, p0, v1}, Lorg/mozilla/geckoview/g;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/GeckoResult;->then(Lorg/mozilla/geckoview/GeckoResult$OnValueListener;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {v0}, Lorg/mozilla/geckoview/GeckoResult;->fromValue(Ljava/lang/Object;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/WebExtensionController$ExtensionStore;->mData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setObserver(Lorg/mozilla/geckoview/WebExtensionController$ExtensionStore$Observer;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/geckoview/WebExtensionController$ExtensionStore;->mObserver:Lorg/mozilla/geckoview/WebExtensionController$ExtensionStore$Observer;

    return-void
.end method

.method public update(Ljava/lang/String;Lorg/mozilla/geckoview/WebExtension;)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/WebExtensionController$ExtensionStore;->mData:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
