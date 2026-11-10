.class final Lorg/mozilla/gecko/process/ServiceAllocator$IsolatedContentPolicy;
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
    name = "IsolatedContentPolicy"
.end annotation


# instance fields
.field private mCurNumIsolatedSvcs:I

.field private mNextIsolatedSvcId:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/gecko/process/ServiceAllocator$IsolatedContentPolicy;->mNextIsolatedSvcId:I

    iput v0, p0, Lorg/mozilla/gecko/process/ServiceAllocator$IsolatedContentPolicy;->mCurNumIsolatedSvcs:I

    return-void
.end method

.method public synthetic constructor <init>(Lorg/mozilla/gecko/process/ServiceAllocator$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/mozilla/gecko/process/ServiceAllocator$IsolatedContentPolicy;-><init>()V

    return-void
.end method


# virtual methods
.method public allocate()I
    .locals 2

    iget v0, p0, Lorg/mozilla/gecko/process/ServiceAllocator$IsolatedContentPolicy;->mCurNumIsolatedSvcs:I

    const/16 v1, 0x32

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/gecko/process/ServiceAllocator$IsolatedContentPolicy;->mCurNumIsolatedSvcs:I

    iget v0, p0, Lorg/mozilla/gecko/process/ServiceAllocator$IsolatedContentPolicy;->mNextIsolatedSvcId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/mozilla/gecko/process/ServiceAllocator$IsolatedContentPolicy;->mNextIsolatedSvcId:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No more content services available"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBindServiceDelegate(Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;)Lorg/mozilla/gecko/process/ServiceAllocator$BindServiceDelegate;
    .locals 2

    new-instance v0, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo$IsolatedBindDelegate;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo$IsolatedBindDelegate;-><init>(Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;Lorg/mozilla/gecko/process/ServiceAllocator$1;)V

    return-object v0
.end method

.method public release(I)V
    .locals 1

    iget p1, p0, Lorg/mozilla/gecko/process/ServiceAllocator$IsolatedContentPolicy;->mCurNumIsolatedSvcs:I

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/mozilla/gecko/process/ServiceAllocator$IsolatedContentPolicy;->mCurNumIsolatedSvcs:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Releasing an unallocated id"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
