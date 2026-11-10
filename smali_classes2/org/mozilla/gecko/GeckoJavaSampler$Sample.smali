.class Lorg/mozilla/gecko/GeckoJavaSampler$Sample;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/GeckoJavaSampler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sample"
.end annotation


# instance fields
.field public mFrames:[Lorg/mozilla/gecko/GeckoJavaSampler$Frame;

.field public mJavaTime:J

.field public mTime:D


# direct methods
.method public constructor <init>([Ljava/lang/StackTraceElement;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    new-array v0, v0, [Lorg/mozilla/gecko/GeckoJavaSampler$Frame;

    iput-object v0, p0, Lorg/mozilla/gecko/GeckoJavaSampler$Sample;->mFrames:[Lorg/mozilla/gecko/GeckoJavaSampler$Frame;

    sget-object v0, Lorg/mozilla/gecko/GeckoThread$State;->JNI_READY:Lorg/mozilla/gecko/GeckoThread$State;

    invoke-static {v0}, Lorg/mozilla/gecko/GeckoThread;->isStateAtLeast(Lorg/mozilla/gecko/GeckoThread$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/mozilla/gecko/GeckoJavaSampler;->access$000()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/mozilla/gecko/GeckoJavaSampler$Sample;->mTime:D

    :cond_0
    iget-wide v0, p0, Lorg/mozilla/gecko/GeckoJavaSampler$Sample;->mTime:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/mozilla/gecko/GeckoJavaSampler$Sample;->mJavaTime:J

    :cond_1
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/mozilla/gecko/GeckoJavaSampler$Sample;->mFrames:[Lorg/mozilla/gecko/GeckoJavaSampler$Frame;

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    new-instance v3, Lorg/mozilla/gecko/GeckoJavaSampler$Frame;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/mozilla/gecko/GeckoJavaSampler$Frame;-><init>(Lorg/mozilla/gecko/GeckoJavaSampler$1;)V

    aput-object v3, v1, v2

    iget-object v1, p0, Lorg/mozilla/gecko/GeckoJavaSampler$Sample;->mFrames:[Lorg/mozilla/gecko/GeckoJavaSampler$Frame;

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    aget-object v1, v1, v2

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/mozilla/gecko/GeckoJavaSampler$Frame;->methodName:Ljava/lang/String;

    iget-object v1, p0, Lorg/mozilla/gecko/GeckoJavaSampler$Sample;->mFrames:[Lorg/mozilla/gecko/GeckoJavaSampler$Frame;

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    aget-object v1, v1, v2

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/mozilla/gecko/GeckoJavaSampler$Frame;->className:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
