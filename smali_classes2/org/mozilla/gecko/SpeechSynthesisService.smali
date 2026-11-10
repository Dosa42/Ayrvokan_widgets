.class public Lorg/mozilla/gecko/SpeechSynthesisService;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "GeckoSpeechSynthesis"

.field private static sTTS:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()V
    .locals 0

    invoke-static {}, Lorg/mozilla/gecko/SpeechSynthesisService;->setUtteranceListener()V

    return-void
.end method

.method public static synthetic access$100()V
    .locals 0

    invoke-static {}, Lorg/mozilla/gecko/SpeechSynthesisService;->registerVoicesByLocale()V

    return-void
.end method

.method public static synthetic access$200()Landroid/speech/tts/TextToSpeech;
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/SpeechSynthesisService;->getTTS()Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic access$300()Ljava/util/Set;
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/SpeechSynthesisService;->getAvailableLanguages()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic access$400(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/mozilla/gecko/SpeechSynthesisService;->registerVoice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public static synthetic access$500()V
    .locals 0

    invoke-static {}, Lorg/mozilla/gecko/SpeechSynthesisService;->doneRegisteringVoices()V

    return-void
.end method

.method public static synthetic access$600(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lorg/mozilla/gecko/SpeechSynthesisService;->dispatchEnd(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$700(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lorg/mozilla/gecko/SpeechSynthesisService;->dispatchError(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$800(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lorg/mozilla/gecko/SpeechSynthesisService;->dispatchStart(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$900(Ljava/lang/String;II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/mozilla/gecko/SpeechSynthesisService;->dispatchBoundary(Ljava/lang/String;II)V

    return-void
.end method

.method private static native dispatchBoundary(Ljava/lang/String;II)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        dispatchTo = "gecko"
    .end annotation
.end method

.method private static native dispatchEnd(Ljava/lang/String;)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        dispatchTo = "gecko"
    .end annotation
.end method

.method private static native dispatchError(Ljava/lang/String;)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        dispatchTo = "gecko"
    .end annotation
.end method

.method private static native dispatchStart(Ljava/lang/String;)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        dispatchTo = "gecko"
    .end annotation
.end method

.method private static native doneRegisteringVoices()V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        dispatchTo = "gecko"
    .end annotation
.end method

.method private static getAvailableLanguages()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/mozilla/gecko/SpeechSynthesisService;->getTTS()Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getAvailableLanguages()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private static getTTS()Landroid/speech/tts/TextToSpeech;
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/SpeechSynthesisService;->sTTS:Ljava/lang/Object;

    check-cast v0, Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method public static initSynth()V
    .locals 0
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    invoke-static {}, Lorg/mozilla/gecko/SpeechSynthesisService;->initSynthInternal()V

    return-void
.end method

.method private static initSynthInternal()V
    .locals 3

    sget-object v0, Lorg/mozilla/gecko/SpeechSynthesisService;->sTTS:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/speech/tts/TextToSpeech;

    new-instance v2, Lorg/mozilla/gecko/SpeechSynthesisService$1;

    invoke-direct {v2}, Lorg/mozilla/gecko/SpeechSynthesisService$1;-><init>()V

    invoke-direct {v1, v0, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    sput-object v1, Lorg/mozilla/gecko/SpeechSynthesisService;->sTTS:Ljava/lang/Object;

    return-void
.end method

.method private static native registerVoice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        dispatchTo = "gecko"
    .end annotation
.end method

.method private static registerVoicesByLocale()V
    .locals 1

    new-instance v0, Lorg/mozilla/gecko/SpeechSynthesisService$2;

    invoke-direct {v0}, Lorg/mozilla/gecko/SpeechSynthesisService$2;-><init>()V

    invoke-static {v0}, Lorg/mozilla/gecko/util/ThreadUtils;->postToBackgroundThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static setUtteranceListener()V
    .locals 2

    sget-object v0, Lorg/mozilla/gecko/SpeechSynthesisService;->sTTS:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/mozilla/gecko/SpeechSynthesisService;->getTTS()Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    new-instance v1, Lorg/mozilla/gecko/SpeechSynthesisService$3;

    invoke-direct {v1}, Lorg/mozilla/gecko/SpeechSynthesisService$3;-><init>()V

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    return-void
.end method

.method public static speak(Ljava/lang/String;Ljava/lang/String;FFF)Ljava/lang/String;
    .locals 9
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    new-instance v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v7, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v8

    move-object v6, v7

    invoke-static/range {v0 .. v6}, Lorg/mozilla/gecko/SpeechSynthesisService;->speakInternal(Ljava/lang/String;Ljava/lang/String;FFFLjava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    return-object v8
.end method

.method private static speakInternal(Ljava/lang/String;Ljava/lang/String;FFFLjava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 2

    sget-object v0, Lorg/mozilla/gecko/SpeechSynthesisService;->sTTS:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "volume"

    invoke-static {p4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "utteranceId"

    invoke-virtual {v0, p4, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p4, Lorg/mozilla/gecko/SpeechSynthesisService;->sTTS:Ljava/lang/Object;

    check-cast p4, Landroid/speech/tts/TextToSpeech;

    new-instance p5, Ljava/util/Locale;

    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p5, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p5}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    invoke-virtual {p4, p2}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    invoke-virtual {p4, p3}, Landroid/speech/tts/TextToSpeech;->setPitch(F)I

    const/4 p0, 0x0

    invoke-virtual {p4, p1, p0, v0}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 p0, 0x1

    :cond_1
    invoke-virtual {p6, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public static stop()V
    .locals 0
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    invoke-static {}, Lorg/mozilla/gecko/SpeechSynthesisService;->stopInternal()V

    return-void
.end method

.method private static stopInternal()V
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/SpeechSynthesisService;->sTTS:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/mozilla/gecko/SpeechSynthesisService;->getTTS()Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    return-void
.end method
