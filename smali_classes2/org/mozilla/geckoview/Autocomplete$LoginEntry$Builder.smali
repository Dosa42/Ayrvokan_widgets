.class public Lorg/mozilla/geckoview/Autocomplete$LoginEntry$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/Autocomplete$LoginEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mBundle:Lorg/mozilla/gecko/util/GeckoBundle;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/mozilla/gecko/util/GeckoBundle;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lorg/mozilla/gecko/util/GeckoBundle;-><init>(I)V

    iput-object v0, p0, Lorg/mozilla/geckoview/Autocomplete$LoginEntry$Builder;->mBundle:Lorg/mozilla/gecko/util/GeckoBundle;

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/gecko/util/GeckoBundle;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/mozilla/gecko/util/GeckoBundle;

    invoke-direct {v0, p1}, Lorg/mozilla/gecko/util/GeckoBundle;-><init>(Lorg/mozilla/gecko/util/GeckoBundle;)V

    iput-object v0, p0, Lorg/mozilla/geckoview/Autocomplete$LoginEntry$Builder;->mBundle:Lorg/mozilla/gecko/util/GeckoBundle;

    return-void
.end method


# virtual methods
.method public build()Lorg/mozilla/geckoview/Autocomplete$LoginEntry;
    .locals 2

    new-instance v0, Lorg/mozilla/geckoview/Autocomplete$LoginEntry;

    iget-object v1, p0, Lorg/mozilla/geckoview/Autocomplete$LoginEntry$Builder;->mBundle:Lorg/mozilla/gecko/util/GeckoBundle;

    invoke-direct {v0, v1}, Lorg/mozilla/geckoview/Autocomplete$LoginEntry;-><init>(Lorg/mozilla/gecko/util/GeckoBundle;)V

    return-object v0
.end method

.method public formActionOrigin(Ljava/lang/String;)Lorg/mozilla/geckoview/Autocomplete$LoginEntry$Builder;
    .locals 2

    iget-object v0, p0, Lorg/mozilla/geckoview/Autocomplete$LoginEntry$Builder;->mBundle:Lorg/mozilla/gecko/util/GeckoBundle;

    const-string v1, "formActionOrigin"

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public guid(Ljava/lang/String;)Lorg/mozilla/geckoview/Autocomplete$LoginEntry$Builder;
    .locals 2

    iget-object v0, p0, Lorg/mozilla/geckoview/Autocomplete$LoginEntry$Builder;->mBundle:Lorg/mozilla/gecko/util/GeckoBundle;

    const-string v1, "guid"

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public httpRealm(Ljava/lang/String;)Lorg/mozilla/geckoview/Autocomplete$LoginEntry$Builder;
    .locals 2

    iget-object v0, p0, Lorg/mozilla/geckoview/Autocomplete$LoginEntry$Builder;->mBundle:Lorg/mozilla/gecko/util/GeckoBundle;

    const-string v1, "httpRealm"

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public origin(Ljava/lang/String;)Lorg/mozilla/geckoview/Autocomplete$LoginEntry$Builder;
    .locals 2

    iget-object v0, p0, Lorg/mozilla/geckoview/Autocomplete$LoginEntry$Builder;->mBundle:Lorg/mozilla/gecko/util/GeckoBundle;

    const-string v1, "origin"

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public password(Ljava/lang/String;)Lorg/mozilla/geckoview/Autocomplete$LoginEntry$Builder;
    .locals 2

    iget-object v0, p0, Lorg/mozilla/geckoview/Autocomplete$LoginEntry$Builder;->mBundle:Lorg/mozilla/gecko/util/GeckoBundle;

    const-string v1, "password"

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public username(Ljava/lang/String;)Lorg/mozilla/geckoview/Autocomplete$LoginEntry$Builder;
    .locals 2

    iget-object v0, p0, Lorg/mozilla/geckoview/Autocomplete$LoginEntry$Builder;->mBundle:Lorg/mozilla/gecko/util/GeckoBundle;

    const-string v1, "username"

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
