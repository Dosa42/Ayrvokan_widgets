.class Lorg/mozilla/gecko/GeckoJavaSampler$SamplingRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/GeckoJavaSampler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SamplingRunnable"
.end annotation


# instance fields
.field private mBufferOverflowed:Z

.field public final mInterval:I

.field private mMainThread:Ljava/lang/Thread;

.field private final mSampleCount:I

.field private mSamplePos:I

.field private mSamples:[Lorg/mozilla/gecko/GeckoJavaSampler$Sample;


# direct methods
.method public constructor <init>(II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/gecko/GeckoJavaSampler$SamplingRunnable;->mBufferOverflowed:Z

    const/4 v1, 0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/mozilla/gecko/GeckoJavaSampler$SamplingRunnable;->mInterval:I

    iput p2, p0, Lorg/mozilla/gecko/GeckoJavaSampler$SamplingRunnable;->mSampleCount:I

    new-array p1, p2, [Lorg/mozilla/gecko/GeckoJavaSampler$Sample;

    iput-object p1, p0, Lorg/mozilla/gecko/GeckoJavaSampler$SamplingRunnable;->mSamples:[Lorg/mozilla/gecko/GeckoJavaSampler$Sample;

    iput v0, p0, Lorg/mozilla/gecko/GeckoJavaSampler$SamplingRunnable;->mSamplePos:I

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/gecko/GeckoJavaSampler$SamplingRunnable;->mMainThread:Ljava/lang/Thread;

    return-void
.end method

.method public static synthetic access$300(Lorg/mozilla/gecko/GeckoJavaSampler$SamplingRunnable;I)Lorg/mozilla/gecko/GeckoJavaSampler$Sample;
    .locals 0

    invoke-direct {p0, p1}, Lorg/mozilla/gecko/GeckoJavaSampler$SamplingRunnable;->getSample(I)Lorg/mozilla/gecko/GeckoJavaSampler$Sample;

    move-result-object p0

    return-object p0
.end method

.method private getSample(I)Lorg/mozilla/gecko/GeckoJavaSampler$Sample;
    .locals 2

    iget v0, p0, Lorg/mozilla/gecko/GeckoJavaSampler$SamplingRunnable;->mSampleCount:I

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-boolean v1, p0, Lorg/mozilla/gecko/GeckoJavaSampler$SamplingRunnable;->mBufferOverflowed:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/mozilla/gecko/GeckoJavaSampler$SamplingRunnable;->mSamplePos:I

    add-int/2addr p1, v1

    rem-int/2addr p1, v0

    :cond_1
    iget-object v0, p0, Lorg/mozilla/gecko/GeckoJavaSampler$SamplingRunnable;->mSamples:[Lorg/mozilla/gecko/GeckoJavaSampler$Sample;

    aget-object p1, v0, p1

    return-object p1
.end method


# virtual methods
.method public run()V
    .locals 5

    const-class v0, Lorg/mozilla/gecko/GeckoJavaSampler;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/mozilla/gecko/GeckoJavaSampler$SamplingRunnable;->mMainThread:Ljava/lang/Thread;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    iget-object v2, p0, Lorg/mozilla/gecko/GeckoJavaSampler$SamplingRunnable;->mSamples:[Lorg/mozilla/gecko/GeckoJavaSampler$Sample;

    iget v3, p0, Lorg/mozilla/gecko/GeckoJavaSampler$SamplingRunnable;->mSamplePos:I

    new-instance v4, Lorg/mozilla/gecko/GeckoJavaSampler$Sample;

    invoke-direct {v4, v1}, Lorg/mozilla/gecko/GeckoJavaSampler$Sample;-><init>([Ljava/lang/StackTraceElement;)V

    aput-object v4, v2, v3

    iget v1, p0, Lorg/mozilla/gecko/GeckoJavaSampler$SamplingRunnable;->mSamplePos:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/mozilla/gecko/GeckoJavaSampler$SamplingRunnable;->mSamplePos:I

    iget v3, p0, Lorg/mozilla/gecko/GeckoJavaSampler$SamplingRunnable;->mSampleCount:I

    if-ne v1, v3, :cond_1

    const/4 v1, 0x0

    iput v1, p0, Lorg/mozilla/gecko/GeckoJavaSampler$SamplingRunnable;->mSamplePos:I

    iput-boolean v2, p0, Lorg/mozilla/gecko/GeckoJavaSampler$SamplingRunnable;->mBufferOverflowed:Z

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
