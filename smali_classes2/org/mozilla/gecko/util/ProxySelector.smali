.class public Lorg/mozilla/gecko/util/ProxySelector;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getSystemPropertyInt(Ljava/lang/String;I)I
    .locals 0

    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_0
    return p2
.end method

.method private isNonProxyHost(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_3

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_2

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    const-string v2, "\\."

    goto :goto_1

    :cond_2
    const-string v2, ".*"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_4
    :goto_3
    return v0
.end method

.method private lookupProxy(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy$Type;I)Ljava/net/Proxy;
    .locals 2

    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0, p2, p4}, Lorg/mozilla/gecko/util/ProxySelector;->getSystemPropertyInt(Ljava/lang/String;I)I

    move-result p2

    const/4 p4, -0x1

    if-ne p2, p4, :cond_1

    return-object v1

    :cond_1
    new-instance p4, Ljava/net/Proxy;

    invoke-static {p1, p2}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object p1

    invoke-direct {p4, p3, p1}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    return-object p4
.end method

.method public static openConnectionWithProxy(Ljava/net/URI;)Ljava/net/URLConnection;
    .locals 3

    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/net/Proxy;

    :cond_0
    invoke-virtual {p0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public select(Ljava/lang/String;Ljava/lang/String;)Ljava/net/Proxy;
    .locals 4

    const-string v0, "http"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x50

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string p1, "http.proxyPort"

    sget-object v0, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    const-string v3, "http.proxyHost"

    invoke-direct {p0, v3, p1, v0, v1}, Lorg/mozilla/gecko/util/ProxySelector;->lookupProxy(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy$Type;I)Ljava/net/Proxy;

    move-result-object p1

    const-string v0, "http.nonProxyHosts"

    goto :goto_0

    :cond_0
    const-string v0, "https"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "https.proxyPort"

    sget-object v0, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    const-string v1, "https.proxyHost"

    const/16 v3, 0x1bb

    invoke-direct {p0, v1, p1, v0, v3}, Lorg/mozilla/gecko/util/ProxySelector;->lookupProxy(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy$Type;I)Ljava/net/Proxy;

    move-result-object p1

    const-string v0, "https.nonProxyHosts"

    move v1, v3

    goto :goto_0

    :cond_1
    const-string v0, "ftp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "ftp.proxyPort"

    sget-object v0, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    const-string v3, "ftp.proxyHost"

    invoke-direct {p0, v3, p1, v0, v1}, Lorg/mozilla/gecko/util/ProxySelector;->lookupProxy(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy$Type;I)Ljava/net/Proxy;

    move-result-object p1

    const-string v0, "ftp.nonProxyHosts"

    goto :goto_0

    :cond_2
    const-string v0, "socket"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 v1, -0x1

    const/4 p1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    :goto_0
    if-eqz v0, :cond_3

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lorg/mozilla/gecko/util/ProxySelector;->isNonProxyHost(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    sget-object p1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    return-object p1

    :cond_3
    if-eqz p1, :cond_4

    return-object p1

    :cond_4
    if-eqz v2, :cond_5

    const-string p1, "proxyPort"

    sget-object p2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    const-string v0, "proxyHost"

    invoke-direct {p0, v0, p1, p2, v1}, Lorg/mozilla/gecko/util/ProxySelector;->lookupProxy(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy$Type;I)Ljava/net/Proxy;

    move-result-object p1

    if-eqz p1, :cond_5

    return-object p1

    :cond_5
    sget-object p1, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    const/16 p2, 0x438

    const-string v0, "socksProxyHost"

    const-string v1, "socksProxyPort"

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/mozilla/gecko/util/ProxySelector;->lookupProxy(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy$Type;I)Ljava/net/Proxy;

    move-result-object p1

    if-eqz p1, :cond_6

    return-object p1

    :cond_6
    sget-object p1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    return-object p1

    :cond_7
    sget-object p1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    return-object p1
.end method
