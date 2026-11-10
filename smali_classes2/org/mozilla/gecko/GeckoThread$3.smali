.class Lorg/mozilla/gecko/GeckoThread$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/gecko/GeckoThread;->runCatchingExceptions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/gecko/GeckoThread;


# direct methods
.method public constructor <init>(Lorg/mozilla/gecko/GeckoThread;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/gecko/GeckoThread$3;->this$0:Lorg/mozilla/gecko/GeckoThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 2

    sget-object v0, Lorg/mozilla/gecko/util/ThreadUtils;->sGeckoHandler:Landroid/os/Handler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    const/4 v0, 0x1

    return v0
.end method
