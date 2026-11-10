.class public Lorg/mozilla/geckoview/Autocomplete$LoginSelectOption;
.super Lorg/mozilla/geckoview/Autocomplete$SelectOption;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/Autocomplete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoginSelectOption"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/geckoview/Autocomplete$LoginSelectOption$Hint;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/mozilla/geckoview/Autocomplete$SelectOption<",
        "Lorg/mozilla/geckoview/Autocomplete$LoginEntry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/Autocomplete$LoginEntry;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/mozilla/geckoview/Autocomplete$LoginSelectOption;-><init>(Lorg/mozilla/geckoview/Autocomplete$LoginEntry;I)V

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/geckoview/Autocomplete$LoginEntry;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/mozilla/geckoview/Autocomplete$SelectOption;-><init>(Ljava/lang/Object;I)V

    return-void
.end method

.method public static fromBundle(Lorg/mozilla/gecko/util/GeckoBundle;)Lorg/mozilla/geckoview/Autocomplete$LoginSelectOption;
    .locals 3

    const-string v0, "hint"

    invoke-virtual {p0, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lorg/mozilla/geckoview/Autocomplete$LoginEntry;

    const-string v2, "value"

    invoke-virtual {p0, v2}, Lorg/mozilla/gecko/util/GeckoBundle;->getBundle(Ljava/lang/String;)Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/mozilla/geckoview/Autocomplete$LoginEntry;-><init>(Lorg/mozilla/gecko/util/GeckoBundle;)V

    new-instance p0, Lorg/mozilla/geckoview/Autocomplete$LoginSelectOption;

    invoke-direct {p0, v1, v0}, Lorg/mozilla/geckoview/Autocomplete$LoginSelectOption;-><init>(Lorg/mozilla/geckoview/Autocomplete$LoginEntry;I)V

    return-object p0
.end method


# virtual methods
.method public toBundle()Lorg/mozilla/gecko/util/GeckoBundle;
    .locals 3

    new-instance v0, Lorg/mozilla/gecko/util/GeckoBundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/mozilla/gecko/util/GeckoBundle;-><init>(I)V

    iget-object v1, p0, Lorg/mozilla/geckoview/Autocomplete$Option;->value:Ljava/lang/Object;

    check-cast v1, Lorg/mozilla/geckoview/Autocomplete$LoginEntry;

    invoke-virtual {v1}, Lorg/mozilla/geckoview/Autocomplete$LoginEntry;->toBundle()Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object v1

    const-string v2, "value"

    invoke-virtual {v0, v2, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->putBundle(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;)V

    const-string v1, "hint"

    iget v2, p0, Lorg/mozilla/geckoview/Autocomplete$Option;->hint:I

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/gecko/util/GeckoBundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method
