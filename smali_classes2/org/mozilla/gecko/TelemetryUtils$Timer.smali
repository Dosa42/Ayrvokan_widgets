.class public abstract Lorg/mozilla/gecko/TelemetryUtils$Timer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/TelemetryUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Timer"
.end annotation


# instance fields
.field private volatile mElapsed:J

.field private volatile mHasFinished:Z

.field private final mName:Ljava/lang/String;

.field private final mStartTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/mozilla/gecko/TelemetryUtils$Timer;->mElapsed:J

    iput-object p1, p0, Lorg/mozilla/gecko/TelemetryUtils$Timer;->mName:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/mozilla/gecko/TelemetryUtils$Timer;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/mozilla/gecko/TelemetryUtils$Timer;->mStartTime:J

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/gecko/TelemetryUtils$Timer;->mHasFinished:Z

    return-void
.end method

.method public getElapsed()J
    .locals 2

    iget-wide v0, p0, Lorg/mozilla/gecko/TelemetryUtils$Timer;->mElapsed:J

    return-wide v0
.end method

.method public abstract now()J
.end method

.method public stop()V
    .locals 4

    iget-boolean v0, p0, Lorg/mozilla/gecko/TelemetryUtils$Timer;->mHasFinished:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/gecko/TelemetryUtils$Timer;->mHasFinished:Z

    invoke-virtual {p0}, Lorg/mozilla/gecko/TelemetryUtils$Timer;->now()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/mozilla/gecko/TelemetryUtils$Timer;->mStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    return-void

    :cond_1
    iput-wide v0, p0, Lorg/mozilla/gecko/TelemetryUtils$Timer;->mElapsed:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    return-void

    :cond_2
    iget-object v2, p0, Lorg/mozilla/gecko/TelemetryUtils$Timer;->mName:Ljava/lang/String;

    long-to-int v0, v0

    invoke-static {v2, v0}, Lorg/mozilla/gecko/TelemetryUtils;->addToHistogram(Ljava/lang/String;I)V

    return-void
.end method
