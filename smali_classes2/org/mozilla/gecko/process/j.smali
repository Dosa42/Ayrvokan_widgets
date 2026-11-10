.class public final synthetic Lorg/mozilla/gecko/process/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/mozilla/gecko/process/j;->f:I

    .line 2
    .line 3
    iput-object p2, p0, Lorg/mozilla/gecko/process/j;->g:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lorg/mozilla/gecko/process/j;->h:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lorg/mozilla/gecko/process/j;->f:I

    iget-object v1, p0, Lorg/mozilla/gecko/process/j;->h:Ljava/lang/Object;

    iget-object v2, p0, Lorg/mozilla/gecko/process/j;->g:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v2, Lorg/mozilla/gecko/process/GeckoProcessManager;

    check-cast v1, Lorg/mozilla/gecko/process/GeckoProcessManager$Selector;

    invoke-static {v2, v1}, Lorg/mozilla/gecko/process/GeckoProcessManager;->c(Lorg/mozilla/gecko/process/GeckoProcessManager;Lorg/mozilla/gecko/process/GeckoProcessManager$Selector;)V

    return-void

    :pswitch_1
    check-cast v2, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo$Binding;

    check-cast v1, Landroid/os/IBinder;

    invoke-static {v2, v1}, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo$Binding;->a(Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo$Binding;Landroid/os/IBinder;)V

    return-void

    :goto_0
    check-cast v2, Lorg/mozilla/gecko/process/GeckoProcessManager;

    check-cast v1, [Lorg/mozilla/gecko/process/GeckoProcessType;

    invoke-static {v2, v1}, Lorg/mozilla/gecko/process/GeckoProcessManager;->j(Lorg/mozilla/gecko/process/GeckoProcessManager;[Lorg/mozilla/gecko/process/GeckoProcessType;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
