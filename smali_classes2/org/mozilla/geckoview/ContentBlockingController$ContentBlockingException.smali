.class public Lorg/mozilla/geckoview/ContentBlockingController$ContentBlockingException;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/ContentBlockingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentBlockingException"
.end annotation


# instance fields
.field private final mEncodedPrincipal:Ljava/lang/String;

.field public final uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/geckoview/ContentBlockingController$ContentBlockingException;->mEncodedPrincipal:Ljava/lang/String;

    iput-object p2, p0, Lorg/mozilla/geckoview/ContentBlockingController$ContentBlockingException;->uri:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lorg/mozilla/geckoview/ContentBlockingController$ContentBlockingException;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/mozilla/geckoview/ContentBlockingController$ContentBlockingException;->mEncodedPrincipal:Ljava/lang/String;

    return-object p0
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lorg/mozilla/geckoview/ContentBlockingController$ContentBlockingException;
    .locals 3

    new-instance v0, Lorg/mozilla/geckoview/ContentBlockingController$ContentBlockingException;

    const-string v1, "principal"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "uri"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/mozilla/geckoview/ContentBlockingController$ContentBlockingException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public toJson()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "principal"

    iget-object v2, p0, Lorg/mozilla/geckoview/ContentBlockingController$ContentBlockingException;->mEncodedPrincipal:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "uri"

    iget-object v2, p0, Lorg/mozilla/geckoview/ContentBlockingController$ContentBlockingException;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
