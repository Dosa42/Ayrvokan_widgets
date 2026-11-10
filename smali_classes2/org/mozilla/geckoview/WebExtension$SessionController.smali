.class public Lorg/mozilla/geckoview/WebExtension$SessionController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/WebExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SessionController"
.end annotation


# instance fields
.field private final mListener:Lorg/mozilla/geckoview/WebExtension$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/geckoview/WebExtension$Listener<",
            "Lorg/mozilla/geckoview/WebExtension$SessionTabDelegate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/GeckoSession;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/mozilla/geckoview/WebExtension$Listener;

    invoke-direct {v0, p1}, Lorg/mozilla/geckoview/WebExtension$Listener;-><init>(Lorg/mozilla/geckoview/GeckoSession;)V

    iput-object v0, p0, Lorg/mozilla/geckoview/WebExtension$SessionController;->mListener:Lorg/mozilla/geckoview/WebExtension$Listener;

    return-void
.end method


# virtual methods
.method public getActionDelegate(Lorg/mozilla/geckoview/WebExtension;)Lorg/mozilla/geckoview/WebExtension$ActionDelegate;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/WebExtension$SessionController;->mListener:Lorg/mozilla/geckoview/WebExtension$Listener;

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/WebExtension$Listener;->getActionDelegate(Lorg/mozilla/geckoview/WebExtension;)Lorg/mozilla/geckoview/WebExtension$ActionDelegate;

    move-result-object p1

    return-object p1
.end method

.method public getMessageDelegate(Lorg/mozilla/geckoview/WebExtension;Ljava/lang/String;)Lorg/mozilla/geckoview/WebExtension$MessageDelegate;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/WebExtension$SessionController;->mListener:Lorg/mozilla/geckoview/WebExtension$Listener;

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/geckoview/WebExtension$Listener;->getMessageDelegate(Lorg/mozilla/geckoview/WebExtension;Ljava/lang/String;)Lorg/mozilla/geckoview/WebExtension$MessageDelegate;

    move-result-object p1

    return-object p1
.end method

.method public getTabDelegate(Lorg/mozilla/geckoview/WebExtension;)Lorg/mozilla/geckoview/WebExtension$SessionTabDelegate;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/WebExtension$SessionController;->mListener:Lorg/mozilla/geckoview/WebExtension$Listener;

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/WebExtension$Listener;->getTabDelegate(Lorg/mozilla/geckoview/WebExtension;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/geckoview/WebExtension$SessionTabDelegate;

    return-object p1
.end method

.method public setActionDelegate(Lorg/mozilla/geckoview/WebExtension;Lorg/mozilla/geckoview/WebExtension$ActionDelegate;)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/WebExtension$SessionController;->mListener:Lorg/mozilla/geckoview/WebExtension$Listener;

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/geckoview/WebExtension$Listener;->setActionDelegate(Lorg/mozilla/geckoview/WebExtension;Lorg/mozilla/geckoview/WebExtension$ActionDelegate;)V

    return-void
.end method

.method public setMessageDelegate(Lorg/mozilla/geckoview/WebExtension;Lorg/mozilla/geckoview/WebExtension$MessageDelegate;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/WebExtension$SessionController;->mListener:Lorg/mozilla/geckoview/WebExtension$Listener;

    invoke-virtual {v0, p1, p2, p3}, Lorg/mozilla/geckoview/WebExtension$Listener;->setMessageDelegate(Lorg/mozilla/geckoview/WebExtension;Lorg/mozilla/geckoview/WebExtension$MessageDelegate;Ljava/lang/String;)V

    return-void
.end method

.method public setRuntime(Lorg/mozilla/geckoview/GeckoRuntime;)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/WebExtension$SessionController;->mListener:Lorg/mozilla/geckoview/WebExtension$Listener;

    iput-object p1, v0, Lorg/mozilla/geckoview/WebExtension$Listener;->runtime:Lorg/mozilla/geckoview/GeckoRuntime;

    return-void
.end method

.method public setTabDelegate(Lorg/mozilla/geckoview/WebExtension;Lorg/mozilla/geckoview/WebExtension$SessionTabDelegate;)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/WebExtension$SessionController;->mListener:Lorg/mozilla/geckoview/WebExtension$Listener;

    invoke-virtual {v0, p1, p2}, Lorg/mozilla/geckoview/WebExtension$Listener;->setTabDelegate(Lorg/mozilla/geckoview/WebExtension;Ljava/lang/Object;)V

    return-void
.end method
