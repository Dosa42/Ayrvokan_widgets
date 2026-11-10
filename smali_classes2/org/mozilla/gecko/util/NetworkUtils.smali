.class public Lorg/mozilla/gecko/util/NetworkUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;,
        Lorg/mozilla/gecko/util/NetworkUtils$NetworkStatus;,
        Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConnectionSubType(Landroid/net/ConnectivityManager;)Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;->UNKNOWN:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-nez p0, :cond_1

    sget-object p0, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;->UNKNOWN:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 p0, 0x1

    if-eq v0, p0, :cond_4

    const/4 p0, 0x6

    if-eq v0, p0, :cond_3

    const/16 p0, 0x9

    if-eq v0, p0, :cond_2

    sget-object p0, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;->UNKNOWN:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;

    return-object p0

    :cond_2
    sget-object p0, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;->ETHERNET:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;

    return-object p0

    :cond_3
    sget-object p0, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;->WIMAX:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;

    return-object p0

    :cond_4
    sget-object p0, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;->WIFI:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;

    return-object p0

    :cond_5
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    invoke-static {p0}, Lorg/mozilla/gecko/util/NetworkUtils;->getGenericMobileSubtype(I)Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;

    move-result-object p0

    return-object p0
.end method

.method public static getConnectionType(Landroid/net/ConnectivityManager;)Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;->NONE:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-nez p0, :cond_1

    sget-object p0, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;->NONE:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x6

    if-eq p0, v0, :cond_5

    const/4 v0, 0x7

    if-eq p0, v0, :cond_3

    const/16 v0, 0x9

    if-eq p0, v0, :cond_2

    sget-object p0, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;->OTHER:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;

    return-object p0

    :cond_2
    sget-object p0, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;->ETHERNET:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;

    return-object p0

    :cond_3
    sget-object p0, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;->BLUETOOTH:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;

    return-object p0

    :cond_4
    sget-object p0, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;->WIFI:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;

    return-object p0

    :cond_5
    sget-object p0, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;->CELLULAR:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;

    return-object p0
.end method

.method private static getGenericMobileSubtype(I)Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;
    .locals 0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;->UNKNOWN:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;

    return-object p0

    :pswitch_0
    sget-object p0, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;->CELL_4G:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;

    return-object p0

    :pswitch_1
    sget-object p0, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;->CELL_3G:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;

    return-object p0

    :pswitch_2
    sget-object p0, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;->CELL_2G:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionSubType;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getNetworkStatus(Landroid/net/ConnectivityManager;)Lorg/mozilla/gecko/util/NetworkUtils$NetworkStatus;
    .locals 0

    if-nez p0, :cond_0

    sget-object p0, Lorg/mozilla/gecko/util/NetworkUtils$NetworkStatus;->UNKNOWN:Lorg/mozilla/gecko/util/NetworkUtils$NetworkStatus;

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/mozilla/gecko/util/NetworkUtils;->isConnected(Landroid/net/ConnectivityManager;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lorg/mozilla/gecko/util/NetworkUtils$NetworkStatus;->UP:Lorg/mozilla/gecko/util/NetworkUtils$NetworkStatus;

    return-object p0

    :cond_1
    sget-object p0, Lorg/mozilla/gecko/util/NetworkUtils$NetworkStatus;->DOWN:Lorg/mozilla/gecko/util/NetworkUtils$NetworkStatus;

    return-object p0
.end method

.method public static isConnected(Landroid/content/Context;)Z
    .locals 1

    .line 1
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-static {p0}, Lorg/mozilla/gecko/util/NetworkUtils;->isConnected(Landroid/net/ConnectivityManager;)Z

    move-result p0

    return p0
.end method

.method public static isConnected(Landroid/net/ConnectivityManager;)Z
    .locals 1

    .line 2
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isWifi(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-static {p0}, Lorg/mozilla/gecko/util/NetworkUtils;->getConnectionType(Landroid/net/ConnectivityManager;)Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;

    move-result-object p0

    sget-object v0, Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;->WIFI:Lorg/mozilla/gecko/util/NetworkUtils$ConnectionType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
