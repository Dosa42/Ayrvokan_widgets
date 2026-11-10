.class public Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate$Selection;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Selection"
.end annotation


# instance fields
.field public final availableActions:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final clientRect:Landroid/graphics/RectF;

.field public final flags:I

.field private final mEventCallback:Lorg/mozilla/gecko/util/EventCallback;

.field private final mSeqNo:I

.field public final text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate$Selection;->flags:I

    const-string v1, ""

    iput-object v1, p0, Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate$Selection;->text:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate$Selection;->clientRect:Landroid/graphics/RectF;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate$Selection;->availableActions:Ljava/util/Collection;

    iput v0, p0, Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate$Selection;->mSeqNo:I

    iput-object v1, p0, Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate$Selection;->mEventCallback:Lorg/mozilla/gecko/util/EventCallback;

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/gecko/util/GeckoBundle;Ljava/util/Set;Lorg/mozilla/gecko/util/EventCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/gecko/util/GeckoBundle;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/mozilla/gecko/util/EventCallback;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "collapsed"

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "editable"

    invoke-virtual {p1, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    or-int/2addr v0, v1

    const-string v1, "password"

    invoke-virtual {p1, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x4

    :cond_1
    or-int/2addr v0, v2

    iput v0, p0, Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate$Selection;->flags:I

    const-string v0, "selection"

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate$Selection;->text:Ljava/lang/String;

    const-string v0, "clientRect"

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getBundle(Ljava/lang/String;)Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate$Selection;->clientRect:Landroid/graphics/RectF;

    goto :goto_1

    :cond_2
    new-instance v1, Landroid/graphics/RectF;

    const-string v2, "left"

    invoke-virtual {v0, v2}, Lorg/mozilla/gecko/util/GeckoBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float v2, v2

    const-string v3, "top"

    invoke-virtual {v0, v3}, Lorg/mozilla/gecko/util/GeckoBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    double-to-float v3, v3

    const-string v4, "right"

    invoke-virtual {v0, v4}, Lorg/mozilla/gecko/util/GeckoBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v4, v4

    const-string v5, "bottom"

    invoke-virtual {v0, v5}, Lorg/mozilla/gecko/util/GeckoBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    double-to-float v0, v5

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate$Selection;->clientRect:Landroid/graphics/RectF;

    :goto_1
    iput-object p2, p0, Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate$Selection;->availableActions:Ljava/util/Collection;

    const-string p2, "seqNo"

    invoke-virtual {p1, p2}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate$Selection;->mSeqNo:I

    iput-object p3, p0, Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate$Selection;->mEventCallback:Lorg/mozilla/gecko/util/EventCallback;

    return-void
.end method


# virtual methods
.method public collapseToEnd()V
    .locals 1

    const-string v0, "org.mozilla.geckoview.COLLAPSE_TO_END"

    invoke-virtual {p0, v0}, Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate$Selection;->execute(Ljava/lang/String;)V

    return-void
.end method

.method public collapseToStart()V
    .locals 1

    const-string v0, "org.mozilla.geckoview.COLLAPSE_TO_START"

    invoke-virtual {p0, v0}, Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate$Selection;->execute(Ljava/lang/String;)V

    return-void
.end method

.method public copy()V
    .locals 1

    const-string v0, "org.mozilla.geckoview.COPY"

    invoke-virtual {p0, v0}, Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate$Selection;->execute(Ljava/lang/String;)V

    return-void
.end method

.method public cut()V
    .locals 1

    const-string v0, "org.mozilla.geckoview.CUT"

    invoke-virtual {p0, v0}, Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate$Selection;->execute(Ljava/lang/String;)V

    return-void
.end method

.method public delete()V
    .locals 1

    const-string v0, "org.mozilla.geckoview.DELETE"

    invoke-virtual {p0, v0}, Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate$Selection;->execute(Ljava/lang/String;)V

    return-void
.end method

.method public execute(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate$Selection;->isActionAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/mozilla/gecko/util/GeckoBundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/mozilla/gecko/util/GeckoBundle;-><init>(I)V

    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "seqNo"

    iget v1, p0, Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate$Selection;->mSeqNo:I

    invoke-virtual {v0, p1, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate$Selection;->mEventCallback:Lorg/mozilla/gecko/util/EventCallback;

    invoke-interface {p1, v0}, Lorg/mozilla/gecko/util/EventCallback;->sendSuccess(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Action not available"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hide()V
    .locals 1

    const-string v0, "org.mozilla.geckoview.HIDE"

    invoke-virtual {p0, v0}, Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate$Selection;->execute(Ljava/lang/String;)V

    return-void
.end method

.method public isActionAvailable(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate$Selection;->availableActions:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public paste()V
    .locals 1

    const-string v0, "org.mozilla.geckoview.PASTE"

    invoke-virtual {p0, v0}, Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate$Selection;->execute(Ljava/lang/String;)V

    return-void
.end method

.method public selectAll()V
    .locals 1

    const-string v0, "org.mozilla.geckoview.SELECT_ALL"

    invoke-virtual {p0, v0}, Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate$Selection;->execute(Ljava/lang/String;)V

    return-void
.end method

.method public unselect()V
    .locals 1

    const-string v0, "org.mozilla.geckoview.UNSELECT"

    invoke-virtual {p0, v0}, Lorg/mozilla/geckoview/GeckoSession$SelectionActionDelegate$Selection;->execute(Ljava/lang/String;)V

    return-void
.end method
