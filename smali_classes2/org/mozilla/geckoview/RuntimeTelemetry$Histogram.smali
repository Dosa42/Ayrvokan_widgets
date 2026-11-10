.class public Lorg/mozilla/geckoview/RuntimeTelemetry$Histogram;
.super Lorg/mozilla/geckoview/RuntimeTelemetry$Metric;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/RuntimeTelemetry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Histogram"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/mozilla/geckoview/RuntimeTelemetry$Metric<",
        "[J>;"
    }
.end annotation


# instance fields
.field public final isCategorical:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/mozilla/geckoview/RuntimeTelemetry$Metric;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/geckoview/RuntimeTelemetry$Histogram;->isCategorical:Z

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;[J)V
    .locals 0

    .line 2
    invoke-direct {p0, p2, p3}, Lorg/mozilla/geckoview/RuntimeTelemetry$Metric;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean p1, p0, Lorg/mozilla/geckoview/RuntimeTelemetry$Histogram;->isCategorical:Z

    return-void
.end method
