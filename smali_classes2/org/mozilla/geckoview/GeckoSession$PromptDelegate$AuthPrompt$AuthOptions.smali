.class public Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$AuthPrompt$AuthOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$AuthPrompt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$AuthPrompt$AuthOptions$Level;,
        Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$AuthPrompt$AuthOptions$Flags;
    }
.end annotation


# instance fields
.field public final flags:I

.field public final level:I

.field public final password:Ljava/lang/String;

.field public final uri:Ljava/lang/String;

.field public final username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$AuthPrompt$AuthOptions;->flags:I

    const-string v1, ""

    iput-object v1, p0, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$AuthPrompt$AuthOptions;->uri:Ljava/lang/String;

    iput v0, p0, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$AuthPrompt$AuthOptions;->level:I

    iput-object v1, p0, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$AuthPrompt$AuthOptions;->username:Ljava/lang/String;

    iput-object v1, p0, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$AuthPrompt$AuthOptions;->password:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/gecko/util/GeckoBundle;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "flags"

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$AuthPrompt$AuthOptions;->flags:I

    const-string v0, "uri"

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$AuthPrompt$AuthOptions;->uri:Ljava/lang/String;

    const-string v0, "level"

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$AuthPrompt$AuthOptions;->level:I

    const-string v0, "username"

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$AuthPrompt$AuthOptions;->username:Ljava/lang/String;

    const-string v0, "password"

    invoke-virtual {p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$AuthPrompt$AuthOptions;->password:Ljava/lang/String;

    return-void
.end method
