.class Lorg/mozilla/geckoview/GeckoSession$7;
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
        "Lorg/mozilla/geckoview/ContentBlocking$Delegate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/geckoview/GeckoSession;


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/GeckoSession;Ljava/lang/String;Lorg/mozilla/geckoview/GeckoSession;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoSession$7;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    invoke-direct {p0, p2, p3, p4}, Lorg/mozilla/geckoview/GeckoSessionHandler;-><init>(Ljava/lang/String;Lorg/mozilla/geckoview/GeckoSession;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic handleMessage(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/mozilla/geckoview/ContentBlocking$Delegate;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/mozilla/geckoview/GeckoSession$7;->handleMessage(Lorg/mozilla/geckoview/ContentBlocking$Delegate;Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V

    return-void
.end method

.method public handleMessage(Lorg/mozilla/geckoview/ContentBlocking$Delegate;Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V
    .locals 0

    .line 2
    const-string p4, "GeckoView:ContentBlockingEvent"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p3}, Lorg/mozilla/geckoview/ContentBlocking$BlockEvent;->fromBundle(Lorg/mozilla/gecko/util/GeckoBundle;)Lorg/mozilla/geckoview/ContentBlocking$BlockEvent;

    move-result-object p2

    invoke-virtual {p2}, Lorg/mozilla/geckoview/ContentBlocking$BlockEvent;->isBlocking()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lorg/mozilla/geckoview/GeckoSession$7;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    invoke-interface {p1, p3, p2}, Lorg/mozilla/geckoview/ContentBlocking$Delegate;->onContentBlocked(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/ContentBlocking$BlockEvent;)V

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lorg/mozilla/geckoview/GeckoSession$7;->this$0:Lorg/mozilla/geckoview/GeckoSession;

    invoke-interface {p1, p3, p2}, Lorg/mozilla/geckoview/ContentBlocking$Delegate;->onContentLoaded(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/ContentBlocking$BlockEvent;)V

    :cond_1
    :goto_0
    return-void
.end method
