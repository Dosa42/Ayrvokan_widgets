.class public Lorg/mozilla/geckoview/GeckoVRManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static mExternalContext:J


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized getExternalContext()J
    .locals 3
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    const-class v0, Lorg/mozilla/geckoview/GeckoVRManager;

    monitor-enter v0

    :try_start_0
    sget-wide v1, Lorg/mozilla/geckoview/GeckoVRManager;->mExternalContext:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setExternalContext(J)V
    .locals 1

    const-class v0, Lorg/mozilla/geckoview/GeckoVRManager;

    monitor-enter v0

    :try_start_0
    sput-wide p0, Lorg/mozilla/geckoview/GeckoVRManager;->mExternalContext:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
