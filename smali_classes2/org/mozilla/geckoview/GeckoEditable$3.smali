.class Lorg/mozilla/geckoview/GeckoEditable$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/geckoview/GeckoEditable;->geckoSetIcHandler(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/geckoview/GeckoEditable;

.field final synthetic val$newHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/GeckoEditable;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoEditable$3;->this$0:Lorg/mozilla/geckoview/GeckoEditable;

    iput-object p2, p0, Lorg/mozilla/geckoview/GeckoEditable$3;->val$newHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable$3;->val$newHandler:Landroid/os/Handler;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoEditable$3;->this$0:Lorg/mozilla/geckoview/GeckoEditable;

    iget-object v2, p0, Lorg/mozilla/geckoview/GeckoEditable$3;->val$newHandler:Landroid/os/Handler;

    invoke-static {v1, v2}, Lorg/mozilla/geckoview/GeckoEditable;->access$202(Lorg/mozilla/geckoview/GeckoEditable;Landroid/os/Handler;)Landroid/os/Handler;

    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoEditable$3;->val$newHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
