.class Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21$MediaDrmListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaDrm$OnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaDrmListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;


# direct methods
.method private constructor <init>(Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21$MediaDrmListener;->this$0:Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21$MediaDrmListener;-><init>(Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;)V

    return-void
.end method


# virtual methods
.method public onEvent(Landroid/media/MediaDrm;[BII[B)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iget-object p2, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21$MediaDrmListener;->this$0:Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;

    invoke-virtual {p2, p1}, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->sessionExists(Ljava/nio/ByteBuffer;)Z

    return-void
.end method
