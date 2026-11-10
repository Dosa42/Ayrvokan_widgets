.class public Lorg/mozilla/geckoview/WebExtension$Action;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/WebExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation


# static fields
.field static final TYPE_BROWSER_ACTION:I = 0x1

.field static final TYPE_PAGE_ACTION:I = 0x2


# instance fields
.field public final badgeBackgroundColor:Ljava/lang/Integer;

.field public final badgeText:Ljava/lang/String;

.field public final badgeTextColor:Ljava/lang/Integer;

.field public final enabled:Ljava/lang/Boolean;

.field public final icon:Lorg/mozilla/geckoview/WebExtension$Icon;

.field private final mExtension:Lorg/mozilla/geckoview/WebExtension;

.field private final mPopupUri:Ljava/lang/String;

.field public final title:Ljava/lang/String;

.field final type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lorg/mozilla/geckoview/WebExtension$Action;->type:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/geckoview/WebExtension$Action;->mExtension:Lorg/mozilla/geckoview/WebExtension;

    iput-object v0, p0, Lorg/mozilla/geckoview/WebExtension$Action;->mPopupUri:Ljava/lang/String;

    iput-object v0, p0, Lorg/mozilla/geckoview/WebExtension$Action;->title:Ljava/lang/String;

    iput-object v0, p0, Lorg/mozilla/geckoview/WebExtension$Action;->icon:Lorg/mozilla/geckoview/WebExtension$Icon;

    iput-object v0, p0, Lorg/mozilla/geckoview/WebExtension$Action;->enabled:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/mozilla/geckoview/WebExtension$Action;->badgeText:Ljava/lang/String;

    iput-object v0, p0, Lorg/mozilla/geckoview/WebExtension$Action;->badgeTextColor:Ljava/lang/Integer;

    iput-object v0, p0, Lorg/mozilla/geckoview/WebExtension$Action;->badgeBackgroundColor:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(ILorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/geckoview/WebExtension;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lorg/mozilla/geckoview/WebExtension$Action;->mExtension:Lorg/mozilla/geckoview/WebExtension;

    const-string p3, "popup"

    invoke-virtual {p2, p3}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lorg/mozilla/geckoview/WebExtension$Action;->mPopupUri:Ljava/lang/String;

    iput p1, p0, Lorg/mozilla/geckoview/WebExtension$Action;->type:I

    const-string p1, "title"

    invoke-virtual {p2, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/geckoview/WebExtension$Action;->title:Ljava/lang/String;

    const-string p1, "badgeText"

    invoke-virtual {p2, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/geckoview/WebExtension$Action;->badgeText:Ljava/lang/String;

    const-string p1, "badgeBackgroundColor"

    invoke-virtual {p2, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/WebExtension$Action;->colorFromRgbaArray([D)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/geckoview/WebExtension$Action;->badgeBackgroundColor:Ljava/lang/Integer;

    const-string p1, "badgeTextColor"

    invoke-virtual {p2, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/WebExtension$Action;->colorFromRgbaArray([D)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/geckoview/WebExtension$Action;->badgeTextColor:Ljava/lang/Integer;

    const-string p1, "icon"

    invoke-virtual {p2, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->containsKey(Ljava/lang/String;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    new-instance p3, Lorg/mozilla/geckoview/WebExtension$Icon;

    invoke-virtual {p2, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->getBundle(Ljava/lang/String;)Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object p1

    invoke-direct {p3, p1}, Lorg/mozilla/geckoview/WebExtension$Icon;-><init>(Lorg/mozilla/gecko/util/GeckoBundle;)V

    iput-object p3, p0, Lorg/mozilla/geckoview/WebExtension$Action;->icon:Lorg/mozilla/geckoview/WebExtension$Icon;

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lorg/mozilla/geckoview/WebExtension$Action;->icon:Lorg/mozilla/geckoview/WebExtension$Icon;

    :goto_0
    const-string p1, "patternMatching"

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lorg/mozilla/gecko/util/GeckoBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_1
    iput-object p1, p0, Lorg/mozilla/geckoview/WebExtension$Action;->enabled:Ljava/lang/Boolean;

    goto :goto_2

    :cond_1
    const-string p1, "enabled"

    invoke-virtual {p2, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->containsKey(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p2, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_1

    :cond_2
    iput-object v0, p0, Lorg/mozilla/geckoview/WebExtension$Action;->enabled:Ljava/lang/Boolean;

    :goto_2
    return-void
.end method

.method private constructor <init>(Lorg/mozilla/geckoview/WebExtension$Action;Lorg/mozilla/geckoview/WebExtension$Action;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lorg/mozilla/geckoview/WebExtension$Action;->type:I

    iget v1, p2, Lorg/mozilla/geckoview/WebExtension$Action;->type:I

    if-ne v0, v1, :cond_7

    iput v0, p0, Lorg/mozilla/geckoview/WebExtension$Action;->type:I

    iget-object v0, p1, Lorg/mozilla/geckoview/WebExtension$Action;->mExtension:Lorg/mozilla/geckoview/WebExtension;

    iput-object v0, p0, Lorg/mozilla/geckoview/WebExtension$Action;->mExtension:Lorg/mozilla/geckoview/WebExtension;

    iget-object v0, p1, Lorg/mozilla/geckoview/WebExtension$Action;->title:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p2, Lorg/mozilla/geckoview/WebExtension$Action;->title:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lorg/mozilla/geckoview/WebExtension$Action;->title:Ljava/lang/String;

    iget-object v0, p1, Lorg/mozilla/geckoview/WebExtension$Action;->icon:Lorg/mozilla/geckoview/WebExtension$Icon;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p2, Lorg/mozilla/geckoview/WebExtension$Action;->icon:Lorg/mozilla/geckoview/WebExtension$Icon;

    :goto_1
    iput-object v0, p0, Lorg/mozilla/geckoview/WebExtension$Action;->icon:Lorg/mozilla/geckoview/WebExtension$Icon;

    iget-object v0, p1, Lorg/mozilla/geckoview/WebExtension$Action;->mPopupUri:Ljava/lang/String;

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p2, Lorg/mozilla/geckoview/WebExtension$Action;->mPopupUri:Ljava/lang/String;

    :goto_2
    iput-object v0, p0, Lorg/mozilla/geckoview/WebExtension$Action;->mPopupUri:Ljava/lang/String;

    iget-object v0, p1, Lorg/mozilla/geckoview/WebExtension$Action;->enabled:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    iget-object v0, p2, Lorg/mozilla/geckoview/WebExtension$Action;->enabled:Ljava/lang/Boolean;

    :goto_3
    iput-object v0, p0, Lorg/mozilla/geckoview/WebExtension$Action;->enabled:Ljava/lang/Boolean;

    iget-object v0, p1, Lorg/mozilla/geckoview/WebExtension$Action;->badgeText:Ljava/lang/String;

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    iget-object v0, p2, Lorg/mozilla/geckoview/WebExtension$Action;->badgeText:Ljava/lang/String;

    :goto_4
    iput-object v0, p0, Lorg/mozilla/geckoview/WebExtension$Action;->badgeText:Ljava/lang/String;

    iget-object v0, p1, Lorg/mozilla/geckoview/WebExtension$Action;->badgeTextColor:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    goto :goto_5

    :cond_5
    iget-object v0, p2, Lorg/mozilla/geckoview/WebExtension$Action;->badgeTextColor:Ljava/lang/Integer;

    :goto_5
    iput-object v0, p0, Lorg/mozilla/geckoview/WebExtension$Action;->badgeTextColor:Ljava/lang/Integer;

    iget-object p1, p1, Lorg/mozilla/geckoview/WebExtension$Action;->badgeBackgroundColor:Ljava/lang/Integer;

    if-eqz p1, :cond_6

    goto :goto_6

    :cond_6
    iget-object p1, p2, Lorg/mozilla/geckoview/WebExtension$Action;->badgeBackgroundColor:Ljava/lang/Integer;

    :goto_6
    iput-object p1, p0, Lorg/mozilla/geckoview/WebExtension$Action;->badgeBackgroundColor:Ljava/lang/Integer;

    return-void

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "defaultValue must be of the same type."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic a(Lorg/mozilla/geckoview/WebExtension$Action;Lorg/mozilla/geckoview/GeckoSession;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/WebExtension$Action;->lambda$openPopup$0(Lorg/mozilla/geckoview/GeckoSession;)V

    return-void
.end method

.method private colorFromRgbaArray([D)Ljava/lang/Integer;
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x3

    aget-wide v0, p1, v0

    double-to-int v0, v0

    const/4 v1, 0x0

    aget-wide v1, p1, v1

    double-to-int v1, v1

    const/4 v2, 0x1

    aget-wide v2, p1, v2

    double-to-int v2, v2

    const/4 v3, 0x2

    aget-wide v3, p1, v3

    double-to-int p1, v3

    invoke-static {v0, v1, v2, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$openPopup$0(Lorg/mozilla/geckoview/GeckoSession;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/geckoview/GeckoSession;->getSettings()Lorg/mozilla/geckoview/GeckoSessionSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/mozilla/geckoview/GeckoSessionSettings;->setIsPopup(Z)V

    iget-object v0, p0, Lorg/mozilla/geckoview/WebExtension$Action;->mPopupUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/mozilla/geckoview/GeckoSession;->loadUri(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public click()V
    .locals 4

    iget-object v0, p0, Lorg/mozilla/geckoview/WebExtension$Action;->mPopupUri:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/mozilla/geckoview/WebExtension$Action;->mExtension:Lorg/mozilla/geckoview/WebExtension;

    invoke-static {v0}, Lorg/mozilla/geckoview/WebExtension;->access$000(Lorg/mozilla/geckoview/WebExtension;)Lorg/mozilla/geckoview/WebExtension$DelegateController;

    move-result-object v0

    invoke-interface {v0}, Lorg/mozilla/geckoview/WebExtension$DelegateController;->getActionDelegate()Lorg/mozilla/geckoview/WebExtension$ActionDelegate;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/mozilla/geckoview/WebExtension$Action;->mExtension:Lorg/mozilla/geckoview/WebExtension;

    invoke-interface {v0, v1, p0}, Lorg/mozilla/geckoview/WebExtension$ActionDelegate;->onTogglePopup(Lorg/mozilla/geckoview/WebExtension;Lorg/mozilla/geckoview/WebExtension$Action;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/geckoview/WebExtension$Action;->openPopup(Lorg/mozilla/geckoview/GeckoResult;)V

    return-void

    :cond_1
    new-instance v0, Lorg/mozilla/gecko/util/GeckoBundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/mozilla/gecko/util/GeckoBundle;-><init>(I)V

    iget-object v2, p0, Lorg/mozilla/geckoview/WebExtension$Action;->mExtension:Lorg/mozilla/geckoview/WebExtension;

    iget-object v2, v2, Lorg/mozilla/geckoview/WebExtension;->id:Ljava/lang/String;

    const-string v3, "extensionId"

    invoke-virtual {v0, v3, v2}, Lorg/mozilla/gecko/util/GeckoBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lorg/mozilla/geckoview/WebExtension$Action;->type:I

    if-ne v2, v1, :cond_2

    invoke-static {}, Lorg/mozilla/gecko/EventDispatcher;->getInstance()Lorg/mozilla/gecko/EventDispatcher;

    move-result-object v1

    const-string v2, "GeckoView:BrowserAction:Click"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lorg/mozilla/gecko/EventDispatcher;->dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    if-ne v2, v1, :cond_3

    invoke-static {}, Lorg/mozilla/gecko/EventDispatcher;->getInstance()Lorg/mozilla/gecko/EventDispatcher;

    move-result-object v1

    const-string v2, "GeckoView:PageAction:Click"

    goto :goto_0

    :goto_1
    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown Action type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openPopup(Lorg/mozilla/geckoview/GeckoResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Lorg/mozilla/geckoview/GeckoSession;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/mozilla/geckoview/g;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lorg/mozilla/geckoview/g;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Lorg/mozilla/geckoview/GeckoResult;->accept(Lorg/mozilla/geckoview/GeckoResult$Consumer;)Lorg/mozilla/geckoview/GeckoResult;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Action {\n\ttitle: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mozilla/geckoview/WebExtension$Action;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\n\ticon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mozilla/geckoview/WebExtension$Action;->icon:Lorg/mozilla/geckoview/WebExtension$Icon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",\n\tpopupUri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mozilla/geckoview/WebExtension$Action;->mPopupUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\n\tenabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mozilla/geckoview/WebExtension$Action;->enabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",\n\tbadgeText: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mozilla/geckoview/WebExtension$Action;->badgeText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\n\tbadgeTextColor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mozilla/geckoview/WebExtension$Action;->badgeTextColor:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",\n\tbadgeBackgroundColor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mozilla/geckoview/WebExtension$Action;->badgeBackgroundColor:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",\n}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withDefault(Lorg/mozilla/geckoview/WebExtension$Action;)Lorg/mozilla/geckoview/WebExtension$Action;
    .locals 1

    new-instance v0, Lorg/mozilla/geckoview/WebExtension$Action;

    invoke-direct {v0, p0, p1}, Lorg/mozilla/geckoview/WebExtension$Action;-><init>(Lorg/mozilla/geckoview/WebExtension$Action;Lorg/mozilla/geckoview/WebExtension$Action;)V

    return-object v0
.end method
