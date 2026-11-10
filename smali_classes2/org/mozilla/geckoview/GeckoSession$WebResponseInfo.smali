.class public Lorg/mozilla/geckoview/GeckoSession$WebResponseInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/GeckoSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebResponseInfo"
.end annotation


# instance fields
.field public final contentLength:J

.field public final contentType:Ljava/lang/String;

.field public final filename:Ljava/lang/String;

.field public final uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$WebResponseInfo;->uri:Ljava/lang/String;

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$WebResponseInfo;->contentType:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/mozilla/geckoview/GeckoSession$WebResponseInfo;->contentLength:J

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$WebResponseInfo;->filename:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/gecko/util/GeckoBundle;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "uri"

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$WebResponseInfo;->uri:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "contentType"

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$WebResponseInfo;->contentType:Ljava/lang/String;

    const-string v0, "contentLength"

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/mozilla/geckoview/GeckoSession$WebResponseInfo;->contentLength:J

    const-string v0, "filename"

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoSession$WebResponseInfo;->filename:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "URI cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
