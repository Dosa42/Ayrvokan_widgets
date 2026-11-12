.class final Lcom/nomone/vr_desktop/runtime/UbuntuRootfs$InstallTask;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.source "UbuntuRootfs.java"

.annotation system Ldalvik/annotation/EnclosingClass;
  value = Lcom/nomone/vr_desktop/runtime/UbuntuRootfs;
.end annotation
.annotation system Ldalvik/annotation/InnerClass;
  accessFlags = 26
  name = "InstallTask"
.end annotation

.field private final activity:Landroid/app/Activity;

.method constructor <init>(Landroid/app/Activity;)V
  .registers 2
  .line 52
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
  .line 53
    iput-object p1, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRootfs$InstallTask;->activity:Landroid/app/Activity;
  .line 54
    return-void
.end method

.method public run()V
  .catch Ljava/lang/Exception; { :L0 .. :L1 } :L12
  .catchall { :L1 .. :L2 } :L6
  .catch Ljava/lang/Exception; { :L3 .. :L5 } :L12
  .catchall { :L7 .. :L8 } :L9
  .catch Ljava/lang/Exception; { :L10 .. :L12 } :L12
  .registers 5
  .line 58
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRootfs$InstallTask;->activity:Landroid/app/Activity;
    invoke-virtual { v0 }, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;
    move-result-object v0
  :L0
  .line 60
    invoke-virtual { v0 }, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;
    move-result-object v1
    const-string v2, "linux/ubuntu-base-22.04.5-base-arm64.tar.gz"
    invoke-virtual { v1, v2 }, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    move-result-object v1
  :L1
  .line 61
    invoke-virtual { v0 }, Landroid/content/Context;->getFilesDir()Ljava/io/File;
    move-result-object v2
    new-instance v3, Ljava/io/File;
    invoke-virtual { v0 }, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    move-result-object v0
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;
    invoke-direct { v3, v0 }, Ljava/io/File;-><init>(Ljava/lang/String;)V
    invoke-static { v1, v2, v3 }, Lcom/nomone/vr_desktop/runtime/UbuntuImage;->install(Ljava/io/InputStream;Ljava/io/File;Ljava/io/File;)Ljava/io/File;
  :L2
  .line 62
    if-eqz v1, :L4
  :L3
    invoke-virtual { v1 }, Ljava/io/InputStream;->close()V
  :L4
  .line 63
    iget-object v0, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRootfs$InstallTask;->activity:Landroid/app/Activity;
    new-instance v1, Lcom/nomone/vr_desktop/runtime/UbuntuRootfs$ResumeTask;
    iget-object v2, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRootfs$InstallTask;->activity:Landroid/app/Activity;
    const/4 v3, 0
    invoke-direct { v1, v2, v3 }, Lcom/nomone/vr_desktop/runtime/UbuntuRootfs$ResumeTask;-><init>(Landroid/app/Activity;Ljava/lang/Exception;)V
    invoke-virtual { v0, v1 }, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
  :L5
  .line 67
    goto :L13
  :L6
  .line 60
    move-exception v0
    if-eqz v1, :L11
  :L7
    invoke-virtual { v1 }, Ljava/io/InputStream;->close()V
  :L8
    goto :L11
  :L9
    move-exception v1
  :L10
    invoke-virtual { v0, v1 }, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
  :L11
    throw v0
  :L12
  .line 64
    move-exception v0
  .line 65
    const-string v1, "UbuntuRootfs"
    const-string v2, "Ubuntu-installatie mislukt"
    invoke-static { v1, v2, v0 }, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
  .line 66
    iget-object v1, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRootfs$InstallTask;->activity:Landroid/app/Activity;
    new-instance v2, Lcom/nomone/vr_desktop/runtime/UbuntuRootfs$ResumeTask;
    iget-object v3, p0, Lcom/nomone/vr_desktop/runtime/UbuntuRootfs$InstallTask;->activity:Landroid/app/Activity;
    invoke-direct { v2, v3, v0 }, Lcom/nomone/vr_desktop/runtime/UbuntuRootfs$ResumeTask;-><init>(Landroid/app/Activity;Ljava/lang/Exception;)V
    invoke-virtual { v1, v2 }, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
  :L13
  .line 68
    return-void
.end method
