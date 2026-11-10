.class Lorg/mozilla/geckoview/GeckoResult$GeckoCallback;
.super Lorg/mozilla/gecko/mozglue/JNIObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/GeckoResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GeckoCallback"
.end annotation

.annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/gecko/mozglue/JNIObject;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lorg/mozilla/geckoview/GeckoResult$GeckoCallback;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/mozilla/geckoview/GeckoResult$GeckoCallback;->call(Ljava/lang/Object;)V

    return-void
.end method

.method private native call(Ljava/lang/Object;)V
.end method


# virtual methods
.method public native disposeNative()V
.end method
