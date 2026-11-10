.class public final synthetic Lorg/mozilla/geckoview/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/geckoview/GeckoResult$Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lorg/mozilla/geckoview/WebPushController;->a(Ljava/lang/Throwable;)V

    return-void
.end method
