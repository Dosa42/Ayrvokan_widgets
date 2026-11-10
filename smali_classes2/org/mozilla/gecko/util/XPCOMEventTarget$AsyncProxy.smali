.class final Lorg/mozilla/gecko/util/XPCOMEventTarget$AsyncProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/gecko/util/IXPCOMEventTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/util/XPCOMEventTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AsyncProxy"
.end annotation


# instance fields
.field private mTargetName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/gecko/util/XPCOMEventTarget$AsyncProxy;->mTargetName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 4

    iget-object v0, p0, Lorg/mozilla/gecko/util/XPCOMEventTarget$AsyncProxy;->mTargetName:Ljava/lang/String;

    invoke-static {v0}, Lorg/mozilla/gecko/util/XPCOMEventTarget;->access$000(Ljava/lang/String;)Lorg/mozilla/gecko/util/IXPCOMEventTarget;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/mozilla/gecko/util/XPCOMEventTarget;

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    sget-object v0, Lorg/mozilla/gecko/GeckoThread$State;->JNI_READY:Lorg/mozilla/gecko/GeckoThread$State;

    iget-object v1, p0, Lorg/mozilla/gecko/util/XPCOMEventTarget$AsyncProxy;->mTargetName:Ljava/lang/String;

    const-class v2, Ljava/lang/Runnable;

    const-class v3, Ljava/lang/String;

    filled-new-array {v3, v1, v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-class v1, Lorg/mozilla/gecko/util/XPCOMEventTarget;

    const-string v2, "resolveAndDispatchNative"

    invoke-static {v0, v1, v2, p1}, Lorg/mozilla/gecko/GeckoThread;->queueNativeCallUntil(Lorg/mozilla/gecko/GeckoThread$State;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public isOnCurrentThread()Z
    .locals 2

    iget-object v0, p0, Lorg/mozilla/gecko/util/XPCOMEventTarget$AsyncProxy;->mTargetName:Ljava/lang/String;

    invoke-static {v0}, Lorg/mozilla/gecko/util/XPCOMEventTarget;->access$000(Ljava/lang/String;)Lorg/mozilla/gecko/util/IXPCOMEventTarget;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/mozilla/gecko/util/XPCOMEventTarget;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/mozilla/gecko/util/IXPCOMEventTarget;->isOnCurrentThread()Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
