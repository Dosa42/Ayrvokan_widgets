.class public interface abstract Lorg/mozilla/gecko/media/GeckoMediaDrm;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/gecko/media/GeckoMediaDrm$Callbacks;
    }
.end annotation


# virtual methods
.method public abstract closeSession(ILjava/lang/String;)V
.end method

.method public abstract createSession(IILjava/lang/String;[B)V
.end method

.method public abstract getMediaCrypto()Landroid/media/MediaCrypto;
.end method

.method public abstract release()V
.end method

.method public abstract setCallbacks(Lorg/mozilla/gecko/media/GeckoMediaDrm$Callbacks;)V
.end method

.method public abstract setServerCertificate([B)V
.end method

.method public abstract updateSession(ILjava/lang/String;[B)V
.end method
