.class Lorg/mozilla/gecko/GeckoJavaSampler$MarkerStorage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/GeckoJavaSampler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MarkerStorage"
.end annotation


# instance fields
.field private volatile mMarkers:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/mozilla/gecko/GeckoJavaSampler$Marker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$200(Lorg/mozilla/gecko/GeckoJavaSampler$MarkerStorage;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/mozilla/gecko/GeckoJavaSampler$MarkerStorage;->addMarker(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$400(Lorg/mozilla/gecko/GeckoJavaSampler$MarkerStorage;)Lorg/mozilla/gecko/GeckoJavaSampler$Marker;
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/gecko/GeckoJavaSampler$MarkerStorage;->pollNextMarker()Lorg/mozilla/gecko/GeckoJavaSampler$Marker;

    move-result-object p0

    return-object p0
.end method

.method private addMarker(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/mozilla/gecko/GeckoJavaSampler$MarkerStorage;->mMarkers:Ljava/util/Queue;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_2

    new-instance v1, Lorg/mozilla/gecko/GeckoJavaSampler$Marker;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/mozilla/gecko/GeckoJavaSampler$Marker;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)V

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Currently only main thread is supported for markers."

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method private pollNextMarker()Lorg/mozilla/gecko/GeckoJavaSampler$Marker;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/GeckoJavaSampler$MarkerStorage;->mMarkers:Ljava/util/Queue;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/gecko/GeckoJavaSampler$Marker;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized start(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/GeckoJavaSampler$MarkerStorage;->mMarkers:Ljava/util/Queue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lorg/mozilla/gecko/GeckoJavaSampler$MarkerStorage;->mMarkers:Ljava/util/Queue;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stop()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/GeckoJavaSampler$MarkerStorage;->mMarkers:Ljava/util/Queue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lorg/mozilla/gecko/GeckoJavaSampler$MarkerStorage;->mMarkers:Ljava/util/Queue;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
