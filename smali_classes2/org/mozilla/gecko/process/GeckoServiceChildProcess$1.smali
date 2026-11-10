.class Lorg/mozilla/gecko/process/GeckoServiceChildProcess$1;
.super Lorg/mozilla/gecko/process/IChildProcess$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/process/GeckoServiceChildProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/gecko/process/GeckoServiceChildProcess;


# direct methods
.method public constructor <init>(Lorg/mozilla/gecko/process/GeckoServiceChildProcess;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/gecko/process/GeckoServiceChildProcess$1;->this$0:Lorg/mozilla/gecko/process/GeckoServiceChildProcess;

    invoke-direct {p0}, Lorg/mozilla/gecko/process/IChildProcess$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public crash()V
    .locals 0

    invoke-static {}, Lorg/mozilla/gecko/GeckoThread;->crash()V

    return-void
.end method

.method public getPid()I
    .locals 1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    return v0
.end method

.method public start(Lorg/mozilla/gecko/process/IProcessManager;[Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)Z
    .locals 13

    const-class v1, Lorg/mozilla/gecko/process/GeckoServiceChildProcess;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lorg/mozilla/gecko/process/GeckoServiceChildProcess;->access$000()Lorg/mozilla/gecko/process/IProcessManager;

    move-result-object v0

    if-eqz v0, :cond_0

    monitor-exit v1

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {p1}, Lorg/mozilla/gecko/process/GeckoServiceChildProcess;->access$002(Lorg/mozilla/gecko/process/IProcessManager;)Lorg/mozilla/gecko/process/IProcessManager;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, -0x1

    if-eqz p6, :cond_1

    invoke-virtual/range {p6 .. p6}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v1

    move v8, v1

    goto :goto_0

    :cond_1
    move v8, v0

    :goto_0
    if-eqz p7, :cond_2

    invoke-virtual/range {p7 .. p7}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v1

    move v9, v1

    goto :goto_1

    :cond_2
    move v9, v0

    :goto_1
    invoke-virtual/range {p8 .. p8}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v10

    if-eqz p9, :cond_3

    invoke-virtual/range {p9 .. p9}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v1

    move v11, v1

    goto :goto_2

    :cond_3
    move v11, v0

    :goto_2
    if-eqz p10, :cond_4

    invoke-virtual/range {p10 .. p10}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v0

    :cond_4
    move v12, v0

    new-instance v0, Lorg/mozilla/gecko/process/GeckoServiceChildProcess$1$1;

    move-object v2, v0

    move-object v3, p0

    move-object/from16 v4, p5

    move-object v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    invoke-direct/range {v2 .. v12}, Lorg/mozilla/gecko/process/GeckoServiceChildProcess$1$1;-><init>(Lorg/mozilla/gecko/process/GeckoServiceChildProcess$1;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;IIIIII)V

    invoke-static {v0}, Lorg/mozilla/gecko/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
