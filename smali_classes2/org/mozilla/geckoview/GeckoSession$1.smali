.class Lorg/mozilla/geckoview/GeckoSession$1;
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
        "Lorg/mozilla/geckoview/GeckoSession$HistoryDelegate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/geckoview/GeckoSession;


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/GeckoSession;Ljava/lang/String;Lorg/mozilla/geckoview/GeckoSession;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoSession$1;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    invoke-direct {p0, p2, p3, p4}, Lorg/mozilla/geckoview/GeckoSessionHandler;-><init>(Ljava/lang/String;Lorg/mozilla/geckoview/GeckoSession;[Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lorg/mozilla/gecko/util/EventCallback;[Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/mozilla/geckoview/GeckoSession$1;->lambda$handleMessage$2(Lorg/mozilla/gecko/util/EventCallback;[Z)V

    return-void
.end method

.method public static synthetic b(Lorg/mozilla/gecko/util/EventCallback;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/mozilla/geckoview/GeckoSession$1;->lambda$handleMessage$1(Lorg/mozilla/gecko/util/EventCallback;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic c(Lorg/mozilla/gecko/util/EventCallback;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/mozilla/geckoview/GeckoSession$1;->lambda$handleMessage$0(Lorg/mozilla/gecko/util/EventCallback;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic d(Lorg/mozilla/gecko/util/EventCallback;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/mozilla/geckoview/GeckoSession$1;->lambda$handleMessage$3(Lorg/mozilla/gecko/util/EventCallback;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static synthetic lambda$handleMessage$0(Lorg/mozilla/gecko/util/EventCallback;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/mozilla/gecko/util/EventCallback;->sendSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$handleMessage$1(Lorg/mozilla/gecko/util/EventCallback;Ljava/lang/Throwable;)V
    .locals 0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lorg/mozilla/gecko/util/EventCallback;->sendSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$handleMessage$2(Lorg/mozilla/gecko/util/EventCallback;[Z)V
    .locals 0

    invoke-interface {p0, p1}, Lorg/mozilla/gecko/util/EventCallback;->sendSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$handleMessage$3(Lorg/mozilla/gecko/util/EventCallback;Ljava/lang/Throwable;)V
    .locals 0

    const-string p1, "Failed to fetch visited statuses for URIs"

    invoke-interface {p0, p1}, Lorg/mozilla/gecko/util/EventCallback;->sendError(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic handleMessage(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/mozilla/geckoview/GeckoSession$HistoryDelegate;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/mozilla/geckoview/GeckoSession$1;->handleMessage(Lorg/mozilla/geckoview/GeckoSession$HistoryDelegate;Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V

    return-void
.end method

.method public handleMessage(Lorg/mozilla/geckoview/GeckoSession$HistoryDelegate;Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V
    .locals 3

    .line 2
    const-string v0, "GeckoView:OnVisited"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p2, p0, Lorg/mozilla/geckoview/GeckoSession$1;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    const-string v0, "url"

    invoke-virtual {p3, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "lastVisitedURL"

    invoke-virtual {p3, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "flags"

    invoke-virtual {p3, v2}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p2, v0, v1, p3}, Lorg/mozilla/geckoview/GeckoSession$HistoryDelegate;->onVisited(Lorg/mozilla/geckoview/GeckoSession;Ljava/lang/String;Ljava/lang/String;I)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    invoke-interface {p4, p1}, Lorg/mozilla/gecko/util/EventCallback;->sendSuccess(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p2, Lorg/mozilla/geckoview/a;

    const/4 p3, 0x2

    invoke-direct {p2, p4, p3}, Lorg/mozilla/geckoview/a;-><init>(Lorg/mozilla/gecko/util/EventCallback;I)V

    new-instance p3, Lorg/mozilla/geckoview/a;

    const/4 v0, 0x3

    invoke-direct {p3, p4, v0}, Lorg/mozilla/geckoview/a;-><init>(Lorg/mozilla/gecko/util/EventCallback;I)V

    :goto_1
    invoke-virtual {p1, p2, p3}, Lorg/mozilla/geckoview/GeckoResult;->accept(Lorg/mozilla/geckoview/GeckoResult$Consumer;Lorg/mozilla/geckoview/GeckoResult$Consumer;)Lorg/mozilla/geckoview/GeckoResult;

    goto/16 :goto_2

    :cond_1
    const-string v0, "GeckoView:GetVisited"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p2, "urls"

    invoke-virtual {p3, p2}, Lorg/mozilla/gecko/util/GeckoBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lorg/mozilla/geckoview/GeckoSession$1;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    invoke-interface {p1, p3, p2}, Lorg/mozilla/geckoview/GeckoSession$HistoryDelegate;->getVisited(Lorg/mozilla/geckoview/GeckoSession;[Ljava/lang/String;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    new-instance p2, Lorg/mozilla/geckoview/a;

    const/4 p3, 0x4

    invoke-direct {p2, p4, p3}, Lorg/mozilla/geckoview/a;-><init>(Lorg/mozilla/gecko/util/EventCallback;I)V

    new-instance p3, Lorg/mozilla/geckoview/a;

    const/4 v0, 0x5

    invoke-direct {p3, p4, v0}, Lorg/mozilla/geckoview/a;-><init>(Lorg/mozilla/gecko/util/EventCallback;I)V

    goto :goto_1

    :cond_3
    const-string p4, "GeckoView:StateUpdated"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p2, "data"

    invoke-virtual {p3, p2}, Lorg/mozilla/gecko/util/GeckoBundle;->getBundle(Ljava/lang/String;)Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object p2

    if-nez p2, :cond_4

    return-void

    :cond_4
    iget-object p3, p0, Lorg/mozilla/geckoview/GeckoSession$1;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    invoke-static {p3}, Lorg/mozilla/geckoview/GeckoSession;->access$000(Lorg/mozilla/geckoview/GeckoSession;)Lorg/mozilla/geckoview/GeckoSession$SessionState;

    move-result-object p3

    invoke-virtual {p3}, Lorg/mozilla/geckoview/GeckoSession$SessionState;->size()I

    move-result p3

    iget-object p4, p0, Lorg/mozilla/geckoview/GeckoSession$1;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    invoke-static {p4}, Lorg/mozilla/geckoview/GeckoSession;->access$000(Lorg/mozilla/geckoview/GeckoSession;)Lorg/mozilla/geckoview/GeckoSession$SessionState;

    move-result-object p4

    invoke-virtual {p4, p2}, Lorg/mozilla/geckoview/GeckoSession$SessionState;->updateSessionState(Lorg/mozilla/gecko/util/GeckoBundle;)V

    iget-object p4, p0, Lorg/mozilla/geckoview/GeckoSession$1;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {p4}, Lorg/mozilla/geckoview/GeckoSession;->getProgressDelegate()Lorg/mozilla/geckoview/GeckoSession$ProgressDelegate;

    move-result-object p4

    if-eqz p4, :cond_5

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$1;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    new-instance v1, Lorg/mozilla/geckoview/GeckoSession$SessionState;

    iget-object v2, p0, Lorg/mozilla/geckoview/GeckoSession$1;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    invoke-static {v2}, Lorg/mozilla/geckoview/GeckoSession;->access$000(Lorg/mozilla/geckoview/GeckoSession;)Lorg/mozilla/geckoview/GeckoSession$SessionState;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/mozilla/geckoview/GeckoSession$SessionState;-><init>(Lorg/mozilla/geckoview/GeckoSession$SessionState;)V

    invoke-interface {p4, v0, v1}, Lorg/mozilla/geckoview/GeckoSession$ProgressDelegate;->onSessionStateChange(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/GeckoSession$SessionState;)V

    :cond_5
    const-string p4, "historychange"

    invoke-virtual {p2, p4}, Lorg/mozilla/gecko/util/GeckoBundle;->getBundle(Ljava/lang/String;)Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object p2

    if-eqz p2, :cond_6

    new-instance p2, Lorg/mozilla/geckoview/GeckoSession$SessionState;

    iget-object p4, p0, Lorg/mozilla/geckoview/GeckoSession$1;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    invoke-static {p4}, Lorg/mozilla/geckoview/GeckoSession;->access$000(Lorg/mozilla/geckoview/GeckoSession;)Lorg/mozilla/geckoview/GeckoSession$SessionState;

    move-result-object p4

    invoke-direct {p2, p4}, Lorg/mozilla/geckoview/GeckoSession$SessionState;-><init>(Lorg/mozilla/geckoview/GeckoSession$SessionState;)V

    iget-object p4, p0, Lorg/mozilla/geckoview/GeckoSession$1;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    invoke-interface {p1, p4, p2}, Lorg/mozilla/geckoview/GeckoSession$HistoryDelegate;->onHistoryStateChange(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/GeckoSession$HistoryDelegate$HistoryList;)V

    const/4 p1, 0x1

    if-le p3, p1, :cond_6

    invoke-virtual {p2}, Lorg/mozilla/geckoview/GeckoSession$SessionState;->size()I

    move-result p2

    if-ne p2, p1, :cond_6

    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoSession$1;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    invoke-static {p1}, Lorg/mozilla/geckoview/GeckoSession;->access$100(Lorg/mozilla/geckoview/GeckoSession;)Lorg/mozilla/geckoview/GeckoSessionHandler;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/geckoview/GeckoSessionHandler;->getDelegate()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoSession$1;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    invoke-static {p1}, Lorg/mozilla/geckoview/GeckoSession;->access$100(Lorg/mozilla/geckoview/GeckoSession;)Lorg/mozilla/geckoview/GeckoSessionHandler;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/geckoview/GeckoSessionHandler;->getDelegate()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate;

    iget-object p2, p0, Lorg/mozilla/geckoview/GeckoSession$1;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3}, Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate;->onCanGoForward(Lorg/mozilla/geckoview/GeckoSession;Z)V

    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoSession$1;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    invoke-static {p1}, Lorg/mozilla/geckoview/GeckoSession;->access$100(Lorg/mozilla/geckoview/GeckoSession;)Lorg/mozilla/geckoview/GeckoSessionHandler;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mozilla/geckoview/GeckoSessionHandler;->getDelegate()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate;

    iget-object p2, p0, Lorg/mozilla/geckoview/GeckoSession$1;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    invoke-interface {p1, p2, p3}, Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate;->onCanGoBack(Lorg/mozilla/geckoview/GeckoSession;Z)V

    :cond_6
    :goto_2
    return-void
.end method
