.class final Lorg/mozilla/gecko/process/ServiceUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_ISOLATED_CONTENT_SERVICE_NAME_SUFFIX:Ljava/lang/String; = "0"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildIsolatedSvcName(Lorg/mozilla/gecko/process/GeckoProcessType;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/process/GeckoProcessType;->CONTENT:Lorg/mozilla/gecko/process/GeckoProcessType;

    if-ne p0, v0, :cond_0

    const-string v0, "0"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/mozilla/gecko/process/ServiceUtils;->buildSvcName(Lorg/mozilla/gecko/process/GeckoProcessType;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/mozilla/gecko/process/ServiceUtils;->buildSvcName(Lorg/mozilla/gecko/process/GeckoProcessType;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs buildSvcName(Lorg/mozilla/gecko/process/GeckoProcessType;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lorg/mozilla/gecko/process/ServiceUtils;->startSvcName(Lorg/mozilla/gecko/process/GeckoProcessType;)Ljava/lang/StringBuilder;

    move-result-object p0

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static buildSvcNamePrefix(Lorg/mozilla/gecko/process/GeckoProcessType;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/mozilla/gecko/process/ServiceUtils;->startSvcName(Lorg/mozilla/gecko/process/GeckoProcessType;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getServiceCount(Landroid/content/Context;Lorg/mozilla/gecko/process/GeckoProcessType;)I
    .locals 6

    .line 1
    invoke-static {p0}, Lorg/mozilla/gecko/process/ServiceUtils;->getServiceList(Landroid/content/Context;)[Landroid/content/pm/ServiceInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p1}, Lorg/mozilla/gecko/process/ServiceUtils;->buildSvcNamePrefix(Lorg/mozilla/gecko/process/GeckoProcessType;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    array-length v0, p0

    .line 10
    const/4 v1, 0x0

    .line 11
    move v2, v1

    .line 12
    :goto_0
    if-ge v1, v0, :cond_2

    .line 13
    .line 14
    aget-object v3, p0, v1

    .line 15
    .line 16
    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-eqz v4, :cond_1

    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-eq v4, v5, :cond_0

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/String;->codePointAt(I)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-static {v3}, Ljava/lang/Character;->isDigit(I)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_1

    .line 47
    .line 48
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 49
    .line 50
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    if-lez v2, :cond_3

    .line 54
    .line 55
    return v2

    .line 56
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    .line 57
    .line 58
    const-string v0, "Could not count "

    .line 59
    .line 60
    const-string v1, " services in manifest"

    .line 61
    .line 62
    invoke-static {v0, p1, v1}, La1/b;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p0
.end method

.method public static getServiceFlags(Landroid/content/Context;Lorg/mozilla/gecko/process/GeckoProcessType;)I
    .locals 1

    new-instance v0, Landroid/content/ComponentName;

    invoke-static {p1}, Lorg/mozilla/gecko/process/ServiceUtils;->buildIsolatedSvcName(Lorg/mozilla/gecko/process/GeckoProcessType;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ServiceInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static getServiceList(Landroid/content/Context;)[Landroid/content/pm/ServiceInfo;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "Should not happen: Can\'t get package info of own package"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method private static startSvcName(Lorg/mozilla/gecko/process/GeckoProcessType;)Ljava/lang/StringBuilder;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Lorg/mozilla/gecko/process/GeckoChildProcessServices;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-object v0
.end method
