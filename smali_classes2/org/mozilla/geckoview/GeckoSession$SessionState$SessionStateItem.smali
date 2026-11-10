.class Lorg/mozilla/geckoview/GeckoSession$SessionState$SessionStateItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/geckoview/GeckoSession$HistoryDelegate$HistoryItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/GeckoSession$SessionState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SessionStateItem"
.end annotation


# instance fields
.field private final mItem:Lorg/mozilla/gecko/util/GeckoBundle;

.field final synthetic this$0:Lorg/mozilla/geckoview/GeckoSession$SessionState;


# direct methods
.method private constructor <init>(Lorg/mozilla/geckoview/GeckoSession$SessionState;Lorg/mozilla/gecko/util/GeckoBundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoSession$SessionState$SessionStateItem;->this$0:Lorg/mozilla/geckoview/GeckoSession$SessionState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/mozilla/geckoview/GeckoSession$SessionState$SessionStateItem;->mItem:Lorg/mozilla/gecko/util/GeckoBundle;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/mozilla/geckoview/GeckoSession$SessionState;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/geckoview/GeckoSession$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/mozilla/geckoview/GeckoSession$SessionState$SessionStateItem;-><init>(Lorg/mozilla/geckoview/GeckoSession$SessionState;Lorg/mozilla/gecko/util/GeckoBundle;)V

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$SessionState$SessionStateItem;->mItem:Lorg/mozilla/gecko/util/GeckoBundle;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$SessionState$SessionStateItem;->mItem:Lorg/mozilla/gecko/util/GeckoBundle;

    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
