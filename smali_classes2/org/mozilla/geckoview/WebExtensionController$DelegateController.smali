.class Lorg/mozilla/geckoview/WebExtensionController$DelegateController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/geckoview/WebExtension$DelegateController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/WebExtensionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DelegateController"
.end annotation


# instance fields
.field private mExtension:Lorg/mozilla/geckoview/WebExtension;

.field final synthetic this$0:Lorg/mozilla/geckoview/WebExtensionController;


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/WebExtensionController;Lorg/mozilla/geckoview/WebExtension;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/geckoview/WebExtensionController$DelegateController;->this$0:Lorg/mozilla/geckoview/WebExtensionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/mozilla/geckoview/WebExtensionController$DelegateController;->mExtension:Lorg/mozilla/geckoview/WebExtension;

    return-void
.end method


# virtual methods
.method public getActionDelegate()Lorg/mozilla/geckoview/WebExtension$ActionDelegate;
    .locals 2

    iget-object v0, p0, Lorg/mozilla/geckoview/WebExtensionController$DelegateController;->this$0:Lorg/mozilla/geckoview/WebExtensionController;

    invoke-static {v0}, Lorg/mozilla/geckoview/WebExtensionController;->access$500(Lorg/mozilla/geckoview/WebExtensionController;)Lorg/mozilla/geckoview/WebExtension$Listener;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/geckoview/WebExtensionController$DelegateController;->mExtension:Lorg/mozilla/geckoview/WebExtension;

    invoke-virtual {v0, v1}, Lorg/mozilla/geckoview/WebExtension$Listener;->getActionDelegate(Lorg/mozilla/geckoview/WebExtension;)Lorg/mozilla/geckoview/WebExtension$ActionDelegate;

    move-result-object v0

    return-object v0
.end method

.method public getTabDelegate()Lorg/mozilla/geckoview/WebExtension$TabDelegate;
    .locals 2

    iget-object v0, p0, Lorg/mozilla/geckoview/WebExtensionController$DelegateController;->this$0:Lorg/mozilla/geckoview/WebExtensionController;

    invoke-static {v0}, Lorg/mozilla/geckoview/WebExtensionController;->access$500(Lorg/mozilla/geckoview/WebExtensionController;)Lorg/mozilla/geckoview/WebExtension$Listener;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/geckoview/WebExtensionController$DelegateController;->mExtension:Lorg/mozilla/geckoview/WebExtension;

    invoke-virtual {v0, v1}, Lorg/mozilla/geckoview/WebExtension$Listener;->getTabDelegate(Lorg/mozilla/geckoview/WebExtension;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/geckoview/WebExtension$TabDelegate;

    return-object v0
.end method

.method public onActionDelegate(Lorg/mozilla/geckoview/WebExtension$ActionDelegate;)V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/geckoview/WebExtensionController$DelegateController;->this$0:Lorg/mozilla/geckoview/WebExtensionController;

    invoke-static {v0}, Lorg/mozilla/geckoview/WebExtensionController;->access$500(Lorg/mozilla/geckoview/WebExtensionController;)Lorg/mozilla/geckoview/WebExtension$Listener;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/geckoview/WebExtensionController$DelegateController;->mExtension:Lorg/mozilla/geckoview/WebExtension;

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/geckoview/WebExtension$Listener;->setActionDelegate(Lorg/mozilla/geckoview/WebExtension;Lorg/mozilla/geckoview/WebExtension$ActionDelegate;)V

    return-void
.end method

.method public onMessageDelegate(Ljava/lang/String;Lorg/mozilla/geckoview/WebExtension$MessageDelegate;)V
    .locals 4

    iget-object v0, p0, Lorg/mozilla/geckoview/WebExtensionController$DelegateController;->this$0:Lorg/mozilla/geckoview/WebExtensionController;

    invoke-static {v0}, Lorg/mozilla/geckoview/WebExtensionController;->access$500(Lorg/mozilla/geckoview/WebExtensionController;)Lorg/mozilla/geckoview/WebExtension$Listener;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/geckoview/WebExtensionController$DelegateController;->mExtension:Lorg/mozilla/geckoview/WebExtension;

    invoke-virtual {v0, v1, p2, p1}, Lorg/mozilla/geckoview/WebExtension$Listener;->setMessageDelegate(Lorg/mozilla/geckoview/WebExtension;Lorg/mozilla/geckoview/WebExtension$MessageDelegate;Ljava/lang/String;)V

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lorg/mozilla/geckoview/WebExtensionController$DelegateController;->this$0:Lorg/mozilla/geckoview/WebExtensionController;

    invoke-static {p1}, Lorg/mozilla/geckoview/WebExtensionController;->access$600(Lorg/mozilla/geckoview/WebExtensionController;)Lorg/mozilla/gecko/MultiMap;

    move-result-object p1

    iget-object p2, p0, Lorg/mozilla/geckoview/WebExtensionController$DelegateController;->mExtension:Lorg/mozilla/geckoview/WebExtension;

    iget-object p2, p2, Lorg/mozilla/geckoview/WebExtension;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/mozilla/gecko/MultiMap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/mozilla/geckoview/WebExtensionController$Message;

    iget-object v0, p0, Lorg/mozilla/geckoview/WebExtensionController$DelegateController;->this$0:Lorg/mozilla/geckoview/WebExtensionController;

    iget-object v1, p2, Lorg/mozilla/geckoview/WebExtensionController$Message;->event:Ljava/lang/String;

    iget-object v2, p2, Lorg/mozilla/geckoview/WebExtensionController$Message;->bundle:Lorg/mozilla/gecko/util/GeckoBundle;

    iget-object v3, p2, Lorg/mozilla/geckoview/WebExtensionController$Message;->callback:Lorg/mozilla/gecko/util/EventCallback;

    iget-object p2, p2, Lorg/mozilla/geckoview/WebExtensionController$Message;->session:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {v0, v1, v2, v3, p2}, Lorg/mozilla/geckoview/WebExtensionController;->handleMessage(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;Lorg/mozilla/geckoview/GeckoSession;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/mozilla/geckoview/WebExtensionController$DelegateController;->this$0:Lorg/mozilla/geckoview/WebExtensionController;

    invoke-static {p1}, Lorg/mozilla/geckoview/WebExtensionController;->access$600(Lorg/mozilla/geckoview/WebExtensionController;)Lorg/mozilla/gecko/MultiMap;

    move-result-object p1

    iget-object p2, p0, Lorg/mozilla/geckoview/WebExtensionController$DelegateController;->mExtension:Lorg/mozilla/geckoview/WebExtension;

    iget-object p2, p2, Lorg/mozilla/geckoview/WebExtension;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/mozilla/gecko/MultiMap;->remove(Ljava/lang/Object;)Ljava/util/List;

    return-void
.end method

.method public onTabDelegate(Lorg/mozilla/geckoview/WebExtension$TabDelegate;)V
    .locals 5

    iget-object v0, p0, Lorg/mozilla/geckoview/WebExtensionController$DelegateController;->this$0:Lorg/mozilla/geckoview/WebExtensionController;

    invoke-static {v0}, Lorg/mozilla/geckoview/WebExtensionController;->access$500(Lorg/mozilla/geckoview/WebExtensionController;)Lorg/mozilla/geckoview/WebExtension$Listener;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/geckoview/WebExtensionController$DelegateController;->mExtension:Lorg/mozilla/geckoview/WebExtension;

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/geckoview/WebExtension$Listener;->setTabDelegate(Lorg/mozilla/geckoview/WebExtension;Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/mozilla/geckoview/WebExtensionController$DelegateController;->this$0:Lorg/mozilla/geckoview/WebExtensionController;

    invoke-static {p1}, Lorg/mozilla/geckoview/WebExtensionController;->access$700(Lorg/mozilla/geckoview/WebExtensionController;)Lorg/mozilla/gecko/MultiMap;

    move-result-object p1

    iget-object v0, p0, Lorg/mozilla/geckoview/WebExtensionController$DelegateController;->mExtension:Lorg/mozilla/geckoview/WebExtension;

    iget-object v0, v0, Lorg/mozilla/geckoview/WebExtension;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/MultiMap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/geckoview/WebExtensionController$Message;

    iget-object v1, p0, Lorg/mozilla/geckoview/WebExtensionController$DelegateController;->this$0:Lorg/mozilla/geckoview/WebExtensionController;

    iget-object v2, v0, Lorg/mozilla/geckoview/WebExtensionController$Message;->event:Ljava/lang/String;

    iget-object v3, v0, Lorg/mozilla/geckoview/WebExtensionController$Message;->bundle:Lorg/mozilla/gecko/util/GeckoBundle;

    iget-object v4, v0, Lorg/mozilla/geckoview/WebExtensionController$Message;->callback:Lorg/mozilla/gecko/util/EventCallback;

    iget-object v0, v0, Lorg/mozilla/geckoview/WebExtensionController$Message;->session:Lorg/mozilla/geckoview/GeckoSession;

    invoke-virtual {v1, v2, v3, v4, v0}, Lorg/mozilla/geckoview/WebExtensionController;->handleMessage(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;Lorg/mozilla/geckoview/GeckoSession;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/mozilla/geckoview/WebExtensionController$DelegateController;->this$0:Lorg/mozilla/geckoview/WebExtensionController;

    invoke-static {p1}, Lorg/mozilla/geckoview/WebExtensionController;->access$700(Lorg/mozilla/geckoview/WebExtensionController;)Lorg/mozilla/gecko/MultiMap;

    move-result-object p1

    iget-object v0, p0, Lorg/mozilla/geckoview/WebExtensionController$DelegateController;->mExtension:Lorg/mozilla/geckoview/WebExtension;

    iget-object v0, v0, Lorg/mozilla/geckoview/WebExtension;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/MultiMap;->remove(Ljava/lang/Object;)Ljava/util/List;

    return-void
.end method
