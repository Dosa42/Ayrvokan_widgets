.class interface abstract Lorg/mozilla/gecko/process/ServiceAllocator$ContentAllocationPolicy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/process/ServiceAllocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ContentAllocationPolicy"
.end annotation


# virtual methods
.method public abstract allocate()I
.end method

.method public abstract getBindServiceDelegate(Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;)Lorg/mozilla/gecko/process/ServiceAllocator$BindServiceDelegate;
.end method

.method public abstract release(I)V
.end method
