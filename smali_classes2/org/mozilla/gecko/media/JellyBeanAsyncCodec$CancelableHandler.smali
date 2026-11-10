.class abstract Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$CancelableHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "CancelableHandler"
.end annotation


# static fields
.field private static final MSG_CANCELLATION:I = 0x434e434c


# instance fields
.field final synthetic this$0:Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;


# direct methods
.method public constructor <init>(Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$CancelableHandler;->this$0:Lorg/mozilla/gecko/media/JellyBeanAsyncCodec;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const v0, 0x434e434c

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    monitor-enter p0

    :try_start_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$CancelableHandler;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lorg/mozilla/gecko/media/JellyBeanAsyncCodec$CancelableHandler;->handleMessageLocked(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x434e434c

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public abstract handleMessageLocked(Landroid/os/Message;)Z
.end method

.method public isCanceled()Z
    .locals 1

    const v0, 0x434e434c

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0
.end method
