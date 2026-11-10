.class public Lorg/mozilla/geckoview/WebPushController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/geckoview/WebPushController$EventListener;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "WebPushController"


# instance fields
.field private mDelegate:Lorg/mozilla/geckoview/WebPushDelegate;

.field private mEventListener:Lorg/mozilla/gecko/util/BundleEventListener;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/mozilla/geckoview/WebPushController$EventListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/mozilla/geckoview/WebPushController$EventListener;-><init>(Lorg/mozilla/geckoview/WebPushController;Lorg/mozilla/geckoview/WebPushController$1;)V

    iput-object v0, p0, Lorg/mozilla/geckoview/WebPushController;->mEventListener:Lorg/mozilla/gecko/util/BundleEventListener;

    invoke-static {}, Lorg/mozilla/gecko/EventDispatcher;->getInstance()Lorg/mozilla/gecko/EventDispatcher;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/geckoview/WebPushController;->mEventListener:Lorg/mozilla/gecko/util/BundleEventListener;

    const-string v2, "GeckoView:PushUnsubscribe"

    const-string v3, "GeckoView:PushGetSubscription"

    const-string v4, "GeckoView:PushSubscribe"

    filled-new-array {v4, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/gecko/EventDispatcher;->registerUiThreadListener(Lorg/mozilla/gecko/util/BundleEventListener;[Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/mozilla/geckoview/WebPushController;->lambda$onPushEvent$1(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic access$100(Lorg/mozilla/geckoview/WebPushController;)Lorg/mozilla/geckoview/WebPushDelegate;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/geckoview/WebPushController;->mDelegate:Lorg/mozilla/geckoview/WebPushDelegate;

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/String;[BLjava/lang/Void;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lorg/mozilla/geckoview/WebPushController;->lambda$onPushEvent$0(Ljava/lang/String;[BLjava/lang/Void;)V

    return-void
.end method

.method private static synthetic lambda$onPushEvent$0(Ljava/lang/String;[BLjava/lang/Void;)V
    .locals 1

    new-instance p2, Lorg/mozilla/gecko/util/GeckoBundle;

    const/4 v0, 0x2

    invoke-direct {p2, v0}, Lorg/mozilla/gecko/util/GeckoBundle;-><init>(I)V

    const-string v0, "scope"

    invoke-virtual {p2, v0, p0}, Lorg/mozilla/gecko/util/GeckoBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "data"

    invoke-static {p1}, Lorg/mozilla/geckoview/Base64Utils;->encode([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/mozilla/gecko/EventDispatcher;->getInstance()Lorg/mozilla/gecko/EventDispatcher;

    move-result-object p0

    const-string p1, "GeckoView:PushEvent"

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/gecko/EventDispatcher;->dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;)V

    return-void
.end method

.method private static synthetic lambda$onPushEvent$1(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public onPushEvent(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/geckoview/WebPushController;->onPushEvent(Ljava/lang/String;[B)V

    return-void
.end method

.method public onPushEvent(Ljava/lang/String;[B)V
    .locals 3

    .line 2
    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    sget-object v0, Lorg/mozilla/gecko/GeckoThread$State;->JNI_READY:Lorg/mozilla/gecko/GeckoThread$State;

    invoke-static {v0}, Lorg/mozilla/gecko/GeckoThread;->waitForState(Lorg/mozilla/gecko/GeckoThread$State;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object v0

    new-instance v1, Lorg/mozilla/geckoview/j;

    const/4 v2, 0x5

    invoke-direct {v1, v2, p1, p2}, Lorg/mozilla/geckoview/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance p1, Lorg/mozilla/geckoview/q;

    invoke-direct {p1}, Lorg/mozilla/geckoview/q;-><init>()V

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/geckoview/GeckoResult;->accept(Lorg/mozilla/geckoview/GeckoResult$Consumer;Lorg/mozilla/geckoview/GeckoResult$Consumer;)Lorg/mozilla/geckoview/GeckoResult;

    return-void
.end method

.method public onSubscriptionChanged(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    new-instance v0, Lorg/mozilla/gecko/util/GeckoBundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/mozilla/gecko/util/GeckoBundle;-><init>(I)V

    const-string v1, "scope"

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/mozilla/gecko/EventDispatcher;->getInstance()Lorg/mozilla/gecko/EventDispatcher;

    move-result-object p1

    const-string v1, "GeckoView:PushSubscriptionChanged"

    invoke-virtual {p1, v1, v0}, Lorg/mozilla/gecko/EventDispatcher;->dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;)V

    return-void
.end method

.method public setDelegate(Lorg/mozilla/geckoview/WebPushDelegate;)V
    .locals 0

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iput-object p1, p0, Lorg/mozilla/geckoview/WebPushController;->mDelegate:Lorg/mozilla/geckoview/WebPushDelegate;

    return-void
.end method
