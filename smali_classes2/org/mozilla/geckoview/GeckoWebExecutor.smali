.class public Lorg/mozilla/geckoview/GeckoWebExecutor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FETCH_FLAGS_ANONYMOUS:I = 0x1
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field public static final FETCH_FLAGS_NONE:I = 0x0

.field public static final FETCH_FLAGS_NO_REDIRECTS:I = 0x2
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field

.field public static final FETCH_FLAGS_STREAM_FAILURE_TEST:I = 0x400
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation
.end field


# instance fields
.field private final mRuntime:Lorg/mozilla/geckoview/GeckoRuntime;


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/GeckoRuntime;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoWebExecutor;->mRuntime:Lorg/mozilla/geckoview/GeckoRuntime;

    return-void
.end method

.method private static createByteBuffer(I)Ljava/nio/ByteBuffer;
    .locals 0
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
        exceptionMode = "nsresult"
    .end annotation

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method private static native nativeFetch(Lorg/mozilla/geckoview/WebRequest;ILorg/mozilla/geckoview/GeckoResult;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/geckoview/WebRequest;",
            "I",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Lorg/mozilla/geckoview/WebResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        dispatchTo = "gecko"
        stubName = "Fetch"
    .end annotation
.end method

.method private static native nativeResolve(Ljava/lang/String;Lorg/mozilla/geckoview/GeckoResult;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "[",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        dispatchTo = "gecko"
        stubName = "Resolve"
    .end annotation
.end method


# virtual methods
.method public fetch(Lorg/mozilla/geckoview/WebRequest;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/geckoview/WebRequest;",
            ")",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Lorg/mozilla/geckoview/WebResponse;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/geckoview/GeckoWebExecutor;->fetch(Lorg/mozilla/geckoview/WebRequest;I)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    return-object p1
.end method

.method public fetch(Lorg/mozilla/geckoview/WebRequest;I)Lorg/mozilla/geckoview/GeckoResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mozilla/geckoview/WebRequest;",
            "I)",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Lorg/mozilla/geckoview/WebResponse;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p1, Lorg/mozilla/geckoview/WebRequest;->body:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Request body must be a direct ByteBuffer"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget v0, p1, Lorg/mozilla/geckoview/WebRequest;->cacheMode:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_4

    const/4 v1, 0x6

    if-gt v0, v1, :cond_4

    iget-object v0, p1, Lorg/mozilla/geckoview/WebMessage;->uri:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(http|blob).*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lorg/mozilla/geckoview/GeckoResult;

    invoke-direct {v0}, Lorg/mozilla/geckoview/GeckoResult;-><init>()V

    sget-object v1, Lorg/mozilla/gecko/GeckoThread$State;->PROFILE_READY:Lorg/mozilla/gecko/GeckoThread$State;

    invoke-static {v1}, Lorg/mozilla/gecko/GeckoThread;->isStateAtLeast(Lorg/mozilla/gecko/GeckoThread$State;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1, p2, v0}, Lorg/mozilla/geckoview/GeckoWebExecutor;->nativeFetch(Lorg/mozilla/geckoview/WebRequest;ILorg/mozilla/geckoview/GeckoResult;)V

    goto :goto_1

    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-class v2, Lorg/mozilla/geckoview/GeckoResult;

    const-class v3, Lorg/mozilla/geckoview/WebRequest;

    filled-new-array {v3, p1, p2, v2, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "nativeFetch"

    invoke-static {v1, p0, p2, p1}, Lorg/mozilla/gecko/GeckoThread;->queueNativeCallUntil(Lorg/mozilla/gecko/GeckoThread$State;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-object v0

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsupported URI scheme"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unknown cache mode"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public resolve(Ljava/lang/String;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "[",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/mozilla/geckoview/GeckoResult;

    invoke-direct {v0}, Lorg/mozilla/geckoview/GeckoResult;-><init>()V

    sget-object v1, Lorg/mozilla/gecko/GeckoThread$State;->PROFILE_READY:Lorg/mozilla/gecko/GeckoThread$State;

    invoke-static {v1}, Lorg/mozilla/gecko/GeckoThread;->isStateAtLeast(Lorg/mozilla/gecko/GeckoThread$State;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1, v0}, Lorg/mozilla/geckoview/GeckoWebExecutor;->nativeResolve(Ljava/lang/String;Lorg/mozilla/geckoview/GeckoResult;)V

    goto :goto_0

    :cond_0
    const-class v2, Ljava/lang/String;

    const-class v3, Lorg/mozilla/geckoview/GeckoResult;

    filled-new-array {v2, p1, v3, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "nativeResolve"

    invoke-static {v1, p0, v2, p1}, Lorg/mozilla/gecko/GeckoThread;->queueNativeCallUntil(Lorg/mozilla/gecko/GeckoThread$State;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method public speculativeConnect(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lorg/mozilla/gecko/GeckoThread;->speculativeConnect(Ljava/lang/String;)V

    return-void
.end method
