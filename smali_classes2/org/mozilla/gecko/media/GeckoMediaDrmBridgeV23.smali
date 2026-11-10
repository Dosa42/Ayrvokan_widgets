.class public Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV23;
.super Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV23$KeyStatusChangeListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mDrm:Landroid/media/MediaDrm;

    new-instance v0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV23$KeyStatusChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV23$KeyStatusChangeListener;-><init>(Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV23;Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV23$1;)V

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaDrm;->setOnKeyStatusChangeListener(Landroid/media/MediaDrm$OnKeyStatusChangeListener;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public HandleKeyStatusChangeByDummyKey(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
