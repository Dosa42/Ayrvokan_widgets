.class public interface abstract Lorg/mozilla/gecko/media/ICodecCallbacks;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/gecko/media/ICodecCallbacks$Stub;,
        Lorg/mozilla/gecko/media/ICodecCallbacks$Default;
    }
.end annotation


# virtual methods
.method public abstract onError(Z)V
.end method

.method public abstract onInputPending(J)V
.end method

.method public abstract onInputQueued(J)V
.end method

.method public abstract onOutput(Lorg/mozilla/gecko/media/Sample;)V
.end method

.method public abstract onOutputFormatChanged(Lorg/mozilla/gecko/media/FormatParam;)V
.end method
