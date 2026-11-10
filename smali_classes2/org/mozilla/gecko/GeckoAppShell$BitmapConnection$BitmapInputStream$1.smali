.class Lorg/mozilla/gecko/GeckoAppShell$BitmapConnection$BitmapInputStream$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/gecko/GeckoAppShell$BitmapConnection$BitmapInputStream;->read([BII)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/mozilla/gecko/GeckoAppShell$BitmapConnection$BitmapInputStream;

.field final synthetic val$output:Ljava/io/PipedOutputStream;


# direct methods
.method public constructor <init>(Lorg/mozilla/gecko/GeckoAppShell$BitmapConnection$BitmapInputStream;Ljava/io/PipedOutputStream;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/gecko/GeckoAppShell$BitmapConnection$BitmapInputStream$1;->this$1:Lorg/mozilla/gecko/GeckoAppShell$BitmapConnection$BitmapInputStream;

    iput-object p2, p0, Lorg/mozilla/gecko/GeckoAppShell$BitmapConnection$BitmapInputStream$1;->val$output:Ljava/io/PipedOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lorg/mozilla/gecko/GeckoAppShell$BitmapConnection$BitmapInputStream$1;->this$1:Lorg/mozilla/gecko/GeckoAppShell$BitmapConnection$BitmapInputStream;

    iget-object v0, v0, Lorg/mozilla/gecko/GeckoAppShell$BitmapConnection$BitmapInputStream;->this$0:Lorg/mozilla/gecko/GeckoAppShell$BitmapConnection;

    invoke-static {v0}, Lorg/mozilla/gecko/GeckoAppShell$BitmapConnection;->access$400(Lorg/mozilla/gecko/GeckoAppShell$BitmapConnection;)Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    iget-object v2, p0, Lorg/mozilla/gecko/GeckoAppShell$BitmapConnection$BitmapInputStream$1;->val$output:Ljava/io/PipedOutputStream;

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/mozilla/gecko/GeckoAppShell$BitmapConnection$BitmapInputStream$1;->val$output:Ljava/io/PipedOutputStream;

    invoke-static {v0}, Lorg/mozilla/gecko/util/IOUtils;->safeStreamClose(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/mozilla/gecko/GeckoAppShell$BitmapConnection$BitmapInputStream$1;->val$output:Ljava/io/PipedOutputStream;

    invoke-static {v1}, Lorg/mozilla/gecko/util/IOUtils;->safeStreamClose(Ljava/io/Closeable;)V

    throw v0
.end method
