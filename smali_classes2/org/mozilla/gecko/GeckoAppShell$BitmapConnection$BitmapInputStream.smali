.class final Lorg/mozilla/gecko/GeckoAppShell$BitmapConnection$BitmapInputStream;
.super Ljava/io/PipedInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/GeckoAppShell$BitmapConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BitmapInputStream"
.end annotation


# instance fields
.field private mHaveConnected:Z

.field final synthetic this$0:Lorg/mozilla/gecko/GeckoAppShell$BitmapConnection;


# direct methods
.method private constructor <init>(Lorg/mozilla/gecko/GeckoAppShell$BitmapConnection;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mozilla/gecko/GeckoAppShell$BitmapConnection$BitmapInputStream;->this$0:Lorg/mozilla/gecko/GeckoAppShell$BitmapConnection;

    invoke-direct {p0}, Ljava/io/PipedInputStream;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/mozilla/gecko/GeckoAppShell$BitmapConnection$BitmapInputStream;->mHaveConnected:Z

    return-void
.end method

.method public synthetic constructor <init>(Lorg/mozilla/gecko/GeckoAppShell$BitmapConnection;Lorg/mozilla/gecko/GeckoAppShell$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/mozilla/gecko/GeckoAppShell$BitmapConnection$BitmapInputStream;-><init>(Lorg/mozilla/gecko/GeckoAppShell$BitmapConnection;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized read([BII)I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/mozilla/gecko/GeckoAppShell$BitmapConnection$BitmapInputStream;->mHaveConnected:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Ljava/io/PipedInputStream;->read([BII)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/PipedOutputStream;

    invoke-direct {v0}, Ljava/io/PipedOutputStream;-><init>()V

    invoke-virtual {p0, v0}, Ljava/io/PipedInputStream;->connect(Ljava/io/PipedOutputStream;)V

    new-instance v1, Lorg/mozilla/gecko/GeckoAppShell$BitmapConnection$BitmapInputStream$1;

    invoke-direct {v1, p0, v0}, Lorg/mozilla/gecko/GeckoAppShell$BitmapConnection$BitmapInputStream$1;-><init>(Lorg/mozilla/gecko/GeckoAppShell$BitmapConnection$BitmapInputStream;Ljava/io/PipedOutputStream;)V

    invoke-static {v1}, Lorg/mozilla/gecko/util/ThreadUtils;->postToBackgroundThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/gecko/GeckoAppShell$BitmapConnection$BitmapInputStream;->mHaveConnected:Z

    invoke-super {p0, p1, p2, p3}, Ljava/io/PipedInputStream;->read([BII)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
