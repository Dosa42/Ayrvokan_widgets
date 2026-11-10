.class public Lorg/mozilla/geckoview/WebExtension$CreateTabDetails;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/WebExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CreateTabDetails"
.end annotation


# instance fields
.field public final active:Ljava/lang/Boolean;

.field public final cookieStoreId:Ljava/lang/String;

.field public final discarded:Ljava/lang/Boolean;

.field public final index:Ljava/lang/Integer;

.field public final openInReaderMode:Ljava/lang/Boolean;

.field public final pinned:Ljava/lang/Boolean;

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/geckoview/WebExtension$CreateTabDetails;->active:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/mozilla/geckoview/WebExtension$CreateTabDetails;->cookieStoreId:Ljava/lang/String;

    iput-object v0, p0, Lorg/mozilla/geckoview/WebExtension$CreateTabDetails;->discarded:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/mozilla/geckoview/WebExtension$CreateTabDetails;->index:Ljava/lang/Integer;

    iput-object v0, p0, Lorg/mozilla/geckoview/WebExtension$CreateTabDetails;->openInReaderMode:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/mozilla/geckoview/WebExtension$CreateTabDetails;->pinned:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/mozilla/geckoview/WebExtension$CreateTabDetails;->url:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/gecko/util/GeckoBundle;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "active"

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getBooleanObject(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/geckoview/WebExtension$CreateTabDetails;->active:Ljava/lang/Boolean;

    const-string v0, "cookieStoreId"

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/geckoview/WebExtension$CreateTabDetails;->cookieStoreId:Ljava/lang/String;

    const-string v0, "discarded"

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getBooleanObject(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/geckoview/WebExtension$CreateTabDetails;->discarded:Ljava/lang/Boolean;

    const-string v0, "index"

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/geckoview/WebExtension$CreateTabDetails;->index:Ljava/lang/Integer;

    const-string v0, "openInReaderMode"

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getBooleanObject(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/geckoview/WebExtension$CreateTabDetails;->openInReaderMode:Ljava/lang/Boolean;

    const-string v0, "pinned"

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getBooleanObject(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/geckoview/WebExtension$CreateTabDetails;->pinned:Ljava/lang/Boolean;

    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/geckoview/WebExtension$CreateTabDetails;->url:Ljava/lang/String;

    return-void
.end method
