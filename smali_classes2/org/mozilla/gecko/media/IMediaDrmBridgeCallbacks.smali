.class public interface abstract Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks$Stub;,
        Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks$Default;
    }
.end annotation


# virtual methods
.method public abstract onRejectPromise(ILjava/lang/String;)V
.end method

.method public abstract onSessionBatchedKeyChanged([B[Lorg/mozilla/gecko/media/SessionKeyInfo;)V
.end method

.method public abstract onSessionClosed(I[B)V
.end method

.method public abstract onSessionCreated(II[B[B)V
.end method

.method public abstract onSessionError([BLjava/lang/String;)V
.end method

.method public abstract onSessionMessage([BI[B)V
.end method

.method public abstract onSessionUpdated(I[B)V
.end method
