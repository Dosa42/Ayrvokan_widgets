.class Lorg/mozilla/geckoview/WebPushController$EventListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/gecko/util/BundleEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/WebPushController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/geckoview/WebPushController;


# direct methods
.method private constructor <init>(Lorg/mozilla/geckoview/WebPushController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mozilla/geckoview/WebPushController$EventListener;->this$0:Lorg/mozilla/geckoview/WebPushController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/mozilla/geckoview/WebPushController;Lorg/mozilla/geckoview/WebPushController$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/WebPushController$EventListener;-><init>(Lorg/mozilla/geckoview/WebPushController;)V

    return-void
.end method

.method public static synthetic a(Lorg/mozilla/gecko/util/EventCallback;Lorg/mozilla/geckoview/WebPushSubscription;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/mozilla/geckoview/WebPushController$EventListener;->lambda$handleMessage$4(Lorg/mozilla/gecko/util/EventCallback;Lorg/mozilla/geckoview/WebPushSubscription;)V

    return-void
.end method

.method public static synthetic b(Lorg/mozilla/gecko/util/EventCallback;Ljava/lang/Void;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/mozilla/geckoview/WebPushController$EventListener;->lambda$handleMessage$2(Lorg/mozilla/gecko/util/EventCallback;Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic c(Lorg/mozilla/gecko/util/EventCallback;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/mozilla/geckoview/WebPushController$EventListener;->lambda$handleMessage$1(Lorg/mozilla/gecko/util/EventCallback;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic d(Lorg/mozilla/gecko/util/EventCallback;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/mozilla/geckoview/WebPushController$EventListener;->lambda$handleMessage$5(Lorg/mozilla/gecko/util/EventCallback;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic e(Lorg/mozilla/gecko/util/EventCallback;Lorg/mozilla/geckoview/WebPushSubscription;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/mozilla/geckoview/WebPushController$EventListener;->lambda$handleMessage$0(Lorg/mozilla/gecko/util/EventCallback;Lorg/mozilla/geckoview/WebPushSubscription;)V

    return-void
.end method

.method public static synthetic f(Lorg/mozilla/gecko/util/EventCallback;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/mozilla/geckoview/WebPushController$EventListener;->lambda$handleMessage$3(Lorg/mozilla/gecko/util/EventCallback;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static synthetic lambda$handleMessage$0(Lorg/mozilla/gecko/util/EventCallback;Lorg/mozilla/geckoview/WebPushSubscription;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/mozilla/geckoview/WebPushSubscription;->toBundle()Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0, p1}, Lorg/mozilla/gecko/util/EventCallback;->sendSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$handleMessage$1(Lorg/mozilla/gecko/util/EventCallback;Ljava/lang/Throwable;)V
    .locals 0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lorg/mozilla/gecko/util/EventCallback;->sendSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$handleMessage$2(Lorg/mozilla/gecko/util/EventCallback;Ljava/lang/Void;)V
    .locals 0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lorg/mozilla/gecko/util/EventCallback;->sendSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$handleMessage$3(Lorg/mozilla/gecko/util/EventCallback;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/mozilla/gecko/util/EventCallback;->sendError(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$handleMessage$4(Lorg/mozilla/gecko/util/EventCallback;Lorg/mozilla/geckoview/WebPushSubscription;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/mozilla/geckoview/WebPushSubscription;->toBundle()Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0, p1}, Lorg/mozilla/gecko/util/EventCallback;->sendSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$handleMessage$5(Lorg/mozilla/gecko/util/EventCallback;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/mozilla/gecko/util/EventCallback;->sendError(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V
    .locals 3

    iget-object v0, p0, Lorg/mozilla/geckoview/WebPushController$EventListener;->this$0:Lorg/mozilla/geckoview/WebPushController;

    invoke-static {v0}, Lorg/mozilla/geckoview/WebPushController;->access$100(Lorg/mozilla/geckoview/WebPushController;)Lorg/mozilla/geckoview/WebPushDelegate;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "Not allowed"

    invoke-interface {p3, p1}, Lorg/mozilla/gecko/util/EventCallback;->sendError(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "GeckoView:PushGetSubscription"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "GeckoView:PushSubscribe"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "GeckoView:PushUnsubscribe"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    const-string p1, "scope"

    const/4 v0, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iget-object v1, p0, Lorg/mozilla/geckoview/WebPushController$EventListener;->this$0:Lorg/mozilla/geckoview/WebPushController;

    invoke-static {v1}, Lorg/mozilla/geckoview/WebPushController;->access$100(Lorg/mozilla/geckoview/WebPushController;)Lorg/mozilla/geckoview/WebPushDelegate;

    move-result-object v1

    invoke-virtual {p2, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/mozilla/geckoview/WebPushDelegate;->onGetSubscription(Ljava/lang/String;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-interface {p3, v0}, Lorg/mozilla/gecko/util/EventCallback;->sendSuccess(Ljava/lang/Object;)V

    return-void

    :cond_4
    new-instance p2, Lorg/mozilla/geckoview/a;

    const/16 v0, 0xf

    invoke-direct {p2, p3, v0}, Lorg/mozilla/geckoview/a;-><init>(Lorg/mozilla/gecko/util/EventCallback;I)V

    new-instance v0, Lorg/mozilla/geckoview/a;

    const/16 v1, 0x10

    invoke-direct {v0, p3, v1}, Lorg/mozilla/geckoview/a;-><init>(Lorg/mozilla/gecko/util/EventCallback;I)V

    goto :goto_2

    :pswitch_1
    const-string v1, "appServerKey"

    invoke-virtual {p2, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p2, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mozilla/geckoview/Base64Utils;->decode(Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_1

    :cond_5
    move-object v1, v0

    :goto_1
    iget-object v2, p0, Lorg/mozilla/geckoview/WebPushController$EventListener;->this$0:Lorg/mozilla/geckoview/WebPushController;

    invoke-static {v2}, Lorg/mozilla/geckoview/WebPushController;->access$100(Lorg/mozilla/geckoview/WebPushController;)Lorg/mozilla/geckoview/WebPushDelegate;

    move-result-object v2

    invoke-virtual {p2, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1, v1}, Lorg/mozilla/geckoview/WebPushDelegate;->onSubscribe(Ljava/lang/String;[B)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    if-nez p1, :cond_6

    invoke-interface {p3, v0}, Lorg/mozilla/gecko/util/EventCallback;->sendSuccess(Ljava/lang/Object;)V

    return-void

    :cond_6
    new-instance p2, Lorg/mozilla/geckoview/a;

    const/16 v0, 0xb

    invoke-direct {p2, p3, v0}, Lorg/mozilla/geckoview/a;-><init>(Lorg/mozilla/gecko/util/EventCallback;I)V

    new-instance v0, Lorg/mozilla/geckoview/a;

    const/16 v1, 0xc

    invoke-direct {v0, p3, v1}, Lorg/mozilla/geckoview/a;-><init>(Lorg/mozilla/gecko/util/EventCallback;I)V

    goto :goto_2

    :pswitch_2
    iget-object v1, p0, Lorg/mozilla/geckoview/WebPushController$EventListener;->this$0:Lorg/mozilla/geckoview/WebPushController;

    invoke-static {v1}, Lorg/mozilla/geckoview/WebPushController;->access$100(Lorg/mozilla/geckoview/WebPushController;)Lorg/mozilla/geckoview/WebPushDelegate;

    move-result-object v1

    invoke-virtual {p2, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lorg/mozilla/geckoview/WebPushDelegate;->onUnsubscribe(Ljava/lang/String;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    if-nez p1, :cond_7

    invoke-interface {p3, v0}, Lorg/mozilla/gecko/util/EventCallback;->sendSuccess(Ljava/lang/Object;)V

    return-void

    :cond_7
    new-instance p2, Lorg/mozilla/geckoview/a;

    const/16 v0, 0xd

    invoke-direct {p2, p3, v0}, Lorg/mozilla/geckoview/a;-><init>(Lorg/mozilla/gecko/util/EventCallback;I)V

    new-instance v0, Lorg/mozilla/geckoview/a;

    const/16 v1, 0xe

    invoke-direct {v0, p3, v1}, Lorg/mozilla/geckoview/a;-><init>(Lorg/mozilla/gecko/util/EventCallback;I)V

    :goto_2
    invoke-virtual {p1, p2, v0}, Lorg/mozilla/geckoview/GeckoResult;->accept(Lorg/mozilla/geckoview/GeckoResult$Consumer;Lorg/mozilla/geckoview/GeckoResult$Consumer;)Lorg/mozilla/geckoview/GeckoResult;

    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x1ba37eb5 -> :sswitch_2
        0x557f8a44 -> :sswitch_1
        0x6d7d750d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
