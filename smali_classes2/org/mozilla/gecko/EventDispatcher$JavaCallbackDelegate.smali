.class Lorg/mozilla/gecko/EventDispatcher$JavaCallbackDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/gecko/util/EventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/EventDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JavaCallbackDelegate"
.end annotation


# instance fields
.field private final mCallback:Lorg/mozilla/gecko/util/EventCallback;

.field private final mOriginalThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lorg/mozilla/gecko/util/EventCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/gecko/EventDispatcher$JavaCallbackDelegate;->mOriginalThread:Ljava/lang/Thread;

    iput-object p1, p0, Lorg/mozilla/gecko/EventDispatcher$JavaCallbackDelegate;->mCallback:Lorg/mozilla/gecko/util/EventCallback;

    return-void
.end method

.method private makeCallback(ZLjava/lang/Object;)V
    .locals 3

    instance-of v0, p2, Ljava/lang/Number;

    if-nez v0, :cond_7

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Cannot use arrays as Java callback result"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    instance-of v0, p2, Ljava/lang/Character;

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_2
    iget-object v0, p0, Lorg/mozilla/gecko/EventDispatcher$JavaCallbackDelegate;->mOriginalThread:Ljava/lang/Thread;

    invoke-static {v0}, Lorg/mozilla/gecko/util/ThreadUtils;->isOnThread(Ljava/lang/Thread;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/mozilla/gecko/EventDispatcher$JavaCallbackDelegate;->mCallback:Lorg/mozilla/gecko/util/EventCallback;

    invoke-interface {p1, p2}, Lorg/mozilla/gecko/util/EventCallback;->sendSuccess(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lorg/mozilla/gecko/EventDispatcher$JavaCallbackDelegate;->mCallback:Lorg/mozilla/gecko/util/EventCallback;

    invoke-interface {p1, p2}, Lorg/mozilla/gecko/util/EventCallback;->sendError(Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_4
    iget-object v0, p0, Lorg/mozilla/gecko/EventDispatcher$JavaCallbackDelegate;->mOriginalThread:Ljava/lang/Thread;

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->getUiThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_5

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lorg/mozilla/gecko/EventDispatcher$JavaCallbackDelegate;->mOriginalThread:Ljava/lang/Thread;

    sget-object v1, Lorg/mozilla/gecko/util/ThreadUtils;->sGeckoThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_6

    sget-object v0, Lorg/mozilla/gecko/util/ThreadUtils;->sGeckoHandler:Landroid/os/Handler;

    goto :goto_2

    :cond_6
    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v0

    :goto_2
    iget-object v1, p0, Lorg/mozilla/gecko/EventDispatcher$JavaCallbackDelegate;->mCallback:Lorg/mozilla/gecko/util/EventCallback;

    new-instance v2, Lorg/mozilla/gecko/EventDispatcher$JavaCallbackDelegate$1;

    invoke-direct {v2, p0, p1, v1, p2}, Lorg/mozilla/gecko/EventDispatcher$JavaCallbackDelegate$1;-><init>(Lorg/mozilla/gecko/EventDispatcher$JavaCallbackDelegate;ZLorg/mozilla/gecko/util/EventCallback;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_7
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Cannot use number as Java callback result"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static wrap(Lorg/mozilla/gecko/util/EventCallback;)Lorg/mozilla/gecko/util/EventCallback;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/mozilla/gecko/EventDispatcher$NativeCallbackDelegate;

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    new-instance v0, Lorg/mozilla/gecko/EventDispatcher$JavaCallbackDelegate;

    invoke-direct {v0, p0}, Lorg/mozilla/gecko/EventDispatcher$JavaCallbackDelegate;-><init>(Lorg/mozilla/gecko/util/EventCallback;)V

    return-object v0
.end method


# virtual methods
.method public sendError(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/mozilla/gecko/EventDispatcher$JavaCallbackDelegate;->makeCallback(ZLjava/lang/Object;)V

    return-void
.end method

.method public sendSuccess(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/mozilla/gecko/EventDispatcher$JavaCallbackDelegate;->makeCallback(ZLjava/lang/Object;)V

    return-void
.end method
