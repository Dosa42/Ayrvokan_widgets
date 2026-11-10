.class public interface abstract Lorg/mozilla/geckoview/Autocomplete$LoginStorageDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/Autocomplete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoginStorageDelegate"
.end annotation


# virtual methods
.method public onLoginFetch(Ljava/lang/String;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "[",
            "Lorg/mozilla/geckoview/Autocomplete$LoginEntry;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onLoginSave(Lorg/mozilla/geckoview/Autocomplete$LoginEntry;)V
    .locals 0

    return-void
.end method

.method public onLoginUsed(Lorg/mozilla/geckoview/Autocomplete$LoginEntry;I)V
    .locals 0

    return-void
.end method
