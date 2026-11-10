.class public Lorg/mozilla/gecko/TelemetryUtils$UptimeTimer;
.super Lorg/mozilla/gecko/TelemetryUtils$Timer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/TelemetryUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UptimeTimer"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/mozilla/gecko/TelemetryUtils$Timer;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public now()J
    .locals 2

    invoke-static {}, Lorg/mozilla/gecko/TelemetryUtils;->uptime()J

    move-result-wide v0

    return-wide v0
.end method
