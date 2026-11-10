.class public Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks$Default;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks;
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

.method public onRejectPromise(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSessionBatchedKeyChanged([B[Lorg/mozilla/gecko/media/SessionKeyInfo;)V
    .locals 0

    return-void
.end method

.method public onSessionClosed(I[B)V
    .locals 0

    return-void
.end method

.method public onSessionCreated(II[B[B)V
    .locals 0

    return-void
.end method

.method public onSessionError([BLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSessionMessage([BI[B)V
    .locals 0

    return-void
.end method

.method public onSessionUpdated(I[B)V
    .locals 0

    return-void
.end method
