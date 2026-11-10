.class final Lorg/mozilla/gecko/process/GeckoProcessManager$ContentConnection;
.super Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/process/GeckoProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContentConnection"
.end annotation


# static fields
.field private static final TELEMETRY_PROCESS_LIFETIME_HISTOGRAM_NAME:Ljava/lang/String; = "GV_CONTENT_PROCESS_LIFETIME_MS"


# instance fields
.field private mLifetimeTimer:Lorg/mozilla/gecko/TelemetryUtils$UptimeTimer;


# direct methods
.method public constructor <init>(Lorg/mozilla/gecko/process/ServiceAllocator;Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;)V
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/process/GeckoProcessType;->CONTENT:Lorg/mozilla/gecko/process/GeckoProcessType;

    invoke-direct {p0, p1, v0, p2}, Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;-><init>(Lorg/mozilla/gecko/process/ServiceAllocator;Lorg/mozilla/gecko/process/GeckoProcessType;Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/mozilla/gecko/process/GeckoProcessManager$ContentConnection;->mLifetimeTimer:Lorg/mozilla/gecko/TelemetryUtils$UptimeTimer;

    return-void
.end method


# virtual methods
.method public onBinderConnected(Landroid/os/IBinder;)V
    .locals 2

    new-instance v0, Lorg/mozilla/gecko/TelemetryUtils$UptimeTimer;

    const-string v1, "GV_CONTENT_PROCESS_LIFETIME_MS"

    invoke-direct {v0, v1}, Lorg/mozilla/gecko/TelemetryUtils$UptimeTimer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/mozilla/gecko/process/GeckoProcessManager$ContentConnection;->mLifetimeTimer:Lorg/mozilla/gecko/TelemetryUtils$UptimeTimer;

    invoke-super {p0, p1}, Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;->onBinderConnected(Landroid/os/IBinder;)V

    return-void
.end method

.method public onReleaseResources()V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/process/GeckoProcessManager$ContentConnection;->mLifetimeTimer:Lorg/mozilla/gecko/TelemetryUtils$UptimeTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/mozilla/gecko/TelemetryUtils$Timer;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/gecko/process/GeckoProcessManager$ContentConnection;->mLifetimeTimer:Lorg/mozilla/gecko/TelemetryUtils$UptimeTimer;

    :cond_0
    invoke-super {p0}, Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;->onReleaseResources()V

    return-void
.end method
