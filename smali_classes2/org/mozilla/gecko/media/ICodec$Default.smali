.class public Lorg/mozilla/gecko/media/ICodec$Default;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/gecko/media/ICodec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/media/ICodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public configure(Lorg/mozilla/gecko/media/FormatParam;Lorg/mozilla/gecko/gfx/GeckoSurface;ILjava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public dequeueInput(I)Lorg/mozilla/gecko/media/Sample;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public getInputBuffer(I)Lorg/mozilla/gecko/media/SampleBuffer;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getOutputBuffer(I)Lorg/mozilla/gecko/media/SampleBuffer;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public isAdaptivePlaybackSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isHardwareAccelerated()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTunneledPlaybackSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public queueInput(Lorg/mozilla/gecko/media/Sample;)V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public releaseOutput(Lorg/mozilla/gecko/media/Sample;Z)V
    .locals 0

    return-void
.end method

.method public setBitrate(I)V
    .locals 0

    return-void
.end method

.method public setCallbacks(Lorg/mozilla/gecko/media/ICodecCallbacks;)V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method

.method public stop()V
    .locals 0

    return-void
.end method
