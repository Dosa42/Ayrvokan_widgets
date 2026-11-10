.class public Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ButtonPrompt;
.super Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$BasePrompt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/GeckoSession$PromptDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ButtonPrompt"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ButtonPrompt$Type;
    }
.end annotation


# instance fields
.field public final message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$BasePrompt;-><init>(Ljava/lang/String;Lorg/mozilla/geckoview/GeckoSession$1;)V

    iput-object p2, p0, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ButtonPrompt;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public confirm(I)Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$PromptResponse;
    .locals 2

    invoke-virtual {p0}, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$BasePrompt;->ensureResult()Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object v0

    const-string v1, "button"

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->putInt(Ljava/lang/String;I)V

    invoke-super {p0}, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$BasePrompt;->confirm()Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$PromptResponse;

    move-result-object p1

    return-object p1
.end method
