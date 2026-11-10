.class public Lorg/mozilla/gecko/GeckoBatteryManager;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "GeckoBatteryManager"

.field private static final kDefaultCharging:Z = true

.field private static final kDefaultLevel:D = 1.0

.field private static final kDefaultRemainingTime:D = 0.0

.field private static final kUnknownRemainingTime:D = -1.0

.field private static sCharging:Z = true

.field private static final sInstance:Lorg/mozilla/gecko/GeckoBatteryManager;

.field private static sLastLevelChange:J = 0x0L

.field private static sLevel:D = 1.0

.field private static sNotificationsEnabled:Z

.field private static sRemainingTime:D


# instance fields
.field private mApplicationContext:Landroid/content/Context;

.field private final mFilter:Landroid/content/IntentFilter;

.field private mIsEnabled:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/mozilla/gecko/GeckoBatteryManager;

    invoke-direct {v0}, Lorg/mozilla/gecko/GeckoBatteryManager;-><init>()V

    sput-object v0, Lorg/mozilla/gecko/GeckoBatteryManager;->sInstance:Lorg/mozilla/gecko/GeckoBatteryManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lorg/mozilla/gecko/GeckoBatteryManager;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public static disableNotifications()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lorg/mozilla/gecko/GeckoBatteryManager;->sNotificationsEnabled:Z

    return-void
.end method

.method public static enableNotifications()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lorg/mozilla/gecko/GeckoBatteryManager;->sNotificationsEnabled:Z

    return-void
.end method

.method public static getCurrentInformation()[D
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [D

    const/4 v1, 0x0

    invoke-static {}, Lorg/mozilla/gecko/GeckoBatteryManager;->getLevel()D

    move-result-wide v2

    aput-wide v2, v0, v1

    invoke-static {}, Lorg/mozilla/gecko/GeckoBatteryManager;->isCharging()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    const/4 v3, 0x1

    aput-wide v1, v0, v3

    const/4 v1, 0x2

    invoke-static {}, Lorg/mozilla/gecko/GeckoBatteryManager;->getRemainingTime()D

    move-result-wide v2

    aput-wide v2, v0, v1

    return-object v0
.end method

.method public static getInstance()Lorg/mozilla/gecko/GeckoBatteryManager;
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/GeckoBatteryManager;->sInstance:Lorg/mozilla/gecko/GeckoBatteryManager;

    return-object v0
.end method

.method public static getLevel()D
    .locals 2

    sget-wide v0, Lorg/mozilla/gecko/GeckoBatteryManager;->sLevel:D

    return-wide v0
.end method

.method public static getRemainingTime()D
    .locals 2

    sget-wide v0, Lorg/mozilla/gecko/GeckoBatteryManager;->sRemainingTime:D

    return-wide v0
.end method

.method public static isCharging()Z
    .locals 1

    sget-boolean v0, Lorg/mozilla/gecko/GeckoBatteryManager;->sCharging:Z

    return v0
.end method

.method private static native onBatteryChange(DZD)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "ui"
        dispatchTo = "gecko"
    .end annotation
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18

    move-object/from16 v0, p2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/mozilla/gecko/GeckoBatteryManager;->isCharging()Z

    move-result v1

    invoke-static {}, Lorg/mozilla/gecko/GeckoBatteryManager;->getLevel()D

    move-result-wide v2

    const-string v4, "present"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    if-nez v4, :cond_2

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v11, "Galaxy Nexus"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    sput-wide v9, Lorg/mozilla/gecko/GeckoBatteryManager;->sLevel:D

    sput-boolean v6, Lorg/mozilla/gecko/GeckoBatteryManager;->sCharging:Z

    :goto_0
    sput-wide v7, Lorg/mozilla/gecko/GeckoBatteryManager;->sRemainingTime:D

    goto/16 :goto_8

    :cond_2
    :goto_1
    const-string v4, "plugged"

    const/4 v11, -0x1

    invoke-virtual {v0, v4, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v11, :cond_3

    sput-boolean v6, Lorg/mozilla/gecko/GeckoBatteryManager;->sCharging:Z

    goto :goto_2

    :cond_3
    if-eqz v4, :cond_4

    move v5, v6

    :cond_4
    sput-boolean v5, Lorg/mozilla/gecko/GeckoBatteryManager;->sCharging:Z

    :goto_2
    sget-boolean v4, Lorg/mozilla/gecko/GeckoBatteryManager;->sCharging:Z

    const-wide/16 v5, 0x0

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    if-eq v4, v1, :cond_5

    sput-wide v12, Lorg/mozilla/gecko/GeckoBatteryManager;->sRemainingTime:D

    sput-wide v5, Lorg/mozilla/gecko/GeckoBatteryManager;->sLastLevelChange:J

    :cond_5
    const-string v4, "level"

    invoke-virtual {v0, v4, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    int-to-double v14, v4

    const-string v4, "scale"

    invoke-virtual {v0, v4, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    int-to-double v5, v0

    cmpl-double v0, v14, v12

    if-eqz v0, :cond_7

    cmpl-double v0, v5, v12

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    div-double/2addr v14, v5

    sput-wide v14, Lorg/mozilla/gecko/GeckoBatteryManager;->sLevel:D

    goto :goto_4

    :cond_7
    :goto_3
    sput-wide v9, Lorg/mozilla/gecko/GeckoBatteryManager;->sLevel:D

    :goto_4
    sget-wide v4, Lorg/mozilla/gecko/GeckoBatteryManager;->sLevel:D

    cmpl-double v0, v4, v9

    if-nez v0, :cond_8

    sget-boolean v0, Lorg/mozilla/gecko/GeckoBatteryManager;->sCharging:Z

    if-eqz v0, :cond_8

    goto :goto_0

    :cond_8
    cmpl-double v0, v4, v2

    if-eqz v0, :cond_d

    sget-wide v4, Lorg/mozilla/gecko/GeckoBatteryManager;->sLastLevelChange:J

    const-wide/16 v14, 0x0

    cmp-long v0, v4, v14

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    if-eqz v0, :cond_c

    sget-wide v14, Lorg/mozilla/gecko/GeckoBatteryManager;->sLastLevelChange:J

    sub-long v14, v4, v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    sget-wide v16, Lorg/mozilla/gecko/GeckoBatteryManager;->sLevel:D

    sub-double v9, v16, v2

    sget-boolean v0, Lorg/mozilla/gecko/GeckoBatteryManager;->sCharging:Z

    if-eqz v0, :cond_a

    cmpg-double v0, v9, v7

    if-gez v0, :cond_9

    goto :goto_5

    :cond_9
    long-to-double v6, v14

    div-double/2addr v6, v9

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double v9, v8, v16

    mul-double/2addr v9, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    goto :goto_6

    :cond_a
    cmpl-double v0, v9, v7

    if-lez v0, :cond_b

    :goto_5
    sput-wide v12, Lorg/mozilla/gecko/GeckoBatteryManager;->sRemainingTime:D

    goto :goto_7

    :cond_b
    long-to-double v6, v14

    neg-double v8, v9

    div-double/2addr v6, v8

    mul-double v6, v6, v16

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    :goto_6
    long-to-double v6, v6

    sput-wide v6, Lorg/mozilla/gecko/GeckoBatteryManager;->sRemainingTime:D

    :cond_c
    :goto_7
    sput-wide v4, Lorg/mozilla/gecko/GeckoBatteryManager;->sLastLevelChange:J

    :cond_d
    :goto_8
    sget-boolean v0, Lorg/mozilla/gecko/GeckoBatteryManager;->sNotificationsEnabled:Z

    if-eqz v0, :cond_f

    invoke-static {}, Lorg/mozilla/gecko/GeckoBatteryManager;->isCharging()Z

    move-result v0

    if-ne v1, v0, :cond_e

    invoke-static {}, Lorg/mozilla/gecko/GeckoBatteryManager;->getLevel()D

    move-result-wide v0

    cmpl-double v0, v2, v0

    if-eqz v0, :cond_f

    :cond_e
    invoke-static {}, Lorg/mozilla/gecko/GeckoBatteryManager;->getLevel()D

    move-result-wide v0

    invoke-static {}, Lorg/mozilla/gecko/GeckoBatteryManager;->isCharging()Z

    move-result v2

    invoke-static {}, Lorg/mozilla/gecko/GeckoBatteryManager;->getRemainingTime()D

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lorg/mozilla/gecko/GeckoBatteryManager;->onBatteryChange(DZD)V

    :cond_f
    return-void
.end method

.method public declared-synchronized start(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/mozilla/gecko/GeckoBatteryManager;->mIsEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/gecko/GeckoBatteryManager;->mApplicationContext:Landroid/content/Context;

    iget-object v0, p0, Lorg/mozilla/gecko/GeckoBatteryManager;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/mozilla/gecko/GeckoBatteryManager;->mIsEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stop()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/mozilla/gecko/GeckoBatteryManager;->mIsEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/mozilla/gecko/GeckoBatteryManager;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/gecko/GeckoBatteryManager;->mApplicationContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/gecko/GeckoBatteryManager;->mIsEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
