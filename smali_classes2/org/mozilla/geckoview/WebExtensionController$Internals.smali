.class Lorg/mozilla/geckoview/WebExtensionController$Internals;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/gecko/util/BundleEventListener;
.implements Lorg/mozilla/geckoview/WebExtension$Port$Observer;
.implements Lorg/mozilla/geckoview/WebExtensionController$ExtensionStore$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/WebExtensionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Internals"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/geckoview/WebExtensionController;


# direct methods
.method private constructor <init>(Lorg/mozilla/geckoview/WebExtensionController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mozilla/geckoview/WebExtensionController$Internals;->this$0:Lorg/mozilla/geckoview/WebExtensionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/mozilla/geckoview/WebExtensionController;Lorg/mozilla/geckoview/WebExtensionController$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/WebExtensionController$Internals;-><init>(Lorg/mozilla/geckoview/WebExtensionController;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/geckoview/WebExtensionController$Internals;->this$0:Lorg/mozilla/geckoview/WebExtensionController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/mozilla/geckoview/WebExtensionController;->handleMessage(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;Lorg/mozilla/geckoview/GeckoSession;)V

    return-void
.end method

.method public onDelegateAttached(Lorg/mozilla/geckoview/WebExtension$Port;)V
    .locals 3

    iget-object v0, p1, Lorg/mozilla/geckoview/WebExtension$Port;->delegate:Lorg/mozilla/geckoview/WebExtension$PortDelegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/mozilla/geckoview/WebExtensionController$Internals;->this$0:Lorg/mozilla/geckoview/WebExtensionController;

    invoke-static {v0}, Lorg/mozilla/geckoview/WebExtensionController;->access$300(Lorg/mozilla/geckoview/WebExtensionController;)Lorg/mozilla/gecko/MultiMap;

    move-result-object v0

    iget-wide v1, p1, Lorg/mozilla/geckoview/WebExtension$Port;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/gecko/MultiMap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/geckoview/WebExtensionController$Message;

    iget-object v2, p0, Lorg/mozilla/geckoview/WebExtensionController$Internals;->this$0:Lorg/mozilla/geckoview/WebExtensionController;

    invoke-static {v2, v1}, Lorg/mozilla/geckoview/WebExtensionController;->access$400(Lorg/mozilla/geckoview/WebExtensionController;Lorg/mozilla/geckoview/WebExtensionController$Message;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/mozilla/geckoview/WebExtensionController$Internals;->this$0:Lorg/mozilla/geckoview/WebExtensionController;

    invoke-static {v0}, Lorg/mozilla/geckoview/WebExtensionController;->access$300(Lorg/mozilla/geckoview/WebExtensionController;)Lorg/mozilla/gecko/MultiMap;

    move-result-object v0

    iget-wide v1, p1, Lorg/mozilla/geckoview/WebExtension$Port;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/mozilla/gecko/MultiMap;->remove(Ljava/lang/Object;)Ljava/util/List;

    return-void
.end method

.method public onDisconnectFromApp(Lorg/mozilla/geckoview/WebExtension$Port;)V
    .locals 3

    iget-object v0, p0, Lorg/mozilla/geckoview/WebExtensionController$Internals;->this$0:Lorg/mozilla/geckoview/WebExtensionController;

    invoke-static {v0}, Lorg/mozilla/geckoview/WebExtensionController;->access$200(Lorg/mozilla/geckoview/WebExtensionController;)Ljava/util/Map;

    move-result-object v0

    iget-wide v1, p1, Lorg/mozilla/geckoview/WebExtension$Port;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onNewExtension(Lorg/mozilla/geckoview/WebExtension;)V
    .locals 2

    new-instance v0, Lorg/mozilla/geckoview/WebExtensionController$DelegateController;

    iget-object v1, p0, Lorg/mozilla/geckoview/WebExtensionController$Internals;->this$0:Lorg/mozilla/geckoview/WebExtensionController;

    invoke-direct {v0, v1, p1}, Lorg/mozilla/geckoview/WebExtensionController$DelegateController;-><init>(Lorg/mozilla/geckoview/WebExtensionController;Lorg/mozilla/geckoview/WebExtension;)V

    invoke-virtual {p1, v0}, Lorg/mozilla/geckoview/WebExtension;->setDelegateController(Lorg/mozilla/geckoview/WebExtension$DelegateController;)V

    return-void
.end method
