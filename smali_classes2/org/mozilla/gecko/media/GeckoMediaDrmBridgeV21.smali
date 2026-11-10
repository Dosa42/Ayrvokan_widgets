.class public Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/gecko/media/GeckoMediaDrm;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21$PostRequestTask;,
        Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21$MediaDrmListener;,
        Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21$PendingCreateSessionData;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DUMMY_KEY_ID:[B

.field private static final INVALID_SESSION_ID:Ljava/lang/String; = "Invalid"

.field public static final LICENSE_REQUEST_INITIAL:I = 0x0

.field public static final LICENSE_REQUEST_RELEASE:I = 0x2

.field public static final LICENSE_REQUEST_RENEWAL:I = 0x1

.field private static final MAX_PROMISE_ID:I = 0x7fffffff

.field private static final WIDEVINE_KEY_SYSTEM:Ljava/lang/String; = "com.widevine.alpha"

.field private static final WIDEVINE_SCHEME_UUID:Ljava/util/UUID;


# instance fields
.field protected final LOGTAG:Ljava/lang/String;

.field private mCallbacks:Lorg/mozilla/gecko/media/GeckoMediaDrm$Callbacks;

.field private mCrypto:Landroid/media/MediaCrypto;

.field private mCryptoSessionId:Ljava/nio/ByteBuffer;

.field protected mDrm:Landroid/media/MediaDrm;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mPendingCreateSessionDataQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21$PendingCreateSessionData;",
            ">;"
        }
    .end annotation
.end field

.field mProvisionTask:Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21$PostRequestTask;

.field private mProvisioningPromiseId:I

.field private mSchemeUUID:Ljava/util/UUID;

.field private mSessionIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mSessionMIMETypes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/UUID;

    const-wide v1, -0x121074568629b532L    # -3.563403477674908E221

    const-wide v3, -0x5c37d8232ae2de13L

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->WIDEVINE_SCHEME_UUID:Ljava/util/UUID;

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    sput-object v0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->DUMMY_KEY_ID:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->LOGTAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mProvisioningPromiseId:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mSessionIds:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mSessionMIMETypes:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mPendingCreateSessionDataQueue:Ljava/util/ArrayDeque;

    invoke-direct {p0, p1}, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->convertKeySystemToSchemeUUID(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mSchemeUUID:Ljava/util/UUID;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mCryptoSessionId:Ljava/nio/ByteBuffer;

    new-instance v0, Landroid/media/MediaDrm;

    iget-object v1, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mSchemeUUID:Ljava/util/UUID;

    invoke-direct {v0, v1}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V

    iput-object v0, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mDrm:Landroid/media/MediaDrm;

    invoke-direct {p0}, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->configureVendorSpecificProperty()V

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mDrm:Landroid/media/MediaDrm;

    new-instance v1, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21$MediaDrmListener;

    invoke-direct {v1, p0, p1}, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21$MediaDrmListener;-><init>(Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21$1;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaDrm;->setOnEventListener(Landroid/media/MediaDrm$OnEventListener;)V

    :try_start_0
    invoke-direct {p0}, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->ensureMediaCryptoCreated()Z
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const p1, 0x7fffffff

    invoke-direct {p0, p1}, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->startProvisioning(I)V

    :goto_0
    return-void
.end method

.method public static synthetic access$100(Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->getCDMUserAgent()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;I[B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->onProvisionResponse(I[B)V

    return-void
.end method

.method public static synthetic access$400(Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;)V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->processPendingCreateSessionData()V

    return-void
.end method

.method private static assertTrue(Z)V
    .locals 0

    return-void
.end method

.method private configureVendorSpecificProperty()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mDrm:Landroid/media/MediaDrm;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->assertTrue(Z)V

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mDrm:Landroid/media/MediaDrm;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v1, "securityLevel"

    const-string v2, "L3"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mSchemeUUID:Ljava/util/UUID;

    sget-object v1, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->WIDEVINE_SCHEME_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mDrm:Landroid/media/MediaDrm;

    const-string v1, "sessionSharing"

    const-string v2, "enable"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private convertKeySystemToSchemeUUID(Ljava/lang/String;)Ljava/util/UUID;
    .locals 2

    const-string v0, "com.widevine.alpha"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->WIDEVINE_SCHEME_UUID:Ljava/util/UUID;

    return-object p1

    :cond_0
    new-instance p1, Ljava/util/UUID;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1, v0, v1}, Ljava/util/UUID;-><init>(JJ)V

    return-object p1
.end method

.method private ensureMediaCryptoCreated()Z
    .locals 5

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mCrypto:Landroid/media/MediaCrypto;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->openSession()Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mCryptoSessionId:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_1

    return v0

    :cond_1
    iget-object v2, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mSchemeUUID:Ljava/util/UUID;

    invoke-static {v2}, Landroid/media/MediaCrypto;->isCryptoSchemeSupported(Ljava/util/UUID;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mCryptoSessionId:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    new-instance v3, Landroid/media/MediaCrypto;

    iget-object v4, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mSchemeUUID:Ljava/util/UUID;

    invoke-direct {v3, v4, v2}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V

    iput-object v3, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mCrypto:Landroid/media/MediaCrypto;

    iget-object v2, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mSessionIds:Ljava/util/HashSet;

    iget-object v3, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mCryptoSessionId:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_2
    return v0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    invoke-virtual {p0}, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->release()V

    return v0
.end method

.method private getCDMUserAgent()Ljava/lang/String;
    .locals 1

    const-string v0, "Widevine CDM v1.0"

    return-object v0
.end method

.method private getKeyRequest(Ljava/nio/ByteBuffer;[BLjava/lang/String;)Landroid/media/MediaDrm$KeyRequest;
    .locals 8

    iget v0, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mProvisioningPromiseId:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mDrm:Landroid/media/MediaDrm;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/4 v6, 0x1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v1
.end method

.method private onProvisionResponse(I[B)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mProvisionTask:Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21$PostRequestTask;

    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mProvisioningPromiseId:I

    invoke-direct {p0, p2}, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->provideProvisionResponse([B)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->resumePendingOperations()V

    goto :goto_0

    :cond_0
    const-string p2, "Failed to provide provision response."

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->onRejectPromise(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private openSession()Ljava/nio/ByteBuffer;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mDrm:Landroid/media/MediaDrm;

    invoke-virtual {v1}, Landroid/media/MediaDrm;->openSession()[B

    move-result-object v1

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/media/MediaDrmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    invoke-virtual {p0}, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->release()V

    return-object v0

    :catch_1
    invoke-virtual {p0}, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->release()V

    return-object v0

    :catch_2
    move-exception v0

    throw v0
.end method

.method private processPendingCreateSessionData()V
    .locals 4

    iget v0, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mProvisioningPromiseId:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->assertTrue(Z)V

    :goto_1
    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mPendingCreateSessionDataQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mPendingCreateSessionDataQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21$PendingCreateSessionData;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget v1, v0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21$PendingCreateSessionData;->mToken:I

    iget v2, v0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21$PendingCreateSessionData;->mPromiseId:I

    iget-object v3, v0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21$PendingCreateSessionData;->mMimeType:Ljava/lang/String;

    iget-object v0, v0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21$PendingCreateSessionData;->mInitData:[B

    invoke-virtual {p0, v1, v2, v3, v0}, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->createSession(IILjava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_2
    return-void
.end method

.method private provideProvisionResponse([B)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mDrm:Landroid/media/MediaDrm;

    invoke-virtual {v1, p1}, Landroid/media/MediaDrm;->provideProvisionResponse([B)V
    :try_end_0
    .catch Landroid/media/DeniedByServerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_1
    :goto_0
    return v0
.end method

.method private resumePendingOperations()V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PendingSessionOpsThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mHandler:Landroid/os/Handler;

    :cond_1
    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21$1;

    invoke-direct {v1, p0}, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21$1;-><init>(Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private savePendingCreateSessionData(II[BLjava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mPendingCreateSessionDataQueue:Ljava/util/ArrayDeque;

    new-instance v7, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21$PendingCreateSessionData;

    const/4 v6, 0x0

    move-object v1, v7

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21$PendingCreateSessionData;-><init>(II[BLjava/lang/String;Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21$1;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method private startProvisioning(I)V
    .locals 4

    iget v0, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mProvisioningPromiseId:I

    if-lez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iput p1, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mProvisioningPromiseId:I

    iget-object v1, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mDrm:Landroid/media/MediaDrm;

    invoke-virtual {v1}, Landroid/media/MediaDrm;->getProvisionRequest()Landroid/media/MediaDrm$ProvisionRequest;

    move-result-object v1

    new-instance v2, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21$PostRequestTask;

    invoke-virtual {v1}, Landroid/media/MediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/media/MediaDrm$ProvisionRequest;->getData()[B

    move-result-object v1

    invoke-direct {v2, p0, p1, v3, v1}, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21$PostRequestTask;-><init>(Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;ILjava/lang/String;[B)V

    iput-object v2, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mProvisionTask:Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21$PostRequestTask;

    new-array v1, v0, [Ljava/lang/Void;

    invoke-virtual {v2, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "Exception happened in startProvisioning !"

    invoke-virtual {p0, p1, v1}, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->onRejectPromise(ILjava/lang/String;)V

    iput v0, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mProvisioningPromiseId:I

    :goto_0
    return-void
.end method


# virtual methods
.method public HandleKeyStatusChangeByDummyKey(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lorg/mozilla/gecko/media/SessionKeyInfo;

    sget-object v1, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->DUMMY_KEY_ID:[B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/mozilla/gecko/media/SessionKeyInfo;-><init>([BI)V

    filled-new-array {v0}, [Lorg/mozilla/gecko/media/SessionKeyInfo;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->onSessionBatchedKeyChanged([B[Lorg/mozilla/gecko/media/SessionKeyInfo;)V

    return-void
.end method

.method public closeSession(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mDrm:Landroid/media/MediaDrm;

    if-nez v0, :cond_0

    const-string p2, "MediaDrm instance doesn\'t exist !!"

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->onRejectPromise(ILjava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lorg/mozilla/gecko/util/StringUtils;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mSessionIds:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mDrm:Landroid/media/MediaDrm;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaDrm;->closeSession([B)V

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->onSessionClosed(I[B)V

    return-void
.end method

.method public createSession(IILjava/lang/String;[B)V
    .locals 4

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mDrm:Landroid/media/MediaDrm;

    if-nez v0, :cond_0

    const-string p1, "MediaDrm instance doesn\'t exist !!"

    invoke-virtual {p0, p2, p1}, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->onRejectPromise(ILjava/lang/String;)V

    return-void

    :cond_0
    iget v0, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mProvisioningPromiseId:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mCrypto:Landroid/media/MediaCrypto;

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2, p4, p3}, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->savePendingCreateSessionData(II[BLjava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->ensureMediaCryptoCreated()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "MediaCrypto intance is not created !"

    invoke-virtual {p0, p2, v1}, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->onRejectPromise(ILjava/lang/String;)V

    return-void

    :cond_2
    invoke-direct {p0}, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->openSession()Ljava/nio/ByteBuffer;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v1, "Cannot get a session id from MediaDrm !"

    invoke-virtual {p0, p2, v1}, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->onRejectPromise(ILjava/lang/String;)V

    return-void

    :cond_3
    invoke-direct {p0, v0, p4, p3}, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->getKeyRequest(Ljava/nio/ByteBuffer;[BLjava/lang/String;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaDrm;->closeSession([B)V

    const-string v1, "Cannot get a key request from MediaDrm !"

    invoke-virtual {p0, p2, v1}, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->onRejectPromise(ILjava/lang/String;)V

    return-void

    :cond_4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1}, Landroid/media/MediaDrm$KeyRequest;->getData()[B

    move-result-object v3

    invoke-virtual {p0, p1, p2, v2, v3}, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->onSessionCreated(II[B[B)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1}, Landroid/media/MediaDrm$KeyRequest;->getData()[B

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v1}, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->onSessionMessage([BI[B)V

    iget-object v1, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mSessionMIMETypes:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mSessionIds:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    if-eqz v0, :cond_5

    iget-object v1, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/media/MediaDrm;->closeSession([B)V

    :cond_5
    invoke-direct {p0, p1, p2, p4, p3}, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->savePendingCreateSessionData(II[BLjava/lang/String;)V

    invoke-direct {p0, p2}, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->startProvisioning(I)V

    :goto_0
    return-void
.end method

.method public getMediaCrypto()Landroid/media/MediaCrypto;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mCrypto:Landroid/media/MediaCrypto;

    return-object v0
.end method

.method public isSecureDecoderComonentRequired(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mCrypto:Landroid/media/MediaCrypto;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/media/MediaCrypto;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onRejectPromise(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mCallbacks:Lorg/mozilla/gecko/media/GeckoMediaDrm$Callbacks;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->assertTrue(Z)V

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mCallbacks:Lorg/mozilla/gecko/media/GeckoMediaDrm$Callbacks;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lorg/mozilla/gecko/media/GeckoMediaDrm$Callbacks;->onRejectPromise(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onSessionBatchedKeyChanged([B[Lorg/mozilla/gecko/media/SessionKeyInfo;)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mCallbacks:Lorg/mozilla/gecko/media/GeckoMediaDrm$Callbacks;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->assertTrue(Z)V

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mCallbacks:Lorg/mozilla/gecko/media/GeckoMediaDrm$Callbacks;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lorg/mozilla/gecko/media/GeckoMediaDrm$Callbacks;->onSessionBatchedKeyChanged([B[Lorg/mozilla/gecko/media/SessionKeyInfo;)V

    :cond_1
    return-void
.end method

.method public onSessionClosed(I[B)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mCallbacks:Lorg/mozilla/gecko/media/GeckoMediaDrm$Callbacks;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->assertTrue(Z)V

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mCallbacks:Lorg/mozilla/gecko/media/GeckoMediaDrm$Callbacks;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lorg/mozilla/gecko/media/GeckoMediaDrm$Callbacks;->onSessionClosed(I[B)V

    :cond_1
    return-void
.end method

.method public onSessionCreated(II[B[B)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mCallbacks:Lorg/mozilla/gecko/media/GeckoMediaDrm$Callbacks;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->assertTrue(Z)V

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mCallbacks:Lorg/mozilla/gecko/media/GeckoMediaDrm$Callbacks;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/mozilla/gecko/media/GeckoMediaDrm$Callbacks;->onSessionCreated(II[B[B)V

    :cond_1
    return-void
.end method

.method public onSessionError([BLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mCallbacks:Lorg/mozilla/gecko/media/GeckoMediaDrm$Callbacks;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->assertTrue(Z)V

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mCallbacks:Lorg/mozilla/gecko/media/GeckoMediaDrm$Callbacks;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lorg/mozilla/gecko/media/GeckoMediaDrm$Callbacks;->onSessionError([BLjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onSessionMessage([BI[B)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mCallbacks:Lorg/mozilla/gecko/media/GeckoMediaDrm$Callbacks;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->assertTrue(Z)V

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mCallbacks:Lorg/mozilla/gecko/media/GeckoMediaDrm$Callbacks;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2, p3}, Lorg/mozilla/gecko/media/GeckoMediaDrm$Callbacks;->onSessionMessage([BI[B)V

    :cond_1
    return-void
.end method

.method public onSessionUpdated(I[B)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mCallbacks:Lorg/mozilla/gecko/media/GeckoMediaDrm$Callbacks;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->assertTrue(Z)V

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mCallbacks:Lorg/mozilla/gecko/media/GeckoMediaDrm$Callbacks;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lorg/mozilla/gecko/media/GeckoMediaDrm$Callbacks;->onSessionUpdated(I[B)V

    :cond_1
    return-void
.end method

.method public release()V
    .locals 4

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mProvisionTask:Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21$PostRequestTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v1, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mProvisionTask:Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21$PostRequestTask;

    :cond_0
    iget v0, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mProvisioningPromiseId:I

    if-lez v0, :cond_1

    const-string v2, "Releasing ... reject provisioning session."

    invoke-virtual {p0, v0, v2}, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->onRejectPromise(ILjava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mProvisioningPromiseId:I

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mPendingCreateSessionDataQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mPendingCreateSessionDataQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21$PendingCreateSessionData;

    if-eqz v0, :cond_1

    iget v0, v0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21$PendingCreateSessionData;->mPromiseId:I

    const-string v2, "Releasing ... reject all pending sessions."

    invoke-virtual {p0, v0, v2}, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->onRejectPromise(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    iput-object v1, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mPendingCreateSessionDataQueue:Ljava/util/ArrayDeque;

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mDrm:Landroid/media/MediaDrm;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mSessionIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mDrm:Landroid/media/MediaDrm;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/media/MediaDrm;->closeSession([B)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->release()V

    iput-object v1, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mDrm:Landroid/media/MediaDrm;

    :cond_4
    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mSessionIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iput-object v1, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mSessionIds:Ljava/util/HashSet;

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mSessionMIMETypes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iput-object v1, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mSessionMIMETypes:Ljava/util/HashMap;

    iput-object v1, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mCryptoSessionId:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mCrypto:Landroid/media/MediaCrypto;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/media/MediaCrypto;->release()V

    iput-object v1, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mCrypto:Landroid/media/MediaCrypto;

    :cond_5
    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    iput-object v1, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mHandlerThread:Landroid/os/HandlerThread;

    :cond_6
    iput-object v1, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public sessionExists(Ljava/nio/ByteBuffer;)Z
    .locals 2

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mCryptoSessionId:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mSessionIds:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public setCallbacks(Lorg/mozilla/gecko/media/GeckoMediaDrm$Callbacks;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->assertTrue(Z)V

    iput-object p1, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mCallbacks:Lorg/mozilla/gecko/media/GeckoMediaDrm$Callbacks;

    return-void
.end method

.method public setServerCertificate([B)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mDrm:Landroid/media/MediaDrm;

    if-eqz v0, :cond_0

    const-string v1, "serviceCertificate"

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaDrm;->setPropertyByteArray(Ljava/lang/String;[B)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "MediaDrm instance doesn\'t exist !!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public updateSession(ILjava/lang/String;[B)V
    .locals 3

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mDrm:Landroid/media/MediaDrm;

    if-nez v0, :cond_0

    const-string p2, "MediaDrm instance doesn\'t exist !!"

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->onRejectPromise(ILjava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lorg/mozilla/gecko/util/StringUtils;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->sessionExists(Ljava/nio/ByteBuffer;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p2, "Invalid session during updateSession."

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->onRejectPromise(ILjava/lang/String;)V

    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->mDrm:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Landroid/media/MediaDrm;->provideKeyResponse([B[B)[B

    invoke-virtual {p0, p2}, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->HandleKeyStatusChangeByDummyKey(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->onSessionUpdated(I[B)V
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/media/DeniedByServerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    const-string p3, "Got exception during updateSession."

    invoke-virtual {p0, p2, p3}, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->onSessionError([BLjava/lang/String;)V

    invoke-virtual {p0, p1, p3}, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->onRejectPromise(ILjava/lang/String;)V

    invoke-virtual {p0}, Lorg/mozilla/gecko/media/GeckoMediaDrmBridgeV21;->release()V

    return-void
.end method
