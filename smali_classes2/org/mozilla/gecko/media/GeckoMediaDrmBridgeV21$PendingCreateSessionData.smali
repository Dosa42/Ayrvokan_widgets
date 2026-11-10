.class Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21$PendingCreateSessionData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PendingCreateSessionData"
.end annotation


# instance fields
.field public final mInitData:[B

.field public final mMimeType:Ljava/lang/String;

.field public final mPromiseId:I

.field public final mToken:I


# direct methods
.method private constructor <init>(II[BLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21$PendingCreateSessionData;->mToken:I

    iput p2, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21$PendingCreateSessionData;->mPromiseId:I

    iput-object p3, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21$PendingCreateSessionData;->mInitData:[B

    iput-object p4, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21$PendingCreateSessionData;->mMimeType:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(II[BLjava/lang/String;Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21$PendingCreateSessionData;-><init>(II[BLjava/lang/String;)V

    return-void
.end method
