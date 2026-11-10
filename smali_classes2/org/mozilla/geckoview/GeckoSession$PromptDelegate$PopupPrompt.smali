.class public Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$PopupPrompt;
.super Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$BasePrompt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/GeckoSession$PromptDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PopupPrompt"
.end annotation


# instance fields
.field public final targetUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$BasePrompt;-><init>(Ljava/lang/String;Lorg/mozilla/geckoview/GeckoSession$1;)V

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$PopupPrompt;->targetUri:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public confirm(Lorg/mozilla/geckoview/AllowOrDeny;)Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$PromptResponse;
    .locals 2

    sget-object v0, Lorg/mozilla/geckoview/AllowOrDeny;->ALLOW:Lorg/mozilla/geckoview/AllowOrDeny;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$BasePrompt;->ensureResult()Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object v0

    const-string v1, "response"

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-super {p0}, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$BasePrompt;->confirm()Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$PromptResponse;

    move-result-object p1

    return-object p1
.end method
