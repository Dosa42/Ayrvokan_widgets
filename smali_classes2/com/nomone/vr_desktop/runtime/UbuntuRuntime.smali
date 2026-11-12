.class public final Lcom/nomone/vr_desktop/runtime/UbuntuRuntime;
.super Ljava/lang/Object;
.source "UbuntuRuntime.java"

.field private final static OPENING:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final static URL:Ljava/lang/String; = "http://127.0.0.1:8766/terminal"

.method static constructor <clinit>()V
  .registers 1
  .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-direct { v0 }, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V
    sput-object v0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntime;->OPENING:Ljava/util/concurrent/atomic/AtomicBoolean;
    return-void
.end method

.method private constructor <init>()V
  .registers 1
  .line 17
    invoke-direct { p0 }, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method static synthetic lambda$startIfBare$0(ZLandroid/content/Context;)V
  .catchall { :L0 .. :L2 } :L3
  .registers 5
  .line 41
    const/4 v0, 0
    if-eqz p0, :L1
  :L0
    new-instance p0, Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"
    const-string v2, "http://127.0.0.1:8766/terminal"
    invoke-static { v2 }, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    move-result-object v2
    invoke-direct { p0, v1, v2 }, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    const/high16 v1, 268435456
    invoke-virtual { p0, v1 }, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    move-result-object p0
    invoke-virtual { p1, p0 }, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    goto :L2
  :L1
  .line 42
    const-string p0, "Terminalserver start niet; zie Ubuntu-melding"
    const/4 v1, 1
    invoke-static { p1, p0, v1 }, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object p0
    invoke-virtual { p0 }, Landroid/widget/Toast;->show()V
  :L2
  .line 43
    sget-object p0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntime;->OPENING:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-virtual { p0, v0 }, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
  .line 44
    return-void
  :L3
  .line 43
    move-exception p0
    sget-object p1, Lcom/nomone/vr_desktop/runtime/UbuntuRuntime;->OPENING:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-virtual { p1, v0 }, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    throw p0
.end method

.method static synthetic lambda$startIfBare$1(Landroid/content/Context;)V
  .catch Ljava/lang/Exception; { :L1 .. :L2 } :L12
  .catchall { :L1 .. :L2 } :L9
  .catch Ljava/lang/Exception; { :L3 .. :L4 } :L8
  .catchall { :L3 .. :L4 } :L7
  .catch Ljava/lang/InterruptedException; { :L15 .. :L16 } :L17
  .registers 6
  .line 25
    nop
  .line 26
    const/4 v0, 0
    move v1, v0
  :L0
    const/16 v2, 60
    if-ge v1, v2, :L18
  .line 27
    nop
  .line 29
    const/4 v2, 0
  :L1
    new-instance v3, Ljava/net/URL;
    const-string v4, "http://127.0.0.1:8766/health"
    invoke-direct { v3, v4 }, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    invoke-virtual { v3 }, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
    move-result-object v3
    check-cast v3, Ljava/net/HttpURLConnection;
  :L2
  .line 30
    const/16 v2, 250
  :L3
    invoke-virtual { v3, v2 }, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V
  .line 31
    invoke-virtual { v3, v2 }, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
  .line 32
    invoke-virtual { v3 }, Ljava/net/HttpURLConnection;->getResponseCode()I
    move-result v2
  :L4
    const/16 v4, 200
    if-ne v2, v4, :L6
  .line 34
    if-eqz v3, :L5
    invoke-virtual { v3 }, Ljava/net/HttpURLConnection;->disconnect()V
  :L5
  .line 38
    const/4 v0, 1
    goto :L18
  :L6
  .line 34
    if-eqz v3, :L14
    invoke-virtual { v3 }, Ljava/net/HttpURLConnection;->disconnect()V
    goto :L14
  :L7
    move-exception p0
    move-object v2, v3
    goto :L10
  :L8
  .line 33
    move-exception v2
    move-object v2, v3
    goto :L13
  :L9
  .line 34
    move-exception p0
  :L10
    if-eqz v2, :L11
    invoke-virtual { v2 }, Ljava/net/HttpURLConnection;->disconnect()V
  :L11
    throw p0
  :L12
  .line 33
    move-exception v3
  :L13
  .line 34
    if-eqz v2, :L14
    invoke-virtual { v2 }, Ljava/net/HttpURLConnection;->disconnect()V
  :L14
  .line 35
    const-wide/16 v2, 100
  :L15
    invoke-static { v2, v3 }, Ljava/lang/Thread;->sleep(J)V
  :L16
  .line 36
    nop
  .line 26
    add-int/lit8 v1, v1, 1
    goto :L0
  :L17
  .line 36
    move-exception v1
    invoke-static { }, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    move-result-object v1
    invoke-virtual { v1 }, Ljava/lang/Thread;->interrupt()V
  :L18
  .line 38
    nop
  .line 39
    new-instance v1, Landroid/os/Handler;
    invoke-static { }, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
    move-result-object v2
    invoke-direct { v1, v2 }, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    new-instance v2, Lcom/nomone/vr_desktop/runtime/UbuntuRuntime$0;
    invoke-direct { v2, v0, p0 }, Lcom/nomone/vr_desktop/runtime/UbuntuRuntime$0;-><init>(ZLandroid/content/Context;)V
    invoke-virtual { v1, v2 }, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
  .line 45
    return-void
.end method

.method public static startIfBare(Landroid/content/Context;)Z
  .registers 5
  .line 20
    new-instance v0, Ljava/io/File;
    invoke-virtual { p0 }, Landroid/content/Context;->getFilesDir()Ljava/io/File;
    move-result-object v1
    const-string v2, "Ubuntu22.04Bare/.ubuntu-base-22.04.5-arm64"
    invoke-direct { v0, v1, v2 }, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    invoke-virtual { v0 }, Ljava/io/File;->isFile()Z
    move-result v0
    const/4 v1, 0
    if-nez v0, :L0
    return v1
  :L0
  .line 21
    new-instance v0, Landroid/content/Intent;
    const-class v2, Lcom/nomone/vr_desktop/runtime/UbuntuRuntimeService;
    invoke-direct { v0, p0, v2 }, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
  .line 22
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v3, 26
    if-lt v2, v3, :L1
    invoke-virtual { p0, v0 }, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;
    goto :L2
  :L1
  .line 23
    invoke-virtual { p0, v0 }, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
  :L2
  .line 24
    sget-object v0, Lcom/nomone/vr_desktop/runtime/UbuntuRuntime;->OPENING:Ljava/util/concurrent/atomic/AtomicBoolean;
    const/4 v2, 1
    invoke-virtual { v0, v1, v2 }, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z
    move-result v0
    if-eqz v0, :L3
    new-instance v0, Ljava/lang/Thread;
    new-instance v1, Lcom/nomone/vr_desktop/runtime/UbuntuRuntime$1;
    invoke-direct { v1, p0 }, Lcom/nomone/vr_desktop/runtime/UbuntuRuntime$1;-><init>(Landroid/content/Context;)V
    const-string p0, "Ubuntu-browser-open"
    invoke-direct { v0, v1, p0 }, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V
  .line 45
    invoke-virtual { v0 }, Ljava/lang/Thread;->start()V
  :L3
  .line 46
    return v2
.end method
