.class Lorg/mozilla/geckoview/GeckoEditable$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/geckoview/GeckoEditable;->setInputConnectionHandler(Landroid/os/Handler;)Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/geckoview/GeckoEditable;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/GeckoEditable;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoEditable$2;->this$0:Lorg/mozilla/geckoview/GeckoEditable;

    iput-object p2, p0, Lorg/mozilla/geckoview/GeckoEditable$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoEditable$2;->val$handler:Landroid/os/Handler;

    monitor-enter v0

    :catch_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoEditable$2;->this$0:Lorg/mozilla/geckoview/GeckoEditable;

    invoke-static {v1}, Lorg/mozilla/geckoview/GeckoEditable;->access$200(Lorg/mozilla/geckoview/GeckoEditable;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lorg/mozilla/geckoview/GeckoEditable$2;->val$handler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
