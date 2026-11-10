.class Lorg/mozilla/gecko/media/MediaManager$1;
.super Lorg/mozilla/gecko/media/IMediaManager$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/media/MediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/gecko/media/MediaManager;


# direct methods
.method public constructor <init>(Lorg/mozilla/gecko/media/MediaManager;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/gecko/media/MediaManager$1;->this$0:Lorg/mozilla/gecko/media/MediaManager;

    invoke-direct {p0}, Lorg/mozilla/gecko/media/IMediaManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public createCodec()Lorg/mozilla/gecko/media/ICodec;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/media/MediaManager$1;->this$0:Lorg/mozilla/gecko/media/MediaManager;

    invoke-static {v0}, Lorg/mozilla/gecko/media/MediaManager;->access$008(Lorg/mozilla/gecko/media/MediaManager;)I

    new-instance v0, Lorg/mozilla/gecko/media/Codec;

    invoke-direct {v0}, Lorg/mozilla/gecko/media/Codec;-><init>()V

    return-object v0
.end method

.method public createRemoteMediaDrmBridge(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/gecko/media/IMediaDrmBridge;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/media/MediaManager$1;->this$0:Lorg/mozilla/gecko/media/MediaManager;

    invoke-static {v0}, Lorg/mozilla/gecko/media/MediaManager;->access$008(Lorg/mozilla/gecko/media/MediaManager;)I

    new-instance v0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub;

    invoke-direct {v0, p1, p2}, Lorg/mozilla/gecko/media/RemoteMediaDrmBridgeStub;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public endRequest()V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/gecko/media/MediaManager$1;->this$0:Lorg/mozilla/gecko/media/MediaManager;

    invoke-static {v0}, Lorg/mozilla/gecko/media/MediaManager;->access$000(Lorg/mozilla/gecko/media/MediaManager;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/gecko/media/MediaManager$1;->this$0:Lorg/mozilla/gecko/media/MediaManager;

    invoke-static {v0}, Lorg/mozilla/gecko/media/MediaManager;->access$010(Lorg/mozilla/gecko/media/MediaManager;)I

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unmatched codec/DRM bridge creation and ending calls!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
