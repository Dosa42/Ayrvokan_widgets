.class public final synthetic Lorg/mozilla/gecko/process/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/geckoview/GeckoResult$Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/mozilla/gecko/process/IChildProcess;

    invoke-static {p1}, Lorg/mozilla/gecko/process/GeckoProcessManager;->g(Lorg/mozilla/gecko/process/IChildProcess;)V

    return-void
.end method
