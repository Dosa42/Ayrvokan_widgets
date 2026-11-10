.class public Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$DateTimePrompt;
.super Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$BasePrompt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/GeckoSession$PromptDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DateTimePrompt"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$DateTimePrompt$Type;
    }
.end annotation


# instance fields
.field public final defaultValue:Ljava/lang/String;

.field public final maxValue:Ljava/lang/String;

.field public final minValue:Ljava/lang/String;

.field public final type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$BasePrompt;-><init>(Ljava/lang/String;Lorg/mozilla/geckoview/GeckoSession$1;)V

    iput p2, p0, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$DateTimePrompt;->type:I

    iput-object p3, p0, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$DateTimePrompt;->defaultValue:Ljava/lang/String;

    iput-object p4, p0, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$DateTimePrompt;->minValue:Ljava/lang/String;

    iput-object p5, p0, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$DateTimePrompt;->maxValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public confirm(Ljava/lang/String;)Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$PromptResponse;
    .locals 2

    invoke-virtual {p0}, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$BasePrompt;->ensureResult()Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object v0

    const-string v1, "datetime"

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/gecko/util/GeckoBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$BasePrompt;->confirm()Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$PromptResponse;

    move-result-object p1

    return-object p1
.end method
