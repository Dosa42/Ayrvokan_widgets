.class public Lorg/mozilla/geckoview/ContentBlockingController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/geckoview/ContentBlockingController$LogEntry;,
        Lorg/mozilla/geckoview/ContentBlockingController$Event;,
        Lorg/mozilla/geckoview/ContentBlockingController$ExceptionList;,
        Lorg/mozilla/geckoview/ContentBlockingController$ContentBlockingException;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "GeckoContentBlocking"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addException(Lorg/mozilla/geckoview/GeckoSession;)V
    .locals 2

    new-instance v0, Lorg/mozilla/gecko/util/GeckoBundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/mozilla/gecko/util/GeckoBundle;-><init>(I)V

    const-string v1, "sessionId"

    invoke-virtual {p1}, Lorg/mozilla/geckoview/GeckoSession;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/mozilla/gecko/EventDispatcher;->getInstance()Lorg/mozilla/gecko/EventDispatcher;

    move-result-object p1

    const-string v1, "ContentBlocking:AddException"

    invoke-virtual {p1, v1, v0}, Lorg/mozilla/gecko/EventDispatcher;->dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;)V

    return-void
.end method

.method public checkException(Lorg/mozilla/geckoview/GeckoSession;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/geckoview/GeckoSession;",
            ")",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/mozilla/geckoview/ContentBlockingController$1;

    invoke-direct {v0, p0}, Lorg/mozilla/geckoview/ContentBlockingController$1;-><init>(Lorg/mozilla/geckoview/ContentBlockingController;)V

    new-instance v1, Lorg/mozilla/gecko/util/GeckoBundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lorg/mozilla/gecko/util/GeckoBundle;-><init>(I)V

    const-string v2, "sessionId"

    invoke-virtual {p1}, Lorg/mozilla/geckoview/GeckoSession;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/mozilla/gecko/EventDispatcher;->getInstance()Lorg/mozilla/gecko/EventDispatcher;

    move-result-object p1

    const-string v2, "ContentBlocking:CheckException"

    invoke-virtual {p1, v2, v1, v0}, Lorg/mozilla/gecko/EventDispatcher;->dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V

    return-object v0
.end method

.method public clearExceptionList()V
    .locals 3

    invoke-static {}, Lorg/mozilla/gecko/EventDispatcher;->getInstance()Lorg/mozilla/gecko/EventDispatcher;

    move-result-object v0

    const-string v1, "ContentBlocking:ClearList"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/gecko/EventDispatcher;->dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;)V

    return-void
.end method

.method public getLog(Lorg/mozilla/geckoview/GeckoSession;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/geckoview/GeckoSession;",
            ")",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Ljava/util/List<",
            "Lorg/mozilla/geckoview/ContentBlockingController$LogEntry;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lorg/mozilla/geckoview/ContentBlockingController$3;

    invoke-direct {v0, p0}, Lorg/mozilla/geckoview/ContentBlockingController$3;-><init>(Lorg/mozilla/geckoview/ContentBlockingController;)V

    invoke-virtual {p1}, Lorg/mozilla/geckoview/GeckoSession;->getEventDispatcher()Lorg/mozilla/gecko/EventDispatcher;

    move-result-object p1

    const-string v1, "ContentBlocking:RequestLog"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Lorg/mozilla/gecko/EventDispatcher;->dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V

    return-object v0
.end method

.method public removeException(Lorg/mozilla/geckoview/ContentBlockingController$ContentBlockingException;)V
    .locals 2

    .line 1
    new-instance v0, Lorg/mozilla/gecko/util/GeckoBundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/mozilla/gecko/util/GeckoBundle;-><init>(I)V

    const-string v1, "principal"

    invoke-static {p1}, Lorg/mozilla/geckoview/ContentBlockingController$ContentBlockingException;->access$000(Lorg/mozilla/geckoview/ContentBlockingController$ContentBlockingException;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/mozilla/gecko/EventDispatcher;->getInstance()Lorg/mozilla/gecko/EventDispatcher;

    move-result-object p1

    const-string v1, "ContentBlocking:RemoveExceptionByPrincipal"

    invoke-virtual {p1, v1, v0}, Lorg/mozilla/gecko/EventDispatcher;->dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;)V

    return-void
.end method

.method public removeException(Lorg/mozilla/geckoview/GeckoSession;)V
    .locals 2

    .line 2
    new-instance v0, Lorg/mozilla/gecko/util/GeckoBundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/mozilla/gecko/util/GeckoBundle;-><init>(I)V

    const-string v1, "sessionId"

    invoke-virtual {p1}, Lorg/mozilla/geckoview/GeckoSession;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/mozilla/gecko/EventDispatcher;->getInstance()Lorg/mozilla/gecko/EventDispatcher;

    move-result-object p1

    const-string v1, "ContentBlocking:RemoveException"

    invoke-virtual {p1, v1, v0}, Lorg/mozilla/gecko/EventDispatcher;->dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;)V

    return-void
.end method

.method public restoreExceptionList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mozilla/geckoview/ContentBlockingController$ContentBlockingException;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/mozilla/gecko/util/GeckoBundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/mozilla/gecko/util/GeckoBundle;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mozilla/geckoview/ContentBlockingController$ContentBlockingException;

    invoke-static {v4}, Lorg/mozilla/geckoview/ContentBlockingController$ContentBlockingException;->access$000(Lorg/mozilla/geckoview/ContentBlockingController$ContentBlockingException;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mozilla/geckoview/ContentBlockingController$ContentBlockingException;

    iget-object v4, v4, Lorg/mozilla/geckoview/ContentBlockingController$ContentBlockingException;->uri:Ljava/lang/String;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "principals"

    invoke-virtual {v0, p1, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string p1, "uris"

    invoke-virtual {v0, p1, v2}, Lorg/mozilla/gecko/util/GeckoBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {}, Lorg/mozilla/gecko/EventDispatcher;->getInstance()Lorg/mozilla/gecko/EventDispatcher;

    move-result-object p1

    const-string v1, "ContentBlocking:RestoreList"

    invoke-virtual {p1, v1, v0}, Lorg/mozilla/gecko/EventDispatcher;->dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;)V

    return-void
.end method

.method public restoreExceptionList(Lorg/mozilla/geckoview/ContentBlockingController$ExceptionList;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {}, Lorg/mozilla/gecko/EventDispatcher;->getInstance()Lorg/mozilla/gecko/EventDispatcher;

    move-result-object v0

    const-string v1, "ContentBlocking:RestoreList"

    invoke-virtual {p1}, Lorg/mozilla/geckoview/ContentBlockingController$ExceptionList;->getBundle()Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/gecko/EventDispatcher;->dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;)V

    return-void
.end method

.method public saveExceptionList()Lorg/mozilla/geckoview/GeckoResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Ljava/util/List<",
            "Lorg/mozilla/geckoview/ContentBlockingController$ContentBlockingException;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lorg/mozilla/geckoview/ContentBlockingController$2;

    invoke-direct {v0, p0}, Lorg/mozilla/geckoview/ContentBlockingController$2;-><init>(Lorg/mozilla/geckoview/ContentBlockingController;)V

    invoke-static {}, Lorg/mozilla/gecko/EventDispatcher;->getInstance()Lorg/mozilla/gecko/EventDispatcher;

    move-result-object v1

    const-string v2, "ContentBlocking:SaveList"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lorg/mozilla/gecko/EventDispatcher;->dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V

    return-object v0
.end method
