.class public interface abstract Lorg/mozilla/geckoview/GeckoSession$PromptDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/GeckoSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PromptDelegate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$AutocompleteRequest;,
        Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$SharePrompt;,
        Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$PopupPrompt;,
        Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$FilePrompt;,
        Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$DateTimePrompt;,
        Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ColorPrompt;,
        Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ChoicePrompt;,
        Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$AuthPrompt;,
        Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$TextPrompt;,
        Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ButtonPrompt;,
        Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$AlertPrompt;,
        Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$BeforeUnloadPrompt;,
        Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$BasePrompt;,
        Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$PromptResponse;
    }
.end annotation


# virtual methods
.method public onAlertPrompt(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$AlertPrompt;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/geckoview/GeckoSession;",
            "Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$AlertPrompt;",
            ")",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$PromptResponse;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onAuthPrompt(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$AuthPrompt;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/geckoview/GeckoSession;",
            "Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$AuthPrompt;",
            ")",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$PromptResponse;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onBeforeUnloadPrompt(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$BeforeUnloadPrompt;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/geckoview/GeckoSession;",
            "Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$BeforeUnloadPrompt;",
            ")",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$PromptResponse;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onButtonPrompt(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ButtonPrompt;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/geckoview/GeckoSession;",
            "Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ButtonPrompt;",
            ")",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$PromptResponse;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onChoicePrompt(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ChoicePrompt;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/geckoview/GeckoSession;",
            "Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ChoicePrompt;",
            ")",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$PromptResponse;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onColorPrompt(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ColorPrompt;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/geckoview/GeckoSession;",
            "Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ColorPrompt;",
            ")",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$PromptResponse;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onDateTimePrompt(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$DateTimePrompt;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/geckoview/GeckoSession;",
            "Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$DateTimePrompt;",
            ")",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$PromptResponse;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onFilePrompt(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$FilePrompt;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/geckoview/GeckoSession;",
            "Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$FilePrompt;",
            ")",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$PromptResponse;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onLoginSave(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$AutocompleteRequest;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/geckoview/GeckoSession;",
            "Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$AutocompleteRequest<",
            "Lorg/mozilla/geckoview/Autocomplete$LoginSaveOption;",
            ">;)",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$PromptResponse;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onLoginSelect(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$AutocompleteRequest;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/geckoview/GeckoSession;",
            "Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$AutocompleteRequest<",
            "Lorg/mozilla/geckoview/Autocomplete$LoginSelectOption;",
            ">;)",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$PromptResponse;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onPopupPrompt(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$PopupPrompt;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/geckoview/GeckoSession;",
            "Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$PopupPrompt;",
            ")",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$PromptResponse;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onSharePrompt(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$SharePrompt;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/geckoview/GeckoSession;",
            "Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$SharePrompt;",
            ")",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$PromptResponse;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onTextPrompt(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$TextPrompt;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/geckoview/GeckoSession;",
            "Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$TextPrompt;",
            ")",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$PromptResponse;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
