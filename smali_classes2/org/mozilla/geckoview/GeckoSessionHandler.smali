.class abstract Lorg/mozilla/geckoview/GeckoSessionHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/gecko/util/BundleEventListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Delegate:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/mozilla/gecko/util/BundleEventListener;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOGTAG:Ljava/lang/String; = "GeckoSessionHandler"


# instance fields
.field private mDelegate:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDelegate;"
        }
    .end annotation
.end field

.field private final mEvents:[Ljava/lang/String;

.field private final mModuleName:Ljava/lang/String;

.field private mRegisteredListeners:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/mozilla/geckoview/GeckoSession;[Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/mozilla/geckoview/GeckoSessionHandler;-><init>(Ljava/lang/String;Lorg/mozilla/geckoview/GeckoSession;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/mozilla/geckoview/GeckoSession;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p2, Lorg/mozilla/geckoview/GeckoSession;->handlersCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lorg/mozilla/geckoview/GeckoSession;->handlersCount:I

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoSessionHandler;->mModuleName:Ljava/lang/String;

    iput-object p3, p0, Lorg/mozilla/geckoview/GeckoSessionHandler;->mEvents:[Ljava/lang/String;

    invoke-virtual {p2}, Lorg/mozilla/geckoview/GeckoSession;->getEventDispatcher()Lorg/mozilla/gecko/EventDispatcher;

    move-result-object p1

    invoke-virtual {p1, p0, p4}, Lorg/mozilla/gecko/EventDispatcher;->registerUiThreadListener(Lorg/mozilla/gecko/util/BundleEventListener;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getDelegate()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TDelegate;"
        }
    .end annotation

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSessionHandler;->mDelegate:Ljava/lang/Object;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSessionHandler;->mModuleName:Ljava/lang/String;

    return-object v0
.end method

.method public handleDefaultMessage(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V
    .locals 0

    if-eqz p3, :cond_0

    const-string p1, "No delegate registered"

    invoke-interface {p3, p1}, Lorg/mozilla/gecko/util/EventCallback;->sendError(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public abstract handleMessage(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDelegate;",
            "Ljava/lang/String;",
            "Lorg/mozilla/gecko/util/GeckoBundle;",
            "Lorg/mozilla/gecko/util/EventCallback;",
            ")V"
        }
    .end annotation
.end method

.method public handleMessage(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSessionHandler;->mDelegate:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/mozilla/geckoview/GeckoSessionHandler;->handleMessage(Ljava/lang/Object;Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/mozilla/geckoview/GeckoSessionHandler;->handleDefaultMessage(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V

    :goto_0
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSessionHandler;->mDelegate:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setDelegate(Ljava/lang/Object;Lorg/mozilla/geckoview/GeckoSession;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDelegate;",
            "Lorg/mozilla/geckoview/GeckoSession;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSessionHandler;->mDelegate:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoSessionHandler;->mDelegate:Ljava/lang/Object;

    iget-boolean v0, p0, Lorg/mozilla/geckoview/GeckoSessionHandler;->mRegisteredListeners:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lorg/mozilla/geckoview/GeckoSession;->getEventDispatcher()Lorg/mozilla/gecko/EventDispatcher;

    move-result-object p1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSessionHandler;->mEvents:[Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lorg/mozilla/gecko/EventDispatcher;->registerUiThreadListener(Lorg/mozilla/gecko/util/BundleEventListener;[Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/mozilla/geckoview/GeckoSessionHandler;->mRegisteredListeners:Z

    :cond_1
    invoke-virtual {p2}, Lorg/mozilla/geckoview/GeckoSession;->isOpen()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    new-instance p1, Lorg/mozilla/gecko/util/GeckoBundle;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;-><init>(I)V

    const-string v0, "module"

    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoSessionHandler;->mModuleName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "enabled"

    invoke-virtual {p0}, Lorg/mozilla/geckoview/GeckoSessionHandler;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p2}, Lorg/mozilla/geckoview/GeckoSession;->getEventDispatcher()Lorg/mozilla/gecko/EventDispatcher;

    move-result-object p2

    const-string v0, "GeckoView:UpdateModuleState"

    invoke-virtual {p2, v0, p1}, Lorg/mozilla/gecko/EventDispatcher;->dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;)V

    return-void
.end method
