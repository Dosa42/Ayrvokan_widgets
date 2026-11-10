.class Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo$DefaultBindDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/gecko/process/ServiceAllocator$BindServiceDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefaultBindDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;


# direct methods
.method private constructor <init>(Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo$DefaultBindDelegate;->this$0:Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;Lorg/mozilla/gecko/process/ServiceAllocator$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo$DefaultBindDelegate;-><init>(Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;)V

    return-void
.end method


# virtual methods
.method public bindService(Landroid/content/ServiceConnection;Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;)Z
    .locals 3

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo$DefaultBindDelegate;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p2}, Lorg/mozilla/gecko/process/ServiceAllocator;->access$200(Lorg/mozilla/gecko/process/ServiceAllocator$PriorityLevel;)I

    move-result p2

    invoke-static {v0, v1, p1, p2}, Lorg/mozilla/gecko/process/ServiceAllocator;->access$300(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    return p1
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo$DefaultBindDelegate;->this$0:Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;

    invoke-static {v0}, Lorg/mozilla/gecko/process/ServiceAllocator;->access$400(Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
