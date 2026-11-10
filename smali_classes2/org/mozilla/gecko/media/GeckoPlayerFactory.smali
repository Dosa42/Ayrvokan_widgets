.class public final Lorg/mozilla/gecko/media/GeckoPlayerFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final sPlayerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/mozilla/gecko/media/BaseHlsPlayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/mozilla/gecko/media/GeckoPlayerFactory;->sPlayerList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getPlayer()Lorg/mozilla/gecko/media/BaseHlsPlayer;
    .locals 3

    .line 1
    const-class v0, Lorg/mozilla/gecko/media/GeckoPlayerFactory;

    monitor-enter v0

    :try_start_0
    const-class v1, Lorg/mozilla/gecko/media/GeckoHlsPlayer;

    sget v2, Lorg/mozilla/gecko/media/GeckoHlsPlayer;->d:I

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/gecko/media/BaseHlsPlayer;

    sget-object v2, Lorg/mozilla/gecko/media/GeckoPlayerFactory;->sPlayerList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :catch_0
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0
.end method

.method public static declared-synchronized getPlayer(I)Lorg/mozilla/gecko/media/BaseHlsPlayer;
    .locals 4

    .line 2
    const-class v0, Lorg/mozilla/gecko/media/GeckoPlayerFactory;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/mozilla/gecko/media/GeckoPlayerFactory;->sPlayerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/gecko/media/BaseHlsPlayer;

    invoke-interface {v2}, Lorg/mozilla/gecko/media/BaseHlsPlayer;->getId()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, p0, :cond_0

    monitor-exit v0

    return-object v2

    :cond_1
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized removePlayer(Lorg/mozilla/gecko/media/BaseHlsPlayer;)V
    .locals 3

    const-class v0, Lorg/mozilla/gecko/media/GeckoPlayerFactory;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/mozilla/gecko/media/GeckoPlayerFactory;->sPlayerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-interface {p0}, Lorg/mozilla/gecko/media/BaseHlsPlayer;->getId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
