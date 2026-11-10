.class public Lorg/mozilla/gecko/GeckoJavaSampler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/gecko/GeckoJavaSampler$MarkerStorage;,
        Lorg/mozilla/gecko/GeckoJavaSampler$SamplingRunnable;,
        Lorg/mozilla/gecko/GeckoJavaSampler$Marker;,
        Lorg/mozilla/gecko/GeckoJavaSampler$Frame;,
        Lorg/mozilla/gecko/GeckoJavaSampler$Sample;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "GeckoJavaSampler"

.field private static final sMarkerStorage:Lorg/mozilla/gecko/GeckoJavaSampler$MarkerStorage;

.field private static sSamplingFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private static sSamplingRunnable:Lorg/mozilla/gecko/GeckoJavaSampler$SamplingRunnable;

.field private static sSamplingScheduler:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/mozilla/gecko/GeckoJavaSampler$MarkerStorage;

    invoke-direct {v0}, Lorg/mozilla/gecko/GeckoJavaSampler$MarkerStorage;-><init>()V

    sput-object v0, Lorg/mozilla/gecko/GeckoJavaSampler;->sMarkerStorage:Lorg/mozilla/gecko/GeckoJavaSampler$MarkerStorage;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()D
    .locals 2

    invoke-static {}, Lorg/mozilla/gecko/GeckoJavaSampler;->getProfilerTime()D

    move-result-wide v0

    return-wide v0
.end method

.method public static addMarker(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/GeckoJavaSampler;->sMarkerStorage:Lorg/mozilla/gecko/GeckoJavaSampler$MarkerStorage;

    invoke-static {v0, p0, p1, p2, p3}, Lorg/mozilla/gecko/GeckoJavaSampler$MarkerStorage;->access$200(Lorg/mozilla/gecko/GeckoJavaSampler$MarkerStorage;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized getFrameName(II)Ljava/lang/String;
    .locals 3
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    const-class v0, Lorg/mozilla/gecko/GeckoJavaSampler;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lorg/mozilla/gecko/GeckoJavaSampler;->getSample(I)Lorg/mozilla/gecko/GeckoJavaSampler$Sample;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    iget-object p0, p0, Lorg/mozilla/gecko/GeckoJavaSampler$Sample;->mFrames:[Lorg/mozilla/gecko/GeckoJavaSampler$Frame;

    array-length v2, p0

    if-ge p1, v2, :cond_1

    aget-object p0, p0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/mozilla/gecko/GeckoJavaSampler$Frame;->className:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/mozilla/gecko/GeckoJavaSampler$Frame;->methodName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "()"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static native getProfilerTime()D
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end method

.method private static declared-synchronized getSample(I)Lorg/mozilla/gecko/GeckoJavaSampler$Sample;
    .locals 2

    const-class v0, Lorg/mozilla/gecko/GeckoJavaSampler;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/mozilla/gecko/GeckoJavaSampler;->sSamplingRunnable:Lorg/mozilla/gecko/GeckoJavaSampler$SamplingRunnable;

    invoke-static {v1, p0}, Lorg/mozilla/gecko/GeckoJavaSampler$SamplingRunnable;->access$300(Lorg/mozilla/gecko/GeckoJavaSampler$SamplingRunnable;I)Lorg/mozilla/gecko/GeckoJavaSampler$Sample;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getSampleTime(I)D
    .locals 5
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    const-class v0, Lorg/mozilla/gecko/GeckoJavaSampler;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lorg/mozilla/gecko/GeckoJavaSampler;->getSample(I)Lorg/mozilla/gecko/GeckoJavaSampler$Sample;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-wide v1, p0, Lorg/mozilla/gecko/GeckoJavaSampler$Sample;->mJavaTime:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-double v1, v1

    invoke-static {}, Lorg/mozilla/gecko/GeckoJavaSampler;->getProfilerTime()D

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-double/2addr v1, v3

    monitor-exit v0

    return-wide v1

    :cond_0
    :try_start_1
    iget-wide v1, p0, Lorg/mozilla/gecko/GeckoJavaSampler$Sample;->mTime:D
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-wide v1

    :cond_1
    monitor-exit v0

    const-wide/16 v0, 0x0

    return-wide v0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static isProfilerActive()Z
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/GeckoJavaSampler;->sSamplingRunnable:Lorg/mozilla/gecko/GeckoJavaSampler$SamplingRunnable;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/mozilla/gecko/GeckoJavaSampler;->sSamplingFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static pause()V
    .locals 3
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    const-class v0, Lorg/mozilla/gecko/GeckoJavaSampler;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/mozilla/gecko/GeckoJavaSampler;->sSamplingFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v1, 0x0

    sput-object v1, Lorg/mozilla/gecko/GeckoJavaSampler;->sSamplingFuture:Ljava/util/concurrent/ScheduledFuture;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static pollNextMarker()Lorg/mozilla/gecko/GeckoJavaSampler$Marker;
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    sget-object v0, Lorg/mozilla/gecko/GeckoJavaSampler;->sMarkerStorage:Lorg/mozilla/gecko/GeckoJavaSampler$MarkerStorage;

    invoke-static {v0}, Lorg/mozilla/gecko/GeckoJavaSampler$MarkerStorage;->access$400(Lorg/mozilla/gecko/GeckoJavaSampler$MarkerStorage;)Lorg/mozilla/gecko/GeckoJavaSampler$Marker;

    move-result-object v0

    return-object v0
.end method

.method public static start(II)V
    .locals 8
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    const-class v0, Lorg/mozilla/gecko/GeckoJavaSampler;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/mozilla/gecko/GeckoJavaSampler;->sSamplingRunnable:Lorg/mozilla/gecko/GeckoJavaSampler$SamplingRunnable;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    sget-object v1, Lorg/mozilla/gecko/GeckoJavaSampler;->sSamplingFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    const v1, 0x1d4c0

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    new-instance v1, Lorg/mozilla/gecko/GeckoJavaSampler$SamplingRunnable;

    invoke-direct {v1, p0, p1}, Lorg/mozilla/gecko/GeckoJavaSampler$SamplingRunnable;-><init>(II)V

    sput-object v1, Lorg/mozilla/gecko/GeckoJavaSampler;->sSamplingRunnable:Lorg/mozilla/gecko/GeckoJavaSampler$SamplingRunnable;

    sget-object p0, Lorg/mozilla/gecko/GeckoJavaSampler;->sMarkerStorage:Lorg/mozilla/gecko/GeckoJavaSampler$MarkerStorage;

    invoke-virtual {p0, p1}, Lorg/mozilla/gecko/GeckoJavaSampler$MarkerStorage;->start(I)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    sput-object v1, Lorg/mozilla/gecko/GeckoJavaSampler;->sSamplingScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v2, Lorg/mozilla/gecko/GeckoJavaSampler;->sSamplingRunnable:Lorg/mozilla/gecko/GeckoJavaSampler$SamplingRunnable;

    const-wide/16 v3, 0x0

    iget p0, v2, Lorg/mozilla/gecko/GeckoJavaSampler$SamplingRunnable;->mInterval:I

    int-to-long v5, p0

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    sput-object p0, Lorg/mozilla/gecko/GeckoJavaSampler;->sSamplingFuture:Ljava/util/concurrent/ScheduledFuture;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static stop()V
    .locals 5
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    const-class v0, Lorg/mozilla/gecko/GeckoJavaSampler;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/mozilla/gecko/GeckoJavaSampler;->sSamplingRunnable:Lorg/mozilla/gecko/GeckoJavaSampler$SamplingRunnable;

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    :try_start_1
    sget-object v1, Lorg/mozilla/gecko/GeckoJavaSampler;->sSamplingScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    sget-object v1, Lorg/mozilla/gecko/GeckoJavaSampler;->sSamplingScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x3e8

    invoke-interface {v1, v3, v4, v2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    sget-object v1, Lorg/mozilla/gecko/GeckoJavaSampler;->sSamplingScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :goto_0
    const/4 v1, 0x0

    sput-object v1, Lorg/mozilla/gecko/GeckoJavaSampler;->sSamplingScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    sput-object v1, Lorg/mozilla/gecko/GeckoJavaSampler;->sSamplingRunnable:Lorg/mozilla/gecko/GeckoJavaSampler$SamplingRunnable;

    sput-object v1, Lorg/mozilla/gecko/GeckoJavaSampler;->sSamplingFuture:Ljava/util/concurrent/ScheduledFuture;

    sget-object v1, Lorg/mozilla/gecko/GeckoJavaSampler;->sMarkerStorage:Lorg/mozilla/gecko/GeckoJavaSampler$MarkerStorage;

    invoke-virtual {v1}, Lorg/mozilla/gecko/GeckoJavaSampler$MarkerStorage;->stop()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static tryToGetProfilerTime()Ljava/lang/Double;
    .locals 2

    invoke-static {}, Lorg/mozilla/gecko/GeckoJavaSampler;->isProfilerActive()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lorg/mozilla/gecko/GeckoThread$State;->JNI_READY:Lorg/mozilla/gecko/GeckoThread$State;

    invoke-static {v0}, Lorg/mozilla/gecko/GeckoThread;->isStateAtLeast(Lorg/mozilla/gecko/GeckoThread$State;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-static {}, Lorg/mozilla/gecko/GeckoJavaSampler;->getProfilerTime()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public static unpause()V
    .locals 9
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    const-class v0, Lorg/mozilla/gecko/GeckoJavaSampler;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/mozilla/gecko/GeckoJavaSampler;->sSamplingFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    sget-object v2, Lorg/mozilla/gecko/GeckoJavaSampler;->sSamplingScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v3, Lorg/mozilla/gecko/GeckoJavaSampler;->sSamplingRunnable:Lorg/mozilla/gecko/GeckoJavaSampler$SamplingRunnable;

    const-wide/16 v4, 0x0

    iget v1, v3, Lorg/mozilla/gecko/GeckoJavaSampler$SamplingRunnable;->mInterval:I

    int-to-long v6, v1

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    sput-object v1, Lorg/mozilla/gecko/GeckoJavaSampler;->sSamplingFuture:Ljava/util/concurrent/ScheduledFuture;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
