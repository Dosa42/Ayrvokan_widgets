.class final Lorg/mozilla/gecko/media/RemoteManager$RemoteConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/media/RemoteManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RemoteConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/gecko/media/RemoteManager;


# direct methods
.method private constructor <init>(Lorg/mozilla/gecko/media/RemoteManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mozilla/gecko/media/RemoteManager$RemoteConnection;->this$0:Lorg/mozilla/gecko/media/RemoteManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/mozilla/gecko/media/RemoteManager;Lorg/mozilla/gecko/media/RemoteManager$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/mozilla/gecko/media/RemoteManager$RemoteConnection;-><init>(Lorg/mozilla/gecko/media/RemoteManager;)V

    return-void
.end method

.method public static synthetic access$200(Lorg/mozilla/gecko/media/RemoteManager$RemoteConnection;)Z
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/gecko/media/RemoteManager$RemoteConnection;->connect()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$300(Lorg/mozilla/gecko/media/RemoteManager$RemoteConnection;)V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/gecko/media/RemoteManager$RemoteConnection;->waitDisconnect()V

    return-void
.end method

.method public static synthetic access$400(Lorg/mozilla/gecko/media/RemoteManager$RemoteConnection;)V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/gecko/media/RemoteManager$RemoteConnection;->unlink()V

    return-void
.end method

.method private connect()Z
    .locals 4

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lorg/mozilla/gecko/media/MediaManager;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lorg/mozilla/gecko/media/RemoteManager$RemoteConnection;->this$0:Lorg/mozilla/gecko/media/RemoteManager;

    iget-object v2, v2, Lorg/mozilla/gecko/media/RemoteManager;->mConnection:Lorg/mozilla/gecko/media/RemoteManager$RemoteConnection;

    const/16 v3, 0x41

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    invoke-direct {p0}, Lorg/mozilla/gecko/media/RemoteManager$RemoteConnection;->waitConnect()V

    iget-object v0, p0, Lorg/mozilla/gecko/media/RemoteManager$RemoteConnection;->this$0:Lorg/mozilla/gecko/media/RemoteManager;

    invoke-static {v0}, Lorg/mozilla/gecko/media/RemoteManager;->access$000(Lorg/mozilla/gecko/media/RemoteManager;)Lorg/mozilla/gecko/media/IMediaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private declared-synchronized unlink()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/RemoteManager$RemoteConnection;->this$0:Lorg/mozilla/gecko/media/RemoteManager;

    invoke-static {v0}, Lorg/mozilla/gecko/media/RemoteManager;->access$000(Lorg/mozilla/gecko/media/RemoteManager;)Lorg/mozilla/gecko/media/IMediaManager;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/mozilla/gecko/media/RemoteManager$RemoteConnection;->this$0:Lorg/mozilla/gecko/media/RemoteManager;

    invoke-static {v0}, Lorg/mozilla/gecko/media/RemoteManager;->access$000(Lorg/mozilla/gecko/media/RemoteManager;)Lorg/mozilla/gecko/media/IMediaManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/gecko/media/RemoteManager$RemoteConnection;->this$0:Lorg/mozilla/gecko/media/RemoteManager;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    iget-object v0, p0, Lorg/mozilla/gecko/media/RemoteManager$RemoteConnection;->this$0:Lorg/mozilla/gecko/media/RemoteManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/mozilla/gecko/media/RemoteManager;->access$002(Lorg/mozilla/gecko/media/RemoteManager;Lorg/mozilla/gecko/media/IMediaManager;)Lorg/mozilla/gecko/media/IMediaManager;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized waitConnect()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :catch_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lorg/mozilla/gecko/media/RemoteManager$RemoteConnection;->this$0:Lorg/mozilla/gecko/media/RemoteManager;

    invoke-static {v1}, Lorg/mozilla/gecko/media/RemoteManager;->access$000(Lorg/mozilla/gecko/media/RemoteManager;)Lorg/mozilla/gecko/media/IMediaManager;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const-wide/16 v1, 0x3e8

    :try_start_1
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized waitDisconnect()V
    .locals 2

    monitor-enter p0

    :catch_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/media/RemoteManager$RemoteConnection;->this$0:Lorg/mozilla/gecko/media/RemoteManager;

    invoke-static {v0}, Lorg/mozilla/gecko/media/RemoteManager;->access$000(Lorg/mozilla/gecko/media/RemoteManager;)Lorg/mozilla/gecko/media/IMediaManager;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x3e8

    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Lorg/mozilla/gecko/media/RemoteManager$RemoteConnection;->this$0:Lorg/mozilla/gecko/media/RemoteManager;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    monitor-enter p0

    :try_start_1
    iget-object p1, p0, Lorg/mozilla/gecko/media/RemoteManager$RemoteConnection;->this$0:Lorg/mozilla/gecko/media/RemoteManager;

    invoke-static {p2}, Lorg/mozilla/gecko/media/IMediaManager$Stub;->asInterface(Landroid/os/IBinder;)Lorg/mozilla/gecko/media/IMediaManager;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/mozilla/gecko/media/RemoteManager;->access$002(Lorg/mozilla/gecko/media/RemoteManager;Lorg/mozilla/gecko/media/IMediaManager;)Lorg/mozilla/gecko/media/IMediaManager;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/gecko/media/RemoteManager$RemoteConnection;->unlink()V

    return-void
.end method
