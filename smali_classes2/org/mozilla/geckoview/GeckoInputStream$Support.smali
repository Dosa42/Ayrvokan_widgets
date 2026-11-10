.class Lorg/mozilla/geckoview/GeckoInputStream$Support;
.super Lorg/mozilla/gecko/mozglue/JNIObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/GeckoInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Support"
.end annotation

.annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/gecko/mozglue/JNIObject;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lorg/mozilla/geckoview/GeckoInputStream$Support;)V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/geckoview/GeckoInputStream$Support;->close()V

    return-void
.end method

.method public static synthetic access$100(Lorg/mozilla/geckoview/GeckoInputStream$Support;)V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/geckoview/GeckoInputStream$Support;->resume()V

    return-void
.end method

.method private native close()V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        dispatchTo = "gecko"
    .end annotation
.end method

.method private native resume()V
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        dispatchTo = "gecko"
    .end annotation
.end method


# virtual methods
.method public disposeNative()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
