.class Lorg/mozilla/geckoview/GeckoSession$3;
.super Lorg/mozilla/geckoview/GeckoSessionHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/GeckoSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/mozilla/geckoview/GeckoSessionHandler<",
        "Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/geckoview/GeckoSession;


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/GeckoSession;Ljava/lang/String;Lorg/mozilla/geckoview/GeckoSession;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoSession$3;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/mozilla/geckoview/GeckoSessionHandler;-><init>(Ljava/lang/String;Lorg/mozilla/geckoview/GeckoSession;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lorg/mozilla/gecko/util/EventCallback;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/mozilla/geckoview/GeckoSession$3;->lambda$handleMessage$5(Lorg/mozilla/gecko/util/EventCallback;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic b(Lorg/mozilla/gecko/util/EventCallback;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/mozilla/geckoview/GeckoSession$3;->lambda$handleMessage$2(Lorg/mozilla/gecko/util/EventCallback;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lorg/mozilla/geckoview/GeckoSession$3;Lorg/mozilla/gecko/util/EventCallback;Lorg/mozilla/geckoview/GeckoSession;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/mozilla/geckoview/GeckoSession$3;->lambda$handleMessage$4(Lorg/mozilla/gecko/util/EventCallback;Lorg/mozilla/geckoview/GeckoSession;)V

    return-void
.end method

.method private convertGeckoTarget(I)I
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    return v0
.end method

.method public static synthetic d(Lorg/mozilla/gecko/util/EventCallback;Lorg/mozilla/geckoview/AllowOrDeny;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/mozilla/geckoview/GeckoSession$3;->lambda$handleMessage$0(Lorg/mozilla/gecko/util/EventCallback;Lorg/mozilla/geckoview/AllowOrDeny;)V

    return-void
.end method

.method public static synthetic e(Lorg/mozilla/gecko/util/EventCallback;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/mozilla/geckoview/GeckoSession$3;->lambda$handleMessage$1(Lorg/mozilla/gecko/util/EventCallback;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic f(Lorg/mozilla/gecko/util/EventCallback;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/mozilla/geckoview/GeckoSession$3;->lambda$handleMessage$3(Lorg/mozilla/gecko/util/EventCallback;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static synthetic lambda$handleMessage$0(Lorg/mozilla/gecko/util/EventCallback;Lorg/mozilla/geckoview/AllowOrDeny;)V
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    sget-object v0, Lorg/mozilla/geckoview/AllowOrDeny;->ALLOW:Lorg/mozilla/geckoview/AllowOrDeny;

    if-ne p1, v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    invoke-interface {p0, p1}, Lorg/mozilla/gecko/util/EventCallback;->sendSuccess(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    sget-object v0, Lorg/mozilla/geckoview/AllowOrDeny;->DENY:Lorg/mozilla/geckoview/AllowOrDeny;

    if-ne p1, v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    const-string p1, "Invalid response"

    invoke-interface {p0, p1}, Lorg/mozilla/gecko/util/EventCallback;->sendError(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private static synthetic lambda$handleMessage$1(Lorg/mozilla/gecko/util/EventCallback;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/mozilla/gecko/util/EventCallback;->sendError(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$handleMessage$2(Lorg/mozilla/gecko/util/EventCallback;Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, "abort"

    invoke-interface {p0, p1}, Lorg/mozilla/gecko/util/EventCallback;->sendError(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Lorg/mozilla/gecko/util/EventCallback;->sendSuccess(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$handleMessage$3(Lorg/mozilla/gecko/util/EventCallback;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/mozilla/gecko/util/EventCallback;->sendError(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$handleMessage$4(Lorg/mozilla/gecko/util/EventCallback;Lorg/mozilla/geckoview/GeckoSession;)V
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    if-nez p2, :cond_0

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lorg/mozilla/gecko/util/EventCallback;->sendSuccess(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Lorg/mozilla/geckoview/GeckoSession;->isOpen()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$3;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    iget-object v0, v0, Lorg/mozilla/geckoview/GeckoSession;->mWindow:Lorg/mozilla/geckoview/GeckoSession$Window;

    if-nez v0, :cond_1

    const-string p2, "Session is not attached to a window"

    invoke-interface {p1, p2}, Lorg/mozilla/gecko/util/EventCallback;->sendError(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lorg/mozilla/geckoview/GeckoSession$Window;->runtime:Lorg/mozilla/geckoview/GeckoRuntime;

    invoke-virtual {p2, v0}, Lorg/mozilla/geckoview/GeckoSession;->open(Lorg/mozilla/geckoview/GeckoRuntime;)V

    invoke-virtual {p2}, Lorg/mozilla/geckoview/GeckoSession;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/mozilla/gecko/util/EventCallback;->sendSuccess(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must use an unopened GeckoSession instance"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static synthetic lambda$handleMessage$5(Lorg/mozilla/gecko/util/EventCallback;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/mozilla/gecko/util/EventCallback;->sendError(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public handleDefaultMessage(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V
    .locals 1

    const-string v0, "GeckoView:OnLoadRequest"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    invoke-interface {p3, p1}, Lorg/mozilla/gecko/util/EventCallback;->sendSuccess(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const-string v0, "GeckoView:OnLoadError"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lorg/mozilla/geckoview/GeckoSessionHandler;->handleDefaultMessage(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic handleMessage(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/mozilla/geckoview/GeckoSession$3;->handleMessage(Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate;Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V

    return-void
.end method

.method public handleMessage(Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate;Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V
    .locals 10

    .line 2
    const-string v0, "uri"

    invoke-virtual {p3, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "GeckoView:LocationChange"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p2, "isTopLevel"

    invoke-virtual {p3, p2}, Lorg/mozilla/gecko/util/GeckoBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/mozilla/geckoview/GeckoSession$3;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {p3, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-interface {p1, p2, p4}, Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate;->onLocationChange(Lorg/mozilla/geckoview/GeckoSession;Ljava/lang/String;)V

    :cond_0
    iget-object p2, p0, Lorg/mozilla/geckoview/GeckoSession$3;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    const-string p4, "canGoBack"

    invoke-virtual {p3, p4}, Lorg/mozilla/gecko/util/GeckoBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p4

    invoke-interface {p1, p2, p4}, Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate;->onCanGoBack(Lorg/mozilla/geckoview/GeckoSession;Z)V

    iget-object p2, p0, Lorg/mozilla/geckoview/GeckoSession$3;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    const-string p4, "canGoForward"

    invoke-virtual {p3, p4}, Lorg/mozilla/gecko/util/GeckoBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    invoke-interface {p1, p2, p3}, Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate;->onCanGoForward(Lorg/mozilla/geckoview/GeckoSession;Z)V

    goto/16 :goto_1

    :cond_1
    const-string v1, "GeckoView:OnLoadRequest"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    new-instance p2, Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate$LoadRequest;

    invoke-virtual {p3, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "triggerUri"

    invoke-virtual {p3, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "where"

    invoke-virtual {p3, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v0, "flags"

    invoke-virtual {p3, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v0, "hasUserGesture"

    invoke-virtual {p3, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    const/4 v9, 0x0

    move-object v3, p2

    invoke-direct/range {v3 .. v9}, Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate$LoadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IIZZ)V

    iget-object p3, p2, Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate$LoadRequest;->uri:Ljava/lang/String;

    invoke-static {p3}, Lorg/mozilla/gecko/util/IntentUtils;->isUriSafeForScheme(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_2

    const-string p3, "Blocked unsafe intent URI"

    invoke-interface {p4, p3}, Lorg/mozilla/gecko/util/EventCallback;->sendError(Ljava/lang/Object;)V

    iget-object p3, p0, Lorg/mozilla/geckoview/GeckoSession$3;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    iget-object p2, p2, Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate$LoadRequest;->uri:Ljava/lang/String;

    new-instance p4, Lorg/mozilla/geckoview/WebRequestError;

    const/16 v0, 0x35

    const/4 v1, 0x5

    invoke-direct {p4, v0, v1, v2}, Lorg/mozilla/geckoview/WebRequestError;-><init>(IILjava/security/cert/X509Certificate;)V

    invoke-interface {p1, p3, p2, p4}, Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate;->onLoadError(Lorg/mozilla/geckoview/GeckoSession;Ljava/lang/String;Lorg/mozilla/geckoview/WebRequestError;)Lorg/mozilla/geckoview/GeckoResult;

    return-void

    :cond_2
    iget-object p3, p0, Lorg/mozilla/geckoview/GeckoSession$3;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    invoke-interface {p1, p3, p2}, Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate;->onLoadRequest(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate$LoadRequest;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-interface {p4, v2}, Lorg/mozilla/gecko/util/EventCallback;->sendSuccess(Ljava/lang/Object;)V

    return-void

    :cond_3
    new-instance p2, Lorg/mozilla/geckoview/a;

    const/4 p3, 0x6

    invoke-direct {p2, p4, p3}, Lorg/mozilla/geckoview/a;-><init>(Lorg/mozilla/gecko/util/EventCallback;I)V

    new-instance p3, Lorg/mozilla/geckoview/a;

    const/4 v0, 0x7

    invoke-direct {p3, p4, v0}, Lorg/mozilla/geckoview/a;-><init>(Lorg/mozilla/gecko/util/EventCallback;I)V

    goto :goto_0

    :cond_4
    const-string v1, "GeckoView:OnLoadError"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p3, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "error"

    invoke-virtual {p3, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-string v3, "errorModule"

    invoke-virtual {p3, v3}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "errorClass"

    invoke-virtual {p3, v4}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;)I

    move-result p3

    invoke-static {v0, v1, v3, p3, v2}, Lorg/mozilla/geckoview/WebRequestError;->fromGeckoError(JII[B)Lorg/mozilla/geckoview/WebRequestError;

    move-result-object p3

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$3;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    invoke-interface {p1, v0, p2, p3}, Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate;->onLoadError(Lorg/mozilla/geckoview/GeckoSession;Ljava/lang/String;Lorg/mozilla/geckoview/WebRequestError;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    if-nez p1, :cond_5

    const-string p1, "abort"

    invoke-interface {p4, p1}, Lorg/mozilla/gecko/util/EventCallback;->sendError(Ljava/lang/Object;)V

    return-void

    :cond_5
    new-instance p2, Lorg/mozilla/geckoview/a;

    const/16 p3, 0x8

    invoke-direct {p2, p4, p3}, Lorg/mozilla/geckoview/a;-><init>(Lorg/mozilla/gecko/util/EventCallback;I)V

    new-instance p3, Lorg/mozilla/geckoview/a;

    const/16 v0, 0x9

    invoke-direct {p3, p4, v0}, Lorg/mozilla/geckoview/a;-><init>(Lorg/mozilla/gecko/util/EventCallback;I)V

    :goto_0
    invoke-virtual {p1, p2, p3}, Lorg/mozilla/geckoview/GeckoResult;->accept(Lorg/mozilla/geckoview/GeckoResult$Consumer;Lorg/mozilla/geckoview/GeckoResult$Consumer;)Lorg/mozilla/geckoview/GeckoResult;

    goto :goto_1

    :cond_6
    const-string v1, "GeckoView:OnNewSession"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-virtual {p3, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lorg/mozilla/geckoview/GeckoSession$3;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    invoke-interface {p1, p3, p2}, Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate;->onNewSession(Lorg/mozilla/geckoview/GeckoSession;Ljava/lang/String;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    if-nez p1, :cond_7

    invoke-interface {p4, v2}, Lorg/mozilla/gecko/util/EventCallback;->sendSuccess(Ljava/lang/Object;)V

    return-void

    :cond_7
    new-instance p2, Lorg/mozilla/geckoview/j;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p0, p4}, Lorg/mozilla/geckoview/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance p3, Lorg/mozilla/geckoview/a;

    const/16 v0, 0xa

    invoke-direct {p3, p4, v0}, Lorg/mozilla/geckoview/a;-><init>(Lorg/mozilla/gecko/util/EventCallback;I)V

    goto :goto_0

    :cond_8
    :goto_1
    return-void
.end method
