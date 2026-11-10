.class final Lorg/mozilla/geckoview/WebExtension$Listener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/gecko/util/BundleEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/WebExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Listener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TabDelegate:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/mozilla/gecko/util/BundleEventListener;"
    }
.end annotation


# instance fields
.field private mActionDelegateRegistered:Z

.field private final mActionDelegates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/mozilla/geckoview/WebExtension$ActionDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mEventDispatcher:Lorg/mozilla/gecko/EventDispatcher;

.field private final mMessageDelegates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/mozilla/geckoview/WebExtension$Sender;",
            "Lorg/mozilla/geckoview/WebExtension$MessageDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mSession:Lorg/mozilla/geckoview/GeckoSession;

.field private mTabDelegateRegistered:Z

.field private final mTabDelegates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "TTabDelegate;>;"
        }
    .end annotation
.end field

.field public runtime:Lorg/mozilla/geckoview/GeckoRuntime;


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/GeckoRuntime;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/mozilla/geckoview/WebExtension$Listener;-><init>(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/GeckoRuntime;)V

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/geckoview/GeckoSession;)V
    .locals 4

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/mozilla/geckoview/WebExtension$Listener;-><init>(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/GeckoRuntime;)V

    iget-object p1, p0, Lorg/mozilla/geckoview/WebExtension$Listener;->mEventDispatcher:Lorg/mozilla/gecko/EventDispatcher;

    const-string v0, "GeckoView:WebExtension:CloseTab"

    const-string v1, "GeckoView:WebExtension:OpenOptionsPage"

    const-string v2, "GeckoView:WebExtension:NewTab"

    const-string v3, "GeckoView:WebExtension:UpdateTab"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lorg/mozilla/gecko/EventDispatcher;->registerUiThreadListener(Lorg/mozilla/gecko/util/BundleEventListener;[Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/mozilla/geckoview/WebExtension$Listener;->mTabDelegateRegistered:Z

    return-void
.end method

.method private constructor <init>(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/GeckoRuntime;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/geckoview/WebExtension$Listener;->mActionDelegateRegistered:Z

    iput-boolean v0, p0, Lorg/mozilla/geckoview/WebExtension$Listener;->mTabDelegateRegistered:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/geckoview/WebExtension$Listener;->mMessageDelegates:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/geckoview/WebExtension$Listener;->mActionDelegates:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/geckoview/WebExtension$Listener;->mTabDelegates:Ljava/util/HashMap;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/mozilla/geckoview/GeckoSession;->getEventDispatcher()Lorg/mozilla/gecko/EventDispatcher;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/mozilla/gecko/EventDispatcher;->getInstance()Lorg/mozilla/gecko/EventDispatcher;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/mozilla/geckoview/WebExtension$Listener;->mEventDispatcher:Lorg/mozilla/gecko/EventDispatcher;

    iput-object p1, p0, Lorg/mozilla/geckoview/WebExtension$Listener;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    iput-object p2, p0, Lorg/mozilla/geckoview/WebExtension$Listener;->runtime:Lorg/mozilla/geckoview/GeckoRuntime;

    const-string p1, "GeckoView:WebExtension:Connect"

    const-string p2, "GeckoView:WebExtension:Disconnect"

    const-string v1, "GeckoView:WebExtension:Message"

    const-string v2, "GeckoView:WebExtension:PortMessage"

    filled-new-array {v1, v2, p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/mozilla/gecko/EventDispatcher;->registerUiThreadListener(Lorg/mozilla/gecko/util/BundleEventListener;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getActionDelegate(Lorg/mozilla/geckoview/WebExtension;)Lorg/mozilla/geckoview/WebExtension$ActionDelegate;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/WebExtension$Listener;->mActionDelegates:Ljava/util/HashMap;

    iget-object p1, p1, Lorg/mozilla/geckoview/WebExtension;->id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/geckoview/WebExtension$ActionDelegate;

    return-object p1
.end method

.method public getMessageDelegate(Lorg/mozilla/geckoview/WebExtension;Ljava/lang/String;)Lorg/mozilla/geckoview/WebExtension$MessageDelegate;
    .locals 2

    iget-object v0, p0, Lorg/mozilla/geckoview/WebExtension$Listener;->mMessageDelegates:Ljava/util/HashMap;

    new-instance v1, Lorg/mozilla/geckoview/WebExtension$Sender;

    iget-object p1, p1, Lorg/mozilla/geckoview/WebExtension;->id:Ljava/lang/String;

    invoke-direct {v1, p1, p2}, Lorg/mozilla/geckoview/WebExtension$Sender;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/geckoview/WebExtension$MessageDelegate;

    return-object p1
.end method

.method public getTabDelegate(Lorg/mozilla/geckoview/WebExtension;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/geckoview/WebExtension;",
            ")TTabDelegate;"
        }
    .end annotation

    iget-object v0, p0, Lorg/mozilla/geckoview/WebExtension$Listener;->mTabDelegates:Ljava/util/HashMap;

    iget-object p1, p1, Lorg/mozilla/geckoview/WebExtension;->id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public handleMessage(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/geckoview/WebExtension$Listener;->runtime:Lorg/mozilla/geckoview/GeckoRuntime;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoRuntime;->getWebExtensionController()Lorg/mozilla/geckoview/WebExtensionController;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/geckoview/WebExtension$Listener;->mSession:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/mozilla/geckoview/WebExtensionController;->handleMessage(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;Lorg/mozilla/geckoview/GeckoSession;)V

    return-void
.end method

.method public setActionDelegate(Lorg/mozilla/geckoview/WebExtension;Lorg/mozilla/geckoview/WebExtension$ActionDelegate;)V
    .locals 5

    iget-boolean v0, p0, Lorg/mozilla/geckoview/WebExtension$Listener;->mActionDelegateRegistered:Z

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/mozilla/geckoview/WebExtension$Listener;->mEventDispatcher:Lorg/mozilla/gecko/EventDispatcher;

    const-string v1, "GeckoView:PageAction:Update"

    const-string v2, "GeckoView:PageAction:OpenPopup"

    const-string v3, "GeckoView:BrowserAction:Update"

    const-string v4, "GeckoView:BrowserAction:OpenPopup"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/mozilla/gecko/EventDispatcher;->registerUiThreadListener(Lorg/mozilla/gecko/util/BundleEventListener;[Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/geckoview/WebExtension$Listener;->mActionDelegateRegistered:Z

    :cond_0
    iget-object v0, p0, Lorg/mozilla/geckoview/WebExtension$Listener;->mActionDelegates:Ljava/util/HashMap;

    iget-object p1, p1, Lorg/mozilla/geckoview/WebExtension;->id:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setMessageDelegate(Lorg/mozilla/geckoview/WebExtension;Lorg/mozilla/geckoview/WebExtension$MessageDelegate;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/geckoview/WebExtension$Listener;->mMessageDelegates:Ljava/util/HashMap;

    new-instance v1, Lorg/mozilla/geckoview/WebExtension$Sender;

    iget-object p1, p1, Lorg/mozilla/geckoview/WebExtension;->id:Ljava/lang/String;

    invoke-direct {v1, p1, p3}, Lorg/mozilla/geckoview/WebExtension$Sender;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setTabDelegate(Lorg/mozilla/geckoview/WebExtension;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/geckoview/WebExtension;",
            "TTabDelegate;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lorg/mozilla/geckoview/WebExtension$Listener;->mTabDelegateRegistered:Z

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/mozilla/geckoview/WebExtension$Listener;->mEventDispatcher:Lorg/mozilla/gecko/EventDispatcher;

    const-string v1, "GeckoView:WebExtension:CloseTab"

    const-string v2, "GeckoView:WebExtension:OpenOptionsPage"

    const-string v3, "GeckoView:WebExtension:NewTab"

    const-string v4, "GeckoView:WebExtension:UpdateTab"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/mozilla/gecko/EventDispatcher;->registerUiThreadListener(Lorg/mozilla/gecko/util/BundleEventListener;[Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/geckoview/WebExtension$Listener;->mTabDelegateRegistered:Z

    :cond_0
    iget-object v0, p0, Lorg/mozilla/geckoview/WebExtension$Listener;->mTabDelegates:Ljava/util/HashMap;

    iget-object p1, p1, Lorg/mozilla/geckoview/WebExtension;->id:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public unregisterWebExtension(Lorg/mozilla/geckoview/WebExtension;)V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/geckoview/WebExtension$Listener;->mMessageDelegates:Ljava/util/HashMap;

    iget-object v1, p1, Lorg/mozilla/geckoview/WebExtension;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/mozilla/geckoview/WebExtension$Listener;->mActionDelegates:Ljava/util/HashMap;

    iget-object v1, p1, Lorg/mozilla/geckoview/WebExtension;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/mozilla/geckoview/WebExtension$Listener;->mTabDelegates:Ljava/util/HashMap;

    iget-object p1, p1, Lorg/mozilla/geckoview/WebExtension;->id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
