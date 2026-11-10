.class Lorg/mozilla/geckoview/GeckoResult$DirectDispatcher;
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
    name = "DirectDispatcher"
.end annotation


# static fields
.field static sInstance:Lorg/mozilla/geckoview/GeckoResult$DirectDispatcher;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/mozilla/geckoview/GeckoResult$DirectDispatcher;

    invoke-direct {v0}, Lorg/mozilla/geckoview/GeckoResult$DirectDispatcher;-><init>()V

    sput-object v0, Lorg/mozilla/geckoview/GeckoResult$DirectDispatcher;->sInstance:Lorg/mozilla/geckoview/GeckoResult$DirectDispatcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatch(Ljava/lang/Runnable;)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
