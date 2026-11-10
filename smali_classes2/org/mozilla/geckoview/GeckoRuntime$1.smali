.class Lorg/mozilla/geckoview/GeckoRuntime$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/gecko/util/BundleEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/GeckoRuntime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/geckoview/GeckoRuntime;


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/GeckoRuntime;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoRuntime$1;->this$0:Lorg/mozilla/geckoview/GeckoRuntime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;Lorg/mozilla/gecko/util/EventCallback;)V
    .locals 3

    iget-object p3, p0, Lorg/mozilla/geckoview/GeckoRuntime$1;->this$0:Lorg/mozilla/geckoview/GeckoRuntime;

    invoke-virtual {p3}, Lorg/mozilla/geckoview/GeckoRuntime;->getSettings()Lorg/mozilla/geckoview/GeckoRuntimeSettings;

    move-result-object p3

    iget-object p3, p3, Lorg/mozilla/geckoview/GeckoRuntimeSettings;->mCrashHandler:Ljava/lang/Class;

    const-string v0, "Gecko:Exited"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoRuntime$1;->this$0:Lorg/mozilla/geckoview/GeckoRuntime;

    invoke-static {v1}, Lorg/mozilla/geckoview/GeckoRuntime;->access$000(Lorg/mozilla/geckoview/GeckoRuntime;)Lorg/mozilla/geckoview/GeckoRuntime$Delegate;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoRuntime$1;->this$0:Lorg/mozilla/geckoview/GeckoRuntime;

    invoke-static {p1}, Lorg/mozilla/geckoview/GeckoRuntime;->access$000(Lorg/mozilla/geckoview/GeckoRuntime;)Lorg/mozilla/geckoview/GeckoRuntime$Delegate;

    move-result-object p1

    invoke-interface {p1}, Lorg/mozilla/geckoview/GeckoRuntime$Delegate;->onShutdown()V

    invoke-static {}, Lorg/mozilla/gecko/EventDispatcher;->getInstance()Lorg/mozilla/gecko/EventDispatcher;

    move-result-object p1

    iget-object p2, p0, Lorg/mozilla/geckoview/GeckoRuntime$1;->this$0:Lorg/mozilla/geckoview/GeckoRuntime;

    invoke-static {p2}, Lorg/mozilla/geckoview/GeckoRuntime;->access$100(Lorg/mozilla/geckoview/GeckoRuntime;)Lorg/mozilla/gecko/util/BundleEventListener;

    move-result-object p2

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/mozilla/gecko/EventDispatcher;->unregisterUiThreadListener(Lorg/mozilla/gecko/util/BundleEventListener;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "GeckoView:ContentCrashReport"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.mozilla.gecko.ACTION_CRASHED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "minidumpPath"

    invoke-virtual {p2, p3}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "extrasPath"

    invoke-virtual {p2, p3}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "fatal"

    const/4 v1, 0x1

    invoke-virtual {p2, p3, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1a

    if-lt p2, p3, :cond_1

    invoke-static {p1, v0}, Lc1/a;->m(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_2
    :goto_0
    return-void
.end method
