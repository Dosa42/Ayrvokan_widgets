.class Lorg/mozilla/geckoview/GeckoResult$HandlerDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/geckoview/GeckoResult$Dispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/GeckoResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HandlerDispatcher"
.end annotation


# instance fields
.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoResult$HandlerDispatcher;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public dispatch(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoResult$HandlerDispatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/mozilla/geckoview/GeckoResult$HandlerDispatcher;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoResult$HandlerDispatcher;->mHandler:Landroid/os/Handler;

    check-cast p1, Lorg/mozilla/geckoview/GeckoResult$HandlerDispatcher;

    iget-object p1, p1, Lorg/mozilla/geckoview/GeckoResult$HandlerDispatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoResult$HandlerDispatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
