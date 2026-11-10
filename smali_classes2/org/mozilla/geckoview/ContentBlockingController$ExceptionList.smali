.class public Lorg/mozilla/geckoview/ContentBlockingController$ExceptionList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/ContentBlockingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExceptionList"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final mBundle:Lorg/mozilla/gecko/util/GeckoBundle;

.field final synthetic this$0:Lorg/mozilla/geckoview/ContentBlockingController;


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/ContentBlockingController;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mozilla/geckoview/ContentBlockingController$ExceptionList;->this$0:Lorg/mozilla/geckoview/ContentBlockingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/mozilla/gecko/util/GeckoBundle;->fromJSONObject(Lorg/json/JSONObject;)Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/geckoview/ContentBlockingController$ExceptionList;->mBundle:Lorg/mozilla/gecko/util/GeckoBundle;

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/geckoview/ContentBlockingController;Lorg/json/JSONObject;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/mozilla/geckoview/ContentBlockingController$ExceptionList;->this$0:Lorg/mozilla/geckoview/ContentBlockingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lorg/mozilla/gecko/util/GeckoBundle;->fromJSONObject(Lorg/json/JSONObject;)Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/geckoview/ContentBlockingController$ExceptionList;->mBundle:Lorg/mozilla/gecko/util/GeckoBundle;

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/geckoview/ContentBlockingController;Lorg/mozilla/gecko/util/GeckoBundle;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lorg/mozilla/geckoview/ContentBlockingController$ExceptionList;->this$0:Lorg/mozilla/geckoview/ContentBlockingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lorg/mozilla/gecko/util/GeckoBundle;

    invoke-direct {p1, p2}, Lorg/mozilla/gecko/util/GeckoBundle;-><init>(Lorg/mozilla/gecko/util/GeckoBundle;)V

    iput-object p1, p0, Lorg/mozilla/geckoview/ContentBlockingController$ExceptionList;->mBundle:Lorg/mozilla/gecko/util/GeckoBundle;

    return-void
.end method


# virtual methods
.method public getBundle()Lorg/mozilla/gecko/util/GeckoBundle;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/ContentBlockingController$ExceptionList;->mBundle:Lorg/mozilla/gecko/util/GeckoBundle;

    return-object v0
.end method

.method public getUris()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/mozilla/geckoview/ContentBlockingController$ExceptionList;->mBundle:Lorg/mozilla/gecko/util/GeckoBundle;

    const-string v1, "uris"

    invoke-virtual {v0, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/ContentBlockingController$ExceptionList;->mBundle:Lorg/mozilla/gecko/util/GeckoBundle;

    invoke-virtual {v0}, Lorg/mozilla/gecko/util/GeckoBundle;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/geckoview/ContentBlockingController$ExceptionList;->mBundle:Lorg/mozilla/gecko/util/GeckoBundle;

    invoke-virtual {v0}, Lorg/mozilla/gecko/util/GeckoBundle;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
