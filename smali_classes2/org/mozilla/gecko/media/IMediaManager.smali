.class public interface abstract Lorg/mozilla/gecko/media/IMediaManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/gecko/media/IMediaManager$Stub;,
        Lorg/mozilla/gecko/media/IMediaManager$Default;
    }
.end annotation


# virtual methods
.method public abstract createCodec()Lorg/mozilla/gecko/media/ICodec;
.end method

.method public abstract createRemoteMediaDrmBridge(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/gecko/media/IMediaDrmBridge;
.end method

.method public abstract endRequest()V
.end method
