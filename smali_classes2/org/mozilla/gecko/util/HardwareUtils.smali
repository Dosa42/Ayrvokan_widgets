.class public final Lorg/mozilla/gecko/util/HardwareUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ELF_MACHINE_AARCH64:I = 0xb7

.field private static final ELF_MACHINE_ARM:I = 0x28

.field private static final ELF_MACHINE_UNKNOWN:I = 0x0

.field private static final ELF_MACHINE_X86:I = 0x3

.field private static final ELF_MACHINE_X86_64:I = 0x3e

.field private static final LOGTAG:Ljava/lang/String; = "GeckoHardwareUtils"

.field private static volatile sInited:Z = false

.field private static volatile sIsLargeTablet:Z = false

.field private static volatile sIsSmallTablet:Z = false

.field private static volatile sLibDir:Ljava/io/File; = null

.field private static volatile sMachineType:I = -0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLibrariesABI()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/HardwareUtils;->initMachineType()V

    sget v0, Lorg/mozilla/gecko/util/HardwareUtils;->sMachineType:I

    invoke-static {v0}, Lorg/mozilla/gecko/util/HardwareUtils;->machineTypeToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPreferredAbi()Ljava/lang/String;
    .locals 2

    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public static getRealAbi()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/HardwareUtils;->isX86System()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/mozilla/gecko/util/HardwareUtils;->isARMSystem()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "x86"

    return-object v0

    :cond_0
    invoke-static {}, Lorg/mozilla/gecko/util/HardwareUtils;->getPreferredAbi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3

    sget-boolean v0, Lorg/mozilla/gecko/util/HardwareUtils;->sInited:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    sput-boolean v2, Lorg/mozilla/gecko/util/HardwareUtils;->sIsLargeTablet:Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    sput-boolean v2, Lorg/mozilla/gecko/util/HardwareUtils;->sIsSmallTablet:Z

    :cond_2
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/mozilla/gecko/util/HardwareUtils;->sLibDir:Ljava/io/File;

    sput-boolean v2, Lorg/mozilla/gecko/util/HardwareUtils;->sInited:Z

    return-void
.end method

.method private static initMachineType()V
    .locals 3

    sget v0, Lorg/mozilla/gecko/util/HardwareUtils;->sMachineType:I

    if-ltz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lorg/mozilla/gecko/util/HardwareUtils;->sLibDir:Ljava/io/File;

    const-string v2, "mozglue"

    invoke-static {v2}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/mozilla/gecko/util/HardwareUtils;->readElfMachineType(Ljava/io/File;)I

    move-result v0

    sput v0, Lorg/mozilla/gecko/util/HardwareUtils;->sMachineType:I

    return-void
.end method

.method public static isARM64System()Z
    .locals 2

    const-string v0, "arm64-v8a"

    invoke-static {}, Lorg/mozilla/gecko/util/HardwareUtils;->getPreferredAbi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isARMSystem()Z
    .locals 2

    const-string v0, "armeabi-v7a"

    invoke-static {}, Lorg/mozilla/gecko/util/HardwareUtils;->getPreferredAbi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isTablet()Z
    .locals 1

    sget-boolean v0, Lorg/mozilla/gecko/util/HardwareUtils;->sIsLargeTablet:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lorg/mozilla/gecko/util/HardwareUtils;->sIsSmallTablet:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isX86System()Z
    .locals 2

    const-string v0, "x86"

    invoke-static {}, Lorg/mozilla/gecko/util/HardwareUtils;->getPreferredAbi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/system/Os;->uname()Landroid/system/StructUtsname;

    move-result-object v0

    iget-object v0, v0, Landroid/system/StructUtsname;->release:Ljava/lang/String;

    const-string v1, "-x86_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method private static machineTypeToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/16 v0, 0x28

    if-eq p0, v0, :cond_2

    const/16 v0, 0x3e

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb7

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "unknown (0x%x)"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "aarch64"

    return-object p0

    :cond_1
    const-string p0, "x86_64"

    return-object p0

    :cond_2
    const-string p0, "arm"

    return-object p0

    :cond_3
    const-string p0, "x86"

    return-object p0
.end method

.method private static readElfMachineType(Ljava/io/File;)I
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x13

    :try_start_1
    new-array v3, v2, [B

    move v4, v0

    :goto_0
    if-eq v4, v2, :cond_0

    rsub-int/lit8 v5, v4, 0x13

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_0

    :cond_0
    const/16 v2, 0x12

    aget-byte v2, v3, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gez v2, :cond_1

    add-int/lit16 v2, v2, 0x100

    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return v2

    :catchall_0
    move-exception v2

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v1

    :try_start_5
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v3
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    return v0

    :catch_1
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Failed to open %s"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v0
.end method
