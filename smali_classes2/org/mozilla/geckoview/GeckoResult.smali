.class public Lorg/mozilla/geckoview/GeckoResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/geckoview/GeckoResult$GeckoCallback;,
        Lorg/mozilla/geckoview/GeckoResult$OnExceptionListener;,
        Lorg/mozilla/geckoview/GeckoResult$OnValueListener;,
        Lorg/mozilla/geckoview/GeckoResult$AllOfResult;,
        Lorg/mozilla/geckoview/GeckoResult$Consumer;,
        Lorg/mozilla/geckoview/GeckoResult$CancellationDelegate;,
        Lorg/mozilla/geckoview/GeckoResult$UncaughtException;,
        Lorg/mozilla/geckoview/GeckoResult$DirectDispatcher;,
        Lorg/mozilla/geckoview/GeckoResult$XPCOMEventTargetDispatcher;,
        Lorg/mozilla/geckoview/GeckoResult$HandlerDispatcher;,
        Lorg/mozilla/geckoview/GeckoResult$Dispatcher;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final ALLOW:Lorg/mozilla/geckoview/GeckoResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Lorg/mozilla/geckoview/AllowOrDeny;",
            ">;"
        }
    .end annotation
.end field

.field public static final DENY:Lorg/mozilla/geckoview/GeckoResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Lorg/mozilla/geckoview/AllowOrDeny;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOGTAG:Ljava/lang/String; = "GeckoResult"


# instance fields
.field private mCancellationDelegate:Lorg/mozilla/geckoview/GeckoResult$CancellationDelegate;

.field private mComplete:Z

.field private final mDispatcher:Lorg/mozilla/geckoview/GeckoResult$Dispatcher;

.field private mError:Ljava/lang/Throwable;

.field private mIsUncaughtError:Z

.field private mListeners:Lf/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/i;"
        }
    .end annotation
.end field

.field private mParent:Lorg/mozilla/geckoview/GeckoResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mozilla/geckoview/GeckoResult<",
            "*>;"
        }
    .end annotation
.end field

.field private mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/mozilla/geckoview/AllowOrDeny;->ALLOW:Lorg/mozilla/geckoview/AllowOrDeny;

    invoke-static {v0}, Lorg/mozilla/geckoview/GeckoResult;->fromValue(Ljava/lang/Object;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object v0

    sput-object v0, Lorg/mozilla/geckoview/GeckoResult;->ALLOW:Lorg/mozilla/geckoview/GeckoResult;

    sget-object v0, Lorg/mozilla/geckoview/AllowOrDeny;->DENY:Lorg/mozilla/geckoview/AllowOrDeny;

    invoke-static {v0}, Lorg/mozilla/geckoview/GeckoResult;->fromValue(Ljava/lang/Object;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object v0

    sput-object v0, Lorg/mozilla/geckoview/GeckoResult;->DENY:Lorg/mozilla/geckoview/GeckoResult;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lf/i;

    invoke-direct {v0}, Lf/i;-><init>()V

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoResult;->mListeners:Lf/i;

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->isOnUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/mozilla/geckoview/GeckoResult$HandlerDispatcher;

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->getUiHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mozilla/geckoview/GeckoResult$HandlerDispatcher;-><init>(Landroid/os/Handler;)V

    :goto_0
    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoResult;->mDispatcher:Lorg/mozilla/geckoview/GeckoResult$Dispatcher;

    goto :goto_1

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/mozilla/geckoview/GeckoResult$HandlerDispatcher;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1}, Lorg/mozilla/geckoview/GeckoResult$HandlerDispatcher;-><init>(Landroid/os/Handler;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/mozilla/gecko/util/XPCOMEventTarget;->launcherThread()Lorg/mozilla/gecko/util/IXPCOMEventTarget;

    move-result-object v0

    invoke-interface {v0}, Lorg/mozilla/gecko/util/IXPCOMEventTarget;->isOnCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/mozilla/geckoview/GeckoResult$XPCOMEventTargetDispatcher;

    invoke-static {}, Lorg/mozilla/gecko/util/XPCOMEventTarget;->launcherThread()Lorg/mozilla/gecko/util/IXPCOMEventTarget;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mozilla/geckoview/GeckoResult$XPCOMEventTargetDispatcher;-><init>(Lorg/mozilla/gecko/util/IXPCOMEventTarget;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lf/i;

    invoke-direct {v0}, Lf/i;-><init>()V

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoResult;->mListeners:Lf/i;

    new-instance v0, Lorg/mozilla/geckoview/GeckoResult$HandlerDispatcher;

    invoke-direct {v0, p1}, Lorg/mozilla/geckoview/GeckoResult$HandlerDispatcher;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoResult;->mDispatcher:Lorg/mozilla/geckoview/GeckoResult$Dispatcher;

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/geckoview/GeckoResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "TT;>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lorg/mozilla/geckoview/GeckoResult;-><init>()V

    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/GeckoResult;->completeFrom(Lorg/mozilla/geckoview/GeckoResult;)V

    return-void
.end method

.method public static synthetic a(Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/mozilla/geckoview/GeckoResult;->lambda$dispatchLocked$3(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static allOf(Ljava/util/List;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "TV;>;>;)",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, Lorg/mozilla/geckoview/GeckoResult;->fromValue(Ljava/lang/Object;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lorg/mozilla/geckoview/GeckoResult$AllOfResult;

    invoke-direct {v0, p0}, Lorg/mozilla/geckoview/GeckoResult$AllOfResult;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static varargs allOf([Lorg/mozilla/geckoview/GeckoResult;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "TV;>;)",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 2
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/geckoview/GeckoResult;->allOf(Ljava/util/List;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/mozilla/geckoview/GeckoResult$Consumer;Ljava/lang/Object;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/mozilla/geckoview/GeckoResult;->lambda$accept$0(Lorg/mozilla/geckoview/GeckoResult$Consumer;Ljava/lang/Object;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/mozilla/geckoview/GeckoResult;Ljava/lang/Boolean;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/GeckoResult;->lambda$cancel$5(Ljava/lang/Boolean;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p0

    return-object p0
.end method

.method private completeFrom(Lorg/mozilla/geckoview/GeckoResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "TT;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/mozilla/geckoview/GeckoResult;->complete(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p1, Lorg/mozilla/geckoview/GeckoResult;->mCancellationDelegate:Lorg/mozilla/geckoview/GeckoResult$CancellationDelegate;

    iput-object v0, p0, Lorg/mozilla/geckoview/GeckoResult;->mCancellationDelegate:Lorg/mozilla/geckoview/GeckoResult$CancellationDelegate;

    sget-object v0, Lorg/mozilla/geckoview/GeckoResult$DirectDispatcher;->sInstance:Lorg/mozilla/geckoview/GeckoResult$DirectDispatcher;

    new-instance v1, Lorg/mozilla/geckoview/c;

    invoke-direct {v1, p0, p1}, Lorg/mozilla/geckoview/c;-><init>(Lorg/mozilla/geckoview/GeckoResult;Lorg/mozilla/geckoview/GeckoResult;)V

    invoke-direct {p1, v0, v1}, Lorg/mozilla/geckoview/GeckoResult;->thenInternal(Lorg/mozilla/geckoview/GeckoResult$Dispatcher;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic d(Lorg/mozilla/geckoview/GeckoResult;Lorg/mozilla/geckoview/GeckoResult;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/GeckoResult;->lambda$completeFrom$4(Lorg/mozilla/geckoview/GeckoResult;)V

    return-void
.end method

.method private dispatchLocked()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lorg/mozilla/geckoview/GeckoResult;->mComplete:Z

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoResult;->mListeners:Lf/i;

    .line 6
    .line 7
    invoke-virtual {v0}, Lf/i;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-boolean v0, p0, Lorg/mozilla/geckoview/GeckoResult;->mIsUncaughtError:Z

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance v0, Lorg/mozilla/geckoview/GeckoResult$UncaughtException;

    .line 19
    .line 20
    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoResult;->mError:Ljava/lang/Throwable;

    .line 21
    .line 22
    invoke-direct {v0, v1}, Lorg/mozilla/geckoview/GeckoResult$UncaughtException;-><init>(Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    throw v0

    .line 26
    :cond_1
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoResult;->mDispatcher:Lorg/mozilla/geckoview/GeckoResult$Dispatcher;

    .line 27
    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    move v1, v0

    .line 32
    :goto_0
    iget-object v2, p0, Lorg/mozilla/geckoview/GeckoResult;->mListeners:Lf/i;

    .line 33
    .line 34
    iget v3, v2, Lf/i;->c:I

    .line 35
    .line 36
    if-ge v1, v3, :cond_2

    .line 37
    .line 38
    invoke-virtual {v2, v1}, Lf/i;->h(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Lorg/mozilla/geckoview/GeckoResult$Dispatcher;

    .line 43
    .line 44
    iget-object v3, p0, Lorg/mozilla/geckoview/GeckoResult;->mListeners:Lf/i;

    .line 45
    .line 46
    invoke-virtual {v3, v1}, Lf/i;->j(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    check-cast v3, Ljava/util/ArrayList;

    .line 51
    .line 52
    new-instance v4, Lorg/mozilla/geckoview/d;

    .line 53
    .line 54
    invoke-direct {v4, v3, v0}, Lorg/mozilla/geckoview/d;-><init>(Ljava/lang/Object;I)V

    .line 55
    .line 56
    .line 57
    invoke-interface {v2, v4}, Lorg/mozilla/geckoview/GeckoResult$Dispatcher;->dispatch(Ljava/lang/Runnable;)V

    .line 58
    .line 59
    .line 60
    add-int/lit8 v1, v1, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {v2}, Lf/i;->clear()V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    .line 68
    .line 69
    const-string v1, "Shouldn\'t have listeners with null dispatcher"

    .line 70
    .line 71
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    throw v0

    .line 75
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 76
    .line 77
    const-string v1, "Cannot dispatch unless result is complete"

    .line 78
    .line 79
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw v0
.end method

.method public static synthetic e(Lorg/mozilla/geckoview/GeckoResult$Consumer;Ljava/lang/Throwable;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/mozilla/geckoview/GeckoResult;->lambda$accept$1(Lorg/mozilla/geckoview/GeckoResult$Consumer;Ljava/lang/Throwable;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lorg/mozilla/geckoview/GeckoResult;Lorg/mozilla/geckoview/GeckoResult;Lorg/mozilla/geckoview/GeckoResult$OnValueListener;Lorg/mozilla/geckoview/GeckoResult$OnExceptionListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/mozilla/geckoview/GeckoResult;->lambda$thenInternal$2(Lorg/mozilla/geckoview/GeckoResult;Lorg/mozilla/geckoview/GeckoResult$OnValueListener;Lorg/mozilla/geckoview/GeckoResult$OnExceptionListener;)V

    return-void
.end method

.method public static fromException(Ljava/lang/Throwable;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    new-instance v0, Lorg/mozilla/geckoview/GeckoResult;

    invoke-direct {v0}, Lorg/mozilla/geckoview/GeckoResult;-><init>()V

    invoke-virtual {v0, p0}, Lorg/mozilla/geckoview/GeckoResult;->completeExceptionally(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static fromValue(Ljava/lang/Object;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(TU;)",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "TU;>;"
        }
    .end annotation

    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    new-instance v0, Lorg/mozilla/geckoview/GeckoResult;

    invoke-direct {v0}, Lorg/mozilla/geckoview/GeckoResult;-><init>()V

    invoke-virtual {v0, p0}, Lorg/mozilla/geckoview/GeckoResult;->complete(Ljava/lang/Object;)V

    return-object v0
.end method

.method private haveError()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mozilla/geckoview/GeckoResult;->mComplete:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoResult;->mError:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private haveValue()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mozilla/geckoview/GeckoResult;->mComplete:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoResult;->mError:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static synthetic lambda$accept$0(Lorg/mozilla/geckoview/GeckoResult$Consumer;Ljava/lang/Object;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 0

    invoke-interface {p0, p1}, Lorg/mozilla/geckoview/GeckoResult$Consumer;->accept(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$accept$1(Lorg/mozilla/geckoview/GeckoResult$Consumer;Ljava/lang/Throwable;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 0

    invoke-interface {p0, p1}, Lorg/mozilla/geckoview/GeckoResult$Consumer;->accept(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$cancel$5(Ljava/lang/Boolean;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    invoke-virtual {p0, v0}, Lorg/mozilla/geckoview/GeckoResult;->completeExceptionally(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    invoke-static {p1}, Lorg/mozilla/geckoview/GeckoResult;->fromValue(Ljava/lang/Object;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$completeFrom$4(Lorg/mozilla/geckoview/GeckoResult;)V
    .locals 1

    invoke-direct {p1}, Lorg/mozilla/geckoview/GeckoResult;->haveValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lorg/mozilla/geckoview/GeckoResult;->mValue:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lorg/mozilla/geckoview/GeckoResult;->complete(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p1, Lorg/mozilla/geckoview/GeckoResult;->mIsUncaughtError:Z

    iput-boolean v0, p0, Lorg/mozilla/geckoview/GeckoResult;->mIsUncaughtError:Z

    iget-object p1, p1, Lorg/mozilla/geckoview/GeckoResult;->mError:Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lorg/mozilla/geckoview/GeckoResult;->completeExceptionally(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$dispatchLocked$3(Ljava/util/ArrayList;)V
    .locals 1

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$thenInternal$2(Lorg/mozilla/geckoview/GeckoResult;Lorg/mozilla/geckoview/GeckoResult$OnValueListener;Lorg/mozilla/geckoview/GeckoResult$OnExceptionListener;)V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lorg/mozilla/geckoview/GeckoResult;->haveValue()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    iget-object p3, p0, Lorg/mozilla/geckoview/GeckoResult;->mValue:Ljava/lang/Object;

    invoke-interface {p2, p3}, Lorg/mozilla/geckoview/GeckoResult$OnValueListener;->onValue(Ljava/lang/Object;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p1, p2}, Lorg/mozilla/geckoview/GeckoResult;->completeFrom(Lorg/mozilla/geckoview/GeckoResult;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lorg/mozilla/geckoview/GeckoResult;->haveError()Z

    move-result p2

    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    iget-object p2, p0, Lorg/mozilla/geckoview/GeckoResult;->mError:Ljava/lang/Throwable;

    invoke-interface {p3, p2}, Lorg/mozilla/geckoview/GeckoResult$OnExceptionListener;->onException(Ljava/lang/Throwable;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p2

    goto :goto_0

    :cond_2
    iget-boolean p2, p0, Lorg/mozilla/geckoview/GeckoResult;->mIsUncaughtError:Z

    iput-boolean p2, p1, Lorg/mozilla/geckoview/GeckoResult;->mIsUncaughtError:Z

    iget-object p2, p0, Lorg/mozilla/geckoview/GeckoResult;->mError:Ljava/lang/Throwable;

    invoke-virtual {p1, p2}, Lorg/mozilla/geckoview/GeckoResult;->completeExceptionally(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2}, Ljava/lang/AssertionError;-><init>()V

    throw p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p2

    iget-boolean p3, p1, Lorg/mozilla/geckoview/GeckoResult;->mComplete:Z

    if-nez p3, :cond_4

    const/4 p3, 0x1

    iput-boolean p3, p1, Lorg/mozilla/geckoview/GeckoResult;->mIsUncaughtError:Z

    invoke-virtual {p1, p2}, Lorg/mozilla/geckoview/GeckoResult;->completeExceptionally(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    instance-of p1, p2, Ljava/lang/RuntimeException;

    if-nez p1, :cond_5

    :goto_1
    return-void

    :cond_5
    check-cast p2, Ljava/lang/RuntimeException;

    throw p2
.end method

.method private nativeThen(Lorg/mozilla/geckoview/GeckoResult$GeckoCallback;Lorg/mozilla/geckoview/GeckoResult$GeckoCallback;)V
    .locals 2
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    sget-object v0, Lorg/mozilla/geckoview/GeckoResult$DirectDispatcher;->sInstance:Lorg/mozilla/geckoview/GeckoResult$DirectDispatcher;

    new-instance v1, Lorg/mozilla/geckoview/GeckoResult$1;

    invoke-direct {v1, p0, p1}, Lorg/mozilla/geckoview/GeckoResult$1;-><init>(Lorg/mozilla/geckoview/GeckoResult;Lorg/mozilla/geckoview/GeckoResult$GeckoCallback;)V

    new-instance p1, Lorg/mozilla/geckoview/GeckoResult$2;

    invoke-direct {p1, p0, p2}, Lorg/mozilla/geckoview/GeckoResult$2;-><init>(Lorg/mozilla/geckoview/GeckoResult;Lorg/mozilla/geckoview/GeckoResult$GeckoCallback;)V

    invoke-direct {p0, v0, v1, p1}, Lorg/mozilla/geckoview/GeckoResult;->thenInternal(Lorg/mozilla/geckoview/GeckoResult$Dispatcher;Lorg/mozilla/geckoview/GeckoResult$OnValueListener;Lorg/mozilla/geckoview/GeckoResult$OnExceptionListener;)Lorg/mozilla/geckoview/GeckoResult;

    return-void
.end method

.method private static objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private thenInternal(Lorg/mozilla/geckoview/GeckoResult$Dispatcher;Lorg/mozilla/geckoview/GeckoResult$OnValueListener;Lorg/mozilla/geckoview/GeckoResult$OnExceptionListener;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mozilla/geckoview/GeckoResult$Dispatcher;",
            "Lorg/mozilla/geckoview/GeckoResult$OnValueListener<",
            "TT;TU;>;",
            "Lorg/mozilla/geckoview/GeckoResult$OnExceptionListener<",
            "TU;>;)",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "TU;>;"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "At least one listener should be non-null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    new-instance v6, Lorg/mozilla/geckoview/GeckoResult;

    invoke-direct {v6}, Lorg/mozilla/geckoview/GeckoResult;-><init>()V

    iput-object p0, v6, Lorg/mozilla/geckoview/GeckoResult;->mParent:Lorg/mozilla/geckoview/GeckoResult;

    new-instance v7, Ln0/a;

    const/4 v5, 0x1

    move-object v0, v7

    move-object v1, p0

    move-object v2, v6

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Ln0/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-direct {p0, p1, v7}, Lorg/mozilla/geckoview/GeckoResult;->thenInternal(Lorg/mozilla/geckoview/GeckoResult$Dispatcher;Ljava/lang/Runnable;)V

    return-object v6
.end method

.method private declared-synchronized thenInternal(Lorg/mozilla/geckoview/GeckoResult$Dispatcher;Ljava/lang/Runnable;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/mozilla/geckoview/GeckoResult;->mComplete:Z

    if-eqz v0, :cond_0

    invoke-interface {p1, p2}, Lorg/mozilla/geckoview/GeckoResult$Dispatcher;->dispatch(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoResult;->mListeners:Lf/i;

    invoke-virtual {v0, p1}, Lf/i;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoResult;->mListeners:Lf/i;

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Lf/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoResult;->mListeners:Lf/i;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, v1}, Lf/i;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public accept(Lorg/mozilla/geckoview/GeckoResult$Consumer;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/geckoview/GeckoResult$Consumer<",
            "TT;>;)",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/geckoview/GeckoResult;->accept(Lorg/mozilla/geckoview/GeckoResult$Consumer;Lorg/mozilla/geckoview/GeckoResult$Consumer;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    return-object p1
.end method

.method public accept(Lorg/mozilla/geckoview/GeckoResult$Consumer;Lorg/mozilla/geckoview/GeckoResult$Consumer;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/geckoview/GeckoResult$Consumer<",
            "TT;>;",
            "Lorg/mozilla/geckoview/GeckoResult$Consumer<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2
    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/mozilla/geckoview/e;

    invoke-direct {v1, p1}, Lorg/mozilla/geckoview/e;-><init>(Lorg/mozilla/geckoview/GeckoResult$Consumer;)V

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Lorg/mozilla/geckoview/e;

    invoke-direct {v0, p2}, Lorg/mozilla/geckoview/e;-><init>(Lorg/mozilla/geckoview/GeckoResult$Consumer;)V

    :goto_1
    invoke-virtual {p0, v1, v0}, Lorg/mozilla/geckoview/GeckoResult;->then(Lorg/mozilla/geckoview/GeckoResult$OnValueListener;Lorg/mozilla/geckoview/GeckoResult$OnExceptionListener;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized cancel()Lorg/mozilla/geckoview/GeckoResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/mozilla/geckoview/GeckoResult;->haveValue()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lorg/mozilla/geckoview/GeckoResult;->haveError()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoResult;->mCancellationDelegate:Lorg/mozilla/geckoview/GeckoResult$CancellationDelegate;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/mozilla/geckoview/GeckoResult$CancellationDelegate;->cancel()Lorg/mozilla/geckoview/GeckoResult;

    move-result-object v0

    new-instance v1, Lorg/mozilla/geckoview/k;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lorg/mozilla/geckoview/k;-><init>(Lorg/mozilla/geckoview/GeckoResult;I)V

    invoke-virtual {v0, v1}, Lorg/mozilla/geckoview/GeckoResult;->then(Lorg/mozilla/geckoview/GeckoResult$OnValueListener;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoResult;->mParent:Lorg/mozilla/geckoview/GeckoResult;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/mozilla/geckoview/GeckoResult;->cancel()Lorg/mozilla/geckoview/GeckoResult;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lorg/mozilla/geckoview/GeckoResult;->fromValue(Ljava/lang/Object;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_3
    :goto_0
    :try_start_3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lorg/mozilla/geckoview/GeckoResult;->fromValue(Ljava/lang/Object;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized complete(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/mozilla/geckoview/GeckoResult;->mComplete:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoResult;->mValue:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/mozilla/geckoview/GeckoResult;->mComplete:Z

    invoke-direct {p0}, Lorg/mozilla/geckoview/GeckoResult;->dispatchLocked()V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "result is already complete"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized completeExceptionally(Ljava/lang/Throwable;)V
    .locals 1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/mozilla/geckoview/GeckoResult;->mComplete:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoResult;->mError:Ljava/lang/Throwable;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/mozilla/geckoview/GeckoResult;->mComplete:Z

    invoke-direct {p0}, Lorg/mozilla/geckoview/GeckoResult;->dispatchLocked()V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Throwable must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "result is already complete"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized equals(Ljava/lang/Object;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    instance-of v0, p1, Lorg/mozilla/geckoview/GeckoResult;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lorg/mozilla/geckoview/GeckoResult;

    iget-boolean v0, p1, Lorg/mozilla/geckoview/GeckoResult;->mComplete:Z

    iget-boolean v2, p0, Lorg/mozilla/geckoview/GeckoResult;->mComplete:Z

    if-ne v0, v2, :cond_0

    iget-object v0, p1, Lorg/mozilla/geckoview/GeckoResult;->mError:Ljava/lang/Throwable;

    iget-object v2, p0, Lorg/mozilla/geckoview/GeckoResult;->mError:Ljava/lang/Throwable;

    invoke-static {v0, v2}, Lorg/mozilla/geckoview/GeckoResult;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lorg/mozilla/geckoview/GeckoResult;->mValue:Ljava/lang/Object;

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoResult;->mValue:Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/mozilla/geckoview/GeckoResult;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    monitor-exit p0

    return v1

    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public exceptionally(Lorg/mozilla/geckoview/GeckoResult$OnExceptionListener;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mozilla/geckoview/GeckoResult$OnExceptionListener<",
            "TU;>;)",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "TU;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/mozilla/geckoview/GeckoResult;->then(Lorg/mozilla/geckoview/GeckoResult$OnValueListener;Lorg/mozilla/geckoview/GeckoResult$OnExceptionListener;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    return-object p1
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 2

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoResult;->mDispatcher:Lorg/mozilla/geckoview/GeckoResult$Dispatcher;

    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/mozilla/geckoview/GeckoResult$HandlerDispatcher;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast v0, Lorg/mozilla/geckoview/GeckoResult$HandlerDispatcher;

    iget-object v0, v0, Lorg/mozilla/geckoview/GeckoResult$HandlerDispatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOrAccept(Lorg/mozilla/geckoview/GeckoResult$Consumer;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/geckoview/GeckoResult$Consumer<",
            "TT;>;)",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/geckoview/GeckoResult;->getOrAccept(Lorg/mozilla/geckoview/GeckoResult$Consumer;Lorg/mozilla/geckoview/GeckoResult$Consumer;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    return-object p1
.end method

.method public getOrAccept(Lorg/mozilla/geckoview/GeckoResult$Consumer;Lorg/mozilla/geckoview/GeckoResult$Consumer;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/geckoview/GeckoResult$Consumer<",
            "TT;>;",
            "Lorg/mozilla/geckoview/GeckoResult$Consumer<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lorg/mozilla/geckoview/GeckoResult;->haveValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object p2, p0, Lorg/mozilla/geckoview/GeckoResult;->mValue:Ljava/lang/Object;

    invoke-interface {p1, p2}, Lorg/mozilla/geckoview/GeckoResult$Consumer;->accept(Ljava/lang/Object;)V

    :goto_0
    invoke-static {v1}, Lorg/mozilla/geckoview/GeckoResult;->fromValue(Ljava/lang/Object;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0}, Lorg/mozilla/geckoview/GeckoResult;->haveError()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoResult;->mError:Ljava/lang/Throwable;

    invoke-interface {p2, p1}, Lorg/mozilla/geckoview/GeckoResult$Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/mozilla/geckoview/GeckoResult;->accept(Lorg/mozilla/geckoview/GeckoResult$Consumer;Lorg/mozilla/geckoview/GeckoResult$Consumer;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized hashCode()I
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/mozilla/geckoview/GeckoResult;->mComplete:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/16 v2, 0x20f

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoResult;->mValue:Ljava/lang/Object;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoResult;->mError:Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    add-int/2addr v2, v1

    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized poll()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lorg/mozilla/geckoview/GeckoResult;->poll(J)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string v1, "Cannot poll indefinitely from thread with Looper"

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized poll(J)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 2
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    move-wide v2, p1

    :goto_0
    iget-boolean v4, p0, Lorg/mozilla/geckoview/GeckoResult;->mComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-lez v5, :cond_0

    :try_start_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    sub-long v2, p1, v2

    goto :goto_0

    :cond_0
    if-eqz v4, :cond_2

    invoke-direct {p0}, Lorg/mozilla/geckoview/GeckoResult;->haveError()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoResult;->mValue:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    :try_start_3
    iget-object p1, p0, Lorg/mozilla/geckoview/GeckoResult;->mError:Ljava/lang/Throwable;

    throw p1

    :cond_2
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setCancellationDelegate(Lorg/mozilla/geckoview/GeckoResult$CancellationDelegate;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoResult;->mCancellationDelegate:Lorg/mozilla/geckoview/GeckoResult$CancellationDelegate;

    return-void
.end method

.method public then(Lorg/mozilla/geckoview/GeckoResult$OnValueListener;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mozilla/geckoview/GeckoResult$OnValueListener<",
            "TT;TU;>;)",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "TU;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/geckoview/GeckoResult;->then(Lorg/mozilla/geckoview/GeckoResult$OnValueListener;Lorg/mozilla/geckoview/GeckoResult$OnExceptionListener;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    return-object p1
.end method

.method public then(Lorg/mozilla/geckoview/GeckoResult$OnValueListener;Lorg/mozilla/geckoview/GeckoResult$OnExceptionListener;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/mozilla/geckoview/GeckoResult$OnValueListener<",
            "TT;TU;>;",
            "Lorg/mozilla/geckoview/GeckoResult$OnExceptionListener<",
            "TU;>;)",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "TU;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/mozilla/geckoview/GeckoResult;->mDispatcher:Lorg/mozilla/geckoview/GeckoResult$Dispatcher;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p1, p2}, Lorg/mozilla/geckoview/GeckoResult;->thenInternal(Lorg/mozilla/geckoview/GeckoResult$Dispatcher;Lorg/mozilla/geckoview/GeckoResult$OnValueListener;Lorg/mozilla/geckoview/GeckoResult$OnExceptionListener;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalThreadStateException;

    const-string p2, "Must have a Handler"

    invoke-direct {p1, p2}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withHandler(Landroid/os/Handler;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            ")",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lorg/mozilla/geckoview/GeckoResult;

    invoke-direct {v0, p1}, Lorg/mozilla/geckoview/GeckoResult;-><init>(Landroid/os/Handler;)V

    invoke-direct {v0, p0}, Lorg/mozilla/geckoview/GeckoResult;->completeFrom(Lorg/mozilla/geckoview/GeckoResult;)V

    return-object v0
.end method
