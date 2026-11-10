.class Lorg/mozilla/geckoview/GeckoSession$5;
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
        "Lorg/mozilla/geckoview/GeckoSession$ProgressDelegate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/geckoview/GeckoSession;


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/GeckoSession;Ljava/lang/String;Lorg/mozilla/geckoview/GeckoSession;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoSession$5;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    invoke-direct {p0, p2, p3, p4}, Lorg/mozilla/geckoview/GeckoSessionHandler;-><init>(Ljava/lang/String;Lorg/mozilla/geckoview/GeckoSession;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic handleMessage(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/mozilla/geckoview/GeckoSession$ProgressDelegate;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/mozilla/geckoview/GeckoSession$5;->handleMessage(Lorg/mozilla/geckoview/GeckoSession$ProgressDelegate;Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V

    return-void
.end method

.method public handleMessage(Lorg/mozilla/geckoview/GeckoSession$ProgressDelegate;Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V
    .locals 1

    .line 2
    const-string p4, "uri"

    invoke-virtual {p3, p4}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "GeckoView:PageStart"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lorg/mozilla/geckoview/GeckoSession$5;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {p3, p4}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lorg/mozilla/geckoview/GeckoSession$ProgressDelegate;->onPageStart(Lorg/mozilla/geckoview/GeckoSession;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    const-string p4, "GeckoView:PageStop"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    iget-object p2, p0, Lorg/mozilla/geckoview/GeckoSession$5;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    const-string p4, "success"

    invoke-virtual {p3, p4}, Lorg/mozilla/gecko/util/GeckoBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    invoke-interface {p1, p2, p3}, Lorg/mozilla/geckoview/GeckoSession$ProgressDelegate;->onPageStop(Lorg/mozilla/geckoview/GeckoSession;Z)V

    goto :goto_0

    :cond_1
    const-string p4, "GeckoView:ProgressChanged"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2

    iget-object p2, p0, Lorg/mozilla/geckoview/GeckoSession$5;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    const-string p4, "progress"

    invoke-virtual {p3, p4}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p2, p3}, Lorg/mozilla/geckoview/GeckoSession$ProgressDelegate;->onProgressChange(Lorg/mozilla/geckoview/GeckoSession;I)V

    goto :goto_0

    :cond_2
    const-string p4, "GeckoView:SecurityChanged"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    const-string p2, "identity"

    invoke-virtual {p3, p2}, Lorg/mozilla/gecko/util/GeckoBundle;->getBundle(Ljava/lang/String;)Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object p2

    iget-object p3, p0, Lorg/mozilla/geckoview/GeckoSession$5;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    new-instance p4, Lorg/mozilla/geckoview/GeckoSession$ProgressDelegate$SecurityInformation;

    invoke-direct {p4, p2}, Lorg/mozilla/geckoview/GeckoSession$ProgressDelegate$SecurityInformation;-><init>(Lorg/mozilla/gecko/util/GeckoBundle;)V

    invoke-interface {p1, p3, p4}, Lorg/mozilla/geckoview/GeckoSession$ProgressDelegate;->onSecurityChange(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/GeckoSession$ProgressDelegate$SecurityInformation;)V

    goto :goto_0

    :cond_3
    const-string p4, "GeckoView:StateUpdated"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "data"

    invoke-virtual {p3, p2}, Lorg/mozilla/gecko/util/GeckoBundle;->getBundle(Ljava/lang/String;)Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object p3, p0, Lorg/mozilla/geckoview/GeckoSession$5;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {p3}, Lorg/mozilla/geckoview/GeckoSession;->getHistoryDelegate()Lorg/mozilla/geckoview/GeckoSession$HistoryDelegate;

    move-result-object p3

    if-nez p3, :cond_4

    iget-object p3, p0, Lorg/mozilla/geckoview/GeckoSession$5;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    invoke-static {p3}, Lorg/mozilla/geckoview/GeckoSession;->access$000(Lorg/mozilla/geckoview/GeckoSession;)Lorg/mozilla/geckoview/GeckoSession$SessionState;

    move-result-object p3

    invoke-virtual {p3, p2}, Lorg/mozilla/geckoview/GeckoSession$SessionState;->updateSessionState(Lorg/mozilla/gecko/util/GeckoBundle;)V

    iget-object p2, p0, Lorg/mozilla/geckoview/GeckoSession$5;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    new-instance p3, Lorg/mozilla/geckoview/GeckoSession$SessionState;

    iget-object p4, p0, Lorg/mozilla/geckoview/GeckoSession$5;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    invoke-static {p4}, Lorg/mozilla/geckoview/GeckoSession;->access$000(Lorg/mozilla/geckoview/GeckoSession;)Lorg/mozilla/geckoview/GeckoSession$SessionState;

    move-result-object p4

    invoke-direct {p3, p4}, Lorg/mozilla/geckoview/GeckoSession$SessionState;-><init>(Lorg/mozilla/geckoview/GeckoSession$SessionState;)V

    invoke-interface {p1, p2, p3}, Lorg/mozilla/geckoview/GeckoSession$ProgressDelegate;->onSessionStateChange(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/GeckoSession$SessionState;)V

    :cond_4
    :goto_0
    return-void
.end method
