.class Lorg/mozilla/gecko/GeckoAppShell$DefaultListeners;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Landroid/location/LocationListener;
.implements Lorg/mozilla/gecko/NotificationListener;
.implements Lorg/mozilla/gecko/ScreenOrientationDelegate;
.implements Lorg/mozilla/gecko/WakeLockDelegate;
.implements Lorg/mozilla/gecko/HapticFeedbackDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/GeckoAppShell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultListeners"
.end annotation


# instance fields
.field private mWakeLocks:Lf/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/i;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/mozilla/gecko/GeckoAppShell$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/mozilla/gecko/GeckoAppShell$DefaultListeners;-><init>()V

    return-void
.end method


# virtual methods
.method public closeNotification(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 14

    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    :goto_0
    move-wide v6, v0

    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    const/high16 v1, 0x7fc00000    # Float.NaN

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    move v8, v0

    goto :goto_1

    :cond_1
    move v8, v1

    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_2

    invoke-static {p1}, Lc1/a;->y(Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lc1/a;->a(Landroid/location/Location;)F

    move-result v0

    move v9, v0

    goto :goto_2

    :cond_2
    move v9, v1

    :goto_2
    invoke-virtual {p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v0

    move v11, v0

    goto :goto_3

    :cond_3
    move v11, v1

    :goto_3
    invoke-virtual {p1}, Landroid/location/Location;->hasBearing()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v0

    move v10, v0

    goto :goto_4

    :cond_4
    move v10, v1

    :goto_4
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v12

    invoke-static/range {v2 .. v13}, Lorg/mozilla/gecko/GeckoAppShell;->onLocationChanged(DDDFFFFJ)V

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 12

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    iget-wide v1, p1, Landroid/hardware/SensorEvent;->timestamp:J

    const-wide/16 v3, 0x3e8

    div-long v10, v1, v3

    const/16 v1, 0xa

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eq v0, v4, :cond_7

    const/16 v7, 0x8

    if-eq v0, v7, :cond_6

    const/16 v7, 0xf

    const/16 v8, 0xb

    const/4 v9, 0x4

    if-eq v0, v7, :cond_2

    if-eq v0, v2, :cond_7

    if-eq v0, v9, :cond_1

    const/4 v7, 0x5

    if-eq v0, v7, :cond_0

    if-eq v0, v1, :cond_7

    if-eq v0, v8, :cond_2

    move v7, v6

    move v8, v7

    move v9, v8

    goto/16 :goto_4

    :cond_0
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v5

    move v8, v6

    move v9, v8

    move v5, v7

    move v6, p1

    move v7, v9

    goto/16 :goto_4

    :cond_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v5

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v3

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float p1, v2

    move v8, p1

    move v7, v1

    move v5, v9

    :goto_0
    move v9, v6

    :goto_1
    move v6, v0

    goto/16 :goto_4

    :cond_2
    if-ne v0, v8, :cond_3

    const/4 v0, 0x6

    goto :goto_2

    :cond_3
    const/4 v0, 0x7

    :goto_2
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, p1, v5

    aget v4, p1, v4

    aget v3, p1, v3

    array-length v5, p1

    if-lt v5, v9, :cond_4

    aget p1, p1, v2

    move v9, p1

    move v5, v0

    move v6, v1

    move v8, v3

    move v7, v4

    goto :goto_4

    :cond_4
    const/high16 p1, 0x3f800000    # 1.0f

    mul-float v2, v1, v1

    sub-float/2addr p1, v2

    mul-float v2, v4, v4

    sub-float/2addr p1, v2

    mul-float v2, v3, v3

    sub-float/2addr p1, v2

    cmpl-float v2, p1, v6

    if-lez v2, :cond_5

    float-to-double v5, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v6, v5

    :cond_5
    move v5, v0

    move v8, v3

    move v7, v4

    move v9, v6

    move v6, v1

    goto :goto_4

    :cond_6
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v5

    iget-object p1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result p1

    move v8, p1

    move v5, v3

    move v7, v6

    move v9, v7

    goto :goto_1

    :cond_7
    if-ne v0, v4, :cond_8

    move v2, v4

    goto :goto_3

    :cond_8
    if-ne v0, v1, :cond_9

    goto :goto_3

    :cond_9
    move v2, v5

    :goto_3
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, p1, v5

    aget v1, p1, v4

    aget p1, p1, v3

    move v8, p1

    move v7, v1

    move v5, v2

    goto :goto_0

    :goto_4
    invoke-static/range {v5 .. v11}, Lorg/mozilla/gecko/GeckoAppShell;->onSensorChanged(IFFFFJ)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public performHapticFeedback(I)V
    .locals 3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/16 p1, 0x28

    filled-new-array {p1}, [I

    move-result-object p1

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_1

    const/16 p1, 0x15

    filled-new-array {v1, v2, v0, p1}, [I

    move-result-object p1

    goto :goto_0

    :cond_1
    if-ne p1, v2, :cond_2

    const/16 p1, 0xa

    const/16 v2, 0x1e

    filled-new-array {v1, p1, v0, v2}, [I

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lorg/mozilla/gecko/GeckoAppShell;->access$000([I)V

    :cond_2
    return-void
.end method

.method public setRequestedOrientationForCurrentActivity(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setWakeLockState(Ljava/lang/String;I)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Wakelock"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/mozilla/gecko/GeckoAppShell$DefaultListeners;->mWakeLocks:Lf/i;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lf/i;

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lf/i;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lorg/mozilla/gecko/GeckoAppShell$DefaultListeners;->mWakeLocks:Lf/i;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lorg/mozilla/gecko/GeckoAppShell$DefaultListeners;->mWakeLocks:Lf/i;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v0, p1, v2}, Lf/i;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/os/PowerManager$WakeLock;

    .line 21
    .line 22
    const-string v2, "audio-playing"

    .line 23
    .line 24
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    if-ne p2, v1, :cond_1

    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    const/4 v1, 0x1

    .line 34
    if-ne p2, v1, :cond_6

    .line 35
    .line 36
    if-nez v0, :cond_6

    .line 37
    .line 38
    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getApplicationContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    const-string v0, "power"

    .line 43
    .line 44
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    check-cast p2, Landroid/os/PowerManager;

    .line 49
    .line 50
    const-string v0, "cpu"

    .line 51
    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_5

    .line 57
    .line 58
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    const-string v0, "screen"

    .line 66
    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_4

    .line 72
    .line 73
    const-string v0, "video-playing"

    .line 74
    .line 75
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_3
    return-void

    .line 83
    :cond_4
    :goto_0
    const v0, 0x2000000a

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, v0, p1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    goto :goto_2

    .line 91
    :cond_5
    :goto_1
    invoke-virtual {p2, v1, p1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    :goto_2
    invoke-virtual {p2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lorg/mozilla/gecko/GeckoAppShell$DefaultListeners;->mWakeLocks:Lf/i;

    .line 99
    .line 100
    invoke-virtual {v0, p1, p2}, Lf/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_6
    if-eq p2, v1, :cond_7

    .line 105
    .line 106
    if-eqz v0, :cond_7

    .line 107
    .line 108
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 109
    .line 110
    .line 111
    iget-object p2, p0, Lorg/mozilla/gecko/GeckoAppShell$DefaultListeners;->mWakeLocks:Lf/i;

    .line 112
    .line 113
    invoke-virtual {p2, p1}, Lf/i;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    :cond_7
    :goto_3
    return-void
.end method

.method public showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lorg/mozilla/gecko/GeckoAppShell;->onNotificationClose(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showPersistentNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lorg/mozilla/gecko/GeckoAppShell;->onNotificationClose(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
