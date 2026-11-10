.class Lorg/mozilla/geckoview/GeckoSession$4;
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
        "Lorg/mozilla/geckoview/GeckoSession$ContentDelegate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/geckoview/GeckoSession;


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/GeckoSession;Ljava/lang/String;Lorg/mozilla/geckoview/GeckoSession;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoSession$4;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    invoke-direct {p0, p2, p3, p4}, Lorg/mozilla/geckoview/GeckoSessionHandler;-><init>(Ljava/lang/String;Lorg/mozilla/geckoview/GeckoSession;[Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lorg/mozilla/geckoview/GeckoSession$4;ILorg/mozilla/geckoview/SlowScriptResponse;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/mozilla/geckoview/GeckoSession$4;->lambda$handleMessage$0(ILorg/mozilla/geckoview/SlowScriptResponse;)V

    return-void
.end method

.method private synthetic lambda$handleMessage$0(ILorg/mozilla/geckoview/SlowScriptResponse;)V
    .locals 2

    if-eqz p2, :cond_2

    new-instance v0, Lorg/mozilla/gecko/util/GeckoBundle;

    invoke-direct {v0}, Lorg/mozilla/gecko/util/GeckoBundle;-><init>()V

    const-string v1, "hangId"

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->putInt(Ljava/lang/String;I)V

    sget-object p1, Lorg/mozilla/geckoview/GeckoSession$13;->$SwitchMap$org$mozilla$geckoview$SlowScriptResponse:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoSession$4;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    invoke-static {p1}, Lorg/mozilla/geckoview/GeckoSession;->access$300(Lorg/mozilla/geckoview/GeckoSession;)Lorg/mozilla/gecko/EventDispatcher;

    move-result-object p1

    const-string p2, "GeckoView:HangReportWait"

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoSession$4;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    invoke-static {p1}, Lorg/mozilla/geckoview/GeckoSession;->access$300(Lorg/mozilla/geckoview/GeckoSession;)Lorg/mozilla/gecko/EventDispatcher;

    move-result-object p1

    const-string p2, "GeckoView:HangReportStop"

    :goto_0
    invoke-virtual {p1, p2, v0}, Lorg/mozilla/gecko/EventDispatcher;->dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public bridge synthetic handleMessage(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/mozilla/geckoview/GeckoSession$ContentDelegate;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/mozilla/geckoview/GeckoSession$4;->handleMessage(Lorg/mozilla/geckoview/GeckoSession$ContentDelegate;Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V

    return-void
.end method

.method public handleMessage(Lorg/mozilla/geckoview/GeckoSession$ContentDelegate;Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V
    .locals 0

    .line 2
    const-string p2, "uri"

    invoke-virtual {p3, p2}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    iget-object p2, p0, Lorg/mozilla/geckoview/GeckoSession$4;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    const-string p4, "scriptFileName"

    invoke-virtual {p3, p4}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-interface {p1, p2, p4}, Lorg/mozilla/geckoview/GeckoSession$ContentDelegate;->onSlowScript(Lorg/mozilla/geckoview/GeckoSession;Ljava/lang/String;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    const-string p2, "hangId"

    if-eqz p1, :cond_0

    invoke-virtual {p3, p2}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;)I

    move-result p2

    new-instance p3, Lorg/mozilla/geckoview/f;

    const/4 p4, 0x1

    invoke-direct {p3, p0, p2, p4}, Lorg/mozilla/geckoview/f;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {p1, p3}, Lorg/mozilla/geckoview/GeckoResult;->accept(Lorg/mozilla/geckoview/GeckoResult$Consumer;)Lorg/mozilla/geckoview/GeckoResult;

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/mozilla/gecko/util/GeckoBundle;

    invoke-direct {p1}, Lorg/mozilla/gecko/util/GeckoBundle;-><init>()V

    invoke-virtual {p3, p2}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lorg/mozilla/gecko/util/GeckoBundle;->putInt(Ljava/lang/String;I)V

    iget-object p2, p0, Lorg/mozilla/geckoview/GeckoSession$4;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    invoke-static {p2}, Lorg/mozilla/geckoview/GeckoSession;->access$300(Lorg/mozilla/geckoview/GeckoSession;)Lorg/mozilla/gecko/EventDispatcher;

    move-result-object p2

    const-string p3, "GeckoView:HangReportStop"

    invoke-virtual {p2, p3, p1}, Lorg/mozilla/gecko/EventDispatcher;->dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;)V

    :goto_0
    return-void
.end method
