.class public Lorg/mozilla/geckoview/WebExtensionController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/geckoview/WebExtensionController$EnableSource;,
        Lorg/mozilla/geckoview/WebExtensionController$WebExtensionInstallResult;,
        Lorg/mozilla/geckoview/WebExtensionController$WebExtensionResult;,
        Lorg/mozilla/geckoview/WebExtensionController$DebuggerDelegate;,
        Lorg/mozilla/geckoview/WebExtensionController$PromptDelegate;,
        Lorg/mozilla/geckoview/WebExtensionController$TabDelegate;,
        Lorg/mozilla/geckoview/WebExtensionController$DelegateController;,
        Lorg/mozilla/geckoview/WebExtensionController$Internals;,
        Lorg/mozilla/geckoview/WebExtensionController$ExtensionStore;,
        Lorg/mozilla/geckoview/WebExtensionController$Message;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "WebExtension"


# instance fields
.field private mDebuggerDelegate:Lorg/mozilla/geckoview/WebExtensionController$DebuggerDelegate;

.field private mExtensions:Lorg/mozilla/geckoview/WebExtensionController$ExtensionStore;

.field private mInternals:Lorg/mozilla/geckoview/WebExtensionController$Internals;

.field private final mListener:Lorg/mozilla/geckoview/WebExtension$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/geckoview/WebExtension$Listener<",
            "Lorg/mozilla/geckoview/WebExtension$TabDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingMessages:Lorg/mozilla/gecko/MultiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/gecko/MultiMap<",
            "Ljava/lang/String;",
            "Lorg/mozilla/geckoview/WebExtensionController$Message;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingNewTab:Lorg/mozilla/gecko/MultiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/gecko/MultiMap<",
            "Ljava/lang/String;",
            "Lorg/mozilla/geckoview/WebExtensionController$Message;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingPortMessages:Lorg/mozilla/gecko/MultiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/gecko/MultiMap<",
            "Ljava/lang/Long;",
            "Lorg/mozilla/geckoview/WebExtensionController$Message;",
            ">;"
        }
    .end annotation
.end field

.field private mPorts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lorg/mozilla/geckoview/WebExtension$Port;",
            ">;"
        }
    .end annotation
.end field

.field private mPromptDelegate:Lorg/mozilla/geckoview/WebExtensionController$PromptDelegate;


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/GeckoRuntime;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/mozilla/geckoview/WebExtensionController$ExtensionStore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mozilla/geckoview/WebExtensionController$ExtensionStore;-><init>(Lorg/mozilla/geckoview/WebExtensionController$1;)V

    iput-object v0, p0, Lorg/mozilla/geckoview/WebExtensionController;->mExtensions:Lorg/mozilla/geckoview/WebExtensionController$ExtensionStore;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/geckoview/WebExtensionController;->mPorts:Ljava/util/Map;

    new-instance v0, Lorg/mozilla/geckoview/WebExtensionController$Internals;

    invoke-direct {v0, p0, v1}, Lorg/mozilla/geckoview/WebExtensionController$Internals;-><init>(Lorg/mozilla/geckoview/WebExtensionController;Lorg/mozilla/geckoview/WebExtensionController$1;)V

    iput-object v0, p0, Lorg/mozilla/geckoview/WebExtensionController;->mInternals:Lorg/mozilla/geckoview/WebExtensionController$Internals;

    new-instance v0, Lorg/mozilla/geckoview/WebExtension$Listener;

    invoke-direct {v0, p1}, Lorg/mozilla/geckoview/WebExtension$Listener;-><init>(Lorg/mozilla/geckoview/GeckoRuntime;)V

    iput-object v0, p0, Lorg/mozilla/geckoview/WebExtensionController;->mListener:Lorg/mozilla/geckoview/WebExtension$Listener;

    new-instance p1, Lorg/mozilla/gecko/MultiMap;

    invoke-direct {p1}, Lorg/mozilla/gecko/MultiMap;-><init>()V

    iput-object p1, p0, Lorg/mozilla/geckoview/WebExtensionController;->mPendingPortMessages:Lorg/mozilla/gecko/MultiMap;

    new-instance p1, Lorg/mozilla/gecko/MultiMap;

    invoke-direct {p1}, Lorg/mozilla/gecko/MultiMap;-><init>()V

    iput-object p1, p0, Lorg/mozilla/geckoview/WebExtensionController;->mPendingMessages:Lorg/mozilla/gecko/MultiMap;

    new-instance p1, Lorg/mozilla/gecko/MultiMap;

    invoke-direct {p1}, Lorg/mozilla/gecko/MultiMap;-><init>()V

    iput-object p1, p0, Lorg/mozilla/geckoview/WebExtensionController;->mPendingNewTab:Lorg/mozilla/gecko/MultiMap;

    iget-object p1, p0, Lorg/mozilla/geckoview/WebExtensionController;->mExtensions:Lorg/mozilla/geckoview/WebExtensionController$ExtensionStore;

    iget-object v0, p0, Lorg/mozilla/geckoview/WebExtensionController;->mInternals:Lorg/mozilla/geckoview/WebExtensionController$Internals;

    invoke-virtual {p1, v0}, Lorg/mozilla/geckoview/WebExtensionController$ExtensionStore;->setObserver(Lorg/mozilla/geckoview/WebExtensionController$ExtensionStore$Observer;)V

    return-void
.end method

.method public static synthetic a(Lorg/mozilla/geckoview/WebExtensionController;Lorg/mozilla/geckoview/WebExtension;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/WebExtensionController;->lambda$installBuiltIn$2(Lorg/mozilla/geckoview/WebExtension;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lorg/mozilla/geckoview/WebExtensionController;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/geckoview/WebExtensionController;->mPorts:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$300(Lorg/mozilla/geckoview/WebExtensionController;)Lorg/mozilla/gecko/MultiMap;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/geckoview/WebExtensionController;->mPendingPortMessages:Lorg/mozilla/gecko/MultiMap;

    return-object p0
.end method

.method public static synthetic access$400(Lorg/mozilla/geckoview/WebExtensionController;Lorg/mozilla/geckoview/WebExtensionController$Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/WebExtensionController;->portMessage(Lorg/mozilla/geckoview/WebExtensionController$Message;)V

    return-void
.end method

.method public static synthetic access$500(Lorg/mozilla/geckoview/WebExtensionController;)Lorg/mozilla/geckoview/WebExtension$Listener;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/geckoview/WebExtensionController;->mListener:Lorg/mozilla/geckoview/WebExtension$Listener;

    return-object p0
.end method

.method public static synthetic access$600(Lorg/mozilla/geckoview/WebExtensionController;)Lorg/mozilla/gecko/MultiMap;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/geckoview/WebExtensionController;->mPendingMessages:Lorg/mozilla/gecko/MultiMap;

    return-object p0
.end method

.method public static synthetic access$700(Lorg/mozilla/geckoview/WebExtensionController;)Lorg/mozilla/gecko/MultiMap;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/geckoview/WebExtensionController;->mPendingNewTab:Lorg/mozilla/gecko/MultiMap;

    return-object p0
.end method

.method private actionDelegateFor(Lorg/mozilla/geckoview/WebExtension;Lorg/mozilla/geckoview/GeckoSession;)Lorg/mozilla/geckoview/WebExtension$ActionDelegate;
    .locals 0

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/mozilla/geckoview/WebExtensionController;->mListener:Lorg/mozilla/geckoview/WebExtension$Listener;

    invoke-virtual {p2, p1}, Lorg/mozilla/geckoview/WebExtension$Listener;->getActionDelegate(Lorg/mozilla/geckoview/WebExtension;)Lorg/mozilla/geckoview/WebExtension$ActionDelegate;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p2}, Lorg/mozilla/geckoview/GeckoSession;->getWebExtensionController()Lorg/mozilla/geckoview/WebExtension$SessionController;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/mozilla/geckoview/WebExtension$SessionController;->getActionDelegate(Lorg/mozilla/geckoview/WebExtension;)Lorg/mozilla/geckoview/WebExtension$ActionDelegate;

    move-result-object p1

    return-object p1
.end method

.method private actionUpdate(Lorg/mozilla/geckoview/WebExtensionController$Message;Lorg/mozilla/geckoview/WebExtension;I)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lorg/mozilla/geckoview/WebExtensionController$Message;->session:Lorg/mozilla/geckoview/GeckoSession;

    invoke-direct {p0, p2, v0}, Lorg/mozilla/geckoview/WebExtensionController;->actionDelegateFor(Lorg/mozilla/geckoview/WebExtension;Lorg/mozilla/geckoview/GeckoSession;)Lorg/mozilla/geckoview/WebExtension$ActionDelegate;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Lorg/mozilla/geckoview/WebExtension$Action;

    iget-object v2, p1, Lorg/mozilla/geckoview/WebExtensionController$Message;->bundle:Lorg/mozilla/gecko/util/GeckoBundle;

    const-string v3, "action"

    invoke-virtual {v2, v3}, Lorg/mozilla/gecko/util/GeckoBundle;->getBundle(Ljava/lang/String;)Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object v2

    invoke-direct {v1, p3, v2, p2}, Lorg/mozilla/geckoview/WebExtension$Action;-><init>(ILorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/geckoview/WebExtension;)V

    const/4 v2, 0x1

    if-ne p3, v2, :cond_2

    iget-object p1, p1, Lorg/mozilla/geckoview/WebExtensionController$Message;->session:Lorg/mozilla/geckoview/GeckoSession;

    invoke-interface {v0, p2, p1, v1}, Lorg/mozilla/geckoview/WebExtension$ActionDelegate;->onBrowserAction(Lorg/mozilla/geckoview/WebExtension;Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/WebExtension$Action;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne p3, v2, :cond_3

    iget-object p1, p1, Lorg/mozilla/geckoview/WebExtensionController$Message;->session:Lorg/mozilla/geckoview/GeckoSession;

    invoke-interface {v0, p2, p1, v1}, Lorg/mozilla/geckoview/WebExtension$ActionDelegate;->onPageAction(Lorg/mozilla/geckoview/WebExtension;Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/WebExtension$Action;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static synthetic b(Lorg/mozilla/gecko/util/EventCallback;Lorg/mozilla/geckoview/AllowOrDeny;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/mozilla/geckoview/WebExtensionController;->lambda$updateTab$12(Lorg/mozilla/gecko/util/EventCallback;Lorg/mozilla/geckoview/AllowOrDeny;)V

    return-void
.end method

.method public static synthetic c(Lorg/mozilla/geckoview/WebExtensionController;Lorg/mozilla/geckoview/WebExtension;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/WebExtensionController;->lambda$ensureBuiltIn$3(Lorg/mozilla/geckoview/WebExtension;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p0

    return-object p0
.end method

.method private connect(Ljava/lang/String;JLorg/mozilla/geckoview/WebExtensionController$Message;Lorg/mozilla/geckoview/WebExtension$MessageSender;)V
    .locals 7

    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    iget-object p1, p4, Lorg/mozilla/geckoview/WebExtensionController$Message;->callback:Lorg/mozilla/gecko/util/EventCallback;

    const-string p2, "Missing portId."

    invoke-interface {p1, p2}, Lorg/mozilla/gecko/util/EventCallback;->sendError(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v6, Lorg/mozilla/geckoview/WebExtension$Port;

    iget-object v5, p0, Lorg/mozilla/geckoview/WebExtensionController;->mInternals:Lorg/mozilla/geckoview/WebExtensionController$Internals;

    move-object v0, v6

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lorg/mozilla/geckoview/WebExtension$Port;-><init>(Ljava/lang/String;JLorg/mozilla/geckoview/WebExtension$MessageSender;Lorg/mozilla/geckoview/WebExtension$Port$Observer;)V

    iget-object p2, p0, Lorg/mozilla/geckoview/WebExtensionController;->mPorts:Ljava/util/Map;

    iget-wide v0, v6, Lorg/mozilla/geckoview/WebExtension$Port;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {p2, p3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p4, Lorg/mozilla/geckoview/WebExtensionController$Message;->callback:Lorg/mozilla/gecko/util/EventCallback;

    invoke-direct {p0, p1, p5, p2}, Lorg/mozilla/geckoview/WebExtensionController;->getDelegate(Ljava/lang/String;Lorg/mozilla/geckoview/WebExtension$MessageSender;Lorg/mozilla/gecko/util/EventCallback;)Lorg/mozilla/geckoview/WebExtension$MessageDelegate;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/mozilla/geckoview/WebExtensionController;->mPendingMessages:Lorg/mozilla/gecko/MultiMap;

    iget-object p2, p5, Lorg/mozilla/geckoview/WebExtension$MessageSender;->webExtension:Lorg/mozilla/geckoview/WebExtension;

    iget-object p2, p2, Lorg/mozilla/geckoview/WebExtension;->id:Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lorg/mozilla/gecko/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-interface {p1, v6}, Lorg/mozilla/geckoview/WebExtension$MessageDelegate;->onConnect(Lorg/mozilla/geckoview/WebExtension$Port;)V

    iget-object p1, p4, Lorg/mozilla/geckoview/WebExtensionController$Message;->callback:Lorg/mozilla/gecko/util/EventCallback;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p2}, Lorg/mozilla/gecko/util/EventCallback;->sendSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic d(Lorg/mozilla/geckoview/WebExtensionController;Lorg/mozilla/geckoview/WebExtension;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/WebExtensionController;->lambda$install$0(Lorg/mozilla/geckoview/WebExtension;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p0

    return-object p0
.end method

.method private disconnect(JLorg/mozilla/gecko/util/EventCallback;)V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/geckoview/WebExtensionController;->mPorts:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/geckoview/WebExtension$Port;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lorg/mozilla/geckoview/WebExtension$Port;->delegate:Lorg/mozilla/geckoview/WebExtension$PortDelegate;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Lorg/mozilla/geckoview/WebExtension$PortDelegate;->onDisconnect(Lorg/mozilla/geckoview/WebExtension$Port;)V

    :cond_1
    iget-object v0, p0, Lorg/mozilla/geckoview/WebExtensionController;->mPorts:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_2

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p3, p1}, Lorg/mozilla/gecko/util/EventCallback;->sendSuccess(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public static synthetic e(Lorg/mozilla/geckoview/WebExtensionController;Lorg/mozilla/geckoview/WebExtension;Ljava/lang/Void;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/mozilla/geckoview/WebExtensionController;->lambda$uninstall$4(Lorg/mozilla/geckoview/WebExtension;Ljava/lang/Void;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p0

    return-object p0
.end method

.method private extensionFromBundle(Lorg/mozilla/gecko/util/GeckoBundle;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/gecko/util/GeckoBundle;",
            ")",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Lorg/mozilla/geckoview/WebExtension;",
            ">;"
        }
    .end annotation

    const-string v0, "extensionId"

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/mozilla/geckoview/WebExtensionController;->mExtensions:Lorg/mozilla/geckoview/WebExtensionController$ExtensionStore;

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/WebExtensionController$ExtensionStore;->get(Ljava/lang/String;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic f(Lorg/mozilla/geckoview/WebExtensionController;Lorg/mozilla/geckoview/WebExtension;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/WebExtensionController;->lambda$update$7(Lorg/mozilla/geckoview/WebExtension;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p0

    return-object p0
.end method

.method private fromBundle(Lorg/mozilla/geckoview/WebExtension;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/geckoview/GeckoSession;)Lorg/mozilla/geckoview/WebExtension$MessageSender;
    .locals 11

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "envType"

    invoke-virtual {p2, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "content_child"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    move v9, v1

    goto :goto_0

    :cond_1
    const-string v2, "addon_child"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v9, v4

    goto :goto_0

    :cond_2
    move v9, v3

    :goto_0
    if-nez v9, :cond_4

    sget-boolean p1, Lorg/mozilla/geckoview/BuildConfig;->DEBUG:Z

    if-nez p1, :cond_3

    return-object v0

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Missing or unknown envType."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const-string v1, "url"

    invoke-virtual {p2, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez p3, :cond_5

    move v10, v4

    goto :goto_1

    :cond_5
    const-string v2, "frameId"

    invoke-virtual {p2, v2}, Lorg/mozilla/gecko/util/GeckoBundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p2, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, -0x1

    invoke-virtual {p2, v2, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v1, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {p2, v2, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    if-nez p2, :cond_7

    move v3, v4

    :cond_7
    move v10, v3

    :goto_1
    new-instance p2, Lorg/mozilla/geckoview/WebExtension$MessageSender;

    move-object v5, p2

    move-object v6, p1

    move-object v7, p3

    invoke-direct/range {v5 .. v10}, Lorg/mozilla/geckoview/WebExtension$MessageSender;-><init>(Lorg/mozilla/geckoview/WebExtension;Lorg/mozilla/geckoview/GeckoSession;Ljava/lang/String;IZ)V

    return-object p2

    :cond_8
    :goto_2
    sget-boolean p1, Lorg/mozilla/geckoview/BuildConfig;->DEBUG:Z

    if-nez p1, :cond_9

    return-object v0

    :cond_9
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Missing sender information."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic g(Lorg/mozilla/gecko/util/EventCallback;Lorg/mozilla/geckoview/AllowOrDeny;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/mozilla/geckoview/WebExtensionController;->lambda$installPrompt$9(Lorg/mozilla/gecko/util/EventCallback;Lorg/mozilla/geckoview/AllowOrDeny;)V

    return-void
.end method

.method private getDelegate(Ljava/lang/String;Lorg/mozilla/geckoview/WebExtension$MessageSender;Lorg/mozilla/gecko/util/EventCallback;)Lorg/mozilla/geckoview/WebExtension$MessageDelegate;
    .locals 5

    iget-object v0, p2, Lorg/mozilla/geckoview/WebExtension$MessageSender;->webExtension:Lorg/mozilla/geckoview/WebExtension;

    iget-wide v1, v0, Lorg/mozilla/geckoview/WebExtension;->flags:J

    const-wide/16 v3, 0x1

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget v1, p2, Lorg/mozilla/geckoview/WebExtension$MessageSender;->environmentType:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    const-string p1, "This NativeApp can\'t receive messages from Content Scripts."

    :goto_0
    invoke-interface {p3, p1}, Lorg/mozilla/gecko/util/EventCallback;->sendError(Ljava/lang/Object;)V

    return-object v2

    :cond_0
    iget-object v1, p2, Lorg/mozilla/geckoview/WebExtension$MessageSender;->session:Lorg/mozilla/geckoview/GeckoSession;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/mozilla/geckoview/GeckoSession;->getWebExtensionController()Lorg/mozilla/geckoview/WebExtension$SessionController;

    move-result-object v0

    iget-object p2, p2, Lorg/mozilla/geckoview/WebExtension$MessageSender;->webExtension:Lorg/mozilla/geckoview/WebExtension;

    invoke-virtual {v0, p2, p1}, Lorg/mozilla/geckoview/WebExtension$SessionController;->getMessageDelegate(Lorg/mozilla/geckoview/WebExtension;Ljava/lang/String;)Lorg/mozilla/geckoview/WebExtension$MessageDelegate;

    move-result-object p1

    goto :goto_1

    :cond_1
    iget p2, p2, Lorg/mozilla/geckoview/WebExtension$MessageSender;->environmentType:I

    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    iget-object p2, p0, Lorg/mozilla/geckoview/WebExtensionController;->mListener:Lorg/mozilla/geckoview/WebExtension$Listener;

    invoke-virtual {p2, v0, p1}, Lorg/mozilla/geckoview/WebExtension$Listener;->getMessageDelegate(Lorg/mozilla/geckoview/WebExtension;Ljava/lang/String;)Lorg/mozilla/geckoview/WebExtension$MessageDelegate;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, v2

    :goto_1
    if-nez p1, :cond_3

    const-string p1, "Native app not found or this WebExtension does not have permissions."

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method public static synthetic h(Lorg/mozilla/geckoview/WebExtensionController;Lorg/mozilla/geckoview/WebExtensionController$Message;Lorg/mozilla/geckoview/GeckoSession;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/mozilla/geckoview/WebExtensionController;->lambda$newTab$11(Lorg/mozilla/geckoview/WebExtensionController$Message;Lorg/mozilla/geckoview/GeckoSession;)V

    return-void
.end method

.method public static synthetic i(Lorg/mozilla/geckoview/WebExtensionController$Message;Lorg/mozilla/geckoview/AllowOrDeny;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/mozilla/geckoview/WebExtensionController;->lambda$closeTab$13(Lorg/mozilla/geckoview/WebExtensionController$Message;Lorg/mozilla/geckoview/AllowOrDeny;)V

    return-void
.end method

.method private installPrompt(Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V
    .locals 2

    const-string v0, "extension"

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getBundle(Ljava/lang/String;)Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v0, "webExtensionId"

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "locationURI"

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/mozilla/geckoview/WebExtension;

    invoke-direct {v0, p1}, Lorg/mozilla/geckoview/WebExtension;-><init>(Lorg/mozilla/gecko/util/GeckoBundle;)V

    new-instance p1, Lorg/mozilla/geckoview/WebExtensionController$DelegateController;

    invoke-direct {p1, p0, v0}, Lorg/mozilla/geckoview/WebExtensionController$DelegateController;-><init>(Lorg/mozilla/geckoview/WebExtensionController;Lorg/mozilla/geckoview/WebExtension;)V

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/WebExtension;->setDelegateController(Lorg/mozilla/geckoview/WebExtension$DelegateController;)V

    iget-object p1, p0, Lorg/mozilla/geckoview/WebExtensionController;->mPromptDelegate:Lorg/mozilla/geckoview/WebExtensionController$PromptDelegate;

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-interface {p1, v0}, Lorg/mozilla/geckoview/WebExtensionController$PromptDelegate;->onInstallPrompt(Lorg/mozilla/geckoview/WebExtension;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    new-instance v0, Lorg/mozilla/geckoview/a;

    const/16 v1, 0x13

    invoke-direct {v0, p2, v1}, Lorg/mozilla/geckoview/a;-><init>(Lorg/mozilla/gecko/util/EventCallback;I)V

    invoke-virtual {p1, v0}, Lorg/mozilla/geckoview/GeckoResult;->accept(Lorg/mozilla/geckoview/GeckoResult$Consumer;)Lorg/mozilla/geckoview/GeckoResult;

    return-void

    :cond_3
    :goto_0
    sget-boolean p1, Lorg/mozilla/geckoview/BuildConfig;->DEBUG:Z

    if-nez p1, :cond_4

    return-void

    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Missing webExtensionId or locationURI"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic j(Lorg/mozilla/gecko/util/EventCallback;Lorg/mozilla/geckoview/AllowOrDeny;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/mozilla/geckoview/WebExtensionController;->lambda$updatePrompt$10(Lorg/mozilla/gecko/util/EventCallback;Lorg/mozilla/geckoview/AllowOrDeny;)V

    return-void
.end method

.method public static synthetic k(Lorg/mozilla/geckoview/WebExtensionController;Ljava/lang/String;Lorg/mozilla/geckoview/WebExtensionController$Message;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/WebExtension;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lorg/mozilla/geckoview/WebExtensionController;->lambda$handleMessage$8(Ljava/lang/String;Lorg/mozilla/geckoview/WebExtensionController$Message;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/WebExtension;)V

    return-void
.end method

.method public static synthetic l(Lorg/mozilla/geckoview/WebExtensionController;Lorg/mozilla/geckoview/WebExtension;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/WebExtensionController;->lambda$enable$5(Lorg/mozilla/geckoview/WebExtension;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$closeTab$13(Lorg/mozilla/geckoview/WebExtensionController$Message;Lorg/mozilla/geckoview/AllowOrDeny;)V
    .locals 2

    sget-object v0, Lorg/mozilla/geckoview/AllowOrDeny;->ALLOW:Lorg/mozilla/geckoview/AllowOrDeny;

    const/4 v1, 0x0

    iget-object p0, p0, Lorg/mozilla/geckoview/WebExtensionController$Message;->callback:Lorg/mozilla/gecko/util/EventCallback;

    if-ne p1, v0, :cond_0

    invoke-interface {p0, v1}, Lorg/mozilla/gecko/util/EventCallback;->sendSuccess(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {p0, v1}, Lorg/mozilla/gecko/util/EventCallback;->sendError(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$disable$6(Lorg/mozilla/geckoview/WebExtension;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/mozilla/geckoview/WebExtensionController;->registerWebExtension(Lorg/mozilla/geckoview/WebExtension;)V

    invoke-static {p1}, Lorg/mozilla/geckoview/GeckoResult;->fromValue(Ljava/lang/Object;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$enable$5(Lorg/mozilla/geckoview/WebExtension;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/mozilla/geckoview/WebExtensionController;->registerWebExtension(Lorg/mozilla/geckoview/WebExtension;)V

    invoke-static {p1}, Lorg/mozilla/geckoview/GeckoResult;->fromValue(Ljava/lang/Object;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$ensureBuiltIn$3(Lorg/mozilla/geckoview/WebExtension;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/mozilla/geckoview/WebExtensionController;->registerWebExtension(Lorg/mozilla/geckoview/WebExtension;)V

    invoke-static {p1}, Lorg/mozilla/geckoview/GeckoResult;->fromValue(Ljava/lang/Object;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$handleMessage$8(Ljava/lang/String;Lorg/mozilla/geckoview/WebExtensionController$Message;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/WebExtension;)V
    .locals 7

    const-string v0, "GeckoView:WebExtension:NewTab"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2, p7}, Lorg/mozilla/geckoview/WebExtensionController;->newTab(Lorg/mozilla/geckoview/WebExtensionController$Message;Lorg/mozilla/geckoview/WebExtension;)V

    return-void

    :cond_0
    const-string v0, "GeckoView:WebExtension:UpdateTab"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2, p7}, Lorg/mozilla/geckoview/WebExtensionController;->updateTab(Lorg/mozilla/geckoview/WebExtensionController$Message;Lorg/mozilla/geckoview/WebExtension;)V

    return-void

    :cond_1
    const-string v0, "GeckoView:WebExtension:CloseTab"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p2, p7}, Lorg/mozilla/geckoview/WebExtensionController;->closeTab(Lorg/mozilla/geckoview/WebExtensionController$Message;Lorg/mozilla/geckoview/WebExtension;)V

    return-void

    :cond_2
    const-string v0, "GeckoView:BrowserAction:Update"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-direct {p0, p2, p7, v1}, Lorg/mozilla/geckoview/WebExtensionController;->actionUpdate(Lorg/mozilla/geckoview/WebExtensionController$Message;Lorg/mozilla/geckoview/WebExtension;I)V

    return-void

    :cond_3
    const-string v0, "GeckoView:PageAction:Update"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_4

    invoke-direct {p0, p2, p7, v2}, Lorg/mozilla/geckoview/WebExtensionController;->actionUpdate(Lorg/mozilla/geckoview/WebExtensionController$Message;Lorg/mozilla/geckoview/WebExtension;I)V

    return-void

    :cond_4
    const-string v0, "GeckoView:BrowserAction:OpenPopup"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p2, p7, v1}, Lorg/mozilla/geckoview/WebExtensionController;->openPopup(Lorg/mozilla/geckoview/WebExtensionController$Message;Lorg/mozilla/geckoview/WebExtension;I)V

    return-void

    :cond_5
    const-string v0, "GeckoView:PageAction:OpenPopup"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, p2, p7, v2}, Lorg/mozilla/geckoview/WebExtensionController;->openPopup(Lorg/mozilla/geckoview/WebExtensionController$Message;Lorg/mozilla/geckoview/WebExtension;I)V

    return-void

    :cond_6
    const-string v0, "GeckoView:WebExtension:OpenOptionsPage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, p2, p7}, Lorg/mozilla/geckoview/WebExtensionController;->openOptionsPage(Lorg/mozilla/geckoview/WebExtensionController$Message;Lorg/mozilla/geckoview/WebExtension;)V

    return-void

    :cond_7
    const-string v0, "nativeApp"

    invoke-virtual {p3, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9

    sget-boolean p1, Lorg/mozilla/geckoview/BuildConfig;->DEBUG:Z

    if-nez p1, :cond_8

    const-string p1, "Missing nativeApp parameter."

    invoke-interface {p4, p1}, Lorg/mozilla/gecko/util/EventCallback;->sendError(Ljava/lang/Object;)V

    return-void

    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Missing required nativeApp message parameter."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    invoke-direct {p0, p7, p5, p6}, Lorg/mozilla/geckoview/WebExtensionController;->fromBundle(Lorg/mozilla/geckoview/WebExtension;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/geckoview/GeckoSession;)Lorg/mozilla/geckoview/WebExtension$MessageSender;

    move-result-object v6

    if-nez v6, :cond_c

    if-eqz p4, :cond_b

    sget-boolean p1, Lorg/mozilla/geckoview/BuildConfig;->DEBUG:Z

    if-eqz p1, :cond_a

    :try_start_0
    invoke-virtual {p3}, Lorg/mozilla/gecko/util/GeckoBundle;->toJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Could not find recipient for "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "sender"

    invoke-virtual {p3, p2}, Lorg/mozilla/gecko/util/GeckoBundle;->getBundle(Ljava/lang/String;)Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p1}, Lorg/mozilla/gecko/util/EventCallback;->sendError(Ljava/lang/Object;)V

    :cond_b
    return-void

    :cond_c
    const-string p4, "GeckoView:WebExtension:Connect"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_d

    const-string p1, "portId"

    const-wide/16 p4, -0x1

    invoke-virtual {p3, p1, p4, p5}, Lorg/mozilla/gecko/util/GeckoBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lorg/mozilla/geckoview/WebExtensionController;->connect(Ljava/lang/String;JLorg/mozilla/geckoview/WebExtensionController$Message;Lorg/mozilla/geckoview/WebExtension$MessageSender;)V

    goto :goto_0

    :cond_d
    const-string p3, "GeckoView:WebExtension:Message"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-direct {p0, v2, p2, v6}, Lorg/mozilla/geckoview/WebExtensionController;->message(Ljava/lang/String;Lorg/mozilla/geckoview/WebExtensionController$Message;Lorg/mozilla/geckoview/WebExtension$MessageSender;)V

    :cond_e
    :goto_0
    return-void
.end method

.method private synthetic lambda$install$0(Lorg/mozilla/geckoview/WebExtension;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/mozilla/geckoview/WebExtensionController;->registerWebExtension(Lorg/mozilla/geckoview/WebExtension;)V

    invoke-static {p1}, Lorg/mozilla/geckoview/GeckoResult;->fromValue(Ljava/lang/Object;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$installBuiltIn$2(Lorg/mozilla/geckoview/WebExtension;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/mozilla/geckoview/WebExtensionController;->registerWebExtension(Lorg/mozilla/geckoview/WebExtension;)V

    invoke-static {p1}, Lorg/mozilla/geckoview/GeckoResult;->fromValue(Ljava/lang/Object;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic lambda$installPrompt$9(Lorg/mozilla/gecko/util/EventCallback;Lorg/mozilla/geckoview/AllowOrDeny;)V
    .locals 2

    new-instance v0, Lorg/mozilla/gecko/util/GeckoBundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/mozilla/gecko/util/GeckoBundle;-><init>(I)V

    sget-object v1, Lorg/mozilla/geckoview/AllowOrDeny;->ALLOW:Lorg/mozilla/geckoview/AllowOrDeny;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v1, "allow"

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-interface {p0, v0}, Lorg/mozilla/gecko/util/EventCallback;->sendSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$message$14(Lorg/mozilla/gecko/util/EventCallback;Ljava/lang/Object;)V
    .locals 0

    invoke-interface {p0, p1}, Lorg/mozilla/gecko/util/EventCallback;->sendSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$message$15(Lorg/mozilla/gecko/util/EventCallback;Ljava/lang/Throwable;)V
    .locals 0

    invoke-interface {p0, p1}, Lorg/mozilla/gecko/util/EventCallback;->sendError(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$newTab$11(Lorg/mozilla/geckoview/WebExtensionController$Message;Lorg/mozilla/geckoview/GeckoSession;)V
    .locals 1

    if-nez p2, :cond_0

    iget-object p1, p1, Lorg/mozilla/geckoview/WebExtensionController$Message;->callback:Lorg/mozilla/gecko/util/EventCallback;

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1, p2}, Lorg/mozilla/gecko/util/EventCallback;->sendSuccess(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Lorg/mozilla/geckoview/GeckoSession;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/mozilla/geckoview/WebExtensionController;->mListener:Lorg/mozilla/geckoview/WebExtension$Listener;

    iget-object v0, v0, Lorg/mozilla/geckoview/WebExtension$Listener;->runtime:Lorg/mozilla/geckoview/GeckoRuntime;

    invoke-virtual {p2, v0}, Lorg/mozilla/geckoview/GeckoSession;->open(Lorg/mozilla/geckoview/GeckoRuntime;)V

    iget-object p1, p1, Lorg/mozilla/geckoview/WebExtensionController$Message;->callback:Lorg/mozilla/gecko/util/EventCallback;

    invoke-virtual {p2}, Lorg/mozilla/geckoview/GeckoSession;->getId()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must use an unopened GeckoSession instance"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private synthetic lambda$setAllowedInPrivateBrowsing$1(Lorg/mozilla/geckoview/WebExtension;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/mozilla/geckoview/WebExtensionController;->registerWebExtension(Lorg/mozilla/geckoview/WebExtension;)V

    invoke-static {p1}, Lorg/mozilla/geckoview/GeckoResult;->fromValue(Ljava/lang/Object;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$uninstall$4(Lorg/mozilla/geckoview/WebExtension;Ljava/lang/Void;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/mozilla/geckoview/WebExtensionController;->unregisterWebExtension(Lorg/mozilla/geckoview/WebExtension;)V

    invoke-static {p2}, Lorg/mozilla/geckoview/GeckoResult;->fromValue(Ljava/lang/Object;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$update$7(Lorg/mozilla/geckoview/WebExtension;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lorg/mozilla/geckoview/WebExtensionController;->registerWebExtension(Lorg/mozilla/geckoview/WebExtension;)V

    :cond_0
    invoke-static {p1}, Lorg/mozilla/geckoview/GeckoResult;->fromValue(Ljava/lang/Object;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic lambda$updatePrompt$10(Lorg/mozilla/gecko/util/EventCallback;Lorg/mozilla/geckoview/AllowOrDeny;)V
    .locals 2

    new-instance v0, Lorg/mozilla/gecko/util/GeckoBundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/mozilla/gecko/util/GeckoBundle;-><init>(I)V

    sget-object v1, Lorg/mozilla/geckoview/AllowOrDeny;->ALLOW:Lorg/mozilla/geckoview/AllowOrDeny;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v1, "allow"

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-interface {p0, v0}, Lorg/mozilla/gecko/util/EventCallback;->sendSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$updateTab$12(Lorg/mozilla/gecko/util/EventCallback;Lorg/mozilla/geckoview/AllowOrDeny;)V
    .locals 2

    sget-object v0, Lorg/mozilla/geckoview/AllowOrDeny;->ALLOW:Lorg/mozilla/geckoview/AllowOrDeny;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    invoke-interface {p0, v1}, Lorg/mozilla/gecko/util/EventCallback;->sendSuccess(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {p0, v1}, Lorg/mozilla/gecko/util/EventCallback;->sendError(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static synthetic m(Lorg/mozilla/geckoview/WebExtensionController;Lorg/mozilla/geckoview/WebExtension;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/WebExtensionController;->lambda$disable$6(Lorg/mozilla/geckoview/WebExtension;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p0

    return-object p0
.end method

.method private message(Ljava/lang/String;Lorg/mozilla/geckoview/WebExtensionController$Message;Lorg/mozilla/geckoview/WebExtension$MessageSender;)V
    .locals 3

    iget-object v0, p2, Lorg/mozilla/geckoview/WebExtensionController$Message;->callback:Lorg/mozilla/gecko/util/EventCallback;

    :try_start_0
    iget-object v1, p2, Lorg/mozilla/geckoview/WebExtensionController$Message;->bundle:Lorg/mozilla/gecko/util/GeckoBundle;

    invoke-virtual {v1}, Lorg/mozilla/gecko/util/GeckoBundle;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, p1, p3, v0}, Lorg/mozilla/geckoview/WebExtensionController;->getDelegate(Ljava/lang/String;Lorg/mozilla/geckoview/WebExtension$MessageSender;Lorg/mozilla/gecko/util/EventCallback;)Lorg/mozilla/geckoview/WebExtension$MessageDelegate;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object p1, p0, Lorg/mozilla/geckoview/WebExtensionController;->mPendingMessages:Lorg/mozilla/gecko/MultiMap;

    iget-object p3, p3, Lorg/mozilla/geckoview/WebExtension$MessageSender;->webExtension:Lorg/mozilla/geckoview/WebExtension;

    iget-object p3, p3, Lorg/mozilla/geckoview/WebExtension;->id:Ljava/lang/String;

    invoke-virtual {p1, p3, p2}, Lorg/mozilla/gecko/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-interface {v2, p1, v1, p3}, Lorg/mozilla/geckoview/WebExtension$MessageDelegate;->onMessage(Ljava/lang/String;Ljava/lang/Object;Lorg/mozilla/geckoview/WebExtension$MessageSender;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    invoke-interface {v0, p1}, Lorg/mozilla/gecko/util/EventCallback;->sendSuccess(Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance p2, Lorg/mozilla/geckoview/a;

    const/16 p3, 0x16

    invoke-direct {p2, v0, p3}, Lorg/mozilla/geckoview/a;-><init>(Lorg/mozilla/gecko/util/EventCallback;I)V

    new-instance p3, Lorg/mozilla/geckoview/a;

    const/16 v1, 0x17

    invoke-direct {p3, v0, v1}, Lorg/mozilla/geckoview/a;-><init>(Lorg/mozilla/gecko/util/EventCallback;I)V

    invoke-virtual {p1, p2, p3}, Lorg/mozilla/geckoview/GeckoResult;->accept(Lorg/mozilla/geckoview/GeckoResult$Consumer;Lorg/mozilla/geckoview/GeckoResult$Consumer;)Lorg/mozilla/geckoview/GeckoResult;

    return-void

    :catch_0
    move-exception p1

    invoke-interface {v0, p1}, Lorg/mozilla/gecko/util/EventCallback;->sendError(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic n(Lorg/mozilla/geckoview/WebExtensionController;Lorg/mozilla/geckoview/WebExtension;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/WebExtensionController;->lambda$setAllowedInPrivateBrowsing$1(Lorg/mozilla/geckoview/WebExtension;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Lorg/mozilla/gecko/util/EventCallback;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/mozilla/geckoview/WebExtensionController;->lambda$message$14(Lorg/mozilla/gecko/util/EventCallback;Ljava/lang/Object;)V

    return-void
.end method

.method private openPopup(Lorg/mozilla/geckoview/WebExtensionController$Message;Lorg/mozilla/geckoview/WebExtension;I)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/mozilla/geckoview/WebExtension$Action;

    iget-object v1, p1, Lorg/mozilla/geckoview/WebExtensionController$Message;->bundle:Lorg/mozilla/gecko/util/GeckoBundle;

    const-string v2, "action"

    invoke-virtual {v1, v2}, Lorg/mozilla/gecko/util/GeckoBundle;->getBundle(Ljava/lang/String;)Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object v1

    invoke-direct {v0, p3, v1, p2}, Lorg/mozilla/geckoview/WebExtension$Action;-><init>(ILorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/geckoview/WebExtension;)V

    iget-object p1, p1, Lorg/mozilla/geckoview/WebExtensionController$Message;->session:Lorg/mozilla/geckoview/GeckoSession;

    invoke-direct {p0, p2, p1}, Lorg/mozilla/geckoview/WebExtensionController;->actionDelegateFor(Lorg/mozilla/geckoview/WebExtension;Lorg/mozilla/geckoview/GeckoSession;)Lorg/mozilla/geckoview/WebExtension$ActionDelegate;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-interface {p1, p2, v0}, Lorg/mozilla/geckoview/WebExtension$ActionDelegate;->onOpenPopup(Lorg/mozilla/geckoview/WebExtension;Lorg/mozilla/geckoview/WebExtension$Action;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/WebExtension$Action;->openPopup(Lorg/mozilla/geckoview/GeckoResult;)V

    return-void
.end method

.method public static synthetic p(Lorg/mozilla/gecko/util/EventCallback;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/mozilla/geckoview/WebExtensionController;->lambda$message$15(Lorg/mozilla/gecko/util/EventCallback;Ljava/lang/Throwable;)V

    return-void
.end method

.method private portMessage(Lorg/mozilla/geckoview/WebExtensionController$Message;)V
    .locals 5

    iget-object v0, p1, Lorg/mozilla/geckoview/WebExtensionController$Message;->bundle:Lorg/mozilla/gecko/util/GeckoBundle;

    const-string v1, "portId"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/mozilla/gecko/util/GeckoBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iget-object v3, p0, Lorg/mozilla/geckoview/WebExtensionController;->mPorts:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mozilla/geckoview/WebExtension$Port;

    if-nez v3, :cond_1

    sget-boolean v3, Lorg/mozilla/geckoview/BuildConfig;->DEBUG:Z

    if-eqz v3, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lorg/mozilla/gecko/util/GeckoBundle;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iget-object v0, p0, Lorg/mozilla/geckoview/WebExtensionController;->mPendingPortMessages:Lorg/mozilla/gecko/MultiMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/gecko/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lorg/mozilla/gecko/util/GeckoBundle;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "data"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v4, v3, Lorg/mozilla/geckoview/WebExtension$Port;->delegate:Lorg/mozilla/geckoview/WebExtension$PortDelegate;

    if-nez v4, :cond_2

    iget-object v0, p0, Lorg/mozilla/geckoview/WebExtensionController;->mPendingPortMessages:Lorg/mozilla/gecko/MultiMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/gecko/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-interface {v4, v0, v3}, Lorg/mozilla/geckoview/WebExtension$PortDelegate;->onPortMessage(Ljava/lang/Object;Lorg/mozilla/geckoview/WebExtension$Port;)V

    iget-object p1, p1, Lorg/mozilla/geckoview/WebExtensionController$Message;->callback:Lorg/mozilla/gecko/util/EventCallback;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/mozilla/gecko/util/EventCallback;->sendSuccess(Ljava/lang/Object;)V

    return-void

    :catch_1
    move-exception v0

    iget-object p1, p1, Lorg/mozilla/geckoview/WebExtensionController$Message;->callback:Lorg/mozilla/gecko/util/EventCallback;

    invoke-interface {p1, v0}, Lorg/mozilla/gecko/util/EventCallback;->sendError(Ljava/lang/Object;)V

    return-void
.end method

.method private updatePrompt(Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V
    .locals 4

    const-string v0, "currentlyInstalled"

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getBundle(Ljava/lang/String;)Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object v0

    const-string v1, "updatedExtension"

    invoke-virtual {p1, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->getBundle(Ljava/lang/String;)Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object v1

    const-string v2, "newPermissions"

    invoke-virtual {p1, v2}, Lorg/mozilla/gecko/util/GeckoBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string v3, "newOrigins"

    invoke-virtual {p1, v3}, Lorg/mozilla/gecko/util/GeckoBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_3

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Lorg/mozilla/geckoview/WebExtension;

    invoke-direct {v3, v0}, Lorg/mozilla/geckoview/WebExtension;-><init>(Lorg/mozilla/gecko/util/GeckoBundle;)V

    new-instance v0, Lorg/mozilla/geckoview/WebExtensionController$DelegateController;

    invoke-direct {v0, p0, v3}, Lorg/mozilla/geckoview/WebExtensionController$DelegateController;-><init>(Lorg/mozilla/geckoview/WebExtensionController;Lorg/mozilla/geckoview/WebExtension;)V

    invoke-virtual {v3, v0}, Lorg/mozilla/geckoview/WebExtension;->setDelegateController(Lorg/mozilla/geckoview/WebExtension$DelegateController;)V

    new-instance v0, Lorg/mozilla/geckoview/WebExtension;

    invoke-direct {v0, v1}, Lorg/mozilla/geckoview/WebExtension;-><init>(Lorg/mozilla/gecko/util/GeckoBundle;)V

    new-instance v1, Lorg/mozilla/geckoview/WebExtensionController$DelegateController;

    invoke-direct {v1, p0, v0}, Lorg/mozilla/geckoview/WebExtensionController$DelegateController;-><init>(Lorg/mozilla/geckoview/WebExtensionController;Lorg/mozilla/geckoview/WebExtension;)V

    invoke-virtual {v0, v1}, Lorg/mozilla/geckoview/WebExtension;->setDelegateController(Lorg/mozilla/geckoview/WebExtension$DelegateController;)V

    iget-object v1, p0, Lorg/mozilla/geckoview/WebExtensionController;->mPromptDelegate:Lorg/mozilla/geckoview/WebExtensionController$PromptDelegate;

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-interface {v1, v3, v0, v2, p1}, Lorg/mozilla/geckoview/WebExtensionController$PromptDelegate;->onUpdatePrompt(Lorg/mozilla/geckoview/WebExtension;Lorg/mozilla/geckoview/WebExtension;[Ljava/lang/String;[Ljava/lang/String;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    new-instance v0, Lorg/mozilla/geckoview/a;

    const/16 v1, 0x15

    invoke-direct {v0, p2, v1}, Lorg/mozilla/geckoview/a;-><init>(Lorg/mozilla/gecko/util/EventCallback;I)V

    invoke-virtual {p1, v0}, Lorg/mozilla/geckoview/GeckoResult;->accept(Lorg/mozilla/geckoview/GeckoResult$Consumer;)Lorg/mozilla/geckoview/GeckoResult;

    return-void

    :cond_3
    :goto_0
    sget-boolean p1, Lorg/mozilla/geckoview/BuildConfig;->DEBUG:Z

    if-nez p1, :cond_4

    return-void

    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Missing bundle"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public closeTab(Lorg/mozilla/geckoview/WebExtensionController$Message;Lorg/mozilla/geckoview/WebExtension;)V
    .locals 2

    iget-object v0, p1, Lorg/mozilla/geckoview/WebExtensionController$Message;->session:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->getWebExtensionController()Lorg/mozilla/geckoview/WebExtension$SessionController;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/mozilla/geckoview/WebExtension$SessionController;->getTabDelegate(Lorg/mozilla/geckoview/WebExtension;)Lorg/mozilla/geckoview/WebExtension$SessionTabDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p1, Lorg/mozilla/geckoview/WebExtensionController$Message;->session:Lorg/mozilla/geckoview/GeckoSession;

    invoke-interface {v0, p2, v1}, Lorg/mozilla/geckoview/WebExtension$SessionTabDelegate;->onCloseTab(Lorg/mozilla/geckoview/WebExtension;Lorg/mozilla/geckoview/GeckoSession;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p2

    goto :goto_0

    :cond_0
    sget-object p2, Lorg/mozilla/geckoview/AllowOrDeny;->DENY:Lorg/mozilla/geckoview/AllowOrDeny;

    invoke-static {p2}, Lorg/mozilla/geckoview/GeckoResult;->fromValue(Ljava/lang/Object;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p2

    :goto_0
    new-instance v0, Lorg/mozilla/geckoview/g;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lorg/mozilla/geckoview/g;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p2, v0}, Lorg/mozilla/geckoview/GeckoResult;->accept(Lorg/mozilla/geckoview/GeckoResult$Consumer;)Lorg/mozilla/geckoview/GeckoResult;

    return-void
.end method

.method public delegateFor(Lorg/mozilla/geckoview/WebExtension;)Lorg/mozilla/geckoview/WebExtensionController$DelegateController;
    .locals 1

    new-instance v0, Lorg/mozilla/geckoview/WebExtensionController$DelegateController;

    invoke-direct {v0, p0, p1}, Lorg/mozilla/geckoview/WebExtensionController$DelegateController;-><init>(Lorg/mozilla/geckoview/WebExtensionController;Lorg/mozilla/geckoview/WebExtension;)V

    return-object v0
.end method

.method public disable(Lorg/mozilla/geckoview/WebExtension;I)Lorg/mozilla/geckoview/GeckoResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/geckoview/WebExtension;",
            "I)",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Lorg/mozilla/geckoview/WebExtension;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/mozilla/geckoview/WebExtensionController$WebExtensionResult;

    const-string v1, "extension"

    invoke-direct {v0, v1}, Lorg/mozilla/geckoview/WebExtensionController$WebExtensionResult;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/mozilla/gecko/util/GeckoBundle;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lorg/mozilla/gecko/util/GeckoBundle;-><init>(I)V

    const-string v2, "webExtensionId"

    iget-object p1, p1, Lorg/mozilla/geckoview/WebExtension;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "source"

    invoke-static {p2}, Lorg/mozilla/geckoview/WebExtensionController$EnableSource;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lorg/mozilla/gecko/util/GeckoBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/mozilla/gecko/EventDispatcher;->getInstance()Lorg/mozilla/gecko/EventDispatcher;

    move-result-object p1

    const-string p2, "GeckoView:WebExtension:Disable"

    invoke-virtual {p1, p2, v1, v0}, Lorg/mozilla/gecko/EventDispatcher;->dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V

    new-instance p1, Lorg/mozilla/geckoview/o;

    const/4 p2, 0x6

    invoke-direct {p1, p0, p2}, Lorg/mozilla/geckoview/o;-><init>(Lorg/mozilla/geckoview/WebExtensionController;I)V

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/GeckoResult;->then(Lorg/mozilla/geckoview/GeckoResult$OnValueListener;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    return-object p1
.end method

.method public enable(Lorg/mozilla/geckoview/WebExtension;I)Lorg/mozilla/geckoview/GeckoResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/geckoview/WebExtension;",
            "I)",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Lorg/mozilla/geckoview/WebExtension;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/mozilla/geckoview/WebExtensionController$WebExtensionResult;

    const-string v1, "extension"

    invoke-direct {v0, v1}, Lorg/mozilla/geckoview/WebExtensionController$WebExtensionResult;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/mozilla/gecko/util/GeckoBundle;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lorg/mozilla/gecko/util/GeckoBundle;-><init>(I)V

    const-string v2, "webExtensionId"

    iget-object p1, p1, Lorg/mozilla/geckoview/WebExtension;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "source"

    invoke-static {p2}, Lorg/mozilla/geckoview/WebExtensionController$EnableSource;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lorg/mozilla/gecko/util/GeckoBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/mozilla/gecko/EventDispatcher;->getInstance()Lorg/mozilla/gecko/EventDispatcher;

    move-result-object p1

    const-string p2, "GeckoView:WebExtension:Enable"

    invoke-virtual {p1, p2, v1, v0}, Lorg/mozilla/gecko/EventDispatcher;->dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V

    new-instance p1, Lorg/mozilla/geckoview/o;

    const/4 p2, 0x3

    invoke-direct {p1, p0, p2}, Lorg/mozilla/geckoview/o;-><init>(Lorg/mozilla/geckoview/WebExtensionController;I)V

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/GeckoResult;->then(Lorg/mozilla/geckoview/GeckoResult$OnValueListener;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    return-object p1
.end method

.method public ensureBuiltIn(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Lorg/mozilla/geckoview/WebExtension;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/mozilla/geckoview/WebExtensionController$WebExtensionInstallResult;

    invoke-direct {v0}, Lorg/mozilla/geckoview/WebExtensionController$WebExtensionInstallResult;-><init>()V

    new-instance v1, Lorg/mozilla/gecko/util/GeckoBundle;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lorg/mozilla/gecko/util/GeckoBundle;-><init>(I)V

    const-string v2, "locationUri"

    invoke-virtual {v1, v2, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "webExtensionId"

    invoke-virtual {v1, p1, p2}, Lorg/mozilla/gecko/util/GeckoBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/mozilla/gecko/EventDispatcher;->getInstance()Lorg/mozilla/gecko/EventDispatcher;

    move-result-object p1

    const-string p2, "GeckoView:WebExtension:EnsureBuiltIn"

    invoke-virtual {p1, p2, v1, v0}, Lorg/mozilla/gecko/EventDispatcher;->dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V

    new-instance p1, Lorg/mozilla/geckoview/o;

    const/4 p2, 0x4

    invoke-direct {p1, p0, p2}, Lorg/mozilla/geckoview/o;-><init>(Lorg/mozilla/geckoview/WebExtensionController;I)V

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/GeckoResult;->then(Lorg/mozilla/geckoview/GeckoResult$OnValueListener;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    return-object p1
.end method

.method public getPromptDelegate()Lorg/mozilla/geckoview/WebExtensionController$PromptDelegate;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/WebExtensionController;->mPromptDelegate:Lorg/mozilla/geckoview/WebExtensionController$PromptDelegate;

    return-object v0
.end method

.method public handleMessage(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;Lorg/mozilla/geckoview/GeckoSession;)V
    .locals 10

    new-instance v3, Lorg/mozilla/geckoview/WebExtensionController$Message;

    invoke-direct {v3, p1, p2, p3, p4}, Lorg/mozilla/geckoview/WebExtensionController$Message;-><init>(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;Lorg/mozilla/geckoview/GeckoSession;)V

    const-string v0, "GeckoView:WebExtension:Disconnect"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "portId"

    const-wide/16 v0, -0x1

    invoke-virtual {p2, p1, v0, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    invoke-direct {p0, p1, p2, p3}, Lorg/mozilla/geckoview/WebExtensionController;->disconnect(JLorg/mozilla/gecko/util/EventCallback;)V

    return-void

    :cond_0
    const-string v0, "GeckoView:WebExtension:PortMessage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v3}, Lorg/mozilla/geckoview/WebExtensionController;->portMessage(Lorg/mozilla/geckoview/WebExtensionController$Message;)V

    return-void

    :cond_1
    const-string v0, "GeckoView:WebExtension:InstallPrompt"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p2, p3}, Lorg/mozilla/geckoview/WebExtensionController;->installPrompt(Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V

    return-void

    :cond_2
    const-string v0, "GeckoView:WebExtension:UpdatePrompt"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p2, p3}, Lorg/mozilla/geckoview/WebExtensionController;->updatePrompt(Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V

    return-void

    :cond_3
    const-string v0, "GeckoView:WebExtension:DebuggerListUpdated"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lorg/mozilla/geckoview/WebExtensionController;->mDebuggerDelegate:Lorg/mozilla/geckoview/WebExtensionController$DebuggerDelegate;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lorg/mozilla/geckoview/WebExtensionController$DebuggerDelegate;->onExtensionListUpdated()V

    :cond_4
    return-void

    :cond_5
    const-string v0, "GeckoView:WebExtension:Connect"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "GeckoView:WebExtension:Message"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_6
    move-object v6, p2

    goto :goto_1

    :cond_7
    :goto_0
    const-string v0, "sender"

    invoke-virtual {p2, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getBundle(Ljava/lang/String;)Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object v0

    move-object v6, v0

    :goto_1
    invoke-direct {p0, v6}, Lorg/mozilla/geckoview/WebExtensionController;->extensionFromBundle(Lorg/mozilla/gecko/util/GeckoBundle;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object v8

    new-instance v9, Lorg/mozilla/geckoview/p;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lorg/mozilla/geckoview/p;-><init>(Lorg/mozilla/geckoview/WebExtensionController;Ljava/lang/String;Lorg/mozilla/geckoview/WebExtensionController$Message;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/geckoview/GeckoSession;)V

    invoke-virtual {v8, v9}, Lorg/mozilla/geckoview/GeckoResult;->accept(Lorg/mozilla/geckoview/GeckoResult$Consumer;)Lorg/mozilla/geckoview/GeckoResult;

    return-void
.end method

.method public install(Ljava/lang/String;)Lorg/mozilla/geckoview/GeckoResult;
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

    new-instance v0, Lorg/mozilla/geckoview/WebExtensionController$WebExtensionInstallResult;

    invoke-direct {v0}, Lorg/mozilla/geckoview/WebExtensionController$WebExtensionInstallResult;-><init>()V

    new-instance v1, Lorg/mozilla/gecko/util/GeckoBundle;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lorg/mozilla/gecko/util/GeckoBundle;-><init>(I)V

    const-string v2, "locationUri"

    invoke-virtual {v1, v2, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "installId"

    iget-object v2, v0, Lorg/mozilla/geckoview/WebExtensionController$WebExtensionInstallResult;->installId:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lorg/mozilla/gecko/util/GeckoBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/mozilla/gecko/EventDispatcher;->getInstance()Lorg/mozilla/gecko/EventDispatcher;

    move-result-object p1

    const-string v2, "GeckoView:WebExtension:Install"

    invoke-virtual {p1, v2, v1, v0}, Lorg/mozilla/gecko/EventDispatcher;->dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V

    new-instance p1, Lorg/mozilla/geckoview/o;

    const/4 v1, 0x5

    invoke-direct {p1, p0, v1}, Lorg/mozilla/geckoview/o;-><init>(Lorg/mozilla/geckoview/WebExtensionController;I)V

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/GeckoResult;->then(Lorg/mozilla/geckoview/GeckoResult$OnValueListener;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    return-object p1
.end method

.method public installBuiltIn(Ljava/lang/String;)Lorg/mozilla/geckoview/GeckoResult;
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

    new-instance v0, Lorg/mozilla/geckoview/WebExtensionController$WebExtensionInstallResult;

    invoke-direct {v0}, Lorg/mozilla/geckoview/WebExtensionController$WebExtensionInstallResult;-><init>()V

    new-instance v1, Lorg/mozilla/gecko/util/GeckoBundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lorg/mozilla/gecko/util/GeckoBundle;-><init>(I)V

    const-string v2, "locationUri"

    invoke-virtual {v1, v2, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/mozilla/gecko/EventDispatcher;->getInstance()Lorg/mozilla/gecko/EventDispatcher;

    move-result-object p1

    const-string v2, "GeckoView:WebExtension:InstallBuiltIn"

    invoke-virtual {p1, v2, v1, v0}, Lorg/mozilla/gecko/EventDispatcher;->dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V

    new-instance p1, Lorg/mozilla/geckoview/o;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lorg/mozilla/geckoview/o;-><init>(Lorg/mozilla/geckoview/WebExtensionController;I)V

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/GeckoResult;->then(Lorg/mozilla/geckoview/GeckoResult$OnValueListener;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    return-object p1
.end method

.method public list()Lorg/mozilla/geckoview/GeckoResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Ljava/util/List<",
            "Lorg/mozilla/geckoview/WebExtension;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lorg/mozilla/geckoview/WebExtensionController$2;

    invoke-direct {v0, p0}, Lorg/mozilla/geckoview/WebExtensionController$2;-><init>(Lorg/mozilla/geckoview/WebExtensionController;)V

    invoke-static {}, Lorg/mozilla/gecko/EventDispatcher;->getInstance()Lorg/mozilla/gecko/EventDispatcher;

    move-result-object v1

    const-string v2, "GeckoView:WebExtension:List"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lorg/mozilla/gecko/EventDispatcher;->dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V

    return-object v0
.end method

.method public newTab(Lorg/mozilla/geckoview/WebExtensionController$Message;Lorg/mozilla/geckoview/WebExtension;)V
    .locals 4

    iget-object v0, p1, Lorg/mozilla/geckoview/WebExtensionController$Message;->bundle:Lorg/mozilla/gecko/util/GeckoBundle;

    iget-object v1, p0, Lorg/mozilla/geckoview/WebExtensionController;->mListener:Lorg/mozilla/geckoview/WebExtension$Listener;

    invoke-virtual {v1, p2}, Lorg/mozilla/geckoview/WebExtension$Listener;->getTabDelegate(Lorg/mozilla/geckoview/WebExtension;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/geckoview/WebExtension$TabDelegate;

    new-instance v2, Lorg/mozilla/geckoview/WebExtension$CreateTabDetails;

    const-string v3, "createProperties"

    invoke-virtual {v0, v3}, Lorg/mozilla/gecko/util/GeckoBundle;->getBundle(Ljava/lang/String;)Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/mozilla/geckoview/WebExtension$CreateTabDetails;-><init>(Lorg/mozilla/gecko/util/GeckoBundle;)V

    if-eqz v1, :cond_1

    invoke-interface {v1, p2, v2}, Lorg/mozilla/geckoview/WebExtension$TabDelegate;->onNewTab(Lorg/mozilla/geckoview/WebExtension;Lorg/mozilla/geckoview/WebExtension$CreateTabDetails;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p2

    if-nez p2, :cond_0

    iget-object p1, p1, Lorg/mozilla/geckoview/WebExtensionController$Message;->callback:Lorg/mozilla/gecko/util/EventCallback;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lorg/mozilla/gecko/util/EventCallback;->sendSuccess(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Lorg/mozilla/geckoview/j;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Lorg/mozilla/geckoview/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Lorg/mozilla/geckoview/GeckoResult;->accept(Lorg/mozilla/geckoview/GeckoResult$Consumer;)Lorg/mozilla/geckoview/GeckoResult;

    return-void

    :cond_1
    iget-object v0, p0, Lorg/mozilla/geckoview/WebExtensionController;->mPendingNewTab:Lorg/mozilla/gecko/MultiMap;

    iget-object p2, p2, Lorg/mozilla/geckoview/WebExtension;->id:Ljava/lang/String;

    invoke-virtual {v0, p2, p1}, Lorg/mozilla/gecko/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public openOptionsPage(Lorg/mozilla/geckoview/WebExtensionController$Message;Lorg/mozilla/geckoview/WebExtension;)V
    .locals 1

    iget-object v0, p1, Lorg/mozilla/geckoview/WebExtensionController$Message;->bundle:Lorg/mozilla/gecko/util/GeckoBundle;

    iget-object v0, p0, Lorg/mozilla/geckoview/WebExtensionController;->mListener:Lorg/mozilla/geckoview/WebExtension$Listener;

    invoke-virtual {v0, p2}, Lorg/mozilla/geckoview/WebExtension$Listener;->getTabDelegate(Lorg/mozilla/geckoview/WebExtension;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/geckoview/WebExtension$TabDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Lorg/mozilla/geckoview/WebExtension$TabDelegate;->onOpenOptionsPage(Lorg/mozilla/geckoview/WebExtension;)V

    :cond_0
    iget-object p1, p1, Lorg/mozilla/geckoview/WebExtensionController$Message;->callback:Lorg/mozilla/gecko/util/EventCallback;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lorg/mozilla/gecko/util/EventCallback;->sendSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public registerWebExtension(Lorg/mozilla/geckoview/WebExtension;)V
    .locals 2

    new-instance v0, Lorg/mozilla/geckoview/WebExtensionController$DelegateController;

    invoke-direct {v0, p0, p1}, Lorg/mozilla/geckoview/WebExtensionController$DelegateController;-><init>(Lorg/mozilla/geckoview/WebExtensionController;Lorg/mozilla/geckoview/WebExtension;)V

    invoke-virtual {p1, v0}, Lorg/mozilla/geckoview/WebExtension;->setDelegateController(Lorg/mozilla/geckoview/WebExtension$DelegateController;)V

    iget-object v0, p0, Lorg/mozilla/geckoview/WebExtensionController;->mExtensions:Lorg/mozilla/geckoview/WebExtensionController$ExtensionStore;

    iget-object v1, p1, Lorg/mozilla/geckoview/WebExtension;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/geckoview/WebExtensionController$ExtensionStore;->update(Ljava/lang/String;Lorg/mozilla/geckoview/WebExtension;)V

    return-void
.end method

.method public setAllowedInPrivateBrowsing(Lorg/mozilla/geckoview/WebExtension;Z)Lorg/mozilla/geckoview/GeckoResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/geckoview/WebExtension;",
            "Z)",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Lorg/mozilla/geckoview/WebExtension;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/mozilla/geckoview/WebExtensionController$WebExtensionResult;

    const-string v1, "extension"

    invoke-direct {v0, v1}, Lorg/mozilla/geckoview/WebExtensionController$WebExtensionResult;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/mozilla/gecko/util/GeckoBundle;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lorg/mozilla/gecko/util/GeckoBundle;-><init>(I)V

    const-string v2, "extensionId"

    iget-object p1, p1, Lorg/mozilla/geckoview/WebExtension;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "allowed"

    invoke-virtual {v1, p1, p2}, Lorg/mozilla/gecko/util/GeckoBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lorg/mozilla/gecko/EventDispatcher;->getInstance()Lorg/mozilla/gecko/EventDispatcher;

    move-result-object p1

    const-string p2, "GeckoView:WebExtension:SetPBAllowed"

    invoke-virtual {p1, p2, v1, v0}, Lorg/mozilla/gecko/EventDispatcher;->dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V

    new-instance p1, Lorg/mozilla/geckoview/o;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lorg/mozilla/geckoview/o;-><init>(Lorg/mozilla/geckoview/WebExtensionController;I)V

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/GeckoResult;->then(Lorg/mozilla/geckoview/GeckoResult$OnValueListener;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    return-object p1
.end method

.method public setDebuggerDelegate(Lorg/mozilla/geckoview/WebExtensionController$DebuggerDelegate;)V
    .locals 3

    const-string v0, "GeckoView:WebExtension:DebuggerListUpdated"

    if-nez p1, :cond_0

    iget-object v1, p0, Lorg/mozilla/geckoview/WebExtensionController;->mDebuggerDelegate:Lorg/mozilla/geckoview/WebExtensionController$DebuggerDelegate;

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/mozilla/gecko/EventDispatcher;->getInstance()Lorg/mozilla/gecko/EventDispatcher;

    move-result-object v1

    iget-object v2, p0, Lorg/mozilla/geckoview/WebExtensionController;->mInternals:Lorg/mozilla/geckoview/WebExtensionController$Internals;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/mozilla/gecko/EventDispatcher;->unregisterUiThreadListener(Lorg/mozilla/gecko/util/BundleEventListener;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lorg/mozilla/geckoview/WebExtensionController;->mDebuggerDelegate:Lorg/mozilla/geckoview/WebExtensionController$DebuggerDelegate;

    if-nez v1, :cond_1

    invoke-static {}, Lorg/mozilla/gecko/EventDispatcher;->getInstance()Lorg/mozilla/gecko/EventDispatcher;

    move-result-object v1

    iget-object v2, p0, Lorg/mozilla/geckoview/WebExtensionController;->mInternals:Lorg/mozilla/geckoview/WebExtensionController$Internals;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/mozilla/gecko/EventDispatcher;->registerUiThreadListener(Lorg/mozilla/gecko/util/BundleEventListener;[Ljava/lang/String;)V

    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/mozilla/geckoview/WebExtensionController;->mDebuggerDelegate:Lorg/mozilla/geckoview/WebExtensionController$DebuggerDelegate;

    return-void
.end method

.method public setPromptDelegate(Lorg/mozilla/geckoview/WebExtensionController$PromptDelegate;)V
    .locals 5

    const-string v0, "GeckoView:WebExtension:OptionalPrompt"

    const-string v1, "GeckoView:WebExtension:UpdatePrompt"

    const-string v2, "GeckoView:WebExtension:InstallPrompt"

    if-nez p1, :cond_0

    iget-object v3, p0, Lorg/mozilla/geckoview/WebExtensionController;->mPromptDelegate:Lorg/mozilla/geckoview/WebExtensionController$PromptDelegate;

    if-eqz v3, :cond_0

    invoke-static {}, Lorg/mozilla/gecko/EventDispatcher;->getInstance()Lorg/mozilla/gecko/EventDispatcher;

    move-result-object v3

    iget-object v4, p0, Lorg/mozilla/geckoview/WebExtensionController;->mInternals:Lorg/mozilla/geckoview/WebExtensionController$Internals;

    filled-new-array {v2, v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lorg/mozilla/gecko/EventDispatcher;->unregisterUiThreadListener(Lorg/mozilla/gecko/util/BundleEventListener;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v3, p0, Lorg/mozilla/geckoview/WebExtensionController;->mPromptDelegate:Lorg/mozilla/geckoview/WebExtensionController$PromptDelegate;

    if-nez v3, :cond_1

    invoke-static {}, Lorg/mozilla/gecko/EventDispatcher;->getInstance()Lorg/mozilla/gecko/EventDispatcher;

    move-result-object v3

    iget-object v4, p0, Lorg/mozilla/geckoview/WebExtensionController;->mInternals:Lorg/mozilla/geckoview/WebExtensionController$Internals;

    filled-new-array {v2, v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lorg/mozilla/gecko/EventDispatcher;->registerUiThreadListener(Lorg/mozilla/gecko/util/BundleEventListener;[Ljava/lang/String;)V

    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/mozilla/geckoview/WebExtensionController;->mPromptDelegate:Lorg/mozilla/geckoview/WebExtensionController$PromptDelegate;

    return-void
.end method

.method public setTabActive(Lorg/mozilla/geckoview/GeckoSession;Z)V
    .locals 2

    new-instance v0, Lorg/mozilla/gecko/util/GeckoBundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/mozilla/gecko/util/GeckoBundle;-><init>(I)V

    const-string v1, "active"

    invoke-virtual {v0, v1, p2}, Lorg/mozilla/gecko/util/GeckoBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lorg/mozilla/geckoview/GeckoSession;->getEventDispatcher()Lorg/mozilla/gecko/EventDispatcher;

    move-result-object p1

    const-string p2, "GeckoView:WebExtension:SetTabActive"

    invoke-virtual {p1, p2, v0}, Lorg/mozilla/gecko/EventDispatcher;->dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;)V

    return-void
.end method

.method public uninstall(Lorg/mozilla/geckoview/WebExtension;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/geckoview/WebExtension;",
            ")",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/mozilla/geckoview/WebExtensionController$1;

    invoke-direct {v0, p0}, Lorg/mozilla/geckoview/WebExtensionController$1;-><init>(Lorg/mozilla/geckoview/WebExtensionController;)V

    new-instance v1, Lorg/mozilla/gecko/util/GeckoBundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lorg/mozilla/gecko/util/GeckoBundle;-><init>(I)V

    iget-object v2, p1, Lorg/mozilla/geckoview/WebExtension;->id:Ljava/lang/String;

    const-string v3, "webExtensionId"

    invoke-virtual {v1, v3, v2}, Lorg/mozilla/gecko/util/GeckoBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/mozilla/gecko/EventDispatcher;->getInstance()Lorg/mozilla/gecko/EventDispatcher;

    move-result-object v2

    const-string v3, "GeckoView:WebExtension:Uninstall"

    invoke-virtual {v2, v3, v1, v0}, Lorg/mozilla/gecko/EventDispatcher;->dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V

    new-instance v1, Lorg/mozilla/geckoview/j;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p0, p1}, Lorg/mozilla/geckoview/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/mozilla/geckoview/GeckoResult;->then(Lorg/mozilla/geckoview/GeckoResult$OnValueListener;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    return-object p1
.end method

.method public unregisterWebExtension(Lorg/mozilla/geckoview/WebExtension;)V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/geckoview/WebExtensionController;->mExtensions:Lorg/mozilla/geckoview/WebExtensionController$ExtensionStore;

    iget-object v1, p1, Lorg/mozilla/geckoview/WebExtension;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/mozilla/geckoview/WebExtensionController$ExtensionStore;->remove(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/mozilla/geckoview/WebExtension;->setDelegateController(Lorg/mozilla/geckoview/WebExtension$DelegateController;)V

    iget-object v0, p0, Lorg/mozilla/geckoview/WebExtensionController;->mListener:Lorg/mozilla/geckoview/WebExtension$Listener;

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/WebExtension$Listener;->unregisterWebExtension(Lorg/mozilla/geckoview/WebExtension;)V

    iget-object v0, p0, Lorg/mozilla/geckoview/WebExtensionController;->mPorts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/geckoview/WebExtension$Port;

    iget-object v1, v1, Lorg/mozilla/geckoview/WebExtension$Port;->sender:Lorg/mozilla/geckoview/WebExtension$MessageSender;

    iget-object v1, v1, Lorg/mozilla/geckoview/WebExtension$MessageSender;->webExtension:Lorg/mozilla/geckoview/WebExtension;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public update(Lorg/mozilla/geckoview/WebExtension;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/geckoview/WebExtension;",
            ")",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Lorg/mozilla/geckoview/WebExtension;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/mozilla/geckoview/WebExtensionController$WebExtensionResult;

    const-string v1, "extension"

    invoke-direct {v0, v1}, Lorg/mozilla/geckoview/WebExtensionController$WebExtensionResult;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/mozilla/gecko/util/GeckoBundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lorg/mozilla/gecko/util/GeckoBundle;-><init>(I)V

    const-string v2, "webExtensionId"

    iget-object p1, p1, Lorg/mozilla/geckoview/WebExtension;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/mozilla/gecko/EventDispatcher;->getInstance()Lorg/mozilla/gecko/EventDispatcher;

    move-result-object p1

    const-string v2, "GeckoView:WebExtension:Update"

    invoke-virtual {p1, v2, v1, v0}, Lorg/mozilla/gecko/EventDispatcher;->dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V

    new-instance p1, Lorg/mozilla/geckoview/o;

    const/4 v1, 0x2

    invoke-direct {p1, p0, v1}, Lorg/mozilla/geckoview/o;-><init>(Lorg/mozilla/geckoview/WebExtensionController;I)V

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/GeckoResult;->then(Lorg/mozilla/geckoview/GeckoResult$OnValueListener;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    return-object p1
.end method

.method public updateTab(Lorg/mozilla/geckoview/WebExtensionController$Message;Lorg/mozilla/geckoview/WebExtension;)V
    .locals 5

    iget-object v0, p1, Lorg/mozilla/geckoview/WebExtensionController$Message;->session:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoSession;->getWebExtensionController()Lorg/mozilla/geckoview/WebExtension$SessionController;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/mozilla/geckoview/WebExtension$SessionController;->getTabDelegate(Lorg/mozilla/geckoview/WebExtension;)Lorg/mozilla/geckoview/WebExtension$SessionTabDelegate;

    move-result-object v0

    iget-object v1, p1, Lorg/mozilla/geckoview/WebExtensionController$Message;->callback:Lorg/mozilla/gecko/util/EventCallback;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    invoke-interface {v1, p1}, Lorg/mozilla/gecko/util/EventCallback;->sendError(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v2, p1, Lorg/mozilla/geckoview/WebExtensionController$Message;->session:Lorg/mozilla/geckoview/GeckoSession;

    new-instance v3, Lorg/mozilla/geckoview/WebExtension$UpdateTabDetails;

    iget-object p1, p1, Lorg/mozilla/geckoview/WebExtensionController$Message;->bundle:Lorg/mozilla/gecko/util/GeckoBundle;

    const-string v4, "updateProperties"

    invoke-virtual {p1, v4}, Lorg/mozilla/gecko/util/GeckoBundle;->getBundle(Ljava/lang/String;)Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object p1

    invoke-direct {v3, p1}, Lorg/mozilla/geckoview/WebExtension$UpdateTabDetails;-><init>(Lorg/mozilla/gecko/util/GeckoBundle;)V

    invoke-interface {v0, p2, v2, v3}, Lorg/mozilla/geckoview/WebExtension$SessionTabDelegate;->onUpdateTab(Lorg/mozilla/geckoview/WebExtension;Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/WebExtension$UpdateTabDetails;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    new-instance p2, Lorg/mozilla/geckoview/a;

    const/16 v0, 0x14

    invoke-direct {p2, v1, v0}, Lorg/mozilla/geckoview/a;-><init>(Lorg/mozilla/gecko/util/EventCallback;I)V

    invoke-virtual {p1, p2}, Lorg/mozilla/geckoview/GeckoResult;->accept(Lorg/mozilla/geckoview/GeckoResult$Consumer;)Lorg/mozilla/geckoview/GeckoResult;

    return-void
.end method
