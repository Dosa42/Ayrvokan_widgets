.class Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo$Binding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Binding"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;


# direct methods
.method private constructor <init>(Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo$Binding;->this$0:Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;Lorg/mozilla/gecko/process/ServiceAllocator$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo$Binding;-><init>(Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;)V

    return-void
.end method

.method public static synthetic a(Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo$Binding;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo$Binding;->lambda$onServiceConnected$0(Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic b(Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo$Binding;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo$Binding;->lambda$onServiceDisconnected$1()V

    return-void
.end method

.method private synthetic lambda$onServiceConnected$0(Landroid/os/IBinder;)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo$Binding;->this$0:Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;

    invoke-static {v0, p1}, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->access$100(Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;Landroid/os/IBinder;)V

    return-void
.end method

.method private synthetic lambda$onServiceDisconnected$1()V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo$Binding;->this$0:Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;

    invoke-static {v0}, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;->access$000(Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo;)V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    new-instance p1, Lorg/mozilla/gecko/process/j;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p0, p2}, Lorg/mozilla/gecko/process/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1}, Lorg/mozilla/gecko/util/XPCOMEventTarget;->runOnLauncherThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    new-instance p1, Lorg/mozilla/gecko/process/g;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lorg/mozilla/gecko/process/g;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1}, Lorg/mozilla/gecko/util/XPCOMEventTarget;->runOnLauncherThread(Ljava/lang/Runnable;)V

    return-void
.end method
