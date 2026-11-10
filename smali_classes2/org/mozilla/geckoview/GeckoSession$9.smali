.class Lorg/mozilla/geckoview/GeckoSession$9;
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
        "Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/geckoview/GeckoSession;


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/GeckoSession;Ljava/lang/String;Lorg/mozilla/geckoview/GeckoSession;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoSession$9;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    invoke-direct {p0, p2, p3, p4}, Lorg/mozilla/geckoview/GeckoSessionHandler;-><init>(Ljava/lang/String;Lorg/mozilla/geckoview/GeckoSession;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic handleMessage(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/mozilla/geckoview/GeckoSession$9;->handleMessage(Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate;Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V

    return-void
.end method

.method public handleMessage(Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate;Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V
    .locals 1

    .line 2
    const-string v0, "GeckoView:ShowSelectionAction"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p2, Ljava/util/HashSet;

    const-string v0, "actions"

    invoke-virtual {p3, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v0, Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate$Selection;

    invoke-direct {v0, p3, p2, p4}, Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate$Selection;-><init>(Lorg/mozilla/gecko/util/GeckoBundle;Ljava/util/Set;Lorg/mozilla/gecko/util/EventCallback;)V

    iget-object p2, p0, Lorg/mozilla/geckoview/GeckoSession$9;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    invoke-interface {p1, p2, v0}, Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate;->onShowActionRequest(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate$Selection;)V

    goto :goto_1

    :cond_0
    const-string p4, "GeckoView:HideSelectionAction"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p2, "reason"

    invoke-virtual {p3, p2}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "invisibleselection"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const-string p3, "presscaret"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    const/4 p2, 0x2

    goto :goto_0

    :cond_2
    const-string p3, "scroll"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    const/4 p2, 0x3

    goto :goto_0

    :cond_3
    const-string p3, "visibilitychange"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p2, 0x0

    :goto_0
    iget-object p3, p0, Lorg/mozilla/geckoview/GeckoSession$9;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    invoke-interface {p1, p3, p2}, Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate;->onHideAction(Lorg/mozilla/geckoview/GeckoSession;I)V

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_5
    :goto_1
    return-void
.end method
