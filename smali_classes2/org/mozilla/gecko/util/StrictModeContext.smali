.class public final Lorg/mozilla/gecko/util/StrictModeContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final mThreadPolicy:Landroid/os/StrictMode$ThreadPolicy;

.field private final mVmPolicy:Landroid/os/StrictMode$VmPolicy;


# direct methods
.method private constructor <init>(Landroid/os/StrictMode$ThreadPolicy;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/mozilla/gecko/util/StrictModeContext;-><init>(Landroid/os/StrictMode$ThreadPolicy;Landroid/os/StrictMode$VmPolicy;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/StrictMode$ThreadPolicy;Landroid/os/StrictMode$VmPolicy;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/gecko/util/StrictModeContext;->mThreadPolicy:Landroid/os/StrictMode$ThreadPolicy;

    iput-object p2, p0, Lorg/mozilla/gecko/util/StrictModeContext;->mVmPolicy:Landroid/os/StrictMode$VmPolicy;

    return-void
.end method

.method private constructor <init>(Landroid/os/StrictMode$VmPolicy;)V
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/mozilla/gecko/util/StrictModeContext;-><init>(Landroid/os/StrictMode$ThreadPolicy;Landroid/os/StrictMode$VmPolicy;)V

    return-void
.end method

.method public static allowAllVmPolicies()Lorg/mozilla/gecko/util/StrictModeContext;
    .locals 2

    invoke-static {}, Landroid/os/StrictMode;->getVmPolicy()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    sget-object v1, Landroid/os/StrictMode$VmPolicy;->LAX:Landroid/os/StrictMode$VmPolicy;

    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    new-instance v1, Lorg/mozilla/gecko/util/StrictModeContext;

    invoke-direct {v1, v0}, Lorg/mozilla/gecko/util/StrictModeContext;-><init>(Landroid/os/StrictMode$VmPolicy;)V

    return-object v1
.end method

.method public static allowDiskReads()Lorg/mozilla/gecko/util/StrictModeContext;
    .locals 2

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    new-instance v1, Lorg/mozilla/gecko/util/StrictModeContext;

    invoke-direct {v1, v0}, Lorg/mozilla/gecko/util/StrictModeContext;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object v1
.end method

.method public static allowDiskWrites()Lorg/mozilla/gecko/util/StrictModeContext;
    .locals 2

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    new-instance v1, Lorg/mozilla/gecko/util/StrictModeContext;

    invoke-direct {v1, v0}, Lorg/mozilla/gecko/util/StrictModeContext;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object v1
.end method

.method public static allowSlowCalls()Lorg/mozilla/gecko/util/StrictModeContext;
    .locals 2

    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v1, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitCustomSlowCalls()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    new-instance v1, Lorg/mozilla/gecko/util/StrictModeContext;

    invoke-direct {v1, v0}, Lorg/mozilla/gecko/util/StrictModeContext;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object v1
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/util/StrictModeContext;->mThreadPolicy:Landroid/os/StrictMode$ThreadPolicy;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :cond_0
    iget-object v0, p0, Lorg/mozilla/gecko/util/StrictModeContext;->mVmPolicy:Landroid/os/StrictMode$VmPolicy;

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    :cond_1
    return-void
.end method
