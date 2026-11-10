.class public interface abstract Lorg/mozilla/gecko/media/MediaDrmProxy$Callbacks;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/media/MediaDrmProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
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
