.class public Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ChoicePrompt;
.super Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$BasePrompt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/GeckoSession$PromptDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChoicePrompt"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ChoicePrompt$Type;,
        Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ChoicePrompt$Choice;
    }
.end annotation


# instance fields
.field public final choices:[Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ChoicePrompt$Choice;

.field public final message:Ljava/lang/String;

.field public final type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I[Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ChoicePrompt$Choice;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$BasePrompt;-><init>(Ljava/lang/String;Lorg/mozilla/geckoview/GeckoSession$1;)V

    iput-object p2, p0, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ChoicePrompt;->message:Ljava/lang/String;

    iput p3, p0, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ChoicePrompt;->type:I

    iput-object p4, p0, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ChoicePrompt;->choices:[Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ChoicePrompt$Choice;

    return-void
.end method


# virtual methods
.method public confirm(Ljava/lang/String;)Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$PromptResponse;
    .locals 0

    .line 1
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ChoicePrompt;->confirm([Ljava/lang/String;)Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$PromptResponse;

    move-result-object p1

    return-object p1
.end method

.method public confirm(Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ChoicePrompt$Choice;)Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$PromptResponse;
    .locals 0

    .line 2
    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ChoicePrompt$Choice;->id:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, p1}, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ChoicePrompt;->confirm(Ljava/lang/String;)Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$PromptResponse;

    move-result-object p1

    return-object p1
.end method

.method public confirm([Ljava/lang/String;)Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$PromptResponse;
    .locals 3

    .line 3
    iget v0, p0, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ChoicePrompt;->type:I

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    const/4 v2, 0x2

    if-ne v2, v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    array-length v0, p1

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$BasePrompt;->ensureResult()Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object v0

    const-string v1, "choices"

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-super {p0}, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$BasePrompt;->confirm()Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$PromptResponse;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public confirm([Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ChoicePrompt$Choice;)Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$PromptResponse;
    .locals 5

    .line 4
    iget v0, p0, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ChoicePrompt;->type:I

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    const/4 v2, 0x2

    if-ne v2, v0, :cond_1

    :cond_0
    if-eqz p1, :cond_5

    array-length v0, p1

    if-ne v0, v1, :cond_5

    :cond_1
    const/4 v0, 0x0

    if-nez p1, :cond_2

    invoke-virtual {p0, v0}, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ChoicePrompt;->confirm([Ljava/lang/String;)Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$PromptResponse;

    move-result-object p1

    return-object p1

    :cond_2
    array-length v1, p1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, p1, v3

    if-nez v4, :cond_3

    move-object v4, v0

    goto :goto_1

    :cond_3
    iget-object v4, v4, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ChoicePrompt$Choice;->id:Ljava/lang/String;

    :goto_1
    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v2}, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ChoicePrompt;->confirm([Ljava/lang/String;)Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$PromptResponse;

    move-result-object p1

    return-object p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
