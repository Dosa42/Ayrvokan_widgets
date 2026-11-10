.class public Lorg/mozilla/geckoview/WebExtension;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/geckoview/WebExtension$MetaData;,
        Lorg/mozilla/geckoview/WebExtension$DisabledFlags;,
        Lorg/mozilla/geckoview/WebExtension$BlocklistStateFlags;,
        Lorg/mozilla/geckoview/WebExtension$SignedStateFlags;,
        Lorg/mozilla/geckoview/WebExtension$InstallException;,
        Lorg/mozilla/geckoview/WebExtension$ActionDelegate;,
        Lorg/mozilla/geckoview/WebExtension$Action;,
        Lorg/mozilla/geckoview/WebExtension$Icon;,
        Lorg/mozilla/geckoview/WebExtension$MessageSender;,
        Lorg/mozilla/geckoview/WebExtension$Listener;,
        Lorg/mozilla/geckoview/WebExtension$SessionController;,
        Lorg/mozilla/geckoview/WebExtension$Sender;,
        Lorg/mozilla/geckoview/WebExtension$TabDelegate;,
        Lorg/mozilla/geckoview/WebExtension$CreateTabDetails;,
        Lorg/mozilla/geckoview/WebExtension$UpdateTabDetails;,
        Lorg/mozilla/geckoview/WebExtension$SessionTabDelegate;,
        Lorg/mozilla/geckoview/WebExtension$Port;,
        Lorg/mozilla/geckoview/WebExtension$PortDelegate;,
        Lorg/mozilla/geckoview/WebExtension$MessageDelegate;,
        Lorg/mozilla/geckoview/WebExtension$Flags;,
        Lorg/mozilla/geckoview/WebExtension$DelegateController;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "WebExtension"


# instance fields
.field public final flags:J

.field public final id:Ljava/lang/String;

.field public final isBuiltIn:Z

.field public final location:Ljava/lang/String;

.field private mDelegateController:Lorg/mozilla/geckoview/WebExtension$DelegateController;

.field public final metaData:Lorg/mozilla/geckoview/WebExtension$MetaData;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLorg/mozilla/geckoview/WebExtensionController;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/geckoview/WebExtension;->mDelegateController:Lorg/mozilla/geckoview/WebExtension$DelegateController;

    invoke-virtual {p5, p0}, Lorg/mozilla/geckoview/WebExtensionController;->delegateFor(Lorg/mozilla/geckoview/WebExtension;)Lorg/mozilla/geckoview/WebExtensionController$DelegateController;

    move-result-object p5

    invoke-virtual {p0, p5}, Lorg/mozilla/geckoview/WebExtension;->setDelegateController(Lorg/mozilla/geckoview/WebExtension$DelegateController;)V

    iput-object p1, p0, Lorg/mozilla/geckoview/WebExtension;->location:Ljava/lang/String;

    iput-object p2, p0, Lorg/mozilla/geckoview/WebExtension;->id:Ljava/lang/String;

    iput-wide p3, p0, Lorg/mozilla/geckoview/WebExtension;->flags:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/mozilla/geckoview/WebExtension;->isBuiltIn:Z

    iput-object v0, p0, Lorg/mozilla/geckoview/WebExtension;->metaData:Lorg/mozilla/geckoview/WebExtension$MetaData;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/mozilla/geckoview/WebExtensionController;)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lorg/mozilla/geckoview/WebExtension;-><init>(Ljava/lang/String;Ljava/lang/String;JLorg/mozilla/geckoview/WebExtensionController;)V

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/gecko/util/GeckoBundle;)V
    .locals 5

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/geckoview/WebExtension;->mDelegateController:Lorg/mozilla/geckoview/WebExtension$DelegateController;

    const-string v1, "locationURI"

    invoke-virtual {p1, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/mozilla/geckoview/WebExtension;->location:Ljava/lang/String;

    const-string v1, "webExtensionId"

    invoke-virtual {p1, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/mozilla/geckoview/WebExtension;->id:Ljava/lang/String;

    const-string v1, "webExtensionFlags"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-long v3, v1

    iput-wide v3, p0, Lorg/mozilla/geckoview/WebExtension;->flags:J

    const-string v1, "isBuiltIn"

    invoke-virtual {p1, v1, v2}, Lorg/mozilla/gecko/util/GeckoBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lorg/mozilla/geckoview/WebExtension;->isBuiltIn:Z

    const-string v1, "metaData"

    invoke-virtual {p1, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Lorg/mozilla/geckoview/WebExtension$MetaData;

    invoke-virtual {p1, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->getBundle(Ljava/lang/String;)Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lorg/mozilla/geckoview/WebExtension$MetaData;-><init>(Lorg/mozilla/geckoview/WebExtension;Lorg/mozilla/gecko/util/GeckoBundle;)V

    :cond_0
    iput-object v0, p0, Lorg/mozilla/geckoview/WebExtension;->metaData:Lorg/mozilla/geckoview/WebExtension$MetaData;

    return-void
.end method

.method public static synthetic access$000(Lorg/mozilla/geckoview/WebExtension;)Lorg/mozilla/geckoview/WebExtension$DelegateController;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/geckoview/WebExtension;->mDelegateController:Lorg/mozilla/geckoview/WebExtension$DelegateController;

    return-object p0
.end method


# virtual methods
.method public getTabDelegate()Lorg/mozilla/geckoview/WebExtension$TabDelegate;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/WebExtension;->mDelegateController:Lorg/mozilla/geckoview/WebExtension$DelegateController;

    invoke-interface {v0}, Lorg/mozilla/geckoview/WebExtension$DelegateController;->getTabDelegate()Lorg/mozilla/geckoview/WebExtension$TabDelegate;

    move-result-object v0

    return-object v0
.end method

.method public setActionDelegate(Lorg/mozilla/geckoview/WebExtension$ActionDelegate;)V
    .locals 3

    iget-object v0, p0, Lorg/mozilla/geckoview/WebExtension;->mDelegateController:Lorg/mozilla/geckoview/WebExtension$DelegateController;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/mozilla/geckoview/WebExtension$DelegateController;->onActionDelegate(Lorg/mozilla/geckoview/WebExtension$ActionDelegate;)V

    :cond_0
    new-instance v0, Lorg/mozilla/gecko/util/GeckoBundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/mozilla/gecko/util/GeckoBundle;-><init>(I)V

    const-string v1, "extensionId"

    iget-object v2, p0, Lorg/mozilla/geckoview/WebExtension;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/gecko/util/GeckoBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-static {}, Lorg/mozilla/gecko/EventDispatcher;->getInstance()Lorg/mozilla/gecko/EventDispatcher;

    move-result-object p1

    const-string v1, "GeckoView:ActionDelegate:Attached"

    invoke-virtual {p1, v1, v0}, Lorg/mozilla/gecko/EventDispatcher;->dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;)V

    :cond_1
    return-void
.end method

.method public setDelegateController(Lorg/mozilla/geckoview/WebExtension$DelegateController;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/geckoview/WebExtension;->mDelegateController:Lorg/mozilla/geckoview/WebExtension$DelegateController;

    return-void
.end method

.method public setMessageDelegate(Lorg/mozilla/geckoview/WebExtension$MessageDelegate;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/WebExtension;->mDelegateController:Lorg/mozilla/geckoview/WebExtension$DelegateController;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2, p1}, Lorg/mozilla/geckoview/WebExtension$DelegateController;->onMessageDelegate(Ljava/lang/String;Lorg/mozilla/geckoview/WebExtension$MessageDelegate;)V

    :cond_0
    return-void
.end method

.method public setTabDelegate(Lorg/mozilla/geckoview/WebExtension$TabDelegate;)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/WebExtension;->mDelegateController:Lorg/mozilla/geckoview/WebExtension$DelegateController;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/mozilla/geckoview/WebExtension$DelegateController;->onTabDelegate(Lorg/mozilla/geckoview/WebExtension$TabDelegate;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WebExtension {location="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mozilla/geckoview/WebExtension;->location:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mozilla/geckoview/WebExtension;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/mozilla/geckoview/WebExtension;->flags:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
