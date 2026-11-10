.class Lorg/mozilla/gecko/process/GeckoProcessManager$NonContentConnection;
.super Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/process/GeckoProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NonContentConnection"
.end annotation


# direct methods
.method public constructor <init>(Lorg/mozilla/gecko/process/ServiceAllocator;Lorg/mozilla/gecko/process/GeckoProcessType;)V
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;->FOREGROUND:Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;

    invoke-direct {p0, p1, p2, v0}, Lorg/mozilla/gecko/process/GeckoProcessManager$ChildConnection;-><init>(Lorg/mozilla/gecko/process/ServiceAllocator;Lorg/mozilla/gecko/process/GeckoProcessType;Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;)V

    sget-object p1, Lorg/mozilla/gecko/process/GeckoProcessType;->CONTENT:Lorg/mozilla/gecko/process/GeckoProcessType;

    if-eq p2, p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Attempt to create a NonContentConnection as CONTENT"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method


# virtual methods
.method public onAppBackground()V
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;->BACKGROUND:Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;

    invoke-virtual {p0, v0}, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->setPriorityLevel(Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;)Z

    return-void
.end method

.method public onAppForeground()V
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;->FOREGROUND:Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;

    invoke-virtual {p0, v0}, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->setPriorityLevel(Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;)Z

    return-void
.end method
