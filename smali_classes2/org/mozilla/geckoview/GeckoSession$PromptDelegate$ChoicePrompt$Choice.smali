.class public Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ChoicePrompt$Choice;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ChoicePrompt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Choice"
.end annotation


# instance fields
.field public final disabled:Z

.field public final icon:Ljava/lang/String;

.field public final id:Ljava/lang/String;

.field public final items:[Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ChoicePrompt$Choice;

.field public final label:Ljava/lang/String;

.field public final selected:Z

.field public final separator:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ChoicePrompt$Choice;->disabled:Z

    const-string v1, ""

    iput-object v1, p0, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ChoicePrompt$Choice;->icon:Ljava/lang/String;

    iput-object v1, p0, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ChoicePrompt$Choice;->id:Ljava/lang/String;

    iput-object v1, p0, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ChoicePrompt$Choice;->label:Ljava/lang/String;

    iput-boolean v0, p0, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ChoicePrompt$Choice;->selected:Z

    iput-boolean v0, p0, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ChoicePrompt$Choice;->separator:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ChoicePrompt$Choice;->items:[Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ChoicePrompt$Choice;

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/gecko/util/GeckoBundle;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "disabled"

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ChoicePrompt$Choice;->disabled:Z

    const-string v0, "icon"

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ChoicePrompt$Choice;->icon:Ljava/lang/String;

    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ChoicePrompt$Choice;->id:Ljava/lang/String;

    const-string v0, "label"

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ChoicePrompt$Choice;->label:Ljava/lang/String;

    const-string v0, "selected"

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ChoicePrompt$Choice;->selected:Z

    const-string v0, "separator"

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ChoicePrompt$Choice;->separator:Z

    const-string v0, "items"

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getBundleArray(Ljava/lang/String;)[Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ChoicePrompt$Choice;->items:[Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ChoicePrompt$Choice;

    goto :goto_1

    :cond_0
    array-length v0, p1

    new-array v0, v0, [Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ChoicePrompt$Choice;

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ChoicePrompt$Choice;->items:[Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ChoicePrompt$Choice;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ChoicePrompt$Choice;->items:[Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ChoicePrompt$Choice;

    new-instance v2, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ChoicePrompt$Choice;

    aget-object v3, p1, v0

    invoke-direct {v2, v3}, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$ChoicePrompt$Choice;-><init>(Lorg/mozilla/gecko/util/GeckoBundle;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
