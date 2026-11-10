.class public Lorg/mozilla/geckoview/Autocomplete$LoginEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/Autocomplete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoginEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/geckoview/Autocomplete$LoginEntry$Builder;
    }
.end annotation


# static fields
.field private static final FORM_ACTION_ORIGIN_KEY:Ljava/lang/String; = "formActionOrigin"

.field private static final GUID_KEY:Ljava/lang/String; = "guid"

.field private static final HTTP_REALM_KEY:Ljava/lang/String; = "httpRealm"

.field private static final ORIGIN_KEY:Ljava/lang/String; = "origin"

.field private static final PASSWORD_KEY:Ljava/lang/String; = "password"

.field private static final USERNAME_KEY:Ljava/lang/String; = "username"


# instance fields
.field public final formActionOrigin:Ljava/lang/String;

.field public final guid:Ljava/lang/String;

.field public final httpRealm:Ljava/lang/String;

.field public final origin:Ljava/lang/String;

.field public final password:Ljava/lang/String;

.field public final username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/geckoview/Autocomplete$LoginEntry;->guid:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lorg/mozilla/geckoview/Autocomplete$LoginEntry;->origin:Ljava/lang/String;

    iput-object v0, p0, Lorg/mozilla/geckoview/Autocomplete$LoginEntry;->formActionOrigin:Ljava/lang/String;

    iput-object v0, p0, Lorg/mozilla/geckoview/Autocomplete$LoginEntry;->httpRealm:Ljava/lang/String;

    iput-object v1, p0, Lorg/mozilla/geckoview/Autocomplete$LoginEntry;->username:Ljava/lang/String;

    iput-object v1, p0, Lorg/mozilla/geckoview/Autocomplete$LoginEntry;->password:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/gecko/util/GeckoBundle;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "guid"

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/geckoview/Autocomplete$LoginEntry;->guid:Ljava/lang/String;

    const-string v0, "origin"

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/geckoview/Autocomplete$LoginEntry;->origin:Ljava/lang/String;

    const-string v0, "formActionOrigin"

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/geckoview/Autocomplete$LoginEntry;->formActionOrigin:Ljava/lang/String;

    const-string v0, "httpRealm"

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/geckoview/Autocomplete$LoginEntry;->httpRealm:Ljava/lang/String;

    const-string v0, "username"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/geckoview/Autocomplete$LoginEntry;->username:Ljava/lang/String;

    const-string v0, "password"

    invoke-virtual {p1, v0, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/geckoview/Autocomplete$LoginEntry;->password:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toBundle()Lorg/mozilla/gecko/util/GeckoBundle;
    .locals 3

    new-instance v0, Lorg/mozilla/gecko/util/GeckoBundle;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lorg/mozilla/gecko/util/GeckoBundle;-><init>(I)V

    const-string v1, "guid"

    iget-object v2, p0, Lorg/mozilla/geckoview/Autocomplete$LoginEntry;->guid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/gecko/util/GeckoBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "origin"

    iget-object v2, p0, Lorg/mozilla/geckoview/Autocomplete$LoginEntry;->origin:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/gecko/util/GeckoBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "formActionOrigin"

    iget-object v2, p0, Lorg/mozilla/geckoview/Autocomplete$LoginEntry;->formActionOrigin:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/gecko/util/GeckoBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "httpRealm"

    iget-object v2, p0, Lorg/mozilla/geckoview/Autocomplete$LoginEntry;->httpRealm:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/gecko/util/GeckoBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "username"

    iget-object v2, p0, Lorg/mozilla/geckoview/Autocomplete$LoginEntry;->username:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/gecko/util/GeckoBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "password"

    iget-object v2, p0, Lorg/mozilla/geckoview/Autocomplete$LoginEntry;->password:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/gecko/util/GeckoBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "LoginEntry {guid="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/mozilla/geckoview/Autocomplete$LoginEntry;->guid:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", origin="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lorg/mozilla/geckoview/Autocomplete$LoginEntry;->origin:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", formActionOrigin="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lorg/mozilla/geckoview/Autocomplete$LoginEntry;->formActionOrigin:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", httpRealm="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lorg/mozilla/geckoview/Autocomplete$LoginEntry;->httpRealm:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", username="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lorg/mozilla/geckoview/Autocomplete$LoginEntry;->username:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", password="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lorg/mozilla/geckoview/Autocomplete$LoginEntry;->password:Ljava/lang/String;

    .line 59
    .line 60
    const-string v2, "}"

    .line 61
    .line 62
    invoke-static {v0, v1, v2}, La1/b;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    return-object v0
.end method
