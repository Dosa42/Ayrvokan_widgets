.class final Lorg/mozilla/geckoview/GeckoRuntime$LifecycleListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/GeckoRuntime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LifecycleListener"
.end annotation


# instance fields
.field private mPaused:Z

.field final synthetic this$0:Lorg/mozilla/geckoview/GeckoRuntime;


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/GeckoRuntime;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoRuntime$LifecycleListener;->this$0:Lorg/mozilla/geckoview/GeckoRuntime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/mozilla/geckoview/GeckoRuntime$LifecycleListener;->mPaused:Z

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/s;
        value = .enum Landroidx/lifecycle/h;->ON_CREATE:Landroidx/lifecycle/h;
    .end annotation

    return-void
.end method

.method public onPause()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/s;
        value = .enum Landroidx/lifecycle/h;->ON_PAUSE:Landroidx/lifecycle/h;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/geckoview/GeckoRuntime$LifecycleListener;->mPaused:Z

    invoke-static {}, Lorg/mozilla/gecko/GeckoNetworkManager;->getInstance()Lorg/mozilla/gecko/GeckoNetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mozilla/gecko/GeckoNetworkManager;->stop()V

    invoke-static {}, Lorg/mozilla/gecko/GeckoThread;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/s;
        value = .enum Landroidx/lifecycle/h;->ON_RESUME:Landroidx/lifecycle/h;
    .end annotation

    iget-boolean v0, p0, Lorg/mozilla/geckoview/GeckoRuntime$LifecycleListener;->mPaused:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/mozilla/gecko/GeckoThread;->onResume()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/geckoview/GeckoRuntime$LifecycleListener;->mPaused:Z

    invoke-static {}, Lorg/mozilla/gecko/GeckoNetworkManager;->getInstance()Lorg/mozilla/gecko/GeckoNetworkManager;

    move-result-object v0

    invoke-static {}, Lorg/mozilla/gecko/GeckoAppShell;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mozilla/gecko/GeckoNetworkManager;->start(Landroid/content/Context;)V

    return-void
.end method

.method public onStart()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/s;
        value = .enum Landroidx/lifecycle/h;->ON_START:Landroidx/lifecycle/h;
    .end annotation

    return-void
.end method
