.class public final Lorg/mozilla/geckoview/SessionFinder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "GeckoSessionFinder"

.field private static final sFlagNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mDispatcher:Lorg/mozilla/gecko/EventDispatcher;

.field private mDisplayFlags:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x4

    new-array v1, v0, [Landroid/util/Pair;

    new-instance v2, Landroid/util/Pair;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "backwards"

    invoke-direct {v2, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x0

    aput-object v2, v1, v4

    new-instance v2, Landroid/util/Pair;

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "linksOnly"

    invoke-direct {v2, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v3

    new-instance v2, Landroid/util/Pair;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "matchCase"

    invoke-direct {v2, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v3

    new-instance v2, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "wholeWord"

    invoke-direct {v2, v0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x3

    aput-object v2, v1, v0

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/mozilla/geckoview/SessionFinder;->sFlagNames:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/gecko/EventDispatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/geckoview/SessionFinder;->mDispatcher:Lorg/mozilla/gecko/EventDispatcher;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/mozilla/geckoview/SessionFinder;->setDisplayFlags(I)V

    return-void
.end method

.method private static addFlagsToBundle(ILorg/mozilla/gecko/util/GeckoBundle;)V
    .locals 3

    sget-object v0, Lorg/mozilla/geckoview/SessionFinder;->sFlagNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/2addr v2, p0

    if-eqz v2, :cond_0

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lorg/mozilla/gecko/util/GeckoBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static getFlagsFromBundle(Lorg/mozilla/gecko/util/GeckoBundle;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object v1, Lorg/mozilla/geckoview/SessionFinder;->sFlagNames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lorg/mozilla/gecko/util/GeckoBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    or-int/2addr v0, v2

    goto :goto_0

    :cond_2
    return v0
.end method


# virtual methods
.method public clear()V
    .locals 3

    iget-object v0, p0, Lorg/mozilla/geckoview/SessionFinder;->mDispatcher:Lorg/mozilla/gecko/EventDispatcher;

    const-string v1, "GeckoView:ClearMatches"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/gecko/EventDispatcher;->dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;)V

    return-void
.end method

.method public find(Ljava/lang/String;I)Lorg/mozilla/geckoview/GeckoResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Lorg/mozilla/geckoview/GeckoSession$FinderResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/mozilla/gecko/util/GeckoBundle;

    sget-object v1, Lorg/mozilla/geckoview/SessionFinder;->sFlagNames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Lorg/mozilla/gecko/util/GeckoBundle;-><init>(I)V

    const-string v1, "searchString"

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lorg/mozilla/geckoview/SessionFinder;->addFlagsToBundle(ILorg/mozilla/gecko/util/GeckoBundle;)V

    new-instance p1, Lorg/mozilla/geckoview/SessionFinder$1;

    invoke-direct {p1, p0}, Lorg/mozilla/geckoview/SessionFinder$1;-><init>(Lorg/mozilla/geckoview/SessionFinder;)V

    iget-object p2, p0, Lorg/mozilla/geckoview/SessionFinder;->mDispatcher:Lorg/mozilla/gecko/EventDispatcher;

    const-string v1, "GeckoView:FindInPage"

    invoke-virtual {p2, v1, v0, p1}, Lorg/mozilla/gecko/EventDispatcher;->dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V

    return-object p1
.end method

.method public getDisplayFlags()I
    .locals 1

    iget v0, p0, Lorg/mozilla/geckoview/SessionFinder;->mDisplayFlags:I

    return v0
.end method

.method public setDisplayFlags(I)V
    .locals 5

    iput p1, p0, Lorg/mozilla/geckoview/SessionFinder;->mDisplayFlags:I

    new-instance v0, Lorg/mozilla/gecko/util/GeckoBundle;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/mozilla/gecko/util/GeckoBundle;-><init>(I)V

    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const-string v4, "highlightAll"

    invoke-virtual {v0, v4, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->putBoolean(Ljava/lang/String;Z)V

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    const-string v4, "dimPage"

    invoke-virtual {v0, v4, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->putBoolean(Ljava/lang/String;Z)V

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_2

    move v2, v3

    :cond_2
    const-string p1, "drawOutline"

    invoke-virtual {v0, p1, v2}, Lorg/mozilla/gecko/util/GeckoBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Lorg/mozilla/geckoview/SessionFinder;->mDispatcher:Lorg/mozilla/gecko/EventDispatcher;

    const-string v1, "GeckoView:DisplayMatches"

    invoke-virtual {p1, v1, v0}, Lorg/mozilla/gecko/EventDispatcher;->dispatch(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;)V

    return-void
.end method
