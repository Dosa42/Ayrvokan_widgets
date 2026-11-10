.class public Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$PromptResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/GeckoSession$PromptDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PromptResponse"
.end annotation


# instance fields
.field private final mPrompt:Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$BasePrompt;


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$BasePrompt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$PromptResponse;->mPrompt:Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$BasePrompt;

    return-void
.end method


# virtual methods
.method public dispatch(Lorg/mozilla/gecko/util/EventCallback;)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$PromptResponse;->mPrompt:Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$BasePrompt;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$BasePrompt;->dispatch(Lorg/mozilla/gecko/util/EventCallback;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Trying to confirm/dismiss a null prompt."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
