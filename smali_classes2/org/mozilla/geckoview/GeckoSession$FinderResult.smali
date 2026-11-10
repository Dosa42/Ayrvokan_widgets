.class public Lorg/mozilla/geckoview/GeckoSession$FinderResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/GeckoSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FinderResult"
.end annotation


# instance fields
.field public final clientRect:Landroid/graphics/RectF;

.field public final current:I

.field public final flags:I

.field public final found:Z

.field public final linkUri:Ljava/lang/String;

.field public final searchString:Ljava/lang/String;

.field public final total:I

.field public final wrapped:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/geckoview/GeckoSession$FinderResult;->found:Z

    iput-boolean v0, p0, Lorg/mozilla/geckoview/GeckoSession$FinderResult;->wrapped:Z

    iput v0, p0, Lorg/mozilla/geckoview/GeckoSession$FinderResult;->current:I

    iput v0, p0, Lorg/mozilla/geckoview/GeckoSession$FinderResult;->total:I

    iput v0, p0, Lorg/mozilla/geckoview/GeckoSession$FinderResult;->flags:I

    const-string v0, ""

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$FinderResult;->searchString:Ljava/lang/String;

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$FinderResult;->linkUri:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$FinderResult;->clientRect:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/gecko/util/GeckoBundle;)V
    .locals 6

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "found"

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/mozilla/geckoview/GeckoSession$FinderResult;->found:Z

    const-string v0, "wrapped"

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/mozilla/geckoview/GeckoSession$FinderResult;->wrapped:Z

    const-string v0, "current"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/mozilla/geckoview/GeckoSession$FinderResult;->current:I

    const-string v0, "total"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/mozilla/geckoview/GeckoSession$FinderResult;->total:I

    const-string v0, "searchString"

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$FinderResult;->searchString:Ljava/lang/String;

    const-string v0, "flags"

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getBundle(Ljava/lang/String;)Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/geckoview/SessionFinder;->getFlagsFromBundle(Lorg/mozilla/gecko/util/GeckoBundle;)I

    move-result v0

    iput v0, p0, Lorg/mozilla/geckoview/GeckoSession$FinderResult;->flags:I

    const-string v0, "linkURL"

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$FinderResult;->linkUri:Ljava/lang/String;

    const-string v0, "clientRect"

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getBundle(Ljava/lang/String;)Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoSession$FinderResult;->clientRect:Landroid/graphics/RectF;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    const-string v1, "left"

    invoke-virtual {p1, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    const-string v2, "top"

    invoke-virtual {p1, v2}, Lorg/mozilla/gecko/util/GeckoBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float v2, v2

    const-string v3, "right"

    invoke-virtual {p1, v3}, Lorg/mozilla/gecko/util/GeckoBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    double-to-float v3, v3

    const-string v4, "bottom"

    invoke-virtual {p1, v4}, Lorg/mozilla/gecko/util/GeckoBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float p1, v4

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$FinderResult;->clientRect:Landroid/graphics/RectF;

    :goto_0
    return-void
.end method
