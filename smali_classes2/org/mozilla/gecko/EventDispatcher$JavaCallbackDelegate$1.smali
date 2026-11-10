.class Lorg/mozilla/gecko/EventDispatcher$JavaCallbackDelegate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/gecko/EventDispatcher$JavaCallbackDelegate;->makeCallback(ZLjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mozilla/gecko/EventDispatcher$JavaCallbackDelegate;

.field final synthetic val$callSuccess:Z

.field final synthetic val$callback:Lorg/mozilla/gecko/util/EventCallback;

.field final synthetic val$response:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/mozilla/gecko/EventDispatcher$JavaCallbackDelegate;ZLorg/mozilla/gecko/util/EventCallback;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/gecko/EventDispatcher$JavaCallbackDelegate$1;->this$0:Lorg/mozilla/gecko/EventDispatcher$JavaCallbackDelegate;

    iput-boolean p2, p0, Lorg/mozilla/gecko/EventDispatcher$JavaCallbackDelegate$1;->val$callSuccess:Z

    iput-object p3, p0, Lorg/mozilla/gecko/EventDispatcher$JavaCallbackDelegate$1;->val$callback:Lorg/mozilla/gecko/util/EventCallback;

    iput-object p4, p0, Lorg/mozilla/gecko/EventDispatcher$JavaCallbackDelegate$1;->val$response:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-boolean v0, p0, Lorg/mozilla/gecko/EventDispatcher$JavaCallbackDelegate$1;->val$callSuccess:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/gecko/EventDispatcher$JavaCallbackDelegate$1;->val$callback:Lorg/mozilla/gecko/util/EventCallback;

    iget-object v1, p0, Lorg/mozilla/gecko/EventDispatcher$JavaCallbackDelegate$1;->val$response:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lorg/mozilla/gecko/util/EventCallback;->sendSuccess(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/gecko/EventDispatcher$JavaCallbackDelegate$1;->val$callback:Lorg/mozilla/gecko/util/EventCallback;

    iget-object v1, p0, Lorg/mozilla/gecko/EventDispatcher$JavaCallbackDelegate$1;->val$response:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lorg/mozilla/gecko/util/EventCallback;->sendError(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
