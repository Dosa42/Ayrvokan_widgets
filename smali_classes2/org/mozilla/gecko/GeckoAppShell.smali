.class public Lorg/mozilla/gecko/GeckoAppShell;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/gecko/GeckoAppShell$BitmapConnection;,
        Lorg/mozilla/gecko/GeckoAppShell$CameraCallback;,
        Lorg/mozilla/gecko/GeckoAppShell$GeckoInterface;,
        Lorg/mozilla/gecko/GeckoAppShell$GeckoProcessesVisitor;,
        Lorg/mozilla/gecko/GeckoAppShell$DefaultListeners;,
        Lorg/mozilla/gecko/GeckoAppShell$GeckoCrashHandler;
    }
.end annotation


# static fields
.field private static final COARSE_POINTER:I = 0x1

.field private static final DEFAULT_LISTENERS:Lorg/mozilla/gecko/GeckoAppShell$DefaultListeners;

.field private static final FINE_POINTER:I = 0x2

.field private static final HIGH_MEMORY_DEVICE_THRESHOLD_MB:I = 0x300

.field private static final HOVER_CAPABLE_POINTER:I = 0x4

.field public static final LINK_TYPE_2G:I = 0x5

.field public static final LINK_TYPE_3G:I = 0x6

.field public static final LINK_TYPE_4G:I = 0x7

.field public static final LINK_TYPE_ETHERNET:I = 0x1

.field public static final LINK_TYPE_UNKNOWN:I = 0x0

.field public static final LINK_TYPE_USB:I = 0x2

.field public static final LINK_TYPE_WIFI:I = 0x3

.field public static final LINK_TYPE_WIMAX:I = 0x4

.field private static final LOGTAG:Ljava/lang/String; = "GeckoAppShell"

.field private static final NO_POINTER:I = 0x0

.field public static final PREFS_OOM_EXCEPTION:Ljava/lang/String; = "OOMException"

.field public static final WPL_STATE_IS_DOCUMENT:I = 0x20000

.field public static final WPL_STATE_IS_NETWORK:I = 0x40000

.field public static final WPL_STATE_START:I = 0x1

.field public static final WPL_STATE_STOP:I = 0x10

.field private static gAccelerometerSensor:Landroid/hardware/Sensor; = null

.field private static gGameRotationVectorSensor:Landroid/hardware/Sensor; = null

.field private static gGyroscopeSensor:Landroid/hardware/Sensor; = null

.field private static gLightSensor:Landroid/hardware/Sensor; = null

.field private static gLinearAccelerometerSensor:Landroid/hardware/Sensor; = null

.field private static gOrientationSensor:Landroid/hardware/Sensor; = null

.field private static gProximitySensor:Landroid/hardware/Sensor; = null

.field private static gRotationVectorSensor:Landroid/hardware/Sensor; = null

.field private static final kPreferredFPS:I = 0x19

.field private static volatile locationHighAccuracyEnabled:Z

.field private static sAppNotes:Ljava/lang/String;

.field private static sApplicationContext:Landroid/content/Context;

.field static sCamera:Landroid/hardware/Camera;

.field private static sCameraBuffer:[B

.field private static sConnectivityManager:Landroid/net/ConnectivityManager;

.field private static sCrashHandler:Lorg/mozilla/gecko/CrashHandler;

.field private static sCrashHandlerService:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation
.end field

.field private static sDensity:Ljava/lang/Float;

.field private static sDensityDpi:I

.field private static sGeckoInterface:Lorg/mozilla/gecko/GeckoAppShell$GeckoInterface;

.field private static sHapticFeedbackDelegate:Lorg/mozilla/gecko/HapticFeedbackDelegate;

.field private static sLocationListener:Landroid/location/LocationListener;

.field private static sNotificationListener:Lorg/mozilla/gecko/NotificationListener;

.field private static sPreviousAudioMode:I

.field private static sScreenDepth:I

.field private static sScreenOrientationDelegate:Lorg/mozilla/gecko/ScreenOrientationDelegate;

.field private static sScreenSizeOverride:Landroid/graphics/Rect;

.field private static sSensorListener:Landroid/hardware/SensorEventListener;

.field private static sUseMaxScreenDepth:Z

.field private static sVibrationEndTime:J

.field private static sVibrationMaybePlaying:Z

.field private static sWakeLockDelegate:Lorg/mozilla/gecko/WakeLockDelegate;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/mozilla/gecko/GeckoAppShell$DefaultListeners;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/mozilla/gecko/GeckoAppShell$DefaultListeners;-><init>(Lorg/mozilla/gecko/GeckoAppShell$1;)V

    sput-object v0, Lorg/mozilla/gecko/GeckoAppShell;->DEFAULT_LISTENERS:Lorg/mozilla/gecko/GeckoAppShell$DefaultListeners;

    sput-object v0, Lorg/mozilla/gecko/GeckoAppShell;->sSensorListener:Landroid/hardware/SensorEventListener;

    sput-object v0, Lorg/mozilla/gecko/GeckoAppShell;->sLocationListener:Landroid/location/LocationListener;

    sput-object v0, Lorg/mozilla/gecko/GeckoAppShell;->sNotificationListener:Lorg/mozilla/gecko/NotificationListener;

    sput-object v0, Lorg/mozilla/gecko/GeckoAppShell;->sWakeLockDelegate:Lorg/mozilla/gecko/WakeLockDelegate;

    sput-object v0, Lorg/mozilla/gecko/GeckoAppShell;->sHapticFeedbackDelegate:Lorg/mozilla/gecko/HapticFeedbackDelegate;

    sput-object v0, Lorg/mozilla/gecko/GeckoAppShell;->sScreenOrientationDelegate:Lorg/mozilla/gecko/ScreenOrientationDelegate;

    const/4 v0, -0x2

    sput v0, Lorg/mozilla/gecko/GeckoAppShell;->sPreviousAudioMode:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static EnumerateGeckoProcesses(Lorg/mozilla/gecko/GeckoAppShell$GeckoProcessesVisitor;)V
    .locals 10

    const-string v0, "ps"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v4, Ljava/io/BufferedReader;

    const/16 v5, 0x800

    invoke-direct {v4, v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/util/StringTokenizer;

    invoke-direct {v5, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    const/4 v1, -0x1

    const/4 v6, 0x0

    move v7, v6

    move v6, v1

    :goto_0
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    const-string v9, "PID"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v1, v7

    goto :goto_1

    :cond_0
    const-string v9, "USER"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v6, v7

    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    const-string v7, "\\s+"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v7, v5

    if-le v7, v1, :cond_2

    array-length v7, v5

    if-gt v7, v6, :cond_3

    goto :goto_2

    :cond_3
    aget-object v7, v5, v6

    invoke-static {v7}, Landroid/os/Process;->getUidForName(Ljava/lang/String;)I

    move-result v7

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v8

    if-ne v7, v8, :cond_2

    array-length v7, v5

    add-int/lit8 v7, v7, -0x1

    aget-object v7, v5, v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    aget-object v5, v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Lorg/mozilla/gecko/GeckoAppShell$GeckoProcessesVisitor;->callback(I)Z

    move-result v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v5, :cond_2

    :cond_4
    invoke-static {v4}, Lorg/mozilla/gecko/util/IOUtils;->safeStreamClose(Ljava/io/Closeable;)V

    invoke-static {v3}, Lorg/mozilla/gecko/util/IOUtils;->safeStreamClose(Ljava/io/Closeable;)V

    goto :goto_5

    :catchall_0
    move-exception p0

    move-object v1, v4

    goto :goto_3

    :catch_0
    move-object v1, v4

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_3

    :catchall_2
    move-exception p0

    move-object v3, v1

    goto :goto_3

    :catch_1
    move-object v3, v1

    goto :goto_4

    :catchall_3
    move-exception p0

    move-object v2, v1

    move-object v3, v2

    :goto_3
    invoke-static {v1}, Lorg/mozilla/gecko/util/IOUtils;->safeStreamClose(Ljava/io/Closeable;)V

    invoke-static {v3}, Lorg/mozilla/gecko/util/IOUtils;->safeStreamClose(Ljava/io/Closeable;)V

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :cond_5
    throw p0

    :catch_2
    move-object v2, v1

    move-object v3, v2

    :catch_3
    :goto_4
    invoke-static {v1}, Lorg/mozilla/gecko/util/IOUtils;->safeStreamClose(Ljava/io/Closeable;)V

    invoke-static {v3}, Lorg/mozilla/gecko/util/IOUtils;->safeStreamClose(Ljava/io/Closeable;)V

    if-eqz v2, :cond_6

    :goto_5
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    :cond_6
    return-void
.end method

.method public static synthetic access$000([I)V
    .locals 0

    invoke-static {p0}, Lorg/mozilla/gecko/GeckoAppShell;->vibrateOnHapticFeedbackEnabled([I)V

    return-void
.end method

.method public static synthetic access$200()[B
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/GeckoAppShell;->sCameraBuffer:[B

    return-object v0
.end method

.method public static declared-synchronized appendAppNotesToCrashReport(Ljava/lang/String;)V
    .locals 3

    const-class v0, Lorg/mozilla/gecko/GeckoAppShell;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/mozilla/gecko/GeckoAppShell;->sAppNotes:Ljava/lang/String;

    if-nez v1, :cond_0

    :goto_0
    sput-object p0, Lorg/mozilla/gecko/GeckoAppShell;->sAppNotes:Ljava/lang/String;

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/mozilla/gecko/GeckoAppShell;->sAppNotes:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static cancelVibrate()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    const/4 v0, 0x0

    sput-boolean v0, Lorg/mozilla/gecko/GeckoAppShell;->sVibrationMaybePlaying:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lorg/mozilla/gecko/GeckoAppShell;->sVibrationEndTime:J

    :try_start_0
    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->vibrator()Landroid/os/Vibrator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static declared-synchronized closeCamera()V
    .locals 2
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    const-class v0, Lorg/mozilla/gecko/GeckoAppShell;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/mozilla/gecko/GeckoAppShell;->sCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    sget-object v1, Lorg/mozilla/gecko/GeckoAppShell;->sCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    const/4 v1, 0x0

    sput-object v1, Lorg/mozilla/gecko/GeckoAppShell;->sCamera:Landroid/hardware/Camera;

    sput-object v1, Lorg/mozilla/gecko/GeckoAppShell;->sCameraBuffer:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static closeNotification(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getNotificationListener()Lorg/mozilla/gecko/NotificationListener;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/mozilla/gecko/NotificationListener;->closeNotification(Ljava/lang/String;)V

    return-void
.end method

.method private static connectionGetMimeType(Ljava/net/URLConnection;)Ljava/lang/String;
    .locals 0
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static convertIntToLongArray([I)[J
    .locals 4

    array-length v0, p0

    new-array v0, v0, [J

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget v2, p0, v1

    int-to-long v2, v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static createInputStream(Ljava/net/URLConnection;)Ljava/io/InputStream;
    .locals 0
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method private static disableBatteryNotifications()V
    .locals 0
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    invoke-static {}, Lorg/mozilla/gecko/GeckoBatteryManager;->disableNotifications()V

    return-void
.end method

.method private static disableNetworkNotifications()V
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    new-instance v0, Lorg/mozilla/gecko/GeckoAppShell$3;

    invoke-direct {v0}, Lorg/mozilla/gecko/GeckoAppShell$3;-><init>()V

    invoke-static {v0}, Lorg/mozilla/gecko/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static disableScreenOrientationNotifications()V
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    invoke-static {}, Lorg/mozilla/gecko/GeckoScreenOrientation;->getInstance()Lorg/mozilla/gecko/GeckoScreenOrientation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/gecko/GeckoScreenOrientation;->disableNotifications()V

    return-void
.end method

.method private static disableSensor(I)V
    .locals 2
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget-object p0, Lorg/mozilla/gecko/GeckoAppShell;->gGameRotationVectorSensor:Landroid/hardware/Sensor;

    if-eqz p0, :cond_0

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getSensorListener()Landroid/hardware/SensorEventListener;

    move-result-object p0

    sget-object v1, Lorg/mozilla/gecko/GeckoAppShell;->gGameRotationVectorSensor:Landroid/hardware/Sensor;

    goto :goto_0

    :cond_0
    :pswitch_1
    sget-object p0, Lorg/mozilla/gecko/GeckoAppShell;->gRotationVectorSensor:Landroid/hardware/Sensor;

    if-eqz p0, :cond_1

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getSensorListener()Landroid/hardware/SensorEventListener;

    move-result-object p0

    sget-object v1, Lorg/mozilla/gecko/GeckoAppShell;->gRotationVectorSensor:Landroid/hardware/Sensor;

    goto :goto_0

    :pswitch_2
    sget-object p0, Lorg/mozilla/gecko/GeckoAppShell;->gLightSensor:Landroid/hardware/Sensor;

    if-eqz p0, :cond_2

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getSensorListener()Landroid/hardware/SensorEventListener;

    move-result-object p0

    sget-object v1, Lorg/mozilla/gecko/GeckoAppShell;->gLightSensor:Landroid/hardware/Sensor;

    goto :goto_0

    :pswitch_3
    sget-object p0, Lorg/mozilla/gecko/GeckoAppShell;->gGyroscopeSensor:Landroid/hardware/Sensor;

    if-eqz p0, :cond_2

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getSensorListener()Landroid/hardware/SensorEventListener;

    move-result-object p0

    sget-object v1, Lorg/mozilla/gecko/GeckoAppShell;->gGyroscopeSensor:Landroid/hardware/Sensor;

    goto :goto_0

    :pswitch_4
    sget-object p0, Lorg/mozilla/gecko/GeckoAppShell;->gLinearAccelerometerSensor:Landroid/hardware/Sensor;

    if-eqz p0, :cond_2

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getSensorListener()Landroid/hardware/SensorEventListener;

    move-result-object p0

    sget-object v1, Lorg/mozilla/gecko/GeckoAppShell;->gLinearAccelerometerSensor:Landroid/hardware/Sensor;

    goto :goto_0

    :pswitch_5
    sget-object p0, Lorg/mozilla/gecko/GeckoAppShell;->gProximitySensor:Landroid/hardware/Sensor;

    if-eqz p0, :cond_2

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getSensorListener()Landroid/hardware/SensorEventListener;

    move-result-object p0

    sget-object v1, Lorg/mozilla/gecko/GeckoAppShell;->gProximitySensor:Landroid/hardware/Sensor;

    goto :goto_0

    :pswitch_6
    sget-object p0, Lorg/mozilla/gecko/GeckoAppShell;->gAccelerometerSensor:Landroid/hardware/Sensor;

    if-eqz p0, :cond_2

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getSensorListener()Landroid/hardware/SensorEventListener;

    move-result-object p0

    sget-object v1, Lorg/mozilla/gecko/GeckoAppShell;->gAccelerometerSensor:Landroid/hardware/Sensor;

    goto :goto_0

    :cond_1
    :pswitch_7
    sget-object p0, Lorg/mozilla/gecko/GeckoAppShell;->gOrientationSensor:Landroid/hardware/Sensor;

    if-eqz p0, :cond_2

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getSensorListener()Landroid/hardware/SensorEventListener;

    move-result-object p0

    sget-object v1, Lorg/mozilla/gecko/GeckoAppShell;->gOrientationSensor:Landroid/hardware/Sensor;

    :goto_0
    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    :cond_2
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static enableBatteryNotifications()V
    .locals 0
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    invoke-static {}, Lorg/mozilla/gecko/GeckoBatteryManager;->enableNotifications()V

    return-void
.end method

.method private static declared-synchronized enableLocation(Z)Z
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    const-class v0, Lorg/mozilla/gecko/GeckoAppShell;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/mozilla/gecko/GeckoAppShell;->getLocationManager(Landroid/content/Context;)Landroid/location/LocationManager;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v2, :cond_0

    monitor-exit v0

    return v1

    :cond_0
    const/4 v9, 0x1

    if-nez p0, :cond_1

    :try_start_1
    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getLocationListener()Landroid/location/LocationListener;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return v9

    :cond_1
    :try_start_2
    const-string p0, "gps"

    invoke-virtual {v2, p0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "network"

    invoke-virtual {v2, p0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p0, :cond_2

    monitor-exit v0

    return v1

    :cond_2
    :try_start_3
    invoke-static {v2}, Lorg/mozilla/gecko/GeckoAppShell;->getLastKnownLocation(Landroid/location/LocationManager;)Landroid/location/Location;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getLocationListener()Landroid/location/LocationListener;

    move-result-object v3

    invoke-interface {v3, p0}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    :cond_3
    new-instance p0, Landroid/location/Criteria;

    invoke-direct {p0}, Landroid/location/Criteria;-><init>()V

    invoke-virtual {p0, v1}, Landroid/location/Criteria;->setSpeedRequired(Z)V

    invoke-virtual {p0, v1}, Landroid/location/Criteria;->setBearingRequired(Z)V

    invoke-virtual {p0, v1}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    sget-boolean v3, Lorg/mozilla/gecko/GeckoAppShell;->locationHighAccuracyEnabled:Z

    if-eqz v3, :cond_4

    invoke-virtual {p0, v9}, Landroid/location/Criteria;->setAccuracy(I)V

    invoke-virtual {p0, v9}, Landroid/location/Criteria;->setCostAllowed(Z)V

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Landroid/location/Criteria;->setPowerRequirement(I)V

    goto :goto_0

    :cond_4
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Landroid/location/Criteria;->setAccuracy(I)V

    invoke-virtual {p0, v1}, Landroid/location/Criteria;->setCostAllowed(Z)V

    invoke-virtual {p0, v9}, Landroid/location/Criteria;->setPowerRequirement(I)V

    :goto_0
    invoke-virtual {v2, p0, v9}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v3, :cond_5

    monitor-exit v0

    return v1

    :cond_5
    :try_start_4
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    const-wide/16 v4, 0x64

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getLocationListener()Landroid/location/LocationListener;

    move-result-object v7

    invoke-virtual/range {v2 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    return v9

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static enableLocationHighAccuracy(Z)V
    .locals 0
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    sput-boolean p0, Lorg/mozilla/gecko/GeckoAppShell;->locationHighAccuracyEnabled:Z

    return-void
.end method

.method private static enableNetworkNotifications()V
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    new-instance v0, Lorg/mozilla/gecko/GeckoAppShell$2;

    invoke-direct {v0}, Lorg/mozilla/gecko/GeckoAppShell$2;-><init>()V

    invoke-static {v0}, Lorg/mozilla/gecko/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static enableScreenOrientationNotifications()V
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    invoke-static {}, Lorg/mozilla/gecko/GeckoScreenOrientation;->getInstance()Lorg/mozilla/gecko/GeckoScreenOrientation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/gecko/GeckoScreenOrientation;->enableNotifications()V

    return-void
.end method

.method private static enableSensor(I)V
    .locals 4
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    const/4 v1, 0x3

    const/4 v2, 0x0

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    sget-object p0, Lorg/mozilla/gecko/GeckoAppShell;->gGameRotationVectorSensor:Landroid/hardware/Sensor;

    if-nez p0, :cond_0

    const/16 p0, 0xf

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p0

    sput-object p0, Lorg/mozilla/gecko/GeckoAppShell;->gGameRotationVectorSensor:Landroid/hardware/Sensor;

    :cond_0
    sget-object p0, Lorg/mozilla/gecko/GeckoAppShell;->gGameRotationVectorSensor:Landroid/hardware/Sensor;

    if-eqz p0, :cond_1

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getSensorListener()Landroid/hardware/SensorEventListener;

    move-result-object p0

    sget-object v3, Lorg/mozilla/gecko/GeckoAppShell;->gGameRotationVectorSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v3, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_1
    sget-object p0, Lorg/mozilla/gecko/GeckoAppShell;->gGameRotationVectorSensor:Landroid/hardware/Sensor;

    if-eqz p0, :cond_2

    goto/16 :goto_2

    :cond_2
    :pswitch_1
    sget-object p0, Lorg/mozilla/gecko/GeckoAppShell;->gRotationVectorSensor:Landroid/hardware/Sensor;

    if-nez p0, :cond_3

    const/16 p0, 0xb

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p0

    sput-object p0, Lorg/mozilla/gecko/GeckoAppShell;->gRotationVectorSensor:Landroid/hardware/Sensor;

    :cond_3
    sget-object p0, Lorg/mozilla/gecko/GeckoAppShell;->gRotationVectorSensor:Landroid/hardware/Sensor;

    if-eqz p0, :cond_4

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getSensorListener()Landroid/hardware/SensorEventListener;

    move-result-object p0

    sget-object v3, Lorg/mozilla/gecko/GeckoAppShell;->gRotationVectorSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v3, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_4
    sget-object p0, Lorg/mozilla/gecko/GeckoAppShell;->gRotationVectorSensor:Landroid/hardware/Sensor;

    if-eqz p0, :cond_a

    goto/16 :goto_2

    :pswitch_2
    sget-object p0, Lorg/mozilla/gecko/GeckoAppShell;->gLightSensor:Landroid/hardware/Sensor;

    if-nez p0, :cond_5

    const/4 p0, 0x5

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p0

    sput-object p0, Lorg/mozilla/gecko/GeckoAppShell;->gLightSensor:Landroid/hardware/Sensor;

    :cond_5
    sget-object p0, Lorg/mozilla/gecko/GeckoAppShell;->gLightSensor:Landroid/hardware/Sensor;

    if-eqz p0, :cond_c

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getSensorListener()Landroid/hardware/SensorEventListener;

    move-result-object p0

    sget-object v2, Lorg/mozilla/gecko/GeckoAppShell;->gLightSensor:Landroid/hardware/Sensor;

    goto :goto_0

    :pswitch_3
    sget-object p0, Lorg/mozilla/gecko/GeckoAppShell;->gGyroscopeSensor:Landroid/hardware/Sensor;

    if-nez p0, :cond_6

    const/4 p0, 0x4

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p0

    sput-object p0, Lorg/mozilla/gecko/GeckoAppShell;->gGyroscopeSensor:Landroid/hardware/Sensor;

    :cond_6
    sget-object p0, Lorg/mozilla/gecko/GeckoAppShell;->gGyroscopeSensor:Landroid/hardware/Sensor;

    if-eqz p0, :cond_c

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getSensorListener()Landroid/hardware/SensorEventListener;

    move-result-object p0

    sget-object v1, Lorg/mozilla/gecko/GeckoAppShell;->gGyroscopeSensor:Landroid/hardware/Sensor;

    goto :goto_1

    :pswitch_4
    sget-object p0, Lorg/mozilla/gecko/GeckoAppShell;->gLinearAccelerometerSensor:Landroid/hardware/Sensor;

    if-nez p0, :cond_7

    const/16 p0, 0xa

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p0

    sput-object p0, Lorg/mozilla/gecko/GeckoAppShell;->gLinearAccelerometerSensor:Landroid/hardware/Sensor;

    :cond_7
    sget-object p0, Lorg/mozilla/gecko/GeckoAppShell;->gLinearAccelerometerSensor:Landroid/hardware/Sensor;

    if-eqz p0, :cond_c

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getSensorListener()Landroid/hardware/SensorEventListener;

    move-result-object p0

    sget-object v1, Lorg/mozilla/gecko/GeckoAppShell;->gLinearAccelerometerSensor:Landroid/hardware/Sensor;

    goto :goto_1

    :pswitch_5
    sget-object p0, Lorg/mozilla/gecko/GeckoAppShell;->gProximitySensor:Landroid/hardware/Sensor;

    if-nez p0, :cond_8

    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p0

    sput-object p0, Lorg/mozilla/gecko/GeckoAppShell;->gProximitySensor:Landroid/hardware/Sensor;

    :cond_8
    sget-object p0, Lorg/mozilla/gecko/GeckoAppShell;->gProximitySensor:Landroid/hardware/Sensor;

    if-eqz p0, :cond_c

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getSensorListener()Landroid/hardware/SensorEventListener;

    move-result-object p0

    sget-object v2, Lorg/mozilla/gecko/GeckoAppShell;->gProximitySensor:Landroid/hardware/Sensor;

    :goto_0
    invoke-virtual {v0, p0, v2, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_2

    :pswitch_6
    sget-object p0, Lorg/mozilla/gecko/GeckoAppShell;->gAccelerometerSensor:Landroid/hardware/Sensor;

    if-nez p0, :cond_9

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p0

    sput-object p0, Lorg/mozilla/gecko/GeckoAppShell;->gAccelerometerSensor:Landroid/hardware/Sensor;

    :cond_9
    sget-object p0, Lorg/mozilla/gecko/GeckoAppShell;->gAccelerometerSensor:Landroid/hardware/Sensor;

    if-eqz p0, :cond_c

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getSensorListener()Landroid/hardware/SensorEventListener;

    move-result-object p0

    sget-object v1, Lorg/mozilla/gecko/GeckoAppShell;->gAccelerometerSensor:Landroid/hardware/Sensor;

    goto :goto_1

    :cond_a
    :pswitch_7
    sget-object p0, Lorg/mozilla/gecko/GeckoAppShell;->gOrientationSensor:Landroid/hardware/Sensor;

    if-nez p0, :cond_b

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p0

    sput-object p0, Lorg/mozilla/gecko/GeckoAppShell;->gOrientationSensor:Landroid/hardware/Sensor;

    :cond_b
    sget-object p0, Lorg/mozilla/gecko/GeckoAppShell;->gOrientationSensor:Landroid/hardware/Sensor;

    if-eqz p0, :cond_c

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getSensorListener()Landroid/hardware/SensorEventListener;

    move-result-object p0

    sget-object v1, Lorg/mozilla/gecko/GeckoAppShell;->gOrientationSensor:Landroid/hardware/Sensor;

    :goto_1
    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_c
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static ensureConnectivityManager()V
    .locals 2

    sget-object v0, Lorg/mozilla/gecko/GeckoAppShell;->sConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, Lorg/mozilla/gecko/GeckoAppShell;->sConnectivityManager:Landroid/net/ConnectivityManager;

    :cond_0
    return-void
.end method

.method public static declared-synchronized ensureCrashHandling(Ljava/lang/Class;)Lorg/mozilla/gecko/CrashHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Service;",
            ">;)",
            "Lorg/mozilla/gecko/CrashHandler;"
        }
    .end annotation

    const-class v0, Lorg/mozilla/gecko/GeckoAppShell;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/mozilla/gecko/GeckoAppShell;->sCrashHandler:Lorg/mozilla/gecko/CrashHandler;

    if-nez v1, :cond_0

    new-instance v1, Lorg/mozilla/gecko/GeckoAppShell$GeckoCrashHandler;

    invoke-direct {v1, p0}, Lorg/mozilla/gecko/GeckoAppShell$GeckoCrashHandler;-><init>(Ljava/lang/Class;)V

    sput-object v1, Lorg/mozilla/gecko/GeckoAppShell;->sCrashHandler:Lorg/mozilla/gecko/CrashHandler;

    :cond_0
    sget-object p0, Lorg/mozilla/gecko/GeckoAppShell;->sCrashHandler:Lorg/mozilla/gecko/CrashHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static getAllPointerCapabilities()I
    .locals 6
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_2

    aget v4, v0, v2

    invoke-static {v4}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {v4}, Lorg/mozilla/gecko/util/InputDeviceUtils;->isPointerTypeDevice(Landroid/view/InputDevice;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v4}, Lorg/mozilla/gecko/GeckoAppShell;->getPointerCapabilities(Landroid/view/InputDevice;)I

    move-result v4

    or-int/2addr v3, v4

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public static getAppName()Ljava/lang/String;
    .locals 3
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-nez v2, :cond_0

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getAppNameByPID(I)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/proc/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "/cmdline"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p0, :cond_0

    invoke-static {v1}, Lorg/mozilla/gecko/util/IOUtils;->safeStreamClose(Ljava/io/Closeable;)V

    return-object v0

    :cond_0
    :try_start_1
    new-instance p0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {p0}, Lorg/mozilla/gecko/util/IOUtils;->safeStreamClose(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, p0

    goto :goto_0

    :catch_0
    move-object v1, p0

    goto :goto_1

    :catchall_1
    move-exception v0

    :goto_0
    invoke-static {v1}, Lorg/mozilla/gecko/util/IOUtils;->safeStreamClose(Ljava/io/Closeable;)V

    throw v0

    :catch_1
    :goto_1
    invoke-static {v1}, Lorg/mozilla/gecko/util/IOUtils;->safeStreamClose(Ljava/io/Closeable;)V

    return-object v0
.end method

.method public static declared-synchronized getAppNotes()Ljava/lang/String;
    .locals 2
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        exceptionMode = "ignore"
    .end annotation

    const-class v0, Lorg/mozilla/gecko/GeckoAppShell;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/mozilla/gecko/GeckoAppShell;->sAppNotes:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    sget-object v0, Lorg/mozilla/gecko/GeckoAppShell;->sApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getAudioOutputFramesPerBuffer()I
    .locals 3
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "any"
    .end annotation

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/16 v1, 0x200

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "android.media.property.OUTPUT_FRAMES_PER_BUFFER"

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getAudioOutputSampleRate()I
    .locals 3
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "any"
    .end annotation

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const v1, 0xac44

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "android.media.property.OUTPUT_SAMPLE_RATE"

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static getConnection(Ljava/lang/String;)Ljava/net/URLConnection;
    .locals 5
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    const-string v0, "/"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android://"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    const-string v2, "icon/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    return-object v1

    :cond_1
    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Lorg/mozilla/gecko/util/BitmapUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Lorg/mozilla/gecko/GeckoAppShell$BitmapConnection;

    invoke-direct {v3, v2}, Lorg/mozilla/gecko/GeckoAppShell$BitmapConnection;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v3

    :catch_0
    :cond_2
    const/16 v2, 0x3a

    :try_start_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    const/16 v3, 0x2f

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-le v2, v3, :cond_4

    :cond_3
    const-string v2, ":/"

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_4
    return-object v1
.end method

.method public static declared-synchronized getCrashHandlerService()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation

    const-class v0, Lorg/mozilla/gecko/GeckoAppShell;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/mozilla/gecko/GeckoAppShell;->sCrashHandlerService:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static getCurrentBatteryInformation()[D
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    invoke-static {}, Lorg/mozilla/gecko/GeckoBatteryManager;->getCurrentInformation()[D

    move-result-object v0

    return-object v0
.end method

.method private static getCurrentNetworkInformation()[D
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    invoke-static {}, Lorg/mozilla/gecko/GeckoNetworkManager;->getInstance()Lorg/mozilla/gecko/GeckoNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/gecko/GeckoNetworkManager;->getCurrentInformation()[D

    move-result-object v0

    return-object v0
.end method

.method private static getDNSDomains()Ljava/lang/String;
    .locals 3
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->ensureConnectivityManager()V

    sget-object v0, Lorg/mozilla/gecko/GeckoAppShell;->sConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    sget-object v2, Lorg/mozilla/gecko/GeckoAppShell;->sConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getDomains()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultLocales()[Ljava/lang/String;
    .locals 4
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/LocaleList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/os/LocaleList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static declared-synchronized getDensity()F
    .locals 3
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    const-class v0, Lorg/mozilla/gecko/GeckoAppShell;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/mozilla/gecko/GeckoAppShell;->sDensity:Ljava/lang/Float;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/Float;

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {v1, v2}, Ljava/lang/Float;-><init>(F)V

    sput-object v1, Lorg/mozilla/gecko/GeckoAppShell;->sDensity:Ljava/lang/Float;

    :cond_0
    sget-object v1, Lorg/mozilla/gecko/GeckoAppShell;->sDensity:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getDpi()I
    .locals 2
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    const-class v0, Lorg/mozilla/gecko/GeckoAppShell;

    monitor-enter v0

    :try_start_0
    sget v1, Lorg/mozilla/gecko/GeckoAppShell;->sDensityDpi:I

    if-nez v1, :cond_0

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v1, Lorg/mozilla/gecko/GeckoAppShell;->sDensityDpi:I

    :cond_0
    sget v1, Lorg/mozilla/gecko/GeckoAppShell;->sDensityDpi:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static getDrawableForExtension(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/mozilla/gecko/GeckoAppShell;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1, p0}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v1
.end method

.method private static getExceptionStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 0
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        exceptionMode = "ignore"
    .end annotation

    invoke-static {p0}, Lorg/mozilla/gecko/CrashHandler;->getRootException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/gecko/CrashHandler;->getExceptionStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getGeckoInterface()Lorg/mozilla/gecko/GeckoAppShell$GeckoInterface;
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/GeckoAppShell;->sGeckoInterface:Lorg/mozilla/gecko/GeckoAppShell$GeckoInterface;

    return-object v0
.end method

.method private static getHandlersForMimeType(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getGeckoInterface()Lorg/mozilla/gecko/GeckoAppShell$GeckoInterface;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-interface {v0, p0, p1}, Lorg/mozilla/gecko/GeckoAppShell$GeckoInterface;->getHandlersForMimeType(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getHandlersForURL(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getGeckoInterface()Lorg/mozilla/gecko/GeckoAppShell$GeckoInterface;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-interface {v0, p0, p1}, Lorg/mozilla/gecko/GeckoAppShell$GeckoInterface;->getHandlersForURL(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getHapticFeedbackDelegate()Lorg/mozilla/gecko/HapticFeedbackDelegate;
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/GeckoAppShell;->sHapticFeedbackDelegate:Lorg/mozilla/gecko/HapticFeedbackDelegate;

    return-object v0
.end method

.method private static getIconForExtension(Ljava/lang/String;I)[B
    .locals 3
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    .line 1
    if-gtz p1, :cond_0

    .line 2
    .line 3
    const/16 p1, 0x10

    .line 4
    .line 5
    :cond_0
    const/4 v0, 0x1

    .line 6
    if-eqz p0, :cond_1

    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-le v1, v0, :cond_1

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/16 v2, 0x2e

    .line 20
    .line 21
    if-ne v1, v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    :cond_1
    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getApplicationContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v1, p0}, Lorg/mozilla/gecko/GeckoAppShell;->getDrawableForExtension(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    if-nez p0, :cond_2

    .line 40
    .line 41
    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getApplicationContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    sget v1, Lorg/mozilla/geckoview/R$drawable;->ic_generic_file:I

    .line 50
    .line 51
    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getApplicationContext()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {p0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    :cond_2
    invoke-static {p0}, Lorg/mozilla/gecko/util/BitmapUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-ne v1, p1, :cond_3

    .line 72
    .line 73
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eq v1, p1, :cond_4

    .line 78
    .line 79
    :cond_3
    invoke-static {p0, p1, p1, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    :cond_4
    mul-int/2addr p1, p1

    .line 84
    mul-int/lit8 p1, p1, 0x4

    .line 85
    .line 86
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p0, p1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    .line 94
    .line 95
    .line 96
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    return-object p0

    .line 98
    :catch_0
    const/4 p0, 0x0

    .line 99
    return-object p0
.end method

.method private static getLanguageTag(Ljava/util/Locale;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x2d

    if-nez v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getLastKnownLocation(Landroid/location/LocationManager;)Landroid/location/Location;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_3

    :cond_2
    :goto_1
    move-object v1, v2

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gtz v3, :cond_2

    if-nez v3, :cond_0

    invoke-static {v2}, Lorg/mozilla/gecko/GeckoAppShell;->getLocationAccuracy(Landroid/location/Location;)F

    move-result v3

    invoke-static {v1}, Lorg/mozilla/gecko/GeckoAppShell;->getLocationAccuracy(Landroid/location/Location;)F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    goto :goto_1

    :cond_4
    return-object v1
.end method

.method private static getLocationAccuracy(Landroid/location/Location;)F
    .locals 1

    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    cmpl-float p0, v0, p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x447a4000    # 1001.0f

    :goto_0
    return v0
.end method

.method public static getLocationListener()Landroid/location/LocationListener;
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/GeckoAppShell;->sLocationListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method private static getLocationManager(Landroid/content/Context;)Landroid/location/LocationManager;
    .locals 1

    :try_start_0
    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getMaxTouchPoints()I
    .locals 3
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.touchscreen.multitouch.jazzhand"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    return v0

    :cond_0
    const-string v1, "android.hardware.touchscreen.multitouch.distinct"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    return v2

    :cond_1
    const-string v1, "android.hardware.touchscreen.multitouch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    const-string v1, "android.hardware.touchscreen"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public static getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMimeTypeFromExtensions(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ".,; "

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    move-object v1, p0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v2

    const-string v3, "*"

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/mozilla/gecko/GeckoAppShell;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v4, 0x2f

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move-object v5, v3

    :goto_1
    move-object p0, v5

    :cond_3
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez v1, :cond_4

    move-object v3, v2

    :cond_4
    move-object v1, v3

    goto :goto_0

    :cond_5
    if-nez p0, :cond_6

    move-object p0, v3

    :cond_6
    if-nez v1, :cond_7

    move-object v1, v3

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getNetworkLinkType()I
    .locals 4
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->ensureConnectivityManager()V

    sget-object v0, Lorg/mozilla/gecko/GeckoAppShell;->sConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v2, 0x6

    if-eqz v0, :cond_4

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    const/16 v2, 0x9

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    return v3

    :cond_2
    const/4 v0, 0x4

    return v0

    :cond_3
    const/4 v0, 0x3

    return v0

    :cond_4
    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_5

    return v1

    :cond_5
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    const/4 v3, 0x5

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    return v2

    :pswitch_1
    const/4 v0, 0x7

    return v0

    :pswitch_2
    return v2

    :pswitch_3
    return v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static getNotificationListener()Lorg/mozilla/gecko/NotificationListener;
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/GeckoAppShell;->sNotificationListener:Lorg/mozilla/gecko/NotificationListener;

    return-object v0
.end method

.method private static getPointerCapabilities(Landroid/view/InputDevice;)I
    .locals 5

    invoke-virtual {p0}, Landroid/view/InputDevice;->getSources()I

    move-result p0

    const/16 v0, 0x1002

    invoke-static {p0, v0}, Lorg/mozilla/gecko/GeckoAppShell;->hasInputDeviceSource(II)Z

    move-result v0

    const v1, 0x10004

    const v2, 0x100008

    const/16 v3, 0x2002

    const v4, 0x1000010

    if-nez v0, :cond_3

    invoke-static {p0, v4}, Lorg/mozilla/gecko/GeckoAppShell;->hasInputDeviceSource(II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0, v3}, Lorg/mozilla/gecko/GeckoAppShell;->hasInputDeviceSource(II)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x4002

    invoke-static {p0, v0}, Lorg/mozilla/gecko/GeckoAppShell;->hasInputDeviceSource(II)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0, v2}, Lorg/mozilla/gecko/GeckoAppShell;->hasInputDeviceSource(II)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0, v1}, Lorg/mozilla/gecko/GeckoAppShell;->hasInputDeviceSource(II)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_0
    const/4 v0, 0x2

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    :goto_2
    invoke-static {p0, v3}, Lorg/mozilla/gecko/GeckoAppShell;->hasInputDeviceSource(II)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {p0, v2}, Lorg/mozilla/gecko/GeckoAppShell;->hasInputDeviceSource(II)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {p0, v1}, Lorg/mozilla/gecko/GeckoAppShell;->hasInputDeviceSource(II)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {p0, v4}, Lorg/mozilla/gecko/GeckoAppShell;->hasInputDeviceSource(II)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    or-int/lit8 v0, v0, 0x4

    :cond_5
    return v0
.end method

.method public static getPreferredIconSize()I
    .locals 2
    .annotation build Lorg/mozilla/gecko/annotation/JNITarget;
    .end annotation

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v0

    return v0
.end method

.method private static getPrimaryPointerCapabilities()I
    .locals 6
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget v4, v0, v3

    invoke-static {v4}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {v4}, Lorg/mozilla/gecko/util/InputDeviceUtils;->isPointerTypeDevice(Landroid/view/InputDevice;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v4}, Lorg/mozilla/gecko/GeckoAppShell;->getPointerCapabilities(Landroid/view/InputDevice;)I

    move-result v2

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return v2
.end method

.method private static getProxyForURI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    new-instance p0, Lorg/mozilla/gecko/util/ProxySelector;

    invoke-direct {p0}, Lorg/mozilla/gecko/util/ProxySelector;-><init>()V

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/gecko/util/ProxySelector;->select(Ljava/lang/String;Ljava/lang/String;)Ljava/net/Proxy;

    move-result-object p0

    sget-object p1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual {p1, p0}, Ljava/net/Proxy;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string p2, "DIRECT"

    if-eqz p1, :cond_0

    return-object p2

    :cond_0
    sget-object p1, Lorg/mozilla/gecko/GeckoAppShell$4;->$SwitchMap$java$net$Proxy$Type:[I

    invoke-virtual {p0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p1, p1, p3

    const/4 p3, 0x1

    if-eq p1, p3, :cond_2

    const/4 p3, 0x2

    if-eq p1, p3, :cond_1

    return-object p2

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "SOCKS "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "PROXY "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getScreenAngle()I
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    invoke-static {}, Lorg/mozilla/gecko/GeckoScreenOrientation;->getInstance()Lorg/mozilla/gecko/GeckoScreenOrientation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/gecko/GeckoScreenOrientation;->getAngle()S

    move-result v0

    return v0
.end method

.method public static declared-synchronized getScreenDepth()I
    .locals 5
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    const-class v0, Lorg/mozilla/gecko/GeckoAppShell;

    monitor-enter v0

    :try_start_0
    sget v1, Lorg/mozilla/gecko/GeckoAppShell;->sScreenDepth:I

    if-nez v1, :cond_1

    const/16 v1, 0x10

    sput v1, Lorg/mozilla/gecko/GeckoAppShell;->sScreenDepth:I

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/graphics/PixelFormat;

    invoke-direct {v2}, Landroid/graphics/PixelFormat;-><init>()V

    const-string v3, "window"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getPixelFormat()I

    move-result v3

    invoke-static {v3, v2}, Landroid/graphics/PixelFormat;->getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V

    iget v3, v2, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_1

    invoke-static {v1}, Lorg/mozilla/gecko/GeckoAppShell;->isHighMemoryDevice(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lorg/mozilla/gecko/GeckoAppShell;->sUseMaxScreenDepth:Z

    if-eqz v1, :cond_0

    iget v4, v2, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    :cond_0
    sput v4, Lorg/mozilla/gecko/GeckoAppShell;->sScreenDepth:I

    :cond_1
    sget v1, Lorg/mozilla/gecko/GeckoAppShell;->sScreenDepth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static getScreenOrientation()S
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    invoke-static {}, Lorg/mozilla/gecko/GeckoScreenOrientation;->getInstance()Lorg/mozilla/gecko/GeckoScreenOrientation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/gecko/GeckoScreenOrientation;->getScreenOrientation()Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;

    move-result-object v0

    iget-short v0, v0, Lorg/mozilla/gecko/GeckoScreenOrientation$ScreenOrientation;->value:S

    return v0
.end method

.method public static getScreenOrientationDelegate()Lorg/mozilla/gecko/ScreenOrientationDelegate;
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/GeckoAppShell;->sScreenOrientationDelegate:Lorg/mozilla/gecko/ScreenOrientationDelegate;

    return-object v0
.end method

.method private static declared-synchronized getScreenSize()Landroid/graphics/Rect;
    .locals 5
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    const-class v0, Lorg/mozilla/gecko/GeckoAppShell;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/mozilla/gecko/GeckoAppShell;->sScreenSizeOverride:Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_1
    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    new-instance v1, Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getSensorListener()Landroid/hardware/SensorEventListener;
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/GeckoAppShell;->sSensorListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method private static getShowPasswordSetting()Z
    .locals 3
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_password"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :catch_0
    :goto_0
    return v0
.end method

.method private static getSystemColors()[I
    .locals 6
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    const/16 v0, 0xb

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    new-array v0, v0, [I

    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x103003e

    invoke-direct {v2, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    aput v5, v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    return-object v0

    :array_0
    .array-data 4
        0x1010036
        0x1010039
        0x1010038
        0x101003a
        0x1010212
        0x1010213
        0x1010099
        0x1010030
        0x1010031
        0x1010060
        0x1010061
    .end array-data
.end method

.method public static getWakeLockDelegate()Lorg/mozilla/gecko/WakeLockDelegate;
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/GeckoAppShell;->sWakeLockDelegate:Lorg/mozilla/gecko/WakeLockDelegate;

    return-object v0
.end method

.method private static declared-synchronized handleUncaughtException(Ljava/lang/Throwable;)V
    .locals 3
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        exceptionMode = "ignore"
    .end annotation

    const-class v0, Lorg/mozilla/gecko/GeckoAppShell;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/mozilla/gecko/GeckoAppShell;->sCrashHandler:Lorg/mozilla/gecko/CrashHandler;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0}, Lorg/mozilla/gecko/CrashHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static hasHWVP8Decoder()Z
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/mozilla/gecko/util/HardwareCodecCapabilityUtils;->hasHWVP8(Z)Z

    move-result v0

    return v0
.end method

.method private static hasHWVP8Encoder()Z
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/mozilla/gecko/util/HardwareCodecCapabilityUtils;->hasHWVP8(Z)Z

    move-result v0

    return v0
.end method

.method private static hasInputDeviceSource(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static hideProgressDialog()V
    .locals 0
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    return-void
.end method

.method private static initCamera(Ljava/lang/String;III)[I
    .locals 11
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    const/4 p0, 0x4

    new-array p0, p0, [I

    const/4 v0, 0x0

    aput v0, p0, v0

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    if-nez v1, :cond_0

    return-object p0

    :cond_0
    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    :try_start_0
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v4

    sput-object v4, Lorg/mozilla/gecko/GeckoAppShell;->sCamera:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/16 v6, 0x3e8

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v8, v7, -0x19

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-ge v9, v6, :cond_1

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-virtual {v4, v7}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    const/16 v5, 0x19

    :try_start_2
    invoke-virtual {v4, v5}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    :cond_2
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const v6, 0x989680

    move v7, v0

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/Camera$Size;

    iget v9, v8, Landroid/hardware/Camera$Size;->width:I

    iget v10, v8, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v9, v10

    mul-int v10, p2, p3

    sub-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-ge v9, v6, :cond_3

    iget v6, v8, Landroid/hardware/Camera$Size;->width:I

    iget v7, v8, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v6, v7

    sub-int/2addr v6, v10

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, v8, Landroid/hardware/Camera$Size;->width:I

    iget v9, v8, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v4, v7, v9}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    iget v7, v8, Landroid/hardware/Camera$Size;->width:I

    iget v8, v8, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v7, v8

    goto :goto_1

    :cond_4
    sget-object p2, Lorg/mozilla/gecko/GeckoAppShell;->sCamera:Landroid/hardware/Camera;

    invoke-virtual {p2, v4}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    mul-int/lit8 v7, v7, 0xc

    div-int/lit8 v7, v7, 0x8

    new-array p2, v7, [B

    sput-object p2, Lorg/mozilla/gecko/GeckoAppShell;->sCameraBuffer:[B

    sget-object p3, Lorg/mozilla/gecko/GeckoAppShell;->sCamera:Landroid/hardware/Camera;

    invoke-virtual {p3, p2}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    sget-object p2, Lorg/mozilla/gecko/GeckoAppShell;->sCamera:Landroid/hardware/Camera;

    new-instance p3, Lorg/mozilla/gecko/GeckoAppShell$CameraCallback;

    invoke-direct {p3, p1}, Lorg/mozilla/gecko/GeckoAppShell$CameraCallback;-><init>(I)V

    invoke-virtual {p2, p3}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    sget-object p1, Lorg/mozilla/gecko/GeckoAppShell;->sCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->startPreview()V

    sget-object p1, Lorg/mozilla/gecko/GeckoAppShell;->sCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    aput v3, p0, v0

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object p2

    iget p2, p2, Landroid/hardware/Camera$Size;->width:I

    aput p2, p0, v3

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object p2

    iget p2, p2, Landroid/hardware/Camera$Size;->height:I

    aput p2, p0, v2

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewFrameRate()I

    move-result p1

    aput p1, p0, v1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    aput v0, p0, v1

    aput v0, p0, v2

    aput v0, p0, v3

    aput v0, p0, v0

    :goto_2
    return-object p0
.end method

.method public static declared-synchronized isCrashHandlingEnabled()Z
    .locals 2

    const-class v0, Lorg/mozilla/gecko/GeckoAppShell;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/mozilla/gecko/GeckoAppShell;->sCrashHandler:Lorg/mozilla/gecko/CrashHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static isHighMemoryDevice(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lorg/mozilla/gecko/SysInfo;->getMemSize(Landroid/content/Context;)I

    move-result p0

    const/16 v0, 0x300

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isNetworkLinkKnown()Z
    .locals 2
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->ensureConnectivityManager()V

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lorg/mozilla/gecko/GeckoAppShell;->sConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x1

    :catch_0
    return v0
.end method

.method private static isNetworkLinkUp()Z
    .locals 2
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->ensureConnectivityManager()V

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lorg/mozilla/gecko/GeckoAppShell;->sConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :catch_0
    :cond_1
    :goto_0
    return v0
.end method

.method public static isTablet()Z
    .locals 1
    .annotation build Lorg/mozilla/gecko/annotation/RobocopTarget;
    .end annotation

    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    invoke-static {}, Lorg/mozilla/gecko/util/HardwareUtils;->isTablet()Z

    move-result v0

    return v0
.end method

.method public static killAnyZombies()V
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    new-instance v0, Lorg/mozilla/gecko/GeckoAppShell$1;

    invoke-direct {v0}, Lorg/mozilla/gecko/GeckoAppShell$1;-><init>()V

    invoke-static {v0}, Lorg/mozilla/gecko/GeckoAppShell;->EnumerateGeckoProcesses(Lorg/mozilla/gecko/GeckoAppShell$GeckoProcessesVisitor;)V

    return-void
.end method

.method private static lockScreenOrientation(I)V
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    invoke-static {}, Lorg/mozilla/gecko/GeckoScreenOrientation;->getInstance()Lorg/mozilla/gecko/GeckoScreenOrientation;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/mozilla/gecko/GeckoScreenOrientation;->lock(I)V

    return-void
.end method

.method private static moveTaskToBack()V
    .locals 0
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    return-void
.end method

.method public static native nativeAppendAppNotesToCrashReport(Ljava/lang/String;)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        dispatchTo = "gecko"
        stubName = "AppendAppNotesToCrashReport"
    .end annotation
.end method

.method private static native nativeNotifyObservers(Ljava/lang/String;Ljava/lang/String;)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        dispatchTo = "gecko"
        stubName = "NotifyObservers"
    .end annotation
.end method

.method private static native notifyAlertListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        dispatchTo = "gecko"
    .end annotation
.end method

.method public static notifyObservers(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/mozilla/gecko/annotation/RobocopTarget;
    .end annotation

    .line 1
    sget-object v0, Lorg/mozilla/gecko/GeckoThread$State;->RUNNING:Lorg/mozilla/gecko/GeckoThread$State;

    invoke-static {p0, p1, v0}, Lorg/mozilla/gecko/GeckoAppShell;->notifyObservers(Ljava/lang/String;Ljava/lang/String;Lorg/mozilla/gecko/GeckoThread$State;)V

    return-void
.end method

.method public static notifyObservers(Ljava/lang/String;Ljava/lang/String;Lorg/mozilla/gecko/GeckoThread$State;)V
    .locals 2

    .line 2
    invoke-static {p2}, Lorg/mozilla/gecko/GeckoThread;->isStateAtLeast(Lorg/mozilla/gecko/GeckoThread$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lorg/mozilla/gecko/GeckoAppShell;->nativeNotifyObservers(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "nativeNotifyObservers"

    const-class v1, Ljava/lang/String;

    filled-new-array {v1, p0, v1, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-class p1, Lorg/mozilla/gecko/GeckoAppShell;

    invoke-static {p2, p1, v0, p0}, Lorg/mozilla/gecko/GeckoThread;->queueNativeCallUntil(Lorg/mozilla/gecko/GeckoThread$State;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private static notifyWakeLockChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    const-string v0, "unlocked"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "locked-foreground"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "locked-background"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    :goto_0
    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getWakeLockDelegate()Lorg/mozilla/gecko/WakeLockDelegate;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/mozilla/gecko/WakeLockDelegate;->setWakeLockState(Ljava/lang/String;I)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static native onLocationChanged(DDDFFFFJ)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "any"
        dispatchTo = "gecko"
    .end annotation
.end method

.method public static onNotificationClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/GeckoThread;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "alertclickcallback"

    invoke-static {p0, v0, p1}, Lorg/mozilla/gecko/GeckoAppShell;->notifyAlertListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static onNotificationClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/GeckoThread;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "alertfinished"

    invoke-static {p0, v0, p1}, Lorg/mozilla/gecko/GeckoAppShell;->notifyAlertListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static onNotificationShow(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/GeckoThread;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "alertshow"

    invoke-static {p0, v0, p1}, Lorg/mozilla/gecko/GeckoAppShell;->notifyAlertListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static native onSensorChanged(IFFFFJ)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "ui"
        dispatchTo = "gecko"
    .end annotation
.end method

.method private static openUriExternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getGeckoInterface()Lorg/mozilla/gecko/GeckoAppShell$GeckoInterface;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lorg/mozilla/gecko/util/StrictModeContext;->allowAllVmPolicies()Lorg/mozilla/gecko/util/StrictModeContext;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    :try_start_0
    invoke-interface/range {v0 .. v6}, Lorg/mozilla/gecko/GeckoAppShell$GeckoInterface;->openUriExternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lorg/mozilla/gecko/util/StrictModeContext;->close()V

    :cond_1
    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz v7, :cond_2

    :try_start_2
    invoke-virtual {v7}, Lorg/mozilla/gecko/util/StrictModeContext;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p1
.end method

.method private static performHapticFeedback(Z)V
    .locals 4
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    sget-boolean v0, Lorg/mozilla/gecko/GeckoAppShell;->sVibrationMaybePlaying:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sget-wide v2, Lorg/mozilla/gecko/GeckoAppShell;->sVibrationEndTime:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    :cond_0
    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getHapticFeedbackDelegate()Lorg/mozilla/gecko/HapticFeedbackDelegate;

    move-result-object v0

    xor-int/lit8 p0, p0, 0x1

    invoke-interface {v0, p0}, Lorg/mozilla/gecko/HapticFeedbackDelegate;->performHapticFeedback(I)V

    const/4 p0, 0x0

    sput-boolean p0, Lorg/mozilla/gecko/GeckoAppShell;->sVibrationMaybePlaying:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lorg/mozilla/gecko/GeckoAppShell;->sVibrationEndTime:J

    :cond_1
    return-void
.end method

.method public static queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v2, v2, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static native reportJavaCrash(Ljava/lang/Throwable;Ljava/lang/String;)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end method

.method public static setApplicationContext(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lorg/mozilla/gecko/GeckoAppShell;->sApplicationContext:Landroid/content/Context;

    return-void
.end method

.method public static setCommunicationAudioModeOn(Z)V
    .locals 2
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "any"
    .end annotation

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V

    const/4 p0, 0x1

    :goto_0
    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    goto :goto_0

    :catch_0
    :goto_1
    return-void
.end method

.method public static declared-synchronized setCrashHandlerService(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Service;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lorg/mozilla/gecko/GeckoAppShell;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lorg/mozilla/gecko/GeckoAppShell;->sCrashHandlerService:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setDisplayDensityOverride(Ljava/lang/Float;)V
    .locals 2

    const-class v0, Lorg/mozilla/gecko/GeckoAppShell;

    monitor-enter v0

    if-nez p0, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_0
    sget-object v1, Lorg/mozilla/gecko/GeckoAppShell;->sDensity:Ljava/lang/Float;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    :try_start_1
    sput-object p0, Lorg/mozilla/gecko/GeckoAppShell;->sDensity:Ljava/lang/Float;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setDisplayDpiOverride(Ljava/lang/Integer;)V
    .locals 2

    const-class v0, Lorg/mozilla/gecko/GeckoAppShell;

    monitor-enter v0

    if-nez p0, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_0
    sget v1, Lorg/mozilla/gecko/GeckoAppShell;->sDensityDpi:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sput p0, Lorg/mozilla/gecko/GeckoAppShell;->sDensityDpi:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setGeckoInterface(Lorg/mozilla/gecko/GeckoAppShell$GeckoInterface;)V
    .locals 0

    sput-object p0, Lorg/mozilla/gecko/GeckoAppShell;->sGeckoInterface:Lorg/mozilla/gecko/GeckoAppShell$GeckoInterface;

    return-void
.end method

.method public static setHapticFeedbackDelegate(Lorg/mozilla/gecko/HapticFeedbackDelegate;)V
    .locals 0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/mozilla/gecko/GeckoAppShell;->DEFAULT_LISTENERS:Lorg/mozilla/gecko/GeckoAppShell$DefaultListeners;

    :goto_0
    sput-object p0, Lorg/mozilla/gecko/GeckoAppShell;->sHapticFeedbackDelegate:Lorg/mozilla/gecko/HapticFeedbackDelegate;

    return-void
.end method

.method public static setLocationListener(Landroid/location/LocationListener;)V
    .locals 0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/mozilla/gecko/GeckoAppShell;->DEFAULT_LISTENERS:Lorg/mozilla/gecko/GeckoAppShell$DefaultListeners;

    :goto_0
    sput-object p0, Lorg/mozilla/gecko/GeckoAppShell;->sLocationListener:Landroid/location/LocationListener;

    return-void
.end method

.method public static setNotificationListener(Lorg/mozilla/gecko/NotificationListener;)V
    .locals 0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/mozilla/gecko/GeckoAppShell;->DEFAULT_LISTENERS:Lorg/mozilla/gecko/GeckoAppShell$DefaultListeners;

    :goto_0
    sput-object p0, Lorg/mozilla/gecko/GeckoAppShell;->sNotificationListener:Lorg/mozilla/gecko/NotificationListener;

    return-void
.end method

.method public static setScreenOrientationDelegate(Lorg/mozilla/gecko/ScreenOrientationDelegate;)V
    .locals 0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/mozilla/gecko/GeckoAppShell;->DEFAULT_LISTENERS:Lorg/mozilla/gecko/GeckoAppShell$DefaultListeners;

    :goto_0
    sput-object p0, Lorg/mozilla/gecko/GeckoAppShell;->sScreenOrientationDelegate:Lorg/mozilla/gecko/ScreenOrientationDelegate;

    return-void
.end method

.method public static declared-synchronized setScreenSizeOverride(Landroid/graphics/Rect;)V
    .locals 1

    const-class v0, Lorg/mozilla/gecko/GeckoAppShell;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lorg/mozilla/gecko/GeckoAppShell;->sScreenSizeOverride:Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setSensorListener(Landroid/hardware/SensorEventListener;)V
    .locals 0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/mozilla/gecko/GeckoAppShell;->DEFAULT_LISTENERS:Lorg/mozilla/gecko/GeckoAppShell$DefaultListeners;

    :goto_0
    sput-object p0, Lorg/mozilla/gecko/GeckoAppShell;->sSensorListener:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method private static showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    if-nez p6, :cond_0

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getNotificationListener()Lorg/mozilla/gecko/NotificationListener;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lorg/mozilla/gecko/NotificationListener;->showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getNotificationListener()Lorg/mozilla/gecko/NotificationListener;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-interface/range {v1 .. v8}, Lorg/mozilla/gecko/NotificationListener;->showPersistentNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static unlockProfile()Z
    .locals 3
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->killAnyZombies()V

    invoke-static {}, Lorg/mozilla/gecko/GeckoThread;->getActiveProfile()Lorg/mozilla/gecko/GeckoProfile;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, ".parentlock"

    invoke-virtual {v0, v2}, Lorg/mozilla/gecko/GeckoProfile;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static unlockScreenOrientation()V
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    invoke-static {}, Lorg/mozilla/gecko/GeckoScreenOrientation;->getInstance()Lorg/mozilla/gecko/GeckoScreenOrientation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/gecko/GeckoScreenOrientation;->unlock()Z

    return-void
.end method

.method public static declared-synchronized useMaxScreenDepth(Z)V
    .locals 1

    const-class v0, Lorg/mozilla/gecko/GeckoAppShell;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lorg/mozilla/gecko/GeckoAppShell;->sUseMaxScreenDepth:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static vibrate(J)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, p0

    add-long/2addr v2, v0

    sput-wide v2, Lorg/mozilla/gecko/GeckoAppShell;->sVibrationEndTime:J

    const/4 v0, 0x1

    sput-boolean v0, Lorg/mozilla/gecko/GeckoAppShell;->sVibrationMaybePlaying:Z

    :try_start_0
    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->vibrator()Landroid/os/Vibrator;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static vibrate([JI)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    .line 2
    array-length v0, p0

    and-int/lit8 v0, v0, -0x2

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    aget-wide v4, p0, v3

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    const-wide/32 v5, 0xf4240

    mul-long/2addr v1, v5

    add-long/2addr v1, v3

    sput-wide v1, Lorg/mozilla/gecko/GeckoAppShell;->sVibrationEndTime:J

    const/4 v0, 0x1

    sput-boolean v0, Lorg/mozilla/gecko/GeckoAppShell;->sVibrationMaybePlaying:Z

    :try_start_0
    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->vibrator()Landroid/os/Vibrator;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/os/Vibrator;->vibrate([JI)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static vibrateOnHapticFeedbackEnabled([I)V
    .locals 3

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_1

    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    aget p0, p0, v2

    int-to-long v0, p0

    invoke-static {v0, v1}, Lorg/mozilla/gecko/GeckoAppShell;->vibrate(J)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/mozilla/gecko/GeckoAppShell;->convertIntToLongArray([I)[J

    move-result-object p0

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lorg/mozilla/gecko/GeckoAppShell;->vibrate([JI)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static vibrator()Landroid/os/Vibrator;
    .locals 2

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    return-object v0
.end method


# virtual methods
.method public setWakeLockDelegate(Lorg/mozilla/gecko/WakeLockDelegate;)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/mozilla/gecko/GeckoAppShell;->DEFAULT_LISTENERS:Lorg/mozilla/gecko/GeckoAppShell$DefaultListeners;

    :goto_0
    sput-object p1, Lorg/mozilla/gecko/GeckoAppShell;->sWakeLockDelegate:Lorg/mozilla/gecko/WakeLockDelegate;

    return-void
.end method
