.class public Lorg/mozilla/gecko/media/IMediaDrmBridge$Default;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/gecko/media/IMediaDrmBridge;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/media/IMediaDrmBridge;
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

.method public closeSession(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public createSession(IILjava/lang/String;[B)V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public setCallbacks(Lorg/mozilla/gecko/media/IMediaDrmBridgeCallbacks;)V
    .locals 0

    return-void
.end method

.method public setServerCertificate([B)V
    .locals 0

    return-void
.end method

.method public updateSession(ILjava/lang/String;[B)V
    .locals 0

    return-void
.end method
