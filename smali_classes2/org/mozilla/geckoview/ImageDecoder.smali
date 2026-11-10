.class Lorg/mozilla/geckoview/ImageDecoder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static instance:Lorg/mozilla/geckoview/ImageDecoder;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static instance()Lorg/mozilla/geckoview/ImageDecoder;
    .locals 1

    sget-object v0, Lorg/mozilla/geckoview/ImageDecoder;->instance:Lorg/mozilla/geckoview/ImageDecoder;

    if-nez v0, :cond_0

    new-instance v0, Lorg/mozilla/geckoview/ImageDecoder;

    invoke-direct {v0}, Lorg/mozilla/geckoview/ImageDecoder;-><init>()V

    sput-object v0, Lorg/mozilla/geckoview/ImageDecoder;->instance:Lorg/mozilla/geckoview/ImageDecoder;

    :cond_0
    sget-object v0, Lorg/mozilla/geckoview/ImageDecoder;->instance:Lorg/mozilla/geckoview/ImageDecoder;

    return-object v0
.end method

.method private static native nativeDecode(Ljava/lang/String;ILorg/mozilla/geckoview/GeckoResult;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        dispatchTo = "gecko"
        stubName = "Decode"
    .end annotation
.end method


# virtual methods
.method public decode(Ljava/lang/String;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/geckoview/ImageDecoder;->decode(Ljava/lang/String;I)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    return-object p1
.end method

.method public decode(Ljava/lang/String;I)Lorg/mozilla/geckoview/GeckoResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lorg/mozilla/geckoview/GeckoResult<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 2
    if-eqz p1, :cond_1

    new-instance v6, Lorg/mozilla/geckoview/GeckoResult;

    invoke-direct {v6}, Lorg/mozilla/geckoview/GeckoResult;-><init>()V

    sget-object v7, Lorg/mozilla/gecko/GeckoThread$State;->PROFILE_READY:Lorg/mozilla/gecko/GeckoThread$State;

    invoke-static {v7}, Lorg/mozilla/gecko/GeckoThread;->isStateAtLeast(Lorg/mozilla/gecko/GeckoThread$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2, v6}, Lorg/mozilla/geckoview/ImageDecoder;->nativeDecode(Ljava/lang/String;ILorg/mozilla/geckoview/GeckoResult;)V

    goto :goto_0

    :cond_0
    const-class v0, Ljava/lang/String;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-class v4, Lorg/mozilla/geckoview/GeckoResult;

    move-object v1, p1

    move-object v5, v6

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "nativeDecode"

    invoke-static {v7, p0, p2, p1}, Lorg/mozilla/gecko/GeckoThread;->queueNativeCallUntil(Lorg/mozilla/gecko/GeckoThread$State;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-object v6

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Uri cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
