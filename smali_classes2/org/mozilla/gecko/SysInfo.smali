.class public final Lorg/mozilla/gecko/SysInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "GeckoSysInfo"

.field private static final MEMINFO_BUFFER_SIZE_BYTES:I = 0x100

.field private static volatile cpuCount:I = -0x1

.field private static volatile totalRAM:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getArchABI()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    return-object v0
.end method

.method public static getCPUCount()I
    .locals 3

    sget v0, Lorg/mozilla/gecko/SysInfo;->cpuCount:I

    if-lez v0, :cond_0

    sget v0, Lorg/mozilla/gecko/SysInfo;->cpuCount:I

    return v0

    :cond_0
    invoke-static {}, Lorg/mozilla/gecko/util/StrictModeContext;->allowDiskReads()Lorg/mozilla/gecko/util/StrictModeContext;

    move-result-object v0

    :try_start_0
    invoke-static {}, Lorg/mozilla/gecko/SysInfo;->readCPUCount()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/mozilla/gecko/util/StrictModeContext;->close()V

    :cond_1
    return v1

    :catchall_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_2

    :try_start_2
    invoke-virtual {v0}, Lorg/mozilla/gecko/util/StrictModeContext;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v2
.end method

.method public static getDevice()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getHardware()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    return-object v0
.end method

.method public static getKernelVersion()Ljava/lang/String;
    .locals 2

    const-string v0, "os.version"

    const-string v1, ""

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getManufacturer()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public static getMemSize(Landroid/content/Context;)I
    .locals 4

    sget v0, Lorg/mozilla/gecko/SysInfo;->totalRAM:I

    if-ltz v0, :cond_0

    sget p0, Lorg/mozilla/gecko/SysInfo;->totalRAM:I

    return p0

    :cond_0
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    long-to-int p0, v0

    sput p0, Lorg/mozilla/gecko/SysInfo;->totalRAM:I

    sget p0, Lorg/mozilla/gecko/SysInfo;->totalRAM:I

    return p0
.end method

.method public static getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Android"

    return-object v0
.end method

.method public static getReleaseVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static getVersion()I
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method private static readCPUCount()I
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/system/cpu/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/mozilla/gecko/SysInfo$1CpuFilter;

    invoke-direct {v1}, Lorg/mozilla/gecko/SysInfo$1CpuFilter;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    array-length v0, v0

    sput v0, Lorg/mozilla/gecko/SysInfo;->cpuCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x1

    sput v0, Lorg/mozilla/gecko/SysInfo;->cpuCount:I

    return v0
.end method
