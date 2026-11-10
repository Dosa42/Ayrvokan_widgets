.class public Lorg/mozilla/gecko/media/ICodecCallbacks$Default;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/gecko/media/ICodecCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/media/ICodecCallbacks;
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

.method public onError(Z)V
    .locals 0

    return-void
.end method

.method public onInputPending(J)V
    .locals 0

    return-void
.end method

.method public onInputQueued(J)V
    .locals 0

    return-void
.end method

.method public onOutput(Lorg/mozilla/gecko/media/Sample;)V
    .locals 0

    return-void
.end method

.method public onOutputFormatChanged(Lorg/mozilla/gecko/media/FormatParam;)V
    .locals 0

    return-void
.end method
