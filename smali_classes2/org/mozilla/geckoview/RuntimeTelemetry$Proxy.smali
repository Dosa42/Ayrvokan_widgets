.class final Lorg/mozilla/geckoview/RuntimeTelemetry$Proxy;
.super Lorg/mozilla/gecko/mozglue/JNIObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/RuntimeTelemetry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Proxy"
.end annotation


# instance fields
.field private final mDelegate:Lorg/mozilla/geckoview/RuntimeTelemetry$Delegate;


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/RuntimeTelemetry$Delegate;)V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/gecko/mozglue/JNIObject;-><init>()V

    iput-object p1, p0, Lorg/mozilla/geckoview/RuntimeTelemetry$Proxy;->mDelegate:Lorg/mozilla/geckoview/RuntimeTelemetry$Delegate;

    invoke-virtual {p0}, Lorg/mozilla/geckoview/RuntimeTelemetry$Proxy;->attach()V

    return-void
.end method

.method private static native registerDelegateProxy(Lorg/mozilla/geckoview/RuntimeTelemetry$Proxy;)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        dispatchTo = "gecko"
    .end annotation
.end method


# virtual methods
.method public attach()V
    .locals 3

    invoke-static {}, Lorg/mozilla/gecko/GeckoThread;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/mozilla/geckoview/RuntimeTelemetry$Proxy;->registerDelegateProxy(Lorg/mozilla/geckoview/RuntimeTelemetry$Proxy;)V

    goto :goto_0

    :cond_0
    const-string v0, "registerDelegateProxy"

    const-class v1, Lorg/mozilla/geckoview/RuntimeTelemetry$Proxy;

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lorg/mozilla/gecko/GeckoThread;->queueNativeCall(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public dispatchBooleanScalar(Ljava/lang/String;Z)V
    .locals 2
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    iget-object v0, p0, Lorg/mozilla/geckoview/RuntimeTelemetry$Proxy;->mDelegate:Lorg/mozilla/geckoview/RuntimeTelemetry$Delegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lorg/mozilla/geckoview/RuntimeTelemetry$Metric;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lorg/mozilla/geckoview/RuntimeTelemetry$Metric;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lorg/mozilla/geckoview/RuntimeTelemetry$Delegate;->onBooleanScalar(Lorg/mozilla/geckoview/RuntimeTelemetry$Metric;)V

    return-void
.end method

.method public dispatchHistogram(ZLjava/lang/String;[J)V
    .locals 2
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    iget-object v0, p0, Lorg/mozilla/geckoview/RuntimeTelemetry$Proxy;->mDelegate:Lorg/mozilla/geckoview/RuntimeTelemetry$Delegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lorg/mozilla/geckoview/RuntimeTelemetry$Histogram;

    invoke-direct {v1, p1, p2, p3}, Lorg/mozilla/geckoview/RuntimeTelemetry$Histogram;-><init>(ZLjava/lang/String;[J)V

    invoke-interface {v0, v1}, Lorg/mozilla/geckoview/RuntimeTelemetry$Delegate;->onHistogram(Lorg/mozilla/geckoview/RuntimeTelemetry$Histogram;)V

    return-void
.end method

.method public dispatchLongScalar(Ljava/lang/String;J)V
    .locals 2
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    iget-object v0, p0, Lorg/mozilla/geckoview/RuntimeTelemetry$Proxy;->mDelegate:Lorg/mozilla/geckoview/RuntimeTelemetry$Delegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lorg/mozilla/geckoview/RuntimeTelemetry$Metric;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lorg/mozilla/geckoview/RuntimeTelemetry$Metric;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lorg/mozilla/geckoview/RuntimeTelemetry$Delegate;->onLongScalar(Lorg/mozilla/geckoview/RuntimeTelemetry$Metric;)V

    return-void
.end method

.method public dispatchStringScalar(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    iget-object v0, p0, Lorg/mozilla/geckoview/RuntimeTelemetry$Proxy;->mDelegate:Lorg/mozilla/geckoview/RuntimeTelemetry$Delegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lorg/mozilla/geckoview/RuntimeTelemetry$Metric;

    invoke-direct {v1, p1, p2}, Lorg/mozilla/geckoview/RuntimeTelemetry$Metric;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lorg/mozilla/geckoview/RuntimeTelemetry$Delegate;->onStringScalar(Lorg/mozilla/geckoview/RuntimeTelemetry$Metric;)V

    return-void
.end method

.method public disposeNative()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getDelegate()Lorg/mozilla/geckoview/RuntimeTelemetry$Delegate;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/RuntimeTelemetry$Proxy;->mDelegate:Lorg/mozilla/geckoview/RuntimeTelemetry$Delegate;

    return-object v0
.end method
