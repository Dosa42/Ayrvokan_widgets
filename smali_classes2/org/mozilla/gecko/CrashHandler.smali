.class public Lorg/mozilla/gecko/CrashHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final DEFAULT_SERVER_URL:Ljava/lang/String; = "https://crash-reports.mozilla.com/submit?id=%1$s&version=%2$s&buildid=%3$s"

.field private static final LOGTAG:Ljava/lang/String; = "GeckoCrashHandler"

.field private static final MAIN_THREAD:Ljava/lang/Thread;


# instance fields
.field protected final appContext:Landroid/content/Context;

.field protected crashing:Z

.field protected final handlerService:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation
.end field

.field protected final handlerThread:Ljava/lang/Thread;

.field protected final systemUncaughtHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field protected unregistered:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sput-object v0, Lorg/mozilla/gecko/CrashHandler;->MAIN_THREAD:Ljava/lang/Thread;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Service;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/gecko/CrashHandler;->appContext:Landroid/content/Context;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/mozilla/gecko/CrashHandler;->handlerThread:Ljava/lang/Thread;

    iput-object p2, p0, Lorg/mozilla/gecko/CrashHandler;->handlerService:Ljava/lang/Class;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/gecko/CrashHandler;->systemUncaughtHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
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

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/mozilla/gecko/CrashHandler;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Thread;Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Thread;",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Service;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/mozilla/gecko/CrashHandler;->appContext:Landroid/content/Context;

    iput-object p1, p0, Lorg/mozilla/gecko/CrashHandler;->handlerThread:Ljava/lang/Thread;

    iput-object p3, p0, Lorg/mozilla/gecko/CrashHandler;->handlerService:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p2

    iput-object p2, p0, Lorg/mozilla/gecko/CrashHandler;->systemUncaughtHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {p1, p0}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Thread;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Thread;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Service;",
            ">;)V"
        }
    .end annotation

    .line 4
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/mozilla/gecko/CrashHandler;-><init>(Ljava/lang/Thread;Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method

.method public static createDefaultCrashHandler(Landroid/content/Context;)Lorg/mozilla/gecko/CrashHandler;
    .locals 2

    new-instance v0, Lorg/mozilla/gecko/CrashHandler$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/mozilla/gecko/CrashHandler$1;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private static getCrashTime()J
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static getExceptionStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getJavaPackageName()Ljava/lang/String;
    .locals 1

    const-class v0, Lorg/mozilla/gecko/CrashHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getProcessName()Ljava/lang/String;
    .locals 6

    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    const-string v1, "/proc/self/cmdline"

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x40

    new-array v2, v1, [C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0, v2}, Ljava/io/Reader;->read([C)I

    move-result v3

    if-lez v3, :cond_1

    const/4 v3, 0x1

    new-array v3, v3, [[C

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    new-instance v5, Ljava/lang/String;

    if-gez v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-direct {v5, v2, v4, v1}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-object v1

    :cond_1
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getRootException(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2

    move-object v0, p0

    :goto_0
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    move-object v1, v0

    move-object v0, p0

    move-object p0, v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static getStartupTime()J
    .locals 4

    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/self/cmdline"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    invoke-static {}, Lorg/mozilla/gecko/CrashHandler;->getCrashTime()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static logException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    sget-object p1, Lorg/mozilla/gecko/CrashHandler;->MAIN_THREAD:Ljava/lang/Thread;

    if-eq p1, p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    invoke-virtual {p1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    array-length p1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public static normalizeUrlString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static terminateProcess()V
    .locals 1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method


# virtual methods
.method public getAppContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/CrashHandler;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method public getAppPackageName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/mozilla/gecko/CrashHandler;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lorg/mozilla/gecko/CrashHandler;->getProcessName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-static {}, Lorg/mozilla/gecko/CrashHandler;->getJavaPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCrashDump(Ljava/lang/Thread;Ljava/lang/Throwable;)[B
    .locals 0

    const/4 p1, 0x0

    new-array p1, p1, [B

    return-object p1
.end method

.method public getCrashExtras(Ljava/lang/Thread;Ljava/lang/Throwable;)Landroid/os/Bundle;
    .locals 6

    invoke-virtual {p0}, Lorg/mozilla/gecko/CrashHandler;->getAppContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lorg/mozilla/gecko/CrashHandler;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CrashTime"

    invoke-static {}, Lorg/mozilla/gecko/CrashHandler;->getCrashTime()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "StartupTime"

    invoke-static {}, Lorg/mozilla/gecko/CrashHandler;->getStartupTime()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "Android_ProcessName"

    invoke-static {}, Lorg/mozilla/gecko/CrashHandler;->getProcessName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Android_PackageName"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getAppNotes()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "Notes"

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    const-string v1, "Version"

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "BuildID"

    iget v2, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "InstallTime"

    iget-wide v2, p1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    const-string p1, "JavaStackTrace"

    invoke-static {p2}, Lorg/mozilla/gecko/CrashHandler;->getExceptionStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getServerUrl(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 3

    const-string v0, "ProductID"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/gecko/CrashHandler;->normalizeUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Version"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/mozilla/gecko/CrashHandler;->normalizeUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "BuildID"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/mozilla/gecko/CrashHandler;->normalizeUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "https://crash-reports.mozilla.com/submit?id=%1$s&version=%2$s&buildid=%3$s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public launchCrashReporter(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11

    const-string v0, "--es"

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0}, Lorg/mozilla/gecko/CrashHandler;->getAppContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lorg/mozilla/gecko/CrashHandler;->handlerService:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_0

    return v1

    :cond_0
    const-string v4, "fatal"

    const-string v5, "extrasPath"

    const-string v6, "minidumpPath"

    const/16 v7, 0x1a

    const-string v8, "org.mozilla.gecko.ACTION_CRASHED"

    if-eqz v3, :cond_2

    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p1, p0, Lorg/mozilla/gecko/CrashHandler;->handlerService:Ljava/lang/Class;

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v7, :cond_1

    invoke-static {v3, v0}, Lc1/a;->m(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return v2

    :cond_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v7, :cond_3

    const-string v3, "start-foreground-service"

    goto :goto_1

    :cond_3
    const-string v3, "startservice"

    :goto_1
    new-instance v7, Ljava/lang/ProcessBuilder;

    const/16 v9, 0x11

    new-array v9, v9, [Ljava/lang/String;

    const-string v10, "/system/bin/am"

    aput-object v10, v9, v1

    aput-object v3, v9, v2

    const-string v3, "--user"

    const/4 v10, 0x2

    aput-object v3, v9, v10

    const-string v3, "-3"

    const/4 v10, 0x3

    aput-object v3, v9, v10

    const-string v3, "-a"

    const/4 v10, 0x4

    aput-object v3, v9, v10

    const/4 v3, 0x5

    aput-object v8, v9, v3

    const-string v3, "-n"

    const/4 v8, 0x6

    aput-object v3, v9, v8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/mozilla/gecko/CrashHandler;->getAppPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x2f

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lorg/mozilla/gecko/CrashHandler;->handlerService:Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x7

    aput-object v3, v9, v8

    const/16 v3, 0x8

    aput-object v0, v9, v3

    const/16 v3, 0x9

    aput-object v6, v9, v3

    const/16 v3, 0xa

    aput-object p1, v9, v3

    const/16 p1, 0xb

    aput-object v0, v9, p1

    const/16 p1, 0xc

    aput-object v5, v9, p1

    const/16 p1, 0xd

    aput-object p2, v9, p1

    const-string p1, "--ez"

    const/16 p2, 0xe

    aput-object p1, v9, p2

    const/16 p1, 0xf

    aput-object v4, v9, p1

    const-string p1, "true"

    const/16 p2, 0x10

    aput-object p1, v9, p2

    invoke-direct {v7, v9}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Process;->waitFor()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return v2

    :catch_1
    return v1
.end method

.method public reportException(Ljava/lang/Thread;Ljava/lang/Throwable;)Z
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SdCardPath"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/mozilla/gecko/CrashHandler;->getAppContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 21
    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v3, "/data/data/"

    .line 25
    .line 26
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lorg/mozilla/gecko/CrashHandler;->getAppPackageName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v3, "/cache"

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    const/4 v3, 0x0

    .line 56
    if-nez v2, :cond_1

    .line 57
    .line 58
    return v3

    .line 59
    :cond_1
    new-instance v2, Ljava/io/File;

    .line 60
    .line 61
    const-string v4, ".dmp"

    .line 62
    .line 63
    invoke-static {v1, v4}, La1/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-direct {v2, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    new-instance v4, Ljava/io/File;

    .line 71
    .line 72
    const-string v5, ".extra"

    .line 73
    .line 74
    invoke-static {v1, v5}, La1/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/mozilla/gecko/CrashHandler;->getCrashDump(Ljava/lang/Thread;Ljava/lang/Throwable;)[B

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    new-instance v1, Ljava/io/FileOutputStream;

    .line 86
    .line 87
    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 88
    .line 89
    .line 90
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 91
    .line 92
    .line 93
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 94
    .line 95
    .line 96
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lorg/mozilla/gecko/CrashHandler;->getCrashExtras(Ljava/lang/Thread;Ljava/lang/Throwable;)Landroid/os/Bundle;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p0, p1}, Lorg/mozilla/gecko/CrashHandler;->getServerUrl(Landroid/os/Bundle;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    const-string v0, "ServerURL"

    .line 105
    .line 106
    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    new-instance p2, Lorg/json/JSONObject;

    .line 110
    .line 111
    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-eqz v1, :cond_2

    .line 127
    .line 128
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    check-cast v1, Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    invoke-virtual {p2, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_2
    new-instance p1, Ljava/io/BufferedWriter;

    .line 143
    .line 144
    new-instance v0, Ljava/io/FileWriter;

    .line 145
    .line 146
    invoke-direct {v0, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 147
    .line 148
    .line 149
    invoke-direct {p1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .line 150
    .line 151
    .line 152
    :try_start_4
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 157
    .line 158
    .line 159
    :try_start_5
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p2

    .line 170
    invoke-virtual {p0, p1, p2}, Lorg/mozilla/gecko/CrashHandler;->launchCrashReporter(Ljava/lang/String;Ljava/lang/String;)Z

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    return p1

    .line 175
    :catchall_0
    move-exception p2

    .line 176
    :try_start_6
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V

    .line 177
    .line 178
    .line 179
    throw p2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    .line 180
    :catch_0
    return v3

    .line 181
    :catchall_1
    move-exception p1

    .line 182
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 183
    .line 184
    .line 185
    throw p1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 186
    :catch_1
    return v3
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lorg/mozilla/gecko/CrashHandler;->crashing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lorg/mozilla/gecko/CrashHandler;->unregistered:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/gecko/CrashHandler;->crashing:Z

    invoke-static {p2}, Lorg/mozilla/gecko/CrashHandler;->getRootException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/mozilla/gecko/CrashHandler;->logException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/gecko/CrashHandler;->reportException(Ljava/lang/Thread;Ljava/lang/Throwable;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    invoke-static {}, Lorg/mozilla/gecko/CrashHandler;->terminateProcess()V

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lorg/mozilla/gecko/CrashHandler;->systemUncaughtHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    invoke-static {}, Lorg/mozilla/gecko/CrashHandler;->terminateProcess()V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Lorg/mozilla/gecko/CrashHandler;->terminateProcess()V

    throw p1
.end method

.method public unregister()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/gecko/CrashHandler;->unregistered:Z

    iget-object v0, p0, Lorg/mozilla/gecko/CrashHandler;->handlerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-ne v0, p0, :cond_1

    iget-object v0, p0, Lorg/mozilla/gecko/CrashHandler;->handlerThread:Ljava/lang/Thread;

    iget-object v1, p0, Lorg/mozilla/gecko/CrashHandler;->systemUncaughtHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-ne v0, p0, :cond_1

    iget-object v0, p0, Lorg/mozilla/gecko/CrashHandler;->systemUncaughtHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_1
    :goto_0
    return-void
.end method
