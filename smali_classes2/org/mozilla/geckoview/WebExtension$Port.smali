.class public Lorg/mozilla/geckoview/WebExtension$Port;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/WebExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Port"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/geckoview/WebExtension$Port$Observer;
    }
.end annotation


# instance fields
.field delegate:Lorg/mozilla/geckoview/WebExtension$PortDelegate;

.field disconnected:Z

.field final id:J

.field public final name:Ljava/lang/String;

.field final observer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/mozilla/geckoview/WebExtension$Port$Observer;",
            ">;"
        }
    .end annotation
.end field

.field public final sender:Lorg/mozilla/geckoview/WebExtension$MessageSender;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/geckoview/WebExtension$Port;->disconnected:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/mozilla/geckoview/WebExtension$Port;->id:J

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/geckoview/WebExtension$Port;->delegate:Lorg/mozilla/geckoview/WebExtension$PortDelegate;

    iput-object v0, p0, Lorg/mozilla/geckoview/WebExtension$Port;->observer:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lorg/mozilla/geckoview/WebExtension$Port;->sender:Lorg/mozilla/geckoview/WebExtension$MessageSender;

    iput-object v0, p0, Lorg/mozilla/geckoview/WebExtension$Port;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLorg/mozilla/geckoview/WebExtension$MessageSender;Lorg/mozilla/geckoview/WebExtension$Port$Observer;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/geckoview/WebExtension$Port;->disconnected:Z

    iput-wide p2, p0, Lorg/mozilla/geckoview/WebExtension$Port;->id:J

    const/4 p2, 0x0

    iput-object p2, p0, Lorg/mozilla/geckoview/WebExtension$Port;->delegate:Lorg/mozilla/geckoview/WebExtension$PortDelegate;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lorg/mozilla/geckoview/WebExtension$Port;->observer:Ljava/lang/ref/WeakReference;

    iput-object p4, p0, Lorg/mozilla/geckoview/WebExtension$Port;->sender:Lorg/mozilla/geckoview/WebExtension$MessageSender;

    iput-object p1, p0, Lorg/mozilla/geckoview/WebExtension$Port;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public disconnect()V
    .locals 5

    iget-boolean v0, p0, Lorg/mozilla/geckoview/WebExtension$Port;->disconnected:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/mozilla/geckoview/WebExtension$Port;->observer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/geckoview/WebExtension$Port$Observer;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lorg/mozilla/geckoview/WebExtension$Port$Observer;->onDisconnectFromApp(Lorg/mozilla/geckoview/WebExtension$Port;)V

    :cond_1
    new-instance v0, Lorg/mozilla/gecko/util/GeckoBundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/mozilla/gecko/util/GeckoBundle;-><init>(I)V

    const-string v2, "portId"

    iget-wide v3, p0, Lorg/mozilla/geckoview/WebExtension$Port;->id:J

    invoke-virtual {v0, v2, v3, v4}, Lorg/mozilla/gecko/util/GeckoBundle;->putLong(Ljava/lang/String;J)V

    invoke-static {}, Lorg/mozilla/gecko/EventDispatcher;->getInstance()Lorg/mozilla/gecko/EventDispatcher;

    move-result-object v2

    const-string v3, "GeckoView:WebExtension:PortDisconnect"

    invoke-virtual {v2, v3, v0}, Lorg/mozilla/gecko/EventDispatcher;->dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;)V

    iput-boolean v1, p0, Lorg/mozilla/geckoview/WebExtension$Port;->disconnected:Z

    return-void
.end method

.method public postMessage(Lorg/json/JSONObject;)V
    .locals 4

    new-instance v0, Lorg/mozilla/gecko/util/GeckoBundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/mozilla/gecko/util/GeckoBundle;-><init>(I)V

    const-string v1, "portId"

    iget-wide v2, p0, Lorg/mozilla/geckoview/WebExtension$Port;->id:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/mozilla/gecko/util/GeckoBundle;->putLong(Ljava/lang/String;J)V

    :try_start_0
    const-string v1, "message"

    invoke-static {p1}, Lorg/mozilla/gecko/util/GeckoBundle;->fromJSONObject(Lorg/json/JSONObject;)Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->putBundle(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lorg/mozilla/gecko/EventDispatcher;->getInstance()Lorg/mozilla/gecko/EventDispatcher;

    move-result-object p1

    const-string v1, "GeckoView:WebExtension:PortMessageFromApp"

    invoke-virtual {p1, v1, v0}, Lorg/mozilla/gecko/EventDispatcher;->dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;)V

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setDelegate(Lorg/mozilla/geckoview/WebExtension$PortDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/geckoview/WebExtension$Port;->delegate:Lorg/mozilla/geckoview/WebExtension$PortDelegate;

    iget-object p1, p0, Lorg/mozilla/geckoview/WebExtension$Port;->observer:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/geckoview/WebExtension$Port$Observer;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lorg/mozilla/geckoview/WebExtension$Port$Observer;->onDelegateAttached(Lorg/mozilla/geckoview/WebExtension$Port;)V

    :cond_0
    return-void
.end method
