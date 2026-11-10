.class public interface abstract Lorg/mozilla/geckoview/RuntimeTelemetry$Delegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/RuntimeTelemetry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Delegate"
.end annotation


# virtual methods
.method public onBooleanScalar(Lorg/mozilla/geckoview/RuntimeTelemetry$Metric;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/geckoview/RuntimeTelemetry$Metric<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onHistogram(Lorg/mozilla/geckoview/RuntimeTelemetry$Histogram;)V
    .locals 0

    return-void
.end method

.method public onLongScalar(Lorg/mozilla/geckoview/RuntimeTelemetry$Metric;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/geckoview/RuntimeTelemetry$Metric<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onStringScalar(Lorg/mozilla/geckoview/RuntimeTelemetry$Metric;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/geckoview/RuntimeTelemetry$Metric<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
