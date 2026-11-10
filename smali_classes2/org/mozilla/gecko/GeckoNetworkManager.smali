.class public Lorg/mozilla/gecko/GeckoNetworkManager;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/gecko/util/BundleEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/gecko/GeckoNetworkManager$InfoType;,
        Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;,
        Lorg/mozilla/gecko/GeckoNetworkManager$ManagerState;
    }
.end annotation


# static fields
.field private static final LINK_DATA_CHANGED:Ljava/lang/String; = "changed"

.field private static final LOGTAG:Ljava/lang/String; = "GeckoNetworkManager"

.field private static instance:Lorg/mozilla/gecko/GeckoNetworkManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentConnectionSubtype:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;

.field private mCurrentConnectionType:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;

.field private mCurrentNetworkStatus:Lorg/mozilla/gecko/util/NetworkUtils$NetworkStatus;

.field private mCurrentState:Lorg/mozilla/gecko/GeckoNetworkManager$ManagerState;

.field private mPreviousConnectionSubtype:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;

.field private mPreviousConnectionType:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;

.field private mPreviousNetworkStatus:Lorg/mozilla/gecko/util/NetworkUtils$NetworkStatus;


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    sget-object v0, Lorg/mozilla/gecko/GeckoNetworkManager$ManagerState;->OffNoListeners:Lorg/mozilla/gecko/GeckoNetworkManager$ManagerState;

    iput-object v0, p0, Lorg/mozilla/gecko/GeckoNetworkManager;->mCurrentState:Lorg/mozilla/gecko/GeckoNetworkManager$ManagerState;

    sget-object v0, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;->NONE:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;

    iput-object v0, p0, Lorg/mozilla/gecko/GeckoNetworkManager;->mCurrentConnectionType:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;

    iput-object v0, p0, Lorg/mozilla/gecko/GeckoNetworkManager;->mPreviousConnectionType:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;

    sget-object v0, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;->UNKNOWN:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;

    iput-object v0, p0, Lorg/mozilla/gecko/GeckoNetworkManager;->mCurrentConnectionSubtype:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;

    iput-object v0, p0, Lorg/mozilla/gecko/GeckoNetworkManager;->mPreviousConnectionSubtype:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;

    sget-object v0, Lorg/mozilla/gecko/util/NetworkUtils$NetworkStatus;->UNKNOWN:Lorg/mozilla/gecko/util/NetworkUtils$NetworkStatus;

    iput-object v0, p0, Lorg/mozilla/gecko/GeckoNetworkManager;->mCurrentNetworkStatus:Lorg/mozilla/gecko/util/NetworkUtils$NetworkStatus;

    iput-object v0, p0, Lorg/mozilla/gecko/GeckoNetworkManager;->mPreviousNetworkStatus:Lorg/mozilla/gecko/util/NetworkUtils$NetworkStatus;

    invoke-static {}, Lorg/mozilla/gecko/EventDispatcher;->getInstance()Lorg/mozilla/gecko/EventDispatcher;

    move-result-object v0

    const-string v1, "Wifi:Enable"

    const-string v2, "Wifi:GetIPAddress"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/mozilla/gecko/EventDispatcher;->registerUiThreadListener(Lorg/mozilla/gecko/util/BundleEventListener;[Ljava/lang/String;)V

    return-void
.end method

.method public static destroy()V
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/GeckoNetworkManager;->instance:Lorg/mozilla/gecko/GeckoNetworkManager;

    if-eqz v0, :cond_0

    invoke-direct {v0}, Lorg/mozilla/gecko/GeckoNetworkManager;->onDestroy()V

    const/4 v0, 0x0

    sput-object v0, Lorg/mozilla/gecko/GeckoNetworkManager;->instance:Lorg/mozilla/gecko/GeckoNetworkManager;

    :cond_0
    return-void
.end method

.method public static getInstance()Lorg/mozilla/gecko/GeckoNetworkManager;
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/GeckoNetworkManager;->instance:Lorg/mozilla/gecko/GeckoNetworkManager;

    if-nez v0, :cond_0

    new-instance v0, Lorg/mozilla/gecko/GeckoNetworkManager;

    invoke-direct {v0}, Lorg/mozilla/gecko/GeckoNetworkManager;-><init>()V

    sput-object v0, Lorg/mozilla/gecko/GeckoNetworkManager;->instance:Lorg/mozilla/gecko/GeckoNetworkManager;

    :cond_0
    sget-object v0, Lorg/mozilla/gecko/GeckoNetworkManager;->instance:Lorg/mozilla/gecko/GeckoNetworkManager;

    return-object v0
.end method

.method public static getMCC()I
    .locals 2
    .annotation build Lorg/mozilla/gecko/annotation/JNITarget;
    .end annotation

    sget-object v0, Lorg/mozilla/gecko/GeckoNetworkManager$InfoType;->MCC:Lorg/mozilla/gecko/GeckoNetworkManager$InfoType;

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/mozilla/gecko/GeckoNetworkManager;->getNetworkOperator(Lorg/mozilla/gecko/GeckoNetworkManager$InfoType;Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static getMNC()I
    .locals 2
    .annotation build Lorg/mozilla/gecko/annotation/JNITarget;
    .end annotation

    sget-object v0, Lorg/mozilla/gecko/GeckoNetworkManager$InfoType;->MNC:Lorg/mozilla/gecko/GeckoNetworkManager$InfoType;

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/mozilla/gecko/GeckoNetworkManager;->getNetworkOperator(Lorg/mozilla/gecko/GeckoNetworkManager$InfoType;Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method private static getNetworkOperator(Lorg/mozilla/gecko/GeckoNetworkManager$InfoType;Landroid/content/Context;)I
    .locals 3

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_2

    goto :goto_1

    :cond_2
    sget-object v1, Lorg/mozilla/gecko/GeckoNetworkManager$InfoType;->MNC:Lorg/mozilla/gecko/GeckoNetworkManager$InfoType;

    if-ne p0, v1, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_3
    sget-object v1, Lorg/mozilla/gecko/GeckoNetworkManager$InfoType;->MCC:Lorg/mozilla/gecko/GeckoNetworkManager$InfoType;

    if-ne p0, v1, :cond_4

    const/4 p0, 0x0

    invoke-virtual {p1, p0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    :goto_1
    return v0
.end method

.method public static getNextState(Lorg/mozilla/gecko/GeckoNetworkManager$ManagerState;Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;)Lorg/mozilla/gecko/GeckoNetworkManager$ManagerState;
    .locals 6

    sget-object v0, Lorg/mozilla/gecko/GeckoNetworkManager$1;->$SwitchMap$org$mozilla$gecko$GeckoNetworkManager$ManagerState:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_b

    const/4 v4, 0x4

    const/4 v5, 0x3

    if-eq v0, v1, :cond_7

    const/4 v1, 0x5

    if-eq v0, v5, :cond_3

    if-ne v0, v4, :cond_2

    sget-object p0, Lorg/mozilla/gecko/GeckoNetworkManager$1;->$SwitchMap$org$mozilla$gecko$GeckoNetworkManager$ManagerEvent:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_0

    return-object v3

    :cond_0
    sget-object p0, Lorg/mozilla/gecko/GeckoNetworkManager$ManagerState;->OffNoListeners:Lorg/mozilla/gecko/GeckoNetworkManager$ManagerState;

    return-object p0

    :cond_1
    sget-object p0, Lorg/mozilla/gecko/GeckoNetworkManager$ManagerState;->OnWithListeners:Lorg/mozilla/gecko/GeckoNetworkManager$ManagerState;

    return-object p0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown current state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    sget-object p0, Lorg/mozilla/gecko/GeckoNetworkManager$1;->$SwitchMap$org$mozilla$gecko$GeckoNetworkManager$ManagerEvent:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    if-eq p0, v5, :cond_6

    if-eq p0, v4, :cond_5

    if-eq p0, v1, :cond_4

    return-object v3

    :cond_4
    sget-object p0, Lorg/mozilla/gecko/GeckoNetworkManager$ManagerState;->OnNoListeners:Lorg/mozilla/gecko/GeckoNetworkManager$ManagerState;

    return-object p0

    :cond_5
    sget-object p0, Lorg/mozilla/gecko/GeckoNetworkManager$ManagerState;->OnWithListeners:Lorg/mozilla/gecko/GeckoNetworkManager$ManagerState;

    return-object p0

    :cond_6
    sget-object p0, Lorg/mozilla/gecko/GeckoNetworkManager$ManagerState;->OffWithListeners:Lorg/mozilla/gecko/GeckoNetworkManager$ManagerState;

    return-object p0

    :cond_7
    sget-object p0, Lorg/mozilla/gecko/GeckoNetworkManager$1;->$SwitchMap$org$mozilla$gecko$GeckoNetworkManager$ManagerEvent:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    if-eq p0, v1, :cond_a

    if-eq p0, v5, :cond_9

    if-eq p0, v4, :cond_8

    return-object v3

    :cond_8
    sget-object p0, Lorg/mozilla/gecko/GeckoNetworkManager$ManagerState;->OnNoListeners:Lorg/mozilla/gecko/GeckoNetworkManager$ManagerState;

    return-object p0

    :cond_9
    sget-object p0, Lorg/mozilla/gecko/GeckoNetworkManager$ManagerState;->OffNoListeners:Lorg/mozilla/gecko/GeckoNetworkManager$ManagerState;

    return-object p0

    :cond_a
    sget-object p0, Lorg/mozilla/gecko/GeckoNetworkManager$ManagerState;->OnWithListeners:Lorg/mozilla/gecko/GeckoNetworkManager$ManagerState;

    return-object p0

    :cond_b
    sget-object p0, Lorg/mozilla/gecko/GeckoNetworkManager$1;->$SwitchMap$org$mozilla$gecko$GeckoNetworkManager$ManagerEvent:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    if-eq p0, v2, :cond_d

    if-eq p0, v1, :cond_c

    return-object v3

    :cond_c
    sget-object p0, Lorg/mozilla/gecko/GeckoNetworkManager$ManagerState;->OffWithListeners:Lorg/mozilla/gecko/GeckoNetworkManager$ManagerState;

    return-object p0

    :cond_d
    sget-object p0, Lorg/mozilla/gecko/GeckoNetworkManager$ManagerState;->OnNoListeners:Lorg/mozilla/gecko/GeckoNetworkManager$ManagerState;

    return-object p0
.end method

.method private getWifiIPAddress(Lorg/mozilla/gecko/util/EventCallback;)V
    .locals 2

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    const-string v0, "Cannot get WifiManager"

    invoke-interface {p1, v0}, Lorg/mozilla/gecko/util/EventCallback;->sendError(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "Cannot get connection info"

    invoke-interface {p1, v0}, Lorg/mozilla/gecko/util/EventCallback;->sendError(Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Cannot get IPv4 address"

    invoke-interface {p1, v0}, Lorg/mozilla/gecko/util/EventCallback;->sendError(Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-static {v0}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/mozilla/gecko/util/EventCallback;->sendSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method private declared-synchronized handleManagerEvent(Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/GeckoNetworkManager;->mCurrentState:Lorg/mozilla/gecko/GeckoNetworkManager$ManagerState;

    invoke-static {v0, p1}, Lorg/mozilla/gecko/GeckoNetworkManager;->getNextState(Lorg/mozilla/gecko/GeckoNetworkManager$ManagerState;Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;)Lorg/mozilla/gecko/GeckoNetworkManager$ManagerState;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-object v1, p0, Lorg/mozilla/gecko/GeckoNetworkManager;->mCurrentState:Lorg/mozilla/gecko/GeckoNetworkManager$ManagerState;

    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-object p1, p0, Lorg/mozilla/gecko/GeckoNetworkManager;->mCurrentState:Lorg/mozilla/gecko/GeckoNetworkManager$ManagerState;

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/mozilla/gecko/GeckoNetworkManager;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_2

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-object p1, p0, Lorg/mozilla/gecko/GeckoNetworkManager;->mCurrentState:Lorg/mozilla/gecko/GeckoNetworkManager$ManagerState;

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    :cond_2
    :try_start_2
    iget-object v1, p0, Lorg/mozilla/gecko/GeckoNetworkManager;->mCurrentState:Lorg/mozilla/gecko/GeckoNetworkManager$ManagerState;

    invoke-direct {p0, v2, v1, p1}, Lorg/mozilla/gecko/GeckoNetworkManager;->performActionsForStateEvent(Landroid/content/Context;Lorg/mozilla/gecko/GeckoNetworkManager$ManagerState;Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;)V

    iput-object v0, p0, Lorg/mozilla/gecko/GeckoNetworkManager;->mCurrentState:Lorg/mozilla/gecko/GeckoNetworkManager$ManagerState;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static native onConnectionChanged(ILjava/lang/String;ZI)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        dispatchTo = "gecko"
    .end annotation
.end method

.method private onDestroy()V
    .locals 3

    sget-object v0, Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;->stop:Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;

    invoke-direct {p0, v0}, Lorg/mozilla/gecko/GeckoNetworkManager;->handleManagerEvent(Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;)Z

    invoke-static {}, Lorg/mozilla/gecko/EventDispatcher;->getInstance()Lorg/mozilla/gecko/EventDispatcher;

    move-result-object v0

    const-string v1, "Wifi:Enable"

    const-string v2, "Wifi:GetIPAddress"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/mozilla/gecko/EventDispatcher;->unregisterUiThreadListener(Lorg/mozilla/gecko/util/BundleEventListener;[Ljava/lang/String;)V

    return-void
.end method

.method private static native onStatusChanged(Ljava/lang/String;)V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        dispatchTo = "gecko"
    .end annotation
.end method

.method private performActionsForStateEvent(Landroid/content/Context;Lorg/mozilla/gecko/GeckoNetworkManager$ManagerState;Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;)V
    .locals 2

    sget-object v0, Lorg/mozilla/gecko/GeckoNetworkManager$1;->$SwitchMap$org$mozilla$gecko$GeckoNetworkManager$ManagerState:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    sget-object p2, Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;->start:Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;

    if-ne p3, p2, :cond_8

    invoke-static {p1, p0}, Lorg/mozilla/gecko/GeckoNetworkManager;->registerBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Unknown current state: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    sget-object p2, Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;->receivedUpdate:Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;

    if-ne p3, p2, :cond_2

    invoke-direct {p0, p1}, Lorg/mozilla/gecko/GeckoNetworkManager;->updateNetworkStateAndConnectionType(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lorg/mozilla/gecko/GeckoNetworkManager;->sendNetworkStateToListeners(Landroid/content/Context;)V

    :cond_2
    sget-object p2, Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;->stop:Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;

    if-ne p3, p2, :cond_8

    :goto_0
    invoke-static {p1, p0}, Lorg/mozilla/gecko/GeckoNetworkManager;->unregisterBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    goto :goto_1

    :cond_3
    sget-object p2, Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;->receivedUpdate:Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;

    if-ne p3, p2, :cond_4

    invoke-direct {p0, p1}, Lorg/mozilla/gecko/GeckoNetworkManager;->updateNetworkStateAndConnectionType(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lorg/mozilla/gecko/GeckoNetworkManager;->sendNetworkStateToListeners(Landroid/content/Context;)V

    :cond_4
    sget-object p2, Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;->enableNotifications:Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;

    if-ne p3, p2, :cond_5

    invoke-direct {p0, p1}, Lorg/mozilla/gecko/GeckoNetworkManager;->updateNetworkStateAndConnectionType(Landroid/content/Context;)V

    invoke-static {p1, p0}, Lorg/mozilla/gecko/GeckoNetworkManager;->registerBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    :cond_5
    sget-object p2, Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;->stop:Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;

    if-ne p3, p2, :cond_8

    goto :goto_0

    :cond_6
    sget-object p2, Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;->start:Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;

    if-ne p3, p2, :cond_7

    invoke-direct {p0, p1}, Lorg/mozilla/gecko/GeckoNetworkManager;->updateNetworkStateAndConnectionType(Landroid/content/Context;)V

    invoke-static {p1, p0}, Lorg/mozilla/gecko/GeckoNetworkManager;->registerBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    :cond_7
    sget-object p2, Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;->enableNotifications:Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;

    if-ne p3, p2, :cond_8

    invoke-direct {p0, p1}, Lorg/mozilla/gecko/GeckoNetworkManager;->updateNetworkStateAndConnectionType(Landroid/content/Context;)V

    :cond_8
    :goto_1
    return-void
.end method

.method private static registerBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private sendNetworkStateToListeners(Landroid/content/Context;)V
    .locals 7

    iget-object v0, p0, Lorg/mozilla/gecko/GeckoNetworkManager;->mCurrentConnectionType:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;

    iget-object v1, p0, Lorg/mozilla/gecko/GeckoNetworkManager;->mPreviousConnectionType:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lorg/mozilla/gecko/GeckoNetworkManager;->mCurrentConnectionSubtype:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;

    iget-object v4, p0, Lorg/mozilla/gecko/GeckoNetworkManager;->mPreviousConnectionSubtype:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;

    if-eq v1, v4, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    const-class v4, Ljava/lang/String;

    const-class v5, Lorg/mozilla/gecko/GeckoNetworkManager;

    if-eqz v1, :cond_5

    iput-object v0, p0, Lorg/mozilla/gecko/GeckoNetworkManager;->mPreviousConnectionType:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;

    iget-object v6, p0, Lorg/mozilla/gecko/GeckoNetworkManager;->mCurrentConnectionSubtype:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;

    iput-object v6, p0, Lorg/mozilla/gecko/GeckoNetworkManager;->mPreviousConnectionSubtype:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;

    sget-object v6, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;->WIFI:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;

    if-ne v0, v6, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {p1}, Lorg/mozilla/gecko/GeckoNetworkManager;->wifiDhcpGatewayAddress(Landroid/content/Context;)I

    move-result v3

    :goto_3
    invoke-static {}, Lorg/mozilla/gecko/GeckoThread;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/mozilla/gecko/GeckoNetworkManager;->mCurrentConnectionType:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;

    iget p1, p1, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;->value:I

    iget-object v0, p0, Lorg/mozilla/gecko/GeckoNetworkManager;->mCurrentConnectionSubtype:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;

    iget-object v0, v0, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;->value:Ljava/lang/String;

    invoke-static {p1, v0, v2, v3}, Lorg/mozilla/gecko/GeckoNetworkManager;->onConnectionChanged(ILjava/lang/String;ZI)V

    goto :goto_4

    :cond_4
    iget-object p1, p0, Lorg/mozilla/gecko/GeckoNetworkManager;->mCurrentConnectionType:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;

    iget p1, p1, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;->value:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v0, p0, Lorg/mozilla/gecko/GeckoNetworkManager;->mCurrentConnectionSubtype:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;

    iget-object v0, v0, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {p1, v4, v0, v2, v3}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "onConnectionChanged"

    invoke-static {v5, v0, p1}, Lorg/mozilla/gecko/GeckoThread;->queueNativeCall(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    :goto_4
    iget-object p1, p0, Lorg/mozilla/gecko/GeckoNetworkManager;->mCurrentNetworkStatus:Lorg/mozilla/gecko/util/NetworkUtils$NetworkStatus;

    iget-object v0, p0, Lorg/mozilla/gecko/GeckoNetworkManager;->mPreviousNetworkStatus:Lorg/mozilla/gecko/util/NetworkUtils$NetworkStatus;

    if-ne p1, v0, :cond_6

    if-nez v1, :cond_6

    return-void

    :cond_6
    if-ne p1, v0, :cond_7

    const-string p1, "changed"

    goto :goto_5

    :cond_7
    iput-object p1, p0, Lorg/mozilla/gecko/GeckoNetworkManager;->mPreviousNetworkStatus:Lorg/mozilla/gecko/util/NetworkUtils$NetworkStatus;

    iget-object p1, p1, Lorg/mozilla/gecko/util/NetworkUtils$NetworkStatus;->value:Ljava/lang/String;

    :goto_5
    invoke-static {}, Lorg/mozilla/gecko/GeckoThread;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p1}, Lorg/mozilla/gecko/GeckoNetworkManager;->onStatusChanged(Ljava/lang/String;)V

    goto :goto_6

    :cond_8
    const-string v0, "onStatusChanged"

    filled-new-array {v4, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v5, v0, p1}, Lorg/mozilla/gecko/GeckoThread;->queueNativeCall(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_6
    return-void
.end method

.method private static unregisterBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private updateNetworkStateAndConnectionType(Landroid/content/Context;)V
    .locals 1

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    invoke-static {p1}, Lorg/mozilla/gecko/util/NetworkUtils;->getConnectionType(Landroid/net/ConnectivityManager;)Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/gecko/GeckoNetworkManager;->mCurrentConnectionType:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;

    invoke-static {p1}, Lorg/mozilla/gecko/util/NetworkUtils;->getNetworkStatus(Landroid/net/ConnectivityManager;)Lorg/mozilla/gecko/util/NetworkUtils$NetworkStatus;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/gecko/GeckoNetworkManager;->mCurrentNetworkStatus:Lorg/mozilla/gecko/util/NetworkUtils$NetworkStatus;

    invoke-static {p1}, Lorg/mozilla/gecko/util/NetworkUtils;->getConnectionSubType(Landroid/net/ConnectivityManager;)Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/gecko/GeckoNetworkManager;->mCurrentConnectionSubtype:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;

    iget-object p1, p0, Lorg/mozilla/gecko/GeckoNetworkManager;->mCurrentNetworkStatus:Lorg/mozilla/gecko/util/NetworkUtils$NetworkStatus;

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-object p1, p0, Lorg/mozilla/gecko/GeckoNetworkManager;->mCurrentConnectionType:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-object p1, p0, Lorg/mozilla/gecko/GeckoNetworkManager;->mCurrentConnectionSubtype:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    return-void
.end method

.method private static wifiDhcpGatewayAddress(Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    iget p0, p0, Landroid/net/DhcpInfo;->gateway:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method


# virtual methods
.method public disableNotifications()V
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;->disableNotifications:Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;

    invoke-direct {p0, v0}, Lorg/mozilla/gecko/GeckoNetworkManager;->handleManagerEvent(Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;)Z

    return-void
.end method

.method public enableNotifications()V
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;->enableNotifications:Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;

    invoke-direct {p0, v0}, Lorg/mozilla/gecko/GeckoNetworkManager;->handleManagerEvent(Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;)Z

    return-void
.end method

.method public getCurrentInformation()[D
    .locals 9

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/gecko/GeckoNetworkManager;->mCurrentConnectionType:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;

    const/4 v2, 0x3

    new-array v2, v2, [D

    iget v3, v1, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;->value:I

    int-to-double v3, v3

    const/4 v5, 0x0

    aput-wide v3, v2, v5

    sget-object v3, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;->WIFI:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;

    const-wide/16 v4, 0x0

    if-ne v1, v3, :cond_0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_0
    move-wide v6, v4

    :goto_0
    const/4 v8, 0x1

    aput-wide v6, v2, v8

    if-ne v1, v3, :cond_1

    invoke-static {v0}, Lorg/mozilla/gecko/GeckoNetworkManager;->wifiDhcpGatewayAddress(Landroid/content/Context;)I

    move-result v0

    int-to-double v4, v0

    :cond_1
    const/4 v0, 0x2

    aput-wide v4, v2, v0

    return-object v2
.end method

.method public handleMessage(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "Wifi:GetIPAddress"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string p3, "Wifi:Enable"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "wifi"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p3

    if-nez p3, :cond_2

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_0

    :cond_2
    new-instance p1, Landroid/content/Intent;

    const-string p3, "android.settings.WIFI_SETTINGS"

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p3, 0x10000000

    invoke-virtual {p1, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p3}, Lorg/mozilla/gecko/GeckoNetworkManager;->getWifiIPAddress(Lorg/mozilla/gecko/util/EventCallback;)V

    :goto_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    sget-object p1, Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;->receivedUpdate:Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;

    invoke-direct {p0, p1}, Lorg/mozilla/gecko/GeckoNetworkManager;->handleManagerEvent(Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;)Z

    return-void
.end method

.method public start(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/gecko/GeckoNetworkManager;->mContext:Landroid/content/Context;

    sget-object p1, Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;->start:Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;

    invoke-direct {p0, p1}, Lorg/mozilla/gecko/GeckoNetworkManager;->handleManagerEvent(Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;)Z

    return-void
.end method

.method public stop()V
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;->stop:Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;

    invoke-direct {p0, v0}, Lorg/mozilla/gecko/GeckoNetworkManager;->handleManagerEvent(Lorg/mozilla/gecko/GeckoNetworkManager$ManagerEvent;)Z

    return-void
.end method
