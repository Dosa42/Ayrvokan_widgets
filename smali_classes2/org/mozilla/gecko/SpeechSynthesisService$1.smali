.class final Lorg/mozilla/gecko/SpeechSynthesisService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/gecko/SpeechSynthesisService;->initSynthInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/mozilla/gecko/SpeechSynthesisService;->access$000()V

    invoke-static {}, Lorg/mozilla/gecko/SpeechSynthesisService;->access$100()V

    return-void
.end method
