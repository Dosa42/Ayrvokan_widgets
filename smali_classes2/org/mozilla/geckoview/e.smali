.class public final synthetic Lorg/mozilla/geckoview/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/geckoview/GeckoResult$OnValueListener;
.implements Lorg/mozilla/geckoview/GeckoResult$OnExceptionListener;


# instance fields
.field public final synthetic f:Lorg/mozilla/geckoview/GeckoResult$Consumer;


# direct methods
.method public synthetic constructor <init>(Lorg/mozilla/geckoview/GeckoResult$Consumer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mozilla/geckoview/e;->f:Lorg/mozilla/geckoview/GeckoResult$Consumer;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/Throwable;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/geckoview/e;->f:Lorg/mozilla/geckoview/GeckoResult$Consumer;

    invoke-static {v0, p1}, Lorg/mozilla/geckoview/GeckoResult;->e(Lorg/mozilla/geckoview/GeckoResult$Consumer;Ljava/lang/Throwable;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    return-object p1
.end method

.method public final onValue(Ljava/lang/Object;)Lorg/mozilla/geckoview/GeckoResult;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/geckoview/e;->f:Lorg/mozilla/geckoview/GeckoResult$Consumer;

    invoke-static {v0, p1}, Lorg/mozilla/geckoview/GeckoResult;->b(Lorg/mozilla/geckoview/GeckoResult$Consumer;Ljava/lang/Object;)Lorg/mozilla/geckoview/GeckoResult;

    move-result-object p1

    return-object p1
.end method
