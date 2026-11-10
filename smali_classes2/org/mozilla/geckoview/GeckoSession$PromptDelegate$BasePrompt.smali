.class public Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$BasePrompt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/GeckoSession$PromptDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BasePrompt"
.end annotation


# instance fields
.field private mIsCompleted:Z

.field private mIsConfirmed:Z

.field private mResult:Lorg/mozilla/gecko/util/GeckoBundle;

.field public final title:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$BasePrompt;->title:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$BasePrompt;->mIsConfirmed:Z

    iput-boolean p1, p0, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$BasePrompt;->mIsCompleted:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lorg/mozilla/geckoview/GeckoSession$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$BasePrompt;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public confirm()Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$PromptResponse;
    .locals 2

    iget-boolean v0, p0, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$BasePrompt;->mIsCompleted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$BasePrompt;->mIsCompleted:Z

    iput-boolean v0, p0, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$BasePrompt;->mIsConfirmed:Z

    new-instance v0, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$PromptResponse;

    invoke-direct {v0, p0}, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$PromptResponse;-><init>(Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$BasePrompt;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot confirm/dismiss a Prompt twice."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dismiss()Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$PromptResponse;
    .locals 2

    iget-boolean v0, p0, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$BasePrompt;->mIsCompleted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$BasePrompt;->mIsCompleted:Z

    new-instance v0, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$PromptResponse;

    invoke-direct {v0, p0}, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$PromptResponse;-><init>(Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$BasePrompt;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot confirm/dismiss a Prompt twice."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dispatch(Lorg/mozilla/gecko/util/EventCallback;)V
    .locals 1

    iget-boolean v0, p0, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$BasePrompt;->mIsCompleted:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$BasePrompt;->mIsConfirmed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$BasePrompt;->mResult:Lorg/mozilla/gecko/util/GeckoBundle;

    :goto_0
    invoke-interface {p1, v0}, Lorg/mozilla/gecko/util/EventCallback;->sendSuccess(Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Trying to dispatch an incomplete prompt."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ensureResult()Lorg/mozilla/gecko/util/GeckoBundle;
    .locals 2

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$BasePrompt;->mResult:Lorg/mozilla/gecko/util/GeckoBundle;

    if-nez v0, :cond_0

    new-instance v0, Lorg/mozilla/gecko/util/GeckoBundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/mozilla/gecko/util/GeckoBundle;-><init>(I)V

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$BasePrompt;->mResult:Lorg/mozilla/gecko/util/GeckoBundle;

    :cond_0
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$BasePrompt;->mResult:Lorg/mozilla/gecko/util/GeckoBundle;

    return-object v0
.end method

.method public isComplete()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$BasePrompt;->mIsCompleted:Z

    return v0
.end method
