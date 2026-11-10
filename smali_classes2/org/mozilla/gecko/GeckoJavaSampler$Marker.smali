.class Lorg/mozilla/gecko/GeckoJavaSampler$Marker;
.super Lorg/mozilla/gecko/mozglue/JNIObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/GeckoJavaSampler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Marker"
.end annotation


# instance fields
.field private mEndJavaTime:J

.field private mEndTime:D

.field private mJavaTime:J

.field private mMarkerName:Ljava/lang/String;

.field private mText:Ljava/lang/String;

.field private mTime:D


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lorg/mozilla/gecko/mozglue/JNIObject;-><init>()V

    iput-object p1, p0, Lorg/mozilla/gecko/GeckoJavaSampler$Marker;->mMarkerName:Ljava/lang/String;

    iput-object p4, p0, Lorg/mozilla/gecko/GeckoJavaSampler$Marker;->mText:Ljava/lang/String;

    const-wide/16 v0, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    iput-wide p1, p0, Lorg/mozilla/gecko/GeckoJavaSampler$Marker;->mTime:D

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    iput-wide p1, p0, Lorg/mozilla/gecko/GeckoJavaSampler$Marker;->mEndTime:D

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/mozilla/gecko/GeckoThread$State;->JNI_READY:Lorg/mozilla/gecko/GeckoThread$State;

    invoke-static {p1}, Lorg/mozilla/gecko/GeckoThread;->isStateAtLeast(Lorg/mozilla/gecko/GeckoThread$State;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lorg/mozilla/gecko/GeckoJavaSampler;->access$000()D

    move-result-wide p1

    iput-wide p1, p0, Lorg/mozilla/gecko/GeckoJavaSampler$Marker;->mEndTime:D

    :cond_1
    iget-wide p1, p0, Lorg/mozilla/gecko/GeckoJavaSampler$Marker;->mEndTime:D

    cmpl-double p1, p1, v0

    if-nez p1, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/mozilla/gecko/GeckoJavaSampler$Marker;->mEndJavaTime:J

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    iput-wide p1, p0, Lorg/mozilla/gecko/GeckoJavaSampler$Marker;->mTime:D

    goto :goto_0

    :cond_3
    sget-object p1, Lorg/mozilla/gecko/GeckoThread$State;->JNI_READY:Lorg/mozilla/gecko/GeckoThread$State;

    invoke-static {p1}, Lorg/mozilla/gecko/GeckoThread;->isStateAtLeast(Lorg/mozilla/gecko/GeckoThread$State;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lorg/mozilla/gecko/GeckoJavaSampler;->access$000()D

    move-result-wide p1

    iput-wide p1, p0, Lorg/mozilla/gecko/GeckoJavaSampler$Marker;->mTime:D

    :cond_4
    iget-wide p1, p0, Lorg/mozilla/gecko/GeckoJavaSampler$Marker;->mTime:D

    cmpl-double p1, p1, v0

    if-nez p1, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/mozilla/gecko/GeckoJavaSampler$Marker;->mJavaTime:J

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public native disposeNative()V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end method

.method public getEndTime()D
    .locals 4
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    iget-wide v0, p0, Lorg/mozilla/gecko/GeckoJavaSampler$Marker;->mEndJavaTime:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-double v0, v0

    invoke-static {}, Lorg/mozilla/gecko/GeckoJavaSampler;->access$000()D

    move-result-wide v2

    add-double/2addr v2, v0

    return-wide v2

    :cond_0
    iget-wide v0, p0, Lorg/mozilla/gecko/GeckoJavaSampler$Marker;->mEndTime:D

    return-wide v0
.end method

.method public getMarkerName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    iget-object v0, p0, Lorg/mozilla/gecko/GeckoJavaSampler$Marker;->mMarkerName:Ljava/lang/String;

    return-object v0
.end method

.method public getMarkerText()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    iget-object v0, p0, Lorg/mozilla/gecko/GeckoJavaSampler$Marker;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()D
    .locals 4
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    iget-wide v0, p0, Lorg/mozilla/gecko/GeckoJavaSampler$Marker;->mJavaTime:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-double v0, v0

    invoke-static {}, Lorg/mozilla/gecko/GeckoJavaSampler;->access$000()D

    move-result-wide v2

    add-double/2addr v2, v0

    return-wide v2

    :cond_0
    iget-wide v0, p0, Lorg/mozilla/gecko/GeckoJavaSampler$Marker;->mTime:D

    return-wide v0
.end method
