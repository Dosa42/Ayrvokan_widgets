.class public Lorg/mozilla/geckoview/ProfilerController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "ProfilerController"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addMarker(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, v0}, Lorg/mozilla/geckoview/ProfilerController;->addMarker(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)V

    return-void
.end method

.method public addMarker(Ljava/lang/String;Ljava/lang/Double;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lorg/mozilla/geckoview/ProfilerController;->addMarker(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)V

    return-void
.end method

.method public addMarker(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-static {p1, p2, p3, p4}, Lorg/mozilla/gecko/GeckoJavaSampler;->addMarker(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)V

    return-void
.end method

.method public addMarker(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
    .locals 1

    .line 4
    const/4 v0, 0x0

    invoke-static {p1, p2, v0, p3}, Lorg/mozilla/gecko/GeckoJavaSampler;->addMarker(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)V

    return-void
.end method

.method public addMarker(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 5
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, p2}, Lorg/mozilla/geckoview/ProfilerController;->addMarker(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)V

    return-void
.end method

.method public getProfilerTime()Ljava/lang/Double;
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/GeckoJavaSampler;->tryToGetProfilerTime()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public isProfilerActive()Z
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/GeckoJavaSampler;->isProfilerActive()Z

    move-result v0

    return v0
.end method
