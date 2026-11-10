.class public final Lorg/mozilla/gecko/media/MediaDrmProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/gecko/media/MediaDrmProxy$MediaDrmProxyCallbacks;,
        Lorg/mozilla/gecko/media/MediaDrmProxy$NativeMediaDrmProxyCallbacks;,
        Lorg/mozilla/gecko/media/MediaDrmProxy$Callbacks;
    }
.end annotation


# static fields
.field private static final AAC:Ljava/lang/String; = "audio/mp4a-latm"
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field private static final AVC:Ljava/lang/String; = "video/avc"
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final FLAC:Ljava/lang/String; = "audio/flac"
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field private static final LOGTAG:Ljava/lang/String; = "GeckoMediaDrmProxy"

.field private static final OPUS:Ljava/lang/String; = "audio/opus"
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field private static final VORBIS:Ljava/lang/String; = "audio/vorbis"
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field private static final VP8:Ljava/lang/String; = "video/x-vnd.on2.vp8"
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field private static final VP9:Ljava/lang/String; = "video/x-vnd.on2.vp9"
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field private static final WIDEVINE_KEY_SYSTEM:Ljava/lang/String; = "com.widevine.alpha"

.field private static final WIDEVINE_SCHEME_UUID:Ljava/util/UUID;

.field public static final sProxyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/mozilla/gecko/media/MediaDrmProxy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDestroyed:Z

.field private mDrmStubId:Ljava/lang/String;

.field private mImpl:Lorg/mozilla/gecko/media/GeckoMediaDrm;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/UUID;

    const-wide v1, -0x121074568629b532L    # -3.563403477674908E221

    const-wide v3, -0x5c37d8232ae2de13L

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lorg/mozilla/gecko/media/MediaDrmProxy;->WIDEVINE_SCHEME_UUID:Ljava/util/UUID;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/mozilla/gecko/media/MediaDrmProxy;->sProxyList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/mozilla/gecko/media/MediaDrmProxy$Callbacks;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/gecko/media/MediaDrmProxy;->mDrmStubId:Ljava/lang/String;

    invoke-static {}, Lorg/mozilla/gecko/media/RemoteManager;->getInstance()Lorg/mozilla/gecko/media/RemoteManager;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/gecko/media/MediaDrmProxy;->mDrmStubId:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/mozilla/gecko/media/RemoteManager;->createRemoteMediaDrmBridge(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/gecko/media/IMediaDrmBridge;

    move-result-object p1

    new-instance v0, Lorg/mozilla/gecko/media/RemoteMediaDrmBridge;

    invoke-direct {v0, p1}, Lorg/mozilla/gecko/media/RemoteMediaDrmBridge;-><init>(Lorg/mozilla/gecko/media/IMediaDrmBridge;)V

    iput-object v0, p0, Lorg/mozilla/gecko/media/MediaDrmProxy;->mImpl:Lorg/mozilla/gecko/media/GeckoMediaDrm;

    new-instance p1, Lorg/mozilla/gecko/media/MediaDrmProxy$MediaDrmProxyCallbacks;

    invoke-direct {p1, p0, p2}, Lorg/mozilla/gecko/media/MediaDrmProxy$MediaDrmProxyCallbacks;-><init>(Lorg/mozilla/gecko/media/MediaDrmProxy;Lorg/mozilla/gecko/media/MediaDrmProxy$Callbacks;)V

    invoke-interface {v0, p1}, Lorg/mozilla/gecko/media/GeckoMediaDrm;->setCallbacks(Lorg/mozilla/gecko/media/GeckoMediaDrm$Callbacks;)V

    sget-object p1, Lorg/mozilla/gecko/media/MediaDrmProxy;->sProxyList:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static IsCryptoSchemeSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    invoke-static {}, Lorg/mozilla/gecko/media/MediaDrmProxy;->isSystemSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "com.widevine.alpha"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lorg/mozilla/gecko/media/MediaDrmProxy;->WIDEVINE_SCHEME_UUID:Ljava/util/UUID;

    invoke-static {p0, p1}, Landroid/media/MediaDrm;->isCryptoSchemeSupported(Ljava/util/UUID;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method private closeSession(ILjava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    iget-object v0, p0, Lorg/mozilla/gecko/media/MediaDrmProxy;->mImpl:Lorg/mozilla/gecko/media/GeckoMediaDrm;

    invoke-interface {v0, p1, p2}, Lorg/mozilla/gecko/media/GeckoMediaDrm;->closeSession(ILjava/lang/String;)V

    return-void
.end method

.method public static create(Ljava/lang/String;Lorg/mozilla/gecko/media/MediaDrmProxy$Callbacks;)Lorg/mozilla/gecko/media/MediaDrmProxy;
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    new-instance v0, Lorg/mozilla/gecko/media/MediaDrmProxy;

    invoke-direct {v0, p0, p1}, Lorg/mozilla/gecko/media/MediaDrmProxy;-><init>(Ljava/lang/String;Lorg/mozilla/gecko/media/MediaDrmProxy$Callbacks;)V

    return-object v0
.end method

.method private createSession(IILjava/lang/String;[B)V
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    iget-object v0, p0, Lorg/mozilla/gecko/media/MediaDrmProxy;->mImpl:Lorg/mozilla/gecko/media/GeckoMediaDrm;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/mozilla/gecko/media/GeckoMediaDrm;->createSession(IILjava/lang/String;[B)V

    return-void
.end method

.method private destroy()V
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    iget-boolean v0, p0, Lorg/mozilla/gecko/media/MediaDrmProxy;->mDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/gecko/media/MediaDrmProxy;->mDestroyed:Z

    invoke-direct {p0}, Lorg/mozilla/gecko/media/MediaDrmProxy;->release()V

    return-void
.end method

.method public static getMediaCrypto(Ljava/lang/String;)Landroid/media/MediaCrypto;
    .locals 3
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    sget-object v0, Lorg/mozilla/gecko/media/MediaDrmProxy;->sProxyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/gecko/media/MediaDrmProxy;

    invoke-direct {v1}, Lorg/mozilla/gecko/media/MediaDrmProxy;->getStubId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {v1}, Lorg/mozilla/gecko/media/MediaDrmProxy;->getMediaCryptoFromBridge()Landroid/media/MediaCrypto;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getMediaCryptoFromBridge()Landroid/media/MediaCrypto;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/media/MediaDrmProxy;->mImpl:Lorg/mozilla/gecko/media/GeckoMediaDrm;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/mozilla/gecko/media/GeckoMediaDrm;->getMediaCrypto()Landroid/media/MediaCrypto;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getStubId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    iget-object v0, p0, Lorg/mozilla/gecko/media/MediaDrmProxy;->mDrmStubId:Ljava/lang/String;

    return-object v0
.end method

.method public static isSchemeSupported(Ljava/lang/String;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    invoke-static {}, Lorg/mozilla/gecko/media/MediaDrmProxy;->isSystemSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "com.widevine.alpha"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lorg/mozilla/gecko/media/MediaDrmProxy;->WIDEVINE_SCHEME_UUID:Ljava/util/UUID;

    invoke-static {p0}, Landroid/media/MediaDrm;->isCryptoSchemeSupported(Ljava/util/UUID;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroid/media/MediaCrypto;->isCryptoSchemeSupported(Ljava/util/UUID;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private static isSystemSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private release()V
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/media/MediaDrmProxy;->sProxyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/mozilla/gecko/media/MediaDrmProxy;->mImpl:Lorg/mozilla/gecko/media/GeckoMediaDrm;

    invoke-interface {v0}, Lorg/mozilla/gecko/media/GeckoMediaDrm;->release()V

    return-void
.end method

.method private updateSession(ILjava/lang/String;[B)V
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    iget-object v0, p0, Lorg/mozilla/gecko/media/MediaDrmProxy;->mImpl:Lorg/mozilla/gecko/media/GeckoMediaDrm;

    invoke-interface {v0, p1, p2, p3}, Lorg/mozilla/gecko/media/GeckoMediaDrm;->updateSession(ILjava/lang/String;[B)V

    return-void
.end method


# virtual methods
.method public isDestroyed()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mozilla/gecko/media/MediaDrmProxy;->mDestroyed:Z

    return v0
.end method

.method public setServerCertificate([B)Z
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/MediaDrmProxy;->mImpl:Lorg/mozilla/gecko/media/GeckoMediaDrm;

    invoke-interface {v0, p1}, Lorg/mozilla/gecko/media/GeckoMediaDrm;->setServerCertificate([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method
