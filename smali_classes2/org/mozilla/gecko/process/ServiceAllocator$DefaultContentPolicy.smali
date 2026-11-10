.class final Lorg/mozilla/gecko/process/ServiceAllocator$DefaultContentPolicy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/gecko/process/ServiceAllocator$ContentAllocationPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/process/ServiceAllocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultContentPolicy"
.end annotation


# instance fields
.field private final mAllocator:Ljava/util/BitSet;

.field private final mMaxNumSvcs:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/mozilla/gecko/process/ServiceAllocator$DefaultContentPolicy;->getContentServiceCount()I

    move-result v0

    iput v0, p0, Lorg/mozilla/gecko/process/ServiceAllocator$DefaultContentPolicy;->mMaxNumSvcs:I

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>(I)V

    iput-object v1, p0, Lorg/mozilla/gecko/process/ServiceAllocator$DefaultContentPolicy;->mAllocator:Ljava/util/BitSet;

    return-void
.end method

.method private static getContentServiceCount()I
    .locals 2

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lorg/mozilla/gecko/process/GeckoProcessType;->CONTENT:Lorg/mozilla/gecko/process/GeckoProcessType;

    invoke-static {v0, v1}, Lorg/mozilla/gecko/process/ServiceUtils;->getServiceCount(Landroid/content/Context;Lorg/mozilla/gecko/process/GeckoProcessType;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public allocate()I
    .locals 2

    iget-object v0, p0, Lorg/mozilla/gecko/process/ServiceAllocator$DefaultContentPolicy;->mAllocator:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v0

    iget v1, p0, Lorg/mozilla/gecko/process/ServiceAllocator$DefaultContentPolicy;->mMaxNumSvcs:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/mozilla/gecko/process/ServiceAllocator$DefaultContentPolicy;->mAllocator:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No more content services available"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBindServiceDelegate(Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;)Lorg/mozilla/gecko/process/ServiceAllocator$BindServiceDelegate;
    .locals 2

    new-instance v0, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo$DefaultBindDelegate;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo$DefaultBindDelegate;-><init>(Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;Lorg/mozilla/gecko/process/ServiceAllocator$1;)V

    return-object v0
.end method

.method public release(I)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/process/ServiceAllocator$DefaultContentPolicy;->mAllocator:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/gecko/process/ServiceAllocator$DefaultContentPolicy;->mAllocator:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->clear(I)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Releasing an unallocated id!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
