.class Lorg/mozilla/geckoview/GeckoResult$XPCOMEventTargetDispatcher;
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
    name = "XPCOMEventTargetDispatcher"
.end annotation


# instance fields
.field private mEventTarget:Lorg/mozilla/gecko/util/IXPCOMEventTarget;


# direct methods
.method public constructor <init>(Lorg/mozilla/gecko/util/IXPCOMEventTarget;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoResult$XPCOMEventTargetDispatcher;->mEventTarget:Lorg/mozilla/gecko/util/IXPCOMEventTarget;

    return-void
.end method


# virtual methods
.method public dispatch(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoResult$XPCOMEventTargetDispatcher;->mEventTarget:Lorg/mozilla/gecko/util/IXPCOMEventTarget;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
