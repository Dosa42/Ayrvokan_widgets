.class public final synthetic Lorg/mozilla/gecko/process/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/mozilla/gecko/process/g;->f:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/mozilla/gecko/process/g;->g:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lorg/mozilla/gecko/process/g;->f:I

    iget-object v1, p0, Lorg/mozilla/gecko/process/g;->g:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v1, Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;

    invoke-static {v1}, Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;->c(Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;)V

    return-void

    :pswitch_1
    check-cast v1, Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;

    invoke-static {v1}, Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;->a(Lorg/mozilla/gecko/process/GeckoProcessManager$ConnectionManager;)V

    return-void

    :goto_0
    check-cast v1, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo$Binding;

    invoke-static {v1}, Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo$Binding;->b(Lorg/mozilla/gecko/process/ServiceAllocator$InstanceInfo$Binding;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
