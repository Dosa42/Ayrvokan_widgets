.class public Lorg/mozilla/gecko/media/GeckoHLSResourceWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/gecko/media/GeckoHLSResourceWrapper$Callbacks;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOGTAG:Ljava/lang/String; = "GeckoHLSResourceWrapper"


# instance fields
.field private mDestroy:Z

.field private mPlayer:Lorg/mozilla/gecko/media/BaseHlsPlayer;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lorg/mozilla/gecko/media/BaseHlsPlayer$ResourceCallbacks;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/gecko/media/GeckoHLSResourceWrapper;->mPlayer:Lorg/mozilla/gecko/media/BaseHlsPlayer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/gecko/media/GeckoHLSResourceWrapper;->mDestroy:Z

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Lorg/mozilla/gecko/media/GeckoHLSResourceWrapper;->assertTrue(Z)V

    invoke-static {}, Lorg/mozilla/gecko/media/GeckoPlayerFactory;->getPlayer()Lorg/mozilla/gecko/media/BaseHlsPlayer;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/gecko/media/GeckoHLSResourceWrapper;->mPlayer:Lorg/mozilla/gecko/media/BaseHlsPlayer;

    :try_start_0
    invoke-interface {v0, p1, p2}, Lorg/mozilla/gecko/media/BaseHlsPlayer;->init(Ljava/lang/String;Lorg/mozilla/gecko/media/BaseHlsPlayer$ResourceCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p1, Lorg/mozilla/gecko/media/BaseHlsPlayer$ResourceError;->UNKNOWN:Lorg/mozilla/gecko/media/BaseHlsPlayer$ResourceError;

    invoke-virtual {p1}, Lorg/mozilla/gecko/media/BaseHlsPlayer$ResourceError;->code()I

    move-result p1

    invoke-interface {p2, p1}, Lorg/mozilla/gecko/media/BaseHlsPlayer$ResourceCallbacks;->onError(I)V

    :goto_0
    return-void
.end method

.method private static assertTrue(Z)V
    .locals 0

    return-void
.end method

.method public static create(Ljava/lang/String;Lorg/mozilla/gecko/media/BaseHlsPlayer$ResourceCallbacks;)Lorg/mozilla/gecko/media/GeckoHLSResourceWrapper;
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    new-instance v0, Lorg/mozilla/gecko/media/GeckoHLSResourceWrapper;

    invoke-direct {v0, p0, p1}, Lorg/mozilla/gecko/media/GeckoHLSResourceWrapper;-><init>(Ljava/lang/String;Lorg/mozilla/gecko/media/BaseHlsPlayer$ResourceCallbacks;)V

    return-object v0
.end method

.method private destroy()V
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    iget-boolean v0, p0, Lorg/mozilla/gecko/media/GeckoHLSResourceWrapper;->mDestroy:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/gecko/media/GeckoHLSResourceWrapper;->mDestroy:Z

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHLSResourceWrapper;->mPlayer:Lorg/mozilla/gecko/media/BaseHlsPlayer;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lorg/mozilla/gecko/media/GeckoPlayerFactory;->removePlayer(Lorg/mozilla/gecko/media/BaseHlsPlayer;)V

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHLSResourceWrapper;->mPlayer:Lorg/mozilla/gecko/media/BaseHlsPlayer;

    invoke-interface {v0}, Lorg/mozilla/gecko/media/BaseHlsPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/gecko/media/GeckoHLSResourceWrapper;->mPlayer:Lorg/mozilla/gecko/media/BaseHlsPlayer;

    :cond_1
    return-void
.end method


# virtual methods
.method public getPlayerId()I
    .locals 2
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    iget-boolean v0, p0, Lorg/mozilla/gecko/media/GeckoHLSResourceWrapper;->mDestroy:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lorg/mozilla/gecko/media/GeckoHLSResourceWrapper;->assertTrue(Z)V

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHLSResourceWrapper;->mPlayer:Lorg/mozilla/gecko/media/BaseHlsPlayer;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lorg/mozilla/gecko/media/GeckoHLSResourceWrapper;->assertTrue(Z)V

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHLSResourceWrapper;->mPlayer:Lorg/mozilla/gecko/media/BaseHlsPlayer;

    invoke-interface {v0}, Lorg/mozilla/gecko/media/BaseHlsPlayer;->getId()I

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHLSResourceWrapper;->mPlayer:Lorg/mozilla/gecko/media/BaseHlsPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/mozilla/gecko/media/BaseHlsPlayer;->pause()V

    :cond_0
    return-void
.end method

.method public play()V
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHLSResourceWrapper;->mPlayer:Lorg/mozilla/gecko/media/BaseHlsPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/mozilla/gecko/media/BaseHlsPlayer;->play()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHLSResourceWrapper;->mPlayer:Lorg/mozilla/gecko/media/BaseHlsPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/mozilla/gecko/media/BaseHlsPlayer;->resume()V

    :cond_0
    return-void
.end method

.method public suspend()V
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    iget-object v0, p0, Lorg/mozilla/gecko/media/GeckoHLSResourceWrapper;->mPlayer:Lorg/mozilla/gecko/media/BaseHlsPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/mozilla/gecko/media/BaseHlsPlayer;->suspend()V

    :cond_0
    return-void
.end method
