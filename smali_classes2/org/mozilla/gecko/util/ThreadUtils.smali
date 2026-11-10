.class public final Lorg/mozilla/gecko/util/ThreadUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/gecko/util/ThreadUtils$AssertBehavior;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "ThreadUtils"

.field private static volatile sBackgroundThread:Ljava/lang/Thread;

.field public static sGeckoHandler:Landroid/os/Handler;

.field public static volatile sGeckoThread:Ljava/lang/Thread;

.field private static final sUiHandler:Landroid/os/Handler;

.field private static final sUiThread:Ljava/lang/Thread;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    sput-object v0, Lorg/mozilla/gecko/util/ThreadUtils;->sUiThread:Ljava/lang/Thread;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lorg/mozilla/gecko/util/ThreadUtils;->sUiHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertNotOnThread(Ljava/lang/Thread;Lorg/mozilla/gecko/util/ThreadUtils$AssertBehavior;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnThreadComparison(Ljava/lang/Thread;Lorg/mozilla/gecko/util/ThreadUtils$AssertBehavior;Z)V

    return-void
.end method

.method public static assertNotOnUiThread()V
    .locals 2

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->getUiThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lorg/mozilla/gecko/util/ThreadUtils$AssertBehavior;->THROW:Lorg/mozilla/gecko/util/ThreadUtils$AssertBehavior;

    invoke-static {v0, v1}, Lorg/mozilla/gecko/util/ThreadUtils;->assertNotOnThread(Ljava/lang/Thread;Lorg/mozilla/gecko/util/ThreadUtils$AssertBehavior;)V

    return-void
.end method

.method public static assertOnGeckoThread()V
    .locals 2
    .annotation build Lorg/mozilla/gecko/annotation/RobocopTarget;
    .end annotation

    sget-object v0, Lorg/mozilla/gecko/util/ThreadUtils;->sGeckoThread:Ljava/lang/Thread;

    sget-object v1, Lorg/mozilla/gecko/util/ThreadUtils$AssertBehavior;->THROW:Lorg/mozilla/gecko/util/ThreadUtils$AssertBehavior;

    invoke-static {v0, v1}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnThread(Ljava/lang/Thread;Lorg/mozilla/gecko/util/ThreadUtils$AssertBehavior;)V

    return-void
.end method

.method public static assertOnThread(Ljava/lang/Thread;Lorg/mozilla/gecko/util/ThreadUtils$AssertBehavior;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnThreadComparison(Ljava/lang/Thread;Lorg/mozilla/gecko/util/ThreadUtils$AssertBehavior;Z)V

    return-void
.end method

.method private static assertOnThreadComparison(Ljava/lang/Thread;Lorg/mozilla/gecko/util/ThreadUtils$AssertBehavior;Z)V
    .locals 8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    cmp-long v5, v1, v3

    const/4 v6, 0x1

    if-nez v5, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-ne v5, p2, :cond_1

    return-void

    :cond_1
    const-string v5, " (\""

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v7, "Expected thread "

    invoke-direct {p2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"), but running on thread "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\")"

    goto :goto_1

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Expected anything but "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"), but running there."

    :goto_1
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/IllegalThreadStateException;

    invoke-direct {p2, p0}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    sget-object p0, Lorg/mozilla/gecko/util/ThreadUtils$1;->$SwitchMap$org$mozilla$gecko$util$ThreadUtils$AssertBehavior:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    if-eq p0, v6, :cond_3

    return-void

    :cond_3
    throw p2
.end method

.method public static assertOnUiThread()V
    .locals 2

    .line 1
    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->getUiThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lorg/mozilla/gecko/util/ThreadUtils$AssertBehavior;->THROW:Lorg/mozilla/gecko/util/ThreadUtils$AssertBehavior;

    invoke-static {v0, v1}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnThread(Ljava/lang/Thread;Lorg/mozilla/gecko/util/ThreadUtils$AssertBehavior;)V

    return-void
.end method

.method public static assertOnUiThread(Lorg/mozilla/gecko/util/ThreadUtils$AssertBehavior;)V
    .locals 1

    .line 2
    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->getUiThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnThread(Ljava/lang/Thread;Lorg/mozilla/gecko/util/ThreadUtils$AssertBehavior;)V

    return-void
.end method

.method public static getBackgroundHandler()Landroid/os/Handler;
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/GeckoBackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public static getBackgroundThread()Ljava/lang/Thread;
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/util/ThreadUtils;->sBackgroundThread:Ljava/lang/Thread;

    return-object v0
.end method

.method public static getUiHandler()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/util/ThreadUtils;->sUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getUiThread()Ljava/lang/Thread;
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/util/ThreadUtils;->sUiThread:Ljava/lang/Thread;

    return-object v0
.end method

.method public static isOnBackgroundThread()Z
    .locals 1
    .annotation build Lorg/mozilla/gecko/annotation/RobocopTarget;
    .end annotation

    sget-object v0, Lorg/mozilla/gecko/util/ThreadUtils;->sBackgroundThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-object v0, Lorg/mozilla/gecko/util/ThreadUtils;->sBackgroundThread:Ljava/lang/Thread;

    invoke-static {v0}, Lorg/mozilla/gecko/util/ThreadUtils;->isOnThread(Ljava/lang/Thread;)Z

    move-result v0

    return v0
.end method

.method public static isOnGeckoThread()Z
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/util/ThreadUtils;->sGeckoThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/mozilla/gecko/util/ThreadUtils;->sGeckoThread:Ljava/lang/Thread;

    invoke-static {v0}, Lorg/mozilla/gecko/util/ThreadUtils;->isOnThread(Ljava/lang/Thread;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isOnThread(Ljava/lang/Thread;)Z
    .locals 4
    .annotation build Lorg/mozilla/gecko/annotation/RobocopTarget;
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isOnUiThread()Z
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->getUiThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/gecko/util/ThreadUtils;->isOnThread(Ljava/lang/Thread;)Z

    move-result v0

    return v0
.end method

.method public static postToBackgroundThread(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Lorg/mozilla/gecko/util/GeckoBackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static postToUiThread(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lorg/mozilla/gecko/util/ThreadUtils;->sUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->isOnUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    invoke-static {p0}, Lorg/mozilla/gecko/util/ThreadUtils;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setBackgroundThread(Ljava/lang/Thread;)V
    .locals 0

    sput-object p0, Lorg/mozilla/gecko/util/ThreadUtils;->sBackgroundThread:Ljava/lang/Thread;

    return-void
.end method
