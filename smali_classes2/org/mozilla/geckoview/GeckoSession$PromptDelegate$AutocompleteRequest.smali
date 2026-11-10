.class public Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$AutocompleteRequest;
.super Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$BasePrompt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/GeckoSession$PromptDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutocompleteRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/mozilla/geckoview/Autocomplete$Option<",
        "*>;>",
        "Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$BasePrompt;"
    }
.end annotation


# instance fields
.field public final options:[Lorg/mozilla/geckoview/Autocomplete$Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lorg/mozilla/geckoview/Autocomplete$Option;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$BasePrompt;-><init>(Ljava/lang/String;Lorg/mozilla/geckoview/GeckoSession$1;)V

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$AutocompleteRequest;->options:[Lorg/mozilla/geckoview/Autocomplete$Option;

    return-void
.end method


# virtual methods
.method public confirm(Lorg/mozilla/geckoview/Autocomplete$Option;)Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$PromptResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/geckoview/Autocomplete$Option<",
            "*>;)",
            "Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$PromptResponse;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$BasePrompt;->ensureResult()Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object v0

    const-string v1, "selection"

    invoke-virtual {p1}, Lorg/mozilla/geckoview/Autocomplete$Option;->toBundle()Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->putBundle(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;)V

    invoke-super {p0}, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$BasePrompt;->confirm()Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$PromptResponse;

    move-result-object p1

    return-object p1
.end method

.method public dismiss()Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$PromptResponse;
    .locals 1

    invoke-super {p0}, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$BasePrompt;->dismiss()Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$PromptResponse;

    move-result-object v0

    return-object v0
.end method
