.class Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV23$KeyStatusChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaDrm$OnKeyStatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV23;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KeyStatusChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV23;


# direct methods
.method private constructor <init>(Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV23;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV23$KeyStatusChangeListener;->this$0:Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV23;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV23;Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV23$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV23$KeyStatusChangeListener;-><init>(Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV23;)V

    return-void
.end method


# virtual methods
.method public onKeyStatusChange(Landroid/media/MediaDrm;[BLjava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaDrm;",
            "[B",
            "Ljava/util/List<",
            "Landroid/media/MediaDrm$KeyStatus;",
            ">;Z)V"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lorg/mozilla/gecko/media/SessionKeyInfo;

    const/4 p4, 0x0

    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-ge p4, v0, :cond_1

    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaDrm$KeyStatus;

    new-instance v1, Lorg/mozilla/gecko/media/SessionKeyInfo;

    invoke-virtual {v0}, Landroid/media/MediaDrm$KeyStatus;->getKeyId()[B

    move-result-object v2

    invoke-virtual {v0}, Landroid/media/MediaDrm$KeyStatus;->getStatusCode()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lorg/mozilla/gecko/media/SessionKeyInfo;-><init>([BI)V

    aput-object v1, p1, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV23$KeyStatusChangeListener;->this$0:Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV23;

    invoke-virtual {p3, p2, p1}, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->onSessionBatchedKeyChanged([B[Lorg/mozilla/gecko/media/SessionKeyInfo;)V

    return-void
.end method
