.class Lorg/mozilla/geckoview/GeckoSession$Listener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/gecko/util/BundleEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/GeckoSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/geckoview/GeckoSession;


# direct methods
.method private constructor <init>(Lorg/mozilla/geckoview/GeckoSession;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoSession$Listener;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/GeckoSession$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/GeckoSession$Listener;-><init>(Lorg/mozilla/geckoview/GeckoSession;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V
    .locals 1

    const-string v0, "GeckoView:PinOnScreen"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoSession$Listener;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    const-string p3, "pinned"

    invoke-virtual {p2, p3}, Lorg/mozilla/gecko/util/GeckoBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/mozilla/geckoview/GeckoSession;->setShouldPinOnScreen(Z)V

    goto :goto_0

    :cond_0
    const-string v0, "GeckoView:Prompt"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoSession$Listener;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    invoke-static {p1, p2, p3}, Lorg/mozilla/geckoview/GeckoSession;->handlePromptEvent(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public registerListeners()V
    .locals 4

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$Listener;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->getEventDispatcher()Lorg/mozilla/gecko/EventDispatcher;

    move-result-object v0

    const-string v1, "GeckoView:Prompt"

    const/4 v2, 0x0

    const-string v3, "GeckoView:PinOnScreen"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/mozilla/gecko/EventDispatcher;->registerUiThreadListener(Lorg/mozilla/gecko/util/BundleEventListener;[Ljava/lang/String;)V

    return-void
.end method
