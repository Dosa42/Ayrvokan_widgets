.class final Lorg/mozilla/gecko/SpeechSynthesisService$3;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/gecko/SpeechSynthesisService;->setUtteranceListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lorg/mozilla/gecko/SpeechSynthesisService;->access$600(Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lorg/mozilla/gecko/SpeechSynthesisService;->access$700(Ljava/lang/String;)V

    return-void
.end method

.method public onRangeStart(Ljava/lang/String;III)V
    .locals 0

    invoke-static {p1, p2, p3}, Lorg/mozilla/gecko/SpeechSynthesisService;->access$900(Ljava/lang/String;II)V

    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lorg/mozilla/gecko/SpeechSynthesisService;->access$800(Ljava/lang/String;)V

    return-void
.end method

.method public onStop(Ljava/lang/String;Z)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-static {p1}, Lorg/mozilla/gecko/SpeechSynthesisService;->access$600(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/mozilla/gecko/SpeechSynthesisService;->access$700(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
