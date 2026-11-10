.class public Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$AlertPrompt;
.super Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$BasePrompt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/GeckoSession$PromptDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertPrompt"
.end annotation


# instance fields
.field public final message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$BasePrompt;-><init>(Ljava/lang/String;Lorg/mozilla/geckoview/GeckoSession$1;)V

    iput-object p2, p0, Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$AlertPrompt;->message:Ljava/lang/String;

    return-void
.end method
